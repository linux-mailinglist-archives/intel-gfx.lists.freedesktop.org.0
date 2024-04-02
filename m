Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A75894F10
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 11:50:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FAC010FBD5;
	Tue,  2 Apr 2024 09:50:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iu0mvVDM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 342B210FBD6
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 09:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712051436; x=1743587436;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cn8ZMzRfKMb4+lzKGYy4USs+OoQwlM7qjW7OqiD2sFk=;
 b=iu0mvVDM32j/Ow+xa+ihyCqYyqnhldsQ6/tTDJswcHA/oBJEkg2fec2g
 nerVE3Q76zyJWU2+QNn4xc9xBPB53qrs6SBC48E+S2N0XwiZxkc0l77OQ
 YeSzJ9XYua5uKVAMmjHqOtdkxr4/nOxd/jMVHojdI/sjrjwin1fki+XIA
 yzWBx1SAj1oxpkEwznS1CauxhNnggBhzY2w4EtMhm0imIenolXXRrxDg0
 CBzLUN9ss9zotr91kADFBsMWZYwUuaZf7DFLy5v2PUy8ED1VFwpl/tuk0
 SrgUny0DuD1V8p/OciPXU6CF3FajSLRyavxJn8NaoqPx1I2AF7ktK6nY7 w==;
X-CSE-ConnectionGUID: qXxdM3TpTDubIBB4fvfv8Q==
X-CSE-MsgGUID: 6excoD+QQxKipgYdAojTiA==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="7422644"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; 
   d="scan'208";a="7422644"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="22693312"
Received: from sudhirj1-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.34.252])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:35 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 07/19] drm/i915/psr: Call intel_psr_init_dpcd in
 intel_dp_detect
Date: Tue,  2 Apr 2024 12:49:59 +0300
Message-Id: <20240402095011.200558-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240402095011.200558-1-jouni.hogander@intel.com>
References: <20240402095011.200558-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Currently panel replay dpcd capability isn't properly checked after
plugging in DP panel. Fix this by calling intel_psr_init_dpcd in
intel_dp_detect.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b393ddbb7b35..b8976bb67510 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5744,6 +5744,8 @@ intel_dp_detect(struct drm_connector *connector,
 
 	intel_dp_mst_configure(intel_dp);
 
+	intel_psr_init_dpcd(intel_dp);
+
 	/*
 	 * TODO: Reset link params when switching to MST mode, until MST
 	 * supports link training fallback params.
-- 
2.34.1

