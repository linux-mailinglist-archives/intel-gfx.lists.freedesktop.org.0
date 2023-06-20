Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 542B9736EB9
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 16:35:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DB3610E188;
	Tue, 20 Jun 2023 14:35:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3342010E0BE
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jun 2023 14:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687271703; x=1718807703;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=73vp+ADmhTg5EUdE2RZCCAOdqwQeqNeFk1Ok+9T1uDM=;
 b=cGx3dYpSK59+G0ZFpJ79NLQc5UQicwBpcVhTa21HhBmclhbUEc2tli9U
 Or9UraexnOa4h2iZRhjJH//sW8AzbTej317pKSrIMPYfkBoMwIsKv091b
 FXmzhhYaZXcJ57QYaqacvYF5Eo8Qoc/eplO68Bobh5qm4NDIlUB2NpLm3
 sH8dt+LjX1yZUDCIMKfn+K5c/GzwPtBt3DG6cSbjpJ64suXef5Ppl5t7u
 C3Hk3AnP2sIOJr6yju2g1/7CSMaR46nBkpuddEqEFJI1bsSD5xVt5lMwI
 UIMAqPAztd9ZAtCVXQNWE6CBP5ztLDiXU/nP0+RWPRK2Hmkw0M7C5N+ht Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="344617529"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="344617529"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 07:34:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="1044289601"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="1044289601"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 20 Jun 2023 07:34:05 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 07:34:04 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 20 Jun 2023 07:34:04 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 20 Jun 2023 07:34:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=atXn39TpVgGyxTn1K0gPBIQJrQq9CXCdPDFwwdX2ns6hDQzFFStlpRgB0EoZKkzgbFbrXDdGM3+RWvze5tzXbdWp5/NoYXCK1ZcoX0B4DQWFYVarHDXnPCViIr4u1cqe/7TGqK0/FLua+0ygo1pnO3uV8bz7wl3No2decR4o+pYUk2miR/u3kATSpO2iCuSQ6q6lRGjJwiYtzjsOJiG6BjbfFH1OaocW/YB8ZlUaRh+ZzfUJrYxTwDJpewydmXqd/y5uSpjJ8tE0BqsCNjrqBFowaU3kR5x0vf/UVSoLdD6orrcQ9xemjR3o/nEBG9FJilyTAhe5AjTaIHqBzkxZhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZfvAXjtToEJVUeKgjwZsgpaGNXuMf4zySwTSgbGFYWg=;
 b=dhgb8CJJXCx6/WG/urZihFixlVt7IgWAmxYRSF0DJKb4pDx6jBpGWyIKksK099kfH2war2+L4t70rwAXJL26K4HKsvL43QYj2XyllbkzKxoWb/iDuAWbmta0lOA3SmK78/H/VBK9kk8Vo0TW5T5khyNNLOld39b1ht8V6t9NhoPUTO7nzcF3vFGhE6c+OTpiOVjGd1eBsYzKvNuMWc7hW/E1jf7BB7SKCYUaRLAYUd/BcS57jMAqov2EHPoC0nDLuJa0SgFt8BTSjiYBwtyVH7l7yZupelnqHHvhKzfKS+aSf4y9c0rq3V7D6wzIZEoCYmO899fdMzlEkbKzTyfyEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SJ0PR11MB6672.namprd11.prod.outlook.com (2603:10b6:a03:44c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.37; Tue, 20 Jun
 2023 14:34:02 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::2b9:ed3a:1d10:7fa8]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::2b9:ed3a:1d10:7fa8%7]) with mapi id 15.20.6500.036; Tue, 20 Jun 2023
 14:34:02 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>, "Golani, Mitulkumar
 Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Thread-Topic: [Intel-gfx] [RFC 2/3] drm/i915/display: Configure and initialize
 HDMI audio capabilities
Thread-Index: AQHZmvmh5Yk5WjrVGE6B1z7D8B35MK+SHGwAgAGzfFA=
Date: Tue, 20 Jun 2023 14:34:02 +0000
Message-ID: <SJ1PR11MB612990667303BE8F0F9453F5B95CA@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230609174212.1946930-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230609174212.1946930-3-mitulkumar.ajitkumar.golani@intel.com>
 <alpine.DEB.2.22.394.2306191423170.3532114@eliteleevi.tm.intel.com>
In-Reply-To: <alpine.DEB.2.22.394.2306191423170.3532114@eliteleevi.tm.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SJ0PR11MB6672:EE_
x-ms-office365-filtering-correlation-id: ee518011-f9b9-4b04-eade-08db719b6487
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M8RJA2i4Ri10CJKwUhCAOtLGuc8st/ddgXbrOehoQ8jyEoQk6QBQwcIZ1T/H9KpUhRiqsdVZuQx/OutwOWgdJIGZWCL+f4EQb2sVuZyDZZCEX10GPy6bGkYYPLz4jPoERw/Z6cfRU+bgInVv1XZp9kkc5pimAQ2gUFh+AZ6JJpx0Vio+yByiWmjl6TZoQfEgjI5B1NhI6RU9gD6Wm6JN8x1gyedeLk0xwRBKqQLDuESQv+VmeOMhR+fZLYBUbFw/f0V9Vt8jzFywNiOkECcXEcdBa2wnYdbICa+U1ypOyEdNeCxj1bZ+sdGiYLAOxHDSZbmf0FwVj3V2uzMejFWet1IEjrONbucudksa2jT1FtnaFKyx2wqQXleo+7RKmB0dUgizuYCAGS0H6JNpqN6y0kdWvot7H2zkfsiy6BlLER/hlbkHwbQDnpiwp6viZYDdAJaHSmCh+RZ+ug05H2FaHc/zEj5dN9jDIw02GasTq3HG44CqW1OiJe4eyaUGwgieKJRWIK/VzsVHib9C2AcFRrIFJXWg4sy8w1z+7Os4rWyfzDcjAcMDOtLXzQMFBD5eCle9sBmfkRUoNFKL9yS0qM7iaQsOwZnx0XkIGew3DlaEqlciWKAqyLxSOS0gmHXq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(366004)(396003)(39860400002)(136003)(451199021)(478600001)(26005)(7696005)(71200400001)(110136005)(83380400001)(54906003)(53546011)(6506007)(9686003)(186003)(2906002)(52536014)(5660300002)(33656002)(38100700002)(122000001)(4326008)(6636002)(66946007)(55016003)(316002)(82960400001)(76116006)(86362001)(8936002)(8676002)(41300700001)(66446008)(66476007)(64756008)(38070700005)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HqHvWnNhdP8RnEyiGHVTigHbeHY+UoIMHW0INoddbtGMgGWUhHJqOuXlGnlh?=
 =?us-ascii?Q?Mf4etb73UZ6GU//ptSwMBXiF0yWRUEUGhPMprVM+iwWcA1D2BU+hPu+hvlB6?=
 =?us-ascii?Q?YcwFCHH4GC8RoVc+ZLGAGENGUp8Q99iL9+nGL3tw0eKrTw1dNITjVoM0rnha?=
 =?us-ascii?Q?7MTNYX5gjKiwQ9dBlQjoljbX8pIFsJtCUQghOVMsCgviD+wXtUSxqUnT93fz?=
 =?us-ascii?Q?7n4oilHYyrv9A6yK9UqXHwDEz34MQHhLpA8DjFZMHzZcXfhMfMa/lME9XjKw?=
 =?us-ascii?Q?AV1k2A3OIsVpkCFa39MOBYymwh8sXWivt6cW4q0qlIfCSwaR/u4ZAuy3oBaO?=
 =?us-ascii?Q?GbHK5Ziqk7wT5Ia2m0qNUuVSDoq6S4JWo10/Sfg3cHrjzIFiMsQKR/UXqEs4?=
 =?us-ascii?Q?YONhC9BJRCGI4jPfvftfKDmy9zIv15iHy/wv/CkrMs09uvcsxlKiiXvRBCCh?=
 =?us-ascii?Q?rIFtSdQymS8iUUlt4OlSTbkU3MbH7Ibv6LaJfrZ0Dhz4TXdg3VgQMMDZrmIG?=
 =?us-ascii?Q?33/7KjR835E1VUC40UO/5AHzZ+h2cwJGAzYqDsI98/qXrlKVOWPYuLfgA9uf?=
 =?us-ascii?Q?FROz41JCpEdC+hJ4DV/CdfzUJEmrYFjunMZCp9Nag5XD8U/Q7I22l6VaVnap?=
 =?us-ascii?Q?l71J0xoBjULYrJrJ/RXTKGJGl9MO32gNT3PCWN0paTmi8t28inTAYJHZaIPE?=
 =?us-ascii?Q?ZFdhRPci5ih8C/UhvJV7BzxUDNYnvrH6vICrRpl3h3ZXTe7nRAP/gJ5zVGCt?=
 =?us-ascii?Q?E2xdhCFG6S6JyH4/cWF7OC3Kia3dCbuOXaTjnWJbrN8N9W0hMvbWq5rUgKh1?=
 =?us-ascii?Q?a7O3qwdlAgx7hyC7qPTu/wQn2JyCVtcg7KapCqW17WI1zbDx1L1Av2LKe80/?=
 =?us-ascii?Q?3peZQfXdzCN2SrTsM+0mrXvPO6VYMHOcf1VfXUKMVupFOkIsEAOOyfgIrv61?=
 =?us-ascii?Q?Jvx6mvQtjnajntXGu6z+Gebyad4jimf2a7eglILVaHVk8OwEn7KSw+9qOPsk?=
 =?us-ascii?Q?8HBZ6OBg6HPT2ODGdDlcpUTZtG1TeNqqgBbqM5XvxJ8RQ499PBZi6mByYvDO?=
 =?us-ascii?Q?igur5smyXHb38pIPdolT6Zqy3bUnYXVGw5Gb3dMRV4R+1y+c3gIyp9jnRq6w?=
 =?us-ascii?Q?V4cO6WLBTV6ST4I3MQsy4BH5WDcTL/lDtPeeQwduAUeEsvx+meDDpYOgnkKv?=
 =?us-ascii?Q?hJ4Fkl/c1dU6zvIV5EUHVFR4WNoG5BbPO/tar3JgxteBe2eO4se41i2vOfY+?=
 =?us-ascii?Q?Tx9vumTBoP2vd2mmoCkWlAU97hRL7Jp2x86EP+J+CT28YpDmYb18znNzPOaY?=
 =?us-ascii?Q?NTqCsZsbD8+zUUgDqI/RkUC/qgwVkwSsaCZbXYymHGTMY9Z0hsSQ50EgKS2g?=
 =?us-ascii?Q?tgOf+ihDJ3ECyJvz4/swMxP0qO+pArx9at4xloFuiCHsJSsTghHafyfokPn7?=
 =?us-ascii?Q?wJ1/HeDnyV+yZqI6lh/oQnvF+e1hyfWD1fZSRzkrErRjmRyIYetsGTpFgBcs?=
 =?us-ascii?Q?N6vccpGYNAM09Iu3bZCS0R7fC7aweNNnJAADMd/rHncTL8G1iV01BY0scbU8?=
 =?us-ascii?Q?CyHJWAbqAlUoPFPwBQ5h+TbtMcFKBnn7vPCayG9i2P0rYTIr0PrNfUW0LreM?=
 =?us-ascii?Q?3Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee518011-f9b9-4b04-eade-08db719b6487
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2023 14:34:02.2978 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B72sWXph4S5eeZvTUEp9rjM+1a5Cs7Iv7u++glT1tXeeuoFSdjUcCqelNaKyh3vrT7P6DY5xuxs/DkH3SlY9vL/5WCkYV/9GB9zcULzKz/0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6672
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

Hello Kai,

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ka=
i
> Vehmanen
> Sent: Monday, June 19, 2023 5:56 PM
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
> > @@ -2277,6 +2277,40 @@ bool intel_hdmi_compute_has_hdmi_sink(struct
> intel_encoder *encoder,
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
> much a constant coming from the specs, but still avoid magic numbers in c=
ode
> would be preferable. Or we remove this altoghter, see below...
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
or 5.1
> at 192kHz, but it is enough for 2ch 192kHz audio. This approach forces us=
 to
> give preference to either channel acount or sampling rate.
>=20
> What if we just store the 'max audio samples per second' into pipe config=
:
>=20
>  - have "int max_audio_samples_per_second;" in pipe_config
>  - pipe_config->audio.max_audio_samples_per_second =3D
> available_blank_bandwidth / 32;
>=20
> Then when filtering SADs, the invidial channels+rate combination of each =
SAD
> is compared to the max_audio_samples_per_second and based on that, the
> SAD is either filter or passed on. What do you think?
>=20

This has been one my concern as well and we have thought about a similar ap=
proach as you suggest.
One disadvantage of this approach that I can see, would be that if there ar=
e hardware limitations on channels (as was in GLK) or frequencies independe=
ntly. It will be become tricky with this approach. However, one can argue t=
hat these limitations arise from bandwidth itself.

Regarding the bits per sample, Is using 32bit for all audio formats fair or=
 should we take into account different audio formats and their bit depth?

Regards

Chaitanya

> Br, Kai

