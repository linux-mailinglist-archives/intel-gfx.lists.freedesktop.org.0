Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8DD5F43A5
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 14:54:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88BA310E5F4;
	Tue,  4 Oct 2022 12:54:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C394010E62A
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 12:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664888059; x=1696424059;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Yc/GUEpZydBZ7pwAHgwB5emfOno2c17NHzSRPUnxEfs=;
 b=SQeEPkcqSImZRVUUFNwuirmyEG/V16hKoXnybxQyYhHCxy+Ib3X8W2U9
 Eqdw0e+W7FHaxRJEq2XHpHQBL3B5lX0nErZBGdjQ4XU8TQjtLbY7CuD1r
 gg6mIM5TKzOIBs8MoOVlANAgwCqLnku+d2bM4vIWo6dNtee3Ng73b3sZ0
 p65xBXStzg0gHdf0wxPaKC6YME9wHE6l7CyLNDar88Ex6nbrtgUTzCar1
 4U1TBqvzek9TnYw8SW/7uiJSzKQZhAcRFg8PaIm7zG02wNOyzVKPlMkvg
 2KvmZLw8O0DEzODsIf7XW+Oy/t3kzAYpbh3xhdofRErJbGyTc3qyMgWMR w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="300501744"
X-IronPort-AV: E=Sophos;i="5.93,157,1654585200"; d="scan'208";a="300501744"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 05:54:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="619093339"
X-IronPort-AV: E=Sophos;i="5.93,157,1654585200"; d="scan'208";a="619093339"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 04 Oct 2022 05:54:18 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 4 Oct 2022 05:54:18 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 4 Oct 2022 05:54:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 4 Oct 2022 05:54:17 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 4 Oct 2022 05:54:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GNGQ+bgu27LsMZxoOai326ED6AEoDlEBnJpbljP2gCi4k6ud6RHXLYfieo79+4J4qfIoiY56L9IyvEQ+ZxzRsMTdZecxcc9Gk+ppdAlIFAL1jyaub2srl75vyG9Xfk90ud5vGyis1NWYm6UbNeudIHxIjSvFB7Rw+jJqqUYPFvmFKXuZKBA20KmN4dvibv6ydrpoekGoaluSLtLjJqKUo0bj0CBa/6YjJ+2wKfAEWt7kXGVhALo3h0BUdiGLQ5czNRnjXQ0naJNUK2/T81x1gIPu3eYD1nBPFtNx3t80QsDhtz54MqstWzRhmyy7BDagMz8M6wG1TFq8X8IPI6I6zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NV4dgGmsQlfAPf7NNyNMGP4/cZvb0EgFzwpiLBbqccc=;
 b=ccsr0XuVDhPB5vFQKmlevp4sBwDtfv2K2zqS7njUOTV20/rKLnJKByVzbug2cmY/35vTUCrV11nBiXec8BF433Sw1s7DsO/KTkJCy/ZGq/gsS6PUQX8ivs+yi+ynMYRQU0CxS52nwbRSw/woDpXe8qvI1tn2rfz7AmY0bQkZ5PCZFomZ0qUwoNGIfGi6AXJ5D6C99zYzvS1btGYX1Xrqp2/4QHjrHZNERSw5E5ARkHe5KL84m6dg+CURJhO+srUmQHtuxm612peiKd2tzV7K2eLtyn2hjSo+utOG3x6OVHjk/2vYNs7UIMUMuXsG/Q85UdAJtRI2CggNhJW04G2KZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.28; Tue, 4 Oct 2022 12:54:10 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5676.031; Tue, 4 Oct 2022
 12:54:10 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Tue, 4 Oct 2022 18:23:39 +0530
Message-ID: <20221004125344.228294-3-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221004125344.228294-1-balasubramani.vivekanandan@intel.com>
References: <20221004125344.228294-1-balasubramani.vivekanandan@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PN3PR01CA0129.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:bf::8) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|PH7PR11MB6053:EE_
X-MS-Office365-Filtering-Correlation-Id: e2029ad2-ca4a-4e25-92db-08daa607880a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rq1/zCtHjw5IRO+kwMWVf49weEpbVzozRj09nnb/5bAqmaW/9fQunlrgE+THrYWTaGqlZ3vaNDXYVOgkar6d3iyz+en6KbsGRKG0ufi93fIHIeeMI+qGd2O4zSXtGk3UHKYD1cZXB0Getv1zqMR6NHDFBHuwOIaMAJtYEioPBmSVqt6irNVp9eOeolze7hLZWWVlMl9j2XBDi2cmIJcKLa69gfjQDbEjnUQME9ZskA8o7L31edtuIm53XmZo3px5NxeXaVKNPGmowV01g8JAkMGjXeN7r8/LUeYrkRt7HarN7nK5VxQK06dXxP8q/wdAfLkom0ohog5H2ZUEfItBXHM7i3Nz5rnwnMbgl40sU89URBYuRJy1RQSvvBzAfcW/j6Uiybc9n0aCUYEiWmAN5dpPwRh1r+gp7wdutCilu7og18oxLwEn3sFHO/3CmEqA2Yf817pS04m+QeKn5yxpiNgdOBUC47xU61SYzFuZwN7wNzxTO1ojlh2SnXPLy8/2WRJeHGhj1WBNEfbWxKoOCC1pKKV/vRs593dnEIg4R1YOnvddE8kMuA25/b+IvQkcJWAJykrJuEk5cEcsFAt8shNuyZfIg3ebJYxY3Xu9rem9p6BqlMfJ//q3tGeG8o11lZmdoDA8OVNFr8tfWlHY+M1triWChGXCahEA8YbyRSbNFKWqj08ScI6dt/aK0nLIXl45ZRDkts+o8wYCW8g/CA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(39860400002)(136003)(376002)(346002)(451199015)(186003)(38100700002)(6506007)(44832011)(26005)(2616005)(83380400001)(1076003)(82960400001)(5660300002)(2906002)(41300700001)(8936002)(478600001)(6512007)(4326008)(6666004)(8676002)(6486002)(66556008)(66476007)(66946007)(316002)(36756003)(6916009)(54906003)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7TeB1t6oSAVps/4ZIzZ1tnpaSvE5/39GM6XDQgWpGnKpF/ch/Nm2LOBpT8vO?=
 =?us-ascii?Q?qKhhykZeGvbDO8WIYKTrdr2Nb90wZIuwAZQmvYx6nuOVo5Xrvq+5mYTrvvm6?=
 =?us-ascii?Q?buW/w4cryhhf5p7kLolPCpywXbljn1rI8FHtTygzS0cWtY8pETVNg28Cfh9/?=
 =?us-ascii?Q?bH5Iv4qe2YV8cl6UB2EEtaiOUb5TuXs0STLMlvr5NDz7ne9Zfl0QdN3ypgel?=
 =?us-ascii?Q?S5sOAegqS5JEfhBPUf7Ln90c79gBOm/5sWJ+QCv245yQ6m3VxaPD/bZLgWyB?=
 =?us-ascii?Q?BtMhN92c7CuoQYs4UDwtWFSfPTA/PQyW2UnWDPOn5TvUy3l3auJz9q+q5eOF?=
 =?us-ascii?Q?carRowEcJcmetFneI5tDxbGfUIEfOiqESSVsHpNFyjkE1RfDuHDo7bPA+jZq?=
 =?us-ascii?Q?d0RuCqYnfDwqhlz/TluRvkbKaV6qeLUV/dBGQNJ1t2S7JDbUtn87z6W4lE/a?=
 =?us-ascii?Q?BHhhNUWirDdaxLkwxlutA1/FKMT+HtOYQm052d2xF9k0jszaAsD+uN4Xl83m?=
 =?us-ascii?Q?CuW5WmRB/AKyv//+lmSCDMpswvGSD0m+0cntChklBTiCFAeYWQXZ8kZo48ie?=
 =?us-ascii?Q?qL8jpepT///M7Er5oSc+/KCqAzYA+JfFNqGX+vymfAkCmX1K3pkQJZDQEfLo?=
 =?us-ascii?Q?qZ7foPXyRxv9u8HgWMVH8tXPgICiS4DXoRzFgsZwDQquNXr6QOGCaigfVlt9?=
 =?us-ascii?Q?ktKuE8LLY4bxkFZZ1vzqbebHMNHx56bfSh9UM/UQZTxdUd0KFLKUZFIjwovG?=
 =?us-ascii?Q?BahahNWryLQoQrQNAuvoWkJaIfDlolnjDbwl6RmMIcfeSratVufuvSLcFMnv?=
 =?us-ascii?Q?nHS6Oq4OqyGKpZ9+ZOfmRoBboiT5YHjFwHpVHw4kGUH9xiKmdHDc5Ici7Q4n?=
 =?us-ascii?Q?gxLlvZJyggdF/y4/tp43BcrpiMtPzMz3lfrM0Rp+xcVO9f3aSjpnQGH0n3qq?=
 =?us-ascii?Q?OCtQYQjVC9IB7jo4ut6J82GOW3IRlBdaOvLPMxmjZAdtORqxDOfK6EqJGGMG?=
 =?us-ascii?Q?MRsCoOF7gsDvEQzGIR8b9JZxrwbSWMaFrN73zhZLSJmvHHFvE9zMT9bWvYxo?=
 =?us-ascii?Q?HC10/mU51OoqlRj9mQWv5wF46jvHQ+MzE+O8GHxtkMFFn5TSb6pnH++jnRge?=
 =?us-ascii?Q?B48ELBUuI0f46njFKyNjI3otu3rn/JQzAOCtIwpFQUy6Gk99tU90jwSDntsf?=
 =?us-ascii?Q?pzeloHs1uFacs6juJUyK3dhtQXKTbNI8UaBIpNzpz3+clSdvUoHbc23adAi3?=
 =?us-ascii?Q?w+zxkAw/5wqfgcrrQfEs53n+GGJ563QULXiTXw/AaG4H2iW+R3F+UYJAN26o?=
 =?us-ascii?Q?WUQPSefhIl6MNVHWgRIFrCmjIvPSD2VW634MgqHN98bI8eB0DmdDz9gA7LyD?=
 =?us-ascii?Q?6fHOVlxpwgUO9mH/rGW5ZSg7VjZ+XjHu4c4+B5vYNBZrelAREJP9pRtsScdo?=
 =?us-ascii?Q?dM7bkCSqrfrwL+WCIAjUD/FmkmVLhg6D/kpQE15PimuiZGmqk81QeDVo1ZvW?=
 =?us-ascii?Q?2wToVqP5yMHYJVLBqKuH48dgIOg4XhKNpzR8ZlPJC2mIlEDFCvOKmrlRdXne?=
 =?us-ascii?Q?ohbBXuk0Gp675Skw6jdtfZqRsrVbkZU2Yp1TY4vNeqE/zX3rmPlPopu8oDfW?=
 =?us-ascii?Q?pIDAWanagMSdlTXjeuMFUO8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e2029ad2-ca4a-4e25-92db-08daa607880a
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2022 12:54:10.4816 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UczC7AQtXyKi8w2cohHhTXicmhIY/DZl4mpOFtHytSDN0/5lblONNb4w3wulXAegcWCiaNBayZFQ47hDYbS1gIcq2GaIJboi5ysGR5TzypFqwLJrMAP4+ZltRXQGeRxI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6053
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v6 2/7] drm/i915/display: Pass struct
 drm_i915_private to DDI_CLK_SEL macro
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

DDI_CLK_SEL is an another macro which returns the register offset based
on DDI port enum. So DDI_CLK_SEL has to be prepared for the new method
being developed for calculating the register offsets of DDI ports.
Macro receives i915 private structure as new parameter for the upcoming
changes.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 17 +++++++++--------
 drivers/gpu/drm/i915/i915_reg.h          |  5 ++++-
 2 files changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 77a986696c76..e7beafafb857 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -305,7 +305,8 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
 static int icl_calc_tbt_pll_link(struct drm_i915_private *dev_priv,
 				 enum port port)
 {
-	u32 val = intel_de_read(dev_priv, DDI_CLK_SEL(port)) & DDI_CLK_SEL_MASK;
+	u32 val = intel_de_read(dev_priv, DDI_CLK_SEL(dev_priv, port)) &
+			DDI_CLK_SEL_MASK;
 
 	switch (val) {
 	case DDI_CLK_SEL_NONE:
@@ -1656,7 +1657,7 @@ static void jsl_ddi_tc_enable_clock(struct intel_encoder *encoder,
 	 * "For DDIC and DDID, program DDI_CLK_SEL to map the MG clock to the port.
 	 *  MG does not exist, but the programming is required to ungate DDIC and DDID."
 	 */
-	intel_de_write(i915, DDI_CLK_SEL(port), DDI_CLK_SEL_MG);
+	intel_de_write(i915, DDI_CLK_SEL(i915, port), DDI_CLK_SEL_MG);
 
 	icl_ddi_combo_enable_clock(encoder, crtc_state);
 }
@@ -1668,7 +1669,7 @@ static void jsl_ddi_tc_disable_clock(struct intel_encoder *encoder)
 
 	icl_ddi_combo_disable_clock(encoder);
 
-	intel_de_write(i915, DDI_CLK_SEL(port), DDI_CLK_SEL_NONE);
+	intel_de_write(i915, DDI_CLK_SEL(i915, port), DDI_CLK_SEL_NONE);
 }
 
 static bool jsl_ddi_tc_is_clock_enabled(struct intel_encoder *encoder)
@@ -1677,7 +1678,7 @@ static bool jsl_ddi_tc_is_clock_enabled(struct intel_encoder *encoder)
 	enum port port = encoder->port;
 	u32 tmp;
 
-	tmp = intel_de_read(i915, DDI_CLK_SEL(port));
+	tmp = intel_de_read(i915, DDI_CLK_SEL(i915, port));
 
 	if ((tmp & DDI_CLK_SEL_MASK) == DDI_CLK_SEL_NONE)
 		return false;
@@ -1696,7 +1697,7 @@ static void icl_ddi_tc_enable_clock(struct intel_encoder *encoder,
 	if (drm_WARN_ON(&i915->drm, !pll))
 		return;
 
-	intel_de_write(i915, DDI_CLK_SEL(port),
+	intel_de_write(i915, DDI_CLK_SEL(i915, port),
 		       icl_pll_to_ddi_clk_sel(encoder, crtc_state));
 
 	mutex_lock(&i915->display.dpll.lock);
@@ -1720,7 +1721,7 @@ static void icl_ddi_tc_disable_clock(struct intel_encoder *encoder)
 
 	mutex_unlock(&i915->display.dpll.lock);
 
-	intel_de_write(i915, DDI_CLK_SEL(port), DDI_CLK_SEL_NONE);
+	intel_de_write(i915, DDI_CLK_SEL(i915, port), DDI_CLK_SEL_NONE);
 }
 
 static bool icl_ddi_tc_is_clock_enabled(struct intel_encoder *encoder)
@@ -1730,7 +1731,7 @@ static bool icl_ddi_tc_is_clock_enabled(struct intel_encoder *encoder)
 	enum port port = encoder->port;
 	u32 tmp;
 
-	tmp = intel_de_read(i915, DDI_CLK_SEL(port));
+	tmp = intel_de_read(i915, DDI_CLK_SEL(i915, port));
 
 	if ((tmp & DDI_CLK_SEL_MASK) == DDI_CLK_SEL_NONE)
 		return false;
@@ -1748,7 +1749,7 @@ static struct intel_shared_dpll *icl_ddi_tc_get_pll(struct intel_encoder *encode
 	enum intel_dpll_id id;
 	u32 tmp;
 
-	tmp = intel_de_read(i915, DDI_CLK_SEL(port));
+	tmp = intel_de_read(i915, DDI_CLK_SEL(i915, port));
 
 	switch (tmp & DDI_CLK_SEL_MASK) {
 	case DDI_CLK_SEL_TBT_162:
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a91bbc6e1255..acb764755338 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7075,7 +7075,10 @@ enum skl_power_gate {
 #define  PORT_CLK_SEL_NONE		REG_FIELD_PREP(PORT_CLK_SEL_MASK, 7)
 
 /* On ICL+ this is the same as PORT_CLK_SEL, but all bits change. */
-#define DDI_CLK_SEL(port)		PORT_CLK_SEL(port)
+#define DDI_CLK_SEL(i915, port)		({ \
+						(void)i915; /* Suppress unused variable warning */ \
+						PORT_CLK_SEL(port); \
+					})
 #define  DDI_CLK_SEL_MASK		REG_GENMASK(31, 28)
 #define  DDI_CLK_SEL_NONE		REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0x0)
 #define  DDI_CLK_SEL_MG			REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0x8)
-- 
2.34.1

