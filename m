Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C145F340A
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 19:01:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C0C310E3A4;
	Mon,  3 Oct 2022 17:01:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4855710E38B
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 17:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664816459; x=1696352459;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=XOLKi1vsOYJB4SZ7AM8VI/WTq6cjwbTYRiwjlV5xi/o=;
 b=P2w180ZyRML2FbqUTZyxUrLUOMzexuJ1ODmxTQXuNl8GS2PCENMwOuub
 nKq3Bf0JHKINLt4Z9C+cwewp3GsANBoj9Iw1bJBcMI1+evuujxyHrBKXy
 LDP/dShpfHUJydkulWpKtqM0AjDk1xOyXDpJoSL0D7MVnrfd4CaINWM+3
 Q86y1br5LZ/kQbMH9WfrX8A4PgakO7IwaCMcyesYkOPrALOPax7lNcwXT
 h2TI+P8E02s/K9xcw1nKumbpNdK/0R6OnkK1qDrqVVhTGJV9UHKEKHpe0
 7i5AYinSOF2iw2QvKFmsduizd4BubLN7FtwJ/0A0VEdNKeXakb60gKROh w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="388982630"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="388982630"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 10:00:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="601296091"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="601296091"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 03 Oct 2022 10:00:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 10:00:57 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 10:00:57 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 3 Oct 2022 10:00:57 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 3 Oct 2022 10:00:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a4aQEF/qaAg3Dc+visDvS3TBvY4FsUvU/v7ET238eweON1FxoO2CgSOklzFj1vzCdW60mIYuWrMBYsVOXO6JkxZ7kBawnwZSbYjsHyI1rnIPG+B3zRaG8FhxUWmmyrJSi98ggqnGHsduuOnhVaI800/dSB8ma2skonY0Dw6ROujun97/OfM1HM2G8ws9EYtczxr/T1FxjY68VAUP4RCM6wX9MeORnsxgLhZNvDS3y3fK9gQsO2NhqUcMbpIlGUtWFPQ/cKGz8bar4dso22KEYO6KVQPimqsMuRKEVXh8nzoSnTHGNB6uxiSpUjqznOhXfCRQVpNIDT7f4CM5kt/sRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9AKEGV3JiZ9jz3RJp6JGA4JUwvxlEI6Jt12uKNBT8i0=;
 b=a5mehyaKmeAMgFqMreo4ZOcY3POiIk17TZjJCtQ4QuleBieckWOPfLgkVmM5TbWWo0iiuZbVIoTgOM2vslcwUqq4DeBgMb5MjFnNDKk1WHnl1NfHPz6jrYqpNFQk5ZOAHRuFXnCEOjVf3rjN3JrSa/Q0fuMYpcIypUrzarvOcqEiFtEpta6hqB9+b9S5lsC3F6lB8t9GWonWPH6/iK+Vu//94K5YbA6OS2aAa9DyqE6IfYAXZf2gIqpIH4PIqtZp0FAPQhwlOwhXi+lWhthjUQv3VyvK9grDvFzmWQluouJAtn4N7LOeFrv6zSmVYqDnTHDQf8jSd/oLfAVK16qIww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 PH0PR11MB4870.namprd11.prod.outlook.com (2603:10b6:510:34::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.24; Mon, 3 Oct 2022 17:00:55 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5676.028; Mon, 3 Oct 2022
 17:00:54 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Mon, 3 Oct 2022 22:30:20 +0530
Message-ID: <20221003170024.195223-4-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221003170024.195223-1-balasubramani.vivekanandan@intel.com>
References: <20221003170024.195223-1-balasubramani.vivekanandan@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PN2PR01CA0196.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::8) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|PH0PR11MB4870:EE_
X-MS-Office365-Filtering-Correlation-Id: e542b5b9-2e5a-4b88-a611-08daa560d57a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LYUCwXDBEOZaByU0ErGGiuBIxi6zHq/T3TrQL4VN19LLMg3EJYJRilDbjW+QyM+NDivJwvxsla3fF0fUzZgUwGSQmP75/3yRseLCYS6D7itUGc/Up46g2Yup9ziZpRUD8WoGxhWXqmFUbR5yEzyqBcSf/DwFQRwy1dupbrDvqTlkh1yNiokcUwFw7wolk9RKFHIRiaX5tlup2a705hdJdtwU8wwQRWyRG6Ky/9VFrgURS1NsXL+ReM3873jsxouTfi/uf+VRT75SCw3t029LmbYcBK4F9p50l5xb/FRxn0EmAK8Qu0htk6g8rcjDjl6VwLmMPROaSR9y8X8eObK7PwEqRpUMZ/Q896VzRXEw8nE7aOe5lfqnt0HIDzNSRtziGyB7E8Bn67BqJ4/JO3KNsXX7fv6t41Sm7985D6dZ6zcUpfrxU0UMgmw4HAiIN+bhBYzHU0mzmzvy1Bx4Lfysk49gxHLoX0s0CZa41Yo7II8vHMDZn2Orz7/+VIONBQ/5BQ6A4HjcPU6H6S750FPkFCgBVOtqukoFVhIx6M3CC1NH3DA9VewqmwmaAfYfD2eZvgs81v9jj4UvQ6oSQswIG5SaAJCPY3v+3M5TCL5Br4SM4NgfbLimg/n0PxF6BQecOWdw2F78XgY7p/oB4Wi6lG9qA//dRWC7sa6/eP/+WvurPa+Xz0L65nmmkbt+EEbSp1k1Z7yPvT4EQD3KmYpskQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(136003)(39860400002)(376002)(366004)(451199015)(26005)(6916009)(6666004)(6512007)(6506007)(41300700001)(54906003)(86362001)(66476007)(66556008)(66946007)(4326008)(83380400001)(36756003)(316002)(8676002)(1076003)(186003)(2616005)(8936002)(82960400001)(6486002)(44832011)(5660300002)(2906002)(478600001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lBIDL+DL1L6LlTFWJ9nhsvN1ucEYOAPkq6du4FrKC78BD1BcymtJNXlcyKkp?=
 =?us-ascii?Q?dteTE58OWwRfutEa5jjOPpPeap/5+zLbp640NekMvuDKzlKodbz1hm2dUE6G?=
 =?us-ascii?Q?fnmQJ6Q45K4VRVj6RcvqxNbUbfyeLjUnJmPI9R31dLINMhgBKJnyu1VcntuK?=
 =?us-ascii?Q?HpHwQM50n7vvMRuKGHek48y3zfu6O9S8ZntNCFm1pPqVzvcEzKFhOuk3u96f?=
 =?us-ascii?Q?zQVKvuED5CwMy50LpAHAd8i8CMoXxLabSc/XOiHBzYB1sIfwr3rSnknfa6vQ?=
 =?us-ascii?Q?Iy0m1sIg7Z/wD0RZgfjRnk67baxaeXGQETRMNXT7swhYROCwZcucMwxW52Wm?=
 =?us-ascii?Q?eWS3abUWc2huLMmUrJdt8AonbyFIvU/yOZkcg8BfzuueBqQ0uPQQA9lLFOLE?=
 =?us-ascii?Q?fD+qxCuXhzXM9PwMyzsqtkz8nL//l1f9Cj5L38yqGn+J02pl5lvznPiL4rtb?=
 =?us-ascii?Q?jcfhF1dTPVjWpNTEFzyIkNdss2g4L2cs4MiFSeyP2HHwKzZDVDGvspqOHq+W?=
 =?us-ascii?Q?uPAQIRXr+0b3uxxy1fxMLeHtG4jXw+8J0m3JJEiVdPBtPJSYn/AjcsJvRNRW?=
 =?us-ascii?Q?+9X0h0n2mLGQiLQeLmnlY620nTozERpwzQ+48Q/PkCIcA9I/HQoQR1KVm3NH?=
 =?us-ascii?Q?StAh+w+RI4qhmB7H0RKjmNBu42+gCdB0JArWOWAo/oLYq0kM05dq7+z2taSk?=
 =?us-ascii?Q?ljbI9UHCjR866JXIDNPRECuaWSOOpKlZk4MJpm05/iiD8D9QWmagHud3hUBT?=
 =?us-ascii?Q?T5men1lYrIjKapuxJelgToLiS0KH3VJypNytsxqMoOyb6spVQtEtIHAUl9oP?=
 =?us-ascii?Q?+dFS+ne8zdAg/sdtLDCuQa8sJHiuFDFEgQqbKvmRz6vC81obg1W1LVBRrVSH?=
 =?us-ascii?Q?R6hX+R69TLjDkzalHVjRAON57I89QdHzdk5RgqsFiEQfh84jfYWhHXToQalr?=
 =?us-ascii?Q?kk7CqPKyrR/KMx0jyFZjcBlT71CdMRjGW0kTF8Ttwd5E/Stl/9e4NC0iKUnX?=
 =?us-ascii?Q?O2j58+PHD8Y/+ShmEggKvRvWFdax5KuwxhfLHW987DS6rdkqeg5hZYnWu/br?=
 =?us-ascii?Q?QCjOvrKDqjl28VQO4hu6B/KdBvW8hDhH+3ooh2zex4HVtavuxbMGlmd0NaW2?=
 =?us-ascii?Q?+4W+GmF+G0fGz6+AMARPcAkSo6PMNtdm76QdYwR6HfaTx0WylUyg49VralGD?=
 =?us-ascii?Q?oHrIwdBzUHxMojmaoJQIi+ZjF3hBYJG3sdn9TY3ze9j6/Jm98sIB17XN6h+0?=
 =?us-ascii?Q?D0lExVM37vO12y5Q1YaD5fkSIjbf/lfa8zHz+SsnGticJwnYv/HVgdZVsDvU?=
 =?us-ascii?Q?2d4L3YlrjyVQmH+283OucCdDzH6OoXhGjh2kF4T4l/XsDn62miKCVG5267M7?=
 =?us-ascii?Q?u9a6wKGJPqBdQXzDg5et10KAF1uEmhGNN86qwu3fiBOwGnTwLGdAbIQF63s6?=
 =?us-ascii?Q?usQP3japaOmexnvDjM6+WchGSOvriQVPrKnG4X6UCN35/68G5v2bySegUCAw?=
 =?us-ascii?Q?fYs9ccHJQ0F70yugLbDlVJg8x4lwMj3XLf5HV4fQa9PCbwSbPcJj24LaaKtE?=
 =?us-ascii?Q?jtdy4uvcfAG0kt9vnxiBm86i2bpS7LgBGw9jKS606DXGAk/T3GK2rzp7tSLa?=
 =?us-ascii?Q?FHRQEJ4JNU7Teg6ig/wfAXo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e542b5b9-2e5a-4b88-a611-08daa560d57a
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2022 17:00:54.4937 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NVBqZ6ZKn2Ij99M3RV1T5ZQgeb2iEdOwPGuvbl31B7mN2i2f0CXYprUdFrEiFdiawNTary8fi0QdSdCNkXilwzRwtgYUCFzyVdku7Qf5rBMsku1Tf4uZzyCKQuDtjYKj
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4870
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v5 3/7] drm/i915/display: Define the DDI port
 indices inside device info
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

Prior to display version 12, platforms had DDI ports A,B,C,D,E,F
represented by enums PORT_A,PORT_B...PORT_F. The DDI register offsets of
the ports was in the same order as the ports. So the port enums
were directly used as index to calculate the register offset of the
ports.
Starting in display version 12, TypeC ports were introduced in the
platforms. These were defined as new enums PORT_TC1,PORT_TC2... The
later generation platforms had DDI register offests of TypeC and
non-TypeC ports interleaved and the existing port enums didn't match the
order of the DDI register offests. So the enums could no more be used as
index to calculate the register offest.
This led to the creation of new platform specific enums for the ports
like PORT_D_XELPD, PORT_E_XELPD to match the index of the ports in those
platforms and additional code to handle the special enums.

So we want to make the port enums not tied to DDI register offset and
use the index from somewhere else to calculate the register offsets.
The index of the DDI ports in the platform is now defined as part of
device info. This patch just adds the indices to the device info. Later
patches in the series use that index for offset calculation.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c          | 46 ++++++++++++++++++++++--
 drivers/gpu/drm/i915/intel_device_info.h |  1 +
 2 files changed, 44 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 38460a0bd7cb..b37a95755b77 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -132,6 +132,42 @@
 		[PIPE_D] = TGL_CURSOR_D_OFFSET, \
 	}
 
+#define GEN75_DDI_INDEX \
+	.display.ddi_index = { \
+		[PORT_A] = 0, \
+		[PORT_B] = 1, \
+		[PORT_C] = 2, \
+		[PORT_D] = 3, \
+		[PORT_E] = 4, \
+		[PORT_F] = 5, \
+	}
+
+#define GEN12_DDI_INDEX \
+	.display.ddi_index = { \
+		[PORT_A] = 0, \
+		[PORT_B] = 1, \
+		[PORT_C] = 2, \
+		[PORT_TC1] = 3, \
+		[PORT_TC2] = 4, \
+		[PORT_TC3] = 5, \
+		[PORT_TC4] = 6, \
+		[PORT_TC5] = 7, \
+		[PORT_TC6] = 8, \
+	}
+
+#define XE_LPD_DDI_INDEX \
+	.display.ddi_index = { \
+		[PORT_A] = 0, \
+		[PORT_B] = 1, \
+		[PORT_C] = 2, \
+		[PORT_TC1] = 3, \
+		[PORT_TC2] = 4, \
+		[PORT_TC3] = 5, \
+		[PORT_TC4] = 6, \
+		[PORT_D_XELPD] = 7, \
+		[PORT_E_XELPD] = 8, \
+	}
+
 #define I9XX_COLORS \
 	.display.color = { .gamma_lut_size = 256 }
 #define I965_COLORS \
@@ -562,7 +598,8 @@ static const struct intel_device_info vlv_info = {
 	.display.has_dp_mst = 1, \
 	.has_rc6p = 0 /* RC6p removed-by HSW */, \
 	HSW_PIPE_OFFSETS, \
-	.has_runtime_pm = 1
+	.has_runtime_pm = 1, \
+	GEN75_DDI_INDEX
 
 #define HSW_PLATFORM \
 	G75_FEATURES, \
@@ -733,7 +770,8 @@ static const struct intel_device_info skl_gt4_info = {
 	IVB_CURSOR_OFFSETS, \
 	IVB_COLORS, \
 	GEN9_DEFAULT_PAGE_SIZES, \
-	GEN_DEFAULT_REGIONS
+	GEN_DEFAULT_REGIONS, \
+	GEN75_DDI_INDEX
 
 static const struct intel_device_info bxt_info = {
 	GEN9_LP_FEATURES,
@@ -887,6 +925,7 @@ static const struct intel_device_info jsl_info = {
 		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET, \
 	}, \
 	TGL_CURSOR_OFFSETS, \
+	GEN12_DDI_INDEX, \
 	.has_global_mocs = 1, \
 	.has_pxp = 1, \
 	.display.has_dsb = 0 /* FIXME: LUT load is broken with DSB */
@@ -984,7 +1023,8 @@ static const struct intel_device_info adl_s_info = {
 		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET,			\
 		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET,			\
 	},									\
-	TGL_CURSOR_OFFSETS
+	TGL_CURSOR_OFFSETS,							\
+	XE_LPD_DDI_INDEX
 
 static const struct intel_device_info adl_p_info = {
 	GEN12_FEATURES,
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index bc87d3156b14..a93f54990a01 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -292,6 +292,7 @@ struct intel_device_info {
 		u32 pipe_offsets[I915_MAX_TRANSCODERS];
 		u32 trans_offsets[I915_MAX_TRANSCODERS];
 		u32 cursor_offsets[I915_MAX_PIPES];
+		u32 ddi_index[I915_MAX_PORTS];
 
 		struct {
 			u32 degamma_lut_size;
-- 
2.34.1

