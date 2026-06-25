Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id t/y2GZwdPWrSxAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 14:22:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FCF6C583B
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 14:22:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF68810E12C;
	Thu, 25 Jun 2026 12:22:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1200 seconds by postgrey-1.36 at gabe;
 Thu, 25 Jun 2026 12:22:48 UTC
Received: from 7.mo550.mail-out.ovh.net (7.mo550.mail-out.ovh.net
 [87.98.158.110])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DA7710E12C
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2026 12:22:48 +0000 (UTC)
Received: from director9.ghost.mail-out.ovh.net (unknown [10.110.54.23])
 by mo550.mail-out.ovh.net (Postfix) with ESMTP id 4gmH6M4RWzz60C2
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2026 11:44:59 +0000 (UTC)
Received: from ghost-submission-7d8d68f679-xfpdk (unknown [10.111.182.62])
 by director9.ghost.mail-out.ovh.net (Postfix) with ESMTPS id D12D680EFF;
 Thu, 25 Jun 2026 11:44:58 +0000 (UTC)
Received: from etezian.org ([37.59.142.102])
 by ghost-submission-7d8d68f679-xfpdk with ESMTPSA
 id vF+/G7oUPWp1RSYAtJDhiQ
 (envelope-from <andi@etezian.org>); Thu, 25 Jun 2026 11:44:58 +0000
X-OVh-ClientIp: 178.82.31.9
From: Andi Shyti <andi.shyti@linux.intel.com>
To: dri-devel <dri-devel@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Andi Shyti <andi.shyti@linux.intel.com>, Andi Shyti <andi.shyti@kernel.org>
Subject: [PATCH] drm/i915/gt: Return bool values from a boolean helper
Date: Thu, 25 Jun 2026 13:44:42 +0200
Message-ID: <20260625114442.2912230-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
x-ovh-tracer-id: 1493787704206267421
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: dmFkZTGVaW+6PV9gVfPh92WHYd0KDcfoF5+9nwYDvlaBN3PWZTxNIEUaF2megbst3Y0VmJnlJPFzJmph4fZPnGmTcEfy2DhY9WJK3sgOl62ZKMQEgeCv9CVyjgDjYNSGPW6n5Ug02OFt7eKdfg7L02GfTe0xKZHHQ9quidsSyAKeQm94KnTwaZzQJc0E1V9KJEUD0TIfxX97Fri5cUlWpkAeGf/Zs14NTJBv3m5XH/F4cjF2BF2vCYkZS51o7S6Pu8LpFFoay2d7QoQeHCy4n3nav4Cf7UWwMZHr/8HfUew4b24jU/fgi/lvx457SLslKva5KMKH3o9YUSM4+HCWvwQeEUbXNQOjOfgzDaTlBwDZDF+Ag06oiH9y59iDbXMkvZQT0D5F7DPH/uALK/VO/LUiTKerpZnEw4vnkyoT+NUbDit/TPj8WgkgFTHrPrUlA4m3f+rBP6RbhO+CrA4ioUwibGYbmSvQVTHXmBpWr4rPNnrpgAJu/a5h2qV0RPh026L5dU9LPMy44wBrCif4Ie1Ge7TUDiUmvjY4G6etQ48pVPgRyf36s0QI5R4jDoP59Zl4qG8IxQgx3cAwY3IaRVeOiM5RIUBBFLPnrHD6wenKL1uSAtXr2uguDvsd8t/mn/4j77mFlGUdzWSlY0P4idomTpBxpi1JyySu3k8hkeJZ/JRVYQ
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dri-devel@lists.freedesktop.org,m:andi.shyti@linux.intel.com,m:andi.shyti@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andi.shyti@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,linux.intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B4FCF6C583B

intel_has_gpu_reset() returns logically correct values by
returning a function pointer when GPU reset is supported and
NULL otherwise. However, as a boolean helper, it is more
appropriate to return explicit true or false values.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_reset.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index b2cf672564dd..a3f198646e1d 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -797,9 +797,9 @@ static int __intel_gt_reset(struct intel_gt *gt, intel_engine_mask_t engine_mask
 bool intel_has_gpu_reset(const struct intel_gt *gt)
 {
 	if (!gt->i915->params.reset)
-		return NULL;
+		return false;
 
-	return intel_get_gpu_reset(gt);
+	return !!intel_get_gpu_reset(gt);
 }
 
 bool intel_has_reset_engine(const struct intel_gt *gt)
-- 
2.53.0

