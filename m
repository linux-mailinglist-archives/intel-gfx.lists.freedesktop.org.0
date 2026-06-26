Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QuxPNqn0PmpHNgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 23:52:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 458F26D05E7
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 23:52:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FD0E10F71D;
	Fri, 26 Jun 2026 21:52:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BFD310F71D;
 Fri, 26 Jun 2026 21:52:38 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 27F62600AA;
 Fri, 26 Jun 2026 21:52:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35F311F000E9;
 Fri, 26 Jun 2026 21:52:36 +0000 (UTC)
From: Andi Shyti <andi.shyti@linux.intel.com>
To: dri-devel <dri-devel@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Raag Jadav <raag.jadav@intel.com>, Andi Shyti <andi.shyti@kernel.org>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: [PATCH v2] drm/i915/gt: Return bool values from a boolean helper
Date: Fri, 26 Jun 2026 23:52:32 +0200
Message-ID: <20260626215232.861416-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), No valid DKIM,none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 458F26D05E7

intel_has_gpu_reset() returns logically correct values by
returning a function pointer when GPU reset is supported and
NULL otherwise. However, as a boolean helper, it is more
appropriate to return explicit true or false values.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Link: https://lore.kernel.org/r/20260625114442.2912230-1-andi.shyti@linux.intel.com
---
v1 -> v2
- don't use '!!' when returning function pointers. (Jani)

 drivers/gpu/drm/i915/gt/intel_reset.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index b2cf672564dd..6053f3e8aa27 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -797,7 +797,7 @@ static int __intel_gt_reset(struct intel_gt *gt, intel_engine_mask_t engine_mask
 bool intel_has_gpu_reset(const struct intel_gt *gt)
 {
 	if (!gt->i915->params.reset)
-		return NULL;
+		return false;
 
 	return intel_get_gpu_reset(gt);
 }
-- 
2.53.0

