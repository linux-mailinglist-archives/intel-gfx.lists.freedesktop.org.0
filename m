Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 438B5AE981A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 10:21:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B9E810E872;
	Thu, 26 Jun 2025 08:21:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A6vbyT1C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38F3C10E86F;
 Thu, 26 Jun 2025 08:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750926090; x=1782462090;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=kNnrQe8PH/P6Lp8w8DycW6bBDAf9Rrl5+a89huF+ApU=;
 b=A6vbyT1CwldOrRU4ucJqc8gMAOqqJD/CrZ4Dd8KD2AOSYmNRP4VFPy54
 CDUD26m2iVg+pScHzNhqKapDNlcXDj097apSGhDrOmBJDS1Z/QdE1YiS1
 WAGe6DZo22z0FSSnoBR7USQFBzFbrzPh1Msa0jgTf50eejWD55xkbs2g9
 wizGrvAXLdPx7bQ+Kou9cBkjfrWIi1YM4+JfV0ODb3gkdDWbuJjw0T17T
 HGtbHZ83Y2pI5VNkDud7XrJ5Gbu9bmA/SREnhQKP7fisNQlIdPJerO+Kf
 JtrIxmLgiAWIYNy1x7rG9GLGd4MQnfQA9mwZZnhqdG9OdS+9BNJiscmEH A==;
X-CSE-ConnectionGUID: 2/tYBjYgRZe7fAehcjjsZA==
X-CSE-MsgGUID: fYY3gHu5T8iAFqr9BKJGWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="57019430"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="57019430"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:29 -0700
X-CSE-ConnectionGUID: pNpeZT3mT9SXhs+7eIMmPw==
X-CSE-MsgGUID: ZQMebgEOSXqE7JnJKIqkgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="152070144"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:30 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:29 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 01:21:29 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.44)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d3X0qOW+CeB2neioN4a3DbggQMm4/xXUxM2UCoU2AT3oZLw+QsejRUQNGciX/thTrv56E7dC9iQMT6P6TGZaXm4jpPOmKwSDq0wFo3UvrPAJtxJXrBpLT/s4AD8g9qTI9CKlXhtD/d+TYmo78MIinVUsjACJfMsa0fEE45ClBtIn8hkqT0hrHwxMfHpyrjLkaySq9BjcU36zjmG97abS6NR/TiHoJWWRQ2SEhiwoAOewu7y0mctxmQNG5hsFNeug2REtkXXSAugqy7BLE/igtVMRMJPSfnRenenpqtpF3Gae4EivaoZm5EyCnvP2g//fLjjAeDnbRLsAZtT4t1LBhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HVSnw1LhKZanbNKW80qGwCaZD7zsyhYFoqCJnrzc+5E=;
 b=Rz7WpWK4mP5+Q0BvLshKEUeZT3CeATNebazN9jY84rYrXmxLtsf9y7VzskitFkRervyR+OvrR/UkFu4IioXZYxxp1TtKX/zoQdJ7wIEreQPrpivNDnRpDcfdXNxVtLwIo4MJnykCNvwSJ2gICJZbufSCNdOlnmRYTBEDL02s61/SKznurRM+BTJ32j1sAgjhQaGODXK/+yKKENWMSB4JF9r3s4yM7sHleNhxqtGURmXMwmmSC0n+uEzWNYcBXBja9QMXJJRRxdPf26fY4zVvLbCP5YAJQCXj0J2NprmrCSHf1dLTmSboybPglMjBiImvXbIkWtSIcTOSdmBQY9oorg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH8PR11MB6928.namprd11.prod.outlook.com (2603:10b6:510:224::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.30; Thu, 26 Jun
 2025 08:21:27 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 08:21:26 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH 18/20] drm/i915/dp_mst: Reuse
 intel_dp_handle_link_service_irq()
Date: Thu, 26 Jun 2025 11:20:51 +0300
Message-ID: <20250626082053.219514-19-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250626082053.219514-1-imre.deak@intel.com>
References: <20250626082053.219514-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P302CA0020.GBRP302.PROD.OUTLOOK.COM
 (2603:10a6:600:2c1::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH8PR11MB6928:EE_
X-MS-Office365-Filtering-Correlation-Id: afc0c793-34f2-45fb-c3c2-08ddb48a71af
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?503UjoYENjdKIp3nvqDO/Fi+Z2Ucm10ohnbICeyEl+Lyj3ijqQAdyuodTCsS?=
 =?us-ascii?Q?6VG1ue6c32EmtWEXojsFmRvZ1RBfQyqF44ppsdcOlRd/NkLRViffrszwIZX1?=
 =?us-ascii?Q?X6Z+OF6WSf2xXr2kz+5f3vbMiU1bHmr2hxZOqr94nhZUQOMgsnJEY4dONONv?=
 =?us-ascii?Q?5K9Ng0aeK7TFrN+wSQAeLjpvSre8PmGWWa7g9XvYRapyhRXmNzGXhN5YThJA?=
 =?us-ascii?Q?kEm+pIp/Xu8l/kj7kC070MDJz9ANfN8yYBrwv97PmvAosMLpdkgYZaIhgZKV?=
 =?us-ascii?Q?NHkk/FCh6xb2Snfi52teG6FbC7zx+rNdrGdzCyAID+WHsDwjHjlZU8OnnNbQ?=
 =?us-ascii?Q?eAzXbGY32QqV/V/JtgdGzv1UzDCX8s59ZJuWV46Ku6bnQTTupmhkYpytMvKP?=
 =?us-ascii?Q?kqG6eOhHBSqNY631rFuEkU51a+5f11l3ilM5uhAuoXL4CJ5k989oWNFQpA3f?=
 =?us-ascii?Q?AXWbv50BdLZJGnQj6w4v5XICJLZEjsfnOzM2P9Pb3ebfUhe6yuE/Lx+hEPfH?=
 =?us-ascii?Q?NkhFlPX6aHwvDflHlGnWC88kWaEKImT7EpzrFIJTQWDy/6fOmZ2W4L70hBfd?=
 =?us-ascii?Q?fKZcBbPK2+/FcvM1ofIqLsf4lnao4vVww11DU+WaVBhuvDJbGR1jwk3RYyMm?=
 =?us-ascii?Q?gdmb9MOscOjUBxkWTxnpBwYwkhQwREq9vBj36PmW8+chqw1IfCrGCyCzjwLN?=
 =?us-ascii?Q?DRc6ymY5lsJM0vWu8bRV6BSwk5dQUZWKNIankGKw9L2Pk27zLEB6vbNueTr+?=
 =?us-ascii?Q?vzt5RH9nvzmuZMGRiECBZOfLEpjDm5KNvQlzXT/REHThGSJw6Df8AfeqWGpg?=
 =?us-ascii?Q?wTIYxmGZlDhy6N7Jac9LAouPGbtcuwcw4BhMKQiO1LHm0MNAkYfoux/bmAXo?=
 =?us-ascii?Q?PEXGY08nvilF397CPqI32cSZx8z1ESzDiqtC/Y6gz4DfadwyV4M2PjblkCyd?=
 =?us-ascii?Q?UMJqA5Q3ZgmPBm05LC6+R79XJYZuJwk8J95mnpFaib5g01ZpjvJZ18F4M57u?=
 =?us-ascii?Q?HscEPJyTyIAU+subkgMKfJHT9gli+ZvEaNoeOOwnVfFeQwXpLCsryIT801I1?=
 =?us-ascii?Q?9auXnH9XbZbOUzB9tn5ujQLbZCvAPVx3bb2ZS9uIGW8XFUKKVnwxAeyCGaKO?=
 =?us-ascii?Q?yZzqpGNVWtg5+spkerhj/2+vbKHIfgGV+T9Pfz58IVwQlmdGEp5FyZnyWJSD?=
 =?us-ascii?Q?aj6C/sDiTtD3hq/n8Ping4J+udbrCrpX+GtZMsx9STPTnP4EsQV7U+HE5vOj?=
 =?us-ascii?Q?wfHlVeER2smoxdAHrgczAlMs35C9he4W9LAUO0vQVqL95ZIlyjKhaIRJT7rz?=
 =?us-ascii?Q?1JedzeFJajWRGL1Z2bWELaFdTy/xK3sMXmDz3JZZdiRJ7kVXQaDvlG4KXyFz?=
 =?us-ascii?Q?8ssMnD6HBl5pUCZj5U7GwjWvZLqAjji803clG4AI8++4nMoyKQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+c7Ehod6Ao6x4mHe84N+i1bSRZfGNOd0zWPstKXcpG7PcLhZhemdR2GMj7Rq?=
 =?us-ascii?Q?a42E9mhuyLex8cJc7vMD6AyyGl8/W+IQx1whLZNLUlIhMSLI8MGUQOLK++E2?=
 =?us-ascii?Q?I35pcyjjzl6poutiHUqTVFmLx+2c37S3r7LIShsm/vJrJ4N4yA7Tq6o7Oz9P?=
 =?us-ascii?Q?iX35ztHyh9jyP5UvpLScG9I/s7FmWFBoWvR8G1wIeJnfXDs/niS5pNfsiCgG?=
 =?us-ascii?Q?ocOiXi0dWookFXHNqJWLuyHf5hzgkZARDT1DWz3d7dbguHMjJe+pqjdlFlCz?=
 =?us-ascii?Q?wuRyoE0mPtIS7k9b/wV99vrNoARM2cEB/PWDPTs+f37WMEDpgNNUWrYt9JW4?=
 =?us-ascii?Q?yBwDFtSHN7cD8qgLS86a0efXb2U+bBJNn1rNniOJUasVWNnoELL3hVc/ZD4H?=
 =?us-ascii?Q?brVPOomE+0u+K5NCs60efmXHyDiFs4d8MsAImhQcrKulLVVP8x7mK4pBN1pB?=
 =?us-ascii?Q?OhCqJUPHWhkXTtqYmA6r2zOsYluhYeRlEF7y+zfthDi4GAYy2YSWoTVeGbvy?=
 =?us-ascii?Q?qT3GOwWFoN3KxVTkWqfenHuUAGFLvm4CsPBviEKYN77i3n7xCS/r6uOtgtkT?=
 =?us-ascii?Q?oAtdUTAnYqME37M58yWkJynJJk2ZqT99h8VwTiwa/YRtQDWb1kM7WoCQ9zuF?=
 =?us-ascii?Q?L0JovCzCSdw2R4WQG7mxpJQZAzD3vuETgvSNmFsOoBSSoHjO3pnSnZfsksuz?=
 =?us-ascii?Q?hYCOvemHnc+pMG0TAG9UdVnP1fwEhdPq9fZb0a1EVcZ52BurU/CClziRnele?=
 =?us-ascii?Q?y8fsS2wUOhPaOX79E42gGQNHAMuiHLBdaIWM2cXqLPEGL1O85S+PaROpjmaf?=
 =?us-ascii?Q?vwrIdmdlY/mo9IGaj3IQnJnHY/rYIKydFdneFD53EiHa+NnE1vqbMdsJCuiN?=
 =?us-ascii?Q?t5FzKzo2e4AyKctXB1mYHwIAm89VUz1L4867Rl5dqtscU440XvWIZ7SsrG40?=
 =?us-ascii?Q?EL8D5qDaQA3e1YNH52IZ8eGncwi4s8FFgf8kC7HCRyATRU4E/sMSm4y3slkS?=
 =?us-ascii?Q?K1VePhJaPphT/q9xzHr40S1xVhDJOoHMd+Hu844LFBJRLq2MuNIsG3mLepEp?=
 =?us-ascii?Q?FHGZEeZvTa8s2DG95d7x9yif692RstKVLb0OMhHepbp7WW5Lth0Th4Ts1K4W?=
 =?us-ascii?Q?XxjRSUDSqDpLHi/HdVhV5s5oY0VIUlZ62Yx3/A329MxK2fsOz18wSmkpB9Ls?=
 =?us-ascii?Q?6iDt2hDVuKzoa+AW6YaR9pVR+buXOJRBgr7fH5oyvkHeoF42X8O0bZdKopdV?=
 =?us-ascii?Q?uTpuGgHh6YJ62ALONxr5+2l+dpuyaIc0J/emxZ3G0zpYbR0NQyn47NqGEyD4?=
 =?us-ascii?Q?kob1zPPqvuR6mtq6YUG0OBpZ+sRyQ5bXApWq0Wnf2j1rK+Q4BQcex2YatdOh?=
 =?us-ascii?Q?rp1jzy9xjs1V1vTTHzxbI+E+/kKemauUESmzAumRKPi4LlXhAfrpCPprmeCg?=
 =?us-ascii?Q?zCkI6ZYwHNMKdO5rim3QKRt/I0AZn+wfYicO73mljDf91wpzL3togoAasyTE?=
 =?us-ascii?Q?cKcVsG7sAHEnLjFIyynx+H6jKaZ69ezJRZRkZ4pYt3ijrhs5Y17AEbOwC+NQ?=
 =?us-ascii?Q?XMCuv057H8VpJV/4HnIGPBhgtHQcNxydsyXbdtLn?=
X-MS-Exchange-CrossTenant-Network-Message-Id: afc0c793-34f2-45fb-c3c2-08ddb48a71af
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 08:21:26.6703 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Gjw9oDs9bx7tsQBOfbaeWHUjlyngs20Fz6NJBE7nj9y4Mwn+X8fBoDF7UXMGuD5x25vkSbnMj65xwpS2MkO3Tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6928
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

From: Imre Deak <imre.deak@gmail.com>

Use intel_dp_handle_link_service_irq() while handling an MST HPD IRQ,
instead of open-coding this.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 000c57da92d60..52249fa5c8a6d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5129,6 +5129,8 @@ intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 *esi, u8 *ack)
 	}
 }
 
+static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_mask);
+
 /**
  * intel_dp_check_mst_status - service any pending MST interrupts, check link status
  * @intel_dp: Intel DP struct
@@ -5176,14 +5178,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 		if (ack[1] & (DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY))
 			drm_dp_mst_hpd_irq_send_new_request(&intel_dp->mst.mgr);
 
-		if (ack[3] & RX_CAP_CHANGED)
-			reprobe_needed = true;
-
-		if ((ack[3] & LINK_STATUS_CHANGED) || intel_dp->link.force_retrain)
-			intel_dp_check_link_state(intel_dp);
-
-		if ((ack[3] & DP_TUNNELING_IRQ) &&
-		    drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr, &intel_dp->aux))
+		if (intel_dp_handle_link_service_irq(intel_dp, ack[3]))
 			reprobe_needed = true;
 	}
 
@@ -5481,7 +5476,7 @@ static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_m
 	if (irq_mask & RX_CAP_CHANGED)
 		reprobe_needed = true;
 
-	if (irq_mask & LINK_STATUS_CHANGED)
+	if ((irq_mask & LINK_STATUS_CHANGED) || intel_dp->link.force_retrain)
 		intel_dp_check_link_state(intel_dp);
 
 	if (irq_mask & HDMI_LINK_STATUS_CHANGED)
-- 
2.44.2

