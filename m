Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5FE6B0F7E
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 17:59:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8235C10E6BA;
	Wed,  8 Mar 2023 16:59:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D98210E6BA
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 16:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678294764; x=1709830764;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=/IO/FeOtvUjTI0gpLYOAuOzDIJddKK9OT8oakK6fRH4=;
 b=jwhnW5XewiUS5tLDa4VgOs8blOMGcV2HVhF+ezIolvb7LCxpT4Ku5VKS
 kJHL27oU9Di/j/bP7OfyuZgycEJT8fcRnTz4kAxDqkY7MZFCisCJA8lPV
 o3OIdr0xtDt6T4Ulo1YuVMmJdKhZk/0F0TtInw/Qv22MrsW3PPUewodBw
 RzVgfiJk071+qabifcMsrX1bP8MOlIn1gbogJAuOV51IACPuSttRZ1M/5
 7ZK6FXwmaXoQjRjdenrG7L5iS/DHRSnKIZ4yKD3sBvyOa4FjxK/pLxxVi
 RDQBgaizQhJ0WR9myEUpiYCkBu7vG2zpETYTiYTcLWmSPrsVEF+/ja+eq Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="363847383"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="363847383"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 08:59:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="922855319"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="922855319"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 08 Mar 2023 08:59:12 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 08:59:11 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 8 Mar 2023 08:59:11 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 8 Mar 2023 08:59:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fN2X7zkFS4WRYAuROmYRMWgpRU2Bmt6lOx57o19ZRFGW3CnSUXEW5LvB3HlIDSOQKNP8sOl/PmDdkOjCeMWu0okgs7zYIcKYbAnPieEujgSwntNjTTKMoy2m0dqOmztHEqOjAmWWVtfd519E4LsYV1k1/t2rCpfJCTaJoCC5H/TnvpGc/3xh6ShAjFOhWARO+/Xgz1R4qndmYub8sb0SWK++rpmir588DU+gPQvb36gbCVHBLoZWMcPxNxoR29upB2rpSZhV1juRWEljrwN2DTA6DDittKNGgs3qJp853NVeZZ2KSJKoeEJtWC4pTVm2CfRFc1Vv5+3VRIqmBDdjGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NZaEZIae8jOwxbjLiNYI/sL63/4iOgfkfT2nqRwUQh8=;
 b=DwjAfl3cE51NMqoxeHy+oS4rFzRtLGC+UBjFENFAF7Our07rm+xntk8h4I9E2k4eZm06OzUOFJ+zxMjPb0GmLX6O8HhADIqOQ6jBXQ1oNyjAHn1L3fGd6yhEhJrRzFsAZxrKXdVn3/KgtGV4CerkfVvNDPx45nxBguweGVhOUYisPqZvvjBkIEGxKykn2kMuHzI0Ij4LPJcjkFr745+nNrfMpB8kRp9DYfDaeqr+qXBDafwDN/9i3LxMZaw49qVlQufXwvURBTTyg3tsTL3PjAEceW+0iEtOpFQI0Bv0w0glyhmt1edsICG7KwZ2zhJIqTDySDvvSlfZR5gr2qApuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB8184.namprd11.prod.outlook.com (2603:10b6:8:160::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.27; Wed, 8 Mar
 2023 16:59:09 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6156.029; Wed, 8 Mar 2023
 16:59:08 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Wed, 8 Mar 2023 11:58:59 -0500
Message-ID: <20230308165859.235520-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230308165859.235520-1-rodrigo.vivi@intel.com>
References: <20230308165859.235520-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0010.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::15) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB8184:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e93e900-278b-4c8e-4fc5-08db1ff66e8e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eloBAbFeG3KaZAHRfuW3FrWM6/XpPvbfIytCsfSAnBTyS8RvnuKQHl0E/ZI1NXu3ujVebW3qowuWJrGyklqzfm980N7/6CXqRNvLl4eaqXsH0MbbSkBPpZkOn3VHIMYhGgQ8ILcQDMGFhpnDCSC74G5CXQWdwKErDxBpT8X3/O7kQcoy13wYufaFERb968X6oliElg55x0Hxh2KUCwY4QGpfBreUtBBJAwHBQG/dsSTz9PBwrF0Qel4f7GYJntpK0HFInX2AEFkJsfxB/pcwJ0sK6tHWItGL6jrlUEnV0tQuaGExRhI/kB6+ZUAJrjGp9gpbfSYYt1knNe/ffmmH1JGgZhydEU4mc4FTsNezcLRJNmwqV6idDUeDq8Hw20UpCwZ6POK5jDZouJXFbvKr7oZBxn7sgUexB+Tfg2f6IUEvXbqHPSIW10SVi1JuOa8qG8pg/PsW6V35yY7JRjxJ25Yh8QB5GiQ5iBg7M7UOTV3yldS8x31m8Rf9bAJgXbLvhE4ejgZucidtVUWLpnqvBnyKwRnj/NQJzYItLMZ8noTVEjWJr/n3SWGUl71o+TLKMgyjiarXGt+lf6I3BDe3Pfp6oVC6rw/PO9n56fGsJdo0XOUoeq+4utI39tOYndwVzLRor+2kyqSZxHG3NEaAZw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(346002)(376002)(136003)(366004)(396003)(451199018)(44832011)(54906003)(36756003)(6486002)(316002)(86362001)(83380400001)(5660300002)(186003)(66946007)(41300700001)(6916009)(66556008)(8936002)(4326008)(8676002)(66476007)(26005)(1076003)(6666004)(6512007)(6506007)(2616005)(107886003)(30864003)(2906002)(478600001)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fqPsmLzNPqHTNNsdpspyurYUDWVi89HY+/+4sS+hDycQUuKZcRawNlZlTgxz?=
 =?us-ascii?Q?Kf5ah80dBgcusooXLcy5p/BWlvRjBfOu0zlAcGFWvWiNPo0iL0cEDKE6Za2r?=
 =?us-ascii?Q?CT+OUzz4y3LMn285XYRiJiXNdjq0koS2fnxXFusGxwHQ193VVkZm9+8NQGNV?=
 =?us-ascii?Q?Xqo2ysxmqwZRQr27qaEU8Dpd2MCcEN4BKmYGaWhwujQQVTL7dI8MuVM4JtNP?=
 =?us-ascii?Q?RuYNj3REpVuWU8j7JbAH5u/L1pz+gHVZraXT6vbRbrjE98hEM6vfaNTHXeri?=
 =?us-ascii?Q?a7dVaWbMuFPlA4P58l8qMLG55DFAti3YNZXu5IPYTHpxOfHRqmrrILjhF08X?=
 =?us-ascii?Q?AWZ/rDThhSnbD4sR6I2uPvx1zZ3nPwtfGr54ltCSQB24/Tbn3cT5I5+CkBh2?=
 =?us-ascii?Q?J5rOPQfJLhKYVKtDgEvnoHIGGhMAG/PhFLcO9I9IX9lpQOCLy8o5VP783Ubq?=
 =?us-ascii?Q?pmBGfE3NmxaTnz/ODX9NEKOma1PHHKyicjXgjm+C0vGcSxZ0CC8TMFnPqfQb?=
 =?us-ascii?Q?yGVXyq1bcO7rkg71yQl1W1QKasiVCdNCl8lx9pa7ldnvcK3D55nBee166jvA?=
 =?us-ascii?Q?D2h9gpKJryBq1CjuQOt+L9ZIO8g75QXfknWcCSo0C8WHptUQ81UkSxIqLWdm?=
 =?us-ascii?Q?zyJ3whTyvdD0iuL82TVwYA0VS0htyrfLeulH8Ml4BLOH9MzBzXqe0i7+NZBv?=
 =?us-ascii?Q?H/ooRu1zrS7K151I9Avman8Q8M26ar4YaFbOv0jOPa6SbSCYjdjArlKW1zb9?=
 =?us-ascii?Q?8GVX+Pcqp6J1Z6GktQMmSMP/3su9cpVSjE/kR6BM1WxEWDNQG9WRDqd5FcSs?=
 =?us-ascii?Q?GkSazdMDhpZprtAIGCRqp/JwMbyv25suRehbJHqSOepPFeozDDNqpVAmOkfr?=
 =?us-ascii?Q?zZ4EPINxPHSYYxJX46J5LUXK1wEiqQLBouaHPZ2heOPaBm07yE665Y+Ku0vx?=
 =?us-ascii?Q?c17S5wzus5+gjl4x1+l8vLyQOWAtEImscgmUnRy1lI13ZJacNqeYRcjodsEe?=
 =?us-ascii?Q?YSKZNlXpAKIFZVmoKWMde8hHMF2HtP1h/Vq4z5JGrtuKpxe/+BI1+6xJc99A?=
 =?us-ascii?Q?XBP34YcAXBNFhOw5DeVSQVDCBGL/+pEKjgy4oewo3dDrSCUwFlLNgOnw9Nn6?=
 =?us-ascii?Q?PSxOytz8FdQ2ruUhn9wXRh52RbvkiPFvHh+Zk2LDimhQHNg1uKGylyTUOGPQ?=
 =?us-ascii?Q?fwXBlvWkGejn+uqIrQUB8UDPEB3481BBQraklncZDUNlyv/ifaGVU2ky5muh?=
 =?us-ascii?Q?uvIZ76SFfpGC6i21142koISbf07ZodkUsYJI7kjVW2PujvyMDcjhzboj/pEr?=
 =?us-ascii?Q?mRB7265LlG43XsyuwOuiNLuS1CtIXslbLBkAQNWQwtbyoh1THMmnFanRyhk1?=
 =?us-ascii?Q?S6RU0GHGBODLDFM3KaDtVicxxddubW19FlFocCQCb1PBoZ1gSnEJMJa8qTrT?=
 =?us-ascii?Q?2MZbkZ9hKoV1x/0/AuTS01AIrG7TQBZYrPsqtjJXxjdZIYhUIBoQIcro83uH?=
 =?us-ascii?Q?pbO40q7AIYd4DZb7ayjNIIxqhXj/yMpwrhJeZcABvpZFL2wL/r9hGpTFK14A?=
 =?us-ascii?Q?COJCA80a1Fzsy0GbaMD5iPHXwHS+J85SLzp98Nca2YStF6gfn8SG/Cefyqd7?=
 =?us-ascii?Q?pw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e93e900-278b-4c8e-4fc5-08db1ff66e8e
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2023 16:59:08.8117 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +WN55BHt1Qe02GPe8IHjtiM2mJxhmZit9CorUa+zqK1Of5JOfernm08rlYDdfi2Tf7yAZOthUZVcjEhTklgeIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8184
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/i9xx_wm: Prefer intel_de functions
 over intel_uncore.
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

Let's get rid of the intel_uncore calls on display side.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c  | 238 ++++++++++++------------
 drivers/gpu/drm/i915/display/intel_de.h |  12 ++
 2 files changed, 131 insertions(+), 119 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 8fe0b5c63d3a..28a9a920a2bc 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -6,6 +6,7 @@
 #include "i915_drv.h"
 #include "i9xx_wm.h"
 #include "intel_atomic.h"
+#include "intel_de.h"
 #include "intel_display.h"
 #include "intel_display_trace.h"
 #include "intel_mchbar_regs.h"
@@ -141,39 +142,39 @@ static bool _intel_set_memory_cxsr(struct drm_i915_private *dev_priv, bool enabl
 	u32 val;
 
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-		was_enabled = intel_uncore_read(&dev_priv->uncore, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
-		intel_uncore_write(&dev_priv->uncore, FW_BLC_SELF_VLV, enable ? FW_CSPWRDWNEN : 0);
-		intel_uncore_posting_read(&dev_priv->uncore, FW_BLC_SELF_VLV);
+		was_enabled = intel_de_read(dev_priv, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
+		intel_de_write(dev_priv, FW_BLC_SELF_VLV, enable ? FW_CSPWRDWNEN : 0);
+		intel_de_posting_read(dev_priv, FW_BLC_SELF_VLV);
 	} else if (IS_G4X(dev_priv) || IS_I965GM(dev_priv)) {
-		was_enabled = intel_uncore_read(&dev_priv->uncore, FW_BLC_SELF) & FW_BLC_SELF_EN;
-		intel_uncore_write(&dev_priv->uncore, FW_BLC_SELF, enable ? FW_BLC_SELF_EN : 0);
-		intel_uncore_posting_read(&dev_priv->uncore, FW_BLC_SELF);
+		was_enabled = intel_de_read(dev_priv, FW_BLC_SELF) & FW_BLC_SELF_EN;
+		intel_de_write(dev_priv, FW_BLC_SELF, enable ? FW_BLC_SELF_EN : 0);
+		intel_de_posting_read(dev_priv, FW_BLC_SELF);
 	} else if (IS_PINEVIEW(dev_priv)) {
-		val = intel_uncore_read(&dev_priv->uncore, DSPFW3);
+		val = intel_de_read(dev_priv, DSPFW3);
 		was_enabled = val & PINEVIEW_SELF_REFRESH_EN;
 		if (enable)
 			val |= PINEVIEW_SELF_REFRESH_EN;
 		else
 			val &= ~PINEVIEW_SELF_REFRESH_EN;
-		intel_uncore_write(&dev_priv->uncore, DSPFW3, val);
-		intel_uncore_posting_read(&dev_priv->uncore, DSPFW3);
+		intel_de_write(dev_priv, DSPFW3, val);
+		intel_de_posting_read(dev_priv, DSPFW3);
 	} else if (IS_I945G(dev_priv) || IS_I945GM(dev_priv)) {
-		was_enabled = intel_uncore_read(&dev_priv->uncore, FW_BLC_SELF) & FW_BLC_SELF_EN;
+		was_enabled = intel_de_read(dev_priv, FW_BLC_SELF) & FW_BLC_SELF_EN;
 		val = enable ? _MASKED_BIT_ENABLE(FW_BLC_SELF_EN) :
 			       _MASKED_BIT_DISABLE(FW_BLC_SELF_EN);
-		intel_uncore_write(&dev_priv->uncore, FW_BLC_SELF, val);
-		intel_uncore_posting_read(&dev_priv->uncore, FW_BLC_SELF);
+		intel_de_write(dev_priv, FW_BLC_SELF, val);
+		intel_de_posting_read(dev_priv, FW_BLC_SELF);
 	} else if (IS_I915GM(dev_priv)) {
 		/*
 		 * FIXME can't find a bit like this for 915G, and
 		 * yet it does have the related watermark in
 		 * FW_BLC_SELF. What's going on?
 		 */
-		was_enabled = intel_uncore_read(&dev_priv->uncore, INSTPM) & INSTPM_SELF_EN;
+		was_enabled = intel_de_read(dev_priv, INSTPM) & INSTPM_SELF_EN;
 		val = enable ? _MASKED_BIT_ENABLE(INSTPM_SELF_EN) :
 			       _MASKED_BIT_DISABLE(INSTPM_SELF_EN);
-		intel_uncore_write(&dev_priv->uncore, INSTPM, val);
-		intel_uncore_posting_read(&dev_priv->uncore, INSTPM);
+		intel_de_write(dev_priv, INSTPM, val);
+		intel_de_posting_read(dev_priv, INSTPM);
 	} else {
 		return false;
 	}
@@ -269,20 +270,20 @@ static void vlv_get_fifo_size(struct intel_crtc_state *crtc_state)
 
 	switch (pipe) {
 	case PIPE_A:
-		dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB);
-		dsparb2 = intel_uncore_read(&dev_priv->uncore, DSPARB2);
+		dsparb = intel_de_read(dev_priv, DSPARB);
+		dsparb2 = intel_de_read(dev_priv, DSPARB2);
 		sprite0_start = VLV_FIFO_START(dsparb, dsparb2, 0, 0);
 		sprite1_start = VLV_FIFO_START(dsparb, dsparb2, 8, 4);
 		break;
 	case PIPE_B:
-		dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB);
-		dsparb2 = intel_uncore_read(&dev_priv->uncore, DSPARB2);
+		dsparb = intel_de_read(dev_priv, DSPARB);
+		dsparb2 = intel_de_read(dev_priv, DSPARB2);
 		sprite0_start = VLV_FIFO_START(dsparb, dsparb2, 16, 8);
 		sprite1_start = VLV_FIFO_START(dsparb, dsparb2, 24, 12);
 		break;
 	case PIPE_C:
-		dsparb2 = intel_uncore_read(&dev_priv->uncore, DSPARB2);
-		dsparb3 = intel_uncore_read(&dev_priv->uncore, DSPARB3);
+		dsparb2 = intel_de_read(dev_priv, DSPARB2);
+		dsparb3 = intel_de_read(dev_priv, DSPARB3);
 		sprite0_start = VLV_FIFO_START(dsparb3, dsparb2, 0, 16);
 		sprite1_start = VLV_FIFO_START(dsparb3, dsparb2, 8, 20);
 		break;
@@ -300,7 +301,7 @@ static void vlv_get_fifo_size(struct intel_crtc_state *crtc_state)
 static int i9xx_get_fifo_size(struct drm_i915_private *dev_priv,
 			      enum i9xx_plane_id i9xx_plane)
 {
-	u32 dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB);
+	u32 dsparb = intel_de_read(dev_priv, DSPARB);
 	int size;
 
 	size = dsparb & 0x7f;
@@ -316,7 +317,7 @@ static int i9xx_get_fifo_size(struct drm_i915_private *dev_priv,
 static int i830_get_fifo_size(struct drm_i915_private *dev_priv,
 			      enum i9xx_plane_id i9xx_plane)
 {
-	u32 dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB);
+	u32 dsparb = intel_de_read(dev_priv, DSPARB);
 	int size;
 
 	size = dsparb & 0x1ff;
@@ -333,7 +334,7 @@ static int i830_get_fifo_size(struct drm_i915_private *dev_priv,
 static int i845_get_fifo_size(struct drm_i915_private *dev_priv,
 			      enum i9xx_plane_id i9xx_plane)
 {
-	u32 dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB);
+	u32 dsparb = intel_de_read(dev_priv, DSPARB);
 	int size;
 
 	size = dsparb & 0x7f;
@@ -655,33 +656,33 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
 		wm = intel_calculate_wm(pixel_rate, &pnv_display_wm,
 					pnv_display_wm.fifo_size,
 					cpp, latency->display_sr);
-		reg = intel_uncore_read(&dev_priv->uncore, DSPFW1);
+		reg = intel_de_read(dev_priv, DSPFW1);
 		reg &= ~DSPFW_SR_MASK;
 		reg |= FW_WM(wm, SR);
-		intel_uncore_write(&dev_priv->uncore, DSPFW1, reg);
+		intel_de_write(dev_priv, DSPFW1, reg);
 		drm_dbg_kms(&dev_priv->drm, "DSPFW1 register is %x\n", reg);
 
 		/* cursor SR */
 		wm = intel_calculate_wm(pixel_rate, &pnv_cursor_wm,
 					pnv_display_wm.fifo_size,
 					4, latency->cursor_sr);
-		intel_uncore_rmw(&dev_priv->uncore, DSPFW3, DSPFW_CURSOR_SR_MASK,
+		intel_de_rmw(dev_priv, DSPFW3, DSPFW_CURSOR_SR_MASK,
 				 FW_WM(wm, CURSOR_SR));
 
 		/* Display HPLL off SR */
 		wm = intel_calculate_wm(pixel_rate, &pnv_display_hplloff_wm,
 					pnv_display_hplloff_wm.fifo_size,
 					cpp, latency->display_hpll_disable);
-		intel_uncore_rmw(&dev_priv->uncore, DSPFW3, DSPFW_HPLL_SR_MASK, FW_WM(wm, HPLL_SR));
+		intel_de_rmw(dev_priv, DSPFW3, DSPFW_HPLL_SR_MASK, FW_WM(wm, HPLL_SR));
 
 		/* cursor HPLL off SR */
 		wm = intel_calculate_wm(pixel_rate, &pnv_cursor_hplloff_wm,
 					pnv_display_hplloff_wm.fifo_size,
 					4, latency->cursor_hpll_disable);
-		reg = intel_uncore_read(&dev_priv->uncore, DSPFW3);
+		reg = intel_de_read(dev_priv, DSPFW3);
 		reg &= ~DSPFW_HPLL_CURSOR_MASK;
 		reg |= FW_WM(wm, HPLL_CURSOR);
-		intel_uncore_write(&dev_priv->uncore, DSPFW3, reg);
+		intel_de_write(dev_priv, DSPFW3, reg);
 		drm_dbg_kms(&dev_priv->drm, "DSPFW3 register is %x\n", reg);
 
 		intel_set_memory_cxsr(dev_priv, true);
@@ -715,25 +716,25 @@ static void g4x_write_wm_values(struct drm_i915_private *dev_priv,
 	for_each_pipe(dev_priv, pipe)
 		trace_g4x_wm(intel_crtc_for_pipe(dev_priv, pipe), wm);
 
-	intel_uncore_write(&dev_priv->uncore, DSPFW1,
+	intel_de_write(dev_priv, DSPFW1,
 			   FW_WM(wm->sr.plane, SR) |
 			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_CURSOR], CURSORB) |
 			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_PRIMARY], PLANEB) |
 			   FW_WM(wm->pipe[PIPE_A].plane[PLANE_PRIMARY], PLANEA));
-	intel_uncore_write(&dev_priv->uncore, DSPFW2,
+	intel_de_write(dev_priv, DSPFW2,
 			   (wm->fbc_en ? DSPFW_FBC_SR_EN : 0) |
 			   FW_WM(wm->sr.fbc, FBC_SR) |
 			   FW_WM(wm->hpll.fbc, FBC_HPLL_SR) |
 			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE0], SPRITEB) |
 			   FW_WM(wm->pipe[PIPE_A].plane[PLANE_CURSOR], CURSORA) |
 			   FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE0], SPRITEA));
-	intel_uncore_write(&dev_priv->uncore, DSPFW3,
+	intel_de_write(dev_priv, DSPFW3,
 			   (wm->hpll_en ? DSPFW_HPLL_SR_EN : 0) |
 			   FW_WM(wm->sr.cursor, CURSOR_SR) |
 			   FW_WM(wm->hpll.cursor, HPLL_CURSOR) |
 			   FW_WM(wm->hpll.plane, HPLL_SR));
 
-	intel_uncore_posting_read(&dev_priv->uncore, DSPFW1);
+	intel_de_posting_read(dev_priv, DSPFW1);
 }
 
 #define FW_WM_VLV(value, plane) \
@@ -747,7 +748,7 @@ static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
 	for_each_pipe(dev_priv, pipe) {
 		trace_vlv_wm(intel_crtc_for_pipe(dev_priv, pipe), wm);
 
-		intel_uncore_write(&dev_priv->uncore, VLV_DDL(pipe),
+		intel_de_write(dev_priv, VLV_DDL(pipe),
 				   (wm->ddl[pipe].plane[PLANE_CURSOR] << DDL_CURSOR_SHIFT) |
 				   (wm->ddl[pipe].plane[PLANE_SPRITE1] << DDL_SPRITE_SHIFT(1)) |
 				   (wm->ddl[pipe].plane[PLANE_SPRITE0] << DDL_SPRITE_SHIFT(0)) |
@@ -759,35 +760,35 @@ static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
 	 * high order bits so that there are no out of bounds values
 	 * present in the registers during the reprogramming.
 	 */
-	intel_uncore_write(&dev_priv->uncore, DSPHOWM, 0);
-	intel_uncore_write(&dev_priv->uncore, DSPHOWM1, 0);
-	intel_uncore_write(&dev_priv->uncore, DSPFW4, 0);
-	intel_uncore_write(&dev_priv->uncore, DSPFW5, 0);
-	intel_uncore_write(&dev_priv->uncore, DSPFW6, 0);
+	intel_de_write(dev_priv, DSPHOWM, 0);
+	intel_de_write(dev_priv, DSPHOWM1, 0);
+	intel_de_write(dev_priv, DSPFW4, 0);
+	intel_de_write(dev_priv, DSPFW5, 0);
+	intel_de_write(dev_priv, DSPFW6, 0);
 
-	intel_uncore_write(&dev_priv->uncore, DSPFW1,
+	intel_de_write(dev_priv, DSPFW1,
 			   FW_WM(wm->sr.plane, SR) |
 			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_CURSOR], CURSORB) |
 			   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_PRIMARY], PLANEB) |
 			   FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_PRIMARY], PLANEA));
-	intel_uncore_write(&dev_priv->uncore, DSPFW2,
+	intel_de_write(dev_priv, DSPFW2,
 			   FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_SPRITE1], SPRITEB) |
 			   FW_WM(wm->pipe[PIPE_A].plane[PLANE_CURSOR], CURSORA) |
 			   FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_SPRITE0], SPRITEA));
-	intel_uncore_write(&dev_priv->uncore, DSPFW3,
+	intel_de_write(dev_priv, DSPFW3,
 			   FW_WM(wm->sr.cursor, CURSOR_SR));
 
 	if (IS_CHERRYVIEW(dev_priv)) {
-		intel_uncore_write(&dev_priv->uncore, DSPFW7_CHV,
+		intel_de_write(dev_priv, DSPFW7_CHV,
 				   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE1], SPRITED) |
 				   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE0], SPRITEC));
-		intel_uncore_write(&dev_priv->uncore, DSPFW8_CHV,
+		intel_de_write(dev_priv, DSPFW8_CHV,
 				   FW_WM_VLV(wm->pipe[PIPE_C].plane[PLANE_SPRITE1], SPRITEF) |
 				   FW_WM_VLV(wm->pipe[PIPE_C].plane[PLANE_SPRITE0], SPRITEE));
-		intel_uncore_write(&dev_priv->uncore, DSPFW9_CHV,
+		intel_de_write(dev_priv, DSPFW9_CHV,
 				   FW_WM_VLV(wm->pipe[PIPE_C].plane[PLANE_PRIMARY], PLANEC) |
 				   FW_WM(wm->pipe[PIPE_C].plane[PLANE_CURSOR], CURSORC));
-		intel_uncore_write(&dev_priv->uncore, DSPHOWM,
+		intel_de_write(dev_priv, DSPHOWM,
 				   FW_WM(wm->sr.plane >> 9, SR_HI) |
 				   FW_WM(wm->pipe[PIPE_C].plane[PLANE_SPRITE1] >> 8, SPRITEF_HI) |
 				   FW_WM(wm->pipe[PIPE_C].plane[PLANE_SPRITE0] >> 8, SPRITEE_HI) |
@@ -799,10 +800,10 @@ static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
 				   FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE0] >> 8, SPRITEA_HI) |
 				   FW_WM(wm->pipe[PIPE_A].plane[PLANE_PRIMARY] >> 8, PLANEA_HI));
 	} else {
-		intel_uncore_write(&dev_priv->uncore, DSPFW7,
+		intel_de_write(dev_priv, DSPFW7,
 				   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE1], SPRITED) |
 				   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE0], SPRITEC));
-		intel_uncore_write(&dev_priv->uncore, DSPHOWM,
+		intel_de_write(dev_priv, DSPHOWM,
 				   FW_WM(wm->sr.plane >> 9, SR_HI) |
 				   FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE1] >> 8, SPRITED_HI) |
 				   FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE0] >> 8, SPRITEC_HI) |
@@ -812,7 +813,7 @@ static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
 				   FW_WM(wm->pipe[PIPE_A].plane[PLANE_PRIMARY] >> 8, PLANEA_HI));
 	}
 
-	intel_uncore_posting_read(&dev_priv->uncore, DSPFW1);
+	intel_de_posting_read(dev_priv, DSPFW1);
 }
 
 #undef FW_WM_VLV
@@ -1751,7 +1752,6 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_uncore *uncore = &dev_priv->uncore;
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct vlv_fifo_state *fifo_state =
@@ -1775,8 +1775,8 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 
 	switch (crtc->pipe) {
 	case PIPE_A:
-		dsparb = intel_uncore_read_fw(uncore, DSPARB);
-		dsparb2 = intel_uncore_read_fw(uncore, DSPARB2);
+		dsparb = intel_de_read_fw(dev_priv, DSPARB);
+		dsparb2 = intel_de_read_fw(dev_priv, DSPARB2);
 
 		dsparb &= ~(VLV_FIFO(SPRITEA, 0xff) |
 			    VLV_FIFO(SPRITEB, 0xff));
@@ -1788,12 +1788,12 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 		dsparb2 |= (VLV_FIFO(SPRITEA_HI, sprite0_start >> 8) |
 			   VLV_FIFO(SPRITEB_HI, sprite1_start >> 8));
 
-		intel_uncore_write_fw(uncore, DSPARB, dsparb);
-		intel_uncore_write_fw(uncore, DSPARB2, dsparb2);
+		intel_de_write_fw(dev_priv, DSPARB, dsparb);
+		intel_de_write_fw(dev_priv, DSPARB2, dsparb2);
 		break;
 	case PIPE_B:
-		dsparb = intel_uncore_read_fw(uncore, DSPARB);
-		dsparb2 = intel_uncore_read_fw(uncore, DSPARB2);
+		dsparb = intel_de_read_fw(dev_priv, DSPARB);
+		dsparb2 = intel_de_read_fw(dev_priv, DSPARB2);
 
 		dsparb &= ~(VLV_FIFO(SPRITEC, 0xff) |
 			    VLV_FIFO(SPRITED, 0xff));
@@ -1805,12 +1805,12 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 		dsparb2 |= (VLV_FIFO(SPRITEC_HI, sprite0_start >> 8) |
 			   VLV_FIFO(SPRITED_HI, sprite1_start >> 8));
 
-		intel_uncore_write_fw(uncore, DSPARB, dsparb);
-		intel_uncore_write_fw(uncore, DSPARB2, dsparb2);
+		intel_de_write_fw(dev_priv, DSPARB, dsparb);
+		intel_de_write_fw(dev_priv, DSPARB2, dsparb2);
 		break;
 	case PIPE_C:
-		dsparb3 = intel_uncore_read_fw(uncore, DSPARB3);
-		dsparb2 = intel_uncore_read_fw(uncore, DSPARB2);
+		dsparb3 = intel_de_read_fw(dev_priv, DSPARB3);
+		dsparb2 = intel_de_read_fw(dev_priv, DSPARB2);
 
 		dsparb3 &= ~(VLV_FIFO(SPRITEE, 0xff) |
 			     VLV_FIFO(SPRITEF, 0xff));
@@ -1822,14 +1822,14 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 		dsparb2 |= (VLV_FIFO(SPRITEE_HI, sprite0_start >> 8) |
 			   VLV_FIFO(SPRITEF_HI, sprite1_start >> 8));
 
-		intel_uncore_write_fw(uncore, DSPARB3, dsparb3);
-		intel_uncore_write_fw(uncore, DSPARB2, dsparb2);
+		intel_de_write_fw(dev_priv, DSPARB3, dsparb3);
+		intel_de_write_fw(dev_priv, DSPARB2, dsparb2);
 		break;
 	default:
 		break;
 	}
 
-	intel_uncore_posting_read_fw(uncore, DSPARB);
+	intel_de_posting_read_fw(dev_priv, DSPARB);
 
 	spin_unlock(&dev_priv->display.wm.dsparb_lock);
 }
@@ -2053,14 +2053,14 @@ static void i965_update_wm(struct drm_i915_private *dev_priv)
 		    srwm);
 
 	/* 965 has limitations... */
-	intel_uncore_write(&dev_priv->uncore, DSPFW1, FW_WM(srwm, SR) |
+	intel_de_write(dev_priv, DSPFW1, FW_WM(srwm, SR) |
 		   FW_WM(8, CURSORB) |
 		   FW_WM(8, PLANEB) |
 		   FW_WM(8, PLANEA));
-	intel_uncore_write(&dev_priv->uncore, DSPFW2, FW_WM(8, CURSORA) |
+	intel_de_write(dev_priv, DSPFW2, FW_WM(8, CURSORA) |
 		   FW_WM(8, PLANEC_OLD));
 	/* update cursor SR watermark */
-	intel_uncore_write(&dev_priv->uncore, DSPFW3, FW_WM(cursor_sr, CURSOR_SR));
+	intel_de_write(dev_priv, DSPFW3, FW_WM(cursor_sr, CURSOR_SR));
 
 	if (cxsr_enabled)
 		intel_set_memory_cxsr(dev_priv, true);
@@ -2201,10 +2201,10 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 			srwm = 1;
 
 		if (IS_I945G(dev_priv) || IS_I945GM(dev_priv))
-			intel_uncore_write(&dev_priv->uncore, FW_BLC_SELF,
+			intel_de_write(dev_priv, FW_BLC_SELF,
 				   FW_BLC_SELF_FIFO_MASK | (srwm & 0xff));
 		else
-			intel_uncore_write(&dev_priv->uncore, FW_BLC_SELF, srwm & 0x3f);
+			intel_de_write(dev_priv, FW_BLC_SELF, srwm & 0x3f);
 	}
 
 	drm_dbg_kms(&dev_priv->drm,
@@ -2218,8 +2218,8 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 	fwater_lo = fwater_lo | (1 << 24) | (1 << 8);
 	fwater_hi = fwater_hi | (1 << 8);
 
-	intel_uncore_write(&dev_priv->uncore, FW_BLC, fwater_lo);
-	intel_uncore_write(&dev_priv->uncore, FW_BLC2, fwater_hi);
+	intel_de_write(dev_priv, FW_BLC, fwater_lo);
+	intel_de_write(dev_priv, FW_BLC2, fwater_hi);
 
 	if (crtc)
 		intel_set_memory_cxsr(dev_priv, true);
@@ -2239,13 +2239,13 @@ static void i845_update_wm(struct drm_i915_private *dev_priv)
 				       &i845_wm_info,
 				       i845_get_fifo_size(dev_priv, PLANE_A),
 				       4, pessimal_latency_ns);
-	fwater_lo = intel_uncore_read(&dev_priv->uncore, FW_BLC) & ~0xfff;
+	fwater_lo = intel_de_read(dev_priv, FW_BLC) & ~0xfff;
 	fwater_lo |= (3<<8) | planea_wm;
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "Setting FIFO watermarks - A: %d\n", planea_wm);
 
-	intel_uncore_write(&dev_priv->uncore, FW_BLC, fwater_lo);
+	intel_de_write(dev_priv, FW_BLC, fwater_lo);
 }
 
 /* latency must be in 0.1us units. */
@@ -2603,7 +2603,7 @@ static void hsw_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 
 	i915->display.wm.num_levels = 5;
 
-	sskpd = intel_uncore_read64(&i915->uncore, MCH_SSKPD);
+	sskpd = intel_de_read64(i915, MCH_SSKPD);
 
 	wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
 	if (wm[0] == 0)
@@ -2620,7 +2620,7 @@ static void snb_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 
 	i915->display.wm.num_levels = 4;
 
-	sskpd = intel_uncore_read(&i915->uncore, MCH_SSKPD);
+	sskpd = intel_de_read(i915, MCH_SSKPD);
 
 	wm[0] = REG_FIELD_GET(SSKPD_WM0_MASK_SNB, sskpd);
 	wm[1] = REG_FIELD_GET(SSKPD_WM1_MASK_SNB, sskpd);
@@ -2634,7 +2634,7 @@ static void ilk_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 
 	i915->display.wm.num_levels = 3;
 
-	mltr = intel_uncore_read(&i915->uncore, MLTR_ILK);
+	mltr = intel_de_read(i915, MLTR_ILK);
 
 	/* ILK primary LP0 latency is 700 ns */
 	wm[0] = 7;
@@ -3163,17 +3163,17 @@ static bool _ilk_disable_lp_wm(struct drm_i915_private *dev_priv,
 
 	if (dirty & WM_DIRTY_LP(3) && previous->wm_lp[2] & WM_LP_ENABLE) {
 		previous->wm_lp[2] &= ~WM_LP_ENABLE;
-		intel_uncore_write(&dev_priv->uncore, WM3_LP_ILK, previous->wm_lp[2]);
+		intel_de_write(dev_priv, WM3_LP_ILK, previous->wm_lp[2]);
 		changed = true;
 	}
 	if (dirty & WM_DIRTY_LP(2) && previous->wm_lp[1] & WM_LP_ENABLE) {
 		previous->wm_lp[1] &= ~WM_LP_ENABLE;
-		intel_uncore_write(&dev_priv->uncore, WM2_LP_ILK, previous->wm_lp[1]);
+		intel_de_write(dev_priv, WM2_LP_ILK, previous->wm_lp[1]);
 		changed = true;
 	}
 	if (dirty & WM_DIRTY_LP(1) && previous->wm_lp[0] & WM_LP_ENABLE) {
 		previous->wm_lp[0] &= ~WM_LP_ENABLE;
-		intel_uncore_write(&dev_priv->uncore, WM1_LP_ILK, previous->wm_lp[0]);
+		intel_de_write(dev_priv, WM1_LP_ILK, previous->wm_lp[0]);
 		changed = true;
 	}
 
@@ -3202,44 +3202,44 @@ static void ilk_write_wm_values(struct drm_i915_private *dev_priv,
 	_ilk_disable_lp_wm(dev_priv, dirty);
 
 	if (dirty & WM_DIRTY_PIPE(PIPE_A))
-		intel_uncore_write(&dev_priv->uncore, WM0_PIPE_ILK(PIPE_A), results->wm_pipe[0]);
+		intel_de_write(dev_priv, WM0_PIPE_ILK(PIPE_A), results->wm_pipe[0]);
 	if (dirty & WM_DIRTY_PIPE(PIPE_B))
-		intel_uncore_write(&dev_priv->uncore, WM0_PIPE_ILK(PIPE_B), results->wm_pipe[1]);
+		intel_de_write(dev_priv, WM0_PIPE_ILK(PIPE_B), results->wm_pipe[1]);
 	if (dirty & WM_DIRTY_PIPE(PIPE_C))
-		intel_uncore_write(&dev_priv->uncore, WM0_PIPE_ILK(PIPE_C), results->wm_pipe[2]);
+		intel_de_write(dev_priv, WM0_PIPE_ILK(PIPE_C), results->wm_pipe[2]);
 
 	if (dirty & WM_DIRTY_DDB) {
 		if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
-			intel_uncore_rmw(&dev_priv->uncore, WM_MISC, WM_MISC_DATA_PARTITION_5_6,
+			intel_de_rmw(dev_priv, WM_MISC, WM_MISC_DATA_PARTITION_5_6,
 					 results->partitioning == INTEL_DDB_PART_1_2 ? 0 :
 					 WM_MISC_DATA_PARTITION_5_6);
 		else
-			intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL2, DISP_DATA_PARTITION_5_6,
+			intel_de_rmw(dev_priv, DISP_ARB_CTL2, DISP_DATA_PARTITION_5_6,
 					 results->partitioning == INTEL_DDB_PART_1_2 ? 0 :
 					 DISP_DATA_PARTITION_5_6);
 	}
 
 	if (dirty & WM_DIRTY_FBC)
-		intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, DISP_FBC_WM_DIS,
+		intel_de_rmw(dev_priv, DISP_ARB_CTL, DISP_FBC_WM_DIS,
 				 results->enable_fbc_wm ? 0 : DISP_FBC_WM_DIS);
 
 	if (dirty & WM_DIRTY_LP(1) &&
 	    previous->wm_lp_spr[0] != results->wm_lp_spr[0])
-		intel_uncore_write(&dev_priv->uncore, WM1S_LP_ILK, results->wm_lp_spr[0]);
+		intel_de_write(dev_priv, WM1S_LP_ILK, results->wm_lp_spr[0]);
 
 	if (DISPLAY_VER(dev_priv) >= 7) {
 		if (dirty & WM_DIRTY_LP(2) && previous->wm_lp_spr[1] != results->wm_lp_spr[1])
-			intel_uncore_write(&dev_priv->uncore, WM2S_LP_IVB, results->wm_lp_spr[1]);
+			intel_de_write(dev_priv, WM2S_LP_IVB, results->wm_lp_spr[1]);
 		if (dirty & WM_DIRTY_LP(3) && previous->wm_lp_spr[2] != results->wm_lp_spr[2])
-			intel_uncore_write(&dev_priv->uncore, WM3S_LP_IVB, results->wm_lp_spr[2]);
+			intel_de_write(dev_priv, WM3S_LP_IVB, results->wm_lp_spr[2]);
 	}
 
 	if (dirty & WM_DIRTY_LP(1) && previous->wm_lp[0] != results->wm_lp[0])
-		intel_uncore_write(&dev_priv->uncore, WM1_LP_ILK, results->wm_lp[0]);
+		intel_de_write(dev_priv, WM1_LP_ILK, results->wm_lp[0]);
 	if (dirty & WM_DIRTY_LP(2) && previous->wm_lp[1] != results->wm_lp[1])
-		intel_uncore_write(&dev_priv->uncore, WM2_LP_ILK, results->wm_lp[1]);
+		intel_de_write(dev_priv, WM2_LP_ILK, results->wm_lp[1]);
 	if (dirty & WM_DIRTY_LP(3) && previous->wm_lp[2] != results->wm_lp[2])
-		intel_uncore_write(&dev_priv->uncore, WM3_LP_ILK, results->wm_lp[2]);
+		intel_de_write(dev_priv, WM3_LP_ILK, results->wm_lp[2]);
 
 	dev_priv->display.wm.hw = *results;
 }
@@ -3337,7 +3337,7 @@ static void ilk_pipe_wm_get_hw_state(struct intel_crtc *crtc)
 	struct intel_pipe_wm *active = &crtc_state->wm.ilk.optimal;
 	enum pipe pipe = crtc->pipe;
 
-	hw->wm_pipe[pipe] = intel_uncore_read(&dev_priv->uncore, WM0_PIPE_ILK(pipe));
+	hw->wm_pipe[pipe] = intel_de_read(dev_priv, WM0_PIPE_ILK(pipe));
 
 	memset(active, 0, sizeof(*active));
 
@@ -3502,13 +3502,13 @@ static void g4x_read_wm_values(struct drm_i915_private *dev_priv,
 {
 	u32 tmp;
 
-	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW1);
+	tmp = intel_de_read(dev_priv, DSPFW1);
 	wm->sr.plane = _FW_WM(tmp, SR);
 	wm->pipe[PIPE_B].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORB);
 	wm->pipe[PIPE_B].plane[PLANE_PRIMARY] = _FW_WM(tmp, PLANEB);
 	wm->pipe[PIPE_A].plane[PLANE_PRIMARY] = _FW_WM(tmp, PLANEA);
 
-	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW2);
+	tmp = intel_de_read(dev_priv, DSPFW2);
 	wm->fbc_en = tmp & DSPFW_FBC_SR_EN;
 	wm->sr.fbc = _FW_WM(tmp, FBC_SR);
 	wm->hpll.fbc = _FW_WM(tmp, FBC_HPLL_SR);
@@ -3516,7 +3516,7 @@ static void g4x_read_wm_values(struct drm_i915_private *dev_priv,
 	wm->pipe[PIPE_A].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORA);
 	wm->pipe[PIPE_A].plane[PLANE_SPRITE0] = _FW_WM(tmp, SPRITEA);
 
-	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW3);
+	tmp = intel_de_read(dev_priv, DSPFW3);
 	wm->hpll_en = tmp & DSPFW_HPLL_SR_EN;
 	wm->sr.cursor = _FW_WM(tmp, CURSOR_SR);
 	wm->hpll.cursor = _FW_WM(tmp, HPLL_CURSOR);
@@ -3530,7 +3530,7 @@ static void vlv_read_wm_values(struct drm_i915_private *dev_priv,
 	u32 tmp;
 
 	for_each_pipe(dev_priv, pipe) {
-		tmp = intel_uncore_read(&dev_priv->uncore, VLV_DDL(pipe));
+		tmp = intel_de_read(dev_priv, VLV_DDL(pipe));
 
 		wm->ddl[pipe].plane[PLANE_PRIMARY] =
 			(tmp >> DDL_PLANE_SHIFT) & (DDL_PRECISION_HIGH | DRAIN_LATENCY_MASK);
@@ -3542,34 +3542,34 @@ static void vlv_read_wm_values(struct drm_i915_private *dev_priv,
 			(tmp >> DDL_SPRITE_SHIFT(1)) & (DDL_PRECISION_HIGH | DRAIN_LATENCY_MASK);
 	}
 
-	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW1);
+	tmp = intel_de_read(dev_priv, DSPFW1);
 	wm->sr.plane = _FW_WM(tmp, SR);
 	wm->pipe[PIPE_B].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORB);
 	wm->pipe[PIPE_B].plane[PLANE_PRIMARY] = _FW_WM_VLV(tmp, PLANEB);
 	wm->pipe[PIPE_A].plane[PLANE_PRIMARY] = _FW_WM_VLV(tmp, PLANEA);
 
-	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW2);
+	tmp = intel_de_read(dev_priv, DSPFW2);
 	wm->pipe[PIPE_A].plane[PLANE_SPRITE1] = _FW_WM_VLV(tmp, SPRITEB);
 	wm->pipe[PIPE_A].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORA);
 	wm->pipe[PIPE_A].plane[PLANE_SPRITE0] = _FW_WM_VLV(tmp, SPRITEA);
 
-	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW3);
+	tmp = intel_de_read(dev_priv, DSPFW3);
 	wm->sr.cursor = _FW_WM(tmp, CURSOR_SR);
 
 	if (IS_CHERRYVIEW(dev_priv)) {
-		tmp = intel_uncore_read(&dev_priv->uncore, DSPFW7_CHV);
+		tmp = intel_de_read(dev_priv, DSPFW7_CHV);
 		wm->pipe[PIPE_B].plane[PLANE_SPRITE1] = _FW_WM_VLV(tmp, SPRITED);
 		wm->pipe[PIPE_B].plane[PLANE_SPRITE0] = _FW_WM_VLV(tmp, SPRITEC);
 
-		tmp = intel_uncore_read(&dev_priv->uncore, DSPFW8_CHV);
+		tmp = intel_de_read(dev_priv, DSPFW8_CHV);
 		wm->pipe[PIPE_C].plane[PLANE_SPRITE1] = _FW_WM_VLV(tmp, SPRITEF);
 		wm->pipe[PIPE_C].plane[PLANE_SPRITE0] = _FW_WM_VLV(tmp, SPRITEE);
 
-		tmp = intel_uncore_read(&dev_priv->uncore, DSPFW9_CHV);
+		tmp = intel_de_read(dev_priv, DSPFW9_CHV);
 		wm->pipe[PIPE_C].plane[PLANE_PRIMARY] = _FW_WM_VLV(tmp, PLANEC);
 		wm->pipe[PIPE_C].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORC);
 
-		tmp = intel_uncore_read(&dev_priv->uncore, DSPHOWM);
+		tmp = intel_de_read(dev_priv, DSPHOWM);
 		wm->sr.plane |= _FW_WM(tmp, SR_HI) << 9;
 		wm->pipe[PIPE_C].plane[PLANE_SPRITE1] |= _FW_WM(tmp, SPRITEF_HI) << 8;
 		wm->pipe[PIPE_C].plane[PLANE_SPRITE0] |= _FW_WM(tmp, SPRITEE_HI) << 8;
@@ -3581,11 +3581,11 @@ static void vlv_read_wm_values(struct drm_i915_private *dev_priv,
 		wm->pipe[PIPE_A].plane[PLANE_SPRITE0] |= _FW_WM(tmp, SPRITEA_HI) << 8;
 		wm->pipe[PIPE_A].plane[PLANE_PRIMARY] |= _FW_WM(tmp, PLANEA_HI) << 8;
 	} else {
-		tmp = intel_uncore_read(&dev_priv->uncore, DSPFW7);
+		tmp = intel_de_read(dev_priv, DSPFW7);
 		wm->pipe[PIPE_B].plane[PLANE_SPRITE1] = _FW_WM_VLV(tmp, SPRITED);
 		wm->pipe[PIPE_B].plane[PLANE_SPRITE0] = _FW_WM_VLV(tmp, SPRITEC);
 
-		tmp = intel_uncore_read(&dev_priv->uncore, DSPHOWM);
+		tmp = intel_de_read(dev_priv, DSPHOWM);
 		wm->sr.plane |= _FW_WM(tmp, SR_HI) << 9;
 		wm->pipe[PIPE_B].plane[PLANE_SPRITE1] |= _FW_WM(tmp, SPRITED_HI) << 8;
 		wm->pipe[PIPE_B].plane[PLANE_SPRITE0] |= _FW_WM(tmp, SPRITEC_HI) << 8;
@@ -3606,7 +3606,7 @@ static void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
 
 	g4x_read_wm_values(dev_priv, wm);
 
-	wm->cxsr = intel_uncore_read(&dev_priv->uncore, FW_BLC_SELF) & FW_BLC_SELF_EN;
+	wm->cxsr = intel_de_read(dev_priv, FW_BLC_SELF) & FW_BLC_SELF_EN;
 
 	for_each_intel_crtc(&dev_priv->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
@@ -3755,7 +3755,7 @@ static void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv)
 
 	vlv_read_wm_values(dev_priv, wm);
 
-	wm->cxsr = intel_uncore_read(&dev_priv->uncore, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
+	wm->cxsr = intel_de_read(dev_priv, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
 	wm->level = VLV_WM_LEVEL_PM2;
 
 	if (IS_CHERRYVIEW(dev_priv)) {
@@ -3905,9 +3905,9 @@ static void vlv_wm_get_hw_state_and_sanitize(struct drm_i915_private *i915)
  */
 static void ilk_init_lp_watermarks(struct drm_i915_private *dev_priv)
 {
-	intel_uncore_rmw(&dev_priv->uncore, WM3_LP_ILK, WM_LP_ENABLE, 0);
-	intel_uncore_rmw(&dev_priv->uncore, WM2_LP_ILK, WM_LP_ENABLE, 0);
-	intel_uncore_rmw(&dev_priv->uncore, WM1_LP_ILK, WM_LP_ENABLE, 0);
+	intel_de_rmw(dev_priv, WM3_LP_ILK, WM_LP_ENABLE, 0);
+	intel_de_rmw(dev_priv, WM2_LP_ILK, WM_LP_ENABLE, 0);
+	intel_de_rmw(dev_priv, WM1_LP_ILK, WM_LP_ENABLE, 0);
 
 	/*
 	 * Don't touch WM_LP_SPRITE_ENABLE here.
@@ -3925,27 +3925,27 @@ static void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv)
 	for_each_intel_crtc(&dev_priv->drm, crtc)
 		ilk_pipe_wm_get_hw_state(crtc);
 
-	hw->wm_lp[0] = intel_uncore_read(&dev_priv->uncore, WM1_LP_ILK);
-	hw->wm_lp[1] = intel_uncore_read(&dev_priv->uncore, WM2_LP_ILK);
-	hw->wm_lp[2] = intel_uncore_read(&dev_priv->uncore, WM3_LP_ILK);
+	hw->wm_lp[0] = intel_de_read(dev_priv, WM1_LP_ILK);
+	hw->wm_lp[1] = intel_de_read(dev_priv, WM2_LP_ILK);
+	hw->wm_lp[2] = intel_de_read(dev_priv, WM3_LP_ILK);
 
-	hw->wm_lp_spr[0] = intel_uncore_read(&dev_priv->uncore, WM1S_LP_ILK);
+	hw->wm_lp_spr[0] = intel_de_read(dev_priv, WM1S_LP_ILK);
 	if (DISPLAY_VER(dev_priv) >= 7) {
-		hw->wm_lp_spr[1] = intel_uncore_read(&dev_priv->uncore, WM2S_LP_IVB);
-		hw->wm_lp_spr[2] = intel_uncore_read(&dev_priv->uncore, WM3S_LP_IVB);
+		hw->wm_lp_spr[1] = intel_de_read(dev_priv, WM2S_LP_IVB);
+		hw->wm_lp_spr[2] = intel_de_read(dev_priv, WM3S_LP_IVB);
 	}
 
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
-		hw->partitioning = (intel_uncore_read(&dev_priv->uncore, WM_MISC) &
+		hw->partitioning = (intel_de_read(dev_priv, WM_MISC) &
 				    WM_MISC_DATA_PARTITION_5_6) ?
 			INTEL_DDB_PART_5_6 : INTEL_DDB_PART_1_2;
 	else if (IS_IVYBRIDGE(dev_priv))
-		hw->partitioning = (intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL2) &
+		hw->partitioning = (intel_de_read(dev_priv, DISP_ARB_CTL2) &
 				    DISP_DATA_PARTITION_5_6) ?
 			INTEL_DDB_PART_5_6 : INTEL_DDB_PART_1_2;
 
 	hw->enable_fbc_wm =
-		!(intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) & DISP_FBC_WM_DIS);
+		!(intel_de_read(dev_priv, DISP_ARB_CTL) & DISP_FBC_WM_DIS);
 }
 
 static const struct intel_wm_funcs ilk_wm_funcs = {
diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 42552d8c151e..0c64245a181d 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -22,6 +22,12 @@ intel_de_read8(struct drm_i915_private *i915, i915_reg_t reg)
 	return intel_uncore_read8(&i915->uncore, reg);
 }
 
+static inline u8
+intel_de_read64(struct drm_i915_private *i915, i915_reg_t reg)
+{
+	return intel_uncore_read64(&i915->uncore, reg);
+}
+
 static inline u64
 intel_de_read64_2x32(struct drm_i915_private *i915,
 		     i915_reg_t lower_reg, i915_reg_t upper_reg)
@@ -104,6 +110,12 @@ intel_de_read_fw(struct drm_i915_private *i915, i915_reg_t reg)
 	return val;
 }
 
+static inline void
+intel_de_posting_read_fw(struct drm_i915_private *i915, i915_reg_t reg)
+{
+	intel_uncore_posting_read_fw(&i915->uncore, reg);
+}
+
 static inline void
 intel_de_write_fw(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
 {
-- 
2.39.2

