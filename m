Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 779dESrHJmq8kQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 15:44:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A396656C14
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 15:44:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=foxmail.com header.s=s201512 header.b=Ixts1PTr;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=foxmail.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADFDF10F3F4;
	Mon,  8 Jun 2026 13:44:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1697 seconds by postgrey-1.36 at gabe;
 Mon, 08 Jun 2026 09:44:31 UTC
Received: from out203-205-221-153.mail.qq.com (out203-205-221-153.mail.qq.com
 [203.205.221.153])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8C6310F078;
 Mon,  8 Jun 2026 09:44:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1780911868;
 bh=gkEGl6klor+eq4IPgefmvgOhe0uBLMOYG1nnW7uhDxI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Ixts1PTrxIvsqsJ31J0CfO0eICCfrZ91XlU/NvEW1Pq6K3XZ2V1BkDcSoO1nolWQ9
 0CK3Tq0mulnXVP/sLef8ql8HZk0X7Uir/or56k5Apa6J7p1m/GkXPAUGW44xmhaT69
 WU8u+0YkMFVen/3SiCii/U6wybgoqXbI+TvcQk0U=
Received: from chafi-Matebook-Ubuntu.. ([117.25.98.102])
 by newxmesmtplogicsvrszb43-0.qq.com (NewEsmtp) with SMTP
 id 32F830C7; Mon, 08 Jun 2026 17:12:47 +0800
X-QQ-mid: xmsmtpt1780909979t5qps3k3l
Message-ID: <tencent_F96A6D2FFEB6459BF167B2F2F27E8B016C06@qq.com>
X-QQ-XMAILINFO: NsH3EniEpYuY++gQphxxtp/UKwZBf4XhDzLzDtrRZifbrTQvBxvaNEq0FlYZbL
 3qBQKHdMw5W4QsLhqXaGMdfm39g98LLduA+c5gFDTrPAGre/FTj/68z2V3QbOvIWEea1Tml0OYKZ
 0e2K0fuB8TX3h6PpQi0C9D7H31XmQ+DZb4aQau/sAOvyZEe8/KhklLVHUhrGU+PG/kFAlSMvPowR
 jKJZ90m8aAcjQP2iDOjwCaQjyu8Mp4U+YL0SVLENDPsSQ6yIxDrOMLobvM3TghuPDgN/y1s5TnGu
 iPm5Oo4hmGU98luxc2/4W6z0URNdTbKCeD1f0FP76Qk00QJGb9kN7h9FjPW5o1QuJpCX4xIGyF7Z
 XF5yA+vE+9N1kw0ul2cnJnI4Q312pwmS5kDolmJ6kyUVznoE6OZbxmREmMNSL3RnKxT3iJM0NlC/
 7PfR0q2aWT25nZ3ycYymyACUujfkLtsu4QRzCA2fMkBtD46b+xVpiMHiDDljU79PrH8KsxODZ+/u
 w7on4AMawXrIO+0SURa/Gq4N0DNlhp9Dpc6WiIdhd6uD6xeVsOkscOM5KeKKrDRg33GSZ/wtcyr7
 vqyzmRCjxwDyWacQ80+lTJ64PJ+OFZNKRas8FrcqWNKDkGeTzlyViWMY1upQZoYOJ64OODUntFVd
 ZA08suZCY/AvfTBoy1ughid9o6a0TKe/ie1nErLzvBnoPIrlbFS+x68XNCIL0+QvzP015TZD9XL+
 05fjlVyFgcP3KDwiLGhTSGiDcTDICKMxHtUcVyHVH51M/Yf8i0NTHXw3SJw4BUqlCSfYp5Eng1J9
 r/l/HINXICrBL2IBjilcbeenPxfF5aNMLX/JUpcCQrNRL5UeiByLqbAD3WYBf5jF3mUwzFIAT3G2
 7FqyNNYCVnsKJBOOskMH9NoCcTOqyn+dKYtTw5woI+fxNyeugH5YE9lfeIbiry01q47d3z/XAh8x
 PdqWtk9xgbG/TXJnDNRWQ6N/qvfqcNn1DCJShy80Whwe1HCUlNwwfEoXdrHKsceeZIJ2qwHLxV1z
 /DqzRI52XYpXnlmqga7620aSnnqZ6Kc+/edfo7951LHBZuTexx
X-QQ-XMRINFO: OWPUhxQsoeAVwkVaQIEGSKwwgKCxK/fD5g==
From: chafi <chafiprc@foxmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, stable@vger.kernel.org,
 Yu Zhang <chafiprc@foxmail.com>
Subject: [PATCH 3/3] drm/i915/dsi: Fix TE pin configuration for dual-link DSI
Date: Mon,  8 Jun 2026 17:12:44 +0800
X-OQ-MSGID: <20260608091245.462464-3-chafiprc@foxmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260608091245.462464-1-chafiprc@foxmail.com>
References: <20260608091245.462464-1-chafiprc@foxmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 08 Jun 2026 13:44:07 +0000
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[foxmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[foxmail.com:s=s201512];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chafiprc@foxmail.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[foxmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,foxmail.com];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[foxmail.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,qq.com:mid,foxmail.com:dkim,foxmail.com:email,foxmail.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5A396656C14

From: Yu Zhang <chafiprc@foxmail.com>

gen11_dsi_config_util_pin() skips UTIL_PIN configuration for any port
mask that includes PORT_B. For dual-link (PORT_A | PORT_B), PORT_A
still needs UTIL_PIN as TE (Tearing Effect) input. Without it, vblank
interrupts never fire and flip_done operations time out on command
mode dual-link panels.

Only PORT_B-only configurations should skip this step, as TE comes
from the slave DSI1 through GPIO in that case.

Fixes: 963bbdb32b47 ("drm/i915/dsi: add support for ICL+ native MIPI GPIO sequence")
Cc: stable@vger.kernel.org
Signed-off-by: Yu Zhang <chafiprc@foxmail.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index f579cba28..cb60aad92 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1113,7 +1113,7 @@ static void gen11_dsi_config_util_pin(struct intel_encoder *encoder,
 	 * for dual link/DSI1 TE is from slave DSI1
 	 * through GPIO.
 	 */
-	if (is_vid_mode(intel_dsi) || (intel_dsi->ports & BIT(PORT_B)))
+	if (is_vid_mode(intel_dsi) || intel_dsi->ports == BIT(PORT_B))
 		return;
 
 	tmp = intel_de_read(display, UTIL_PIN_CTL);
-- 
2.43.0

