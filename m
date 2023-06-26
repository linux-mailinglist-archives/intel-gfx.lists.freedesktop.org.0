Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A69473E424
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 18:04:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE32A10E234;
	Mon, 26 Jun 2023 16:04:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC3F610E234
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687795493; x=1719331493;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o6/V01pvutQ7ZnpIRysEwD5p4qcpKLdrg0emlZpoZ08=;
 b=gJEg402D0eXuTIFzOXJ1/+gatLny6xqjGpNz/v279aPvPSw0aXcEJdq6
 493FP5KuvllQoNG19Ee088hrqewb9Sd0FwimrHd8vdZ8hpr2VVOozvhTg
 Mhov3ncv2ukRf3gV4flUDuPA/oc3JM83lPuway8FzjvBFbL8h+ABhGFsG
 NZ3+SRmNTOXWT3NsPh9YSdsXtvllyNzTVNVaqQp+U1A+/PxO3vO0f25cT
 kjJ8pyR7hjFB6exvpgUSPVdGqgjVgTcgjlI0zsXm7AEtLGvibq/mAMrYh
 Z8NhvUlLowi71a2lqWh7PIPwdZCb9S4l17zRH2iDIoXxyIZpCU2fYfwpY g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="363856083"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="363856083"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 09:04:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="710282657"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="710282657"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 26 Jun 2023 09:04:04 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 26 Jun 2023 09:04:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 26 Jun 2023 09:04:03 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 26 Jun 2023 09:04:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IzTRPDV+LM20iWOtDG5hAU5cEh8ub58ZGUv9GPy01YfX5iYCt7I+lJ5UjrKBsntQ+UfddVvvlzvxtXj42cbVLPGkuADolOP0g5kDHLZKohAnL4UktVt+q5iANhYeVzNa4sDU4dxY5RuHWDqAQfWvSgT0maVekhEdgiX6RmDUwKshCXli6B37n+DY3DR7QwJxaIlgZnhywByG/s4yKgRUls4noFNVdhudZNobnkkybFoWbbS5N8nn5dXXHSy5Okh3+kHj5xJn/0c3WHy7xOLNI9NGn9yvLxgBeYxEYHdn5VprWTzWNpsTLofmW6muQcH7XMoYIbETUMscAIUAkDDkyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/3VUfpoyO94AJZ6C/K/uTGBFNOvuVbKf9JkLU4NcNqc=;
 b=Y0QXGE248fV9NFrWc08MA+wUmK1r78venv+4LTOWgbhlqEhBastXNliF7e7XMK9QAY188mYe3Tb0N91ti0e+p15OxoCK0jOX/DroEQQcocNXbfoL+sYZpGeS3Qvv4X0zljcdCwGMs+ja2iOym2kHmUIZLzuffGD9b/I2iDyKIaI8uaCorJhBI1m3F0La1bC63XLE0OY+57B4W6xfN/NqT2mSoWPu6FlqRfRnRgg8EJEXzcCHnIaWy58PNsMW1Psu5+SHzFW2xXrpVp+PgEPh0OtI46/KF0OINY2//gOT21gXVQjaDSaRItbSZwojzGTZPyTvfCpFkRkw54dqVfm0+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by MN0PR11MB6011.namprd11.prod.outlook.com (2603:10b6:208:372::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Mon, 26 Jun
 2023 16:04:00 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::166b:4bb5:e47d:83d7]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::166b:4bb5:e47d:83d7%11]) with mapi id 15.20.6521.026; Mon, 26 Jun
 2023 16:03:59 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Thread-Topic: [Intel-gfx] [RFC 2/3] drm/i915/display: Configure and initialize
 HDMI audio capabilities
Thread-Index: AQHZmvmhMhAJpwPiyESSUn4ttIkGuq+SHGwAgAs2CrA=
Date: Mon, 26 Jun 2023 16:03:59 +0000
Message-ID: <MWHPR11MB193592EFBED68598CB9E6F95B226A@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20230609174212.1946930-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230609174212.1946930-3-mitulkumar.ajitkumar.golani@intel.com>
 <alpine.DEB.2.22.394.2306191423170.3532114@eliteleevi.tm.intel.com>
In-Reply-To: <alpine.DEB.2.22.394.2306191423170.3532114@eliteleevi.tm.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: kai.vehmanen@linux.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1935:EE_|MN0PR11MB6011:EE_
x-ms-office365-filtering-correlation-id: 0d3797c2-36a6-43ea-53b1-08db765ef414
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lPYt3QWNeSfWWA2CjvMxa4xMUBR//MnC2U0EKCsrbB3c+r57xrBk31gUo7bor65uyJBgtBF/6AXXFnxpBVnonWceKkBGnbXEjcA470fOC/CPu2QLK7+TYTAUkyJ1TAuVd1XqziGzgTb2HvS/l4tr+B0f+ll2mOltn53y1heCSE9Ccg33WE2/ATQOAvh1MpnnmyF6ILIwP9jr/ATgUiLdknQ/804UZCcjHJJJbloDCQCSlMtZE50twD8BNkxUcLRI2u9T9L89TCF5YfAApt8KWFpTR+PDpPXe0n4yUue1Igxr+m2vZbwbY/bFHMHf927L3tFVYesNnxCyst9vZzO6u8SzgK4KF0d+mJoOYIrFy+pmqMPgvpFuX3MQ/wOaYNhROhFaD++qG+dryZgte349bBkBqOLnRDE+VSkLtjdKhTKyPdeVRJ4hUR0vTdtlaSrklQKCNLRjoTnjyN0cI686UGn8fSY1+0dH05uOTlhuC7h2btzfPX+NiqYWt4uaIdqBIsNurPbG3S/DNpmgMT7sUD6tcr2CkWwpU9qnI7jwRsLlCOg0Z5wIbHoaFumg79R2MExDpWrcJft8ONRRsV9yeivc1uWFWVtdRuNNTn2HgOGjj2AAdf9Xm1Ee7LgJmDdn
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(396003)(366004)(346002)(39860400002)(451199021)(83380400001)(8936002)(316002)(52536014)(7696005)(71200400001)(54906003)(8676002)(4326008)(41300700001)(33656002)(55016003)(82960400001)(122000001)(86362001)(38100700002)(5660300002)(66946007)(66556008)(66476007)(66446008)(64756008)(6916009)(76116006)(2906002)(478600001)(26005)(9686003)(186003)(38070700005)(53546011)(6506007)(55236004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tOeR24c3jnB208gwoiiMgyFHEU7oF8i+PvpbWH3Vb9Piaub9TnLPBbR6fUI2?=
 =?us-ascii?Q?pxcm8mYNgMs87MP7vt9dDxhoZp7VBUGK8qS1s/Ew4/7Y6tkLKVP/cjOYkWzc?=
 =?us-ascii?Q?y+iPvRbLyZy2dPApE0vcVFwhmyU00yaS10LRQUrQzecegudT2+L2aLCy7OK9?=
 =?us-ascii?Q?jPDUhD4TqSxqU9HeMifuQ4yns86uEUpv3s9iNPzVNxqF+gQG7Pk7GPs1k/zn?=
 =?us-ascii?Q?t1dHnW5QvmRJ3kD8L36nmPmYgK+g0fwYOI/aqbjSNW9EfcsbHSs4d6f2i4vr?=
 =?us-ascii?Q?wNgN04iAKz1VkzcDu2OaAKZQhO+iwD6U3IOlaf9+vF4s/jmQ9bLcCDp6mVkb?=
 =?us-ascii?Q?b/Ksdl7EZl/oSJTFS9M9Vc60WO1gd3oBovvZF57CWyVe51oWH63eqqDDXmlY?=
 =?us-ascii?Q?pPs65p+NSnnnukpUEJ2AYJyIlOcut1TSygLsFP9nETDw0exp0iG+Tjx5qNQ3?=
 =?us-ascii?Q?JqKKDZwq9A0JvUatis3r8nE4mWtDwOru5aH5tU2iev1CBosCWx1Ubi3jo2Fu?=
 =?us-ascii?Q?0ab40xjng/xVs3fda8K0YYBYcCd4HN5Lirgs2wPu9L5iF6C2Zk7Bx9O1I2qs?=
 =?us-ascii?Q?dDP+3cPqaOptRJ1x9Gnd43G+SJXU43raPoBzumQZLCxL0QohFVbC65866kgp?=
 =?us-ascii?Q?HMKOi34iiasZSxUjY6fHu3be4WZrrollm1fkKJ6sHwVM/x/vkd1z1/92PXkS?=
 =?us-ascii?Q?K78kO3vhEYOxHCf8545mQYlmm5ruB3TlO9tixH1KwnNzaNFmX8jwlRSGOJeU?=
 =?us-ascii?Q?hUdSC02dMZEG7RtmoQON+E+Mmji21YZf7StWlHgI3EF29gBb8PgDa/asz9R8?=
 =?us-ascii?Q?12/7ZFXH8r6ibCwkN4TrAuVARRP8b3Lt8gzoUWy+ti3CSuYH/CCfBmxqX725?=
 =?us-ascii?Q?MqzTdi/9uKUwZBIgr/60+QaFH21mFfa7BpFyxS4RhRtvOcvKXl1jYuy8oSs2?=
 =?us-ascii?Q?zpTsRFjcyICLU8YJNBA1BaIwySsM2b/pO11O/62xOZ1L+G1L5WAFy5P36pZT?=
 =?us-ascii?Q?WswaOdaRq1BDNvzi32CecWBE3NK2Z/N1CVdgJ9Nuud/0atghxMVKo0rJz443?=
 =?us-ascii?Q?ZNP2k5Xc+kZ88BIPzBZBpOtUmyQ0ahGtgh2UmGVqIq+eyhpyNSJ8RXFVbqTT?=
 =?us-ascii?Q?DRzNctQvQEIpHFQpHymPKS+YaRWJwLgOGfwGkHeDgUES0jWUH2qLBfG8ax+B?=
 =?us-ascii?Q?SrjEidJP35Q4y/e8tJZNidjWQNf39Fq21UVX2nmufoOaEVvtRMaluMxwIlWm?=
 =?us-ascii?Q?VPIv9MUl9nkEnzf6NnM1/+W3+SzXUvQWyhntwWmiZLXe7x0erzMMGphUpVig?=
 =?us-ascii?Q?fKLgwpR8yqv1SMWV4+ieQng5z59jPR70FwBJT/8zwJ0l9/EfjIDSAfW5AdL8?=
 =?us-ascii?Q?ojDed2d9UN13BxI9lANfajfUbr+/CGg8iHNn9m4ngYe5qkc8rOzI6p6q12WA?=
 =?us-ascii?Q?duxCEajkqiG55/PIFRM7sKsMD5TwukSSdd2aH91YnFBkYaKpowrgiCmSiFog?=
 =?us-ascii?Q?U8Xopr3Ykfh7AphdTTh3nHlgtkVEZDQU7qmt9mx91MA1oPsrHnupJx84oquU?=
 =?us-ascii?Q?nCPlpAL0szPxK+16XGE5h8sQICCdomoo8LOKAh/DzkTlybpWntjU0jAkKn75?=
 =?us-ascii?Q?s4VQHsejIRjqJq0SCxiCW3U=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d3797c2-36a6-43ea-53b1-08db765ef414
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2023 16:03:59.6841 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tmBTyMzbi5V4nrI9BVq/37H6tLHBMQOxPJMc2mWRKq6GUgZ4fwPQdjdqCF4lBPG55Hq4Qjs8d29/M9D492HKgrnloHxArPJ21Ys86pzjnS8YbRWjZoR0Z/0Z2Cd99RFo
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6011
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 2/3] drm/i915/display: Configure and
 initialize HDMI audio capabilities
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jyri.sarha@linux.intel.com" <jyri.sarha@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi @Kai Vehmanen

> -----Original Message-----
> From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Sent: 19 June 2023 17:56
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; jyri.sarha@linux.intel.com
> Subject: Re: [Intel-gfx] [RFC 2/3] drm/i915/display: Configure and initia=
lize
> HDMI audio capabilities
>=20
> Hey,
>=20
> replying to 9th June version (my mistake), but I checked the 15th June pa=
tch
> version and comments applied to that one as well:
>=20
> On Fri, 9 Jun 2023, Mitul Golani wrote:
>=20
> > Initialize the source audio capabilities for HDMI in crtc_state
> > property by setting them to their maximum supported values, including
> > max_channel and max_frequency. This allows for the calculation of HDMI
> > audio source capabilities with respect to the available mode
> > bandwidth. These capabilities encompass parameters such as supported
> > frequency and channel configurations.
> [...]
> > @@ -1131,6 +1131,12 @@ struct intel_crtc_state {
> >
> >  	struct {
> >  		bool has_audio;
> > +
> > +		/* Audio rate in Hz */
> > +		int max_frequency;
> > +
> > +		/* Number of audio channels */
> > +		int max_channel;
> >  	} audio;
>=20
> Comment on this below.
>=20
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -2277,6 +2277,40 @@ bool
> intel_hdmi_compute_has_hdmi_sink(struct intel_encoder *encoder,
> >  		!intel_hdmi_is_cloned(crtc_state);
> >  }
> >
> > +static unsigned int calc_audio_bw(int channel, int frequency) {
> > +	int bits_per_sample =3D 32;
> > +	unsigned int bandwidth =3D channel * frequency * bits_per_sample;
>=20
> Maybe unsigned for bits_per_sample as well? And not sure how fixed this i=
s,
> but having 32 as a define at start file with more descriptive name might =
be a
> good idea as well. I.e. this is the audio sample container size used in a=
ll
> calculations.
>=20

Thanks. Will push the correction in next revision.

> > +void
> > +intel_hdmi_audio_compute_config(struct intel_crtc_state *pipe_config)
> > +{
> > +	struct drm_display_mode *adjusted_mode =3D &pipe_config-
> >hw.adjusted_mode;
> > +	int num_of_channel, aud_rates[7] =3D {192000, 176000, 96000, 88000,
> 48000, 44100, 32000};
> > +	unsigned int audio_req_bandwidth, available_blank_bandwidth,
> vblank,
> > +hblank;
> > +
> > +	hblank =3D adjusted_mode->htotal - adjusted_mode->hdisplay;
> > +	vblank =3D adjusted_mode->vtotal - adjusted_mode->vdisplay;
> > +	available_blank_bandwidth =3D hblank * vblank *
> > +				    drm_mode_vrefresh(adjusted_mode) *
> pipe_config->pipe_bpp;
> > +	for (num_of_channel =3D 8; num_of_channel > 0; num_of_channel--) {
>=20
> The maximum channel count of 8 would deserve its own define. It's pretty
> much a constant coming from the specs, but still avoid magic numbers in
> code would be preferable. Or we remove this altoghter, see below...

Thanks. Will push the correction in next revision.

>=20
> > +		for (int index =3D 0; index < 7; index++) {
> > +			audio_req_bandwidth =3D
> calc_audio_bw(num_of_channel,
> > +							    aud_rates[index]);
> > +			if (audio_req_bandwidth <
> available_blank_bandwidth) {
>=20
> <=3D ?
>=20
> > +				pipe_config->audio.max_frequency =3D
> aud_rates[index];
> > +				pipe_config->audio.max_channel =3D
> num_of_channel;
> > +				return;
> > +			}
>=20
> This will hit a problem if we have a case where bandwidth is not enough f=
or
> 5.1 at 192kHz, but it is enough for 2ch 192kHz audio. This approach force=
s us
> to give preference to either channel acount or sampling rate.
>=20
> What if we just store the 'max audio samples per second' into pipe config=
:
>=20
>  - have "int max_audio_samples_per_second;" in pipe_config
>  - pipe_config->audio.max_audio_samples_per_second =3D
> available_blank_bandwidth / 32;
>=20
> Then when filtering SADs, the invidial channels+rate combination of each
> SAD is compared to the max_audio_samples_per_second and based on that,
> the SAD is either filter or passed on. What do you think?
>=20
> Br, Kai

Yes, I understood the issue while validating this on one of the panels. Let=
's say, with the
obtained audio_req_bandwidth, if I encounter the following combination:
pipe_config->audio.max_channel =3D 8 and pipe_config->audio.max_frequency =
=3D "X" value.
Now, let's assume my sink supports only 7 channels. In this case, pruning w=
ill be bypassed,
and there is a possibility that the sink-supported channel multiplied by th=
e sink-supported
rate exceeds the available blank bandwidth, and pruning doesn't occur.

For this situation, I am considering adding an "else" part in intel_audio_c=
ompute_eld.
This "else" part would check if (sad_to_channels(sad) < crtc_state->audio.m=
ax_channel),
for example, in the GLK case. In that case, the channel would be fixed.

So, if Channel * audio sample container size * (iterating from Max rate to =
Min rate)
is less than max_audio_samples_per_second, I believe we can eliminate the s=
ituation you
mentioned. If the sink's supported channel is lower than pipe_config->audio=
.max_channel,
we can get another chance to adjust the rate based on the sink's maximum ca=
pability.

Please give your opinion on this approach ?

Thanks
Mitul
