Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B536F8151
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 13:15:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A2F210E5CB;
	Fri,  5 May 2023 11:15:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4621810E5CA
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 11:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683285323; x=1714821323;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uCtuk9TaSiyHlTfvIef3v0FBP440dq0nyTSQWpaP5vY=;
 b=SC2F7D32v3k9YsH4mP02Mchm2R5IfvcX+nTc7iiBBnEsyRBnSZx/NtjA
 eF1oAoECFdv35ZoGOVDovC6oP41CTXNySYNTSOWs8vE0nrkkcnOqNZJzt
 xIM41XBw6+CRvpLsR2a1JTDXr7D7a3+UcDswaT4ig3CNhwAVt/02UTcK8
 AkTn4w8+ggyv7926rOLdZjVpNbFzHlZdTzdYdNlf/2iApknj5mQ3Dbejp
 gESNqNG8U86cEPmlGvXNMZMW+Pmx0a+/QPYzRYq8tO4YFfKUkt+NQA7Ul
 C/YtImxS42MQH2eZqIk+xGab/dVdKgbkWb9ID4w0Ma4h7SdLcxe9nw6fP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="412415867"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="412415867"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 04:15:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="691631656"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="691631656"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 05 May 2023 04:15:21 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 5 May 2023 04:15:21 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 5 May 2023 04:15:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 5 May 2023 04:15:21 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 5 May 2023 04:15:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cYS5GSOSAdoZsGqKUUepKB5lzMFI0trhqsd6ectGdIDMbsOzdDvDot/BSw/tKohI1nc2fXJxLWcK8ev8TycqPTIaOowo6V1dtmNguqEwSNDvsBFGSAO9+8bKEVPFJrv5Uv28b7Q1rdYng2nJO5K/XoG2bDdRJS8HYJIkzSvvuqnsTm+KPH6Mgxf0fYinrBteVP0mbIdPFFbIfVYCYdGaVhgTVZAZj826+YUnag5zmzffwYuhYCUy9TPaTfDrH0U5BhtQCvFVEsr6DFQKh5ezsQVN1ovHI+gJLcj0O1oRhrLhDgRlDv99b+ttRg/WZrfW7XWtOS58WlDpTr5eaAXPYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mTOYVMI+ZAiLi+tRCArb0xE+aQzVCTxdKSVTumM4rRc=;
 b=OmvP5iBOHTUOUzAKofrt6e0npaJI/DI3tvRxg4gNTWhp/4o33V3GXRpjgmLILV/mYZRdVy8KzJJy3COHFBhhfpdJ6fRMiHR+LhV1c7xAwCy4RjWtSfMEJRnqbpFNsb8+wFkqrnBM7ZcWA/vZYIXftjnZxjA6V6+90ZLLMZxOZAN551pI5Lxu9dfk3p91qO2XdxkZL982PRhof3bYLfMQDNiB5k0NfR+SzD7NO2RhOdTIM/WR6D8JmrxHHViSVChL3wFTIvm6KTBBFCYm48lhsiqd5ZGf5SlclLavUi2N5dmL5dWMwXrcOML5pFLQ/zvrU+yF6brxd5A7YWNaS586Mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ0PR11MB6720.namprd11.prod.outlook.com (2603:10b6:a03:479::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.27; Fri, 5 May
 2023 11:15:18 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::5671:364e:5c39:3284]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::5671:364e:5c39:3284%5]) with mapi id 15.20.6363.026; Fri, 5 May 2023
 11:15:18 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 5/5] drm/i915: Pick one HDMI port for
 infoframe/audio transmission on g4x
Thread-Index: AQHY8uGqeqjRjCqGMECNpwDzzEev9K9LsOnwgADsY4CAAAIm4A==
Date: Fri, 5 May 2023 11:15:18 +0000
Message-ID: <DM4PR11MB6360EB6036423174860EC319F4729@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20221107194604.15227-1-ville.syrjala@linux.intel.com>
 <20221107194604.15227-6-ville.syrjala@linux.intel.com>
 <DM4PR11MB636050E0C82E5BC1F23454B2F46D9@DM4PR11MB6360.namprd11.prod.outlook.com>
 <ZFTjBcK+Ps+mgPhn@intel.com>
In-Reply-To: <ZFTjBcK+Ps+mgPhn@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ0PR11MB6720:EE_
x-ms-office365-filtering-correlation-id: 14fe3d09-aab5-40a7-fdfb-08db4d5a0236
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MMJHrUml1OQY75LBGL4likbCdRWXAaVqfiFcRRS89Xh6aNvlXn+j2K5+j9CBLw6cRv5Rr0dJAod0+2tga9UkDAgtArFGbPdhlENucrzX3QGkdrzvO+JWEaVNpJUAsZO3xOCd1poY0QTTU1QPvTx3CGWdPqZEhnxBVzPV0278pBlrPT+J+mMz2k0vXNoL7Qu8uW01qhmIlBXoWaL6TIjqsa4Xyb0Bw7TSqJg3PHZkSlOjRYSmQ7D6uomlzX/wt9NcqWWbidg9EO1npjV6jEP1owwrwihJNDk2caZfiofvBCR6UentVG0/RV1hYQ3ByZo/BUJlj/O9FHXs0PhWWgpcu7GxlSEKj3hDjchhps6/5FzMw7AW83LsOQb0ZhfnmVkKgFDTxRqM94C1wXe2LUxCkasdsBPEo2JslhZsQcHQ2ihjUY40uYxhvV0Nxjjn2kHypzKSoBz7Kx18afLmlALLCmkF40dY+XpuG0Mg0rNILujLJKWzkJAV+1REIpuFqAYhk50pfLoBZiTFbMWlnGXGR4BbsVeg4hF30u8vMZ0Pz0mXyTjaWGJYrBJR5BTfw3JO0KFm0swILc7MwaEUnbWvdA08hhqIjiBtUKcOmsk6sdBj6ohtvrKAJw2xFUVMLiTU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(376002)(136003)(396003)(366004)(451199021)(7696005)(71200400001)(478600001)(53546011)(9686003)(6506007)(186003)(26005)(2906002)(4326008)(316002)(76116006)(66946007)(83380400001)(8936002)(8676002)(64756008)(66446008)(6916009)(52536014)(41300700001)(5660300002)(66476007)(66556008)(55016003)(86362001)(38070700005)(122000001)(82960400001)(38100700002)(33656002)(66574015);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?m6YZoCS6Ela9HLMPXQ4XjzKd231d6NZPijmIoqiRHg8X/nZdNjRbxx+u+j?=
 =?iso-8859-1?Q?IQ3as3z06gVKwHw1lfcDfjgpclW9v4zrzhViAy1If5ZNU10VUS1ok9lxS3?=
 =?iso-8859-1?Q?G5ZXe8yIEjG9WRsIiMIy1EhHRxJQnGzuWguUebUg1om2LH7bk+bS4n7ZBc?=
 =?iso-8859-1?Q?YSqhLifb58BmUq8fpyzXmqyyI5c6SnORM8Qb1fYVaBBhPuhJSUcl/wty3k?=
 =?iso-8859-1?Q?Ocx2j0UEa9Nkj2noyRJ5xnj/Sq7oR9E+1X9yyBtv2qlABamc5drdCDTGXK?=
 =?iso-8859-1?Q?lwaXB6owuFYYu2raB7MZPAL+Y/9L/9Pj1Mniwl+6rqDc8YnIMk6vTO6PO1?=
 =?iso-8859-1?Q?Ak/8/b61GVsXHQsMB6PiY+RCF2VZ9zpHyJbK6ypS2ADGr5GnBj/hjHz//t?=
 =?iso-8859-1?Q?rtPqHxcDLuxEfhz05rcUjnRaPpJDRSKgBs95vytgzZo5GZ9aEymFMsmcTC?=
 =?iso-8859-1?Q?izFEvXBEiy/KoYuEJHFwCB9MHJfRMOk097GLubUspNlrsIIB9jS3JWajCy?=
 =?iso-8859-1?Q?KS7jSf1BUSWeOWUjHhMA/u0NLJJh02xkWCY+JSsNe1EIXbzuV98ew9nGvw?=
 =?iso-8859-1?Q?YD+ep1GolWyfUkJVQ/EDUWxPaVhG6OJBwZAxuic7Mfkgsva1DuYtH2hLY2?=
 =?iso-8859-1?Q?S9ezGMgk3NPx20dFEiKIH7hc5NCDjWplNrdpkF2rbpiLEuBKucSCCMO+yc?=
 =?iso-8859-1?Q?E51Dxy0v9EEpnykYvgHvYCywU+3kcPYpDMyDAcZe4rMTFYDUQ63A7j3QVh?=
 =?iso-8859-1?Q?SP2x/iAlNTutfQ66XzdonGvfcJ7gOATQqccceZjcRNA+efmU9n5gNSuL1t?=
 =?iso-8859-1?Q?VlkZunICnj4Vm7hz99cbCmJoTw3NDrPxEJju8d+6mfievt+6ddS+MeoKOB?=
 =?iso-8859-1?Q?1tuwoBrX7QKeptm8QWYnYfYSwXQyRPvwhL7nT6qZM+NfvYNaH3IN9fB304?=
 =?iso-8859-1?Q?JWZr2orUJNhnJez/qVpD0D7v30r8S2R8mKmxNwh7ZfRQgBj54xeCGBMbTy?=
 =?iso-8859-1?Q?aJlnQXl6Y1eeQh1TfETKLDZ/X3Oq3bN6+QSR49HHiEOxhdDxhVeoWQFmCX?=
 =?iso-8859-1?Q?bG1dFP6tji4peNO4eiGqfrqOPbvL5N6OtQfLRGJ9Vzh0wdNMjM/5hTwhWN?=
 =?iso-8859-1?Q?jGf5bPQvhvEa/ofm8DJM6xwFZ0U4XiUzn83rRI6Tu1ixoBvz0vzbSAqQKG?=
 =?iso-8859-1?Q?SF58pbq+NRSatYnZsnsGV78qnn4o+X7qXJPZygqDyy8q4JjgLi57aGd4QU?=
 =?iso-8859-1?Q?it9q0lO5y8/Dr9oBkfGmfFY30t8lVPjY98p+kAjFv7HcxF6fIPfw3B7dL2?=
 =?iso-8859-1?Q?qXglRYrBHMHWo9u7wuHCPpQ4LryBFJXfFsKcnC4gsr5exetbhkFG8/RlGL?=
 =?iso-8859-1?Q?owq6r/nCwadpaU4Fsy/rpRByq4Jtf2Tyc2YALtXPW86eF5OPWDJglC3lKT?=
 =?iso-8859-1?Q?jiWt+0AtaOOYwOxAUMmpYBiASt1hrXMFwIdYtM8mM7Z3sGw0khK6T8tGNI?=
 =?iso-8859-1?Q?Xg+nf1VKW+It5KvuCyvVU3GEkhYhWgpFRa243i2FTvYMBDdQ8uMnBtL2Jq?=
 =?iso-8859-1?Q?AnmMsM+09xRfdQHArcaHmdfAkGP+9vUknJbPvtvdMXGnm5XQ0B0ooGI3k0?=
 =?iso-8859-1?Q?9RXrVksPIvtfvo3sPgJ/Wv5bMSTjWnaAqg?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14fe3d09-aab5-40a7-fdfb-08db4d5a0236
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2023 11:15:18.2036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nTHmlZK1UdxYT2Aihe1GnWvH6lUZJvWmViUQ5ggQKHNnFkAq+C5MREEWkc5u9R7xLaYPZy2Phw9zTC/+uqt5jQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6720
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Pick one HDMI port for
 infoframe/audio transmission on g4x
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, May 5, 2023 4:36 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Pick one HDMI port for
> infoframe/audio transmission on g4x
>=20
> On Thu, May 04, 2023 at 09:13:27PM +0000, Shankar, Uma wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Ville Syrjala
> > > Sent: Tuesday, November 8, 2022 1:16 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [Intel-gfx] [PATCH 5/5] drm/i915: Pick one HDMI port for
> > > infoframe/audio transmission on g4x
> > >
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >
> > > On g4x the hardware has only one audio/video DIP block. Thus only
> > > one HDMI port can transmit audio/infoframes at a time.
> > > Currently we pretend that multiple ports can do it at the same time,
> > > but that doesn't actually work for two reasons:
> > > - the state of the single hw block will get clobbered by
> > >   the multiple ports, leading to state checker failures
> > > - the hardware will automagically disable audio/infoframe
> > >   transmission when enabled on multiple ports
> > >
> > > To fix this let's allow only one of the ports to transmit audio/infof=
rames at a
> time.
> > > We'll just go over all the HDMI ports and pick the first one that is
> > > otherwise capable of audio/infoframes. Further HDMI ports will be
> > > treated as if they had a DVI sink connected.
> > >
> > > In order to compute this consistently we'll also need to always add
> > > all HDMI ports to the atomic state.
> >
> > Hi Ville,
> > Approach and idea looks nice. One query I had on this is, if we have 2
> > HDMI ports/sink enabled and we treat one of them as DVI due to this
> > limitation. Later if the monitor being treated as HDMI is unplugged, wi=
ll we get the
> audio on the other monitor without modeset.
>=20
> Yes. When disabling the HDMI connector g4x_hdmi_connector_atomic_check() =
will
> add both connectors to the state, and HDMI vs. DVI decisions is redone fo=
r both
> connectors.

Oh ok, got it. Thanks Ville for the clarification.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> >
> > Regards,
> > Uma Shankar
> >
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/g4x_hdmi.c   | 114 ++++++++++++++++++++=
+-
> > >  drivers/gpu/drm/i915/display/g4x_hdmi.h   |   4 +
> > >  drivers/gpu/drm/i915/display/intel_hdmi.c |  14 ++-
> > >  3 files changed, 129 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> > > b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> > > index fd23aa03cdc4..28d477d7c7e3 100644
> > > --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> > > +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> > > @@ -6,6 +6,7 @@
> > >   */
> > >
> > >  #include "g4x_hdmi.h"
> > > +#include "intel_atomic.h"
> > >  #include "intel_audio.h"
> > >  #include "intel_connector.h"
> > >  #include "intel_crtc.h"
> > > @@ -78,17 +79,66 @@ static bool intel_hdmi_get_hw_state(struct
> > > intel_encoder *encoder,
> > >  	return ret;
> > >  }
> > >
> > > +static bool connector_is_hdmi(struct drm_connector *connector) {
> > > +	struct intel_encoder *encoder =3D
> > > +		intel_attached_encoder(to_intel_connector(connector));
> > > +
> > > +	return encoder && encoder->type =3D=3D INTEL_OUTPUT_HDMI; }
> > > +
> > > +static bool g4x_compute_has_hdmi_sink(struct intel_atomic_state *sta=
te,
> > > +				      struct intel_crtc *this_crtc) {
> > > +	const struct drm_connector_state *conn_state;
> > > +	struct drm_connector *connector;
> > > +	int i;
> > > +
> > > +	/*
> > > +	 * On g4x only one HDMI port can transmit infoframes/audio at
> > > +	 * any given time. Select the first suitable port for this duty.
> > > +	 *
> > > +	 * See also g4x_hdmi_connector_atomic_check().
> > > +	 */
> > > +	for_each_new_connector_in_state(&state->base, connector,
> > > +conn_state, i)
> > > {
> > > +		struct intel_encoder *encoder =3D to_intel_encoder(conn_state-
> > > >best_encoder);
> > > +		const struct intel_crtc_state *crtc_state;
> > > +		struct intel_crtc *crtc;
> > > +
> > > +		if (!connector_is_hdmi(connector))
> > > +			continue;
> > > +
> > > +		crtc =3D to_intel_crtc(conn_state->crtc);
> > > +		if (!crtc)
> > > +			continue;
> > > +
> > > +		crtc_state =3D intel_atomic_get_new_crtc_state(state, crtc);
> > > +
> > > +		if (!intel_hdmi_compute_has_hdmi_sink(encoder, crtc_state,
> > > conn_state))
> > > +			continue;
> > > +
> > > +		return crtc =3D=3D this_crtc;
> > > +	}
> > > +
> > > +	return false;
> > > +}
> > > +
> > >  static int g4x_hdmi_compute_config(struct intel_encoder *encoder,
> > >  				   struct intel_crtc_state *crtc_state,
> > >  				   struct drm_connector_state *conn_state)  {
> > > +	struct intel_atomic_state *state =3D
> > > +to_intel_atomic_state(crtc_state-
> > > >uapi.state);
> > > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > >  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> > >
> > >  	if (HAS_PCH_SPLIT(i915))
> > >  		crtc_state->has_pch_encoder =3D true;
> > >
> > > -	crtc_state->has_hdmi_sink =3D
> > > -		intel_hdmi_compute_has_hdmi_sink(encoder, crtc_state,
> > > conn_state);
> > > +	if (IS_G4X(i915))
> > > +		crtc_state->has_hdmi_sink =3D g4x_compute_has_hdmi_sink(state,
> > > crtc);
> > > +	else
> > > +		crtc_state->has_hdmi_sink =3D
> > > +			intel_hdmi_compute_has_hdmi_sink(encoder, crtc_state,
> > > conn_state);
> > >
> > >  	return intel_hdmi_compute_config(encoder, crtc_state, conn_state);
> > > } @@
> > > -532,6 +582,66 @@ intel_hdmi_hotplug(struct intel_encoder *encoder,
> > >  	return state;
> > >  }
> > >
> > > +int g4x_hdmi_connector_atomic_check(struct drm_connector *connector,
> > > +				    struct drm_atomic_state *state) {
> > > +	struct drm_i915_private *i915 =3D to_i915(state->dev);
> > > +	struct drm_connector_list_iter conn_iter;
> > > +	struct drm_connector *conn;
> > > +	int ret;
> > > +
> > > +	ret =3D intel_digital_connector_atomic_check(connector, state);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	if (!IS_G4X(i915))
> > > +		return 0;
> > > +
> > > +	if (!intel_connector_needs_modeset(to_intel_atomic_state(state),
> > > connector))
> > > +		return 0;
> > > +
> > > +	/*
> > > +	 * On g4x only one HDMI port can transmit infoframes/audio
> > > +	 * at any given time. Make sure all enabled HDMI ports are
> > > +	 * included in the state so that it's possible to select
> > > +	 * one of them for this duty.
> > > +	 *
> > > +	 * See also g4x_compute_has_hdmi_sink().
> > > +	 */
> > > +	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> > > +	drm_for_each_connector_iter(conn, &conn_iter) {
> > > +		struct drm_connector_state *conn_state;
> > > +		struct drm_crtc_state *crtc_state;
> > > +		struct drm_crtc *crtc;
> > > +
> > > +		if (!connector_is_hdmi(conn))
> > > +			continue;
> > > +
> > > +		drm_dbg_kms(&i915->drm, "Adding [CONNECTOR:%d:%s]\n",
> > > +			    conn->base.id, conn->name);
> > > +
> > > +		conn_state =3D drm_atomic_get_connector_state(state, conn);
> > > +		if (IS_ERR(conn_state)) {
> > > +			ret =3D PTR_ERR(conn_state);
> > > +			break;
> > > +		}
> > > +
> > > +		crtc =3D conn_state->crtc;
> > > +		if (!crtc)
> > > +			continue;
> > > +
> > > +		crtc_state =3D drm_atomic_get_new_crtc_state(state, crtc);
> > > +		crtc_state->mode_changed =3D true;
> > > +
> > > +		ret =3D drm_atomic_add_affected_planes(state, crtc);
> > > +		if (ret)
> > > +			break;
> > > +	}
> > > +	drm_connector_list_iter_end(&conn_iter);
> > > +
> > > +	return ret;
> > > +}
> > > +
> > >  void g4x_hdmi_init(struct drm_i915_private *dev_priv,
> > >  		   i915_reg_t hdmi_reg, enum port port)  { diff --git
> > > a/drivers/gpu/drm/i915/display/g4x_hdmi.h
> > > b/drivers/gpu/drm/i915/display/g4x_hdmi.h
> > > index db9a93bc9321..1e3ea7f3c846 100644
> > > --- a/drivers/gpu/drm/i915/display/g4x_hdmi.h
> > > +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.h
> > > @@ -11,9 +11,13 @@
> > >  #include "i915_reg_defs.h"
> > >
> > >  enum port;
> > > +struct drm_atomic_state;
> > > +struct drm_connector;
> > >  struct drm_i915_private;
> > >
> > >  void g4x_hdmi_init(struct drm_i915_private *dev_priv,
> > >  		   i915_reg_t hdmi_reg, enum port port);
> > > +int g4x_hdmi_connector_atomic_check(struct drm_connector *connector,
> > > +				    struct drm_atomic_state *state);
> > >
> > >  #endif
> > > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > index 2425a9f59b90..d93aab847548 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > @@ -40,6 +40,7 @@
> > >  #include <drm/drm_edid.h>
> > >  #include <drm/intel_lpe_audio.h>
> > >
> > > +#include "g4x_hdmi.h"
> > >  #include "i915_debugfs.h"
> > >  #include "i915_drv.h"
> > >  #include "intel_atomic.h"
> > > @@ -2590,10 +2591,21 @@ static const struct drm_connector_funcs
> > > intel_hdmi_connector_funcs =3D {
> > >  	.atomic_duplicate_state =3D intel_digital_connector_duplicate_state=
,
> > >  };
> > >
> > > +static int intel_hdmi_connector_atomic_check(struct drm_connector
> *connector,
> > > +					     struct drm_atomic_state *state) {
> > > +	struct drm_i915_private *i915 =3D to_i915(state->dev);
> > > +
> > > +	if (HAS_DDI(i915))
> > > +		return intel_digital_connector_atomic_check(connector, state);
> > > +	else
> > > +		return g4x_hdmi_connector_atomic_check(connector, state); }
> > > +
> > >  static const struct drm_connector_helper_funcs
> > > intel_hdmi_connector_helper_funcs =3D {
> > >  	.get_modes =3D intel_hdmi_get_modes,
> > >  	.mode_valid =3D intel_hdmi_mode_valid,
> > > -	.atomic_check =3D intel_digital_connector_atomic_check,
> > > +	.atomic_check =3D intel_hdmi_connector_atomic_check,
> > >  };
> > >
> > >  static void
> > > --
> > > 2.37.4
> >
>=20
> --
> Ville Syrj=E4l=E4
> Intel
