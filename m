Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B31108257AE
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 17:07:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F42F10E069;
	Fri,  5 Jan 2024 16:07:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6282910E069
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 16:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704470827; x=1736006827;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=q0cTqVI/g1YeCjBwlsxl5txYEtK/VL04NNOt2h3eeos=;
 b=cMhoh3ID1kA2Zj194Pdpm4rIcoKw9A44k5cMUQsnLAkUWahyAncABZmw
 fbL9nuNElCkPRUvyPe6nsbpRqqbLSm5unBroTThzYGfRYhnxzeJRTnkl/
 S2gRecNKORRQkwyygvdMtPaEsdjOgBJ9laWDCK8uNJbzfJDklHxYiYXJm
 DbJAhejYrVzySQ525UrhNYJAfI0BaD+34OVkJOZ1BKUi09q+Re5ThMT/l
 HvxQ668e0OrAzih5MicNW/cwTwKAotdDdDmJ4UTNZG1mmsdPV7XuDLGbD
 BhoGD+9gCugdMs8X5WRMo47J2VnGtL9E9XYN7s857Yv+61hBvXOBzaxJi w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="461833971"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="461833971"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 08:07:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="809580678"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="809580678"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jan 2024 08:07:06 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Jan 2024 08:07:05 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Jan 2024 08:07:04 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Jan 2024 08:07:04 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Jan 2024 08:07:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wg9q7IwMFeK9kvFL/jO+gNIdm2yDhpnNsMEjpNf6hfyhZofIusjYd3ujt/yKtqajt2bDZV0m3UpUd4F41yuUi+ZJjIagEIgZZvxY2BybMAf/xJsadreM3iWn7/RfdMY8IBOnVpTJbDwbmycvmPSl33ipmKz0wLZAOU498WeeHHZJz5C4m4/G5Qiu78W/OT3IyNeupn+7/rX/3k/V5CdvM8jane8VjWvOvEUIW07EKTLVQKrqhGBXKq96ipEQF4Jk5K08ZBTCOw8Z7p+yH6l7KXtOjr7uVp1BqX/3tsOpcrITxoO2CPIpZj8aKGo454hIOt/AEHBP5sfqW6qkUo+jWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TOn+DmDyADFdMykvGxIqKRgK/XGvBl2Wg2hN9Ve7oAg=;
 b=M3jcbLkinJ8nfVnrQDYgkJkZ0MLDC4d0jRv8XN/Ozg14n3yIT22J9Viy5blLMBZnqE65q4tkshM2nEgnSOufqMM5wM8BRYoK2w5WkChYiDwAQztGuAiGVLW3gcgvyPh8EqfbSkQMhcVOYYbfW51j5PtNZt5Mb9u7nIgsdQ4+7ViD5LBqk391WNdNL9NSCSm444tKevOk4E3Wz4JYJdn8Q9XcKXMSqU/yuEVuvDJHSAPy5ulyDMF/gJfvKt/9R4s1nzUlmquAbzy/lp7cVoA6K/WXqvpUBU2i21PDkLMtbOCWPixau+CPsgHeD7RI9kkI9R2DdIJsaMQ53SW5Vv+OuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8185.namprd11.prod.outlook.com (2603:10b6:610:159::12)
 by DS7PR11MB6079.namprd11.prod.outlook.com (2603:10b6:8:85::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.17; Fri, 5 Jan
 2024 16:07:02 +0000
Received: from CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::c59:e321:133a:3515]) by CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::c59:e321:133a:3515%5]) with mapi id 15.20.7159.013; Fri, 5 Jan 2024
 16:07:02 +0000
Date: Fri, 5 Jan 2024 08:07:00 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: Re: [PATCH 4/4] drm/i915/cdclk: Re-use bxt_cdclk_ctl() when sanitizing
Message-ID: <20240105160655.GH3529480@mdroper-desk1.amr.corp.intel.com>
References: <20240104032150.118954-1-gustavo.sousa@intel.com>
 <20240104032150.118954-5-gustavo.sousa@intel.com>
 <20240104234831.GZ1327160@mdroper-desk1.amr.corp.intel.com>
 <20240104235232.GA1327160@mdroper-desk1.amr.corp.intel.com>
 <170446377782.163223.6155137475069423882@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <170446377782.163223.6155137475069423882@gjsousa-mobl2>
X-ClientProxiedBy: BY5PR13CA0001.namprd13.prod.outlook.com
 (2603:10b6:a03:180::14) To CH3PR11MB8185.namprd11.prod.outlook.com
 (2603:10b6:610:159::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8185:EE_|DS7PR11MB6079:EE_
X-MS-Office365-Filtering-Correlation-Id: f7d33148-6919-4aab-84e0-08dc0e085ab8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qFYc+4zh8PVKEtpGtL53gXSUpdpR6zfwOb0j3hUv/Bl5V/jupXGPB30LmzGy7Krtx25jQPmt49pf5yGDWCM33JWSYh00We0mCJ5Ww4qpNwGsryqurry49dtupSushrcEpdWds+WzVSVMaO0Hq/PxLC704VIJbvtOIS0/Dz8aBSd7UUfQw5fWeCmj3SECLATcpm9dVWNPDpJqTpEZqILoPQotc9SuRP3NYF6k/cnKMGbVXKV75pdZVvOxpq2JSq4QD5nq/1uieRPGFkEu5I1nra8D8MBqUMzwbYmfNn+1IKlKahc1NQR4m7uVJwkkxJgoMKBODxAXrQWunOjloake4BOt6OUbwpKS+COVELxbLxXhcnQFj1BuRmN5EL/m5uyhgg26EXq5LTee03htQW8tanibCjiWPjE0+RqtxOXgwRN9tb2+TJVc3QAhdGPyYgpMqzvRBh9c/h07zE09zWVBZBCX3l/dpdOm6V/KTp9hd1FQsb8HOYI8PszviorbmOBRVUMs0aCAer8B/6Ltt2M1Zmv9yy5/gDL4CAoFOFRHMoYXMI0AgvAnO2DIiAcsJzXH
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(136003)(39860400002)(396003)(366004)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(26005)(1076003)(86362001)(5660300002)(6506007)(6512007)(83380400001)(316002)(4326008)(6862004)(8676002)(8936002)(2906002)(6486002)(33656002)(478600001)(66946007)(6636002)(38100700002)(82960400001)(66476007)(66556008)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SJev1YDlae48i7X2FA01pMX3WfDXfvvKkD9xiiEkHnSlVbz7epc0EEx5Dzgw?=
 =?us-ascii?Q?sdvqIZUTd1WB8ZtS8COItzqdpKo6pduucYJGz+ggyhHM0gNhFvMDenQ3uaLU?=
 =?us-ascii?Q?KfFgYd5ExHVZ+TX6lVMzIWmLayljI+DlIV6bTNbm9Nth8jWbmU5J21lJmIhw?=
 =?us-ascii?Q?901TbXyRsuBe9oZftxdVdV1jWohPBFcwGxNZom3uYLpZDe/vNVOmBXKZ9Wy6?=
 =?us-ascii?Q?zwpgkLqIURvjUH7XtKHo0uKiCOAm2NOGByrinAGScr5INtzyO2KhQ3PQibIU?=
 =?us-ascii?Q?M6XekVKkGWnDlQIhOtyrnRjjP6tbT61FLWdirr8Z9ThRKvPDUQ5In/Yvqyp+?=
 =?us-ascii?Q?x83z+5u7xeKU1TBKAKDbPrUl9LdmI/EjiqN4CynD0HM6AScEmkvHcp9GmL42?=
 =?us-ascii?Q?+Vq8EkaDOBruLVIOzVEGuXRsyqARjX8MU4VeNFcwFf1UVi9mfp9zD7UWZCub?=
 =?us-ascii?Q?YtVkR02bNldYpsnESOIVn8Popt2lgE9bMfPFL9WR1dWFue2d3LZsHEK0PDI5?=
 =?us-ascii?Q?QC38uCPgipsD6USud4eA7FeK+q48AA19axo+F3nYCeNASNOktZ30Zrpqp/tn?=
 =?us-ascii?Q?7PE2fWl3gxdwF1x30vOnD9QORtlEOyceLVv7Td0/khd+Bgz8ZhuHfKOgQxcv?=
 =?us-ascii?Q?MB1Eq85QdEyGz/iw5qf2bsdVkyF6cTUNk8vbVnymGHMsXXH4WAVFRnFqp+cm?=
 =?us-ascii?Q?eklNF5cpGXlrdVkEhpUa68rtFQVTbO3cWWc/Pm21QWhQseM6E7lKAzJBkg/Q?=
 =?us-ascii?Q?bebvhXCl3Y1uf/nSO+US/2O8MdHrYFcm+4SDNZ8NdZmvuOJpJbKHlKqBiMsm?=
 =?us-ascii?Q?oY/x5Gg3reZ9qzKhuM9Hkr4yUFACBx+tqx2KNJJCg95iF0uU7Xf/6q8OBdMW?=
 =?us-ascii?Q?701p0YXqITpK7u6FemQ/P7Re1FPZlPjvMJPxqpURsKuy6IVZvKHjybA790GM?=
 =?us-ascii?Q?H6Mla9pK0tcFCLwS2tiqaF4EAXyzf8tGTdwEb12O8tPAKzOdjHPZjpEBleqD?=
 =?us-ascii?Q?Vx53ZE3Pa5LInwhoLl1nIKXgdgbumOaI+TGWtIJXElMFbxfZydR2e58knaaP?=
 =?us-ascii?Q?6ZbxMQ9EylaRhipfb0PoOTrawgM7p49NwDTuPvQQTSp4Gu0AFppD7HPZKXio?=
 =?us-ascii?Q?LEfOEQhSaJOlEklSo1JaL+3yUuHer6/cwaAVgW7TQIpGHn7PqarHNQcL4B0m?=
 =?us-ascii?Q?+pTjgcuMLW/ij1UrsoinLQtRTj8DRSqZXBwayAQks54ALUumOnJOnvhDZ6mV?=
 =?us-ascii?Q?ED9b5daz2LPMwJs88ScfqdvB2mFwYBa+CC5BC/r4S7awsLtZWs43jSsp6TlF?=
 =?us-ascii?Q?ZmSqJz2r692EKJ0mmfMABvnlqPN0McHQGzRUAD0srXSGzPKF+eoDHuhUpF57?=
 =?us-ascii?Q?3iACkSwxOJ8g00Xr0aIj3oEzf8pV8EyRTVqxC6UsARLZ0X4GJt8+WZPthaFu?=
 =?us-ascii?Q?+uadNgi3pxN0JDaxv2fXcKon+mPTC3yg64iZM7vLcaeIHtCJyiENsKGFP0x1?=
 =?us-ascii?Q?w/MNZDM839SWFBLdRihZB2bWqwKCBwdtZJeqKLSJcV6PdZ2RiDN0s3gL0GrM?=
 =?us-ascii?Q?PjJnnFbKPEEmXTofRv0KcFXzTwwCuj/Fv9yVXOH3StPWnYsI73SpFb2tp3PE?=
 =?us-ascii?Q?FA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f7d33148-6919-4aab-84e0-08dc0e085ab8
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2024 16:07:02.5725 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F39rtyM1Vdp8sFixAZouz3LkL3BEJSVs9qvBAmxS/vPg5dRdV6xLTC1s9aN9jEX3PEWjb2lq1TN7rEilw3ctk4RLsj6vYyc/2IM3rBOnnA8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6079
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 05, 2024 at 11:09:37AM -0300, Gustavo Sousa wrote:
> Quoting Matt Roper (2024-01-04 20:52:32-03:00)
> >On Thu, Jan 04, 2024 at 03:48:34PM -0800, Matt Roper wrote:
> >> On Thu, Jan 04, 2024 at 12:21:50AM -0300, Gustavo Sousa wrote:
> >> > That's the function responsible for deriving that register's value; use
> >> > it.
> >> > 
> >> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >> 
> >> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> >
> >Forgot to mention...I think it's a bit jarring when the commit message
> >starts out referring to something in the headline ("That's the
> >function...").  It's probably a bit better to just re-state the function
> >name in the commit message again rather than assuming both get read
> >together.
> 
> Thanks for the suggestion!
> 
> I have sent a v2 updating the body of commit messages, not only for this one but
> also for two more patches. I have kept your r-b's. Let me know if that's okay.

Yep, the r-b's still apply.  Thanks.


Matt

> 
> --
> Gustavo Sousa
> 
> >
> >
> >Matt
> >
> >> 
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 26 +++-------------------
> >> >  1 file changed, 3 insertions(+), 23 deletions(-)
> >> > 
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> > index fbe9aba41c35..26200ee3e23f 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> > @@ -2051,7 +2051,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> >> >  static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
> >> >  {
> >> >          u32 cdctl, expected;
> >> > -        int cdclk, clock, vco;
> >> > +        int cdclk, vco;
> >> >  
> >> >          intel_update_cdclk(dev_priv);
> >> >          intel_cdclk_dump_config(dev_priv, &dev_priv->display.cdclk.hw, "Current CDCLK");
> >> > @@ -2076,6 +2076,7 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
> >> >           * so sanitize this register.
> >> >           */
> >> >          cdctl = intel_de_read(dev_priv, CDCLK_CTL);
> >> > +        expected = bxt_cdclk_ctl(dev_priv, &dev_priv->display.cdclk.hw, INVALID_PIPE);
> >> >  
> >> >          /*
> >> >           * Let's ignore the pipe field, since BIOS could have configured the
> >> > @@ -2083,28 +2084,7 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
> >> >           * (PIPE_NONE).
> >> >           */
> >> >          cdctl &= ~bxt_cdclk_cd2x_pipe(dev_priv, INVALID_PIPE);
> >> > -
> >> > -        if (DISPLAY_VER(dev_priv) >= 20)
> >> > -                expected = MDCLK_SOURCE_SEL_CDCLK_PLL;
> >> > -        else
> >> > -                expected = skl_cdclk_decimal(cdclk);
> >> > -
> >> > -        /* Figure out what CD2X divider we should be using for this cdclk */
> >> > -        if (HAS_CDCLK_SQUASH(dev_priv))
> >> > -                clock = dev_priv->display.cdclk.hw.vco / 2;
> >> > -        else
> >> > -                clock = dev_priv->display.cdclk.hw.cdclk;
> >> > -
> >> > -        expected |= bxt_cdclk_cd2x_div_sel(dev_priv, clock,
> >> > -                                           dev_priv->display.cdclk.hw.vco);
> >> > -
> >> > -        /*
> >> > -         * Disable SSA Precharge when CD clock frequency < 500 MHz,
> >> > -         * enable otherwise.
> >> > -         */
> >> > -        if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
> >> > -            dev_priv->display.cdclk.hw.cdclk >= 500000)
> >> > -                expected |= BXT_CDCLK_SSA_PRECHARGE_ENABLE;
> >> > +        expected &= ~bxt_cdclk_cd2x_pipe(dev_priv, INVALID_PIPE);
> >> >  
> >> >          if (cdctl == expected)
> >> >                  /* All well; nothing to sanitize */
> >> > -- 
> >> > 2.43.0
> >> > 
> >> 
> >> -- 
> >> Matt Roper
> >> Graphics Software Engineer
> >> Linux GPU Platform Enablement
> >> Intel Corporation
> >
> >-- 
> >Matt Roper
> >Graphics Software Engineer
> >Linux GPU Platform Enablement
> >Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
