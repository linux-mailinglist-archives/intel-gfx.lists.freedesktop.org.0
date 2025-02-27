Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6C6A48A4D
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 22:10:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C9E710EB90;
	Thu, 27 Feb 2025 21:10:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HRq0cCrr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8327F10E111;
 Thu, 27 Feb 2025 21:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740690604; x=1772226604;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=vQjskcReaWfbCvUVf4XRGnxkG9QCAU/dMVl0tzaqrbU=;
 b=HRq0cCrredJTTMGCDQeeTPCeisD4TfuCUwzg65Vqa1sq1I7j9YQ6Hbz6
 c5sWzFyHBcoIUEOwinZkhpdyhqu4OFTmROhBykQlHJFQB1MmY53ubyF71
 ZNAlLXK3pNe1L4McpsIXe9ngROUbrxKFNHvds5ypgKdmH5vyGvZHNe7rZ
 U++wvvR126VmI7liB11VCr3zL11STSj4mmFKGs4xWiW5LujN37wzgzovk
 XILbYF6Hj0LePacamWntkXdI4nIfENzvRiATAyCGymV9JBjm3ao9fHBhW
 YEBhr+4vCT+CfWiygJ80v4M8ceUp6+6JYwdkqEGEsVloa/ySq/5ZSLkD9 Q==;
X-CSE-ConnectionGUID: LOPP98irR7ivzCBLSOEIKA==
X-CSE-MsgGUID: CxM4yrmtRuqR+Vqp40TPeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="40779458"
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="40779458"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 13:10:03 -0800
X-CSE-ConnectionGUID: poBJkt+mQYSwP7zvqUh0Fg==
X-CSE-MsgGUID: L+/gxENAT8S79wLVlGg04w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="116907991"
Received: from dnelso2-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.108.70])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 13:10:01 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v3 0/2] Improve type-safety on POWER_DOMAIN_*() macros
Date: Thu, 27 Feb 2025 18:09:11 -0300
Message-Id: <20250227-improve-type-safey-power-domain-macros-v3-0-b6eaa00f9c33@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHfUwGcC/03NQQ6CMBBA0auQrh1CB0jRlfcwLipMoYntNG1BD
 eHuNq5cvs3/u0gULSVxqXYRabPJsi9oT5UYF+1nAjsVC2ywbxAVWBcibwT5EwiSNvSBwC+KMLH
 T1oPTY+QEw8Oglp3pWnMWJRYiGfv+jW73YhPZQV4i6b+8VNi0CrEelOwRJMxrynrjOvGa9NX6T
 M96ZCeO4wtF5yxwuQAAAA==
X-Change-ID: 20250227-improve-type-safey-power-domain-macros-8bf2a14f43f9
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 Jani Nikula <jani.nikula@intel.com>, kernel test robot <lkp@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>
X-Mailer: b4 0.14.2
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

Fix one issue[1] reported by the kernel test robot and also take this
opportunity to improve POWER_DOMAIN_*() macros by making them explicitly
return the expected enum type with patch #2.

I decided to send this new version with patch #3 dropped in order to get
CI results and merge the already reviewed patches #1 and #2. Patch #3
from the previous version is still under discussion and will probably be
respinned as a standalone patch.

[1] https://lore.kernel.org/oe-kbuild-all/202502120809.XfmcqkBD-lkp@intel.com/

---
Gustavo Sousa (2):
      drm/i915/display: Use explicit base values in POWER_DOMAIN_*() macros
      drm/i915/display: Make POWER_DOMAIN_*() always result in enum intel_display_power_domain

 drivers/gpu/drm/i915/display/intel_display_power.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)
---
base-commit: 6badede10d92c242241bd7bf59a5488b5eba5aa7
change-id: 20250227-improve-type-safey-power-domain-macros-8bf2a14f43f9

Best regards,
-- 
Gustavo Sousa <gustavo.sousa@intel.com>

