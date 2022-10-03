Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D17285F3410
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 19:01:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77B6A10E41B;
	Mon,  3 Oct 2022 17:01:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51C0610E43C
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 17:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664816511; x=1696352511;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=BAU0gC84rvBXkJYWMsECUTKbK8VQt8/4996dACIVH1k=;
 b=ZxXJnSRfkN3/XRbId2mbmhFyVrS7jzhHUToETNQwgELPtiLcLwpnEwSE
 pmtWvS/Ph6VWjiPJjBiziTFnmTnRc+3m3TxPLwDtS0da7Y5WIjZVukqhj
 n/BvyMnPmHif8yGHSEMt/YWq0BKuVbVVley8xO0Lalf9wB4pbWu6Jc0Pk
 lEqaXNJ2xvK34v6ruvWWe2KVM81t/EI2biOqaDlmb0216H+11QPWMPnDc
 9vRtvwkY3mavi79pydQxACQ2D+sfnuqwObrc5Vlc/UK7Ylo/MONBGJmlt
 8WokagSkGvOXPlEz5wFq3LcFELlq2emJfkhIO+HcebkJ/YCysrEHyrk8l w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="283061613"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="283061613"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 10:01:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="727844930"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="727844930"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 03 Oct 2022 10:01:28 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 10:01:27 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 3 Oct 2022 10:01:27 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 3 Oct 2022 10:01:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mP04+88t8A0a1inPJhX9QXzQVadD/brdBr9sLfPqzAqBubc7M76k8VsciAAzW1svTfwciTQWKa+/bqX5SM6JOliqhv/w4MDqPxQ6ZmaZFmg5FEM7uJwfJPaVnJE19SFqGfVZN+ycdz7MwvJA48ayzTK3PEBYTS0VA/GRscL0ZMq6eVsqqs64AUPpGOQBa0bh7GegpTQ3USwgVc9ykixdzi/nblmvK8JLJBZtfWoXJY8g5Tj3sp/8tW/vBb/ieLvQpKtE4aTyPS5Ge6nG41G7V8ZhOKjkCyFI/frjk46jXjR1QEDpMMlWiTGCKxyrdyMBnsIP/wHsDlnQgtA2qTHj0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=thsGNY98TalJdJjyzlld9eBpipGT3bNbNJrRl6mwyXQ=;
 b=NWOaLVHqL0VvYof9k4PNjprww+0qgdIUxPa4TkgCeVjTadqW7P2/sgE+AP2pddyGZsozOQ0VJs84uo3mNjrK2eabGD8F4ZGA+7nBC/Ikh6bUeuVzH47kiYe/jvKamAJvJJmRuxU7L15E+P67zSNIuBd4oofSr2eBVRqGm5vAOdCYkeqnIx++B/wdL8V0zRENqyFsBNKqKazrUM99pITxaSft90n3cfYHWDoKSuvTFhJdOB/AZcOAtowevTKwK+UD81KVFSae9S+9peJMkzPZs1xd8SyCCvIhagGp8Ry6fdRooeZgbymcjxnTnL6uIc/aIoQOU2biTNSm/a3SictiUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 PH0PR11MB4870.namprd11.prod.outlook.com (2603:10b6:510:34::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.24; Mon, 3 Oct 2022 17:01:24 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5676.028; Mon, 3 Oct 2022
 17:01:24 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Mon, 3 Oct 2022 22:30:24 +0530
Message-ID: <20221003170024.195223-8-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221003170024.195223-1-balasubramani.vivekanandan@intel.com>
References: <20221003170024.195223-1-balasubramani.vivekanandan@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PN2PR01CA0131.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:6::16) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|PH0PR11MB4870:EE_
X-MS-Office365-Filtering-Correlation-Id: 275a1f1a-1e0f-4c1a-07ec-08daa560e782
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CQri4FNqHd1LNDY4ZDArydu03zm3ZG89q9d/+OCnGE3qrF8KxSLi20Kwy2mPnKxbiM0SsHQMmi4lyOXlC0yYRIa7PbYeNhsnGQRB7ETMSMH44osIfxucPK2BvudcwNVT7KKdYURCFTmJ9NBiqd8njsfmbEb4oRXQLl3GFOc5gKAfKaXMvVjN8yzR9kQgqi8Xp0GCzU++6qKBXyypcQwD9Jyamotw4TNtlKz43tEXdj3RDMlyNvbY0Nmn5R7CFxwOpOlvr1oIi5LBX3102yvwJqUfL8R0LzoI1FGE7DBl8cOsbXmQdjwVrufzwhTR08ffRrDBSLSZnQTY1FODRo0IdGazRfoJP0NGDeIn24kMOTCOjpsbX/Ba8V3KNXE3h/BGBVh8LCeMymVb1PF8YjEl61vcAiawYPrkMdUU/dhGoIDeZJc0OeF1ZkCye0pTpt8rjofur1kUnn0LLp4mFfSQPMt6AxNxShn9IrSKR8dMyFqvqrfc2MiTDDDLU6JiX1GoMaATxNBmCgISKzfIAY2H1R9odmSanEPM5jnWXaMnwzJmKqiO2X05W5BY6zR315BIdur1/hQZnSdFfqIawKE5QMTnOQswQq6ApggnoO7Aij6v0GWOHSv+atFfRG5Q8NANjWZRPWMGUj7wNp0ysmSnxVfOF1d6ozMVKlBQTURRg/+bWWLTvyQ0pTmv19PgHj8xi6hMXc5Lx3rH44ayXJPufg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(136003)(39860400002)(376002)(366004)(451199015)(26005)(6916009)(6512007)(6506007)(41300700001)(54906003)(86362001)(66476007)(66556008)(66946007)(4326008)(83380400001)(36756003)(316002)(8676002)(1076003)(186003)(2616005)(8936002)(82960400001)(6486002)(44832011)(5660300002)(2906002)(478600001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xjR414FOoWrTqJFoKP43ICwrc452gcumRX6U4FTF32hMQzCRZX7XGX+qpQbO?=
 =?us-ascii?Q?cX//kmJXep1v2zDiJqNL26zChZfdkCwtyV0eNfYt9K1VzSU5cZpjUW3iNj2H?=
 =?us-ascii?Q?Y39Qw/3tUxD2ngdqMtMDXGD+xybg/hMudZHAGmUf8S0ghJZvmFodbQ7J7uaN?=
 =?us-ascii?Q?bs2jAUZ7Qzz2KNLDlwOkyPOjNF4dkfio+7oisdmy1yzpNIk46oc5Nl+g0wrU?=
 =?us-ascii?Q?0qyGpxWp4O28w1i+7PJ9/0nSyFV/1P1bTPjin8Ln9FdTk/JB0i2c7eTob1sA?=
 =?us-ascii?Q?Fa/JofcBunxjkl9ZuRsBpd+E9qLDzsowm0BQXww/AifWJrN2xBaHhQ7XdVTK?=
 =?us-ascii?Q?9asE71IcxVa+jKJPfsSeJ/8BVqdZVB8lA2HFfeheRkedtxLtjUWpH8ADgksf?=
 =?us-ascii?Q?H52L0/u8POKUgM8xYlhroPGj6KdJi7360a6II/YXzGp/i9FilaZs0vjL4Gkk?=
 =?us-ascii?Q?HSEK1+pqE5Ver7s3l+a+JHiKDWVYPb6C6M0tyny4Pg63FLds79eZ3JHALCuW?=
 =?us-ascii?Q?SQHXK0qYu6G3MyoE4OLVvV00X3UCIQONaGzJmXDeEBaWo3YE+bSnOchUi6j+?=
 =?us-ascii?Q?NEta8l3/5EVaWgW16eLCq3VyPULVbNRHqjrwvmRnEUnldWEFQqmePifmWUAb?=
 =?us-ascii?Q?SW3cXME8EqlgfseaKpx5VNHHFJxAY/60vruQ1q7XYVX9fvm/QE5heohf7AIi?=
 =?us-ascii?Q?GsPwBSpA59AHUJDpBz0E2b4sDaQUjEHDCGSgCWgI7nRSLPYVdaxhQhBDkQwp?=
 =?us-ascii?Q?mpWfdh9C/uvRiIqvD7g3LwHq+PpuJvapQRIVk9pd6sH/OSwAdA6RJ62yPZN6?=
 =?us-ascii?Q?YzJ5spOj7Q1xM6esLaQnj7Js68EAOP1wTLzU90c6cYZLZEnvq0EikWREu6X/?=
 =?us-ascii?Q?0NZUMscK0s12C48MUd74mVBlBfRYvI0o/NznfMSQv1V2np+hQ546+Vtbo2zi?=
 =?us-ascii?Q?WXfQ8DHz7IiJFCImaMnuSX+NUCIOl8oRyZeaQfLlKIPe23rr63weSQbc4/xj?=
 =?us-ascii?Q?ICiKtefvImN0EvJ63Gwl+X2xXlkaRMc5CfVWYlCdMiYGcJ5szw6pqqcPsth6?=
 =?us-ascii?Q?wCGebQuKFvw6OkCMyFxBxyMSYLskaV5gGBsoRcWGFgKx2McJejv0WCaqvsBW?=
 =?us-ascii?Q?YjFNbxqiUHMQLENctMJIQMh0T7RBrw82olQ/xlWIcuFSQIQS0+vOllIKgtcB?=
 =?us-ascii?Q?+xhLM2EpdUmjKLtVe72w8NBqR38VorYE+ejlhXL4uRz6cqVjhiGq4xoY8CkL?=
 =?us-ascii?Q?JET4qc3j9QIFHOp/RauPQCO6AbgE7dnpOzXF6MNPNqlIzl1aoH3s7PeYbcIp?=
 =?us-ascii?Q?ML2YQJ62C+Inz6KUAkfqdCWtO8rzVz6FYkQBE6YVzOVB7uzO4JGVAFdw9n4V?=
 =?us-ascii?Q?Q1kY8SxjNHhxfg9Fo31kTEhY19c4nz/+a51JLuSUNwW2u1cxOgeNjqW098t7?=
 =?us-ascii?Q?Q80AHnOL/xXImI/A1xRUAL+weexpIYEMMaJOBIMlCc21BTKQeZKWSd7GRMgS?=
 =?us-ascii?Q?YsMWnu/NZrBaFoLKnbDiC8bBUkEHz7+M/qtTjuJ9rOz4ECOJ5/O40Jq7rf9t?=
 =?us-ascii?Q?JYuCJFt01x2JMJy1EWtgzj5mVxX09A6HPj+QwVZVDE1b1y35Ysg6Z4WhwJRd?=
 =?us-ascii?Q?8rJ8msqPDUonROt6J1H8ZM8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 275a1f1a-1e0f-4c1a-07ec-08daa560e782
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2022 17:01:24.6785 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HbmPFmxEc+7NtCNzj5N/O/CZwCdEIHVqwi3iZlLhB4ZDB/gvcQqFsdN7jEOsMf9wJKMMvhGWr5VfssVfCwBFkZqBmv8Oaw3BgodRgksXy6ss0+eLWGcBZM1f6O7EsoYY
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4870
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v5 7/7] drm/i915/display: cleanup unused DDI
 port enums
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

DDI port enums PORT_G/H/I were added in the commit -
"6c8337dafaa9 drm/i915/tgl: Add additional ports for Tiger Lake" to
identify new ports added in the platform.
In the subsequent commits those ports were identified by new enums
PORT_TC1/TC2/TC3.. to differentiate TypeC ports from non-TypeC.
However, the enum definitions PORT_G/H/I and few usages of these enums
were left as it is.
These enums are unused as of today and can be removed.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c    | 3 ---
 drivers/gpu/drm/i915/display/intel_display.h | 9 ---------
 include/drm/i915_component.h                 | 2 +-
 3 files changed, 1 insertion(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index ab472fa757d8..b0dfb37e402a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2404,9 +2404,6 @@ static enum port dvo_port_to_port(struct drm_i915_private *i915,
 		[PORT_D] = { DVO_PORT_HDMID, DVO_PORT_DPD, -1 },
 		[PORT_E] = { DVO_PORT_HDMIE, DVO_PORT_DPE, DVO_PORT_CRT },
 		[PORT_F] = { DVO_PORT_HDMIF, DVO_PORT_DPF, -1 },
-		[PORT_G] = { DVO_PORT_HDMIG, DVO_PORT_DPG, -1 },
-		[PORT_H] = { DVO_PORT_HDMIH, DVO_PORT_DPH, -1 },
-		[PORT_I] = { DVO_PORT_HDMII, DVO_PORT_DPI, -1 },
 	};
 	/*
 	 * RKL VBT uses PHY based mapping. Combo PHYs A,B,C,D
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 4a5f7df7492b..5a55b9f43ce3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -208,9 +208,6 @@ enum port {
 	PORT_D,
 	PORT_E,
 	PORT_F,
-	PORT_G,
-	PORT_H,
-	PORT_I,
 
 	/* Non-TypeC ports must be defined above */
 	PORT_TC1,
@@ -244,12 +241,6 @@ static inline const char *port_identifier(enum port port)
 		return "Port E";
 	case PORT_F:
 		return "Port F";
-	case PORT_G:
-		return "Port G";
-	case PORT_H:
-		return "Port H";
-	case PORT_I:
-		return "Port I";
 	case PORT_TC1:
 		return "Port TC1";
 	case PORT_TC2:
diff --git a/include/drm/i915_component.h b/include/drm/i915_component.h
index 4b31bab5533a..335822d6960a 100644
--- a/include/drm/i915_component.h
+++ b/include/drm/i915_component.h
@@ -35,7 +35,7 @@ enum i915_component_type {
 /* MAX_PORT is the number of port
  * It must be sync with I915_MAX_PORTS defined i915_drv.h
  */
-#define MAX_PORTS 15
+#define MAX_PORTS 12
 
 /**
  * struct i915_audio_component - Used for direct communication between i915 and hda drivers
-- 
2.34.1

