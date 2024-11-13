Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 538259C7E62
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2024 23:50:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7945D10E046;
	Wed, 13 Nov 2024 22:50:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CzUAzATZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0260F10E046;
 Wed, 13 Nov 2024 22:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731538226; x=1763074226;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=TKIZMHwfP8ShhoygPX3Xat7sWtJ3E5laCBtZDt8kXk4=;
 b=CzUAzATZL+7PWegvi95FazZs7ePDwvSmwF6HUer2AND9GH/nTmACjtrN
 deEWOOauEVdcUavOmGItY3lTbdoY3VzUPk24eAZnZpNyDt+gJDbepiLQG
 40VwKv/CNGoR/UbRIl2gl1UypRhzzgN+/LjqNhkTU51bkGzEqJ18fbUr/
 Au04j39hh5wwdzgfKXHEAzE77IenGaAGnqJqkQ04eCenJi/VfcTdtwss8
 WSFGVA4kVXly5JOMgivz1CnzMqvKXfLQuf1W9EvkR6+2Pp++58Jzkic/v
 BhSO22Ft2mNcE2gBOtduHdCkeWlb5hyLhjFLGaa/XFq/g0FQSHa9oxZyf Q==;
X-CSE-ConnectionGUID: pyH/xLhkScWomkT0Ehxt/w==
X-CSE-MsgGUID: EP3P/G5jRs+tUEgMg2paBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11255"; a="31694849"
X-IronPort-AV: E=Sophos;i="6.12,152,1728975600"; d="scan'208";a="31694849"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 14:50:26 -0800
X-CSE-ConnectionGUID: HaEYYoJVQdKURXJ0TIXQxw==
X-CSE-MsgGUID: QTHF2P6qQwWlbVqSq4PA+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,152,1728975600"; d="scan'208";a="88429012"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Nov 2024 14:50:26 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 13 Nov 2024 14:50:25 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 13 Nov 2024 14:50:25 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 13 Nov 2024 14:50:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gfVelXyDpO1IGU9LAxhfkHlwuW67f05YCDlgh+43xfkk6nzp9LU4kkgH3oGkApo2JJOQpXa6T2XxuWRA9rnGGrdn8zBB/wbz19oeWL5jUGHhs+QVzpchbFibUTtQZqsNYqPz5XmSFoSe3yIr1fxXQ2Dry0XI+heLvHg3Y945r8e9l1vuKJJEVozbRgDUFhRSFh9WJ+gSVYGcaiQNUYRqQyEaQEmuOWA8gs7sp/72LabnELGZmUf1KJ4HRh14mjpO//crozBghsr96m/jtzC8o1fbw6PpF4z954CvoMwgxwMoHPscMjM+1i8/EkXYXt8/1xbQorL4idjb98OF0I67tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EM+AtRF3GdpkreO2tTXRkm7pOryVewm4RXv6YCmvFe8=;
 b=XjYeg6Wd5ZaCIQfKTJlqKCET6cn7DNagCjdymL60v4sXUYZ7iqOLWrPUjHzBd8GiSTbqaoiLYgdjBxFXCmsAPpZz9K5noiAYJ3n5b+feG2mrUOtJ5d77GHq/6anl5+fjOgduD6wo6bmzAu3HcgQ6rENRRm7Q4gIAdmeqW3UNmVCYWPatZs5wUM69/i1rMDy6WPpP7I3j+SdjunrsI5sYM+y2ToVpoD9AeJ/+3iXTkfO5J0JdIOg2FfMMOesReG0+k84naUMThnxyhQ9pl8AEQ0cU/yufoO20Zd3MoxvrdeA0ChrXwi68IwnGxr5ThkRDqH32jeIcdlOoQkVG5q82xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH0PR11MB5030.namprd11.prod.outlook.com (2603:10b6:510:41::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.17; Wed, 13 Nov
 2024 22:50:22 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Wed, 13 Nov 2024
 22:50:22 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jani Nikula
 <jani.nikula@intel.com>, Jonathan Cavitt <jonathan.cavitt@intel.com>
Subject: [CI 1/7] drm/i915: Remove vga and gmbus seq out of
 i915_restore_display
Date: Wed, 13 Nov 2024 17:50:10 -0500
Message-ID: <20241113225016.208673-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW2PR16CA0033.namprd16.prod.outlook.com (2603:10b6:907::46)
 To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH0PR11MB5030:EE_
X-MS-Office365-Filtering-Correlation-Id: d3a3f763-043b-4a87-f99a-08dd04358e04
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?yT1PyRE6KNQjlxVtoIzUReeLd2XNbsOPicSU7MES8ySuZs0qR/N0g41budBZ?=
 =?us-ascii?Q?q3UYcRssokUoLM+3tS4Hxiao+4aG6QIoY2P5j+YnNaHwE01TG07yY8exivs5?=
 =?us-ascii?Q?mdV8SI0hjZT4AHhPuENKuAEk2yoUgbhUPEH5OL7IaAIT4XhNvzKYkSenxqfm?=
 =?us-ascii?Q?FdXaMUkpRMMHGSrtezKEL3Tmt/cmuRk1ZY/qPyUQunOSFxFBn8EUUZf9Z8Mu?=
 =?us-ascii?Q?A8iINnoil28vnxhHp2KDeFBNDquTT1V/JI+UkXy0xrTpKoCLaIfUPw9B3dps?=
 =?us-ascii?Q?abgFiKI6vUvmw0GojGP8un8BcWuwpYyUMPQ9dMBJZ4M6YEQZBAYTwyU7gNuh?=
 =?us-ascii?Q?BSczQPeBTPrREwBDWo0yFikyi+go9t/hHjXjkzmrmJ9iEP+ZoZOwBMzOrADb?=
 =?us-ascii?Q?ZOEZSTwv/g5yx8aGc/DUaccI8mijd3EW+4cSM54GtiQ2cEofDhuGKsLEjnTP?=
 =?us-ascii?Q?/eCoxCrxHfDv/KMtNI3vCKiNETSubuUTIyCT0kpKQ3A06Tyb9yrXQQ5FF69T?=
 =?us-ascii?Q?O60dB7L6c9x3K+JyM/QGXgmOI/yxkSSUoQJTw17/uc0WPoJg9ZVSjaFdRrJY?=
 =?us-ascii?Q?GXYHpO2tXwr9A2Tcjb4kAfFWSlXo3n03BK/UfHpqh0NapnoR9PUmCFg1B0IA?=
 =?us-ascii?Q?m48exnfb/CLMILNzsaBudYxROLQMI4oBSL0yjz8sPlo6foFyMILZPr8/+7jn?=
 =?us-ascii?Q?pwHs5eiz1flayHHELp4p/+h+RA2HJUS1GQakWWMhuOA92XoMJE8+tZRz//5k?=
 =?us-ascii?Q?iZwQowbXV4f9UBJ09VPmlqYoaflcKxsxaLhXdmzbLpdrFFGRjsxYhIWwlHNO?=
 =?us-ascii?Q?HG886Nl9A2HW/aJpbV0mHW1grRyeAPbm1R+n9pfqGSB7mqiXtHwzeDsZc0pq?=
 =?us-ascii?Q?pXAHzYXxW6IAK5I4M6c56eVfta4S0qfO4t7HWJFtD/opnXlVsgF7xGy30BSx?=
 =?us-ascii?Q?lMtTOsG1hTC8CHF6irbcnZFmuImSj+Y47WzIttzxbUjzDqvjT7qomAe3nVqY?=
 =?us-ascii?Q?i3wFwhXSXOxSkOypdR01EIPYSgVszeVpYYF2tjAtiqutk96yPQBuX2DIrLGl?=
 =?us-ascii?Q?SrK2wbgadk7MALWJXhjFmPxjCP76JAcuc30HrRuzT+0G76Py+Vroq7h9IOWx?=
 =?us-ascii?Q?s4Tygi0avD4x1VbRRF3pgtfuydUbASmGjkRNqD3w3jGTTbvAH4MngQcXp/5C?=
 =?us-ascii?Q?T5TEUCtBiZUNN7E+uyaZpzhE0HvDpGt0STRtgnWMu4wtw//iexrUxhIpShrC?=
 =?us-ascii?Q?IVf82U+K3a3LuLueJYGBT1H0eGHcAtey6TrFSgWClql6BKX+6hUSDUkGFdRT?=
 =?us-ascii?Q?Fn9aYgWjmn8Pai1AmmSYttAK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GcC64+IIbFCMO0tM+s6U5ErMq384Ia9VAFiqGYCutOOuPD4GJqfWDzz1cD+F?=
 =?us-ascii?Q?A7z5giYz7XC9Ex+8I5tUkdhOwgotf0U4FLeN+BuyxQpD6T8HfXkaSJWkT4+S?=
 =?us-ascii?Q?eV8JmrdRSvD1rTX1LqGDFTZTAY3BEg1GVAEbXZNNm0O5kans37YzvbFxQc+h?=
 =?us-ascii?Q?HtTZHlo/vAf60U898MRCrPufauely0c6VXkoAMrIPvoxabrWjx70zn85H7dV?=
 =?us-ascii?Q?c4+xVaBwI8JZicCv8l6K6bUxJetN6N75cX7DVpJLCgUrfnuhaJNtJdkZyhgu?=
 =?us-ascii?Q?4NiseAzvyrqhJ9omxKpFxwM6YdcboY7zS70qmU5ZUSGRrOdpFkGZR7B4DaII?=
 =?us-ascii?Q?C/Aoii+3vs/gUUdkPSIQmvtK1wXC/AQfLaHTe4H5TiJpQAcnDlhE46YXzvy7?=
 =?us-ascii?Q?rfSADtyevWYp2dA0RrBpU9rLDPDo2GGm1wMLvNupe4k1fJk4/VP+hAmsKcaJ?=
 =?us-ascii?Q?m9s7CmP95CnVCVxMh+Tnoje1O06H5YZtQXy0dXmCBMbD3akT58uKTpNdmJG1?=
 =?us-ascii?Q?e7G7oJwM2IkP41II1do5XTegTVds94iP9JomoPcS7K+OvKbk7xJHUFTWJ+em?=
 =?us-ascii?Q?vF/MmA6DFdGq4BlRTfXKb/clzDGWtfFn/77LUk4+pAOww2GHBtS8AkTVQ2d7?=
 =?us-ascii?Q?q6iRuqKfd+nmvi1/IoX29UxJBcoseRtF5fTxuaPZy9OQ86ofHiXZiMeZjIs1?=
 =?us-ascii?Q?1E3co08L8Z4bk0pfxJEr9vmH2FNhtQ3s3DZKIAe3v61AlIAe569fzvTfsb7y?=
 =?us-ascii?Q?3+hwxA7Zs+Zl10mMWuFR+8sBX7JeZgSzbZw2VFlMfD4vsyhbpO1rErHoNgaX?=
 =?us-ascii?Q?swB8QFgdEqNTTDw0eZhs4Tc7PSJn9T/aa0xpOwFzbkGJpfg5FOMLdRtC9pqx?=
 =?us-ascii?Q?g6+K0FM/giaNe0MNDBLGeGgXS3tudu3vfmzr/1eqE5oU1eEvKSYRxhpsFzyK?=
 =?us-ascii?Q?7111IMPEsfkLgSU/RMPVkpwHkBaEGRI+k4xsozCK+ouLUbTw5oBWvlnTNx4a?=
 =?us-ascii?Q?K0FsQmF9q2xHM97bg1ziMeT2wmE+48/HGHSGGs4FIo76yM9xkRqu01GpdqXY?=
 =?us-ascii?Q?vA7g1+n235eAeaXTbnYNqO+tWwpYfIYLcF0TKUDggt/iv4xcURvBqF9oI7fV?=
 =?us-ascii?Q?Hx7r4tPIKRul5A8v0Z+uHbQxz5Vqx5CW/4cE6r0a/wnJY8JVg6OtJSxT0Fu7?=
 =?us-ascii?Q?8G5hRNNruaBktQQpG6Yn1RDXNBwSjekATxseoTbI65neRKSsRjhIOE3Tpr2o?=
 =?us-ascii?Q?7BKZ2D0PvcEY5QFf8/BlBHAsCR/wndnwUALybUdNnJFV+QLyhTh1zO5xeiWZ?=
 =?us-ascii?Q?OTPt2JK0JzVmsMpU5NkchlRkU5MUYf4BgcQDTfOn6kORLpRC8hquiSeAvJma?=
 =?us-ascii?Q?85TfeK1WZOyWfiwHyjkzxyBlo8z+KrK2nshuR0OOEuol8gI8pufMA53DdTM+?=
 =?us-ascii?Q?TtaKkr+RI/g/pzFX5DF089OxODnXYcUzlpD7aBYhhBs2SZcZ0JXowAM2yJkV?=
 =?us-ascii?Q?nJVP54c4cmi9kB2BrVhexmnyB/IoKHosWiDj00YWYDafqfxPrAJYhr5AsjuL?=
 =?us-ascii?Q?dqMQjNPUhzTJFs0QbtzBj1Iy95B2O4IZN8zfGunN+sKQG5x+OwhSm5aMDOe9?=
 =?us-ascii?Q?wA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d3a3f763-043b-4a87-f99a-08dd04358e04
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2024 22:50:22.2619 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1D0T+mnJblTQMP05ZbYtDKkE4EHTHdmKB4Xoy+qmH28u1A3GfCNsJ4T1Y8HQ6Aykp+bpi748M3iDtuXkuG38Xw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5030
X-OriginatorOrg: intel.com
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

Restrict this function to only save and restore registers
functionality. Then, that can be moved out later to under
display with a proper name.

Cc: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c  | 6 ++++++
 drivers/gpu/drm/i915/i915_suspend.c | 6 ------
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 269233756e58..420b54b61569 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -60,6 +60,7 @@
 #include "display/intel_pch_refclk.h"
 #include "display/intel_pps.h"
 #include "display/intel_sprite_uapi.h"
+#include "display/intel_vga.h"
 #include "display/skl_watermark.h"
 
 #include "gem/i915_gem_context.h"
@@ -1171,6 +1172,11 @@ static int i915_drm_resume(struct drm_device *dev)
 	intel_dmc_resume(display);
 
 	i915_restore_display(dev_priv);
+
+	intel_vga_redisable(display);
+
+	intel_gmbus_reset(display);
+
 	intel_pps_unlock_regs_wa(display);
 
 	intel_init_pch_refclk(dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
index f18f1acf2158..fb67b05cd864 100644
--- a/drivers/gpu/drm/i915/i915_suspend.c
+++ b/drivers/gpu/drm/i915/i915_suspend.c
@@ -26,7 +26,6 @@
 
 #include "display/intel_de.h"
 #include "display/intel_gmbus.h"
-#include "display/intel_vga.h"
 
 #include "i915_drv.h"
 #include "i915_reg.h"
@@ -118,7 +117,6 @@ void i915_save_display(struct drm_i915_private *dev_priv)
 
 void i915_restore_display(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 
 	if (!HAS_DISPLAY(dev_priv))
@@ -134,8 +132,4 @@ void i915_restore_display(struct drm_i915_private *dev_priv)
 	if (GRAPHICS_VER(dev_priv) <= 4)
 		intel_de_write(dev_priv, DSPARB(dev_priv),
 			       dev_priv->regfile.saveDSPARB);
-
-	intel_vga_redisable(display);
-
-	intel_gmbus_reset(display);
 }
-- 
2.47.0

