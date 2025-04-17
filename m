Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA12CA91B25
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 13:45:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 254EE10EADA;
	Thu, 17 Apr 2025 11:45:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fs7NqfIB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C8E410EAD8
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Apr 2025 11:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744890301; x=1776426301;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=NObvFPHtUcjsfZmWyfSWP86janfUZ22MtQb6vC6rqHk=;
 b=fs7NqfIB4RQaX1mYv0MWmKvaaKKshBMFUXU0/oIwilhMSRoXoeMUXMW1
 kRPFww/3CS9T7by96idyBUTjkAHzRlp9segPHFLenrgVliedPzRZewJWr
 A3AXIV4Y8ejcF1T7mx5NpArW/PyugogfzmluE2HkQ91g35O9fyyi+Qw60
 oaAqoYKZLyuPDEn4MvUCKIR868Fnig7DLNCmaklZ6cCmO0OhDFYqLKwNC
 oqQgArgQk6iKQbaIYTofT+R6g0yDpDyXH3RCtvwACMIG1cnEAvH0lenYQ
 uxinPaXp1zeg7dTLrYQ8AASgQL+++Psrjc7V/M9Do+jgGir455Nv55ktr g==;
X-CSE-ConnectionGUID: n9QzpHaYSsmppkJEf1fMsw==
X-CSE-MsgGUID: cVjfw9fFQWyqbYtJ6hQQBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="46638239"
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="46638239"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 04:45:00 -0700
X-CSE-ConnectionGUID: Pl59+z4kRhGiCSQlpX5FaA==
X-CSE-MsgGUID: Hk63wjtqSiWY8gr19ZmyfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="135943581"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 17 Apr 2025 04:44:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Apr 2025 14:44:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/6] drm/i915/vga: Clean up VGACNTRL bits
Date: Thu, 17 Apr 2025 14:44:49 +0300
Message-ID: <20250417114454.12836-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250417114454.12836-1-ville.syrjala@linux.intel.com>
References: <20250417114454.12836-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Use REG_BIT() & co. for the VGACNTRL register bits.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 49beab8e324d..81765f27b258 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1814,9 +1814,10 @@
 
 /* VBIOS regs */
 #define VGACNTRL		_MMIO(0x71400)
-# define VGA_DISP_DISABLE			(1 << 31)
-# define VGA_2X_MODE				(1 << 30)
-# define VGA_PIPE_B_SELECT			(1 << 29)
+#define   VGA_DISP_DISABLE			REG_BIT(31)
+#define   VGA_2X_MODE				REG_BIT(30)
+#define   VGA_PIPE_SEL_MASK			REG_BIT(29)
+#define   VGA_PIPE_SEL(pipe)			REG_FIELD_PREP(VGA_PIPE_SEL_MASK, (pipe))
 
 #define VLV_VGACNTRL		_MMIO(VLV_DISPLAY_BASE + 0x71400)
 
-- 
2.49.0

