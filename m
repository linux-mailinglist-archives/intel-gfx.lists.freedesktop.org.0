Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B11536F4777
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 17:39:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F19D610E592;
	Tue,  2 May 2023 15:39:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F24D710E5A2
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 15:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683041941; x=1714577941;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bs71/BMoHS9qlU45TyEiVvYLXGPhBTh8y1UgWBbAhsA=;
 b=GkgYeYWnsacU6YMofIGFLw+sqJPOgTZVz4aCxvNpnrjgWU7gpA4TuarV
 NilfED8yJTE67xQpUUh+H9eO9bQryy791FZeyU+ueF12kiqrr04ofB+r1
 itLXmf5rDCGOCil0J/6lsrhaFlzjSj1x0NSZImXOtLMZWNzZet3P42wWK
 eAio8XLkuqnCRTFuYi7WhliJIn2CSf7AZisSv78XUAnNoZ5vPzj4TLSNU
 /+LRzIxcsjroYLndS6z8EKf91q8p4Vr/oYwUVUjqzqUrfaRJMahIQz70k
 0UVA/zSyYS1E7IgXeN8HCBsVsXm5YFTM5aNCLvgxSAunBjIgdIl3mnQFz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="434746249"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="434746249"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:39:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="726791233"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="726791233"
Received: from awojtkie-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.50])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:39:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 18:37:33 +0300
Message-Id: <b0f681dd82289dd86da78c6242411e8d812e51a1.1683041799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683041799.git.jani.nikula@intel.com>
References: <cover.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 16/24] drm/i915/guc: add dbgfs_node member
 kernel-doc
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drivers/gpu/drm/i915/gt/uc/intel_guc.h:274: warning: Function parameter or member 'dbgfs_node' not described in 'intel_guc'

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index e46aac1a41e6..8dc291ff0093 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -42,6 +42,7 @@ struct intel_guc {
 	/** @capture: the error-state-capture module's data and objects */
 	struct intel_guc_state_capture *capture;
 
+	/** @dbgfs_node: debugfs node */
 	struct dentry *dbgfs_node;
 
 	/** @sched_engine: Global engine used to submit requests to GuC */
-- 
2.39.2

