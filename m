Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBFD63638B
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 16:27:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5C5F10E584;
	Wed, 23 Nov 2022 15:27:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8DAD10E577
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 15:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669217230; x=1700753230;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZXmThCR5dZX4sR29tjm9yWSWi7ADU/VsqbwsbdGSXlQ=;
 b=Mw7F6UQ4mr9taAYIeVIbeqgT+KtBZMBI5PJa3hiuQLo12ol+o69aLtVg
 IqncY7m2zNp8MbBUfbOXK6TYn5g306w+YXKPjPpc+YmAyqHSx5+aYBVbw
 OHKTpcw7GCIEXn1p4SMgRIOhLtZ7rbXNB/jDkMtZ/PNVaBzqTos8fBLnJ
 ExwXD/PM/jZ7LK9oNaKK6x2ahjnapHxQKURzJQUkAKo7M+UhOcscI1/Aq
 c08VWXcrtE/JvKzsi5GuuJaUjGIeMndUnEB7AqeJZZmSJkmHZTqg8WFhM
 1VB6EKZwCPQu8lHysANtJCSmdabB7WhO+5KKXAHaVg9QMGXPrgdfEj8VD A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="312789959"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="312789959"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 07:27:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="619651074"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="619651074"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 23 Nov 2022 07:27:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Nov 2022 17:27:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 17:26:35 +0200
Message-Id: <20221123152638.20622-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/13] drm/i915: Disable DSB usage specifically
 for LUTs
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The DSB has problem loading the LUTs at the moment. Some
of that is due to the palette anti collision logic, some
due to what seem real hw issues. Disable it the whole
thing locally in the color management code for now.

Note that we currently have this weird situation where on
adl+ we load parts of the LUT with DSB and parts with mmio.
That is due to the fact that only some parts of the LUT code
are using the DSB register write functions (ivb_load_lut_ext*()),
while the rest is using pure mmio (bdw_load_lut_10()). So now
we'll go back to pure mmio temporarily, until the DSB issues
get fixed (at which point we should be going for pure DSB).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 2715f1b617e1..9978d21f1634 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1394,6 +1394,9 @@ void intel_color_prepare_commit(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
+	/* FIXME DSB has issues loading LUTs, disable it for now */
+	return;
+
 	crtc_state->dsb = intel_dsb_prepare(crtc);
 }
 
-- 
2.37.4

