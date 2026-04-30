Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6FwLFOGF82kY4wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 18:40:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE04F4A5DCA
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 18:40:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C479F10F3CF;
	Thu, 30 Apr 2026 16:39:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=mail.ru header.i=@mail.ru header.b="XFHruQCK";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mail.ru header.i=@mail.ru header.b="S3iG7HlB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 909 seconds by postgrey-1.36 at gabe;
 Thu, 30 Apr 2026 03:23:59 UTC
Received: from send101.i.mail.ru (send101.i.mail.ru [89.221.237.196])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BADA510E021;
 Thu, 30 Apr 2026 03:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru;
 s=mail4; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive:X-Cloud-Ids;
 bh=ytoAxrEPKsUN1wQXOtAoS2QFMgw2+t2Zf4cn5+qSOs4=; t=1777519439; x=1777609439; 
 b=XFHruQCK0TNxgUGZPTRXtCVyTCSctKI0tPpSeDSEQ1zJHdTbt1zsuKxnmPmCzLeR6NfaZyypX7t
 28eJ7BjX84hSmdKDw0XUVfxx9xP2Ju9GvpVXlRC9HUDU7kKlkUqXiuP0/5Zql3NaJZW1gy35c36Mo
 8b0qD84J4fEe2Umy+iyBAwSw+ju4D4BROpzn1zLaxyDS4JjvHNgNTiGqJjbQNbn8645BVUoAqxPrf
 KcBSqtqVQdauKhSMZkM64nF7xCycXaqKl7vf3dAN673DZJ3XNpYwcbaWreEB135t99NX5xl486ePe
 Nd6v+Ni/maMCnz/UAiJE6ed+urKYnBOVwofg==;
Received: from [10.113.42.210] (port=60572 helo=send104.i.mail.ru)
 by exim-fallback-8599957cc4-8qkps with esmtp (envelope-from
 <s.mavlenkov@mail.ru>)
 id 1wIHlm-00000000EhU-3uGA; Thu, 30 Apr 2026 06:08:55 +0300
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru;
 s=mail4; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:
 To:From:From:Sender:Reply-To:To:Cc:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive:
 X-Cloud-Ids:Disposition-Notification-To;
 bh=ytoAxrEPKsUN1wQXOtAoS2QFMgw2+t2Zf4cn5+qSOs4=; t=1777518534; x=1777608534; 
 b=S3iG7HlBRT9FWHiQTxsSI5GsMQz/0HuYXOYw3V0gcnjREN4B8XMwDX3UqcSuFCagwIfOkpxRz5B
 Tgq/aDETeQ46b6aGCEiuaW99wnt5qN/8j5VfxJBrfm1URa4KsG79IjrTHY2BnUDlrwQST5nY8MX4j
 sfRjQ8wIktLce5mSWg+P+DCT+zZwrzrmumCg4qm1fWKf75ufs9Whu3Iy+vI0bg1ns4WZJJ2SFW1yb
 bujrX84QgskK/97CZem5UqF+q5CX9OcmphEPSdtjlc5Y9uf1QWfGSoaiILgE2WlriFGLDkVMNrJ1O
 xScJkH5vYQBdGE9ChYEs6yQUybL8V2Es5gag==;
Received: by exim-smtp-6767fb646-98kjw with esmtpa (envelope-from
 <s.mavlenkov@mail.ru>)
 id 1wIHlf-00000000RC8-1OAq; Thu, 30 Apr 2026 06:08:47 +0300
From: bitey <s.mavlenkov@mail.ru>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH] drm/i915/dp: Fix link retrain loop on pre-gen8 platforms with
 DP adapters
Date: Thu, 30 Apr 2026 06:08:46 +0300
Message-ID: <20260430030846.29373-1-s.mavlenkov@mail.ru>
X-Mailer: git-send-email 2.46.4
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailru-Src: smtp
X-7564579A: 78E4E2B564C1792B
X-77F55803: 4F1203BC0FB41BD9DA546775E7411B7C47E7F245B48B55AF124FF42CEECB65DF00894C459B0CD1B9662FE4746DD225E803AAE3001806DF10D3A87BAEB663C98F82432FA3E210AB46DAEE934B56E2D9F8
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE7408FFE705ACEE2A7EA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F7900637AC83A81C8FD4AD23D82A6BABE6F325AC2E85FA5F3EDFCBAA7353EFBB553375666AD5665AF5FCF4F03A47AA7E12F8DB98D1F1554024D9A73FEBB0D3E62110EFB18EEF46B7454FC60B9742502CCDD46D0DED96AA85C75E140D117882F4460429724CE54428C33FAD305F5C1EE8F4F765FC3A703B70628EAD7BA471835C12D1D9774AD6D5ED66289B52BA9C0B312567BB23117882F446042972877693876707352033AC447995A7AD18E5D25F19253116ADD2E47CDBA5A96583BA9C0B312567BB2376E601842F6C81A19E625A9149C048EE1E561CDFBCA1751F040F9FF01DFDA4A84AD6D5ED66289B523666184CF4C3C14F6136E347CC761E07725E5C173C3A84C3A333A05395E4745B76E601842F6C81A1F004C906525384303E02D724532EE2C3F43C7A68FF6260569E8FC8737B5C2249EC8D19AE6D49635B68655334FD4449CB9ECD01F8117BC8BEAAAE862A0553A39223F8577A6DFFEA7C6898EBFCB5D2929543847C11F186F3C59DAA53EE0834AAEE
X-C1DE0DAB: 0D63561A33F958A50A7C2F6662B393705002B1117B3ED6964A223AE01251AAAA47A99E6294EE8661823CB91A9FED034534781492E4B8EEAD7BB12CF547C827D0C79554A2A72441328621D336A7BC284946AD531847A6065A535571D14F44ED41
X-C8649E89: 1C3962B70DF3F0AD73CAD6646DEDE191716CD42B3DD1D34C77DD89D51EBB774225B6776AC983F447FC0B9F89525902EE6F57B2FD27647F25E66C117BDB76D659DDDF2075B85637936062C349FF4EC59937E2192D0588137E7D47DDB65A769ED907B77FDAF859CAD5B8341EE9D5BE9A0A455908D2914837AA6D788CDB14B69A70DE1FE36A56977BF5C7CEAA0681F5848F4C41F94D744909CE8D0BD9C58AFC60D7AC2C816912F0B9785811D22EBD454E4C3FCF178C6DD14203
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu53w8ahmwBjZKM/YPHZyZHvz5uv+WouB9+ObcCpyrx6l7KImUglyhkEat/+ysWwi0gdhEs0JGjl6ggRWTy1haxBpVdbIX1nthFXMZebaIdHP2ghjoIc/363UZI6Kf1ptIMVW+UUD87bVUozEp3chtGE0o=
X-Mailru-Sender: 602CF187C2830F515C0E835FDCDF8B4AD70E115DA6843E579B464708D7791FD76B1E8FA48869DC948C98A3A8180BCE44B03E3541B5E1C6609314192DE98EED7F7BDCEEFCFF92A066729AAD11D2E7118DC5EE77B89F7022743DDE9B364B0DF289AE208404248635DF
X-Mras: Ok
X-Mailru-Src: fallback
X-7564579A: 646B95376F6C166E
X-77F55803: 6242723A09DB00B45F46A7B484244367BCE5669FC049DE22789CA265C714C9CF049FFFDB7839CE9E3DA193A385E4308255CC5642D2AE5E703AC869CB818453E9E7261A4041875B6028E40415B9000FB6
X-7FA49CB5: 0D63561A33F958A58966E984C78B70195002B1117B3ED696C00FCD3270813AE8AC567EEE93B47CDB02ED4CEA229C1FA827C277FBC8AE2E8B54F520D093A0DF28
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu53w8ahmwBjZKM/YPHZyZHvz5uv+WouB9+OYcBso8Zm+oliTz8oZwnDrFsY77LZRcHyw5ht0smWrfSeTW5FiI8avd9v29gUBslpEZ9wIMwqVP4jLQVQ+dVm7x9BpDHadBV9RMjI809PraZNYTqIqRxNMUCJuzGJSLduw==
X-Mailru-MI: 20000000020000000000000800
X-Mras: Ok
X-Mailman-Approved-At: Thu, 30 Apr 2026 16:39:57 +0000
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
X-Rspamd-Queue-Id: BE04F4A5DCA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.89 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mail.ru : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[mail.ru:s=mail4];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[mail.ru];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.mavlenkov@mail.ru,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mail.ru:-];
	NEURAL_HAM(-0.00)[-0.627];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

On Ivy Bridge (and other pre-gen8 platforms), active DP-to-HDMI protocol
converters such as the Chrontel CH73111 trigger an infinite link retrain
loop on kernels 6.x+. The monitor connected through the adapter goes
black and recovers approximately once per second, eventually causing
system instability.

Three changes introduced in the i915 DP stack combine to cause this:

1. intel_dp_stop_link_train() now automatically schedules a post-training
   link check via intel_encoder_link_check_queue_work(). The Chrontel
   adapter reports non-standard DPCD link status, which causes the check
   to fail and trigger a retrain, looping indefinitely.

2. intel_dp_needs_link_retrain() unconditionally returns true when
   seq_train_failures > 0, bypassing the actual DPCD link status read.
   A single marginal training attempt permanently marks the link as
   needing retrain.

3. intel_dp_short_pulse() forces LINK_STATUS_CHANGED on every short HPD
   for all platforms, causing unnecessary link checks that initiate the
   retrain cycle on adapters that generate frequent short HPDs.

Fix all three by gating the new behavior behind DISPLAY_VER(display) >= 8,
restoring the 5.15-era behavior for Ivy Bridge/Sandy Bridge and earlier.
These platforms use the older g4x DP path and do not benefit from the
aggressive post-training link monitoring.

Tested on Intel HD 2500 (Ivy Bridge, device ID 0152) with a Chrontel
CH73111 DP-to-HDMI adapter driving a 1920x1080 display over 2 lanes
at HBR (270 MHz).

Signed-off-by: bitey <s.mavlenkov@mail.ru>
---
 drivers/gpu/drm/i915/display/intel_dp.c              | 8 +++++++-
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 3 ++-
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ORIGINAL..FIXED 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5676,6 +5676,7 @@ static int
 intel_dp_read_link_status(struct intel_dp *intel_dp,
 			  u8 link_status[DP_LINK_STATUS_SIZE])
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	int err;
 
 	memset(link_status, 0, DP_LINK_STATUS_SIZE);
@@ -5712,7 +5713,8 @@ static bool intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 	if (intel_dp->link.retrain_disabled)
 		return false;
 
-	if (intel_dp->link.seq_train_failures)
+	if (DISPLAY_VER(display) >= 8 &&
+	    intel_dp->link.seq_train_failures)
 		return true;
 
 	/* Retrain if link not ok */
@@ -5965,6 +5967,7 @@ static bool
 intel_dp_short_pulse(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	bool reprobe_needed = false;
 	u8 esi[4] = {};
 
@@ -5988,7 +5991,8 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 	 * TODO: let the link status check depend on LINK_STATUS_CHANGED
 	 * or intel_dp->link.force_retrain for DPCD_REV >= 1.2
 	 */
-	esi[3] |= LINK_STATUS_CHANGED;
+	if (DISPLAY_VER(display) >= 8)
+		esi[3] |= LINK_STATUS_CHANGED;
 	if (intel_dp_handle_link_service_irq(intel_dp, esi[3]))
 		reprobe_needed = true;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index ORIGINAL..FIXED 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1154,7 +1154,8 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 
 	intel_hpd_unblock(encoder);
 
-	if (!display->hotplug.ignore_long_hpd &&
+	if (DISPLAY_VER(display) >= 8 &&
+	    !display->hotplug.ignore_long_hpd &&
 	    intel_dp->link.seq_train_failures < MAX_SEQ_TRAIN_FAILURES) {
 		int delay_ms = intel_dp->link.seq_train_failures ? 0 : 2000;
 
-- 
2.49.0
