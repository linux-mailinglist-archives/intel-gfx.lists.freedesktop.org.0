Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE5C682476
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 07:36:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B83C610E323;
	Tue, 31 Jan 2023 06:35:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB10A10E323
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 06:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675146956; x=1706682956;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=87ODJhWuN6XHG7nJPfueN34fuqU/jnvoXxh/dIGvgu8=;
 b=O6dT+mZKMfnv4ri8QY0pBgEzZvTpuICqU937ZYu4AGnAB60GYRIqu+2y
 aS6AWEhJJM0C1AqeRPGJd0BnBPANIZXZ9nbWUGqKpkoEROu2v/P0UyhPl
 /7cI7AuA6bQa+XJnQCv0z8lWfek88V106f6JVDpEiaqjT5UodOLX2dHY5
 icO79/txtwOHYZuiJ5eARkWQah10qv9hepOqBQq8hQb69Lp3HYN1JqcJP
 qlXPgM/6QSzd9aA+QK5gtqTdedeTXPHh3Z6mExCDGk9bVGoiXEjjDAruu
 7xq1mncjIvfcdz7RbCOmqU6hMArmqVEBOHjtSmJMfZNZ1H6/8XsQ0rRbw Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="413980864"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="413980864"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 22:35:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="993160040"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="993160040"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 30 Jan 2023 22:35:50 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 22:35:50 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 30 Jan 2023 22:35:50 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 30 Jan 2023 22:35:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OdGQU3wPE7baob7l7c6pKdbXH2qa1/BvIkNUqP3xmpN/Kuaa2lfo6Ydg4jjFPsr2gCBFzdq3FD3KHr5VF6kAIiq+bmAyyKzfKeWS1/0EfPplrlD7OxLjwntd7eg5tPn+phlaq2i4wUyw9PXR837X8PHHBmZswdaLyNuUR1tVhdjo+HMCgLynldLxJGYILxqc/Dh0lvTpZUDTfMufM9ihQYPt39GXuHokGszUUmdK1revX5gd3xRcTeSb1aFvjLr//dMh8Li/lqPFptuny0Ipwu08GdrcUeIMOGmj71BPeC/UkmVW5rtYfM5aKCDaAXlM/AyOS38ZA0dXldzXZ/gB+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fZ0aYPeJppKzqNrkdCOsbn+cy4NtWh68jP/+E3RJki4=;
 b=MBYEqcisv90ZqM0M96pyRYWO4rE3Y7HJdZxeXTue/RdOfYMUJBN7qzB2FXzmnbj4gfSmGoqctznHr5RuwSZrSSDOvcTe412ptlrrgbxbpilQPyYOxrjhP4QR+MXC4gWLjvODnPY1sMaIgiNiKGt2Dhd06KE/zBuAusJ+tAhmmPAY21h8nIcn5pbCnXJEBUH2UzuQhhNVtxrtX/6Z8yZHMdkmgn/Z6jTeiTSwhm4Qx+dbQEybRs4n1CygJKiTDwX2ZwofK7DGGIqy5tJpZ6X4OY3AoBKjRzn3yEydviHOjg95b8hkaVfa/v/SJdBwYiizCIcNsoGoIEYSD+n/VSJkyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CY8PR11MB7081.namprd11.prod.outlook.com (2603:10b6:930:53::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6043.36; Tue, 31 Jan 2023 06:35:48 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1%5]) with mapi id 15.20.6043.036; Tue, 31 Jan 2023
 06:35:47 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915/hdmi: Go for scrambling only if
 platform supports TMDS clock > 340MHz
Thread-Index: AQHZFbr8wcrUnU6wc0Gbz9Tntq4Dwq64UMtA
Date: Tue, 31 Jan 2023 06:35:47 +0000
Message-ID: <DM4PR11MB636035F7C47B35AE41A7211DF4D09@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20221222040851.3029514-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20221222040851.3029514-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CY8PR11MB7081:EE_
x-ms-office365-filtering-correlation-id: 07d3a0bb-600c-4a10-a519-08db0355635d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yUIsOJ3u87y13B56dCV5/Xzf2h+24NJ+lUvmIClMOCi/LJH4A7L4XSF0KpY47S99RZ+HIr0ZDbsRFnZQClSFAGTN1gaO+iqWPGyjtSY61xRhw5fsETxUnO+Du20pwV8WB6uoUnuRjOmml8MqjuFn2xCvoSUN00O7NnRS2sclYVRGt1dn7wep7vhZsbK1rBvPeuym4yJbp/0fwcQ87jKJvS8+ZacHjJH2kFI6W1sFSPVYmE4faQfXHcTOaXxwUyZ2dIBiIXPDD5M8NKwmCL6mriyt1mCooMwZDcayUpPmqVQBQQJHsb6LTzqA8FwFhU71SSpU2eKGxmywunTde6PmSBNuT8hhAzWF2j4J898dDwjeN41GQBn+0gB6ms4PuQg0IbC9TvlO4K8rufgYnQ+UQinmn1hb2xo44ki+L9udh8NUGrrRY0vWyoABJKHoO29ZXtMBi1PKECpsHA4nlYVfEo6qRLt+W9as5WAX05nL8HBJssi+qaGdtYt6zz4JmnX7GUu9t70YxNPl2nOyeTpxA/vlAhusk9tjqi3dgtrIJmliHd0f+tFC/2xBfBKlJbxZO8AJO3YtuVwvQ1zf3+aKU6z0oARlRCghOHkSG31CqYXxSxjijNTDSI2z9B/PAZcww7FxNgfeVH6WYOdlqQgofgU/ZMjIiQ7iMqEJhHrmSEWru/dsrMVnra1MKAY64fKQqMebP0wAlZAMPwEequ88Bw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(376002)(136003)(366004)(396003)(346002)(451199018)(86362001)(33656002)(66556008)(38070700005)(38100700002)(122000001)(82960400001)(110136005)(52536014)(5660300002)(316002)(8676002)(66476007)(76116006)(8936002)(66946007)(66446008)(64756008)(2906002)(55016003)(41300700001)(83380400001)(478600001)(7696005)(6506007)(26005)(71200400001)(186003)(9686003)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?u4tmH2flt65vjs8P4sa8vSfOiQcSAhvT7Xmtq4qdvfp92G5tQq0sHiOMR54h?=
 =?us-ascii?Q?kNJlwLrdj/5qLltoWc6MISS1WLYNR+Kxrucee4atnqAGpz7ZLYpgf+PCp89e?=
 =?us-ascii?Q?8CVq4JqOIqShAguotTSIQb/40nEx73vMtqqzUelyhZDWoK2MMp7e6YofgP59?=
 =?us-ascii?Q?ZbRbaMzFNPBgBiLbiaruqJiWRq752VsSoOwQ4A4ceX8a+biDP1QDXHFygl1C?=
 =?us-ascii?Q?hgW4WrtEgYNowUBl/qjYaK6+SNe0pu/IdVt8mWwIyH2p07jnmVwOxmfgGFIZ?=
 =?us-ascii?Q?wBqrJgBoD44OIOIZa/DN1Xdwvu4G5HhUEhLOVedppb06rzR39DrnsnIz2phm?=
 =?us-ascii?Q?BKVI5IYRW6MK5wyoHCEofO8+bZz1hHzptUrTuGtcrCdWwmCDFx7FvdFln0/f?=
 =?us-ascii?Q?thykmgazhm4V6SB/ezN9Elueofq41vjp6PMbo0NaCOdOfpOvzFH3+whV9SlJ?=
 =?us-ascii?Q?E7VWwu4T57UlFi8tgtAU1m3bJVklCETXOPqM3IgjFFcJsI9VhQark0RSPUJQ?=
 =?us-ascii?Q?Zl73NiaBLlOAfL1mdN7xaZkdr7Ua/DcPeQou/iyUAp9WEbB+CKcqDXrbSUEa?=
 =?us-ascii?Q?8jPraPFcMG6LaPw+b6VXC5HWaMBOmA/sy/ZtUXoUnEDIGsN2jKilz1KQHfPA?=
 =?us-ascii?Q?vt7eC4eWCaXBiLra+kx01OU4QRuexGEfMxPeTb8tTV84FWvHvKD9yfxpSmso?=
 =?us-ascii?Q?3PtDf1eOzgCRIVpWWlfDVOdoKh3BfgS3l/EKd+CZ3Ic5X7+HqLadch/auH5o?=
 =?us-ascii?Q?9z6y5+LgZoLzjdgFovUSgpXwZJ2xmygfTH7sumZ1twmTp1eYfzf9tayNYZW4?=
 =?us-ascii?Q?Kf2hi1pigPTHyzzFa+HS6GYyLtXYXnIs0iZVpsCTIgJ20e1QZKK/X9HhwQnt?=
 =?us-ascii?Q?IvC2o7R+92w8SD2zvs0EAdsCIxe4EXJbRhCzw8sUcyvDBddBHrIFSwNsQkXZ?=
 =?us-ascii?Q?EsnPu9foWfPEs+Q4WeiCxMoVqPRCzisKUk9AWvd4BL45OixlGYGZR3UiBWfq?=
 =?us-ascii?Q?YuZSikCRLlAlSxWC2WD1wWF3ATwVNHSS7/gjpVugcX2JuWdGb8iBNgvsa8Gl?=
 =?us-ascii?Q?WAb2Qraui3stnS1Gw0wXe0OXOW0Xh6naAl+h1k7rIbn7tckjhM+L9RhKjDLR?=
 =?us-ascii?Q?K04kOlm8NO/hkOoVuAjiwl0qrzBJSbtnijUdXdtLi1JS2PW2BDIkg3T/bmlh?=
 =?us-ascii?Q?nlJdSlQha59FzDNXGqF/XTypmZjoQ3r89q9+N2d29jrug+S6s99hhUBUpjEL?=
 =?us-ascii?Q?VvWmVdDEJ7854wIqZKk7HOJ7fC++JqTDaqEJ2WI3Wl3T62DReu2UsfIzEFgN?=
 =?us-ascii?Q?wtXfZ8sfn44akUyoUmwqMRUTy8u6B/524thWt0pQPd0uI+I9tLWowXLhYQHb?=
 =?us-ascii?Q?Ou6CrYkHcgHtlO9mXDCGKdwmzqRAsP2WhvxK3RSLQdqfCVOZOKj7fKEubn+n?=
 =?us-ascii?Q?vRHKJ1o9LdzfI9NVmvJ4uXl5BI9AYrsrlmCdQ/nFpN4uSPMilZtxMVgTLOMU?=
 =?us-ascii?Q?G0dOQyabxYtzwElXaabnCDhDdMOPjINKNAZ+w0c3EGUhL7y6UQgfBDiVHPlA?=
 =?us-ascii?Q?hDJSBPYkfiNd0xaKhVGT8g2IMhwmsvlhZ4HtI9HN?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07d3a0bb-600c-4a10-a519-08db0355635d
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2023 06:35:47.6773 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D08MGjfIokTn+8wTiZZP90VytQRPznYth6+Xkjn/PJO17+fdJoaSsjrCQejzPLMuYSicTQ0P2S5kxpzuKNEeKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7081
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/hdmi: Go for scrambling only if
 platform supports TMDS clock > 340MHz
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: Thursday, December 22, 2022 9:39 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v3] drm/i915/hdmi: Go for scrambling only if =
platform
> supports TMDS clock > 340MHz
>=20
> There are cases, where devices have an HDMI1.4 retimer, and TMDS clock ra=
te is
> capped to 340MHz via VBT. In such cases scrambling might be supported by =
the
> platform and an HDMI2.0 sink for lower TMDS rates, but not supported by t=
he
> retimer, causing blankouts.
>=20
> So avoid enabling scrambling, if the TMDS clock is capped to <=3D 340MHz.
>=20
> v2: Added comment, documenting the rationale to check for TMDS clock, bef=
ore
> going for scrambling. (Arun)
>=20
> v3: Fixed the function name to check if source supports scrambling. (Jani=
)

Pushed to drm-intel-next. Thanks for the patch and reviews.

Regards,
Uma Shankar

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 21 ++++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index efa2da080f62..dd3465f992f8 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2244,6 +2244,25 @@ static bool intel_hdmi_is_cloned(const struct
> intel_crtc_state *crtc_state)
>  		!is_power_of_2(crtc_state->uapi.encoder_mask);
>  }
>=20
> +static bool source_supports_scrambling(struct intel_encoder *encoder) {
> +	/*
> +	 * Gen 10+ support HDMI 2.0 : the max tmds clock is 594MHz, and
> +	 * scrambling is supported.
> +	 * But there seem to be cases where certain platforms that support
> +	 * HDMI 2.0, have an HDMI1.4 retimer chip, and the max tmds clock is
> +	 * capped by VBT to less than 340MHz.
> +	 *
> +	 * In such cases when an HDMI2.0 sink is connected, it creates a
> +	 * problem : the platform and the sink both support scrambling but the
> +	 * HDMI 1.4 retimer chip doesn't.
> +	 *
> +	 * So go for scrambling, based on the max tmds clock taking into accoun=
t,
> +	 * restrictions coming from VBT.
> +	 */
> +	return intel_hdmi_source_max_tmds_clock(encoder) > 340000; }
> +
>  int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  			      struct intel_crtc_state *pipe_config,
>  			      struct drm_connector_state *conn_state) @@ -2301,7
> +2320,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>=20
>  	pipe_config->lane_count =3D 4;
>=20
> -	if (scdc->scrambling.supported && DISPLAY_VER(dev_priv) >=3D 10) {
> +	if (scdc->scrambling.supported && source_supports_scrambling(encoder))
> +{
>  		if (scdc->scrambling.low_rates)
>  			pipe_config->hdmi_scrambling =3D true;
>=20
> --
> 2.25.1

