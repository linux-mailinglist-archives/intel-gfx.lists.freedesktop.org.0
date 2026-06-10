Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +yYNJneiKWosbAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:44:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4515E66C072
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:44:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sms-medipool.de header.s=mail header.b=WRhGzsKQ;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=sms-medipool.de
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43AB210EB44;
	Wed, 10 Jun 2026 17:44:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.sms-medipool.de (mail.sms-medipool.de [178.63.14.108])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A96C210E1C4;
 Wed, 10 Jun 2026 17:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sms-medipool.de;
 s=mail; t=1781113456;
 bh=YgVJz4WwQdlTleUrTkNoFqn5Uqj/4xhgLc17gnJGJ38=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WRhGzsKQDfdcq5tJSSNLZTrOA/t203jrFrbsU4ZY7+WtHKpZjNHv+/cLOwgA1laq/
 zIxTSyHsCCGkJGn1IAexeS71+74EQTueHWeldu+N0HmVE/wmgwdLybVgALfrk1VNaj
 CaStcDbmkllSVElatKLHwwNrKPj1EP4MWj/Eazw4lpMZJA9W4m7nXrL3Roqe9psy//
 DhU8jHLJeNfUQzqcLpqm8XjVWfAwZwIxOI+FSWe+8c24SKoNjcjGXE069jhTyTmnco
 Jhg6hEV2LVDgev4+1AJxpkl0M0bImPgqLEHqxCXYGFwrlJ0NncQ2EVtWIMnGae6z7a
 GVI8Cqxdhzyqw==
Received: from mail.stoss-medica.de (mail.stoss-medica.de [213.147.17.40])
 by mail.sms-medipool.de (Postfix) with ESMTPS id D680F11D3B;
 Wed, 10 Jun 2026 19:44:15 +0200 (CEST)
Received: from NUC16-Linux.sb.golima.de ([95.88.98.111])
 by mail.stoss-medica.de (Kerio Connect 10.0.8 patch 2) with ESMTP;
 Wed, 10 Jun 2026 19:44:14 +0200
From: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Imre Deak <imre.deak@intel.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, alexander.kaplan@sms-medipool.de
Subject: [PATCH 2/3] drm/i915/dp: Ignore the sink's DSC max FRL rate without a
 PCON DSC encoder
Date: Wed, 10 Jun 2026 19:44:12 +0200
Message-ID: <20260610174413.5881-3-alexander.kaplan@sms-medipool.de>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260610174413.5881-1-alexander.kaplan@sms-medipool.de>
References: <20260610174413.5881-1-alexander.kaplan@sms-medipool.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[sms-medipool.de,reject];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[sms-medipool.de:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.kaplan@sms-medipool.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,sms-medipool.de:dkim,sms-medipool.de:email,sms-medipool.de:mid,sms-medipool.de:from_mime];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[sms-medipool.de:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4515E66C072

intel_dp_hdmi_sink_max_frl() limits the sink's max FRL rate by its
DSC max FRL rate whenever the sink supports DSC 1.2.
However, the DSC max FRL rate (HF-VSDB DSC_Max_FRL_Rate) only applies
to compressed video transport, which requires a DSC 1.2 encoder in
the PCON (configured via intel_dp_pcon_dsc_configure()).
Without such an encoder the HDMI link always carries uncompressed
video, for which the regular Max_FRL_Rate is the correct limit.

Applying the DSC limit unconditionally trains the FRL link at a lower
rate than both the PCON and the sink support.
E.g. an LG OLED G4 (Max_FRL_Rate 48 Gbps, DSC_Max_FRL_Rate 24 Gbps)
behind a Synaptics VMM7100 PCON (PCON max FRL bw 48 Gbps, no DSC
encoder):

  Sink max rate from EDID = 24 Gbps
  FRL trained with : 24 Gbps

while Windows/macOS train the same hardware at 40/48 Gbps.
The too low FRL rate needlessly constrains the formats available to
the sink.

Only apply the sink's DSC max FRL rate if the PCON has a DSC 1.2
encoder, matching the gate in intel_dp_pcon_dsc_configure().
PCONs with a DSC encoder keep the current conservative behavior,
since the link is trained once and compressed transport may be used
for any subsequent mode.
With this the setup above trains at 48 Gbps.

Tested on PTL (xe) with the above PCON/sink combo.

Fixes: 10fec80b48c5 ("drm/i915/display: Configure PCON for DSC1.1 to DSC1.2 encoding")
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 13cfccf60490..2831b274d88a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4254,7 +4254,14 @@ static int intel_dp_hdmi_sink_max_frl(struct intel_dp *intel_dp)
 	rate_per_lane = info->hdmi.max_frl_rate_per_lane;
 	max_frl_rate = max_lanes * rate_per_lane;
 
-	if (info->hdmi.dsc_cap.v_1p2) {
+	/*
+	 * The sink's DSC max FRL rate only applies to compressed video
+	 * transport, which requires a DSC 1.2 encoder in the PCON. Without
+	 * one the HDMI link always carries uncompressed video, for which
+	 * the regular max FRL rate is the limit.
+	 */
+	if (drm_dp_pcon_enc_is_dsc_1_2(intel_dp->pcon_dsc_dpcd) &&
+	    info->hdmi.dsc_cap.v_1p2) {
 		max_dsc_lanes = info->hdmi.dsc_cap.max_lanes;
 		dsc_rate_per_lane = info->hdmi.dsc_cap.max_frl_rate_per_lane;
 		if (max_dsc_lanes && dsc_rate_per_lane)
-- 
2.54.0


