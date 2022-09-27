Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5EC5EC140
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 13:27:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1BD410E8F3;
	Tue, 27 Sep 2022 11:27:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C9C910E8FE
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 11:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664278002; x=1695814002;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=f2LqV4f8jsYfki8ehpGhiKhtI5IMKxJRNl3qF7UMG+8=;
 b=ZsZJ0Cb6/5QnYGxFMaYRMoORHU53tRvm7bLB5nEaZi64SvSdaC6IgUL6
 DuT2wYwDruoDJY3Xi0YFYJnukciFXq9T8GRPiXQ9z+6krG1y10U6lq9Xn
 r+kZcWvlF1n/GVy/IaUVAoqzszLphIF8Iwp/r+i4XyEcHZYSG3d4ZrSGs
 gCrqk+bVLuopiyEGk7ngSBxZOnIXbKZTg3eA5qYbJZ8SQV1wgUGK99j3f
 QRL505iHMkkUW7ORgoTo4gg1oTAJjRRxQ+1p40AcesN8jviUKzkPReuUS
 PUPyFdj9qzdudgQce17NG2jy1rVwOINKQbRJ9ATllwGGBc/DeW2Z5qfxm Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="288441335"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="288441335"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 04:26:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="654691879"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="654691879"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 27 Sep 2022 04:26:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 04:26:38 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 04:26:38 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 27 Sep 2022 04:26:38 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 27 Sep 2022 04:26:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cE/6mSGnp8CuKc+xBaNo7QoO9xjV8EeXFmha2oYVm1E/fAqyATFgb7qQ2uIehEj6TKkTMIE3AFyrcrj8gcV6DBKtOnw6UGmzfCzYJ+KX5sw7vT+pfPZHJHyK3upabghvnJ9B891x7o+28Glxxy9FgUgbuXL+vO/kve7NNDrW7/CKTGMG/gWTRNOKb9vi7mOAILGnchmy5/PVsxJ+iMnaixY5mFicIN8kazGCQ8Smgw88QgU4v6t5BybE2cerC4bOxGNDztqiRy0ae+uF6+HjkdJ+amkscatMxQUm+WpwUnPAEu2pD0hrcwYieXir/+gh2c3oOveca2HWysrkKuleow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hj7IWU/9uE/GJ+1vXyR7ZsHyYup232pYtqU/zOu8osc=;
 b=LQBOGvDYT2iZnt1X8y7mLBTWQ/OMuOajVx9gc6qVJyWi/3gER6we9jM8wr3ooi4MEAixAr4FbNFhh7sXN9JWPSOZ+p3Mao0IAxOrPU8iXg7O+iV89BNEYIoPAJSfFyr1CbUjyVfINUlJbfHj7oaUsJzzHfFiHaCRtYtX/53VLwMr8+XJkkWQ0hNLyc/PG05yh9IgRFCpB4zd4IC0plrU8crfAEswp13/tPRjYQujwaiZJRLw77i+ye7UwgHoMcyDoSSo61k5fUQkepFiHyOaCepI0S7sB8KRNbc+i8dT+rooyBrRDl8uJCDAXg7w1WnNXTF5sAGX9Pu6PogcmB0wEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 SN7PR11MB6797.namprd11.prod.outlook.com (2603:10b6:806:263::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.25; Tue, 27 Sep 2022 11:26:31 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5654.026; Tue, 27 Sep 2022
 11:26:31 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Tue, 27 Sep 2022 16:55:45 +0530
Message-ID: <20220927112547.328078-5-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220927112547.328078-1-balasubramani.vivekanandan@intel.com>
References: <20220927112547.328078-1-balasubramani.vivekanandan@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PN3PR01CA0024.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:97::12) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|SN7PR11MB6797:EE_
X-MS-Office365-Filtering-Correlation-Id: bdd6a31d-3c1b-4ac8-26b7-08daa07b203a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VQTsDGtFNN1zvbZlHLSuonMWcMqo8I6U4IjiaDGalfXQhPqaSHISQbYhOzJEydWTWBTsrNVJycn4Fx94Nt71hkz7T5O+0p4SME7m2TiV/Zqsm0lO78AFHDCmhBocVtZpwCajTdZEdDyz9DXx6F2WsuQsvuks158XPHl74l5nr28iE8RR0LMHHS3MPi6u2es3d0okZukBf57H++5+HoPM8uzCZqNlbqzbL73B3FLP3wBQu8SNNfy00CcGFn4jFez7a3+Jrc6wdt8SD4dPU9GUU1sDIhypaYZZcxDVzqeVGYDApQC3OJsx8HhR4MiJYiNoJxWsHezQjsk2+7FLuxVcUBJvOslf8e1mDKBzMm9GRqwl1VCcwfO4ZtCRxtM98lMmSXUZtIup2ryj7tn1t6GxK3N6hGblQ7AstslJ5jtVmNXkWGUSpBbHiBGyLuSIEHoKxKZIGKlH0AIy/l3S3IJZGqeL9qosO4zSPdFLXuZ2ZeW5Qw2dhUz9qyKOtXK1wxvw3D4OvvYWKxJX1qgQso9tfVVxdBV9EdRvWcfgX+4Cc7wad3TXRbSYVbzh0Gii5FlcFIp4Un0DD6rFcSnr6DwS1/JeZMGIOmmGgAFOni5NpLsEz6e5FytIzrZSOp4Cq5EnN1l2QxNEyFLI5TDNue5p3hzlnyN4YlwKO0wg27T0TtVmSENTERWgkJN/dLkilRiC39epIWdTVpzL/ruxxFOCfw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(39860400002)(366004)(396003)(346002)(451199015)(41300700001)(2906002)(44832011)(36756003)(5660300002)(8936002)(66476007)(38100700002)(4326008)(66946007)(54906003)(8676002)(478600001)(316002)(66556008)(6486002)(6916009)(6666004)(86362001)(2616005)(1076003)(186003)(82960400001)(6506007)(83380400001)(6512007)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XvS7tsaLigLhXVPcscraoWnB752NIu9R2zQQJr3RmuA90Sfc2r81W6b7yvZf?=
 =?us-ascii?Q?b+V/iUxDEWHvSZ0EA+G00gtIlZm9fsxowh1N2quzpImcy8isFU+p/ShDn7h3?=
 =?us-ascii?Q?hYu7GfE4uNVUboseOumvq12D+8JYkty+ZSTRdwb/ELps85oO+CmZC7UsdcT2?=
 =?us-ascii?Q?1Jwek+5eG5/6MBOGGhKZG13lIKVI81xexBPLQLkhuiN5DmtecfIi+OXYW3qP?=
 =?us-ascii?Q?2N52aaAv+5OG3YPvGr1tpq6PvkzuaELMItAV7kkHWaaa9iUTa+yoFZzU08JQ?=
 =?us-ascii?Q?r2S1tW+8PJ/iAwyiEtjyJMIQObBiV7eiZhRzhOhPleAjUN/hsZo3ieB4+zWj?=
 =?us-ascii?Q?SLluUpa9k19+SCCNiRJSQRBzoEnivEKmc1GnPW65LrwCD9FOslUZ3OP7iLmj?=
 =?us-ascii?Q?1GpUjgqusGLo0vimTV2zuZG8/GJdYTsRW4OcFcgrHWAOaWnuDQNAhszENwZL?=
 =?us-ascii?Q?2Dfp1O2mj5mrkqF6GigxUrmnFLLxwQiwsLSn4j1MbdHeI/FrjE+weJIGsNct?=
 =?us-ascii?Q?2+wlcsVzxLhcp9rLg1tmMAdYgJ4KOGVIvMyOrQ1d/uS3ZWrQMx6JD+FSr26A?=
 =?us-ascii?Q?QQJUIDCZR1ZMcXjZwdWzU7vOb5syTPvYmgFz8BGpY5GOigdyZy0SE1E/cLUM?=
 =?us-ascii?Q?zcjQnv2LgDN8PVrFaa0xKuw4Du0H2G+eNDK4RQLIccuS43ltk8f2cPZZ3hTr?=
 =?us-ascii?Q?w8UQxCAE3G0WFykwL4ztD1XBZq2qD12ZqvYdEha7auwZ93/HdMQ9ZqP7Xd7Q?=
 =?us-ascii?Q?pOmL8nvmrLlusQZG8fjJ7n7WJvErcFnGLIkrPncGqNYzREYpUgk8lYIcLf5+?=
 =?us-ascii?Q?UmHX2i2N+EOg2AObBPtEBKYIJIKfT9cnZHgpq8eotXdTqsYjl+jRIG+Xq2Zo?=
 =?us-ascii?Q?BXHK4VREj6BGCG/hWV/x1pSgzc0Ssx9T/A0VXTtw/n0PHKtzVD6iAeADJwSk?=
 =?us-ascii?Q?l+1hrM+4XgH7Xff9tQ714FdTy/VwDT/4CYdfrJeWH2t7e+K2pD5wmgxBlZ4I?=
 =?us-ascii?Q?OAMmdJrmWhmIGcY9Kevxfu0P8Vv6Wuoi96mcpfX8SV9Tjv/tISyy/1E/8Jnx?=
 =?us-ascii?Q?z2eq5EHwz8WE32KJToveyYbeCYI7HFas9FoZ3/uXaUknVBOd8k/FAWa6psT3?=
 =?us-ascii?Q?yQOu4C/OoARwiksGGLfl9UIrOLuEkeGlpkcvEncsAA2y2DUYPjQGwOFCbfIN?=
 =?us-ascii?Q?4QAz6jowvfmVlC6ZUcypVLK4Cpnks7wTE7NXQrnPEUmhOZw1v30e998apVnt?=
 =?us-ascii?Q?94P42AtOsdfUiDlN2KFzp6aU8/vPmH6sZhofgkmyPSt43/qVFQ8bHqGj9J6u?=
 =?us-ascii?Q?V6IuJNThOLygDUIFjVhyRg1PHOkJajajMWNc/3IvEA/vKSzsIw/kvtuSPVf+?=
 =?us-ascii?Q?5nOhhCSMWwCdzTaX4/Z90gR3z3+2rxepR2ocpt1eRkAM6m5Ijgst7aDHTVcR?=
 =?us-ascii?Q?zJECv9bOMg2iJC1Ex5GCiUyWDubwamPo5v3kO/l49CJ3HdJOQ/PnJXTSs3Qs?=
 =?us-ascii?Q?cqERS7pwiy7lGRFOFEtOv62E+J2Hw5okh+zv2Z4SZltW4H0d+S+7eLE/Pw3E?=
 =?us-ascii?Q?2O+y6TjADJ8zIiVgPwbg5wKUN4ZJgDc/FH6r1e5gu7pwJjOhCN/IeAUrx7kj?=
 =?us-ascii?Q?2QAFcij8ILDaRcUuetYwkJk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bdd6a31d-3c1b-4ac8-26b7-08daa07b203a
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2022 11:26:31.1730 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iJmTsEMLkJBFhoW10cv634WBpiXPqkspqa48+3a3e4wgqPmpaIDo3WcQMh2m6siQZ3KGQhXWKKW9Ck2xEd3kll3L67NnUBsiTw2H6hOn32BeZqBqEK+bSWi5phRtS8zp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6797
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v3 4/6] drm/i915/display: Remove
 PORT_D_XELPD/PORT_E_XELPD platform specific defintions
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

Port enums are no more used in the DDI register offset caculcation. We
can remove the platform specific port redefinitions. Along with it we
also get rid of the code required for handling these special
definitions.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     |  4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 23 +----------
 drivers/gpu/drm/i915/display/intel_display.c  |  6 +--
 drivers/gpu/drm/i915/display/intel_display.h  |  2 -
 .../drm/i915/display/intel_display_power.c    | 40 +------------------
 drivers/gpu/drm/i915/i915_pci.c               |  4 +-
 include/drm/i915_component.h                  |  2 +-
 7 files changed, 10 insertions(+), 71 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 4c543e8205ca..ab472fa757d8 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2436,8 +2436,8 @@ static enum port dvo_port_to_port(struct drm_i915_private *i915,
 		[PORT_A] = { DVO_PORT_HDMIA, DVO_PORT_DPA, -1 },
 		[PORT_B] = { DVO_PORT_HDMIB, DVO_PORT_DPB, -1 },
 		[PORT_C] = { DVO_PORT_HDMIC, DVO_PORT_DPC, -1 },
-		[PORT_D_XELPD] = { DVO_PORT_HDMID, DVO_PORT_DPD, -1 },
-		[PORT_E_XELPD] = { DVO_PORT_HDMIE, DVO_PORT_DPE, -1 },
+		[PORT_D] = { DVO_PORT_HDMID, DVO_PORT_DPD, -1 },
+		[PORT_E] = { DVO_PORT_HDMIE, DVO_PORT_DPE, -1 },
 		[PORT_TC1] = { DVO_PORT_HDMIF, DVO_PORT_DPF, -1 },
 		[PORT_TC2] = { DVO_PORT_HDMIG, DVO_PORT_DPG, -1 },
 		[PORT_TC3] = { DVO_PORT_HDMIH, DVO_PORT_DPH, -1 },
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 00ac683ef96b..73ef6e97c446 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4115,17 +4115,6 @@ static bool hti_uses_phy(struct drm_i915_private *i915, enum phy phy)
 	       i915->hti_state & HDPORT_DDI_USED(phy);
 }
 
-static enum hpd_pin xelpd_hpd_pin(struct drm_i915_private *dev_priv,
-				  enum port port)
-{
-	if (port >= PORT_D_XELPD)
-		return HPD_PORT_D + port - PORT_D_XELPD;
-	else if (port >= PORT_TC1)
-		return HPD_PORT_TC1 + port - PORT_TC1;
-	else
-		return HPD_PORT_A + port - PORT_A;
-}
-
 static enum hpd_pin dg1_hpd_pin(struct drm_i915_private *dev_priv,
 				enum port port)
 {
@@ -4294,13 +4283,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	encoder = &dig_port->base;
 	encoder->devdata = devdata;
 
-	if (DISPLAY_VER(dev_priv) >= 13 && port >= PORT_D_XELPD) {
-		drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
-				 DRM_MODE_ENCODER_TMDS,
-				 "DDI %c/PHY %c",
-				 port_name(port - PORT_D_XELPD + PORT_D),
-				 phy_name(phy));
-	} else if (DISPLAY_VER(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		enum tc_port tc_port = intel_port_to_tc(dev_priv, port);
 
 		drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
@@ -4430,9 +4413,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 
 	intel_ddi_buf_trans_init(encoder);
 
-	if (DISPLAY_VER(dev_priv) >= 13)
-		encoder->hpd_pin = xelpd_hpd_pin(dev_priv, port);
-	else if (IS_DG1(dev_priv))
+	if (IS_DG1(dev_priv))
 		encoder->hpd_pin = dg1_hpd_pin(dev_priv, port);
 	else if (IS_ROCKETLAKE(dev_priv))
 		encoder->hpd_pin = rkl_hpd_pin(dev_priv, port);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 194a4758ee04..caf81f4b7f2a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2135,9 +2135,7 @@ bool intel_phy_is_snps(struct drm_i915_private *dev_priv, enum phy phy)
 
 enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)
 {
-	if (DISPLAY_VER(i915) >= 13 && port >= PORT_D_XELPD)
-		return PHY_D + port - PORT_D_XELPD;
-	else if (DISPLAY_VER(i915) >= 13 && port >= PORT_TC1)
+	if (DISPLAY_VER(i915) >= 13 && port >= PORT_TC1)
 		return PHY_F + port - PORT_TC1;
 	else if (IS_ALDERLAKE_S(i915) && port >= PORT_TC1)
 		return PHY_B + port - PORT_TC1;
@@ -7903,7 +7901,7 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
 		intel_ddi_init(dev_priv, PORT_C);
-		intel_ddi_init(dev_priv, PORT_D_XELPD);
+		intel_ddi_init(dev_priv, PORT_D);
 		intel_ddi_init(dev_priv, PORT_TC1);
 	} else if (IS_ALDERLAKE_P(dev_priv)) {
 		intel_ddi_init(dev_priv, PORT_A);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index aa5ded6b513c..e3aa8080b79f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -220,8 +220,6 @@ enum port {
 	PORT_TC5,
 	PORT_TC6,
 
-	PORT_D_XELPD,
-	PORT_E_XELPD,
 	I915_MAX_PORTS
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 1e608b9e5055..494821711775 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -2359,50 +2359,12 @@ d12_port_domains[] = {
 	},
 };
 
-static const struct intel_ddi_port_domains
-d13_port_domains[] = {
-	{
-		.port_start = PORT_A,
-		.port_end = PORT_C,
-		.aux_ch_start = AUX_CH_A,
-		.aux_ch_end = AUX_CH_C,
-
-		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_A,
-		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_A,
-		.aux_legacy_usbc = POWER_DOMAIN_AUX_A,
-		.aux_tbt = POWER_DOMAIN_INVALID,
-	}, {
-		.port_start = PORT_TC1,
-		.port_end = PORT_TC4,
-		.aux_ch_start = AUX_CH_USBC1,
-		.aux_ch_end = AUX_CH_USBC4,
-
-		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_TC1,
-		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_TC1,
-		.aux_legacy_usbc = POWER_DOMAIN_AUX_USBC1,
-		.aux_tbt = POWER_DOMAIN_AUX_TBT1,
-	}, {
-		.port_start = PORT_D_XELPD,
-		.port_end = PORT_E_XELPD,
-		.aux_ch_start = AUX_CH_D_XELPD,
-		.aux_ch_end = AUX_CH_E_XELPD,
-
-		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_D,
-		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_D,
-		.aux_legacy_usbc = POWER_DOMAIN_AUX_D,
-		.aux_tbt = POWER_DOMAIN_INVALID,
-	},
-};
-
 static void
 intel_port_domains_for_platform(struct drm_i915_private *i915,
 				const struct intel_ddi_port_domains **domains,
 				int *domains_size)
 {
-	if (DISPLAY_VER(i915) >= 13) {
-		*domains = d13_port_domains;
-		*domains_size = ARRAY_SIZE(d13_port_domains);
-	} else if (DISPLAY_VER(i915) >= 12) {
+	if (DISPLAY_VER(i915) >= 12) {
 		*domains = d12_port_domains;
 		*domains_size = ARRAY_SIZE(d12_port_domains);
 	} else if (DISPLAY_VER(i915) >= 11) {
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index e7eb7c0ea7fd..2cdadf76f34e 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -162,8 +162,8 @@
 		[PORT_TC2] = 4, \
 		[PORT_TC3] = 5, \
 		[PORT_TC4] = 6, \
-		[PORT_D_XELPD] = 7, \
-		[PORT_E_XELPD] = 8, \
+		[PORT_D] = 7, \
+		[PORT_E] = 8, \
 	}
 
 #define I9XX_COLORS \
diff --git a/include/drm/i915_component.h b/include/drm/i915_component.h
index f95ff82c3b4a..4b31bab5533a 100644
--- a/include/drm/i915_component.h
+++ b/include/drm/i915_component.h
@@ -35,7 +35,7 @@ enum i915_component_type {
 /* MAX_PORT is the number of port
  * It must be sync with I915_MAX_PORTS defined i915_drv.h
  */
-#define MAX_PORTS 17
+#define MAX_PORTS 15
 
 /**
  * struct i915_audio_component - Used for direct communication between i915 and hda drivers
-- 
2.34.1

