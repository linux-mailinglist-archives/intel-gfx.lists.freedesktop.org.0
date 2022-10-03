Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BD45F3409
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 19:01:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FC3410E41B;
	Mon,  3 Oct 2022 17:01:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FC2310E3D0
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 17:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664816467; x=1696352467;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Oo2+pv38yQhIDSiN5SEyT/ElBKthbFDnsuWJhvP+kZ4=;
 b=BGyOKLOGDCgjBW4ibwNh9ZvlnTrF31xrTyccnoOz7tb3d3PLK+TOkycV
 q+Q2Bzt8HJVtaVIHLYJl6JeNAFhOB8S7VBEQ1g7ZpNonwV+S6XTdPwUDc
 50hx5d/7wbaY4ArjegNo+4Sb469EMJvyZBCzOEe3igQBGEvSGlkmKkG6v
 OdnHVQsQ6Hb6IX8qMvdGhoOhCkMb4Yy0p1znZCFHNjIGLQOrWYXp1ytTC
 xVouV2PCUr5zWY9JbEE5ha8mCUx9luCX4KZxzNLEPlUl75VTUclm6dZQu
 pLFFHb4xzVWkFhDGIHxr0+SlObnBuQ1aYLFKvshsTZaRN1LwvEpYOxPin g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="388982683"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="388982683"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 10:01:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="765997211"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="765997211"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 03 Oct 2022 10:01:04 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 10:01:04 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 3 Oct 2022 10:01:04 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 3 Oct 2022 10:01:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j1JBd6hd0XTV4nm/ahYCAUOn7CcouCf5yQOtfnbFLvh/qViA+T3lfD1w2O3cTysYNq0PwKC0+jfjVAf8w6QZXV4zaQf2fQHI+/cpyRkrvnbJxPWY/fPQGzLgDxcByvlT0MJC0a2cvbgHVUFR5exQzeCxmRbFggTgkoN/K5cXwc0EmNYPYHJ24XxjnGTxh3ZaExahkPnSRscKt3b+htfpnurffR2vBQEQsAjupRpAvDHSRxI+WYj+IS+rnnTjNJlPFWsQWroi9tG/cMQg9uJQlB5Y7AUP64gaTSrlWK1yykNqjPNyDiL9ypi/xNok66x4VUjIhBpjhpEQCaO5bVmCEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FhaYfzQYMpV+2NtFhwq0Ey/kCymRb2+q/DKL+9CfaqE=;
 b=g27KemSmGuvhl8hD6dYQBz1z8xmECREF+4JJzn79+jKYBY8TH1gJtG31I8DMjjhpdOHPF83HxZDbNMRLlLKxfazj7ssepRXuh4KcSoVHr2nyYLdeo7fb98PXVXomWEb3G2rbLNnW2QjHhQD5AjA3/nxVxD0S/b41/PfwxU9V8IA3uyGbTlfWne7DQh7D5OdOtFK46QTL0jc2FzZzI4a+r4pJbK0QD7jZ/eYWiVxEVS1dwc7cPAkyFLBhU9ZPq/h9X10aW5gAI6dXer7B0gOb86c79/HYzLfFw80BfTofuwGnQmhGHD27qdhb9rC+qVObvkHAxqRWgslbvzqonkY5ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 PH0PR11MB4870.namprd11.prod.outlook.com (2603:10b6:510:34::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.24; Mon, 3 Oct 2022 17:01:02 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5676.028; Mon, 3 Oct 2022
 17:01:02 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Mon, 3 Oct 2022 22:30:21 +0530
Message-ID: <20221003170024.195223-5-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221003170024.195223-1-balasubramani.vivekanandan@intel.com>
References: <20221003170024.195223-1-balasubramani.vivekanandan@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BM1P287CA0010.INDP287.PROD.OUTLOOK.COM
 (2603:1096:b00:40::20) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|PH0PR11MB4870:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a5d5ce8-3382-4d9a-bc29-08daa560d9d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OAlQ/7VUfHqgoIG8usbUn83X9j20GWcaaWVDe0m9tfpn07wNOY32ZJduH8Y1/jx7Y7GaTyr3OFtW/oWk0CvogRpTRDGjogwUkmYw0uJ+C5zySy0SG5Gncdr09zBKBe+jKaW72fpJGPapXiOUTDzKu74vDcKox/B4tJx+UO0An/Gh/XCZoQ3Fv47g6MQMgA6/e6U0OxjGZW44PRJ/wbICrQDG+Bp9JtkECqiiSzkXisFseVXBXtCcUoUCURqYYHUMnS4IZYXtm8btiFkX6ty18nha5kHwsiZ0LV2Cn0EsSAidLXSE5RDAJDQ0axD1/oqqLrCMk9a3+B/qV81gPv47WQwCLjbCPAnsAYUrZHTbGzEtypcMC9NhtAVxN+HBpDFskqNBbJfB8acLKDL1hTxLeoCh3Z7dh271b0ELByCw72W9VfDWYNn824RLbEpAEFCONmJRE19RIw+IQE/J1otIiCK9WlFjBprS6oh58BTxkeX/wuOahUZFT42tIRAo8WCIBdAJHammaeusgkJFrdCM4An1SRrUnbHW76IgfWDPIk7+H7X6o/HxIyhkAdBjJksSQhqA2J2oy3x1ibLD57RwtCf4D47AlpjI0cQHdXZ8duPGSm8+9V8KO4PPknu5xjAT5ZvI22I0tnS7rmFTnJNaTUrXq4bPxIHlzLIoxukk4BU/zsOqh4+18WnTU30Z3RrPMCJHZ2p1P5Z72+zeLBLbsQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(136003)(39860400002)(376002)(366004)(451199015)(26005)(6916009)(6666004)(6512007)(6506007)(41300700001)(54906003)(86362001)(66476007)(66556008)(66946007)(4326008)(83380400001)(36756003)(316002)(8676002)(1076003)(186003)(2616005)(8936002)(82960400001)(6486002)(44832011)(5660300002)(2906002)(478600001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2yZMcKGda+//SUhRuY2pvQNDP6tNoIGP0Fa6MpWO2qeZHqY0z8n75HrokyuL?=
 =?us-ascii?Q?RBZjzgEuucPFwjLTuXRNp1g88sQYEh54Kd5tHKfdLxa9U7i3vEbvr1IlMYlS?=
 =?us-ascii?Q?fFXeJHmRFHLJ0CkKS1BLklmZmc5VsUgU1rX9Eel5DTbBDsMtTRzTzrMev2JX?=
 =?us-ascii?Q?Y+W+jvXJxDFrhIx6ayh0WE0k1tpjDs0cmLQLw18il8Vq7UWZ2sP+cPsL6K3T?=
 =?us-ascii?Q?k3OHN6+2fEIxLO1PoE49hxKN+WQBZCR7Kz5ah8K+EfDjiw8BkIHzZbEjRVfF?=
 =?us-ascii?Q?p7gT2TbgBew89mPOihLkSUtcDRSH+oRoZzZ2+XamANufXqoLbW++Cmx4zJte?=
 =?us-ascii?Q?tuIlb6NwW3rdFKP0ffaBHcsnZbREYlvKcKSIYGzLxF+rz7S5eI2Ww6k0ZHuE?=
 =?us-ascii?Q?C0AGnWugS250ysgmEw9zGxk7UmpI+q3FJTBcvnhk9mYBiTBIiNZdMi6gH7La?=
 =?us-ascii?Q?izSev/rogcc87EVL0bc3vsmTbV/wRUaWl7on/It1k7ELHQUvF7kL/p4RYf3+?=
 =?us-ascii?Q?v9r4bpwWeYaGxnjGFPepwz5EVx1oXDKUw99T+hDF2ZIr2V9ip8At/0+95x5Y?=
 =?us-ascii?Q?9nuLE7XnJdJwxCEcdxizUEOIh06sN2mA1ZKo3XkEE5suLu/C6gdDHGCK9xog?=
 =?us-ascii?Q?FzlanTrlwt6uNa+9bmkO5wkuCCHnphOTOSHF10x9SYzcypcAZRpFNE1bB0V1?=
 =?us-ascii?Q?uB/Ufmtx35eT+RpRhR3x1P96KzygS3mZ6mRANaDnFxGeJOCGNVcyBWDT2JV9?=
 =?us-ascii?Q?tSYWXamL9/y+DdsY9iQQ8nOIZpoTtL6NH/Eh6y3Lpll//uCH7r4BGEa/Mkhb?=
 =?us-ascii?Q?n1Xdb2PDsgHEd86IeqFKnPCEka7KLwwBx/RFqsHMu3ElyiuhjlZ3bXsQRkcN?=
 =?us-ascii?Q?ppFVtxAYFMeDn5XUUplLhFzZwF/n6yzAY0sKkJEKqIwpT0C0y8pMLJubMI4x?=
 =?us-ascii?Q?g6yA/95s72NJa6co2vDLh6/iSpuCGPz5yS9/E7hMBugvot1K/zNdpHdBOZNq?=
 =?us-ascii?Q?02bzl3hbjpjmag5Lss8eIDBtT676B1KJ3/FbY/U2aF6R1SaMvU8kQHLvV5No?=
 =?us-ascii?Q?T73Gsr+4YCg94oZ2TL7vCBYElqmWKOnQW3/JXF7ppXhubH7oVlKimnQ+Vf06?=
 =?us-ascii?Q?HIJfJswLRmULod17VoVOn54CylG3EByKqTXAmqEs+hEYl/8Iry77uqFbDqNP?=
 =?us-ascii?Q?YoP3i7iSkmQUErz9ZnaUaTx2r2PuywJ5ouhXJroMgEVEQo2RfQhoocdeZ9uF?=
 =?us-ascii?Q?lugWFNUNb3PyEPTElh+qJur5pUgVQJfgx7szMh2fHCXtTwdUZspdxA9FU2x9?=
 =?us-ascii?Q?bn6JBj/5T4zehuZJNGsuTCdow+CBWK6OBrrNk7R+dAcCZKSoGniQEFEG0FuV?=
 =?us-ascii?Q?nuukhtCNSyOgyeFTQdwJk4b2paeXD1s4KQ5+Co6BZCn5jHM1Vp6G0SIlXdI9?=
 =?us-ascii?Q?ZVuizpfjEeEniauy3u6a7Lbbb8L0OqCktUnaeGMNWm84XgifMpSqRbJA577c?=
 =?us-ascii?Q?ivxKmbqz7RRkrgmvxBy/hC4cVDuctR8W30XfaKGHzpqsIhwrMWhMtn0J69g0?=
 =?us-ascii?Q?2jcQ/C3qlTZqgHcMep8b5rPArNUBaeu0dIOx4JccA7LiWkY75PHUsGAoA9Rs?=
 =?us-ascii?Q?U/VnaFiv4r4AryCgukwsME0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a5d5ce8-3382-4d9a-bc29-08daa560d9d8
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2022 17:01:01.7899 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bi2ntJq2pTfO3c6eUDRZ0l0S8FrtOIav6UMnggA8xKUsErpM773KsnSNzscRPlPkeqO2Us6clHeFa7WvyvYjHepLmBSr+1Ci7UlD8D76RMLufibj0cpCrB0fHLrZoeBb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4870
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v5 4/7] drm/i915/display: Free port enums from
 tied to register offset
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

With the index required for DDI register offset calculation available in
the device info, the macros which used port enums to calculate the DDI
register offsets i.e. DDI_BUF_CTL and DDI_CLK_SEL are updated to make
use of the index rather than enum directly.
Any new macros access that DDI registers should follow the same
procedure.
This would free the port enums from tied to the register offset of DDI
registers. We can remove all the enum aliases and clean up the enum
definitions.
The key target of the patch series to remove platform specific
definitions of ports like PORT_D_XELPD, PORT_E_XELPD is not yet covered
here.
The definitions are still retained and will be handled in the follow
patch.

Removed a WARN_ON as it is no longer valid. The WARN was added in the
commit "327f8d8c336d drm/i915: simplify setting of ddi_io_power_domain"
The ddi_io_power_domain calculation has changed completely since the
commit and doesn't need this WARN_ON anymore.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |  1 -
 drivers/gpu/drm/i915/display/intel_display.h |  8 +++-----
 drivers/gpu/drm/i915/i915_reg.h              | 12 ++++--------
 include/drm/i915_component.h                 |  2 +-
 4 files changed, 8 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index e7beafafb857..74b4271063d1 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4493,7 +4493,6 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 		encoder->update_complete = intel_ddi_update_complete;
 	}
 
-	drm_WARN_ON(&dev_priv->drm, port > PORT_I);
 	dig_port->ddi_io_power_domain = intel_display_power_ddi_io_domain(dev_priv, port);
 
 	if (init_dp) {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 2af4a1925063..9112833b39eb 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -212,18 +212,16 @@ enum port {
 	PORT_H,
 	PORT_I,
 
-	/* tgl+ */
-	PORT_TC1 = PORT_D,
+	/* Non-TypeC ports must be defined above */
+	PORT_TC1,
 	PORT_TC2,
 	PORT_TC3,
 	PORT_TC4,
 	PORT_TC5,
 	PORT_TC6,
 
-	/* XE_LPD repositions D/E offsets and bitfields */
-	PORT_D_XELPD = PORT_TC5,
+	PORT_D_XELPD,
 	PORT_E_XELPD,
-
 	I915_MAX_PORTS
 };
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index acb764755338..15e6b9482ee8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -170,6 +170,7 @@
 #define _MMIO_CURSOR2(pipe, reg)	_MMIO(INTEL_INFO(dev_priv)->display.cursor_offsets[(pipe)] - \
 					      INTEL_INFO(dev_priv)->display.cursor_offsets[PIPE_A] + \
 					      DISPLAY_MMIO_BASE(dev_priv) + (reg))
+#define _MMIO_DDI(i915, port, a, b)	_MMIO_PORT(INTEL_INFO(i915)->display.ddi_index[port], a, b)
 
 #define __MASKED_FIELD(mask, value) ((mask) << 16 | (value))
 #define _MASKED_FIELD(mask, value) ({					   \
@@ -6936,10 +6937,7 @@ enum skl_power_gate {
 /* DDI Buffer Control */
 #define _DDI_BUF_CTL_A				0x64000
 #define _DDI_BUF_CTL_B				0x64100
-#define DDI_BUF_CTL(i915, port) ({ \
-					(void)i915; /* Suppress unused variable warning */ \
-					_MMIO_PORT(port, _DDI_BUF_CTL_A, _DDI_BUF_CTL_B); \
-				 })
+#define DDI_BUF_CTL(i915, port) _MMIO_DDI(i915, port, _DDI_BUF_CTL_A, _DDI_BUF_CTL_B)
 
 #define  DDI_BUF_CTL_ENABLE			(1 << 31)
 #define  DDI_BUF_TRANS_SELECT(n)	((n) << 24)
@@ -7075,10 +7073,8 @@ enum skl_power_gate {
 #define  PORT_CLK_SEL_NONE		REG_FIELD_PREP(PORT_CLK_SEL_MASK, 7)
 
 /* On ICL+ this is the same as PORT_CLK_SEL, but all bits change. */
-#define DDI_CLK_SEL(i915, port)		({ \
-						(void)i915; /* Suppress unused variable warning */ \
-						PORT_CLK_SEL(port); \
-					})
+#define DDI_CLK_SEL(i915, port)		_MMIO_DDI(i915, port, _PORT_CLK_SEL_A, _PORT_CLK_SEL_B)
+
 #define  DDI_CLK_SEL_MASK		REG_GENMASK(31, 28)
 #define  DDI_CLK_SEL_NONE		REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0x0)
 #define  DDI_CLK_SEL_MG			REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0x8)
diff --git a/include/drm/i915_component.h b/include/drm/i915_component.h
index c1e2a43d2d1e..f95ff82c3b4a 100644
--- a/include/drm/i915_component.h
+++ b/include/drm/i915_component.h
@@ -35,7 +35,7 @@ enum i915_component_type {
 /* MAX_PORT is the number of port
  * It must be sync with I915_MAX_PORTS defined i915_drv.h
  */
-#define MAX_PORTS 9
+#define MAX_PORTS 17
 
 /**
  * struct i915_audio_component - Used for direct communication between i915 and hda drivers
-- 
2.34.1

