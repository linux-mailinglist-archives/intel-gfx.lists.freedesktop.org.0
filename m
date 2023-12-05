Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EC38062D3
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Dec 2023 00:17:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2A5710E060;
	Tue,  5 Dec 2023 23:17:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA5F510E060
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 23:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701818231; x=1733354231;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=w9YCDLBCl3uQpeVZUbIOxHiMIRkTzhWjoCv/eFVm3eM=;
 b=TYDUJXGs5OFwTpDYyiuz/x4An8sBSOxmAzyrVCtVgvlqiZkVlHBoKnQC
 Igcjh5M2C+2/JZ7C2vG51gnNGvjMLgxtkcLxPnP5NQv2K+tmFCJL9JBM5
 Gj+7E/eYWBb4AAUiRPy3LARLn3TYPYnO5bhGru5WEAFYY/lWKq0Cfob6Y
 Ta5toYJuThU8gOVjJHDNuTSyCqmJVzLJ3rx3JOvqqVWvFOv+5HBx6MCBA
 4WupQzQZ7zRgUYifeCzGKR6L9ViB5FtAEknVxp91n/zfU6+E+lTRM6Ntw
 wzjPZiKxGEbaHLXhHVyGxTfkpEv61hPbVatf2m68NVdMKU1dpEeDrMGqU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="396766888"
X-IronPort-AV: E=Sophos;i="6.04,253,1695711600"; d="scan'208";a="396766888"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 15:17:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="771092459"
X-IronPort-AV: E=Sophos;i="6.04,253,1695711600"; d="scan'208";a="771092459"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Dec 2023 15:17:04 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Dec 2023 15:17:01 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Dec 2023 15:17:01 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 5 Dec 2023 15:17:01 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 5 Dec 2023 15:17:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a4Gg/KxVTsmCjm5bNRwAQ337Zj6hthI8ie26q/FOnW6F+stxtCxB/coP/WGMRJvhwlLqcoW3r/v2j3MA3hdkaw/VdYsOl1AzHu1e0d2eua6fwlkVThrUjg5QNTxycpI5ek7ZeaJrntaEYPM9JIe/lfzUqw1gzew4SoAAMCNMhRO356tlOHCpbdZZ08hWCC71rc0T6rlgGIVxopkD5IXq1J5SEOh15F9vtcGQ97jQ3pyuaskbgh3SSgZ9Rf7b/ODvyP3yVeVg/5frecifKesKbRSf7Y+eu0HVwp6EXEo5U7LtfrP21i2Rl9wwIt2IboE9CdR1P8IQlWbntuITC4HtgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RcTE78DFKWinIEKWr393WY7z38EqtHiMdMiVpCChETQ=;
 b=NWnkNhnCvsLX5C0pS9nD0Xz32230/8+D7hgj7PEY9KH+edWI2WAgI9yGDAaWxdzFqTKfAt0qVhh4LZ9SviQTU0TDyJxlB/+K9mbRRUvtGg1sf3KTiy69BVmLofLg3Y3qcUl7odo2PUziz0Py/RazlcSHLO5diu3pHenyW3yEG5pwYGY5Mb/5jIxN1SkN38PTD9JbonRKyDtI6pHG8KqRKPZCixXpEBbhrWYWddecvR5ciQOcuK9cNfgSQfVCY8ackiCzIDeF/QB8nD+VVXp4Yf8H5mK+YmASVgp6/yglsgX1U8OmJTM6mG0NqJvcMOAnZX/fM13mjtjFDe0s0NOTTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8740.namprd11.prod.outlook.com (2603:10b6:8:1b4::5) by
 CH0PR11MB5265.namprd11.prod.outlook.com (2603:10b6:610:e0::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7046.34; Tue, 5 Dec 2023 23:16:59 +0000
Received: from DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4]) by DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4%6]) with mapi id 15.20.7046.034; Tue, 5 Dec 2023
 23:16:58 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915: Stop accessing crtc->state
 from the flip done irq
Thread-Index: AQHZ8iC6yI3+rJ/8mkOS+FmMKsMBL7CFHyqAgBaaoHA=
Date: Tue, 5 Dec 2023 23:16:58 +0000
Message-ID: <DS0PR11MB8740B1CB1D1ECA45E4276D89BA85A@DS0PR11MB8740.namprd11.prod.outlook.com>
References: <20230928152450.30109-1-ville.syrjala@linux.intel.com>
 <ZVy1r7Z7JwR8JQIq@intel.com>
In-Reply-To: <ZVy1r7Z7JwR8JQIq@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8740:EE_|CH0PR11MB5265:EE_
x-ms-office365-filtering-correlation-id: 1f430eaa-e88e-4b6c-305b-08dbf5e84792
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CBszy9PMUPQhU/hwEIW3h5u3uP/Ah5Kg0SYWIZNHjYihXZwORwM7qfMfSFRdPIYBVpk3pVv74tYCxvkvQPSpnXe7vhvarzGRQUZ/Xe6fYKN6h2HwANl8cWbDICg6kwYZ5VzYOUhbO1wcXKiooYAMTk7+B32SC4ult8lOTDaTZsQvR1pVTBJ5agSpXRWXb4IYwYq+BB98wJHb9JE96aSVC759Au4tMCqxLTon1mCPiVgGZf3TeW31Y/bGNTyXn5A4WGg4vc2muxnlPIbPmi1qCVeGE9LZXQeRKe44YXe9jzUhuHdwejJpMvuWbPV5n/lF3iN2NWIFAdK0VbbG+Eu2xCqQnOTw52NxSVL0TC/5Q44p47DiSvcVN4LlxvGYKySGK5QzkisIuZnPUtUPIT2B26GWrw6sLnn1L7ae6jhFm6GOOdFT9nolf+/gJRqik+ppGQX1mRnaqH+BENXjjMqy9LgBVkwIok+Uaf9FuBbiFQ4hz6UoqQv5Uy0cUHG9bZNGIVYNbRq/RpJLw4+6Y7c5tzpAyzYRsXgrsGo1qtdaOjBWsxGGOXL57tD6E0OHuXNbX1wX/AJzCjI2yFgDYUkW7hC018xmOT9oY+nOxO664J4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8740.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(39860400002)(136003)(346002)(376002)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(2906002)(86362001)(38070700009)(5660300002)(83380400001)(122000001)(38100700002)(55016003)(82960400001)(33656002)(52536014)(53546011)(6506007)(71200400001)(66899024)(7696005)(9686003)(8676002)(8936002)(66574015)(41300700001)(478600001)(66946007)(316002)(110136005)(64756008)(66476007)(66446008)(76116006)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?mrVd5gC2cSMHu0RbqkDFLogkBAbDjPWaMghWkW0ypvxf6F3hnvVcxegjeq?=
 =?iso-8859-1?Q?jVodQlz6/5cqm0NxIcixoJOqmSkZOZQh7Hyo5c8zbLPQKtLguaSJZQwZiT?=
 =?iso-8859-1?Q?D9mizwibxxo8H/bjfiJNHEJOvj/fqGTgYMwwKp8x2TuaZcuSsv/lnsTUHc?=
 =?iso-8859-1?Q?K8ZftUFWsNxi+8vUwO0xfgFaV8ZgsvD0z/kudeq14MICtKQXkqlqppQt2g?=
 =?iso-8859-1?Q?YsgUWT2ww1QoNK5TJNTLdush62z+Pgtze0PvLVJRpCyoqMYx5baXTFywEu?=
 =?iso-8859-1?Q?v1ztkbQFLq6q9GrNtyEp+0QkV1kWHboF8cdGqUxyrCE/XMxeZsXTOYYlkj?=
 =?iso-8859-1?Q?7biuE5uAAsB/Hfnq4KnTtIC1WVOWPpQjBs0eBsxXf2vVXKYqpKATk5dQYU?=
 =?iso-8859-1?Q?Yv8AI3ZQCoWyrp3Qjre1FzHM0+yoV/khcgAJiLolxTODv74iaMKoQ7AOKn?=
 =?iso-8859-1?Q?z0eOFpjp4lmoiaHKvKvJm0OpIID5WvAWNq9J4Knr/QycJUoTgVCESH6hR8?=
 =?iso-8859-1?Q?wKLecpdRso76dHGph2GAFGLgoT89U4Z1vzcYPRzLS/uh5wlBkMez7GFiCs?=
 =?iso-8859-1?Q?qAmbwe/QVw6FuhW9rYXUrwFG26EA8I1bZzeM650p3uf/Kpin+O2cXFy8Fp?=
 =?iso-8859-1?Q?5YDRjE/c+Kdgm8AZjJgE3/1dyjlopTBGFar46Jqkq5uX761fh6ZRhjnFxs?=
 =?iso-8859-1?Q?HORNp7H+uPLtr25fi2ufnxBuu80SxQsBCUv2XA7DaYujadi18donH1MgTy?=
 =?iso-8859-1?Q?nMipBEZXI8QC2mz279J7ibJFFHrEah0daFPXQA9ZbpgLHihxKaEVvhLI73?=
 =?iso-8859-1?Q?JUqAWtg571cdJEGlcFSjgZYuMW6/xQT3nkNmxnA0V7wUH+/IVSXyEXjVMc?=
 =?iso-8859-1?Q?/GT8wixp0Tj635jcrVROHY6Cd+9yXs/wxtdzpyIemros6ThY2lywLnypgW?=
 =?iso-8859-1?Q?tQRh5PA0wN/+OgEfGxJqFhHl5j6gXKjDGrQ/K+jfUyx2+W8QO0zG29/Cua?=
 =?iso-8859-1?Q?i2SUK2TvCe1tOtKTrHFPBN2S8m6HuKMSCQA0lGCdKlDa5LfxvzVp7R9jLL?=
 =?iso-8859-1?Q?vYdXyr163EKVkdyAZJwij1ltseieQC/+tk1KTRzReV//yBeIs3rX9rd2kh?=
 =?iso-8859-1?Q?opnZ4c8K6SAX9IEAALNYb6UIEEmcjn9LU9P4bCLaaX0X5yTZdrpEJZx+tw?=
 =?iso-8859-1?Q?pO0jKbaaqereTxpnvcf9mIXWV2j7e9vdWFUUnPkvTfhfK+Lu3f7ck7uR1P?=
 =?iso-8859-1?Q?pYtVJNZ7GC2ALqiTfqX8Q7k2hojayC5KbeFY21ysfbn19P0Y3cy97/fWjU?=
 =?iso-8859-1?Q?K4IgsDTUWqkGAd0TjuHWjX4g7eatZSJ6/MwUc5RoOiovt9PVk7q6IMaTeK?=
 =?iso-8859-1?Q?/9T/1Sfo5fOdqWuiNnMwpwjN51/PMaD+j/R9axHtblljYi7TRchIB93wyC?=
 =?iso-8859-1?Q?vWaHhDWpCT/3Lsx2RFFcLrrD8kzNA7JlQOZ6WpLATZhQYO+WP9/l6cQLRq?=
 =?iso-8859-1?Q?YhOkJxUVR4U0z5fC52+cKjbe3zYhjyqgkAUHVulzBXPqRt2vBd9L9uFwO4?=
 =?iso-8859-1?Q?sm2m2yVMVjXqKnzFkmVMLbeYSwx2UuO1Ij55QA/9H3jAI5p+sgEwJwPUiN?=
 =?iso-8859-1?Q?A/5hg7EaW/LoFNHVL/gvnbYAn3n+e/TaieKqJ2xMBFn9riVaTuNXg0cDbL?=
 =?iso-8859-1?Q?u7PUn803PWuHjjA0jBDdZkMESMOxoHlJ8K+yITzh?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8740.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f430eaa-e88e-4b6c-305b-08dbf5e84792
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2023 23:16:58.4502 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nr2UkAoB8vlPoUaDn/6BVzTfEnnnR2yVZdKto5Q6UKFlEzNAWxJZAwdSdVb20tCmJ9dg3GWnuuKhuVjlqLo6Rg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5265
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Stop accessing crtc->state
 from the flip done irq
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Vi=
lle
> Syrj=E4l=E4
> Sent: Tuesday, November 21, 2023 7:21 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Stop accessing crtc->state=
 from
> the flip done irq
>=20
> On Thu, Sep 28, 2023 at 06:24:49PM +0300, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > Assuming crtc->state is pointing at the correct thing for the async
> > flip commit is nonsense. If we had already queued up multiple commits
> > this would point at the very lates crtc state even if the older
> > commits hadn't even happened yet.
> >
> > Instead properly stage/arm the event like we do for async flips.
> > Since we don't need to arm multiple of these at the same time we don't
> > need a list like the normal vblank even processing uses.
> >
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_crtc.c          | 9 ++++++++-
> >  drivers/gpu/drm/i915/display/intel_display_irq.c   | 9 ++++-----
> >  drivers/gpu/drm/i915/display/intel_display_types.h | 3 +++
> >  3 files changed, 15 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c
> > b/drivers/gpu/drm/i915/display/intel_crtc.c
> > index 1fd068e6e26c..8a84a31c7b48 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > @@ -553,8 +553,15 @@ void intel_pipe_update_start(struct
> > intel_atomic_state *state,
> >
> >  	intel_psr_lock(new_crtc_state);
> >
> > -	if (new_crtc_state->do_async_flip)
> > +	if (new_crtc_state->do_async_flip) {
> > +		spin_lock_irq(&crtc->base.dev->event_lock);


Would it be better to use irqsave since we are dealing with events.

> > +		/* arm the event for the flip done irq handler */
> > +		crtc->flip_done_event =3D new_crtc_state->uapi.event;
> > +		spin_unlock_irq(&crtc->base.dev->event_lock);
> > +
> > +		new_crtc_state->uapi.event =3D NULL;
> >  		return;
> > +	}
> >
> >  	if (intel_crtc_needs_vblank_work(new_crtc_state))
> >  		intel_crtc_vblank_work_init(new_crtc_state);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
> > b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > index bff4a76310c0..d3df615f0e48 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > @@ -340,16 +340,15 @@ static void flip_done_handler(struct
> drm_i915_private *i915,
> >  			      enum pipe pipe)
> >  {
> >  	struct intel_crtc *crtc =3D intel_crtc_for_pipe(i915, pipe);
> > -	struct drm_crtc_state *crtc_state =3D crtc->base.state;
> > -	struct drm_pending_vblank_event *e =3D crtc_state->event;
> >  	struct drm_device *dev =3D &i915->drm;
> >  	unsigned long irqflags;
> >
> >  	spin_lock_irqsave(&dev->event_lock, irqflags);
> >
> > -	crtc_state->event =3D NULL;
> > -
> > -	drm_crtc_send_vblank_event(&crtc->base, e);
> > +	if (crtc->flip_done_event) {
> > +		drm_crtc_send_vblank_event(&crtc->base, crtc-
> >flip_done_event);
> > +		crtc->flip_done_event =3D NULL;
> > +	}
>=20
> I just observed an oops here due to e=3D=3DNULL with the current code.
> I *think* I've seen it once before as well. Pstore also caught what seeme=
d to
> some kind of spurious DE interrupt, which might explain the oops. But not
> really sure what happened as the machine died before I could poke at it m=
ore.
>=20

Earlier the event was set to NULL and then drm_crtc_send_vblank_event() was=
 called.

> >
> >  	spin_unlock_irqrestore(&dev->event_lock, irqflags);  } diff --git
> > a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 8d8b2f8d37a9..a8ae1a25a550 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1461,6 +1461,9 @@ struct intel_crtc {
> >
> >  	struct intel_crtc_state *config;
> >
> > +	/* armed event for async flip */
> > +	struct drm_pending_vblank_event *flip_done_event;
> > +
> >  	/* Access to these should be protected by dev_priv->irq_lock. */
> >  	bool cpu_fifo_underrun_disabled;
> >  	bool pch_fifo_underrun_disabled;
> > --
> > 2.41.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel

Thanks and Regards,
Arun R Murthy
--------------------
