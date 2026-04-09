Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sJ9DJlZ812mXOggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:15:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2633C90EA
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:15:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E84AF10E78F;
	Thu,  9 Apr 2026 10:15:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dKev4uTc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0F1210E78A;
 Thu,  9 Apr 2026 10:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775729748; x=1807265748;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RZ7ljuBQzz2MNmVHSfymm7c966ESx6Z01LTP/d7aipU=;
 b=dKev4uTc6uFbhgaRkdLlwGUygNsR8SNeILgF0Z/VMeGbYbKukJmshIoy
 PcMlw9NxTwH4oVLEYJoUSDd7/dBvF4LiYNQIfpYdH5WBm2t36weQpeCsJ
 DBCbiR0tEGP9WE+zgxv/BwCxvPV5ex4z8y3y6719ubKtuepwJ6iPsy3ud
 pFmeV3Lhic0RVjEb/fNPjgV8ZheOumzhHUbg5yoqZMeM3c9Q6FtseBWIA
 TazuwfPEzzWMOd/y1nyP2P90rIJy0/qNAa4gk6GkElobzVGggBbi4yGvU
 ddZ1xh4mX63/UgL88Z3qxfGpNPLnKNoNDg2T6IWpaG6BWPKt/tpZuqO3O A==;
X-CSE-ConnectionGUID: o6uFEMYZRX6sK+b1j93vlA==
X-CSE-MsgGUID: U/jB8+n2TgSynZVTfgRekQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="87354247"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="87354247"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:15:47 -0700
X-CSE-ConnectionGUID: MZqhPHsURYqtuvgBFb4/4A==
X-CSE-MsgGUID: YXUSacb0Q/Wyg2aqP+GReg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="252065381"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.216])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:15:46 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v2 1/9] drm/i915/hdmi: Add missing intel_pfit_mode_valid() for
 4:2:0 also modes
Date: Thu,  9 Apr 2026 13:15:31 +0300
Message-ID: <20260409101539.22032-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260409101539.22032-1-ville.syrjala@linux.intel.com>
References: <20260409101539.22032-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid]
X-Rspamd-Queue-Id: 6C2633C90EA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

intel_hdmi_mode_valid() is calling intel_pfit_mode_valid() only
on the first attempt (4:2:0 for "4:2:0 only" modes, 4:4:4 for
everything else). Add the call also for the "4:2:0 also" modes case
so that we actually know the pipe scaler can actually produce the
4:2:0 output.

Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 17bd2c207453..0d88eaefbe52 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2079,6 +2079,11 @@ intel_hdmi_mode_valid(struct drm_connector *_connector,
 			return status;
 
 		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
+
+		status = intel_pfit_mode_valid(display, mode, sink_format, 0);
+		if (status != MODE_OK)
+			return status;
+
 		status = intel_hdmi_mode_clock_valid(&connector->base, clock, has_hdmi_sink,
 						     sink_format);
 		if (status != MODE_OK)
-- 
2.52.0

