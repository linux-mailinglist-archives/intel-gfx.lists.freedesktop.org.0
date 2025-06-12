Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87619AD7C72
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 22:34:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ABE510E192;
	Thu, 12 Jun 2025 20:34:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FPVJLvkz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77D3510E194;
 Thu, 12 Jun 2025 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749760494; x=1781296494;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u+A4djWyxul/7aUftPaPaTVrtFp/KVcNv7uVgzQeTx4=;
 b=FPVJLvkz8OF5Ldz/L8h6wciHg7L9uInW1XfeY2jRxhhWJ5Tm4oshOren
 iG9WuSvOuJj/2PA1z/Jc906RUhzb0NpTaoQuVO1r9d6viDSsShFA6Wc+v
 CvmXFFs6lOcMr2OT3lRy+M+qeHSBsDMw+TYNpzZpKmK51a94fDsyWy8ks
 hJ0nFZ5gBzcVsX+3kW3uTuOzX9Llj57h46OmPD+LfGk2m8plCVqV99E3i
 da87EkKRhudQhIjUgPpes21bGpPXHzwYTAx4BCInCXvqJZualJalamINC
 fjViEHclBAIGI31n7B45S7SGwf6fV40VHfpCWcVZcLuK56akhGcyOC4kR Q==;
X-CSE-ConnectionGUID: 1iSfHcZjQu+HJ7nBlvPe8w==
X-CSE-MsgGUID: v9qJSvQ4SWOcZgbyEyceJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="52106967"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="52106967"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 13:34:53 -0700
X-CSE-ConnectionGUID: D6aCYYdMSvmpK/7qh0BPuw==
X-CSE-MsgGUID: 595N9Pk+R/SaTGb4czPQ8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="148520051"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by fmviesa009.fm.intel.com with ESMTP; 12 Jun 2025 13:34:51 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v5 1/9] drm/i915/xe3lpd: Add support for display version 30.02
Date: Fri, 13 Jun 2025 02:04:40 +0530
Message-Id: <20250612203448.2948795-2-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250612203448.2948795-1-dnyaneshwar.bhadane@intel.com>
References: <20250612203448.2948795-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
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

From: Matt Roper <matthew.d.roper@intel.com>

Display version 30.02 should be treated the same as other Xe3 IP, but
will have a slightly different set of workarounds.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index a4070f40e26f..089cffabbad5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1480,6 +1480,7 @@ static const struct {
 	{ 14,  1, &xe2_hpd_display },
 	{ 20,  0, &xe2_lpd_display },
 	{ 30,  0, &xe2_lpd_display },
+	{ 30,  2, &xe2_lpd_display },
 };
 
 static const struct intel_display_device_info *
-- 
2.34.1

