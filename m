Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B66869C4F
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 17:37:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD7A710E22B;
	Tue, 27 Feb 2024 16:37:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CxsVDwia";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A508F10E22B
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 16:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709051856; x=1740587856;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=A+nTd9OX5yQ26QMgGIsH2uRtuT5HWzh2KUugW38Dqzk=;
 b=CxsVDwiazrCtzdAqu8GVs/vTd34PFa2SmUTUwmDlylwL6teviHgBllDk
 I0bil7XLTDrLWc2NGp3o6rkGZ2UqsBq8m8d7X8gqpa9SGwv1cJgmgB+cP
 9hOcD18B3MBuqLyuQERCaP7DmgvV5iISbHUR2E9y2SsfSJ78XDf8zjfKM
 u5xBZ9636jWeZ6NzUJEdjYw1ACV/UiZQ9BDwXhOGpv0P3cdk8Zyogi1Uy
 /TALrAO/ux0UxHWmqlW+admW8W898A6O0seWDvmljHCFwUnPbICi4pDN+
 MOuyYucVrpt20bvouc/rFKvqRdNNToCcPjYskOoRD0LLv/eknohQ6szZX A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="25866715"
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; d="scan'208";a="25866715"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 08:37:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; 
   d="scan'208";a="7533568"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 08:37:31 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, jonathan.cavitt@intel.com,
 rodrigo.vivi@intel.com, tomasz.mistat@intel.com
Subject: [PATCH 3/3] mei: gsc_proxy: match component when GSC is on different
 bus
Date: Tue, 27 Feb 2024 08:26:33 -0800
Message-Id: <20240227162633.1833550-3-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240227162633.1833550-1-jonathan.cavitt@intel.com>
References: <20240227162633.1833550-1-jonathan.cavitt@intel.com>
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

From: Alexander Usyskin <alexander.usyskin@intel.com>

On Arrow Lake S systems, MEI is no longer strictly connected to bus 0,
while graphics remain exclusively on bus 0. Adapt the component
matching logic to accommodate this change:

Original behavior: Required both MEI and graphics to be on the same
bus 0.

New behavior: Only enforces graphics to be on bus 0 (integrated),
allowing MEI to reside on any bus.
This ensures compatibility with Arrow Lake S and maintains functionality
for the legacy systems.

Cc: <stable@vger.kernel.org>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---
 drivers/misc/mei/gsc_proxy/mei_gsc_proxy.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/misc/mei/gsc_proxy/mei_gsc_proxy.c b/drivers/misc/mei/gsc_proxy/mei_gsc_proxy.c
index be52b113aea93..89364bdbb1290 100644
--- a/drivers/misc/mei/gsc_proxy/mei_gsc_proxy.c
+++ b/drivers/misc/mei/gsc_proxy/mei_gsc_proxy.c
@@ -96,7 +96,8 @@ static const struct component_master_ops mei_component_master_ops = {
  *
  *    The function checks if the device is pci device and
  *    Intel VGA adapter, the subcomponent is SW Proxy
- *    and the parent of MEI PCI and the parent of VGA are the same PCH device.
+ *    and the VGA is on the bus 0 reserved for built-in devices
+ *    to reject discrete GFX.
  *
  * @dev: master device
  * @subcomponent: subcomponent to match (I915_COMPONENT_SWPROXY)
@@ -123,7 +124,8 @@ static int mei_gsc_proxy_component_match(struct device *dev, int subcomponent,
 	if (subcomponent != I915_COMPONENT_GSC_PROXY)
 		return 0;
 
-	return component_compare_dev(dev->parent, ((struct device *)data)->parent);
+	/* Only built-in GFX */
+	return (pdev->bus->number == 0);
 }
 
 static int mei_gsc_proxy_probe(struct mei_cl_device *cldev,
@@ -146,7 +148,7 @@ static int mei_gsc_proxy_probe(struct mei_cl_device *cldev,
 	}
 
 	component_match_add_typed(&cldev->dev, &master_match,
-				  mei_gsc_proxy_component_match, cldev->dev.parent);
+				  mei_gsc_proxy_component_match, NULL);
 	if (IS_ERR_OR_NULL(master_match)) {
 		ret = -ENOMEM;
 		goto err_exit;
-- 
2.25.1

