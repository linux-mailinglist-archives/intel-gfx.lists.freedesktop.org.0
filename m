Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLwaBLeC/GkcQwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 14:16:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 971F24E816C
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 14:16:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 158FC10F0C4;
	Thu,  7 May 2026 12:16:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=ispras.ru header.i=@ispras.ru header.b="VaR7Nx4i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 491 seconds by postgrey-1.36 at gabe;
 Thu, 07 May 2026 08:14:19 UTC
Received: from mail.ispras.ru (mail.ispras.ru [83.149.199.84])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AFEC10F074;
 Thu,  7 May 2026 08:14:19 +0000 (UTC)
Received: from debian.lan (unknown [95.24.24.108])
 by mail.ispras.ru (Postfix) with ESMTPSA id 0FEE945A1D2A;
 Thu,  7 May 2026 08:06:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.ispras.ru 0FEE945A1D2A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ispras.ru;
 s=default; t=1778141164;
 bh=t6msmjqawU/IEsj5CPxud70TuqJjAjCucEWvMJ3Guhk=;
 h=From:To:Cc:Subject:Date:From;
 b=VaR7Nx4iurJc2k38ZCC7sKPUbG60TZzh7zWCskj64/r4czrnXDx1pFOSS1dizzxNP
 wBq7v7eOONtbPocEz7tHcevL23XJV6XUduTbRQL971Nov5XqcgXBwRfmg4XIKQdCUS
 +SkSk6FIcNQkkmyra6AbeboWACBXhpWV3ReiyMnA=
From: Fedor Pchelkin <pchelkin@ispras.ru>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Cc: Fedor Pchelkin <pchelkin@ispras.ru>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Michael Cheng <michael.cheng@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 lvc-project@linuxtesting.org, stable@vger.kernel.org
Subject: [PATCH] drm/i915/gt: fix up region size calculation for flushing
 dcache lines
Date: Thu,  7 May 2026 11:05:43 +0300
Message-ID: <20260507080544.57053-1-pchelkin@ispras.ru>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 07 May 2026 12:16:52 +0000
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
X-Rspamd-Queue-Id: 971F24E816C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ispras.ru,none];
	R_DKIM_ALLOW(-0.20)[ispras.ru:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[ispras.ru,gmail.com,ffwll.ch,intel.com,lists.freedesktop.org,vger.kernel.org,linuxtesting.org];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pchelkin@ispras.ru,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ispras.ru:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ispras.ru:email,ispras.ru:mid,ispras.ru:dkim]
X-Rspamd-Action: no action

Computing region size for flushing dcache lines currently involves

  execlists->csb_size * sizeof(execlists->csb_status)

while the second operand should represent the size of the csb status array
element (u64), not the size of the pointer variable.  It works on a 64-bit
kernel, but it's not correct for exotic 32-bit ones and may result in an
incomplete flush when the number of csb entries covers more than a single
cacheline.

Found by Linux Verification Center (linuxtesting.org) with Svace static
analysis tool.

Fixes: dc0406820ee7 ("drm/i915/gt: Drop invalidate_csb_entries")
Cc: stable@vger.kernel.org
Signed-off-by: Fedor Pchelkin <pchelkin@ispras.ru>
---

The patch is against drm-intel/drm-intel-next,
HEAD:775fb670745015d679a65f948b3da0fbff3f100c

 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 1359fc9cb88e..31037ee3c2c4 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2833,7 +2833,7 @@ static void reset_csb_pointers(struct intel_engine_cs *engine)
 	memset(execlists->csb_status, -1, (reset_value + 1) * sizeof(u64));
 	drm_clflush_virt_range(execlists->csb_status,
 			       execlists->csb_size *
-			       sizeof(execlists->csb_status));
+			       sizeof(execlists->csb_status[0]));
 
 	/* Once more for luck and our trusty paranoia */
 	ENGINE_WRITE(engine, RING_CONTEXT_STATUS_PTR,
-- 
2.53.0

