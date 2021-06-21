Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 753133AE465
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jun 2021 09:54:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F02789D57;
	Mon, 21 Jun 2021 07:54:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 600C589D57
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Jun 2021 07:54:05 +0000 (UTC)
IronPort-SDR: ElWGTIbznB0ltEDxdglAUfhQT00qEB7QDxildSEB2bRLYwLmL23IpwObiq5Rd3WD0lIIYbXmmD
 R6gGjzwlU4WQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10021"; a="194107335"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="194107335"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 00:54:04 -0700
IronPort-SDR: HUnJeibkXCqUzLX8Dk64zvyufU9DuJeSMEWsaT4MVH3LdRb7o7YQF5kU5IeKxkbul81GXYy027
 3a46jZM3si1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="622999922"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 21 Jun 2021 00:54:03 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 21 Jun 2021 00:54:03 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Mon, 21 Jun 2021 00:54:03 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Mon, 21 Jun 2021 00:54:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NI9y5FkPdhdTs/idRpEzJElli+RONm/ST3GeQWNxGmY3trIfsSce6iViVNBkEt73jWtDDD7v+er64MWwsvhcuzOC1sw9UvsfFHvVG3Q4CQpJioIUv4g+nxxyeAYxZ4iTVjM/tWXUVZDNW0ALxU7LCVLQ02lePWZ36XTYSgkTuaZLPD5kYjfB73pUHeMBpKMyPpoXJGuJS5lTK3wREOq6pfSgheKXe623i/023yIGxx6V/4JeWatTCRuzvVa8ljTlkuY6NYlC0mV/hnr1cC2yOGxgOLDfy+ym2eBKI/yjFUcaoLPHbt5xM70XjT0jHO4gFD4tHC/7vrWPFO5aJZPrOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F47QhkKC0kwsIjzP489X4IdvxXHdftMUk75C66a62/I=;
 b=oRhtR2+CA0zMRZkteYgEXtFnPzeexBFY++AtL6gpAPc7zl9BzMRefHFXFS89SSQ+L5PGn4SxGWG6xbkH9w3stMf/+z+Z5SF12bGs/wKWMxtd9cCKuBPWvDWNj6Ogp3yCC6WBwgfobY63Ty012eodA1VwipVaBdbFstokhwCgdV6878C1ZPjZbjY6N7yPtRxF9YJEe4O4z6TQEsBLnwc0deVYutf4dMVRhM7RQhEitEhku7H3Zi03TA6vyXpBMyE0Z9AoSJIIHaZMN6sofFsWdc8v7YNaA7w7m84FO585noptcEeB1n3EFrcy5KL9tgPEvQddhgUVoZ+aGekFBtqlFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F47QhkKC0kwsIjzP489X4IdvxXHdftMUk75C66a62/I=;
 b=aLs94rZpLO5za2NCiMMT/HKl39dfhSWV3ZjMuWzUdxcTbWwNXycVEIP9BNdr07P9u1Mjd2Oc9rP6u45wTdQqzi3Sg+tu+thtUCLQj5WgQI7Vin9l4xOOxa4h2gWRtp/t0/2Db95UonzJWFn3dor9291uRZqBJXonQ/hVLu7xXzM=
Received: from CO6PR11MB5569.namprd11.prod.outlook.com (2603:10b6:303:139::20)
 by CO6PR11MB5666.namprd11.prod.outlook.com (2603:10b6:303:13a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.19; Mon, 21 Jun
 2021 07:53:58 +0000
Received: from CO6PR11MB5569.namprd11.prod.outlook.com
 ([fe80::c169:aa0e:4520:7a35]) by CO6PR11MB5569.namprd11.prod.outlook.com
 ([fe80::c169:aa0e:4520:7a35%5]) with mapi id 15.20.4242.023; Mon, 21 Jun 2021
 07:53:58 +0000
From: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, "Jani
 Nikula" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/display/debug: Expose Dither
 status via debugfs
Thread-Index: AQHXUhnk8ZmJR5ZE9025Rhc+oC5nbKr10igAgAAC9gCAKF/qoA==
Date: Mon, 21 Jun 2021 07:53:58 +0000
Message-ID: <CO6PR11MB5569A51B60613F1CCB7582C28D0A9@CO6PR11MB5569.namprd11.prod.outlook.com>
References: <20210526181728.14817-1-bhanuprakash.modem@intel.com>
 <20210526181728.14817-3-bhanuprakash.modem@intel.com>
 <87im35bmfj.fsf@intel.com> <YK5dLK+RhPFwcgE+@intel.com>
In-Reply-To: <YK5dLK+RhPFwcgE+@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [157.48.141.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 83ef3c91-a07d-465d-6321-08d93489ba07
x-ms-traffictypediagnostic: CO6PR11MB5666:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB5666F57190FA2C010F6E7D778D0A9@CO6PR11MB5666.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:586;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mdsOBxDp4Xgs9z753HI2gJrgnY0mq9nssomq3DlNgGfnt208PtGoiI48UIuixiOrInk3rV4iBLocOt2p9CoLEOWV4h1QXgkrwlUMdOeNdk/IEjRkEfPesQ8kBj753Tik/bONe8QcAvtFDakg9iP0XIJgbwHXkBlgmxwpz3+A80NlDa3QrUktcOZ4BHoG+DFfVucpPJMzpuA32cNp7I0PwQykXOEZD3lZ+JErSKoMEarQXD5mTdog+b5IxCN2xxtS/1C6bCx4CGfV7j4QGWYz+1CrdLHg4EeBhJB+g54JcyowUoHBNSvOFjMT0sFRRFlbGSi1DiPeXDjwHqRjyqKgOEKRY3lPHAys52bFdjttZmBLRR5TuTM1cvPRmEGaNqkoOw5AiVEzfFfMY+A+Zh1bsjCwA4Y7nXeXuuBtFled+VbAFJ3i0n3vT+D/sQgP1JOS5oKCiTmHsWJLqwE6EWN0jngvtGkXl+fV7hZxgY37DMUaBOjc714vPtwBDtPN17VfDHiU2ypi+M+BxPu9XD47Sh7k6pl0g1XlwJM65gRIffWHD6nGqxsT52jZ1xNfaPQ711LX11SV64UeD1Grb8jevOk8zO/uceuCJO1kkFb2mtg52+LQjkUD9PPYYx4yCQ/8Wfc/cZnmuiFEbwQvdw4g2A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5569.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(39860400002)(346002)(366004)(376002)(396003)(316002)(55016002)(9686003)(478600001)(186003)(38100700002)(966005)(8936002)(5660300002)(122000001)(52536014)(83380400001)(54906003)(110136005)(8676002)(66574015)(86362001)(33656002)(64756008)(53546011)(7696005)(66476007)(2906002)(66446008)(66946007)(71200400001)(4326008)(66556008)(6506007)(76116006)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?2s91W0RE/y58Uxm/EQqqWhmDN+CtFcvxhZobbOMVailO33Lm0Mh1vqtYvU?=
 =?iso-8859-1?Q?TKuoNeRKY/Dj3G6dqHXXc9MnpJMdo7vycu9UpWCSUlUZFXvhJPWXPyW7QS?=
 =?iso-8859-1?Q?Ef9DQ3cKPOZ8JSqu3fo5TP+1DdnovsVAmB+68cDLViBb/MhtYCGcj5Av44?=
 =?iso-8859-1?Q?r+FIoJGbdBI3v/hVr667C7G9VngMRVrt1ou73It+zhdcvVRyRFyJUot+OK?=
 =?iso-8859-1?Q?h9xXFpigBjOINndL3RWLPrg7tUALjEjZdPRCzGTV627ifhcJx8jnCKkz7Z?=
 =?iso-8859-1?Q?o8iyJ7SsM04vwFn4zt3lC41MHb4iX4r0t/5El0QhDgf2LKPOKbOCdCdA6M?=
 =?iso-8859-1?Q?TgEJsoVAxvDokL1m67abFjd9CqIB/HTp8pVzy+8F9yU3qfNoGZ7VTktejD?=
 =?iso-8859-1?Q?3tgswrxdUePNtg3n+cGSkWVqLe8rwV7RJSXo8zC9bzXCOs36OmlOrNiPjC?=
 =?iso-8859-1?Q?aL3tOOflrWSt0XwQoJ42N45lJnNRf/qUH8O0hs/UXYyyUTjSHHOIFfHt9V?=
 =?iso-8859-1?Q?vygPvcI17k49TsNbu+bQl4uITD9C8gdMhMhUTbu7qjF7g7AEydUvhT75Lv?=
 =?iso-8859-1?Q?5sBBsZNUZrimYMlzPHfnr6yoip+ZMbUtWVQL1r6dJT7ub2kpAllHnglG9Q?=
 =?iso-8859-1?Q?KFDNo0G8NtSnE+ZQjiQO48ibpHNr0NH+UFbwUJU8R4dp0Id1ipghASUcBm?=
 =?iso-8859-1?Q?C8J4uLGQVENdv0vveHSuBr983OnZYZKXnO2YSG5PYJoFylwk30E6oMlEVd?=
 =?iso-8859-1?Q?M4lukqGoHxERBP2+NfUMs2gVJLnyfxRgbWkH1h9/aTKY+/H3nj4a/zVcyi?=
 =?iso-8859-1?Q?DBgvK/P4lOHXr3n0y2jA6zuUJRiLP6wf+y4PV7yI6djR+uBnkL4gcXKx6F?=
 =?iso-8859-1?Q?JMYKvB4T/DVzamDV0WZz00DyTnZfLfULcrRVtLZnJYzztaG22s/aOmrd9f?=
 =?iso-8859-1?Q?9gjymjn4NzwkGZdWQgyZL5NaenyI+MCo0YDNN8Zagg6WeSbe0ilGTJANFq?=
 =?iso-8859-1?Q?F0w+XZfQn+wb3jE0hHON+zkK07fq1QzUWPA4qjyMq7tgTKD17RXYHKY7NV?=
 =?iso-8859-1?Q?s07FkkuAQ9ECrW1QbKtrJpTjWqOfqnZlq2KMdo1Rwr4QlyKULRuW1PtR4+?=
 =?iso-8859-1?Q?PL00b0FPWFV29JGm7jkUCFWbzhEORQhn/jYhZIbd1Hzg4xTaJcWd3YxTHK?=
 =?iso-8859-1?Q?uirU7E+E9qFpQd6DV8q6mV3dAXCPeNQNRCD7rQ8rMjDibJiiQ/3zqfRhlX?=
 =?iso-8859-1?Q?hyPD9SkvTg43PWSTaRZJywtzx2VkQrFX2Ub2Lfdi1pef58JvzS3zFUVME8?=
 =?iso-8859-1?Q?TOThirbsRirHnDeINP1vv6fqAcXCIeS0GxF3szY5cW2PHkYdU0uy05Wc8j?=
 =?iso-8859-1?Q?OXwpy7nUEh?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5569.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83ef3c91-a07d-465d-6321-08d93489ba07
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2021 07:53:58.4760 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: shTLYReWzNdHzLIB/9O9XBxjAtCGKloTlhj2wcZ+sUKz3wOmWaX5xgBfXkkwsp1Lnqbp48L2KOj1gWzXO8fnxkJblX+SXDRQfH5GAHYwka4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5666
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display/debug: Expose Dither
 status via debugfs
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
 "Varide, Nischal" <nischal.varide@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, May 26, 2021 8:08 PM
> To: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Modem, Bhanuprakash <bhanuprakash.modem@intel.com>; intel-
> gfx@lists.freedesktop.org; Varide, Nischal <nischal.varide@intel.com>;
> Shankar, Uma <uma.shankar@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>
> Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display/debug: Expose Dither
> status via debugfs
> =

> On Wed, May 26, 2021 at 05:26:56PM +0300, Jani Nikula wrote:
> > On Wed, 26 May 2021, Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> wrote:
> > > It's useful to know the dithering state & pipe bpc for IGT testing.
> > > This patch will expose the dithering state for the crtc via a debugfs
> > > file "dither".
> > >
> > > Example usage: cat /sys/kernel/debug/dri/0/crtc-0/dither
> > >
> > > Cc: Uma Shankar <uma.shankar@intel.com>
> > > Cc: Nischal Varide <nischal.varide@intel.com>
> > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> > > ---
> > >  .../drm/i915/display/intel_display_debugfs.c  | 32 +++++++++++++++++=
++
> > >  1 file changed, 32 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > index 94e5cbd86e77..a6fefc7d5ab9 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > @@ -2158,11 +2158,43 @@ static const struct {
> > >  	{"i915_edp_psr_debug", &i915_edp_psr_debug_fops},
> > >  };
> > >
> > > +static int dither_state_show(struct seq_file *m, void *data)
> > > +{
> > > +	struct intel_crtc *crtc =3D to_intel_crtc(m->private);
> > > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > > +	struct intel_crtc_state *crtc_state;
> > > +	int ret;
> > > +
> > > +	if (!HAS_DISPLAY(dev_priv))
> > > +		return -ENODEV;
> >
> > Unneeded.
> >
> > > +
> > > +	ret =3D drm_modeset_lock_single_interruptible(&crtc->base.mutex);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	crtc_state =3D to_intel_crtc_state(crtc->base.state);
> > > +	seq_printf(m, "bpc: %u\n", crtc_state->pipe_bpp / 3);
> > > +	seq_printf(m, "Dither: %u\n", (crtc_state->dither) ? 1 : 0);
> > > +	seq_printf(m, "Dither_CC1: %u\n",
> > > +		(crtc_state->gamma_mode & GAMMA_MODE_DITHER_AFTER_CC1) ? 1 : 0);
> >
> > Are you looking to duplicate the conditions for enabling this CC1 mode
> > in IGT, and then checking if the driver set the bit as well?
> >
> > I thought the direction has been that we don't do this type of
> > validation in IGT. There is no end to it.
> >
> > Ville?
> =

> Yeah, I hate all the ad-hoc debugfs files. They just get in the
> way of refactoring all the time.
> =

> For state dumps we should just fix the midlayer crap in the atomic
> state dump framework and start using it.

AFAIK, user needs to trust the driver and atomic state checker will
make sure the computed s/w state data is properly written to the h/w,
and if there is a mismatch Kernel will throw the WARN.

What if the s/w state computation itself is wrong?

Example:
For 12-bpc panels, dither should be enabled after CC1 and disabled at
end of pipe. Suppose, we have a bug in the driver and dither at end of
pipe is enabled, still atomic state checkers are success.

I can see below options are useful:
1) We can add specific conditional checks in atomic state checkers for
different scenarios, so that kernel will throw WARN.

2) As "dither_legacy", "pipe bpp" are already exposed to "i915_display_info"
we can add "diter_cc1" to the same node instead of creating new nodes [*].
Then we can have robust checks in IGT.

Ville, Jani please suggest to proceed further.

[*]: https://patchwork.freedesktop.org/patch/439720

- Bhanu

> =

> >
> > > +
> > > +	drm_modeset_unlock(&crtc->base.mutex);
> > > +
> > > +	return 0;
> > > +}
> > > +DEFINE_SHOW_ATTRIBUTE(dither_state);
> > > +
> > >  void intel_display_debugfs_register(struct drm_i915_private *i915)
> > >  {
> > >  	struct drm_minor *minor =3D i915->drm.primary;
> > > +	struct drm_device *dev =3D &i915->drm;
> > > +	struct drm_crtc *crtc;
> > >  	int i;
> > >
> > > +	drm_for_each_crtc(crtc, dev)
> > > +		debugfs_create_file("dither", 0444, crtc->debugfs_entry, crtc,
> > > +				    &dither_state_fops);
> > > +
> >
> > See intel_crtc_debugfs_add(), called from intel_crtc_late_register().
> >
> > >  	for (i =3D 0; i < ARRAY_SIZE(intel_display_debugfs_files); i++) {
> > >  		debugfs_create_file(intel_display_debugfs_files[i].name,
> > >  				    S_IRUGO | S_IWUSR,
> >
> > --
> > Jani Nikula, Intel Open Source Graphics Center
> =

> --
> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
