Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34158658ED0
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Dec 2022 17:13:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D60AA10E3F4;
	Thu, 29 Dec 2022 16:12:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B360710E3F4
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Dec 2022 16:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672330361; x=1703866361;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=GPHIMCRbzaAKKF3oHwxyYwSGijFcBvKLQhiCZHarh80=;
 b=FMtNrOt8cPcF8Z4oirwS7H6wDMm644Pxl7Kudd0dL7Yhe/W+wpexkdHs
 HcttZkmINx2a8E1c6bXSLeUrZEgpSM4II/2afx5ulvRi1W6dRW4r4+T3W
 8qBAIRNvX1CHes2QEebMFoHpaP9oS0+DYHqd65TaaBOuvWRMQcWteDWNJ
 vy51Gf3lSaBCDkb2Yl49LjaMtYMoRIaWHyqgHQcCPm+Y4nPP18umM6ksq
 k1giKwqTHuF/cPHWkAcKNtd3RIrLP16hC8BDXZgP4ATA/SXPaCA/PxxtX
 KTVO1kU3NbMmJVWcYf64iBQPxDLIoy89gHL9kt9uxOso0O/wFreFZaka0 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10575"; a="319782523"
X-IronPort-AV: E=Sophos;i="5.96,284,1665471600"; d="scan'208";a="319782523"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2022 08:12:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10575"; a="742329440"
X-IronPort-AV: E=Sophos;i="5.96,284,1665471600"; d="scan'208";a="742329440"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Dec 2022 08:12:41 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 29 Dec 2022 08:12:40 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 29 Dec 2022 08:12:40 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 29 Dec 2022 08:12:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M5aqHo/rohFXn25Ds/VQAoeAs/VF4bkQBRnpRfG2SmxytV0PJtlzF6olr7kF7shHHFh5yCPQxnkgm2x370tkRCDICLqoifDAncRQls4KOizwDUWVDTg7qKMgqxO7vFXjj2WRi+mn59XYgEBkEVmR2O2YTeXnUndslt4Zg64bSRAf3Nx+Hgj/pTMotObf9GtDPPkgwb1DmrKbvBZCsYH/S6cz6qUcegi7CmvAX/fZHYbJik62lPzHrPEyDrX53g3rUJrD46reCmvbnY9pRLTzMe5D0qPDKLU+IPM3c3L5oynnUi10+ci5AtDm8gDWUFF7CA8R1dbvrvcacYighsgc2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6DYqFDCesRPy+9XhQyGydHhVoGCUy44pO9XXNME8MSU=;
 b=UJmxVCINPFxifwhsrFtARLZvJ6ODSn0sWLnCkmqr/bf5T6RZFCPULEH8O4T8/u+wnOXN9Ed1+56CoRigW2Ob+GlXAPCwDfPnWE/e33DhaJ7lNWCuOO9nFoZpkPvoepUsAlOcj+s5XmQhD4IM7BdrXgTtG+7NGKsWPm2GB5VnWfjhs91kIC3LCP/akewfCzmJO3/pkTRxhK9tvYcf0z3WWX85SpgQQkOwWnybbZwpV0lLoAhuJdV+oNOk+tgrp1YisSmMNeVy4NQKPPjoRiy1+/0W1tErf9QgR/2KeAslJHtVUJKSDycJl/HsxJfDcPFtlqjJNJLt/ZJM6G2qg9gZbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH0PR11MB7544.namprd11.prod.outlook.com (2603:10b6:510:28d::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.14; Thu, 29 Dec
 2022 16:12:38 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%9]) with mapi id 15.20.5944.016; Thu, 29 Dec 2022
 16:12:38 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Thu, 29 Dec 2022 11:12:30 -0500
Message-ID: <20221229161230.1261938-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.38.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0107.namprd05.prod.outlook.com
 (2603:10b6:a03:334::22) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH0PR11MB7544:EE_
X-MS-Office365-Filtering-Correlation-Id: 23ba3073-8b7c-4e2a-8a29-08dae9b7814c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: p0WB3ftBpEIBqRLVLf+GcRsa85FK4II0QxvM3IkrXPoiOJAXf8LCR3YNOeEm6G0djbioVkHuqanFUokRyeuZTD+6INc/087gJ2bXLTJlmkJq4QDVW7TQgXipsHVRklhFt8p60hUI/jJU8P8cbsB886eDlDsnFCZNUkiasz5afAl0SSlwfAIwfwA1hFgQV2cKVTF1wDLa/YTDZCH7OV+TdhmXbbRuJJ7z1bYE0ptaKhKHSXZC1Xww0al19JJt1B5DKFCA5T1ahtoFzJiCvxk05J5WhhbcXuimztRTsxaFhpU3w+XbbCF0ycao2nLLSpEUpzRJ8PkYEsoRwxHvyFuSQIq7JnwtwCD+tDG2XGjJR3A88pH+Mgh+JK0cEUdvnHpJ17OH24uHGDGjBfZjtMYVtdT2ZQfBnLsTijLP7qSeHt98wX6d0orKuaQlqcPPFTjYBOY4XiR0gxEtqrd3FGMnX2THpiESALt7ampbqmx0EphlzbfrL42zPL2cSdIm7CzG6iXhSwZ6GulsvnXEqvRhn5ErztDnalyLM1/O00xD5l7ibtPb3lBPSXSCqO+qHCrm7Z7ogM+la2HUuHNPpV5lCtbozUJt5stN11ZHCS+H7G6Nc0giq8svFA8uXWiQLuTJOGdAOn1GIO9LQ0JqaUw+oA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(366004)(376002)(346002)(136003)(451199015)(82960400001)(38100700002)(83380400001)(66476007)(6916009)(86362001)(41300700001)(8676002)(4326008)(66556008)(66946007)(316002)(2906002)(8936002)(5660300002)(186003)(44832011)(1076003)(2616005)(6512007)(26005)(478600001)(6486002)(6506007)(107886003)(6666004)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Wf1BVpsXmr0I4U/SCFza+Yiw7ECekXvHYxtccojC6uQCiJqd1fAMffxdDwSh?=
 =?us-ascii?Q?Rk5hdDCZarueE2qiyGyCBX6NpSR1ErBARrlBUIb1S/tdc5RgvuOPPp3HHbAF?=
 =?us-ascii?Q?ftqVzXveUN+6PBfopiSvKaVPuDLttzDLwk+GUS6T1OTCf0jVKCLZCEOHmFGR?=
 =?us-ascii?Q?aKFvnJh9FGGHV/UYJ0NbfZl4mi9tGy95lu1bvt4tD89NxNfGuOlFnEECERqk?=
 =?us-ascii?Q?QdbvONAyi/yb1HU6btZ2QorIPLVViXmvKKbAi1plw7LPuD4F3ugkZ5U3TmUt?=
 =?us-ascii?Q?1TVTM9xWyyp+irW2P029VmXob8CaBPfEn+fU4shq/8kBeg9ZVUqLhFh3MsoM?=
 =?us-ascii?Q?b4d8KI3Ix3IGzpcHAvIA/f63SQmn7jClJVC0BaXMDdWFTzaOzSfIl8kF/EwH?=
 =?us-ascii?Q?1qPMprfxV5JDoW92IacabdoIyoEy/2SHa8nnrLx3sSopGMSdbweo2YaT6sSg?=
 =?us-ascii?Q?kmrY5wIxUHd6Nxs3Ur2kupy5t8H6hKyzmWJS0W9kW7REosPCn2VuAvMAWYv8?=
 =?us-ascii?Q?f2tvSsQrk2PYeJeJZ6880ChCFYKmoURlJEQOwq3kjx7oUdJk2Lyt1Mn0tGYn?=
 =?us-ascii?Q?HJeylQo547lJmng3xzoq7cNL2rXLwedGssIrUDGi4PGJ8Z5xhyNDLAQYHM4t?=
 =?us-ascii?Q?CfZhJk+JXKKAB1CGYCKJzW67FVUSBzkcYy/l334zzvAHYhC2KKDFDVP3xaV4?=
 =?us-ascii?Q?keMhGsmijMtcOxXLfd+hZ6VbRqvTD54Wo4+m0bHZC8Y7yjnfD7nsi9WHcQ4A?=
 =?us-ascii?Q?yQ9qw7WU7Ygy6HmuKW8BxZ1marVxRvrQve04pXRslBNQwhuS9tfimFeuLqbS?=
 =?us-ascii?Q?EwkvLYvGENIQ7OjNGt1VBFMrsp1W09wlKCRokjUSbDDG09VTg6unKildCJeH?=
 =?us-ascii?Q?Qi69gocw91mJfpNvY8Ca2BMNQOJmrS5hCh0G+ggb6zjPBS4jMohIRG0ZxuvL?=
 =?us-ascii?Q?zckIyyM6GT7+fdOyOL4hEBkbcDbabh0PqtgNNCZhbcBi57byn2KBfgRu4sZx?=
 =?us-ascii?Q?mUJEVITCFPbk2ePUwCHhxwlbBkb7bg3R5DXiMbKvHh2dbuxhp1Fd7MSxgKk2?=
 =?us-ascii?Q?6M6cj9LWrkeHcA7ror66pgN3M8Bn/rSxHB7xi/SAgIcq1k9ITfOesP3pxJIc?=
 =?us-ascii?Q?0ZY9JmoJ8Y7CQ+5Fn/gx0jo92qs7xsTgLSKmTLy7y9sEkPlA9P08Ww6xDiw9?=
 =?us-ascii?Q?+wCvL5eQmIW1PoQZAp6MQ1/2rGF68qkgMXUreirKBp44PXGMx/YCsZLH7WKE?=
 =?us-ascii?Q?+QQP16p7llJRC0M1ht+2hRwcstzUgFbX2MfOkJI/srrj+mkc5lJT8B9eFWhv?=
 =?us-ascii?Q?VM6us4MNVZu5nN44FPuKB8W+ForTITflH3KUOadUwN2IKgtOFMEZyEMDCtH1?=
 =?us-ascii?Q?rMLeTT5S8ST4ZFYDaSIEqg/BRhfEn9rR/oYo7CSWAfR4kWGgdZZlXSsM9RWW?=
 =?us-ascii?Q?dfc2TACAiq7+qPZkCIHmTWXaT5ToS/kWR5F1jhpPb4c6Xa92KEJFvt9/k3gM?=
 =?us-ascii?Q?LCsvBTx8sy1G68iapFdKEsIqLlE6qgyTT1h3EcZMCEbnxbrh+o0xnkLTl/T0?=
 =?us-ascii?Q?oayRNalxlR+F0fx/JP+kmBQFhR8IVE18gTcfSD4r?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 23ba3073-8b7c-4e2a-8a29-08dae9b7814c
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2022 16:12:38.7515 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uXv0r3u4KhYmgIhPy3XSsex3uAAVKZVzD4ebY+rKsi5Kv7vcDfkAKtpMhBxmhW5j0Pi/odyYk5epP708lDC4yw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7544
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH] drm/i915: Expand force_probe to block probe of
 devices as well.
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There are new cases where we want to block i915 probe, such
as when experimenting or developing the new Xe driver.

But also, with the new hibrid cards, users or developers might
want to use i915 only on integrated and fully block the probe
of the i915 for the discrete. Or vice versa.

Oh, and there are even older development and validation reasons,
like when you use some distro where the modprobe.blacklist is
not present.

But in any case, let's introduce a more granular control, but without
introducing yet another parameter, but using the existent force_probe
one.

Just by adding a ! in the begin of the id in the force_probe, like
in this case where we would block the probe for Alder Lake:

$ insmod i915.ko force_probe='!46a6'

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/Kconfig       | 13 ++++++++++---
 drivers/gpu/drm/i915/i915_params.c |  2 +-
 drivers/gpu/drm/i915/i915_pci.c    | 29 +++++++++++++++++++++++++----
 3 files changed, 36 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index 3efce05d7b57..8873cd0355b7 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -54,24 +54,31 @@ config DRM_I915
 	  If "M" is selected, the module will be called i915.
 
 config DRM_I915_FORCE_PROBE
-	string "Force probe driver for selected new Intel hardware"
+	string "Force probe i915 for selected Intel hardware IDs"
 	depends on DRM_I915
 	help
 	  This is the default value for the i915.force_probe module
 	  parameter. Using the module parameter overrides this option.
 
-	  Force probe the driver for new Intel graphics devices that are
+	  Force probe the i915 for Intel graphics devices that are
 	  recognized but not properly supported by this kernel version. It is
 	  recommended to upgrade to a kernel version with proper support as soon
 	  as it is available.
 
+	  It can also be used to block the probe of recognized and fully
+	  supported devices.
+
 	  Use "" to disable force probe. If in doubt, use this.
 
-	  Use "<pci-id>[,<pci-id>,...]" to force probe the driver for listed
+	  Use "<pci-id>[,<pci-id>,...]" to force probe the i915 for listed
 	  devices. For example, "4500" or "4500,4571".
 
 	  Use "*" to force probe the driver for all known devices.
 
+	  Use "!" right before the ID to block the probe of the device. For
+	  example, "4500,!4571" forces the probe of 4500 and blocks the probe of
+	  4571.
+
 config DRM_I915_CAPTURE_ERROR
 	bool "Enable capturing GPU state following a hang"
 	depends on DRM_I915
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 61578f2860cd..d634bd3f641a 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -122,7 +122,7 @@ i915_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
 	"Default: 0");
 
 i915_param_named_unsafe(force_probe, charp, 0400,
-	"Force probe the driver for specified devices. "
+	"Force probe options for specified supported devices. "
 	"See CONFIG_DRM_I915_FORCE_PROBE for details.");
 
 i915_param_named_unsafe(disable_power_well, int, 0400,
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 668e9da52584..fc1383f3a646 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1253,7 +1253,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
 }
 
 /* is device_id present in comma separated list of ids */
-static bool force_probe(u16 device_id, const char *devices)
+static bool device_id_in_list(u16 device_id, const char *devices, bool negative)
 {
 	char *s, *p, *tok;
 	bool ret;
@@ -1272,6 +1272,12 @@ static bool force_probe(u16 device_id, const char *devices)
 	for (p = s, ret = false; (tok = strsep(&p, ",")) != NULL; ) {
 		u16 val;
 
+		if (negative && tok[0] == '!')
+			tok++;
+		else if ((negative && tok[0] != '!') ||
+			 (!negative && tok[0] == '!'))
+			 continue;
+
 		if (kstrtou16(tok, 16, &val) == 0 && val == device_id) {
 			ret = true;
 			break;
@@ -1283,6 +1289,16 @@ static bool force_probe(u16 device_id, const char *devices)
 	return ret;
 }
 
+static bool id_forced(u16 device_id)
+{
+	return device_id_in_list(device_id, i915_modparams.force_probe, false);
+}
+
+static bool id_blocked(u16 device_id)
+{
+	return device_id_in_list(device_id, i915_modparams.force_probe, true);
+}
+
 bool i915_pci_resource_valid(struct pci_dev *pdev, int bar)
 {
 	if (!pci_resource_flags(pdev, bar))
@@ -1308,10 +1324,9 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		(struct intel_device_info *) ent->driver_data;
 	int err;
 
-	if (intel_info->require_force_probe &&
-	    !force_probe(pdev->device, i915_modparams.force_probe)) {
+	if (intel_info->require_force_probe && !id_forced(pdev->device)) {
 		dev_info(&pdev->dev,
-			 "Your graphics device %04x is not properly supported by the driver in this\n"
+			 "Your graphics device %04x is not properly supported by i915 in this\n"
 			 "kernel version. To force driver probe anyway, use i915.force_probe=%04x\n"
 			 "module parameter or CONFIG_DRM_I915_FORCE_PROBE=%04x configuration option,\n"
 			 "or (recommended) check for kernel updates.\n",
@@ -1319,6 +1334,12 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		return -ENODEV;
 	}
 
+	if (id_blocked(pdev->device)) {
+		dev_info(&pdev->dev, "I915 probe blocked for Device ID %04x.\n",
+			 pdev->device);
+		return -ENODEV;
+	}
+
 	/* Only bind to function 0 of the device. Early generations
 	 * used function 1 as a placeholder for multi-head. This causes
 	 * us confusion instead, especially on the systems where both
-- 
2.38.1

