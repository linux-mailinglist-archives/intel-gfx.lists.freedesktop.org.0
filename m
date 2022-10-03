Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FBC5F2F4A
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 13:08:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2BCA10E303;
	Mon,  3 Oct 2022 11:08:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D93610E303
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 11:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664795299; x=1696331299;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=pRHK5vO/PwOmhnsvMWUiYBRyxrfj8LiJrAN6K1wdhIU=;
 b=f7Tum+7nzzC7LZKZfP1ehXR/2Z1LOsxLBIEtC6n9qzHReh0kE7TXh9J7
 JRhxBC14gaTu3K9Fcmt6HjyxiImbqRntetGjiJ1mjPzy9Vms324IkckbZ
 CrxohZQn3OS4C8z3MIltHgd/xeDrZNmy4jshIwctFnRtCIBCsFp59vdV1
 N7QetEIxMBiXAIB6ZgQVnN+8CVYKCHr+Km8FvhlDqQHEL+J0DSDaqQziX
 6f0tBpP76sk4dMwXQwWhtJQ64nCpqktufWzxTE/R2zIqUJdtO0CYi3AwE
 cTtfKwo+TD8OyMo9TxuWbSTvVcaPX46j31RrV9/6gEQdVXoqBzEZtrW5z g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="300208912"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="300208912"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 04:08:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="727715955"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="727715955"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 03 Oct 2022 04:08:19 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 04:08:18 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 3 Oct 2022 04:08:18 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 3 Oct 2022 04:08:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gSxcH/yztDDgvRMoKLd37O0gkDj4Yh+twOVIuru5AhZN7dOwD9rVocMZCB6TqAvb9YATBkEhE8pz1i+KPTHdAAItBlb51oq8QmtL4wJP1AeV/5NmsZTCwkcHZy8gZgRX03ShXeda4qIMi8c7yZpv/oQv6T35cRafYak2m1mhT3SYp1T4JCPCGVjaJnwSUju/idLVnnw8ad3oomJdoi/ayLhogZ+XKBLfdf/+KF2vDehHH2+TaRHT3PtlnfuYSnhCzoHn84LNdpwVWmPFeRPS8kxunnzYCdHTccj7x5v5624N2rMmfvhurwW8jHbaMWGwHSZyRHO3sJox/1NJBK5y1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KhmdwEkC3ReYFZupqGWRqjCzUKtdikn44PGDSRK/+ng=;
 b=gUA42YlaqqN+mmYmjQ3/a71WoEIlAjbL/cjOviin2vg26lJYSiQ5EYfScArbN4SiwQFy6vhsU1t2QI0WHpt54uIDkUFnrL4fzvSG8Um00lhJBML861DQty9ecig2+gBmIYuwRsIewuM7PcTwTWaS+HtdtJdLvLaODwIB7QI905uJJvqFYx1V/STeqxo00D/P4kf85dVK38R93IBmZ+8DHJubZwJTBV1Ze9J5DCAVgvYaJ7EjzxSiWa9xdJgY8X6dbg4YS5kw6M/2BFy0AXTcHKb76AalfKx5l4jNEGqxgFSWIEhvYOs7evAK9UZSt8d/XQGmMkEB/+QGkaWlBEWluA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 PH7PR11MB6476.namprd11.prod.outlook.com (2603:10b6:510:1f0::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.28; Mon, 3 Oct
 2022 11:08:16 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5676.028; Mon, 3 Oct 2022
 11:08:14 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Mon, 3 Oct 2022 16:37:54 +0530
Message-ID: <20221003110759.140398-2-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221003110759.140398-1-balasubramani.vivekanandan@intel.com>
References: <20221003110759.140398-1-balasubramani.vivekanandan@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PN2PR01CA0206.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::17) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|PH7PR11MB6476:EE_
X-MS-Office365-Filtering-Correlation-Id: a803dd74-c6be-426f-6402-08daa52f9149
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hn5akghwBKxsbE1NBMIwOnRou+vYnoP1DNHoeE0gOBdCC7EbYx7907RbhhHei1634ks1O1lAg5WWZJ+4UHLV/2oO3VF2oHpt3CQ85kcNeW5HKtOj7agviztQv+z5adD2CoKQ1cnrr3TpQwBxiuWso4uMZZ1DKtUDw8uTzJz4a3jHpgkeP+ImnGt24Ww8/l058Wlnn7LZSjvI8BeckYuzNs3+fuX8ihToWd0Ebzp5iv3mw/1KZspAxgWx8SqVjoU212blbzoPTnFavR6fXEa7asb5uct33D2KFXaSqI52TIDFrSWIY+WRXrM74EImXNDVBrfzDT1HK+1paBpzHjVFggkBUhcUtbOIG8RqvbYN3nUoeGsPDdtOkw/eERyxLOZbonpCf9X6iPu6HYt83DL5egaqkFLQTOtY5MogXEzP15oiik47QKnU+FiRSJ4kJELIzvs+myKV1H7lUKmZYhjwlMH/CGBz63UICsp1a3+wh/jEIVij6jyTQ2fEzxOdvuCjmgfkbtAD4Q9Gg2Ok/HQBqcufalFKhyoiB3AO2HWWCGrRsVl+NueEmgFwwsjTqaweBxQaFI4ZyNJrli/X0uIqdeS1fMkeeeA0QRZG+zjo7joilNRKyvy+UFlyCzDtVX8zbFU9JubOvilAGdtf3fxtuuBtePf6uT8pHXi6LCvNUDIgpn5Sdz4CazpeAHt40V6aWZBorST+jXtzGiTG2n0+dw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(136003)(346002)(376002)(39860400002)(451199015)(26005)(54906003)(36756003)(6666004)(8936002)(5660300002)(44832011)(6512007)(6506007)(30864003)(478600001)(6486002)(2906002)(82960400001)(38100700002)(2616005)(1076003)(186003)(86362001)(83380400001)(4326008)(316002)(8676002)(66946007)(66476007)(66556008)(41300700001)(6916009);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VAeV5eZ9onPfzhsjApCeptdR+y3wgOg6ImgFTumhx36ar+aVaGGAQEzKS6Qi?=
 =?us-ascii?Q?QJev4ISRS28iI95uJMs4XmrIgO89/DpDDHeI9Kpu8SsRuWhng/scCzEhBpJ6?=
 =?us-ascii?Q?WJn1/sl69XVjj6zoZ0Wmf6cUJzq86LqAGITSwQj3xVSePfRFiOycN5SLUTXK?=
 =?us-ascii?Q?GyTIganFJws+lAQihsCKypDFePbUh+LMdIubkv9l3LiSDkcc26QBKqH46Pdp?=
 =?us-ascii?Q?5f68VVEQosHJz5P2X4kSubTc3LRwPqPT711N7Dy6KYVDNki8uubccBcp6YGt?=
 =?us-ascii?Q?fnxYyU/gB/LjtiZqVpHVJuT+gQywhY1b5S3ptDU9H9l0vpGTc9w8aGyz5ZbL?=
 =?us-ascii?Q?6id90i1rerDHSAO3LtUgzdMMl/Wb+lz5VS9y8b/iH2GBJfBNCbq/E6qbWSAW?=
 =?us-ascii?Q?QfvyOQp6Bi6wC04MbwPd/9u1xMNnIcW15ao9fy5Se4eAtitxYiH+bc7hwY/Y?=
 =?us-ascii?Q?Q5gRp8oMAPL8d0TZbRfvZu6KYb+xN/nVLkyAGE9N2xRebjwo0spU9fdV9/rJ?=
 =?us-ascii?Q?u4M6ncSAqLwLhW6RbDsWcxORiWVneqUN+F9D0DmJzKRZlMrGfi35es9yhL/I?=
 =?us-ascii?Q?fPfnftLajpFwrWg59P/rWF/AuXEhaLr7HJFIC0mIwdysGfX6Cgq3h0rCu4Xl?=
 =?us-ascii?Q?0I+7L4Dk+89M5in3n49Vtj56xFsV7a8otcVqLjrKXrtc1goVNQFFzBGV70SQ?=
 =?us-ascii?Q?H/m+BJ9GJ31tDVlhiBVEPdQZy819LJ0gXGWMprgqTU1CWwhAFuDsWOV6mdLt?=
 =?us-ascii?Q?4JStogC7/XqYVB7vZkE5IEof4UuOZ+5khbGshh8R/5InBIcgoAzq7Ol+7ZFx?=
 =?us-ascii?Q?iHt3wZJxK/f2fEKzZTWc6nH6eBC6RDgdM3nk0siQ1xB+bZ5TN1O+/UEbSp3a?=
 =?us-ascii?Q?zDWi1G0qQTmutFlo3ZQrr4xB76mFvViCv/1xOnlxhUfLMU7tY4P56E4L82cn?=
 =?us-ascii?Q?tlrOTiS7h0AnoOm2kyZxziR3L0FA/EJ2m6URYI4gJ4M01CpNwhZnYJB5Em4C?=
 =?us-ascii?Q?c0cPuhlyGS0PNEo8YkzzWUGYKwbwJyftlbHYreBC1dyOq8wx7eRwpPPI4+wc?=
 =?us-ascii?Q?vmq1ZurXzCi1RaPgBSKX6g1CLdMJAdD788dT18gNaxfBxzEkpJebKZHqEHkd?=
 =?us-ascii?Q?ls71JIkuHxQr65+hmr0/3fW34Y1iby4DfVjSYl5qAH39Il9Vx1/JPBNNRv5t?=
 =?us-ascii?Q?D9ZTLlirNP+hrVlgfZk62umjdqUx46SnMDytnFFkQJjHiGT6woBmRv+YZUi+?=
 =?us-ascii?Q?ShOwv9KZ5vhVmRzYOgglPcVojcTKCKCqqE2D5vB1liZTiI7bMyFOA1sQsiGR?=
 =?us-ascii?Q?CU8MSMSGUKpowg2i7w9QP+fqSbvJMsU/wc7WAcf8jj66PY913d2yg1VqwiKP?=
 =?us-ascii?Q?BgqebxlgEj7Y3u91fKrCVG49s2bncoJmw5KjNKTi4NvgarR6at1PCaOmwBsB?=
 =?us-ascii?Q?RXbmC7Icpg/OQk+/T6bqKfVMwuAHp323XRY4uYpljt/1089fShz7iYZyIghl?=
 =?us-ascii?Q?WZNJOFpYdntNvtW4rf9TbOgE8a7d1R6Rba10dCnDM0UrG3bF2htiKvd1ToFK?=
 =?us-ascii?Q?KxVf/Mf6JRnqHhWDKQVPL1KAKh/l7A3s7iu0wbLK+JFx/zMOPVH60q/eBRFR?=
 =?us-ascii?Q?/MtLf9sqrqfflVCz9871Ph0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a803dd74-c6be-426f-6402-08daa52f9149
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2022 11:08:14.9491 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DrD8v8RWMMtMl7Kw6sH2zN1BljBIFl3hI3gRSMDErkkVk80wREyCtIWoMARGzwYBFwKCjNPu6pzthUKULvnWE5cymB/k7+RtiH/Nu0uC99jD8wvxo8FFUnM5LQ0Tj2rC
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6476
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v4 1/6] drm/i915/display: Pass struct
 drm_i915_private to DDI_BUF_CTL macro
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

This is a prep patch for a patch series in which register offset of the
DDI ports are not calculated using the port enums but using a different
datastructure part of the device info.
So the device info is passed as a parameter to the macro DDI_BUF_CTL but
unused yet.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c       | 12 +++---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 39 +++++++++++---------
 drivers/gpu/drm/i915/display/intel_display.c |  6 ++-
 drivers/gpu/drm/i915/display/intel_fdi.c     | 14 +++----
 drivers/gpu/drm/i915/display/intel_tc.c      |  6 +--
 drivers/gpu/drm/i915/gvt/display.c           | 30 +++++++--------
 drivers/gpu/drm/i915/gvt/handlers.c          | 17 +++++----
 drivers/gpu/drm/i915/i915_reg.h              |  6 ++-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c  | 10 ++---
 9 files changed, 76 insertions(+), 64 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 47f13750f6fa..f7c1f6561423 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -548,11 +548,11 @@ static void gen11_dsi_enable_ddi_buffer(struct intel_encoder *encoder)
 	enum port port;
 
 	for_each_dsi_port(port, intel_dsi->ports) {
-		tmp = intel_de_read(dev_priv, DDI_BUF_CTL(port));
+		tmp = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
 		tmp |= DDI_BUF_CTL_ENABLE;
-		intel_de_write(dev_priv, DDI_BUF_CTL(port), tmp);
+		intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port), tmp);
 
-		if (wait_for_us(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
+		if (wait_for_us(!(intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port)) &
 				  DDI_BUF_IS_IDLE),
 				  500))
 			drm_err(&dev_priv->drm, "DDI port:%c buffer idle\n",
@@ -1400,11 +1400,11 @@ static void gen11_dsi_disable_port(struct intel_encoder *encoder)
 
 	gen11_dsi_ungate_clocks(encoder);
 	for_each_dsi_port(port, intel_dsi->ports) {
-		tmp = intel_de_read(dev_priv, DDI_BUF_CTL(port));
+		tmp = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
 		tmp &= ~DDI_BUF_CTL_ENABLE;
-		intel_de_write(dev_priv, DDI_BUF_CTL(port), tmp);
+		intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port), tmp);
 
-		if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
+		if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port)) &
 				 DDI_BUF_IS_IDLE),
 				 8))
 			drm_err(&dev_priv->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 971356237eca..77a986696c76 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -172,7 +172,7 @@ void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
+	if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port)) &
 			 DDI_BUF_IS_IDLE), 8))
 		drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c to get idle\n",
 			port_name(port));
@@ -189,7 +189,7 @@ static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	ret = _wait_for(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
+	ret = _wait_for(!(intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port)) &
 			  DDI_BUF_IS_IDLE), IS_DG2(dev_priv) ? 1200 : 500, 10, 10);
 
 	if (ret)
@@ -730,7 +730,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 	if (!wakeref)
 		return;
 
-	tmp = intel_de_read(dev_priv, DDI_BUF_CTL(port));
+	tmp = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
 	if (!(tmp & DDI_BUF_CTL_ENABLE))
 		goto out;
 
@@ -1397,8 +1397,8 @@ hsw_set_signal_levels(struct intel_encoder *encoder,
 	intel_dp->DP &= ~DDI_BUF_EMP_MASK;
 	intel_dp->DP |= signal_levels;
 
-	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
-	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
+	intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port), intel_dp->DP);
+	intel_de_posting_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
 }
 
 static void _icl_ddi_enable_clock(struct drm_i915_private *i915, i915_reg_t reg,
@@ -2577,10 +2577,10 @@ static void intel_disable_ddi_buf(struct intel_encoder *encoder,
 	bool wait = false;
 	u32 val;
 
-	val = intel_de_read(dev_priv, DDI_BUF_CTL(port));
+	val = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
 	if (val & DDI_BUF_CTL_ENABLE) {
 		val &= ~DDI_BUF_CTL_ENABLE;
-		intel_de_write(dev_priv, DDI_BUF_CTL(port), val);
+		intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port), val);
 		wait = true;
 	}
 
@@ -2909,7 +2909,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 		drm_WARN_ON(&dev_priv->drm, !intel_tc_port_in_legacy_mode(dig_port));
 		buf_ctl |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 	}
-	intel_de_write(dev_priv, DDI_BUF_CTL(port), buf_ctl);
+	intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port), buf_ctl);
 
 	intel_audio_codec_enable(encoder, crtc_state, conn_state);
 }
@@ -3113,9 +3113,9 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	dp_tp_ctl = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
 
 	if (dp_tp_ctl & DP_TP_CTL_ENABLE) {
-		ddi_buf_ctl = intel_de_read(dev_priv, DDI_BUF_CTL(port));
+		ddi_buf_ctl = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
 		if (ddi_buf_ctl & DDI_BUF_CTL_ENABLE) {
-			intel_de_write(dev_priv, DDI_BUF_CTL(port),
+			intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port),
 				       ddi_buf_ctl & ~DDI_BUF_CTL_ENABLE);
 			wait = true;
 		}
@@ -3145,8 +3145,8 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 		adlp_tbt_to_dp_alt_switch_wa(encoder);
 
 	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
-	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
-	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
+	intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port), intel_dp->DP);
+	intel_de_posting_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
 
 	intel_wait_ddi_buf_active(dev_priv, port);
 }
@@ -3823,13 +3823,15 @@ static struct intel_connector *
 intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 {
 	struct intel_connector *connector;
-	enum port port = dig_port->base.port;
+	struct intel_encoder *encoder = &dig_port->base;
+	enum port port = encoder->port;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 
 	connector = intel_connector_alloc();
 	if (!connector)
 		return NULL;
 
-	dig_port->dp.output_reg = DDI_BUF_CTL(port);
+	dig_port->dp.output_reg = DDI_BUF_CTL(i915, port);
 	dig_port->dp.prepare_link_retrain = intel_ddi_prepare_link_retrain;
 	dig_port->dp.set_link_train = intel_ddi_set_link_train;
 	dig_port->dp.set_idle_link_train = intel_ddi_set_idle_link_train;
@@ -4061,12 +4063,13 @@ intel_ddi_init_hdmi_connector(struct intel_digital_port *dig_port)
 {
 	struct intel_connector *connector;
 	enum port port = dig_port->base.port;
+	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 
 	connector = intel_connector_alloc();
 	if (!connector)
 		return NULL;
 
-	dig_port->hdmi.hdmi_reg = DDI_BUF_CTL(port);
+	dig_port->hdmi.hdmi_reg = DDI_BUF_CTL(dev_priv, port);
 	intel_hdmi_init_connector(dig_port, connector);
 
 	return connector;
@@ -4102,7 +4105,7 @@ intel_ddi_max_lanes(struct intel_digital_port *dig_port)
 		return max_lanes;
 
 	if (port == PORT_A || port == PORT_E) {
-		if (intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_A_4_LANES)
+		if (intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_A)) & DDI_A_4_LANES)
 			max_lanes = port == PORT_A ? 4 : 0;
 		else
 			/* Both A and E share 2 lanes */
@@ -4464,11 +4467,11 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 
 	if (DISPLAY_VER(dev_priv) >= 11)
 		dig_port->saved_port_bits =
-			intel_de_read(dev_priv, DDI_BUF_CTL(port))
+			intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port))
 			& DDI_BUF_PORT_REVERSAL;
 	else
 		dig_port->saved_port_bits =
-			intel_de_read(dev_priv, DDI_BUF_CTL(port))
+			intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port))
 			& (DDI_BUF_PORT_REVERSAL | DDI_A_4_LANES);
 
 	if (intel_bios_is_lane_reversal_needed(dev_priv, port))
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3ffd8fc0b05c..8681055843f0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7884,7 +7884,7 @@ static bool intel_ddi_crt_present(struct drm_i915_private *dev_priv)
 		return false;
 
 	/* DDI E can't be used if DDI A requires 4 lanes */
-	if (intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_A_4_LANES)
+	if (intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_A)) & DDI_A_4_LANES)
 		return false;
 
 	if (!dev_priv->display.vbt.int_crt_support)
@@ -7970,7 +7970,9 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 			intel_crt_init(dev_priv);
 
 		/* Haswell uses DDI functions to detect digital outputs. */
-		found = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
+		found = intel_de_read(dev_priv,
+				      DDI_BUF_CTL(dev_priv, PORT_A)) &
+				      DDI_INIT_DISPLAY_DETECTED;
 		if (found)
 			intel_ddi_init(dev_priv, PORT_A);
 
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 7f47e5c85c81..d3d92ac26099 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -818,9 +818,9 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 		 * DDI E does not support port reversal, the functionality is
 		 * achieved on the PCH side in FDI_RX_CTL, so no need to set the
 		 * port reversal bit */
-		intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E),
+		intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E),
 			       DDI_BUF_CTL_ENABLE | ((crtc_state->fdi_lanes - 1) << 1) | DDI_BUF_TRANS_SELECT(i / 2));
-		intel_de_posting_read(dev_priv, DDI_BUF_CTL(PORT_E));
+		intel_de_posting_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E));
 
 		udelay(600);
 
@@ -864,10 +864,10 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 		intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
 		intel_de_posting_read(dev_priv, FDI_RX_CTL(PIPE_A));
 
-		temp = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_E));
+		temp = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E));
 		temp &= ~DDI_BUF_CTL_ENABLE;
-		intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E), temp);
-		intel_de_posting_read(dev_priv, DDI_BUF_CTL(PORT_E));
+		intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E), temp);
+		intel_de_posting_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E));
 
 		/* Disable DP_TP_CTL and FDI_RX_CTL and retry */
 		temp = intel_de_read(dev_priv, DP_TP_CTL(PORT_E));
@@ -909,9 +909,9 @@ void hsw_fdi_disable(struct intel_encoder *encoder)
 	val &= ~FDI_RX_ENABLE;
 	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), val);
 
-	val = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_E));
+	val = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E));
 	val &= ~DDI_BUF_CTL_ENABLE;
-	intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E), val);
+	intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E), val);
 
 	intel_wait_ddi_buf_idle(dev_priv, PORT_E);
 
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index b0aa1edd8302..a308665340d4 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -410,12 +410,12 @@ static bool adl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
 	enum port port = dig_port->base.port;
 	u32 val;
 
-	val = intel_uncore_read(uncore, DDI_BUF_CTL(port));
+	val = intel_uncore_read(uncore, DDI_BUF_CTL(i915, port));
 	if (take)
 		val |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 	else
 		val &= ~DDI_BUF_CTL_TC_PHY_OWNERSHIP;
-	intel_uncore_write(uncore, DDI_BUF_CTL(port), val);
+	intel_uncore_write(uncore, DDI_BUF_CTL(i915, port), val);
 
 	return true;
 }
@@ -455,7 +455,7 @@ static bool adl_tc_phy_is_owned(struct intel_digital_port *dig_port)
 	enum port port = dig_port->base.port;
 	u32 val;
 
-	val = intel_uncore_read(uncore, DDI_BUF_CTL(port));
+	val = intel_uncore_read(uncore, DDI_BUF_CTL(i915, port));
 	return val & DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 }
 
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index c7722c818b4d..5e3cd306c41d 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -213,10 +213,10 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 				  PORT_PLL_REF_SEL | PORT_PLL_LOCK |
 				  PORT_PLL_ENABLE);
 
-			vgpu_vreg_t(vgpu, DDI_BUF_CTL(port)) &=
+			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, port)) &=
 				~(DDI_INIT_DISPLAY_DETECTED |
 				  DDI_BUF_CTL_ENABLE);
-			vgpu_vreg_t(vgpu, DDI_BUF_CTL(port)) |= DDI_BUF_IS_IDLE;
+			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, port)) |= DDI_BUF_IS_IDLE;
 		}
 		vgpu_vreg_t(vgpu, PCH_PORT_HOTPLUG) &=
 			~(PORTA_HOTPLUG_ENABLE | PORTA_HOTPLUG_STATUS_MASK);
@@ -276,9 +276,9 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 				(PORT_PLL_POWER_STATE | PORT_PLL_POWER_ENABLE |
 				 PORT_PLL_REF_SEL | PORT_PLL_LOCK |
 				 PORT_PLL_ENABLE);
-			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_A)) |=
+			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_A)) |=
 				(DDI_BUF_CTL_ENABLE | DDI_INIT_DISPLAY_DETECTED);
-			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_A)) &=
+			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_A)) &=
 				~DDI_BUF_IS_IDLE;
 			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_EDP)) |=
 				(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
@@ -305,9 +305,9 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 				(PORT_PLL_POWER_STATE | PORT_PLL_POWER_ENABLE |
 				 PORT_PLL_REF_SEL | PORT_PLL_LOCK |
 				 PORT_PLL_ENABLE);
-			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_B)) |=
+			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_B)) |=
 				DDI_BUF_CTL_ENABLE;
-			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_B)) &=
+			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_B)) &=
 				~DDI_BUF_IS_IDLE;
 			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) |=
 				(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
@@ -335,9 +335,9 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 				(PORT_PLL_POWER_STATE | PORT_PLL_POWER_ENABLE |
 				 PORT_PLL_REF_SEL | PORT_PLL_LOCK |
 				 PORT_PLL_ENABLE);
-			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_C)) |=
+			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_C)) |=
 				DDI_BUF_CTL_ENABLE;
-			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_C)) &=
+			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_C)) &=
 				~DDI_BUF_IS_IDLE;
 			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) |=
 				(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
@@ -416,8 +416,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 			vgpu_vreg_t(vgpu, PORT_CLK_SEL(PORT_B)) |=
 				PORT_CLK_SEL_LCPLL_810;
 		}
-		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_B)) |= DDI_BUF_CTL_ENABLE;
-		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_B)) &= ~DDI_BUF_IS_IDLE;
+		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_B)) |= DDI_BUF_CTL_ENABLE;
+		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_B)) &= ~DDI_BUF_IS_IDLE;
 		vgpu_vreg_t(vgpu, SDEISR) |= SDE_PORTB_HOTPLUG_CPT;
 	}
 
@@ -442,8 +442,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 			vgpu_vreg_t(vgpu, PORT_CLK_SEL(PORT_C)) |=
 				PORT_CLK_SEL_LCPLL_810;
 		}
-		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_C)) |= DDI_BUF_CTL_ENABLE;
-		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_C)) &= ~DDI_BUF_IS_IDLE;
+		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_C)) |= DDI_BUF_CTL_ENABLE;
+		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_C)) &= ~DDI_BUF_IS_IDLE;
 		vgpu_vreg_t(vgpu, SFUSE_STRAP) |= SFUSE_STRAP_DDIC_DETECTED;
 	}
 
@@ -468,8 +468,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 			vgpu_vreg_t(vgpu, PORT_CLK_SEL(PORT_D)) |=
 				PORT_CLK_SEL_LCPLL_810;
 		}
-		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_D)) |= DDI_BUF_CTL_ENABLE;
-		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_D)) &= ~DDI_BUF_IS_IDLE;
+		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_D)) |= DDI_BUF_CTL_ENABLE;
+		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_D)) &= ~DDI_BUF_IS_IDLE;
 		vgpu_vreg_t(vgpu, SFUSE_STRAP) |= SFUSE_STRAP_DDID_DETECTED;
 	}
 
@@ -488,7 +488,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		else
 			vgpu_vreg_t(vgpu, SDEISR) |= SDE_PORTA_HOTPLUG_SPT;
 
-		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_A)) |= DDI_INIT_DISPLAY_DETECTED;
+		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_A)) |= DDI_INIT_DISPLAY_DETECTED;
 	}
 
 	/* Clear host CRT status, so guest couldn't detect this host CRT. */
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index daac2050d77d..15393c861721 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -787,13 +787,15 @@ static int force_nonpriv_write(struct intel_vgpu *vgpu,
 static int ddi_buf_ctl_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 		void *p_data, unsigned int bytes)
 {
+	struct drm_i915_private *i915 = vgpu->gvt->gt->i915;
+
 	write_vreg(vgpu, offset, p_data, bytes);
 
 	if (vgpu_vreg(vgpu, offset) & DDI_BUF_CTL_ENABLE) {
 		vgpu_vreg(vgpu, offset) &= ~DDI_BUF_IS_IDLE;
 	} else {
 		vgpu_vreg(vgpu, offset) |= DDI_BUF_IS_IDLE;
-		if (offset == i915_mmio_reg_offset(DDI_BUF_CTL(PORT_E)))
+		if (offset == i915_mmio_reg_offset(DDI_BUF_CTL(i915, PORT_E)))
 			vgpu_vreg_t(vgpu, DP_TP_STATUS(PORT_E))
 				&= ~DP_TP_STATUS_AUTOTRAIN_DONE;
 	}
@@ -812,7 +814,8 @@ static int fdi_rx_iir_mmio_write(struct intel_vgpu *vgpu,
 
 static int fdi_auto_training_started(struct intel_vgpu *vgpu)
 {
-	u32 ddi_buf_ctl = vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_E));
+	struct drm_i915_private *i915 = vgpu->gvt->gt->i915;
+	u32 ddi_buf_ctl = vgpu_vreg_t(vgpu, DDI_BUF_CTL(i915, PORT_E));
 	u32 rx_ctl = vgpu_vreg(vgpu, _FDI_RXA_CTL);
 	u32 tx_ctl = vgpu_vreg_t(vgpu, DP_TP_CTL(PORT_E));
 
@@ -2333,11 +2336,11 @@ static int init_generic_mmio_info(struct intel_gvt *gvt)
 	MMIO_F(_MMIO(_DPA_AUX_CH_CTL), 6 * 4, 0, 0, 0, D_ALL, NULL,
 		dp_aux_ch_ctl_mmio_write);
 
-	MMIO_DH(DDI_BUF_CTL(PORT_A), D_ALL, NULL, ddi_buf_ctl_mmio_write);
-	MMIO_DH(DDI_BUF_CTL(PORT_B), D_ALL, NULL, ddi_buf_ctl_mmio_write);
-	MMIO_DH(DDI_BUF_CTL(PORT_C), D_ALL, NULL, ddi_buf_ctl_mmio_write);
-	MMIO_DH(DDI_BUF_CTL(PORT_D), D_ALL, NULL, ddi_buf_ctl_mmio_write);
-	MMIO_DH(DDI_BUF_CTL(PORT_E), D_ALL, NULL, ddi_buf_ctl_mmio_write);
+	MMIO_DH(DDI_BUF_CTL(dev_priv, PORT_A), D_ALL, NULL, ddi_buf_ctl_mmio_write);
+	MMIO_DH(DDI_BUF_CTL(dev_priv, PORT_B), D_ALL, NULL, ddi_buf_ctl_mmio_write);
+	MMIO_DH(DDI_BUF_CTL(dev_priv, PORT_C), D_ALL, NULL, ddi_buf_ctl_mmio_write);
+	MMIO_DH(DDI_BUF_CTL(dev_priv, PORT_D), D_ALL, NULL, ddi_buf_ctl_mmio_write);
+	MMIO_DH(DDI_BUF_CTL(dev_priv, PORT_E), D_ALL, NULL, ddi_buf_ctl_mmio_write);
 
 	MMIO_DH(DP_TP_CTL(PORT_A), D_ALL, NULL, dp_tp_ctl_mmio_write);
 	MMIO_DH(DP_TP_CTL(PORT_B), D_ALL, NULL, dp_tp_ctl_mmio_write);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2126e441199d..a91bbc6e1255 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6936,7 +6936,11 @@ enum skl_power_gate {
 /* DDI Buffer Control */
 #define _DDI_BUF_CTL_A				0x64000
 #define _DDI_BUF_CTL_B				0x64100
-#define DDI_BUF_CTL(port) _MMIO_PORT(port, _DDI_BUF_CTL_A, _DDI_BUF_CTL_B)
+#define DDI_BUF_CTL(i915, port) ({ \
+					(void)i915; /* Suppress unused variable warning */ \
+					_MMIO_PORT(port, _DDI_BUF_CTL_A, _DDI_BUF_CTL_B); \
+				 })
+
 #define  DDI_BUF_CTL_ENABLE			(1 << 31)
 #define  DDI_BUF_TRANS_SELECT(n)	((n) << 24)
 #define  DDI_BUF_EMP_MASK			(0xf << 24)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 8279dc580a3e..b55bdc2cdd84 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -503,11 +503,11 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(SBI_CTL_STAT);
 	MMIO_D(PIXCLK_GATE);
 	MMIO_F(_MMIO(_DPA_AUX_CH_CTL), 6 * 4);
-	MMIO_D(DDI_BUF_CTL(PORT_A));
-	MMIO_D(DDI_BUF_CTL(PORT_B));
-	MMIO_D(DDI_BUF_CTL(PORT_C));
-	MMIO_D(DDI_BUF_CTL(PORT_D));
-	MMIO_D(DDI_BUF_CTL(PORT_E));
+	MMIO_D(DDI_BUF_CTL(dev_priv, PORT_A));
+	MMIO_D(DDI_BUF_CTL(dev_priv, PORT_B));
+	MMIO_D(DDI_BUF_CTL(dev_priv, PORT_C));
+	MMIO_D(DDI_BUF_CTL(dev_priv, PORT_D));
+	MMIO_D(DDI_BUF_CTL(dev_priv, PORT_E));
 	MMIO_D(DP_TP_CTL(PORT_A));
 	MMIO_D(DP_TP_CTL(PORT_B));
 	MMIO_D(DP_TP_CTL(PORT_C));
-- 
2.34.1

