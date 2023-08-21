Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE28782DF4
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 18:11:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01EF410E281;
	Mon, 21 Aug 2023 16:11:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2FF110E1E0
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 16:11:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692634289; x=1724170289;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xZbTMjsJMy5oxRKoWwBITPamxwsVPAA+0Szer1DZtwY=;
 b=NUAgfkDJAH+5nAMqHPa4nCMCjyb9jI16EEwet8GALBYHUNjsimJDYinu
 HbErEbGzKlCOVlNR7FXFuHHPbXrWmrXEePLiR2eiiqa6fmnaTeALpagAb
 7WaGl5P8y8+D/GJW1ZgiXkbweuFXwvVx23TzHDfR6PLqfv60zo2BgzHGo
 yRdZcyxM23zTjvrXf+7YyWDAnfeMH/vhlLUYlevG2txDtYu+sW++rSjWV
 m1lN59WVuo4wbIoOyW2M+kAXYUTtvtpWQglsvzF2tB+eUc/+/hAwbg6s/
 4ujRv6AJ9EkhSu6lckOoSg+DXx0oiVadt+lhXbi6hn6SUfC7TfJC10x1O Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="437562093"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="437562093"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 09:10:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="859530743"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="859530743"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 21 Aug 2023 09:10:19 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 09:10:19 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 09:10:19 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 09:10:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EFAKbMtDNxd9ajgMtazlj1W4v2GX+O0BfhYn+yX1aYoJKPX07sricfdw+rg9tftR+3ZTrANYrDkG7Uvw4U8c/hvtt55NbU1MlGdTczhp8CT/wn/V5bmt1uGXJNrMNF1vIs4V0/uVJo8GDFYYZyvwJIPocCIlORows+9QG9v0XvaLvljCB/vOXF+GxJt++tFnpDf9RPcmtx2qIkjnC9pxuhYBRhxiQYTuchK+MoSS/INcrU1fyOFWlZYGaNxtWMy684OIEwqd6Ui4hrpRyc3pvCCkjC4aC03Ic5C32gusvzVUXYi3jNGjfHAWBYVsN6/yCd7DKqYBDafqshJWL6fDrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CULFv32fhSUY0mL/LXbAszPhCEtmltH06Q0vR17nhuQ=;
 b=VcxDi0A+j0Lv+6cDDEDo0TUXmP0ju70ITgbu4f0AuwGQM1GfBQ5WGjhCkh2xs6635TN+SSYKakItyurqBN1IjqlEr9H62Zvi4ExDxr2iPrXBHrtWPRIu0H4mEnZ90guJmG35QUNadA3Dum2pT6h0J9Ra+/SRN8RjRUIfUd9ebabjCcD3C0V7288TAb9bq6X48f9zfXNKmq5THXgjxU1g8lgNEHT9qMW8AdtqqYN6e3Ei/0CYdShE//Ls3GKVMWvzMJTjwSNWbOJS2amDSmnO+ELwWkkzLkn9/60sDZNiKKnlnL65XrMu+o5i1Yj/WXjSH3qG1qI9oDOzPG5F3c/zIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by DS7PR11MB6222.namprd11.prod.outlook.com (2603:10b6:8:99::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Mon, 21 Aug
 2023 16:10:16 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::6462:b253:fa3c:2cee]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::6462:b253:fa3c:2cee%6]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 16:10:16 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/3] drm/i915/display: Add wrapper to Compute
 SAD
Thread-Index: AQHZ0QoCD+NoEi6ro0mSVm77D4H6sK/vvIUAgAUzyOA=
Date: Mon, 21 Aug 2023 16:10:16 +0000
Message-ID: <IA1PR11MB63484BD8086C8CE7EAEA197BB21EA@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20230817125007.2681331-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230817125007.2681331-4-mitulkumar.ajitkumar.golani@intel.com>
 <87cyzk9251.fsf@intel.com>
In-Reply-To: <87cyzk9251.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: jani.nikula@linux.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|DS7PR11MB6222:EE_
x-ms-office365-filtering-correlation-id: f73be285-ed95-49b9-36c5-08dba2611bf1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FsnWIgbWPQm8zQJ7Sifjr6NR+Mv4VdWrjD8dnW6SJQioluwwQ0EJpqsFmmjfVCLm4A4f/jj3wGv15UbZiO+RE7nnB5OfE4D+TE2MtcS/RkXzUAAlOqkWeQyNadNSJmPh+rH1AEnyr5dfhPuT6YrC41KA02mNjwJFnRzrk8W4bwQ9JTKQK0WlZnE+EVikdw8jtS8m+51m2+L7p+1KMlOVRo2R/HToXPysgUsdJSVry0Un8LNOCc3up1idJSizQPEmH4QD4I8umpP/EAdQZDrw+KEijUnxK75QI2BUIV812eM1GewelfKh82loFJT2kmuG2LrHdixi5DDZBv4FslKuyaVIMmRRLywghryfQbyfjnKM5Oy+oHaCa9KhOJUChdOl8JpgDGKpYy1V5k3qS6eQTeNi9788skxUu93MHsqnexPkpoP6JNZ0VqUKa8IV/tox7ItOhmM/sbhLBvHEXzbi0C5AROM906xMe4zO6xbcmN7IaUHxybL5aQ0ZXX+BtDRCGOKwm4u8FNwJtsj+V6KzFDTE9KJrvNYe0nNCmEB7KsZ8EBfFIlXpdGMEtIX9mMBqZhOc9NUkfh4AY+wI/FP8tc0lyA1q9AUZL1H37IVlh30TzIQ07EXKKGcag12gvIZl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(346002)(136003)(39860400002)(396003)(451199024)(1800799009)(186009)(2906002)(83380400001)(55236004)(53546011)(7696005)(38100700002)(6506007)(5660300002)(52536014)(33656002)(26005)(38070700005)(86362001)(8676002)(8936002)(4326008)(66946007)(316002)(9686003)(66446008)(66556008)(66476007)(64756008)(76116006)(110136005)(66899024)(82960400001)(478600001)(122000001)(55016003)(71200400001)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lEUykZABjiU1snjcQPrJYGpSnkul73hFKvdBW9mnAeqSGyuZTxyZox41vME2?=
 =?us-ascii?Q?IC5LaT97oL5mB1+MnHHI0WWMDMDisKjd2QTusHNX09rciWDdgqaJZjON2nuO?=
 =?us-ascii?Q?5Y7FebEwBFLE7SJCBpT7jXT9vu1u6mIrlHk/PqhgSM29w/QiRDza2aijH723?=
 =?us-ascii?Q?v9mNpvyOOmstevYchHJfGQe+AQ9WTEJdhrixOl3QSpQaMilVmzCxLEM1W97b?=
 =?us-ascii?Q?K43pxoRcTz4jbtUt6OzUi7dWr1b0G4/bUjmsAwscsyxEjJca7kBZabJvLcV4?=
 =?us-ascii?Q?wwcFgv/xgUIwBO+dc1k0bdxVLO9Sa9qCRr8TboUlVTNEce4MYwUaOMR88FRT?=
 =?us-ascii?Q?MesJO2onuKx96xmVOBQoTAtG2byy2pSF7icrJ6wqAftU0j5NLmYe5J207cYD?=
 =?us-ascii?Q?5WL5RMH+MTool6Am62zOiR3epdVp/yUbsiWSwmB1qS6S+YaFqcTW7vVqPSz7?=
 =?us-ascii?Q?Rx5ZATJGefElygwtJvOtQZumIy+44ZWAkzhYzbV/BvPsJ4q4+2A12xxOpEWb?=
 =?us-ascii?Q?rk/wNOyVg6c/NBImMtzOG/auvbLUO+Dgqg3QxwSdUL4CMYFvDExsC+7D64mo?=
 =?us-ascii?Q?rXl9FIjnmOk+0Fz/dbeTe4gm7gj0rtykxE3kTih93IKejYAnAjxK/KPzxOBM?=
 =?us-ascii?Q?XXjLGtlYpdr4HZ3PKEu3/UZJNCSH/tKofnCkDi20lcP7YrU6Z+BCDZSnyteA?=
 =?us-ascii?Q?b1r9nv3gETt9NzEB8pMi1JLEb0PtWrSO2ZaIyBrXsf10C6z0pczmbPiJfRTR?=
 =?us-ascii?Q?ZvhfxKWBzlIIoEGF6cCFkWqhn3/LySPxcTyP7aB2HOB4//dNVbpiw3O6RgDX?=
 =?us-ascii?Q?29C7c8D1veuZIQnTvlKXotXi4qOrgqsdBv6evOv0yIOPRy61rKHEbZhMLeNb?=
 =?us-ascii?Q?m7/gw5E6wd8QvbvHQOq1NafZkfWOkrHmsNL+aOXTg7Ez7V5Ucnj7u1O+9cYY?=
 =?us-ascii?Q?RlNvlNBkbiRkAs/bT54qF4K6Vrsoh31DuvSWkk9m/9lZp6nqTpabASNjbCfb?=
 =?us-ascii?Q?/xVNvwn+oEzXdjhLdXUNVZd4poSscZho3A+4ThJeQK1e5fmCsxHah4VqGxrB?=
 =?us-ascii?Q?vDhmwIZ3MGrvaBYDZtWT22VoAY7uO2unfLyBo/aWLENG/GXyji1bS77Mq7yJ?=
 =?us-ascii?Q?RX7t1exJfr94Xdc4N+riBG+WfbRqx195F/tAR933nX1Nhm99TGP6kEs+s3tA?=
 =?us-ascii?Q?d6zDHV49t80ZigFJA5j0vj0zyy+13KL61ubwZZxA4X/yOovSEgDOZv9h1vA7?=
 =?us-ascii?Q?g8+NQu2K9ionv7g8lBGZSldYQg99C9QiTP6Nw+XIR6g5C6aQDLp1pdUW5mQ1?=
 =?us-ascii?Q?uaQVWeXiATFW+G4f9wCrLIImGoPZ6B1yEEwUHIpkKHjh55DWQaTIe9n/wtky?=
 =?us-ascii?Q?CbPKg5+HVonCVgDdq/830Dj+zVqFgBtJ5tyY8UWvg85lbVKuIEuYLjXhM2hy?=
 =?us-ascii?Q?jLUE1O1cLKK6QoQnFI8ePtgatWjQegjQ4gWSfeoKYsGU60sOlOjR+g3L4Hmu?=
 =?us-ascii?Q?Ykd5S3jBeGscNHSlY705RNTOD9m8yH/9ILpl8HsuQFtZRkKWHJB2BzZjltP0?=
 =?us-ascii?Q?QOB3qBLuOLmFZpW5BNIdiWG9d3xkcsLdtFMMVN1nTvQViHP3JDB1tihFTp+D?=
 =?us-ascii?Q?BCEUhLda3PbI7Wigb/sfOu4=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f73be285-ed95-49b9-36c5-08dba2611bf1
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2023 16:10:16.7209 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WiIeX9Up0iks0ksleZXV4skPJhQyXBwgGHnXE/VXJu7wahWMZNPy9H7tA3hY/iW5/dXI/cdG8DDBVnD4qaF1rJM4BwEU8Xv0umvOUkZvb7z2h62eLLqvg2MmUwKxjASz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6222
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/display: Add wrapper to
 Compute SAD
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
Cc: "jyri.sarha@linux.intel.com" <jyri.sarha@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi @Jani Nikula

Thanks for reviewing patch series.

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: 18 August 2023 14:08
> To: Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: jyri.sarha@linux.intel.com
> Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/display: Add wrapper to
> Compute SAD
>=20
> On Thu, 17 Aug 2023, Mitul Golani
> <mitulkumar.ajitkumar.golani@intel.com> wrote:
> > Compute SADs that takes into account the supported rate and channel
> > based on the capabilities of the audio source.
> > This wrapper function should encapsulate the logic for determining the
> > supported rate and channel and should return a set of SADs that are
> > compatible with the source.
> >
> > --v1:
> > - call intel_audio_compute_eld in this commit as it is defined here
> >
> > --v2:
> > - Handle case when max frequency is less than 32k.
> > - remove drm prefix.
> > - name change for parse_sad to eld_to_sad.
> >
> > --v3:
> > - Use signed int wherever required.
> > - add debug trace when channel is limited.
> >
> > --v4:
> > - remove inline from eld_to_sad.
> > - declare index outside of for loop with int type.
> > - Correct mask value calculation.
> > - remove drm_err, instead just return if eld parsing failed.
> > - remove unncessary typecast
> > - reduce indentation while parsing sad
> > - use intel_audio_compute_eld as static and call bandwidth calculation
> > just before that.
> >
> > --v9:
> > - Handling the case when, sink supported channel is less than max
> > supported. In that case, rate needs to be calibrate in accordance with
> > available bandwidth.
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_audio.c | 107
> > ++++++++++++++++++++-
> >  1 file changed, 106 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> > b/drivers/gpu/drm/i915/display/intel_audio.c
> > index 79377e33a59b..c90ac2608eef 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > @@ -806,6 +806,111 @@ static void calc_audio_config_params(struct
> intel_crtc_state *pipe_config)
> >  	pipe_config->audio.max_channel_count =3D 0;  }
> >
>=20
> This was added in previous patch:
>=20
>  +static void calc_audio_config_params(struct intel_crtc_state *pipe_conf=
ig)
> +{
>  +	struct drm_display_mode *adjusted_mode =3D &pipe_config-
> >hw.adjusted_mode;
>  +	int channel_count;
>  +	int index, rate[] =3D { 192000, 176000, 96000, 88000, 48000, 44100,
> 32000 };
>  +	int audio_req_bandwidth, available_blank_bandwidth, vblank,
> hblank;
>  +
>  +	hblank =3D adjusted_mode->htotal - adjusted_mode->hdisplay;
>  +	vblank =3D adjusted_mode->vtotal - adjusted_mode->vdisplay;
>  +	available_blank_bandwidth =3D hblank * vblank *
>  +				    drm_mode_vrefresh(adjusted_mode) *
> pipe_config->pipe_bpp;
>  +	for (channel_count =3D MAX_CHANNEL_COUNT; channel_count > 0;
> channel_count--) {
>  +		for (index =3D 0; index < ARRAY_SIZE(rate); index++) {
>  +			audio_req_bandwidth =3D
> calc_audio_bw(channel_count,
>  +							    rate[index]);
>  +			if (audio_req_bandwidth <
> available_blank_bandwidth) {
>  +				pipe_config->audio.max_rate =3D rate[index];
>  +				pipe_config->audio.max_channel_count =3D
> channel_count;
>  +				return;
>  +			}
>  +		}
>  +	}
>  +
>  +	pipe_config->audio.max_rate =3D 0;
>  +	pipe_config->audio.max_channel_count =3D 0;
>  +}
>=20
> And this here:

Thanks I have removed duplicated code for calibration and calculation,
and merged them to one to avoid redundancy.

>=20
> > +static void calibrate_audio_config_params(struct intel_crtc_state
> > +*pipe_config, int channel) {
> > +	struct drm_display_mode *adjusted_mode =3D &pipe_config-
> >hw.adjusted_mode;
> > +	int channel_count;
> > +	int index, rate[] =3D { 192000, 176000, 96000, 88000, 48000, 44100,
> 32000 };
> > +	int audio_req_bandwidth, available_blank_bandwidth, vblank,
> hblank;
> > +
> > +	hblank =3D adjusted_mode->htotal - adjusted_mode->hdisplay;
> > +	vblank =3D adjusted_mode->vtotal - adjusted_mode->vdisplay;
> > +	available_blank_bandwidth =3D hblank * vblank *
> > +				    drm_mode_vrefresh(adjusted_mode) *
> pipe_config->pipe_bpp;
> > +
> > +	for (index =3D 0; index < ARRAY_SIZE(rate); index++) {
> > +		audio_req_bandwidth =3D calc_audio_bw(channel_count,
> > +						    rate[index]);
> > +		if (audio_req_bandwidth < available_blank_bandwidth) {
> > +			pipe_config->audio.max_rate =3D rate[index];
> > +			pipe_config->audio.max_channel_count =3D
> channel_count;
> > +			return;
> > +		}
> > +	}
> > +
> > +	pipe_config->audio.max_rate =3D 0;
> > +	pipe_config->audio.max_channel_count =3D 0; }
>=20
> This kind of stuff needs to be deduplicated.
>=20
> > +
> > +static int sad_to_channels(const u8 *sad) {
> > +	return 1 + (sad[0] & 0x7);
> > +}
> > +
> > +static u8 *eld_to_sad(u8 *eld)
> > +{
> > +	int ver, mnl;
> > +
> > +	ver =3D (eld[DRM_ELD_VER] & DRM_ELD_VER_MASK) >>
> DRM_ELD_VER_SHIFT;
> > +	if (ver !=3D 2 && ver !=3D 31)
> > +		return NULL;
> > +
> > +	mnl =3D drm_eld_mnl(eld);
> > +	if (mnl > 16)
> > +		return NULL;
> > +
> > +	return eld + DRM_ELD_CEA_SAD(mnl, 0); }
>=20
> I'm still not happy with the copy-paste here. The parsing details should =
be
> hidden in drm_edid.c and that should be the Single Point of Truth how to
> deal with this.
>=20

Thanks, I have added  wrapper function adhering to
const correctness while accessing SAD information. Please suggest=20
if any other approach we can try.

> > +
> > +static int get_supported_freq_mask(struct intel_crtc_state
> > +*crtc_state) {
> > +	int rate[] =3D { 32000, 44100, 48000, 88000, 96000, 176000, 192000 };
>=20
> This is like the third copy of the same array already... and the values a=
re
> also present in the existing dp/hdmi aud arrays in intel_audio.c.
>=20
> And those have 88200 instead of 88000, so which one is correct?

This was mistake while validating previous patches. I have corrected
the same with reference to HDMI spec.

>=20
> > +	int mask =3D 0, index;
> > +
> > +	for (index =3D 0; index < ARRAY_SIZE(rate); index++) {
> > +		if (rate[index] > crtc_state->audio.max_rate)
> > +			break;
> > +
> > +		mask |=3D 1 << index;
> > +
> > +		if (crtc_state->audio.max_rate !=3D rate[index])
> > +			continue;
> > +	}
> > +
> > +	return mask;
> > +}
> > +
> > +static void intel_audio_compute_eld(struct intel_crtc_state
> > +*crtc_state) {
> > +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev)=
;
> > +	u8 *eld, *sad;
> > +	int index, mask =3D 0;
> > +
> > +	eld =3D crtc_state->eld;
> > +	if (!eld)
> > +		return;
> > +
> > +	sad =3D eld_to_sad(eld);
> > +	if (!sad)
> > +		return;
> > +
> > +	calc_audio_config_params(crtc_state);
> > +
> > +	mask =3D get_supported_freq_mask(crtc_state);
> > +	for (index =3D 0; index < drm_eld_sad_count(eld); index++, sad +=3D 3=
) {
> > +		/*
> > +		 * Respect source restricitions. Limit capabilities to a subset
> that is
> > +		 * supported both by the source and the sink.
> > +		 */
> > +		if (sad_to_channels(sad) >=3D crtc_state-
> >audio.max_channel_count) {
> > +			sad[0] &=3D ~0x7;
>=20
> Also not happy with magic values here.

Thanks, defined the magic value.

Regards,
Mitul

>=20
> > +			sad[0] |=3D crtc_state->audio.max_channel_count - 1;
> > +			drm_dbg_kms(&i915->drm, "Channel count is
> limited to %d\n",
> > +				    crtc_state->audio.max_channel_count - 1);
> > +		} else {
> > +			/*
> > +			 * calibrate rate when, sink supported channel
> > +			 * count is slight less than max supported
> > +			 * channel count.
> > +			 */
> > +			calibrate_audio_config_params(crtc_state,
> sad_to_channels(sad));
> > +			mask =3D get_supported_freq_mask(crtc_state);
> > +		}
> > +
> > +		sad[1] &=3D mask;
> > +	}
> > +}
> > +
> >  bool intel_audio_compute_config(struct intel_encoder *encoder,
> >  				struct intel_crtc_state *crtc_state,
> >  				struct drm_connector_state *conn_state)
> @@ -827,7 +932,7 @@ bool
> > intel_audio_compute_config(struct intel_encoder *encoder,
> >
> >  	crtc_state->eld[6] =3D drm_av_sync_delay(connector, adjusted_mode)
> /
> > 2;
> >
> > -	calc_audio_config_params(crtc_state);
> > +	intel_audio_compute_eld(crtc_state);
> >
> >  	return true;
> >  }
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
