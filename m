Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 385B1729C83
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 16:14:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68A8610E6C3;
	Fri,  9 Jun 2023 14:14:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EE7C10E6C3
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 14:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686320088; x=1717856088;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=a2JJMHX9edtYLrZtXZ38VIlwC7FW8uoXAIOffnWBG1s=;
 b=Q6zffzxTXFUK7+tZqqEj5FBVbZ3snmigMh5m5VeH4d1xXNIVz3ZboMz0
 J+N4jfIZmEaGIbQE0c0IfWWhO5GMlNgzSi8SuHtozG0f6rRApYaT6L5AU
 b0TyKQrgTGyK0r1jwz+d0sIeML6hyY+YMHJCoShfKEu7YIMJjDNW24Dcx
 0at6LYolvLRUZHtLxoz/vyfOczoNJPKJ9PjnmWd5Yz51M0w10+zlxEgB0
 DEorBUIWCt/7MHkjHVzXzofvbaNyRf+tVNemLnOXIMSa000znJk/L3Ti1
 8EaKcfAs9RGSt/FIgYaD02bcadrWDBOf/v+pVlPfWT6r91vf9va6LZBOU A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="385966601"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="385966601"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 07:14:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="740183160"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="740183160"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 09 Jun 2023 07:14:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Jun 2023 17:14:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jun 2023 17:14:04 +0300
Message-Id: <20230609141404.12729-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
References: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 13/13] drm/i915/psr: Re-enable PSR1 on hsw/bdw
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

All known issues fixed now, so re-enable PSR1 on hsw/bdw.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 3fd30e7f0062..c48642f897e2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -380,6 +380,8 @@ static const struct intel_display_device_info hsw_display = {
 	.has_dp_mst = 1,
 	.has_fpga_dbg = 1,
 	.has_hotplug = 1,
+	.has_psr = 1,
+	.has_psr_hw_tracking = 1,
 	HSW_PIPE_OFFSETS,
 	IVB_CURSOR_OFFSETS,
 	IVB_COLORS,
@@ -397,6 +399,8 @@ static const struct intel_display_device_info bdw_display = {
 	.has_dp_mst = 1,
 	.has_fpga_dbg = 1,
 	.has_hotplug = 1,
+	.has_psr = 1,
+	.has_psr_hw_tracking = 1,
 	HSW_PIPE_OFFSETS,
 	IVB_CURSOR_OFFSETS,
 	IVB_COLORS,
-- 
2.39.3

