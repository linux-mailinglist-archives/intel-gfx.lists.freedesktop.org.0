Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42094318DA1
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 15:52:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89D856EE34;
	Thu, 11 Feb 2021 14:52:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CD9A6EE34
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 14:52:41 +0000 (UTC)
IronPort-SDR: ihL9P4V4JKMJm8BmYXUK9DlxS5G0OzCwEkzZwWbQqA1JQAY50YkH3rizQZmp6fygSYXp15Gisd
 PPoEQ91oesNw==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="182383420"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="182383420"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 06:52:41 -0800
IronPort-SDR: gollDSCcm8j1sKOxn9/6qhVaPfX3GBdxPqbOq7hAN6V4PtefIEisE2ghGOi9QpT7Gq0Y4kLdE3
 AkMMgxKIxFkw==
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="380693923"
Received: from hblancoa-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.99])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 06:52:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Feb 2021 16:52:12 +0200
Message-Id: <feb4c3b2b9c4da56a840bdb3c0e7fd0e58ee50de.1613054234.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1613054234.git.jani.nikula@intel.com>
References: <cover.1613054234.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/9] drm/i915/edp: reject modes with
 dimensions other than fixed mode
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
Cc: jani.nikula@intel.com, Nischal Varide <nischal.varide@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Be more strict about filtering modes for eDP.

Cc: Nischal Varide <nischal.varide@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4f89e0de5dde..169b44c8ebbc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -789,10 +789,10 @@ intel_dp_mode_valid(struct drm_connector *connector,
 		return MODE_H_ILLEGAL;
 
 	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
-		if (mode->hdisplay > fixed_mode->hdisplay)
+		if (mode->hdisplay != fixed_mode->hdisplay)
 			return MODE_PANEL;
 
-		if (mode->vdisplay > fixed_mode->vdisplay)
+		if (mode->vdisplay != fixed_mode->vdisplay)
 			return MODE_PANEL;
 
 		target_clock = fixed_mode->clock;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
