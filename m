Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1C739B634
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 11:47:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D22E6F5EF;
	Fri,  4 Jun 2021 09:47:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99AA96F5EF
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 09:47:51 +0000 (UTC)
IronPort-SDR: xzkYTle2DxGJrp5jBc+vfutGMSdwPpaxpKvqGzbhuphPSgJ2FxkiSxeX8ckzPHGI/SV+xbc9ge
 H01SORL6GBfQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10004"; a="204073769"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="204073769"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 02:47:51 -0700
IronPort-SDR: e8NgHQqmi2EarJsrrP3n1jON/FuvGmx9N6wu6s/EATqogBuQ/rqTUIMGc19GBPJ5NQ6Wnp+Vur
 huq0/WLbwJ7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="468272013"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga004.fm.intel.com with ESMTP; 04 Jun 2021 02:47:51 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 4 Jun 2021 02:47:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 4 Jun 2021 02:47:50 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Fri, 4 Jun 2021 02:47:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ScaOyB56YOw+gNSWUGTt2EvWrH2+5CW/7yctNV3AqOGRcvEmjFN2OBo8K2t2WP5hdkx8KXw/MbWvPb077qnYxUGTAgZfN1cpt/j9cM6WcInOLJWB9zMWCHp2vEMMKSv+a/ZEMbPdSp+OonUQfxbUj8MSi4iZTpepJi78jPeuTdm8LEUv+Icq+4FgbYH8QTRubGiRELTEVoM4dW5sBeff4gikB4aTV/4l6wLMrhjHDI7qz5xLlNU+G1wfT6B7b8ckgPgE5dEqQ6KY+SVkKgdlvylPk+sfF962Q4GyTJnZJZP60D10UJyeZPXJsd4JAnxvim4SXFJMaNYWwmtA5u09nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mLOwo4J8yPuil11lQ62mespCKgIG4RZEQzifRh9Fln0=;
 b=Eeoy0GO7YmRtLAGG43hUVUzVhWVoIJLEB0eK3rBkkxuQooTlaygGUav+WRIWEGrs+/F7FGrA9g9NqARzdDXAkCDI2cfqihbV0bHeNoQjX2BVfQ8WcLAwopWU81DFVP8QjqNEYq72+atmSn2ojo9Z2JJ2MN0zL8hrJKQMmYHSlIys9BT0M0gnNZBxCn3J5zVVR3SXBXwDtnCt+5KS1/0z0Zal/4Lv6Xkx9C5YJzou4M+td6XTkGQuFQgLesOqhwPkASzzvhmjr/OVTwRrAq0wmIpuY+t6wvShZZJLoPRGPxDTq5BawyxfBJ4pMkC6W27cPMQRPYneXgBJLmrD5NShNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mLOwo4J8yPuil11lQ62mespCKgIG4RZEQzifRh9Fln0=;
 b=KpHb3DrAjqDfoh+f9P+83CRAhL+uXisrPj7+79AksDFeYmT6ZQCNTc2P5SiW21tPuolnid5Z+aHaJLZcl2G0iJtyO1h5tQF9QGxY9ThFLbOoTgdf086hvi+atCZIsJobROXk8KTZaC7MSbUnfTLh082SEALQAU7qR5bGvMezxJ4=
Received: from CO6PR11MB5569.namprd11.prod.outlook.com (2603:10b6:303:139::20)
 by CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.23; Fri, 4 Jun
 2021 09:47:44 +0000
Received: from CO6PR11MB5569.namprd11.prod.outlook.com
 ([fe80::2d63:b94a:89c5:4514]) by CO6PR11MB5569.namprd11.prod.outlook.com
 ([fe80::2d63:b94a:89c5:4514%7]) with mapi id 15.20.4195.024; Fri, 4 Jun 2021
 09:47:44 +0000
From: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>
To: "Varide, Nischal" <nischal.varide@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Varide, 
 Nischal" <nischal.varide@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>,
 "Gupta, Anshuman" <anshuman.gupta@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 1/1] drm/i915/xelpd: Enabling dithering
 after the CC1
Thread-Index: AQHXV7Cz4HpUIlA7yUKs4V0Gia20j6sDl6mQ
Date: Fri, 4 Jun 2021 09:47:44 +0000
Message-ID: <CO6PR11MB55693D965DDBA634252CC63F8D3B9@CO6PR11MB5569.namprd11.prod.outlook.com>
References: <20210526181728.14817-2-bhanuprakash.modem@intel.com>
 <20210602061739.29134-1-nischal.varide@intel.com>
 <20210602061739.29134-2-nischal.varide@intel.com>
In-Reply-To: <20210602061739.29134-2-nischal.varide@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [157.47.79.169]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d177524b-6e5a-4fb5-bd55-08d9273dcdc1
x-ms-traffictypediagnostic: CO6PR11MB5636:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB5636012BB0F010CE0A586FC08D3B9@CO6PR11MB5636.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PWIz5CzUZE84RMUJxdwMGU8Y61o9CNdlh07lLUTe+45pfXHwLUqSkmw/STzM1F4PfDfzZRLmCNPxqL3xdL+4WU/GpAFeutpQkun5amIlN+E2XqYzoZ8V9WBAj2EhDaiLZqb+J43j6351I9NfD0P8Yff/MrEArPIf5r+puh+Rmd6mo8ys/k0knzR/M28sc6h8HBaHd+ExXkWyzCyFoedH/qjHcumEjB9oLH3ntzdFMLvtPqOma1a6P0bvwRESS730H28jqnlmO2GxYdtWRHfTq3yXyx3Dc8AbsIeH0FWovc7Zvte5yIXwTyxJ5XBfJ1rGGrFTfVDZ5aTSL+e+cM7+7JV1VlSlfZfTnazWzClhIYY2/biVPOvF7Jx43k1+wHhtwBiCqOd6MA2ciVofjD1XNRXyzkp1FOyEN82YdrWLO1sl9jqIJPYj3wN62E/QpPTm+nj9SionIhytHnYeds3NSVme9/tBhGVVLlhbfyGwk/0LQebbv1GT97enZ1GojfpzUMA0d7VWS3Z8EbTaw2MTcSufUY9RHfOsrxYy8PnAEABS6IrWZmKIrLTEoaCugpmz2EvOv6oHL3+G68SzQznhvzIPIgxlW4ryJEUsc3rUzWYafFFYXvriuZEq+zWv6Zx9KbwU+DYpEVUcmqWXfRjTAlkn2YAyNQKtJv63xpdhDIZTcqvvp1x3bwGEHJELPIiN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5569.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(39860400002)(346002)(396003)(136003)(366004)(55016002)(38100700002)(966005)(86362001)(122000001)(9686003)(33656002)(316002)(2906002)(478600001)(26005)(7696005)(71200400001)(8676002)(5660300002)(64756008)(66946007)(66446008)(186003)(53546011)(66476007)(6636002)(921005)(8936002)(66556008)(76116006)(6506007)(83380400001)(110136005)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?Hk13RcpVylU3CQVQWoGbWo+s8+bqrTxn+uDlCy7qFNvdJ+FoqbxApEPuwckP?=
 =?us-ascii?Q?85HdGkJLB3TWgi6BSKM7q1/DvWWe2kZ4zWwqCtFJUzQLvMJzMwM/B4Cw0eGI?=
 =?us-ascii?Q?8yIXdXBmc6/7Ke1Y9UpFOb7EasiiMpEXqLr6zTZ+EKEwSs9V9jYAhcin8O6K?=
 =?us-ascii?Q?X+atKPhQoNdq9Y/KbqUcy4uM4ZSiyE7FZ7gU/QBtFHjADgJZ155idyzw09Uz?=
 =?us-ascii?Q?0I48LLlnljljPzw7h7c1LevxdZj3kH2Fr8seb9qVw9KcR6THH3r6zuc4FnJR?=
 =?us-ascii?Q?GHFzh9mGkquxR67xxy0XvBWvM75dfTj137LGRS+onCDYFlTdLXEG2ri/lhzD?=
 =?us-ascii?Q?+lNeBS2CgFUyDqGrEl3nZovYfZAwssSvTCdHB7yj7QU9GiRGzNvebCMZPPNz?=
 =?us-ascii?Q?iQpzADDR0HzMdkwpezFzyUBuS5FoX66qCRws1lCDlqjr+yCCI8Wnug1NtEuo?=
 =?us-ascii?Q?EPE5FkQ0DSdVDbS/18ueww1wZEsQrLCHB0zkpe3Tx+mCa728bh3zEG6VY2rx?=
 =?us-ascii?Q?VQtEXlJK1bvNvMF+n86Qmm6cRx7wJnlm3YCCoGEg3kQIZX+6c3Y+eS9imJNa?=
 =?us-ascii?Q?Uqt+vZYoTNj0geSlFVXjp7FqZhvNcZDfeyPgSx2KLUvnUcFz7cRG+I9oZyUq?=
 =?us-ascii?Q?PVEIa8mBtFS4Zmqzj/PZqdvlQpcbluNzHNxfr5MX5aFYXZht7Rdozx5VPV3X?=
 =?us-ascii?Q?3kKBDqPhMI1G9CfqRRV+GTUS6eLhYaWHkzaCqzLO63jchj5tUOxm5bXjOHyM?=
 =?us-ascii?Q?wuVddMffFX6t9JoHiZggDB4ilJCzDzEJ7PEphnliabgJeDSfBaVD/XkPnP9a?=
 =?us-ascii?Q?EBEyPXDr6d+Nag5nLhCM2qwRaXOTML5KUwyoYzUCalofH6fAjvN4Vxr+Vy2z?=
 =?us-ascii?Q?Hdn1Br1uD7XG6RVHdIFvc0UDuVCFPSYSfHG3ymCPoC+UvZDBCvATxFx3qsfI?=
 =?us-ascii?Q?QfWguJMwVjLa5TQwZE8MVeRpRyikPCitxp298YDxW2qntlE5C1a8IyYVnssZ?=
 =?us-ascii?Q?TyVFZtT/ELQ/bU0mov/ipK97OLkJNL4Cf3+FviUqddR6kSwYdzVEddXmlVDl?=
 =?us-ascii?Q?icsEREusgC6UYyq6QFeSLKtmqB0WStZi3O2Mq79fL0xyguiT6+jyINHkfzEK?=
 =?us-ascii?Q?+ju8vGWuqcWFxDxOKiqIS+VkffD4NZRF4aVDS2dn1TXQq4/Ts0dID1Dr8EG0?=
 =?us-ascii?Q?topfO8q1DR/r/LSq7yLZ8dFoZpEVb1W4eQDpBo+3UzYO36tTkVFb9PCZkjhi?=
 =?us-ascii?Q?pfD51g/z1P2up3Y+QoQQRaomKkER6GHQfuOoHcPkLeLWLKI1ees0g4Yd7Aj+?=
 =?us-ascii?Q?B39OBUzBs7VjawOdul0o5so9?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5569.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d177524b-6e5a-4fb5-bd55-08d9273dcdc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2021 09:47:44.6437 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IJsREDyXoVV9sXKT7aGAjI+Tr0mdAPj++/1T1Lyb4l3ijOwybSQrCTR1LXbs8pjHz3Vo7EyICf0QnQJy/80Ufks9tcF6ycCkZWcmy1pwu08=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5636
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915/xelpd: Enabling dithering
 after the CC1
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

> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Nischal
> Varide
> Sent: Wednesday, June 2, 2021 11:48 AM
> To: intel-gfx@lists.freedesktop.org; Varide, Nischal
> <nischal.varide@intel.com>; Shankar, Uma <uma.shankar@intel.com>; Gupta,
> Anshuman <anshuman.gupta@intel.com>; Nikula, Jani <jani.nikula@intel.com>
> Subject: [Intel-gfx] [PATCH v2 1/1] drm/i915/xelpd: Enabling dithering after
> the CC1
> 
> If the panel is 12bpc then Dithering is not enabled in the Legacy
> dithering block , instead its Enabled after the C1 CC1 pipe post
> color space conversion.For a 6bpc pannel Dithering is enabled in
> Legacy block.
> 
> Signed-off-by: Nischal Varide <nischal.varide@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c   | 7 +++++++
>  drivers/gpu/drm/i915/display/intel_display.c | 7 ++++++-
>  drivers/gpu/drm/i915/i915_reg.h              | 1 +
>  3 files changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> b/drivers/gpu/drm/i915/display/intel_color.c
> index dab892d2251b..e11b3dbf0b95 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1574,6 +1574,7 @@ static int glk_color_check(struct intel_crtc_state
> *crtc_state)
>  static u32 icl_gamma_mode(const struct intel_crtc_state *crtc_state)
>  {
>  	u32 gamma_mode = 0;
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> 
>  	if (crtc_state->hw.degamma_lut)
>  		gamma_mode |= PRE_CSC_GAMMA_ENABLE;
> @@ -1588,6 +1589,12 @@ static u32 icl_gamma_mode(const struct intel_crtc_state
> *crtc_state)
>  	else
>  		gamma_mode |= GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED;
> 
> +	if (DISPLAY_VER(i915) >= 13) {
> +		if (!crtc_state->dither_force_disable &&
> +				(crtc_state->pipe_bpp == 36))
> +			gamma_mode |= POST_CC1_GAMMA_ENABLE;
> +	}
> +
>  	return gamma_mode;
>  }
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index caf0414e0b50..fd3186a5e6ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5762,7 +5762,12 @@ static void bdw_set_pipemisc(const struct
> intel_crtc_state *crtc_state)
>  		break;
>  	}
> 
> -	if (crtc_state->dither)
> +	/*
> +	 * If 12bpc panel then, Enables dithering after the CC1 pipe
> +	 * post color space conversion and not here
> +	 */
> +
> +	if (crtc_state->dither && (crtc_state->pipe_bpp != 36))

Consider we have a config as 12bpc panel + DISPLAY_VER < 13

This check prevents the dither at end of the pipe and apparently icl_gamma_mode()
will not enable the dither after CC1.

So, we'll end up not enable the Dither at all.

>  		val |= PIPEMISC_DITHER_ENABLE | PIPEMISC_DITHER_TYPE_SP;
> 
>  	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 24307c49085f..fa800a77ea49 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7743,6 +7743,7 @@ enum {
>  #define GAMMA_MODE(pipe) _MMIO_PIPE(pipe, _GAMMA_MODE_A, _GAMMA_MODE_B)
>  #define  PRE_CSC_GAMMA_ENABLE	(1 << 31)
>  #define  POST_CSC_GAMMA_ENABLE	(1 << 30)
> +#define  POST_CC1_GAMMA_ENABLE  (1 << 26)
>  #define  GAMMA_MODE_MODE_MASK	(3 << 0)
>  #define  GAMMA_MODE_MODE_8BIT	(0 << 0)
>  #define  GAMMA_MODE_MODE_10BIT	(1 << 0)
> --
> 2.29.2
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
