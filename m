Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7188194C0C4
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2024 17:16:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 063CA10E768;
	Thu,  8 Aug 2024 15:16:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dj5dCzjN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4640B10E768;
 Thu,  8 Aug 2024 15:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723130179; x=1754666179;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ygPQZ7A9WwNR6Uy5MRZj/OaMVDmjgQmi1Kr5wLUlz3Q=;
 b=dj5dCzjNWw8+lCYlWBDdmcYvRUk7I163DivfO4jj8zSEko53Ga0QG4zA
 WeW6oVII2vh6Fk12Oj3kcM6Hz1Z1sD54c2pieK+FRZF5HQFhJLkH5EO24
 QXhR32V0KIe1h9/jpURqyMwpBftxEbGD/MkfKG01C55z7NYatZZ5u2edd
 61zRMwCzsXaPHMpPPZOPyIKSCzGdxQiCJ0pReLp62K68A11whOlVz85Bd
 CnPaqMxcQDl/TMbWFa/GwgsHPmF3G5THwax0I2A0F9t848fSvSbJ7zioF
 Ej7g3sp0wLgpAudZXEDEQyJkN91Yv20b4sU2NxJRhN1FCsu2DWNSBJwEq g==;
X-CSE-ConnectionGUID: FRfgXAQbSIymwweOVl1HJg==
X-CSE-MsgGUID: vFiwr1qVRsyemsGA0T2Ezg==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="20832196"
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="20832196"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 08:16:19 -0700
X-CSE-ConnectionGUID: p8gQz0COQRSuWT1j5iNUjw==
X-CSE-MsgGUID: 0hM022L2S9eJIL0yBajTug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="61878391"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 08:16:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, lucas.demarchi@intel.com,
 jani.nikula@intel.com
Subject: [PATCH v2 04/10] drm/i915: use pdev_to_i915() instead of
 pci_get_drvdata() directly
Date: Thu,  8 Aug 2024 18:15:49 +0300
Message-Id: <2a6172500e94055f6bf1ab288d8736a53c72cda8.1723129920.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1723129920.git.jani.nikula@intel.com>
References: <cover.1723129920.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

We have a helper for converting pci device to i915 device, use it.

v2: Also convert i915_pci_probe() (Gustavo)

Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index ce4dfd65fafa..94c89ca2ef30 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -880,7 +880,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
 {
 	struct drm_i915_private *i915;
 
-	i915 = pci_get_drvdata(pdev);
+	i915 = pdev_to_i915(pdev);
 	if (!i915) /* driver load aborted, nothing to cleanup */
 		return;
 
@@ -1003,7 +1003,7 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (err)
 		return err;
 
-	if (i915_inject_probe_failure(pci_get_drvdata(pdev))) {
+	if (i915_inject_probe_failure(pdev_to_i915(pdev))) {
 		i915_pci_remove(pdev);
 		return -ENODEV;
 	}
@@ -1025,7 +1025,7 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 static void i915_pci_shutdown(struct pci_dev *pdev)
 {
-	struct drm_i915_private *i915 = pci_get_drvdata(pdev);
+	struct drm_i915_private *i915 = pdev_to_i915(pdev);
 
 	i915_driver_shutdown(i915);
 }
-- 
2.39.2

