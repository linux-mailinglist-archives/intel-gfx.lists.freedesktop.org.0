Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4AC32D390D
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 03:57:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD8006E0E6;
	Wed,  9 Dec 2020 02:57:35 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D09D6E0E3
 for <Intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 02:57:34 +0000 (UTC)
IronPort-SDR: Xj3p/S4U4hp6LYlXSI68yLDUUoFssjifsKuoaHWzTGTVJc/4WD4cKTRkvV8uTIGuvq/wNw+dPh
 GNd+bOAS59xw==
X-IronPort-AV: E=McAfee;i="6000,8403,9829"; a="161059766"
X-IronPort-AV: E=Sophos;i="5.78,404,1599548400"; d="scan'208";a="161059766"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 18:57:33 -0800
IronPort-SDR: PWrzkYzZfGlxeLq0V01D0CavJ8O81nN9Lo95uFXKcMnDcNhDHd6XaDAEgTr8vb2/3oC/1lSsML
 X9uzOGbSpVSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,404,1599548400"; d="scan'208";a="540479975"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 08 Dec 2020 18:57:32 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Dec 2020 18:57:32 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 8 Dec 2020 18:57:32 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 8 Dec 2020 18:57:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZcjS4ewwqs2EwjMiHTNrSJe0Kji15StuxLX0hzWtf9ArIEXyepte8Pv/pcYhist8BB2rU9HrwZGP2iZ409sfv9ElW2nykonslD3Fm4bX8f31vCYw1a6q59tW24R/2boY6sWT4qnFqw1y93AO/+9XZ1baJ3wBdYa1oekU6lOmH4+5SfxdeSBrM/Ev8TZdltnPaq+7o5ZCBLbDYIwutB1R91NP8KmlJJHxwxSAgL3Nddz1HtpopRX348eRXSGwvbQiJ0jOR1S4YZFtPWWtnwbVpwbyl/U6Z9SBXor1n2HUDQRgGS1SB+0Edjw7EA96hg2Ux45NOtr1Iyw+mx3XbHJ28A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2q/JyFAD8npJFah8PZ37DScWG49KJyNW1WudAdD5zhs=;
 b=bw9APgA1zGf1bKvPrcE7xj9cmfFHZryCQv5IJ5TyFmUY0cCoRQld/zo1Zhm0BF8GXl+EL6ci+vU2z0qLCBbWAOLTmYMsKC15NgVz+sIdr13NSesMhziJ9S4p4imBx26yI13bWHr2JKZ0hRsnbaLsrNquH7t7fsTvT4ooW/S4/ll45i1sAL4bW/2JbwFWsOorfsMcKyZZBvbq87PfyQ1qHhTKSMeRv5/NROahYfe27f3d8O4GJuY7lnR69ED35CX7uB8mHF1xXYh2nzxs6QRFu2XPpP8Ryp/iSB+Q55WQj9Lo7U6ysL93/Hu1+SdZYl3a4NxxkIQ+tMEkGMpQrL5ceg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2q/JyFAD8npJFah8PZ37DScWG49KJyNW1WudAdD5zhs=;
 b=Ia19XWBakBiTp9olO+KzVjE0+yUKfRYOnbgHo0H2ikAL98M78rtd7epveoxOO3K9OBQK+Imsf2EINQJcc9lJA0/9kX+Defkt4g1l4HmYhk1MCPacX+Ll4p+a9maVAriQqh1Cn4ZEWQTQKe9rYgDTXNu9rJW8BXxxMGatGUIgbD8=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM6PR11MB2761.namprd11.prod.outlook.com (2603:10b6:5:c0::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.21; Wed, 9 Dec
 2020 02:57:29 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071%8]) with mapi id 15.20.3632.018; Wed, 9 Dec 2020
 02:57:28 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC-v1 06/16] drm/i915/pxp: Implement funcs to
 get/set PXP tag
Thread-Index: AQHWzI9ph8zDH5Q4nkK8Z3cIGvVdX6nuFMhA
Date: Wed, 9 Dec 2020 02:57:28 +0000
Message-ID: <DM6PR11MB4531505FB0B7FA5595991D63D9CC0@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20201207002134.13731-1-sean.z.huang@intel.com>
 <20201207002134.13731-7-sean.z.huang@intel.com>
 <160734193807.9322.5386742605604912810@jlahtine-mobl.ger.corp.intel.com>
In-Reply-To: <160734193807.9322.5386742605604912810@jlahtine-mobl.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [73.220.16.43]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4bb306ac-4e92-4a94-133b-08d89bee2a76
x-ms-traffictypediagnostic: DM6PR11MB2761:
x-microsoft-antispam-prvs: <DM6PR11MB276192939E9E87603CE7449BD9CC0@DM6PR11MB2761.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:923;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vyX8BVqcDkQpFn8J8C+HobFFb/z03nFa/gfDRu5SV54n4cT4DZ6cNLBa+sRkTTw5bobWS1+u//CWjnJzlJSbwmyQ9aAm9qCHysQ9uV17of173qEyr6ERZ5WhYTuqEajT4uGT+j28HPS4H6FAo7s+zj1py7fG6n6co6g0cYvwrYKabvrcjmpqAZKjUC1PBHDF+9QDT3z80hj44Yx7aTyiENSkZV8iAjIdUwplD/uGc0iA46jyqY5/7/AgRuGFqCAmWpwXcLguxvkAd/ooQOg7NXVeBVT1x2cSCkT2KdPQ+DVO8xMRhXkgGik91dopucHlv1E0yRNfTcs8tN/oh89VHQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(346002)(366004)(6506007)(76116006)(7696005)(26005)(2906002)(5660300002)(53546011)(66946007)(83380400001)(508600001)(52536014)(66556008)(9686003)(66476007)(8676002)(66446008)(110136005)(86362001)(8936002)(64756008)(55016002)(71200400001)(186003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?VlhkZ0x3YW9GQndsZ2tta2doY0ExR1N2YzJyeWU0YXNsR3ZOZnl0Wm51cDND?=
 =?utf-8?B?YlE5M3o5WEJDWklSRGdjdmhLTW1Mb3BkbEY4VUkzNG5qRWVSeDBQUDBDVTFH?=
 =?utf-8?B?dllQYnNoM2JsVXNCa2FFb3pmNk9zanJGSmc0Y3NtaG5qWFdnVWsweXlzUXNi?=
 =?utf-8?B?RDhUTmJ0bVROYUlGUXN0TlpFZFNjakJWUzBkMWl2ZFd0TnhGcGlDaFpNcjZn?=
 =?utf-8?B?T05Bc0FXWENaa3VZai9TSGRRMDUyWmxSemZqS0xlZk9BemFLcGU0Ny9SeGpv?=
 =?utf-8?B?NFVMRFpCSVJDWFlwL2VGUUVPYVZNZVV2U1Z4UzRKc2pBTHRCVTJxTEI4MlIv?=
 =?utf-8?B?eUFUU2YvT2Zqd3p5WVViWWtHQ2xoK3g1bTZFenNnZWZYaDhySWNwcVRjUnRo?=
 =?utf-8?B?UTU4V3dmRWZ6R2JHcWlHbk5UbUJyVnFuUkJHdmJlZTBxNTZvb25UNzFuR2hM?=
 =?utf-8?B?bUw3MFdPSFdSTEh6UzdySWxFY3kvR2hTcHZhbDVBUE94UXA1dC9kd2hGcEsy?=
 =?utf-8?B?WHFNdFdmOXY2NDgxSFhjZ0phV053UTNUN2JFeUVLZ1NzblBiV1pkc3ByL2NS?=
 =?utf-8?B?Y2krWXNTc3MyeG9PT29MWmpXSjVDSU96b1Q0K0tWcTVOYmhncWovaytDNFov?=
 =?utf-8?B?dU5GRFR6bGRRd3RyWEtXdGRBZldxdTc0YndhMXgvVWlsblZKMTZScnlWNm9j?=
 =?utf-8?B?ZStVdDNVQlVaS0l3YzVwaFM5ZlZETm95V3NjQjR6ZXpIR1RZbEVHM3FSa2p1?=
 =?utf-8?B?ZU9scU9pT0NZeHE1bXNwR1N4ekNrc010dGFuR3prclpkRzN5Q1ZsRjR3ait6?=
 =?utf-8?B?cGhOUUQ2NmRJcXZDMVRJWG1QMnh2K2lpOU5wQ0d6bndaYUV3d1V0dXB4SDNI?=
 =?utf-8?B?RW5CVDZkUi9VNjZhTG8zc0oybEJzbnpveWQxTEtiR3RLMkhCRHhmT09zZnpv?=
 =?utf-8?B?SE9odHdvSGZOYVRoeGxXc0VlTFJKSTQzSlJwSDV2T0g4WHk4M0taQVA2ZnBZ?=
 =?utf-8?B?VkhSSGNzU2RnTHk4TzRMSWpLOW1iTThiY0dXNUFzQ3VLYWY0Y3k5ODk2MTM1?=
 =?utf-8?B?RHAwYkJLcEZGdHAxNENYU0puTWlpd0VDaHdGd3RQdDFpc2lFNm8wOEtHZWFH?=
 =?utf-8?B?UTZHWVdLRVZMQVMvTGlZQkpVbkRnTHNVcVRyelQ0aEdiNHRjMTlGYXJCYld3?=
 =?utf-8?B?N3JHL3NNTWpIaHozQnBjTHlUazlZSmtERVRHZ2NSYTY4d3lwem0vdDNqWG55?=
 =?utf-8?B?d2JlaTJtOXhEYnExVnE0ZWJUemJiWkFkaHYwdXFzVnp6OHMrNStnaEhUbVZG?=
 =?utf-8?Q?9IA0rk6whnQyc=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bb306ac-4e92-4a94-133b-08d89bee2a76
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2020 02:57:28.9220 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q9YDMZMKJACYN+lBA9DKhcuvxDksWm5x4H6JbYNVmcaNSWFhEP5OyuokVOBc/MeM7Wdu+B+bSQDwG0GOi1J/uw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2761
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v1 06/16] drm/i915/pxp: Implement funcs to
 get/set PXP tag
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Joonas,

Yes, I have removed this commit for single session patch series.

-----Original Message-----
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com> 
Sent: Monday, December 7, 2020 3:52 AM
To: Huang, Sean Z <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [RFC-v1 06/16] drm/i915/pxp: Implement funcs to get/set PXP tag

Quoting Huang, Sean Z (2020-12-07 02:21:24)
> Implement the functions to get/set the PXP tag, which is 32-bit 
> bitwise value containing the hardware session info, such as its 
> session id, protection mode or whether it's enabled.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>

By my understanding, this patch should not be needed at all for singleton session? So I'm mostly skipping review here.

<SNIP>

> -/**
> - * check_if_protected_type0_sessions_are_attacked - To check if type0 active sessions are attacked.
> - * @i915: i915 device handle.
> - *
> - * Return: true if HW shows protected sessions are attacked, false otherwise.
> - */
> -static bool check_if_protected_type0_sessions_are_attacked(struct 
> drm_i915_private *i915) -{
> -       i915_reg_t kcr_status_reg = KCR_STATUS_1;
> -       u32 reg_value = 0;
> -       u32 mask = 0x80000000;
> -       int ret;
> -
> -       if (!i915)
> -               return false;
> -
> -       if (i915->pxp.ctx->global_state_attacked)
> -               return true;
> -
> -       ret = pxp_sm_reg_read(i915, kcr_status_reg.reg, &reg_value);
> -       if (ret) {
> -               drm_err(&i915->drm, "Failed to pxp_sm_reg_read\n");
> -               goto end;
> -       }
> -
> -       if (reg_value & mask)
> -               return true;
> -end:
> -       return false;
> -}

Removal of code added previously in the series?

>  int pxp_sm_set_kcr_init_reg(struct drm_i915_private *i915)  {
>         int ret;
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h 
> b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
> index 222a879be96d..b5012948f971 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
> @@ -20,6 +20,9 @@
>  #define GEN12_KCR_TSIP_LOW  _MMIO(0x32264)   /* KCR type1 session in play 0-31 */
>  #define GEN12_KCR_TSIP_HIGH _MMIO(0x32268)   /* KCR type1 session in play 32-63 */
>  
> +#define SESSION_TYPE_MASK BIT(7)
> +#define SESSION_ID_MASK (BIT(7) - 1)
> +
>  enum pxp_session_types {
>         SESSION_TYPE_TYPE0 = 0,
>         SESSION_TYPE_TYPE1 = 1,
> @@ -36,6 +39,21 @@ enum pxp_protection_modes {
>         PROTECTION_MODE_ALL
>  };
>  
> +struct pxp_tag {
> +       union {
> +               u32 value;
> +               struct {
> +                       u32 session_id  : 8;
> +                       u32 instance_id : 8;
> +                       u32 enable      : 1;
> +                       u32 hm          : 1;
> +                       u32 reserved_1  : 1;
> +                       u32 sm          : 1;
> +                       u32 reserved_2  : 12;
> +               };

It is not obvious if this is a software-only field. If it's software only, we should just make these into normal variables. If it's hardware related, it should be documented as a bitfield, like other hardware writes. We avoid using this construct in i915.

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
