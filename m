Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 066D756D4F0
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jul 2022 08:50:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E64AB8BF55;
	Mon, 11 Jul 2022 06:50:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 920018BF55;
 Mon, 11 Jul 2022 06:50:44 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 0A67AB80DBB;
 Mon, 11 Jul 2022 06:50:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C91F9C341CA;
 Mon, 11 Jul 2022 06:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1657522241;
 bh=cnnoERE40MzPqtV3EZkAATxMqve/pI3Cp9fa58cSCT0=;
 h=From:To:Cc:Subject:Date:From;
 b=FFfWchprdS4RQkRLDDQ/+Yj4CSCqm2ic4fFvcRJ2gxj6UaMN8OUrJD2axK+OHajVY
 +34EGByFAlDNuHT7JVyR6nnkbXeDzGquE4nN8KbnWDyBmqdvvVCdz6edpnU7jLPTmU
 3qQHKLXAgAAdQuVC8n9rF3VrdMxyczQ+6uD7sAlfeWWiXwyuLs5Bbi1S0IZWn4aWFs
 4S7BPgOOTjGPAMTU9YGIFghDO69ueZsuEfPeyX4xQ/ScWQzplHxSp9wNgGQQsw+kIx
 fUmHihhZArFxLTXJTGobNJ56ZawO4YMksPIled6ak1WOIZybFpCOd/HCKaU/Mk00fm
 jeAgOXlWxvMcw==
Received: from mchehab by mail.kernel.org with local (Exim 4.95)
 (envelope-from <mchehab@kernel.org>) id 1oAnFe-004a3J-FA;
 Mon, 11 Jul 2022 07:50:38 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: 
Date: Mon, 11 Jul 2022 07:50:35 +0100
Message-Id: <cover.1657522157.git.mchehab@kernel.org>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/2] Fix TLB invalidate issues with Broadwell
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
Cc: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>, linux-kernel@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Dave Airlie <airlied@redhat.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

i915 selftest hangcheck is causing the i915 driver timeouts, as reported
by Intel CI bot:

http://gfx-ci.fi.intel.com/cibuglog-ng/issuefilterassoc/24297?query_key=42a999f48fa6ecce068bc8126c069be7c31153b4

When such test runs, the only output is:

	[   68.811639] i915: Performing live selftests with st_random_seed=0xe138eac7 st_timeout=500
	[   68.811792] i915: Running hangcheck
	[   68.811859] i915: Running intel_hangcheck_live_selftests/igt_hang_sanitycheck
	[   68.816910] i915 0000:00:02.0: [drm] Cannot find any crtc or sizes
	[   68.841597] i915: Running intel_hangcheck_live_selftests/igt_reset_nop
	[   69.346347] igt_reset_nop: 80 resets
	[   69.362695] i915: Running intel_hangcheck_live_selftests/igt_reset_nop_engine
	[   69.863559] igt_reset_nop_engine(rcs0): 709 resets
	[   70.364924] igt_reset_nop_engine(bcs0): 903 resets
	[   70.866005] igt_reset_nop_engine(vcs0): 659 resets
	[   71.367934] igt_reset_nop_engine(vcs1): 549 resets
	[   71.869259] igt_reset_nop_engine(vecs0): 553 resets
	[   71.882592] i915: Running intel_hangcheck_live_selftests/igt_reset_idle_engine
	[   72.383554] rcs0: Completed 16605 idle resets
	[   72.884599] bcs0: Completed 18641 idle resets
	[   73.385592] vcs0: Completed 17517 idle resets
	[   73.886658] vcs1: Completed 15474 idle resets
	[   74.387600] vecs0: Completed 17983 idle resets
	[   74.387667] i915: Running intel_hangcheck_live_selftests/igt_reset_active_engine
	[   74.889017] rcs0: Completed 747 active resets
	[   75.174240] intel_engine_reset(bcs0) failed, err:-110
	[   75.174301] bcs0: Completed 525 active resets

After that, the machine just silently hangs.

Bisecting the issue, the patch that introduced the regression is:

    7938d61591d3 ("drm/i915: Flush TLBs before releasing backing store")

Reverting it fix the issues, but introduce other problems, as TLB
won't be invalidated anymore. So, instead, let's fix the root cause.

It turns that the TLB flush logic ends conflicting with i915 reset,
which is called during selftest hangcheck. So, the TLB cache should
be serialized together with i915 reset.

Tested on an Intel NUC5i7RYB with an i7-5557U Broadwell CPU.

v4:
- No functional changes. All changes are at the patch descriptions:
  - collected acked-by/reviewed-by;
  - use the same e-mail on Author and SoB on patch 1.

v3:
- Removed the logic that would check if the engine is awake before doing
  TLB flush invalidation as backporting PM logic up to Kernel 4.x could be
  too painful. After getting this one merged, I'll submit a separate patch
  with the PM awake logic.

v2:

- Reduced to bare minimum fixes, as this shoud be backported deeply
  into stable.
Chris Wilson (2):
  drm/i915/gt: Serialize GRDOM access between multiple engine resets
  drm/i915/gt: Serialize TLB invalidates with GT resets

 drivers/gpu/drm/i915/gt/intel_gt.c    | 15 ++++++++++-
 drivers/gpu/drm/i915/gt/intel_reset.c | 37 ++++++++++++++++++++-------
 2 files changed, 42 insertions(+), 10 deletions(-)

-- 
2.36.1


