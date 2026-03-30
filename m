Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cOpJKTYNy2msDQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 01:54:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6342A36278F
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 01:54:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01AC510E81D;
	Mon, 30 Mar 2026 23:54:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MZ2nEbHw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E7BC10E81C;
 Mon, 30 Mar 2026 23:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774914867; x=1806450867;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U7ECmFddYuzrsoRN+1UIWgVuUFdOhLKulymUQ+3UN1A=;
 b=MZ2nEbHw5fJbg6zETOZHXpjCn83otlXLsyZ7hufnYLxkws07VXklqnS8
 UVPPtxE9E5/3bKkVacV3WmhApIB05EVDFHAvLyIUQiIkDg7nOPLEyOm+z
 KTNVPWv13p2dAFqLr9khQ1Cl2O6Ejz3ie2NjyKH1Fwi6ILMHf5rk9Kf4L
 TQZZwXLOw7l+DIAgaonHXSUzriefOnNaSWIrJ/L85KYB4Q5REPmoWSL/y
 /plaVF5/kgjOuQyt/gMi+dabGPV9KnHTMCNpChkQ6BOSvdodbRmxPfCQk
 853ihroT64SS/pYcMj3QVMaQStRyK6hsvEPi8kN9QLrFwQuTzy76y4QEH w==;
X-CSE-ConnectionGUID: x6z+x2vGRJyvPJTRpSkr7w==
X-CSE-MsgGUID: FcFQzsTKQbq2d6XdQoarmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="86612000"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="86612000"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 16:54:27 -0700
X-CSE-ConnectionGUID: EecxTi8PQXS2RGZOWlVPgA==
X-CSE-MsgGUID: bbWaaA8OT+OSifxY5eobtg==
X-ExtLoop1: 1
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.155])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 16:54:25 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: [PATCH 9/9] drm/i915/dp: Make the RGB fallback for "4:2:0 only" modes
 the last resort
Date: Tue, 31 Mar 2026 02:53:39 +0300
Message-ID: <20260330235339.29479-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260330235339.29479-1-ville.syrjala@linux.intel.com>
References: <20260330235339.29479-1-ville.syrjala@linux.intel.com>
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,collabora.com:email]
X-Rspamd-Queue-Id: 6342A36278F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently we take the Hail Mary RGB fallback for "4:2:0 only" modes
already during the first pass when respect_downstream_limits==true.
It seems better to try everything else first (like ignoring TMDS
clock limits) while still preferring 4:2:0, and only if everything
else has failed fall back to RGB.

Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ed89fbcdd549..e23162fc3f8b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3405,7 +3405,7 @@ intel_dp_compute_formats(struct intel_encoder *encoder,
 						     respect_downstream_limits,
 						     INTEL_OUTPUT_FORMAT_YCBCR420);
 
-		if (ret) {
+		if (ret && !respect_downstream_limits) {
 			drm_dbg_kms(display->drm,
 				    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
 
-- 
2.52.0

