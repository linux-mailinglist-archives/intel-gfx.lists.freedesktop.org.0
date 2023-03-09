Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD2D6B1856
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 01:59:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18C8010E769;
	Thu,  9 Mar 2023 00:59:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E075E10E769
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 00:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678323573; x=1709859573;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=l7Yz+JJ/S4Qd+6RLhlviJf2KnYCDWsl2QUXO0s9Z3rA=;
 b=PoHQuFTbEQsVHQaO5E68WOo10YzxfRNbjTV8j+UvWrIiJ8dX/qpjTzFo
 JCtlwp/0inR3KW0ShenINpctwHpKi+Bc708orSIHLYEnvPDitc5Ddh0YU
 u+8mDF7We/MLDldY6xkxAnbiflFKiukaygM87jBhuSKDWU+Vk8essqDTm
 05OZcw55KAWC7CgrKmu52iMMbVrI+pLnS9UW01SwVRb0Uv9+CXRb3AELx
 /MLNCmmA/AwvqhK44Hi720TP2TXzBNL1JWoFopZoZo7Ut4ZoBH/EUQpav
 1SlcZGP7Z0XoWRfbH25KowvbbodsSyUKJlSndzM/lNbHGLdmKjEilfL1e w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="333789968"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="333789968"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 16:58:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="679542440"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="679542440"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga007.fm.intel.com with SMTP; 08 Mar 2023 16:58:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Mar 2023 02:58:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Mar 2023 02:58:54 +0200
Message-Id: <20230309005854.9969-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH CI] cpumask: fix incorrect cpumask scanning
 result checks
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Linus Torvalds <torvalds@linux-foundation.org>

It turns out that commit 596ff4a09b89 ("cpumask: re-introduce
constant-sized cpumask optimizations") exposed a number of cases of
drivers not checking the result of "cpumask_next()" and friends
correctly.

The documented correct check for "no more cpus in the cpumask" is to
check for the result being equal or larger than the number of possible
CPU ids, exactly _because_ we've always done those constant-sized
cpumask scans using a widened type before.  So the return value of a
cpumask scan should be checked with

	if (cpu >= nr_cpu_ids)
		...

because the cpumask scan did not necessarily stop exactly *at* that
maximum CPU id.

But a few cases ended up instead using checks like

	if (cpu == nr_cpumask_bits)
		...

which used that internal "widened" number of bits.  And that used to
work pretty much by accident (ok, in this case "by accident" is simply
because it matched the historical internal implementation of the cpumask
scanning, so it was more of a "intentionally using implementation
details rather than an accident").

But the extended constant-sized optimizations then did that internal
implementation differently, and now that code that did things wrong but
matched the old implementation no longer worked at all.

Which then causes subsequent odd problems due to using what ends up
being an invalid CPU ID.

Most of these cases require either unusual hardware or special uses to
hit, but the random.c one triggers quite easily.

All you really need is to have a sufficiently small CONFIG_NR_CPUS value
for the bit scanning optimization to be triggered, but not enough CPUs
to then actually fill that widened cpumask.  At that point, the cpumask
scanning will return the NR_CPUS constant, which is _not_ the same as
nr_cpumask_bits.

This just does the mindless fix with

   sed -i 's/== nr_cpumask_bits/>= nr_cpu_ids/'

to fix the incorrect uses.

The ones in the SCSI lpfc driver in particular could probably be fixed
more cleanly by just removing that repeated pattern entirely, but I am
not emptionally invested enough in that driver to care.

Reported-and-tested-by: Guenter Roeck <linux@roeck-us.net>
Link: https://lore.kernel.org/lkml/481b19b5-83a0-4793-b4fd-194ad7b978c3@roeck-us.net/
Reported-and-tested-by: Geert Uytterhoeven <geert+renesas@glider.be>
Link: https://lore.kernel.org/lkml/CAMuHMdUKo_Sf7TjKzcNDa8Ve+6QrK+P8nSQrSQ=6LTRmcBKNww@mail.gmail.com/
Reported-by: Vernon Yang <vernon2gm@gmail.com>
Link: https://lore.kernel.org/lkml/20230306160651.2016767-1-vernon2gm@gmail.com/
Cc: Yury Norov <yury.norov@gmail.com>
Cc: Jason A. Donenfeld <Jason@zx2c4.com>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
---
 arch/powerpc/xmon/xmon.c         |  2 +-
 drivers/char/random.c            |  2 +-
 drivers/net/wireguard/queueing.h |  2 +-
 drivers/scsi/lpfc/lpfc_init.c    | 14 +++++++-------
 4 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/powerpc/xmon/xmon.c b/arch/powerpc/xmon/xmon.c
index 73c620c2a3a1..e753a6bd4888 100644
--- a/arch/powerpc/xmon/xmon.c
+++ b/arch/powerpc/xmon/xmon.c
@@ -1275,7 +1275,7 @@ static int xmon_batch_next_cpu(void)
 	while (!cpumask_empty(&xmon_batch_cpus)) {
 		cpu = cpumask_next_wrap(smp_processor_id(), &xmon_batch_cpus,
 					xmon_batch_start_cpu, true);
-		if (cpu == nr_cpumask_bits)
+		if (cpu >= nr_cpu_ids)
 			break;
 		if (xmon_batch_start_cpu == -1)
 			xmon_batch_start_cpu = cpu;
diff --git a/drivers/char/random.c b/drivers/char/random.c
index ce3ccd172cc8..253f2ddb8913 100644
--- a/drivers/char/random.c
+++ b/drivers/char/random.c
@@ -1311,7 +1311,7 @@ static void __cold try_to_generate_entropy(void)
 			/* Basic CPU round-robin, which avoids the current CPU. */
 			do {
 				cpu = cpumask_next(cpu, &timer_cpus);
-				if (cpu == nr_cpumask_bits)
+				if (cpu >= nr_cpu_ids)
 					cpu = cpumask_first(&timer_cpus);
 			} while (cpu == smp_processor_id() && num_cpus > 1);
 
diff --git a/drivers/net/wireguard/queueing.h b/drivers/net/wireguard/queueing.h
index 583adb37ee1e..125284b346a7 100644
--- a/drivers/net/wireguard/queueing.h
+++ b/drivers/net/wireguard/queueing.h
@@ -106,7 +106,7 @@ static inline int wg_cpumask_choose_online(int *stored_cpu, unsigned int id)
 {
 	unsigned int cpu = *stored_cpu, cpu_index, i;
 
-	if (unlikely(cpu == nr_cpumask_bits ||
+	if (unlikely(cpu >= nr_cpu_ids ||
 		     !cpumask_test_cpu(cpu, cpu_online_mask))) {
 		cpu_index = id % cpumask_weight(cpu_online_mask);
 		cpu = cpumask_first(cpu_online_mask);
diff --git a/drivers/scsi/lpfc/lpfc_init.c b/drivers/scsi/lpfc/lpfc_init.c
index 61958a24a43d..73b544bfbb2e 100644
--- a/drivers/scsi/lpfc/lpfc_init.c
+++ b/drivers/scsi/lpfc/lpfc_init.c
@@ -12563,7 +12563,7 @@ lpfc_cpu_affinity_check(struct lpfc_hba *phba, int vectors)
 					goto found_same;
 				new_cpu = cpumask_next(
 					new_cpu, cpu_present_mask);
-				if (new_cpu == nr_cpumask_bits)
+				if (new_cpu >= nr_cpu_ids)
 					new_cpu = first_cpu;
 			}
 			/* At this point, we leave the CPU as unassigned */
@@ -12577,7 +12577,7 @@ lpfc_cpu_affinity_check(struct lpfc_hba *phba, int vectors)
 			 * selecting the same IRQ.
 			 */
 			start_cpu = cpumask_next(new_cpu, cpu_present_mask);
-			if (start_cpu == nr_cpumask_bits)
+			if (start_cpu >= nr_cpu_ids)
 				start_cpu = first_cpu;
 
 			lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
@@ -12613,7 +12613,7 @@ lpfc_cpu_affinity_check(struct lpfc_hba *phba, int vectors)
 					goto found_any;
 				new_cpu = cpumask_next(
 					new_cpu, cpu_present_mask);
-				if (new_cpu == nr_cpumask_bits)
+				if (new_cpu >= nr_cpu_ids)
 					new_cpu = first_cpu;
 			}
 			/* We should never leave an entry unassigned */
@@ -12631,7 +12631,7 @@ lpfc_cpu_affinity_check(struct lpfc_hba *phba, int vectors)
 			 * selecting the same IRQ.
 			 */
 			start_cpu = cpumask_next(new_cpu, cpu_present_mask);
-			if (start_cpu == nr_cpumask_bits)
+			if (start_cpu >= nr_cpu_ids)
 				start_cpu = first_cpu;
 
 			lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
@@ -12704,7 +12704,7 @@ lpfc_cpu_affinity_check(struct lpfc_hba *phba, int vectors)
 				goto found_hdwq;
 			}
 			new_cpu = cpumask_next(new_cpu, cpu_present_mask);
-			if (new_cpu == nr_cpumask_bits)
+			if (new_cpu >= nr_cpu_ids)
 				new_cpu = first_cpu;
 		}
 
@@ -12719,7 +12719,7 @@ lpfc_cpu_affinity_check(struct lpfc_hba *phba, int vectors)
 				goto found_hdwq;
 
 			new_cpu = cpumask_next(new_cpu, cpu_present_mask);
-			if (new_cpu == nr_cpumask_bits)
+			if (new_cpu >= nr_cpu_ids)
 				new_cpu = first_cpu;
 		}
 
@@ -12730,7 +12730,7 @@ lpfc_cpu_affinity_check(struct lpfc_hba *phba, int vectors)
  found_hdwq:
 		/* We found an available entry, copy the IRQ info */
 		start_cpu = cpumask_next(new_cpu, cpu_present_mask);
-		if (start_cpu == nr_cpumask_bits)
+		if (start_cpu >= nr_cpu_ids)
 			start_cpu = first_cpu;
 		cpup->hdwq = new_cpup->hdwq;
  logit:
-- 
2.39.2

