Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF737C6E00
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 14:25:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12E4110E4C2;
	Thu, 12 Oct 2023 12:25:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7380A10E4C2
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 12:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697113497; x=1728649497;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mUhBDLnHNV/nzgR2GRUwF2xzRh4dR88UaBXEs1pb5aA=;
 b=bZBy/BpA01zmQsmGBrZdriIf97l26MwEd3ZisrwWHQwiC0gkVAzqceMB
 WSG1xvMDDApWfU/QAjNLYbpiEnvYdImytBaDMJ7NkyoFvgubhKnxrgrTh
 iULPuUcl5+AyQfD4SL+k+y9+fcp7NVVsH+kSXZNj+7tRgcrEz2pNE7Y6L
 gu39dMvfkTyBJjC9UAfKRnCTamMZPVS0RqVr/m4/oKa0s+oLvlRbRpZAX
 uAipZnmPjK0zllRqhctk/pkvUPg9sEBZH9wUKUXWWvk4SNFUVKpBBAwFG
 rdBWldzt9nido5G4pIqcYyPEi4/rAPufez+pquSgkqwdmTw+EY8hg8xZ8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="382140854"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="382140854"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 05:24:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="844979054"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="844979054"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by FMSMGA003.fm.intel.com with SMTP; 12 Oct 2023 05:24:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Oct 2023 15:24:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Oct 2023 15:24:40 +0300
Message-ID: <20231012122442.15718-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231012122442.15718-1-ville.syrjala@linux.intel.com>
References: <20231012122442.15718-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/6] drm/i915/pci: Clean up zero initializers
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

Just use a simple {} to zero initialize arrays/structs instead
of the hodgepodge of stuff we are using currently.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index df7c261410f7..454467cfa52b 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -923,7 +923,7 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_DG2_IDS(&dg2_info),
 	INTEL_ATS_M_IDS(&ats_m_info),
 	INTEL_MTL_IDS(&mtl_info),
-	{0, 0, 0}
+	{}
 };
 MODULE_DEVICE_TABLE(pci, pciidlist);
 
-- 
2.41.0

