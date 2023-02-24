Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EACC36A1EA7
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 16:37:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E9BB10EC59;
	Fri, 24 Feb 2023 15:37:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F34CC10EC59
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 15:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677253037; x=1708789037;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=HX7TBnVjuTC8PfY16lLi6SopMaMf/ViGxBKOvML0PhY=;
 b=U3s6MtTE12W4jidBoovPz0pPl/PrZyKsQdz96t40QDL0BnFMTiBjcEM8
 mXCLLSBkfsjSsgPy7tsPc8KKug3bRvQ4YsiisVgBTbG4bRo6myzpARUci
 wK33flDAYjuBnY6tDP2IrL8Nk+7RuzMqSqAE/tjSU1GQ9cnLwCMzTO02s
 bmc7h50nnJUt5frZ0+Rc56UTWthXJDdvZPxZonUZKdIx7phplHqmq6kwk
 6XzR2pPDah41tqHzE1G8l+tzyq1Sz82r7HNR47PqZKHCV4Fot42sJQurW
 inldVBJv8yQjaa6inZJBhGrdUYZ3Z2LZzWci01osm+IjBBzs/Go0wWTDn Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="313135133"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="313135133"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 07:37:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="741697901"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="741697901"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 24 Feb 2023 07:37:17 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 24 Feb 2023 07:37:16 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 24 Feb 2023 07:37:16 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 24 Feb 2023 07:37:16 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 24 Feb 2023 07:37:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dzt/E63q4yqOmArIbP1R+UYu9/hw96YHdVxh9e0nhdX9ApYm1qo5qx1yLJcfcND8K+fbiOcm/rgX+gSSrABNOT1VX97s7pOrXlW2QmZ8NWLvULiOO1vXYTp8oNVg9V6nfk5KrcV/MVlKke0RzIChvLHih++Zwljhx+orya+9yfJH+1kqU/d3THDO54SsABdBQ0ju6CNsEMiO52RNe6IJnaK1fofYQKgciM0vYdxR122RfUSQe5VU8diHZpQ3cTCzxKxB+IljKyzxoWVE0MUo0FR1kAEUR0M0qwLsbkvRCTCltvyvVgSP0KS2AQHLFYvc2x9mJrQhUDcqKhg/UXkN8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kehWQkiVZhNGsaUTdMv2/1d+qt1HNRseL3vdsz91eKA=;
 b=iLU5i2jt+EOxUG4kt6pCnK7UAUDDTqxBLJFsjAlNL6jxhL6y/RoigERJOXn3AVOjmdqjEXSUGveJxCCbdAYI2wzRP3q3Y3uw222ZrsJzwONqV/vy+jltA6aPDB0iQeTVf8ZMd6QXqU1WupBB83CrWFXSdRxwxEoMhGFe6VlIArfj5zqKNf+LgP5tbtYOArXZ64cJ9u6wvOPxQU221i3Pxrs8l2wYPL5OZbCRdc87wiSFYN7DWpiRI+VYlU3+LgXJXma7IC6xSbNxVnxasiYtg6B5ICceWw4ivdL4LeTJSxB+M1DduZ+gkzceVMRL3n4zSHs4CCeN0DNe1sUbXEG/mA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH8PR11MB6609.namprd11.prod.outlook.com (2603:10b6:510:1cc::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.21; Fri, 24 Feb
 2023 15:37:14 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6134.024; Fri, 24 Feb 2023
 15:37:14 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Fri, 24 Feb 2023 10:37:07 -0500
Message-ID: <20230224153707.813953-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.39.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0036.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::11) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH8PR11MB6609:EE_
X-MS-Office365-Filtering-Correlation-Id: 42e7f402-fc2b-4fa6-797c-08db167d0096
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pfsxOfkzq6gjAf1+Q2AoZDz8eiirFik8GRgdNixBqJcK2yAg9YEyHlJKlj8LkkBatdSmKkw6lURUeYvHagSLmYeb2pWsP8CYZtgFI0jwLNaS7rSmriN6jRlomEnpMY0oXBfizOw/2+eCRUTjsOMZWbPeIWqINfbKt8PyIa8DrxPkFFqejmZsY1P5MqA0zXiIAB/xSGcjbAa9s+EhaBzm47u8gHhtA4nZYpFbquAfToRH3D6Pz1GnAxM1NOkgbwhDHlxwmI4esy4IVZ5O6a0jZDrJElp8c3CnA4b71BnWt+S6gyIwZng4LAiYiIzgq/x2paRKgjKdtY5b6qHpynwT+qHLAH+3Hj+14VnIrUDI+JpmdIy5dxWz0eY6nbxjhwh4/Sj3jO4/x7yTbZQY9WLB0A1/KwH+26UdtfUkQ6wDy/EMjC5FIBXxKGpajKjqFKG7dmjiKMbBfdJSn57ogtjpvpCkoTXC1OQetsbZFNfslDV8DO8nSPTVZ4rhoW+haAnJ5rHjHSX1p8I9ojSYOYA385RAs/uEIwc86LwBap2FlmR1agD2BMDz30KdolnzFuKHy4vaHbKejgvA2LS1J7ZkAHEQFbqp/3ekJLxLTF50OmwHse4Pc6x007qNM/QsKe+bI9dngDYD9l+k0q0jBo9txA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(136003)(346002)(396003)(39860400002)(376002)(451199018)(54906003)(83380400001)(66946007)(66556008)(316002)(8676002)(8936002)(41300700001)(5660300002)(6916009)(4326008)(6512007)(107886003)(6666004)(6506007)(1076003)(66476007)(2616005)(26005)(186003)(6486002)(478600001)(36756003)(2906002)(82960400001)(44832011)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iBHxvI/CPf7PJAV9uNbyWBMWs/K1teM5bZy8QfqqtwG/KaFpeKDzrZPGx5gG?=
 =?us-ascii?Q?pEzh40lryFXoa/87+eUqujw2MJVOX1kIXPCSENY+X1h6bw3Nj2FuyWtMRJtb?=
 =?us-ascii?Q?9TcPStFInli70DBca6FLgG321DNB0r3L6qc9BnmpxsEY3jHId4nU4A/bvq4O?=
 =?us-ascii?Q?0bXkidyud84sWdCIDD1AijxqmQJSlLD1StjpDFhwuOOJlsSRFQOmhndbs+n7?=
 =?us-ascii?Q?4uuoo2p/JQBu+tXWDJgk9FPpSMV8Xp3Y18CVV4WzW2XWHLpaQSv0DBlRlcdy?=
 =?us-ascii?Q?0hOiCN3OSeujm7hYeWnew4uvij3o4pBexYFRgb56tRK2RxOAxC8iFFMoRG2h?=
 =?us-ascii?Q?t/1HGTt0xzrt3ptEOsiglAMwtXd0RwD+Gga/L6mAtd0TpyDPsAo0BCdxjUxr?=
 =?us-ascii?Q?qceQdEah/uVjxxu8MtbFlcp0ftMKkCwKN3pTxau2xlkWaRNzNKhm/IdIPzMJ?=
 =?us-ascii?Q?DRsut+wEtKFtLY+OexYivW5N267+0duRjl1yLRhsjcMm7LQGRGXk+OlMXSJz?=
 =?us-ascii?Q?jYbqALZJ24ubF6e/bu96rTY+SVEnsPCphgVQF2FBZti90VG8OoQOpqPuIHUP?=
 =?us-ascii?Q?191S+hltzz+9+pik69Zyw58xsFDl26h2afvOET9GQXbTyl+MJYApETNgQVKs?=
 =?us-ascii?Q?lfTY2ezM2iHtU9cl9dEo9k1pvGr5nDWvoa38esT4E3MUgAttH2YVnKWotR7O?=
 =?us-ascii?Q?A9ff8o76z1CXVP7MKHjm5X7nY4hFNXkff9T1AopcXAijBJ6xCUDSRPLiJxHn?=
 =?us-ascii?Q?W2oqutVXTbYTyjqDaN8p7/8PtON/nuefi8iGzblzqLtg2ciu2RcqXoRgz3F4?=
 =?us-ascii?Q?rVpDpfiE+Xhv3Pf22A+W4dCnaa5Z2ZAYePccpz6oc3fi/i64kXMYaZfG3xQe?=
 =?us-ascii?Q?Q7QR4XQiGixcbfn/qEKKlL1+WNc79z4wzm6qR9W47gDFzYi3hb41+JGdISdI?=
 =?us-ascii?Q?KdZs8AAYdOB55B2qcsdkIl3OGPIHHZpZG/63MWu54IXkeu+EjvIBrrTFCZE7?=
 =?us-ascii?Q?JUD8ePyBFVBIsQjwqgKjsFXCfac+ELL+aS0I5u14UWTN7w9LOBHIPkiL+le7?=
 =?us-ascii?Q?NGzB4HgmUjajBenGvKzs2v6ZoAZJGiXjtAPN8x4QXoGZzGhTQ33Q29yvSawB?=
 =?us-ascii?Q?NQVXpcKu1KV2CZVkmtBErN6MS7QyRGKCUQGs80Z+zX/JzLBwIn82thhOtTB0?=
 =?us-ascii?Q?oIxlxnYjOQxR1JQ0h3886vFEPakmXyvpouLEGJnS4IrGjaxAvCvj+AX1swgR?=
 =?us-ascii?Q?7809J84l1QI2zbEEs4zvz4oARxKF/c6kGwBdaeOq+ZP7XoOZm4vH1cFPsYCv?=
 =?us-ascii?Q?CrzvREgVLrUT03En0wSCtGyW8AW40Tqworg3l009D8LNdVnuHwwfd6cW56qu?=
 =?us-ascii?Q?StGTd1slms0EjibSnBFEfWywMUc0qWN+c5FEEfrckt05EDg8ImokHzn34uvc?=
 =?us-ascii?Q?KOFvsQfxyjr5UQR11yh0UJ3O3qhVWvLFV96EIoLdf0zYW94A/50J93wKpQu9?=
 =?us-ascii?Q?8usQXEw9CDufei6SK3VWCBrdjYWavPttHqTbYzNe/gJ2yPnUYlzn0DnlHEdy?=
 =?us-ascii?Q?spej3kE8Q3y/jGYyumCAkXbvZxmMw+HrRKr6KR3zxu5rc/C95u7YXtgBlv4u?=
 =?us-ascii?Q?SQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 42e7f402-fc2b-4fa6-797c-08db167d0096
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2023 15:37:14.2141 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GlI7hpK8LO+ihMQxL6+pgU3Z0ozvF96HOeRfdhgfSQkEipCrd1DxXDvXFP83OTT2YeIjAEKNRfdSvGuaaPsVcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6609
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH] drm/i915: Remove unused tmp assignment.
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

These are left overs from the conversion towards intel_de_rmw.

Fixes: aa80b2b12b89 ("drm/i915/display/panel: use intel_de_rmw if possible in panel related code")
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_backlight.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index b89e96bb4150..2e8f17c04522 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -352,20 +352,19 @@ static void lpt_disable_backlight(const struct drm_connector_state *old_conn_sta
 		intel_de_write(i915, BLC_PWM_CPU_CTL2, tmp & ~BLM_PWM_ENABLE);
 	}
 
-	tmp = intel_de_rmw(i915, BLC_PWM_PCH_CTL1, BLM_PCH_PWM_ENABLE, 0);
+	intel_de_rmw(i915, BLC_PWM_PCH_CTL1, BLM_PCH_PWM_ENABLE, 0);
 }
 
 static void pch_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
 {
 	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	u32 tmp;
 
 	intel_backlight_set_pwm_level(old_conn_state, val);
 
 	intel_de_rmw(i915, BLC_PWM_CPU_CTL2, BLM_PWM_ENABLE, 0);
 
-	tmp = intel_de_rmw(i915, BLC_PWM_PCH_CTL1, BLM_PCH_PWM_ENABLE, 0);
+	intel_de_rmw(i915, BLC_PWM_PCH_CTL1, BLM_PCH_PWM_ENABLE, 0);
 }
 
 static void i9xx_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
@@ -376,11 +375,10 @@ static void i9xx_disable_backlight(const struct drm_connector_state *old_conn_st
 static void i965_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
 {
 	struct drm_i915_private *i915 = to_i915(old_conn_state->connector->dev);
-	u32 tmp;
 
 	intel_backlight_set_pwm_level(old_conn_state, val);
 
-	tmp = intel_de_rmw(i915, BLC_PWM_CTL2, BLM_PWM_ENABLE, 0);
+	intel_de_rmw(i915, BLC_PWM_CTL2, BLM_PWM_ENABLE, 0);
 }
 
 static void vlv_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
@@ -388,11 +386,10 @@ static void vlv_disable_backlight(const struct drm_connector_state *old_conn_sta
 	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	enum pipe pipe = to_intel_crtc(old_conn_state->crtc)->pipe;
-	u32 tmp;
 
 	intel_backlight_set_pwm_level(old_conn_state, val);
 
-	tmp = intel_de_rmw(i915, VLV_BLC_PWM_CTL2(pipe), BLM_PWM_ENABLE, 0);
+	intel_de_rmw(i915, VLV_BLC_PWM_CTL2(pipe), BLM_PWM_ENABLE, 0);
 }
 
 static void bxt_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
-- 
2.39.1

