Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA4665C7AF
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jan 2023 20:47:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4839D10E04F;
	Tue,  3 Jan 2023 19:47:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D52910E04F
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Jan 2023 19:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672775232; x=1704311232;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=aEhU/xGL4QORRhT6X0rHBMNSAkSOZC5Jg3tID3/4jGE=;
 b=EEBVr6LDq1S32Y6UD65MqmfdKovSy0jDO7kkrLGeD4l5t7GUOZRWDkA9
 mwWI2ppwFnDA3Qg9gw1HR7G2YiPS1UaIu8pauy/owank+L4QvQD4xYpKO
 qvu6yQ2LiOW6OG/iBsNRvKQFipCDcuasvPEc/6cDoXs0sGpPyVMGq+/9n
 lT0gfXNbZ8KlD3FH7pL1/9vpSlfIw79WbJJNyvJoDRQVxTMyCvCwj8z/B
 cow7GSwVmSvmwx9gvyFa6j9O2HzxU76xCwtkEqZfoxKChC35rvPiK3XQ9
 w+v98uqmoupY9c+ADWxmzfELaB58rJRQvcsV11d7xpPOORt5U1OdzXx+k w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="320455659"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="320455659"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 11:47:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="604936183"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="604936183"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 03 Jan 2023 11:47:11 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 11:47:10 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 11:47:10 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 3 Jan 2023 11:47:10 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 3 Jan 2023 11:47:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UaTvsSUnGI6WjQugdTRTsWDIuEZ/OJGf7Uhp1rDyZ7ATpxUloQC6IIjwJWhCF6ZQsc0YclTQcLZ1rZJdxTFnQRpPKE83KWSpkcsvPJ4BRCepAZvQd41CiZOuSXR01sBb3zpv7ob73xZj1ar9OV/mWepZH6Sk2Z8GH1qQchCYD1daolf7CSJ4AUl67xqBvxms2i78MERLISoUiO3wHMzHa1Eas4JRL+zW/Au6s0OlKdBiWK+EKM7IQ0F2gTLlT3qbtLwxymQjwGUjlTg1abPjJv5349PF5wUoKQLRvBa4kiieeRxWNGlH1eOTVn/XyI5a6yFPhNrN8KtrfHYDdw8AOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=twJY0gw+IPhRUDC4gKzJHrWNaxb0R8FA8rUqPMZFUr0=;
 b=DRTpizygRkAnKMbV9wDGWOdwIISlChWwnqiA0bmL7wu+pi4KobZ/Nuj46aakFAlGNqZouqMwnjdVxWM7/Bmq/qiCBixr2AcBV9HUzZ6lmk0S8jg/lJVtgP+jXqi08iUOdDoIRTqUEq7B71DnwfgpX53dPcB4vpMxB0Zbm5RJwiF7Z53iKRnX33O8I3WTpNdRtyUmX07q1Ns/Zjbb392ia/trzVBwmXtkU657cQoaricjERs4OQ3UPH8uQ1shiDJ/PVMwyIT4oHiZDfRb8P1pKTMp6Qxbq5KStYZauYHe/JSA5k9SGRWU+TjxhKbP2PclPWwEY5oe3uLCTolPiYR/8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BL1PR11MB5382.namprd11.prod.outlook.com (2603:10b6:208:31c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Tue, 3 Jan
 2023 19:47:07 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%8]) with mapi id 15.20.5944.019; Tue, 3 Jan 2023
 19:47:07 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Tue, 3 Jan 2023 14:47:01 -0500
Message-ID: <20230103194701.1492984-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <Y68bHEiFZJMZJ9Ot@intel.com>
References: <Y68bHEiFZJMZJ9Ot@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY5PR03CA0013.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::23) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BL1PR11MB5382:EE_
X-MS-Office365-Filtering-Correlation-Id: a8a8e179-cdb0-413a-3f39-08daedc34b8f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 45lG5uXWO5zvw5uDEn7vf4UPtVJ3hatvkWAzT06oWx+799kSX6itf0Usvsvuks9FgRgHpJ+NmRmuLj1wshG6uhC7a3XUDzNWnfCmufZ93Z05l7swGNT+6MitoGeDQf4AH6c/SkVXVjls07KYaPaBbsWnOa6zdyJl4bXejFi9OA5JA/0ry5URFN7ppvRxzWGDDqAXZkrWB/KbbGnqFoTLVIQDBxNWbX908QiF8YFTtotJwf06uaOo9XQU7z5PPieSNkfomPKy2eHkHsUp+v4vJ/W57n4OjBmXL4gww7oOfjgoekjq8ZKTccXzpu82/Fnro27XnVuhGWcdBW61ecqO809JyhULbvef1Z+x1X35HScrQQSgPOkLoXoGVAOylqxrYfDIBOdG9WOvL2tLfEBXZmp+MPdcsLrKsBp2JPtfyWmPR6vbXtnYNJvcyTrlHaPWBfuAH7JtGGI/10o38Lri+c67/Asla80G0EGujkNv3iRB1HwPCFwSxO32HMRv5YjfIBl4IQ7NfhtKxYmFyr3rscIYT8PSyUCimTxOjkmRaOcV+1KEo5bdEZCDkfCOqKoZ7J9trjW5SVIChQ2iU8z001mrVpoHcN+Jc9jAKlId9vo5t4a4mlXIB+OtKPQON7TEnTNGgg5jSnyHjbRmxMyfSoXqTJi/NL7zHBPj3i7cv5pnar+gNy81qZJAgPr9EUL5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(39860400002)(396003)(346002)(376002)(451199015)(5660300002)(41300700001)(316002)(4326008)(8936002)(66946007)(66476007)(8676002)(66556008)(54906003)(6916009)(2906002)(44832011)(6506007)(478600001)(6512007)(6486002)(186003)(26005)(6666004)(107886003)(1076003)(86362001)(2616005)(83380400001)(38100700002)(36756003)(82960400001)(22166006);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2oH7ChmA3ODipflWECypiyJ13/EcGbX/LXovbplzgpiRAZbJWJF2D9IlssTn?=
 =?us-ascii?Q?jH9tOC/LIjSCo0/K21OBPuxjSOkcOM6KjpQDvJXBs1F1AwH1zngI2OkQXAoH?=
 =?us-ascii?Q?KL3XqkSbviGGfgyO1Je7dlO/LYKK2xvSWeOM9s8WLLkz2Tt3saeh+Uab3FYo?=
 =?us-ascii?Q?7si0MYggpwwYVpglYmROdX78mQ7E1fICaZnecUUUez1YcetT6VGCqgdi0jUA?=
 =?us-ascii?Q?4KfzPkOoBlY44VCAnR+khw7Xt5QSF3IgM07BmE6Pp22cfORDPpcVMLOWSiUb?=
 =?us-ascii?Q?ZLM07/n7HNA8YTF5bppukGZpOhHlOtFpyvwknsCHQovfW7AIgaitzBCC2FQR?=
 =?us-ascii?Q?28svv3oaJJi6SvkDN90MVJaGTrRSUbcFzT7LDOwX9acdWswloTUuXnPkvjQv?=
 =?us-ascii?Q?nwDl60+6p9d7+TlZsqePMuyzdPeUC5Gs1cM08rCbxii+bajP1qt/hbBr4oG6?=
 =?us-ascii?Q?RecA6SbVOmstmxOtgHrVVKJnqz7IizXLTylePrLHuO48/ywbk05LaF5kGbJd?=
 =?us-ascii?Q?voreS5fQRoRV1X0DOYG9/Bd96ejcTAUmdJSGpACBb1eVRdonmyxfC/yR0L/q?=
 =?us-ascii?Q?UZBn02fAhjjSKNC5cJDRN8ZR5IxIwTLsBJql7l5izq3t2ihQqWpK5GXLoo1k?=
 =?us-ascii?Q?97Jd3+GDl8ftWNwo+eMbC3k/ItPPszgqRr6ggXAo6mnR+kcD2i8/zWjv9gLE?=
 =?us-ascii?Q?SeHOjX3dcT3xWYCJRc5B9IGB43In33TiWxB3n2eZ2WgFFereYuLPJWQeHJim?=
 =?us-ascii?Q?SPrX8BJPlcFhKEGZ/pJGWntXtkdyCaMcazHvUwT14vWM+3RVklYcmO/0fjQA?=
 =?us-ascii?Q?wu42wG7pGIy85uFLX33lX0s0TMpXcG3bZmuSJun/o0cptKiD6MgrqxxeWnPF?=
 =?us-ascii?Q?Hqv17q8FMW1DcUTn8RWEgTA5MSqsojDGfu+xfKsFprLysZeiCqa5bRe0bhgI?=
 =?us-ascii?Q?OFGv9eyCxP4jzZz6fiMqcqwkaH2EQ6gMcSucBFdvULLhNDrZ+SYfrxadVPVR?=
 =?us-ascii?Q?29/d8aAzKJHf8ge1itKkn9bU59Mov6sBHnhNeVffqQEVvochfOeHrm9twQAD?=
 =?us-ascii?Q?T7y5w93rU8h6w4ziAeoR561aZoLK8Gjl9Hs/W33oM75cwnZ9fdN6VWnlgd2k?=
 =?us-ascii?Q?/3rgtMncKTk/QfZnhWv9ckR/jZhqtXaS1ten5s6GoxcQhjFifV8EYB2rLzP7?=
 =?us-ascii?Q?98bjdo1aQIuO+I1bA5/v2C1gZyRPe/fAWskmarLeD9b9Sy90l/qRAHEg9Jsl?=
 =?us-ascii?Q?9WIYqLv5bpSZpc8gpJLNhLntAht08y7pVhaZvzN/hrWVRhx6ljQ+PAWGj/p2?=
 =?us-ascii?Q?qG5HUQqx6UnDLA6XmLG/JkwjR9t6O0imfbvhbjhV0EHEoXiSrq7eNlwlkokY?=
 =?us-ascii?Q?Q7ec5e5UOP1ux7iFLb1iK7QepgMm3MSDUtuFeY2b35pKeJTRLXAWN4MTU/q/?=
 =?us-ascii?Q?Gn8p7ly8h2eVFlRolQ/Re6Wj0Dp+Dxv+u4Mi2nncfE3ZPOmggtDBE/UBQX/7?=
 =?us-ascii?Q?+HIJRXgo4QEN72WyXRul2kiQA7FZ50KNwn/PEZ7qR7foYcVyU6u7BKQ57/WK?=
 =?us-ascii?Q?f8qrwx6+UeD8LNociNW1x9QgUGjfNs3ayctCA0uU?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a8a8e179-cdb0-413a-3f39-08daedc34b8f
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2023 19:47:07.0476 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CLKSoOlswV4ObCdNeRzs+Fi95ZIdh86RNih3KBGWYhQ7Ez/ct60obn67lryr6JbHDqCYIZNIY9sm8ur6jcO4hA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5382
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
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
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

v2: Take care of '*' and  '!*' cases as pointed out by
    Gustavo and Jani.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/Kconfig       | 15 +++++++++++---
 drivers/gpu/drm/i915/i915_params.c |  2 +-
 drivers/gpu/drm/i915/i915_pci.c    | 33 +++++++++++++++++++++++++-----
 3 files changed, 41 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index 3efce05d7b57..8eb3e60aeec9 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -54,24 +54,33 @@ config DRM_I915
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
+	  Use "!*" to block the probe of the driver for all known devices.
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
index 7fd74cc28c0a..bc1af7e8f398 100644
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
@@ -1262,7 +1262,9 @@ static bool force_probe(u16 device_id, const char *devices)
 		return false;
 
 	/* match everything */
-	if (strcmp(devices, "*") == 0)
+	if (negative && strcmp(devices, "!*") == 0)
+		return true;
+	if (!negative && strcmp(devices, "*") == 0)
 		return true;
 
 	s = kstrdup(devices, GFP_KERNEL);
@@ -1272,6 +1274,12 @@ static bool force_probe(u16 device_id, const char *devices)
 	for (p = s, ret = false; (tok = strsep(&p, ",")) != NULL; ) {
 		u16 val;
 
+		if (negative && tok[0] == '!')
+			tok++;
+		else if ((negative && tok[0] != '!') ||
+			 (!negative && tok[0] == '!'))
+			continue;
+
 		if (kstrtou16(tok, 16, &val) == 0 && val == device_id) {
 			ret = true;
 			break;
@@ -1283,6 +1291,16 @@ static bool force_probe(u16 device_id, const char *devices)
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
@@ -1308,10 +1326,9 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
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
@@ -1319,6 +1336,12 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
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

