Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BE375ADA8
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 13:59:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0F5210E5CB;
	Thu, 20 Jul 2023 11:59:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2BD510E5CD
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jul 2023 11:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689854353; x=1721390353;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9FTB8Byg1fhAZArYS9SRUy3LD6fuG4pH0nGLIIoDFQ4=;
 b=THQ6usEDqmgeUj7FSDesDSyREnGV7Gbau6yJBOOKlG+FmL8elgmn8W/d
 jfaomnn7Cu+XMk5YzlWbm0K4/mNf77XRHmqD+8D/F++sLz0OZdA2Ss9+m
 KigCIDJBc5gnCVaJodhHWivVMk7MEbyhZMJoNMJcfhx0yHIfSSetInv6B
 tYRJ2r3HwD+MkIw+DdiWtYQIYLaF+CQvfk9VFexOUNVg6w4/qgbGgTOjO
 GK43d7kjuR9ffHro93QUvI5c1DFFAuK4A0MOGyHA5YOIse4KNzK+jwQZE
 AYQUX9KGdTivlRcgoRcVMrqZYdzu2sRuVP3yVBfbdofQhuQmXMQoynIdM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="351573372"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="351573372"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 04:59:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="898248457"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="898248457"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 20 Jul 2023 04:59:13 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 20 Jul 2023 04:59:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 20 Jul 2023 04:59:12 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 20 Jul 2023 04:59:12 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 20 Jul 2023 04:59:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fv9q/mcohU1VCzw4d8LjcmvvC4MXbFPeAFyFksR31yFZTX/vn/pLM1V2MdgDZOfxxHe+327onRwRNO1lrG4vsLMmGjXUX3JzvWZtfu3U59Kegpvw1ToUE5QD0AWIMEy85oY98DQDMg44nr4jz93+ykx4Wr8nQ361xW+qo122N/ZHAq9kZk9rVHmrDLO95hr6wlpDc9VxkfWSpMYeCV99hLsfy4XI2qj/pR6LrVkoKyw1SuoyZ3KtSQlgCGjAuK+lC+lw0RunHcMchScV8Qzn4tVFnlHjgqh04Qp+hXTj6uluY2c7Q8tVA6PBOkSjOBcJCv2Bup82YviWyR/ErBhKlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qlklFO/1w1uq7lmG/GN4gG7lXYMSnjczy3zUIwQVaIU=;
 b=VHZFDPHttfR4G+6xB6ioAMYmDHW9MCivs8cYn2OIrGt1AkGtEyyen4O43gshyk2q88wqnEr0uBFTLLkieON34etHtoT7ngb3GVMijOwnxYlQBXgisQJnTqT4BcVpBMw1U9BFzexkTE+oprdZZSAl5Ja5Zdb4ECyIxUP0yLRMiLvQI2rRH7fxxC9jtBMgb3hINsX4CSDcCkBfZqzUVpoqYIz2VrBHBRtHm4jm6HxP9TX4jj+BSEudLf7fEW9pBsBqp5xAgJCfwkBVdAImC+9ItIdr/G+wsjjdJEWFv52gUIztvWYGA4DUAzYx249eFVYScqI45p1hRfeAF94nCsrtdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SN7PR11MB7565.namprd11.prod.outlook.com (2603:10b6:806:344::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.24; Thu, 20 Jul
 2023 11:59:10 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::306f:ccd1:2620:a9d7]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::306f:ccd1:2620:a9d7%7]) with mapi id 15.20.6609.024; Thu, 20 Jul 2023
 11:59:10 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 1/2] drm/i915/color: Upscale degamma values for MTL
Thread-Index: AQHZszSkmaOvF+WwwUarnggpdLM+uq/CnHGA
Date: Thu, 20 Jul 2023 11:59:09 +0000
Message-ID: <DM4PR11MB6360426721D1123DCD475C06F43EA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230710134317.2794177-1-chaitanya.kumar.borah@intel.com>
 <20230710134317.2794177-2-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20230710134317.2794177-2-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SN7PR11MB7565:EE_
x-ms-office365-filtering-correlation-id: fbb110b3-4975-47b2-75db-08db8918ba04
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fk7tblmrwtcwYRzs09fdxYDLzGWwN0y1wguRvyFZXnBetEfl+GlhgFR+grfMV5pELVdLvnVXS1r/8d+WdHJwxfHGlclK2cLQvFnNc1yPZi7o5pNCDC9nM2ZvkJtVOIvVr9bvf4suvH3GUq6GTh3SxZMYUN4mR6cur0171KHYQViZtHQSkPxwcBzb4MXCKCg2mHadEdkCZrQFWTezs84lzO0mTapEeYaL+QJTHF0s2s7/7+PtR5djr9l4VVOU0q9nqfCk7ZjIkCh+UHsvy6MeBwF+XWcZ3h8zkXYwBZYny5VhsANSG5z001Z/Nc0sZyfLfEnwkCB4798+1HG8/cI+TgTGmB5HKQo7WhDLiWWSo+6OFIPN8yReRI8YStKuLfYmZviRHN84CzDi2pWsMIZwiHbwQkVOEzPQX4ZCKeNj+ffML4ELHdZU1yDkAN+sGywqAmYTJ4P90fouq1OzA3yzHGX773ct7feIuxpQmvU5uuZaGbU3+fWXRT/tfeGkwkK205tsbE9MJ/n5FbL19sq88qoCZ4/Z4kejLNuKotnT/HroHsdss9w8zM/cnUDO439d1fU3WMoU67hspE/0NLtCPluTarS4F2FAuyKdWqwo4z3aadp2oReLaZREI+X57x71
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(366004)(396003)(376002)(39860400002)(451199021)(86362001)(2906002)(38070700005)(33656002)(55016003)(186003)(83380400001)(6506007)(53546011)(26005)(38100700002)(7696005)(9686003)(122000001)(82960400001)(110136005)(71200400001)(76116006)(8676002)(66556008)(8936002)(66946007)(66476007)(4326008)(478600001)(316002)(41300700001)(52536014)(5660300002)(64756008)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cOEkRbRNataFH4hT1jg1xjGvnurgyOBwFsgHyVuAeuWJFMYr1jxdrcVxeSjP?=
 =?us-ascii?Q?Txztq3ZLxvC3Bij1ZsOg9vihjlaZ+MhTwSs7Badnf4+N2t80qqK0+THc18DU?=
 =?us-ascii?Q?25g3RKW5Sc4NwyMmUBT+QGLXPtkizUJYIelC+NNhn0LO/BzyZ22DnC/Q5gHw?=
 =?us-ascii?Q?84eKGAIVLRBLz0F0GYrEehX6JQFicsQpKh0K3GXHnhpLVdofanccBC/tSdmY?=
 =?us-ascii?Q?GwHCQtSkhnW8uqesaMhkjctd+KzPwsuMbdu/qaIKpC972uHu4GLEewPUw3X6?=
 =?us-ascii?Q?TP4y8VDOKrHr5gJrjJR3yr3bLAa5YP24t2NslKJmMWIWEEjsNOziiojHQZ+S?=
 =?us-ascii?Q?52N6bNHPhkkUS7JPrPBMkNd96htNENMOL+kXaWcessOU4ms/yU0TiDm7Mib2?=
 =?us-ascii?Q?F4n+yo+uJb5m8KhQRaRSPvlm6McqTI1v8yMZn683SspS46vLJ5YncVek8L2Q?=
 =?us-ascii?Q?/9GpvRvTiEIJGHebvOk7NO6k+T9nu9//wn5H54xooFT4hpDB4sBCPMY/N5vG?=
 =?us-ascii?Q?4tLn+W+0JYQrBnD8GcDiqWICMuE07nvizWtgylJ7HRBcVq+/TNMztjNUD6Hx?=
 =?us-ascii?Q?1cQx8FqFs6t3wcmbQTcaNg80HIs39P6U4si+98yRklbGSkegYDOQphPF9Xci?=
 =?us-ascii?Q?zoUWAu7cuMrNiENZwqSFumGIvGBN3+18aBdFfRJciWrfMa8XFmgbjTaF5wez?=
 =?us-ascii?Q?9UQ/JIZl4xLuIQtFEKtnAITPuk7RfCuzKmWEkVhNmf/tPI+nvemj90ZRI7GL?=
 =?us-ascii?Q?8VFKCz/AA1bzb9aeRD/ZxjbnOf3dM1A9wisKqC9nODIGQB3HM/VpS+WhSVI8?=
 =?us-ascii?Q?f3dMPnlWST7LBfK9XIMBBTOZwGjJijJz7h6djZ2J0iJqkSKRYUYqF9zBxDoR?=
 =?us-ascii?Q?M6fIoOG2+2/6SkMgeOfyfg8/0IRYFDyuGFD5oYxDzmZjIUGbwZzFU4IfX+m7?=
 =?us-ascii?Q?HPIBun0oAz3jU+EmCdxFx7Bs6PxuzN08zpB8XXlM/Bk0iJEIfkF2j6IeqBpN?=
 =?us-ascii?Q?5hfoJsykivj11P9+657n8D75a64WzGp4J2NmFGZhE5+fGWS5GH+RrfHewSb2?=
 =?us-ascii?Q?INRSNJqRA95k7mvayqb+5BF/5lHfIwL6iSHKueUoaD0K9v29mekRhRVmTvu+?=
 =?us-ascii?Q?ZgSBGaJcB58Z9PdHrvDV7tc1Atu8sBX6r9oxZYeFeX3M7DkjBBhd4n250aBl?=
 =?us-ascii?Q?WqiDPzC5nXaMF/pRxagG8NXsRoJi6JC60Ed5cglEyW13/m9fveodP3SIg2Bk?=
 =?us-ascii?Q?oqJ8oBKQ/Z4opSLfnBSXuR9Hi8SuIrmWRuUm9HSpO4+EBQSc2SJwgiYrEzHO?=
 =?us-ascii?Q?HiUkr2bH5xDH0Ly3bP8lubxGIkrJT+Njjny6cK0ATbHyr0swRsZuqtM1jBtM?=
 =?us-ascii?Q?2UNYXiwi9+3/sqbgLbd7LPsC47qxDlvohkCGexAQvwWkOMvRloJKGvaGMgNd?=
 =?us-ascii?Q?JiuduMu6eiJWqdqF5qBNOTPYTyw5Hqkf1LmFYOY0mNcc13mzmgcuBS4p5JRC?=
 =?us-ascii?Q?LJwnLKNSxf1QVYPhqnAA2+7WLEKFe16TtbxwG1ABm9qeCEW5Iu4n/JnUq0iB?=
 =?us-ascii?Q?7N0kGl5MQdo/dbFYEbzCEfAFmyDe2lTVe1kPlwWt?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbb110b3-4975-47b2-75db-08db8918ba04
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2023 11:59:09.5801 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FDoc5rach5ZcB39dUKYWzm/dDdXAVVvD894DpJwhjmlKlKk1m2JIAM2qK07+dlzZRsCSip/oc3BZuVQat+FugQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7565
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/color: Upscale degamma
 values for MTL
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



> -----Original Message-----
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Monday, July 10, 2023 7:13 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: jani.nikula@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>; Bo=
rah,
> Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Subject: [PATCH v2 1/2] drm/i915/color: Upscale degamma values for MTL
>=20
> MTL onwards Degamma LUT/PRE-CSC LUT precision has been increased from
> 16 bits to 24 bits. Currently, drm framework only supports LUTs up to 16 =
bit
> precision. Until a new uapi comes along to support higher bitdepth, upsca=
le the
> values sent from userland to 24 bit before writing into the HW to continu=
e
> supporting degamma on MTL.
>=20
> Add helper function to upscale or downscale lut values. Parameters 'to' a=
nd 'from'
> needs to be less than 32. This should be sufficient as currently there ar=
e no lut values
> exceeding 32 bit.
>=20
> v2: (Jani)
>     - Reuse glk_load_degamma_lut()
>     - Create a helper function for upscaling values
>=20
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> b/drivers/gpu/drm/i915/display/intel_color.c
> index 8966e6560516..15ada7fada96 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1453,6 +1453,16 @@ static int glk_degamma_lut_size(struct drm_i915_pr=
ivate
> *i915)
>  		return 35;
>  }
>=20
> +/* change_lut_val_precision: helper function to upscale or downscale lut=
 values.

Fix multi line comment style.

Change looks ok to me given the limitations of the UAPI.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> + * Parameters 'to' and 'from' needs to be less than 32. This should be
> +sufficient
> + * as currently there are no lut values exceeding 32 bit.
> + **/
> +
> +static u32 change_lut_val_precision(u32 lut_val, int to, int from) {
> +	return mul_u32_u32(lut_val, (1 << to)) / (1 << from); }
> +
>  static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_sta=
te,
>  				 const struct drm_property_blob *blob)  { @@ -
> 1487,8 +1497,15 @@ static void glk_load_degamma_lut(const struct
> intel_crtc_state *crtc_state,
>  		 * ToDo: Extend to max 7.0. Enable 32 bit input value
>  		 * as compared to just 16 to achieve this.
>  		 */
> +		u32 lut_val;
> +
> +		if (DISPLAY_VER(i915) >=3D 14)
> +			lut_val =3D change_lut_val_precision(lut[i].green, 24, 16);
> +		else
> +			lut_val =3D lut[i].green;
> +
>  		ilk_lut_write(crtc_state, PRE_CSC_GAMC_DATA(pipe),
> -			      lut[i].green);
> +			      lut_val);
>  	}
>=20
>  	/* Clamp values > 1.0. */
> --
> 2.25.1

