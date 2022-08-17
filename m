Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73615596837
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 06:32:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 860EF10E5AA;
	Wed, 17 Aug 2022 04:32:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB3F310E52B
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 04:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660710747; x=1692246747;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=oO3g4w4AqY5bNBE4kLbxm4Ia+bKS/KXE6oPqjMLhddE=;
 b=Vu4MQ1gS3ausJj3Q+Zt3crb1nkfuT1bCSwVSwTy0FQvXqWs79ubGFeUe
 Ci5Pb+PUtaKXUjP947sPPl0iCaO/O7Jpv7TWCNd3AZvt9x4trTKbxp4gB
 k2CeUpH0EgH4cKI/tfg5NmEnU5AqmxZ0l8y5mTwkxWuFQLSBeBMinLgRG
 wyWp0Oqk2nmXHPANF/tw/515A7SrCpiDpF2W77yoMjDpXwKq4gn4axcRN
 5PkndA+ezIzNe1t9vesvMW7ViNcF9i5Dq823cOrkT6UM+l+Yi7NwkxVuT
 xvoQBR1PGNlCe+XSuvfq9muiEv0/TTi8GW+h1c+Yh3858Gi3twt+gbHnw w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="293672756"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="293672756"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 21:32:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="675488159"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 16 Aug 2022 21:32:26 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 21:32:26 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 21:32:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 21:32:26 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 21:32:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tfyd5lEwIUCmxDRXlVuq7oJBIbAlreucSi2iEt4uUgxsICuvcZNuJIsUg9A/BwxnNxRZ6gcCsxvVOPHZc+RnKRkJEYpfr4gzVfOg1BybeA64qYhVwBgnDHxXEofog4AxxJNqvwzEmQ2FR+lztNrfQKV3hO982PA5R1NTqp0DwPiURWbqla+fpOoPvwd0DiBOGp/K0JBkUlKneuTpUa/v2o8XvNKuOfjgYc5NMWKS0fZnPd7Avs34ngcrQ83Ddh0usWH2gy4DXWHfvJXp3eAl/CR/oF1Ty819Ebn7eFHT0GGzB4rXnwDpsr6tvpIemgNhkzofhnBMjRYZT3omaqPACg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=weWhzmUnKLpkUV1qyQ0dZNpCH/PqeBMDDd3UeQNFn+s=;
 b=DDtgCrywWYlzgxneSLMyyC/2c4ey2oeREprJWfL7fi/pjtotXmiRsB8n1RY4ReLLh47v3gnGlTYAfdCViIZodt3dnQD+PP+MXTSvqEhf/qEEA335IiiKAidCu6BY/e/gOf9n1oAsZ4jyCBuLIuA51IMPXwPVrpGxjpi0+eaVI1TQQx/+iVMMbCbyQnow/c7S4y9s2wmvEITIBc+ZTxGzEZEo6FdKdoSf4TcCC6BwcZ8hmRO7vNIGtpvfxa2jy4e3kNqIZhJevnRl50ou8aTfURdX4P3BXZdn9R0iiIVldtPXdub81+Sorb8RtDa3e9UqLLDGp/CcarQnkpSDCAXi7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM6PR11MB3674.namprd11.prod.outlook.com (2603:10b6:5:13d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.11; Wed, 17 Aug
 2022 04:32:24 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513%7]) with mapi id 15.20.5525.011; Wed, 17 Aug 2022
 04:32:24 +0000
Date: Tue, 16 Aug 2022 21:32:21 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220817043221.p3awhzpxjtwnfmxw@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <cover.1660230121.git.jani.nikula@intel.com>
 <c6e7bdc0a0d86a99f19d07beed273707793c3739.1660230121.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <c6e7bdc0a0d86a99f19d07beed273707793c3739.1660230121.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR03CA0003.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::16) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 02a0dfa8-13dd-4489-57ac-08da80097b55
X-MS-TrafficTypeDiagnostic: DM6PR11MB3674:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YNZCk3HAShUE46a6k/lksYS7BJS+QtBJPBA8i4puiVFRzlO+DmBgIEnSGO83mNPyh0anlLQtlWYIgz7p5mxkcqDrN6Asnd7CzpALSeQygSCXIbifUv0OVmbkTe7WwVrHVDJdmfZcbotqEi2Ro4UXWBWUrhJRWhvsXkSgRXl0HqvuDUXaSvf+975LvKZfqkOzEEg5hDQ0BLUmd0bZEDLqvEYChC4xeiBT8f1v6aEhzHOWwbLLBk7dLC4/20u6yFEgZmbK40Cro9XjudvSLxKgNALBS0NtN2YM+uvQGPouATFO0NxLiHbbtt9mx49NaAaJgtCz8ucmX13YgyA/rFxGbg7z8Oc9xIzsp0iD1oKHiZ+UKck7XnhMSFMdbGlh/F7itIJag97HUxcXkTb+uc5Az7JqAivkTZqoId/9CqZZ5itAJMSb5JGe8S0xTvQwubPNVLN9zU2jjLDkIf7cssP+MS1a039nQ4IjBb2yjVExK8zm5rW3DXOmf1pmptNJw3aZUepaEWwBW+lNDTI3iGNYsjlDYLt6eQQZ82BEvKSJcRLrWF027dF64ZBhQrLGCsQEwoB6umKAUXi0A517T/XEVw70eJOQixAG+/U0ILs0k95T6ARTQ4lPtzKXTQlMgPfwhwR7gRe4oV+p+7nA1XLNK9hGqZYb/mOW6bnnzb4mNAWfE2k94hLj9Uyw+KUtRm0ZYBK0+VlrpSqRthuujVDXJKDSdxFZNdV0sWI0l9Ws/hs/PPUjF9wZaEn0USDwLcC6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(136003)(346002)(396003)(366004)(376002)(38100700002)(6486002)(4326008)(2906002)(86362001)(8936002)(6862004)(5660300002)(66476007)(66556008)(26005)(83380400001)(82960400001)(6636002)(6506007)(8676002)(66946007)(36756003)(316002)(186003)(41300700001)(6666004)(1076003)(9686003)(478600001)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?stzP1r5jAhY6YBddNfh1cS6/dYAghIoaysVQorLUsdYizPMiRZc+0Hagy6er?=
 =?us-ascii?Q?g+WDDYSZluyOaDDzpiIPcee8xpil5XB3ZAdh3b7D1qjsZVS3WiLbu66OWIC8?=
 =?us-ascii?Q?v7tjYAgToIIzf6nA3EDJ4Ldo8IhTapN2IXzPfrDC8OIArjN8H2IdJUwjJfA1?=
 =?us-ascii?Q?pSTr7TYD8D/CpL2NeUQSaTSS7dps/WF0Enn1YRzqJnwC8lwb4YIMQQy0rQHI?=
 =?us-ascii?Q?tuWUk/94lsjtIvEH5kROyPdRO8GyL2galURhRsM6mWX4IxR2lnPaZzRsulAN?=
 =?us-ascii?Q?bWLXIiZ9Qg7a3fv13xKcA/2oCjcz1zBKn92NUXIb3inIUtokkEK/aroQGaDS?=
 =?us-ascii?Q?yKLATGwNJLkDUVRPje4ChhQVC1QMf3z9jzG93hKS4/GprIu77avMxlPO2XKW?=
 =?us-ascii?Q?3LeNuOjqbeXSZAW3szTiLhqVt64s+NhN7Lp5HwxKWGguIuImNgjozoVus9mt?=
 =?us-ascii?Q?tydFwDEr7wFFPWoVTEj4ZtA7zGcwZx7WuTeUfw43OZkxTGglkpe8QaTQOveO?=
 =?us-ascii?Q?uYyM1eF4IzwlVcJp6rRt7wO6Ot1EXYgvCELTTqvzmlVc+KXrOz6JKSe58ixG?=
 =?us-ascii?Q?lnf0QNmh3+WXQKqkqdtins8XnGf4sY6tobDyfLLVI4cK5QEAyPkKKxTy+R4I?=
 =?us-ascii?Q?61lAactX+lO7m9zLCTibTLto4GTnzwYDeFlZaRMCIXk12YTANe2QvAsA5Vrz?=
 =?us-ascii?Q?VaOPqJz7os98EtSVYWKpK30tqrOkE6FCjuuLIvz5kDJztXi83wQe/BkM6vWW?=
 =?us-ascii?Q?aMQ/IjxKLi3d42R7UQIO+bA1xuj+K2nd37Q/YNaWrBc0Voo2AxX0qmJbhQw9?=
 =?us-ascii?Q?quwUu+tDhLS0+QycRyUwzkqmIicocATP9UBE1wj76VspJYB5Vr1/yxL9o3aP?=
 =?us-ascii?Q?65ScD1UZTFbI88NaGoy67Y1OTMnuNwOQzwa8MqCedyVIWaRh+Q948oJSV6W6?=
 =?us-ascii?Q?MddH20ZsYq96lVwCXJEDRCcCJnLRi/q8kszG7CkXitIUUyMAMQBzEScTqTzK?=
 =?us-ascii?Q?bLSyu8QM7n+dZSI+jawqsH+B5YZa8hZCsJcPcu8GyUOnLzJTxSiRKfRw5LQN?=
 =?us-ascii?Q?wRmOUJyxZX3MfMI4C2YtYdKCdQqZlvid5qfEB5Qkdfid2PswlMMY2+RdfP1e?=
 =?us-ascii?Q?n7gDcoHiRKWP+YwbT8tX02nh2RlWmk483FGC88HsUR9BZZjXXk6zdGtwildm?=
 =?us-ascii?Q?oXUKWx80XVwY1H7JsRA2qe3/DDBNj8ch7PaOZpgYc2/X3Zd9eAxUaZEvyzZZ?=
 =?us-ascii?Q?GCfg8zMI/KgPKQ43E+uu9ZzOMJfJ0i44lGXuSSwJxGYg3MhFKgqIamJ8dHPW?=
 =?us-ascii?Q?zNhjLg6sBFuM6mM8vdvj1VgQpvew9Bmr3svDjsl3HPeqpX+YtxOPSKI6Z5/8?=
 =?us-ascii?Q?O7TbAjUHl4UCYoi0uscRD5KRybjlkv7kl33oBU/4Wtbnyx05I0LE5CbF12LU?=
 =?us-ascii?Q?aL2bax0fifXXy2K3NxV5x4d7mmup40kV54LJrth0p4MZNKmQBznAEeascgZ7?=
 =?us-ascii?Q?eBB0lVGWxpLb9me8iyT+byDYbYl7KkrHjkpf0hLBPmsti8Ko0RLI4aKk66OO?=
 =?us-ascii?Q?CRolmjytzzDEjERJnY5wablksLybrUn/gr7Mgbo4WmKU2O3EynuvHowl2c6P?=
 =?us-ascii?Q?Kg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 02a0dfa8-13dd-4489-57ac-08da80097b55
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 04:32:23.9847 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QDaJyfXfig3seiEtEQfPWNHHUov71KXpcRmRKZEdApxOLUYpylWNzFOpw4H5cwVVTh0SBR82rz0AHEqa+6+qAp5hFyiXM+cjHzw8uxD3Z6Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3674
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 24/39] drm/i915: move mipi_mmio_base to
 display.dsi
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 11, 2022 at 06:07:35PM +0300, Jani Nikula wrote:
>Move display related members under drm_i915_private display sub-struct.
>
>Prefer adding anonymous sub-structs even for single members that aren't
>our own structs.
>
>Abstract mmio base member access in register definitions in a macro.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> .../gpu/drm/i915/display/intel_display_core.h |   5 +
> drivers/gpu/drm/i915/display/vlv_dsi.c        |   4 +-
> drivers/gpu/drm/i915/display/vlv_dsi_regs.h   | 188 +++++++++---------
> drivers/gpu/drm/i915/i915_drv.h               |   3 -
> 4 files changed, 102 insertions(+), 98 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>index 533c2e3a6685..db1ba379797e 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>@@ -251,6 +251,11 @@ struct intel_display {
> 		unsigned int max_cdclk_freq;
> 	} cdclk;
>
>+	struct {
>+		/* VLV/CHV/BXT/GLK DSI MMIO register base address */

this is already outdated, so maybe remove the platforms from the
comment?


>+		u32 mmio_base;
>+	} dsi;
>+
> 	struct {
> 		/* list of fbdev register on this device */
> 		struct intel_fbdev *fbdev;
>diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
>index b9b1fed99874..9651a1f00587 100644
>--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>@@ -1872,9 +1872,9 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
> 		return;
>
> 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>-		dev_priv->mipi_mmio_base = BXT_MIPI_BASE;
>+		dev_priv->display.dsi.mmio_base = BXT_MIPI_BASE;
> 	else
>-		dev_priv->mipi_mmio_base = VLV_MIPI_BASE;
>+		dev_priv->display.dsi.mmio_base = VLV_MIPI_BASE;
>
> 	intel_dsi = kzalloc(sizeof(*intel_dsi), GFP_KERNEL);
> 	if (!intel_dsi)
>diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
>index 356e51515346..e065b8f2ee08 100644
>--- a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
>+++ b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
>@@ -11,6 +11,8 @@
> #define VLV_MIPI_BASE			VLV_DISPLAY_BASE
> #define BXT_MIPI_BASE			0x60000
>
>+#define _MIPI_MMIO_BASE(__i915) ((__i915)->display.dsi.mmio_base)
>+
> #define _MIPI_PORT(port, a, c)	(((port) == PORT_A) ? a : c)	/* ports A and C only */
> #define _MMIO_MIPI(port, a, c)	_MMIO(_MIPI_PORT(port, a, c))
>
>@@ -96,8 +98,8 @@
>
> /* MIPI DSI Controller and D-PHY registers */
>
>-#define _MIPIA_DEVICE_READY		(dev_priv->mipi_mmio_base + 0xb000)
>-#define _MIPIC_DEVICE_READY		(dev_priv->mipi_mmio_base + 0xb800)
>+#define _MIPIA_DEVICE_READY		(_MIPI_MMIO_BASE(dev_priv) + 0xb000)

ugh, and I thought we wouldn't have so many implicit params anymore.
Mind adding a "TODO: remove implicit dev_priv parameter" ?


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>


Lucas De Marchi
