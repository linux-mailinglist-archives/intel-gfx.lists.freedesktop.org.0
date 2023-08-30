Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E716B78D36B
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 08:51:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E47710E105;
	Wed, 30 Aug 2023 06:51:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDC8E10E105
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 06:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693378292; x=1724914292;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vQFqvhOCeaEYow09I04OJH6Pqr82PN4XWNEmLFTSq/w=;
 b=gGolj1cDwtdrLaUqpBOWKJic+OQEq80IGYPMSFmLFsj2fdLEDs7B4eUi
 I1/IrttzMIuhVwSAQLBbdBv9MYks7FF/JhHMmoeY2y826tbk7EX0IqneJ
 bf5jCs0znU0aqhEN26OyfmAu2GbPbw7N/SevCd78FlcVKpINrZbQkqr5g
 WwoYC24+YCfdaYnBRtw4G1EcZPTAQy+jKF+64Ib61Y4eqyU3K9sD1P+EF
 HJU2I7A6dRNBOwsgcm40OV/q3E1LpIxTan3FKw0KTOFe7M3Mdm28HBQel
 7pD6mnwtiapFOxD5JAdAjckPnc6vI0WbkQKYms7hx19RPvyTMJ/7A9k1g Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="375521044"
X-IronPort-AV: E=Sophos;i="6.02,212,1688454000"; d="scan'208";a="375521044"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 23:51:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="715791408"
X-IronPort-AV: E=Sophos;i="6.02,212,1688454000"; d="scan'208";a="715791408"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 29 Aug 2023 23:51:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 23:51:29 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 29 Aug 2023 23:51:29 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 29 Aug 2023 23:51:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FkcHwc9R6zVeLiRZLfBibhT00C2/s44cU23gsOQ2lKJSIjFDrYIfO8aSIo5g9Xa/oW05SDbVn0UyWrZ37exR5oaYIrPf7x/IqIljf8VfEJN/e1sQIyBl7S++z+62p+PfgffQEL5i8y+MT4YmjPRiVo9gBvfPDtPUMOMfQUGTBwc3A/tgtkDFenpdeQ5MQUZ5cr8pEZ/S9JMch76PXsvI+AbeTdpALtDw18pKy6rlyM0YNPAmuhWcuiryz5doVy+toK1Zkr9Vy0pYm2Qc6i+n2zJKKHQH0YDPw1QeYycsXwT0iqXYPB8V8wHiddeoCV9KLNQV6J0lUJ3yKKBwkeggMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RFYzPZA+61yWoWofN7e5ZwEC0C8Js63O6P6UN6zfvWs=;
 b=MuWDHd1anUsa5VO8+8ThEzAzgyB8KwXxVB96BvegG6NIDNYjVW2wyYZvqWfs0RLHFwuvRkgobHKg706w4sYcZwyiZfDC91UeZBYUE/cs9YTlysRaREs3hUFfujhcoLIkjfJQBsio11Uw8Y2S+D9IAP/ZCLUBFbX/ag9QMvq40SWiskHAkKpituqPY5wHtjDJe/1Ji5r9LzjOFOW5HZsxJOLmtnZdjWpkbnD8yV/E0oeoGSCYhTOda6VjyR4rfRk95VQL0k8CN50qwTbyoW10AfUgAbvl/3ugJfUfd+uW5r0PimnMKXcL9dr2t8Sr4jdjgN8fIZ27E014sRP3N+ysow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by PH8PR11MB6902.namprd11.prod.outlook.com (2603:10b6:510:229::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.18; Wed, 30 Aug
 2023 06:51:26 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::6462:b253:fa3c:2cee]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::6462:b253:fa3c:2cee%6]) with mapi id 15.20.6699.034; Wed, 30 Aug 2023
 06:51:25 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 5/6] drm/i915: Adjust seamless_m_n flag
 behaviour
Thread-Index: AQHZ2XJvB5Ost8epkEOiMtrQP47o7a//7aGwgAEC5ICAAFo8IIABBK6AgAAUAWA=
Date: Wed, 30 Aug 2023 06:51:25 +0000
Message-ID: <IA1PR11MB6348B01A4136BA3553A7407FB2E6A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20230828054140.28054-1-ville.syrjala@linux.intel.com>
 <20230828054140.28054-6-ville.syrjala@linux.intel.com>
 <IA1PR11MB6348E2A5D779E5D43EB3360CB2E0A@IA1PR11MB6348.namprd11.prod.outlook.com>
 <ZO2qXZ4MzHOzsVsr@intel.com>
 <IA1PR11MB6348EDA889B7CE26F4FBD298B2E7A@IA1PR11MB6348.namprd11.prod.outlook.com>
 <ZO7Qu8Q1VjiAL70w@intel.com>
In-Reply-To: <ZO7Qu8Q1VjiAL70w@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|PH8PR11MB6902:EE_
x-ms-office365-filtering-correlation-id: aaec1012-547d-4388-4d59-08dba92587ae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tlmOEeWswvoYllabx/fS46RuMxgmDTXcdAg+Fcdstp7nEXLGVc9KsdJ1fcAXURBHjjn6qAK/vkuTZP/c7hE9VnXKRgiYiIQLKkno2zNFG6tnZVyMp1zGIsh0AwBZrr7VxirSt+yw87OD6pB52GfkfKO7cm+MiUrEMEpbaJMpckSw7zaC+RsKJ66DLarjbvllw4cuOG2pkieUICcfxrgKO9aBvfcxp/XfONUhA+EjaJZFl0bJceVCRmOO3meMkW+3sq3YfRRdfDSQNm9w4mAPV0TsbOtjdffLkBeynJjPXF8b6iJy8p9NTFt/vx8msg9hszjtiEqr2QqpI7SeviL3kUp74+z2O25lBen8vhcPkUYEjLc32mrRZQIhkCCQESRl3zHAqOM7CCR85p5kQdbdqHzdMJdOzrOc7eW4VqlnNyFB8MAWZfAeDQC7kZkb4i4ekHgfNCcFVFo7NzCJKMgbyavRGDZfI5TvQzGN5NwMjcdt+/JJopuCYABR2Mj3215zL1112zSjz1Zw8PUr8/30RL9WV8M2WUpxzCGPktOyLMc1lVjTSzeBgAtUbSD+yMdqrw707R0p94co8FV7PUKFckEF/NibnyozlzFxKr/d86slvHbSZconEF2+AbwHo/iB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(136003)(376002)(396003)(39860400002)(1800799009)(186009)(451199024)(9686003)(38100700002)(86362001)(55236004)(122000001)(82960400001)(38070700005)(53546011)(6506007)(7696005)(71200400001)(478600001)(83380400001)(26005)(66574015)(33656002)(55016003)(66556008)(4326008)(5660300002)(8936002)(8676002)(52536014)(316002)(6916009)(64756008)(66476007)(76116006)(66946007)(66446008)(41300700001)(30864003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Zgdy7BDAIhl3CAybObk4wgBlMXAt72Nd8cGKrYOy+pffOFcFAktL61X3QE?=
 =?iso-8859-1?Q?+QwxnMexx657WY0+GY+tJuPK6xwcn3ldY3wpy0OI3Q4WSP8nCRr1fLdJB1?=
 =?iso-8859-1?Q?rQ/BIPkLOgt4G6clyaPJwqvN4WWPn8aSCCtoG0EOyywEXbEQk88B/MBFv4?=
 =?iso-8859-1?Q?9t/AHdmjmmuaRIMc9T0pqZ9Fgp6kA3Uzd5W+s99QLo2XESD8sa5AeFwRCD?=
 =?iso-8859-1?Q?2zpy9RnkulGuZg7xgGyDQZJW2VQFEsUsmHXEP+heAsNzBu6JtAHcI0814c?=
 =?iso-8859-1?Q?6f3lvIoIyWrjQjD5kICRKM6Ol7xm3uYLM312J+YYXQtr2ui2Oys77Gwr7v?=
 =?iso-8859-1?Q?nXx71ALDHHEsOHwRiSvTNC7yJraacX9jbzpulBYJH4HSeEkEyteGh6ufKc?=
 =?iso-8859-1?Q?pgANX4r2W2fUdn/s2uTSafl8THFFEA9qZ8giQkXGr53zjk9nY34SLX3Xu4?=
 =?iso-8859-1?Q?7p8xjQyekLDzwkAoB06xfbmUZIY/uSeWCSCKuYiJpzNBp3JXoBEOPgj6wR?=
 =?iso-8859-1?Q?lj76hWctXyxj/ZcIB138hkkNPWgS58jtAXxRNZ4en3O0uMWpP6j3P33ehc?=
 =?iso-8859-1?Q?mJ0ShvJF86ePrf1Ht7dEuH0ZV9xuciURBbUZMKptV15wf25a79qQ2ytvVb?=
 =?iso-8859-1?Q?DwyOZ7KoJ/mpOKZ3GOMNAEAoi7+GTborCVgYl6dsKdHCJr8l5vHfr8N3EZ?=
 =?iso-8859-1?Q?1M8JGn6NM6rBEtYJrKpyEEHjIM/3o3DtG32AkboWQPP3i/WLrtNeceocOv?=
 =?iso-8859-1?Q?da6F27Qrztf1Q1ONKJTSwHKQuc6CJbd03AIlk3i3a/1A8TMe64l305dh8X?=
 =?iso-8859-1?Q?kSxbu7ey3xX21wSugWDCSvAzLIWYdYpwCCR5c4t9O0Agi1G7BuOdyG1+BQ?=
 =?iso-8859-1?Q?/LNfMYw/F94rYwjTNTc/UbGkLwQifVQJiWdjAjxh9Jsj7jGVkjExdjdOGC?=
 =?iso-8859-1?Q?oTz66+Xa8JL2Qw1duiUoBympZtT11ChW+AXI/veNvxExV/bgpxYw5rgu1w?=
 =?iso-8859-1?Q?l4qbsE3U0wCVZG7Hzo3Lo5xGGFwzJdnMG0P83rDZ0Kc7XW86beam2Tzn7k?=
 =?iso-8859-1?Q?JLjhsfaWEMzovpAX38bltjpMvRMSpm2fXn1b0aolmBbjybtLBidh9jjibB?=
 =?iso-8859-1?Q?7Z7LcAtWNoqKc9I9N3M+RNYH/gtbmvOpDLKJzrdfopxRnKwZik/dBehvri?=
 =?iso-8859-1?Q?MMQCwadbWXTPVMBXPNdN2bqj07SY5BUuQhSwmTbd3mIdnXGSPwrAogjyoL?=
 =?iso-8859-1?Q?6WwDrMTLA7q/VMAq8O1SE12yLdYjfIVAL4Cc9pecxDvvAvp2EAbkhkR77o?=
 =?iso-8859-1?Q?rsqiYBJadvihWAKejKqp1MiFMiFuGTEGcE7JqaSb74at1hYkvtIfZiyw0n?=
 =?iso-8859-1?Q?dsCwSNGLx88sbs5ieoE9X9hjDhAb6whYebhF9gO/M0Y9covdp8FzgqBZta?=
 =?iso-8859-1?Q?2Qmc+xBnQZAMQAARrzWHmxXjfGAMkw1lJWSVfd1yNX+wJdy4DSL5u3yNKT?=
 =?iso-8859-1?Q?oaP3FH5unjtKuZJiikqHp9oEozIQ1gGyJ2thc5JLH7G9N1OjQGg0vfByxd?=
 =?iso-8859-1?Q?rvH/nhfYIjBSGmKh/Wa9Q/stnKmb/LUrInoRmjTddh5cd5WCCPE1G4gCvl?=
 =?iso-8859-1?Q?Bg2+PCAmYWkqcStvkH3Kquf3/KIfaJKPjsn6vc0MnFkyFU3w+/u/y/gIFb?=
 =?iso-8859-1?Q?WFsQvxR+hYRNQY6exiE=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aaec1012-547d-4388-4d59-08dba92587ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2023 06:51:25.7950 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: thvJeNv39HwpLhgKqUgRWZWvIVHOZtRsB8GjrFF4q3xeSNNEGs59Z6bgsg+wMothTi9agO/t1D+SDTCez3ZDDhKyGTnNOZhUUH0OO0LGsfALL0DW6ykVGscOrB4QSDoT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6902
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Adjust seamless_m_n flag
 behaviour
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

Hi Ville,

> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: 30 August 2023 10:47
> To: Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Adjust seamless_m_n flag
> behaviour
>=20
> On Tue, Aug 29, 2023 at 01:48:18PM +0000, Golani, Mitulkumar Ajitkumar
> wrote:
> > Hi Ville,
> >
> > Thanks for the inputs.
> >
> > I encountered an interesting observation while validating the changes.
> > In scenarios where VRR is by default ON from the panel, I noticed that
> during the first-time enabling of VRR, a full modeset is required due to =
a
> fastset requirement mismatch, as indicated in the logs.
>=20
> Which logs?
>=20
> > However, I also observed that after this, the function
> intel_crtc_needs_modeset returns 0, which typically implies a fastset
> operation.
>=20
> Any fastset always starts out as a full modeset, it will then be promoted=
 (or
> demoted?) to a fastset by intel_crtc_check_fastset() if possible.
>=20

Thank you for your explanation. Considering the underrun issues observed du=
ring validation,=20
it seems plausible that for the initial computation of VRR parameters, a fu=
ll modeset might be required=20
to ensure the accurate establishment of the baseline configuration. I appre=
ciate your insight on this matter.

Regards,
Mitul

> >
> > Considering that both conditions can't hold simultaneously, there seems
> to be an inconsistency with underrun errors.
> > Could you kindly shed some light on this situation? I'm trying to align=
 the
> log messages with the observed behavior and the function's return value.
> >
> > Your insights would be greatly appreciated.
> >
> > Regards,
> > Mitul
> >
> > > -----Original Message-----
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Sent: 29 August 2023 13:51
> > > To: Golani, Mitulkumar Ajitkumar
> > > <mitulkumar.ajitkumar.golani@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org
> > > Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Adjust seamless_m_n
> > > flag behaviour
> > >
> > > On Mon, Aug 28, 2023 at 04:58:49PM +0000, Golani, Mitulkumar
> > > Ajitkumar
> > > wrote:
> > > > Hi Ville,
> > > >
> > > > > -----Original Message-----
> > > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> > > > > Behalf Of Ville Syrjala
> > > > > Sent: 28 August 2023 11:12
> > > > > To: intel-gfx@lists.freedesktop.org
> > > > > Subject: [Intel-gfx] [PATCH 5/6] drm/i915: Adjust seamless_m_n
> > > > > flag behaviour
> > > > >
> > > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > >
> > > > > Make the seamless_m_n flag more like the update_pipe fastset
> > > > > flag, ie. the flag will only be set if we need to do the
> > > > > seamless M/N update, and in all other cases the flag is cleared.
> > > > > Also rename the flag to update_m_n to make it more clear it's
> similar to update_pipe.
> > > > >
> > > > > I believe special casing seamless_m_n like this makes sense as
> > > > > it also affects eg. vblank evasion. We can potentially avoid
> > > > > some vblank evasion tricks, simplify some checks, and hopefully
> > > > > will help with
> > > the VRR vs. M/N mess.
> > > > >
> > > > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_atomic.c   |  1 +
> > > > >  drivers/gpu/drm/i915/display/intel_crtc.c     |  2 +-
> > > > >  drivers/gpu/drm/i915/display/intel_display.c  | 22 +++++++++++--=
----
> --
> > > > >  .../drm/i915/display/intel_display_types.h    |  2 +-
> > > > >  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
> > > > >  5 files changed, 17 insertions(+), 12 deletions(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c
> > > > > b/drivers/gpu/drm/i915/display/intel_atomic.c
> > > > > index 7cf51dd8c056..aaddd8c0cfa0 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> > > > > @@ -259,6 +259,7 @@ intel_crtc_duplicate_state(struct drm_crtc
> *crtc)
> > > > >  		drm_property_blob_get(crtc_state->post_csc_lut);
> > > > >
> > > > >  	crtc_state->update_pipe =3D false;
> > > > > +	crtc_state->update_m_n =3D false;
> > > > >  	crtc_state->disable_lp_wm =3D false;
> > > > >  	crtc_state->disable_cxsr =3D false;
> > > > >  	crtc_state->update_wm_pre =3D false; diff --git
> > > > > a/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > > b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > > index 1992e7060263..a04076064f02 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > > @@ -510,7 +510,7 @@ static void
> > > > > intel_crtc_vblank_evade_scanlines(struct
> > > > > intel_atomic_state *state,
> > > > >  	 * M/N is double buffered on the transcoder's undelayed
> vblank,
> > > > >  	 * so with seamless M/N we must evade both vblanks.
> > > > >  	 */
> > > > > -	if (new_crtc_state->seamless_m_n &&
> > > > > intel_crtc_needs_fastset(new_crtc_state))
> > > > > +	if (new_crtc_state->update_m_n)
> > > > >  		*min -=3D adjusted_mode->crtc_vblank_start -
> > > > > adjusted_mode->crtc_vdisplay;  }
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > index 632f1f58df9e..6196ef76390b 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > @@ -5170,7 +5170,7 @@ intel_pipe_config_compare(const struct
> > > > > intel_crtc_state *current_config,
> > > > >  	PIPE_CONF_CHECK_X(lane_lat_optim_mask);
> > > > >
> > > > >  	if (HAS_DOUBLE_BUFFERED_M_N(dev_priv)) {
> > > > > -		if (!fastset || !pipe_config->seamless_m_n)
> > > > > +		if (!fastset || !pipe_config->update_m_n)
> > > > >  			PIPE_CONF_CHECK_M_N(dp_m_n);
> > > > >  	} else {
> > > > >  		PIPE_CONF_CHECK_M_N(dp_m_n);
> > > > > @@ -5307,7 +5307,7 @@ intel_pipe_config_compare(const struct
> > > > > intel_crtc_state *current_config,
> > > > >  	if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >=3D 5)
> > > > >  		PIPE_CONF_CHECK_I(pipe_bpp);
> > > > >
> > > > > -	if (!fastset || !pipe_config->seamless_m_n) {
> > > > > +	if (!fastset || !pipe_config->update_m_n) {
> > > > >  		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_clock);
> > > > >  		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_clock);
> > > > >  	}
> > > > > @@ -5402,6 +5402,7 @@ int intel_modeset_all_pipes(struct
> > > > > intel_atomic_state *state,
> > > > >
> > > > >  		crtc_state->uapi.mode_changed =3D true;
> > > > >  		crtc_state->update_pipe =3D false;
> > > > > +		crtc_state->update_m_n =3D false;
> > > > >
> > > > >  		ret =3D drm_atomic_add_affected_connectors(&state-
> >base,
> > > > >  							 &crtc->base);
> > > > > @@ -5519,13 +5520,14 @@ static void
> > > > > intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_=
sta  {
> > > > >  	struct drm_i915_private *i915 =3D
> > > > > to_i915(old_crtc_state->uapi.crtc-
> > > > > >dev);
> > > > >
> > > > > -	if (!intel_pipe_config_compare(old_crtc_state,
> new_crtc_state,
> > > > > true)) {
> > > > > +	if (!intel_pipe_config_compare(old_crtc_state,
> new_crtc_state,
> > > > > true))
> > > > >  		drm_dbg_kms(&i915->drm, "fastset requirement not
> met,
> > > forcing
> > > > > full modeset\n");
> > > > > +	else
> > > > > +		new_crtc_state->uapi.mode_changed =3D false;
> > > > >
> > > > > -		return;
> > > > > -	}
> > > > > +	if (intel_crtc_needs_modeset(new_crtc_state))
> > > > > +		new_crtc_state->update_m_n =3D false;
> > > > >
> > > > > -	new_crtc_state->uapi.mode_changed =3D false;
> > > > >  	if (!intel_crtc_needs_modeset(new_crtc_state))
> > > > >  		new_crtc_state->update_pipe =3D true;  } @@ -6240,6
> +6242,7
> > > @@ int
> > > > > intel_atomic_check(struct drm_device *dev,
> > > > >  			if
> (intel_cpu_transcoders_need_modeset(state,
> > > > > BIT(master))) {
> > > > >  				new_crtc_state-
> >uapi.mode_changed =3D true;
> > > > >  				new_crtc_state->update_pipe =3D
> false;
> > > > > +				new_crtc_state->update_m_n =3D
> false;
> > > > >  			}
> > > > >  		}
> > > > >
> > > > > @@ -6252,6 +6255,7 @@ int intel_atomic_check(struct drm_device
> > > *dev,
> > > > >  			if
> (intel_cpu_transcoders_need_modeset(state,
> > > > > trans)) {
> > > > >  				new_crtc_state-
> >uapi.mode_changed =3D true;
> > > > >  				new_crtc_state->update_pipe =3D
> false;
> > > > > +				new_crtc_state->update_m_n =3D
> false;
> > > > >  			}
> > > > >  		}
> > > > >
> > > > > @@ -6259,6 +6263,7 @@ int intel_atomic_check(struct drm_device
> > > *dev,
> > > > >  			if (intel_pipes_need_modeset(state,
> new_crtc_state-
> > > > > >bigjoiner_pipes)) {
> > > > >  				new_crtc_state-
> >uapi.mode_changed =3D true;
> > > > >  				new_crtc_state->update_pipe =3D
> false;
> > > > > +				new_crtc_state->update_m_n =3D
> false;
> > > > >  			}
> > > > >  		}
> > > > >  	}
> > > > > @@ -6437,7 +6442,7 @@ static void intel_pipe_fastset(const
> > > > > struct intel_crtc_state *old_crtc_state,
> > > > >  	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> > > > >  		hsw_set_linetime_wm(new_crtc_state);
> > > > >
> > > > > -	if (new_crtc_state->seamless_m_n)
> > > > > +	if (new_crtc_state->update_m_n)
> > > > >  		intel_cpu_transcoder_set_m1_n1(crtc,
> new_crtc_state-
> > > > > >cpu_transcoder,
> > > > >  					       &new_crtc_state-
> >dp_m_n);  }
> > > @@ -6573,8 +6578,7 @@
> > > > > static void intel_update_crtc(struct intel_atomic_state *state,
> > > > >  	 *
> > > > >  	 * FIXME Should be synchronized with the start of vblank
> > > > > somehow...
> > > > >  	 */
> > > > > -	if (vrr_enabling(old_crtc_state, new_crtc_state) ||
> > > > > -	    (new_crtc_state->seamless_m_n &&
> > > > > intel_crtc_needs_fastset(new_crtc_state)))
> > > > > +	if (vrr_enabling(old_crtc_state, new_crtc_state) ||
> > > > > +new_crtc_state->update_m_n)
> > > > >  		intel_crtc_update_active_timings(new_crtc_state,
> > > > >  						 new_crtc_state-
> >vrr.enable);
> > > >
> > > > In the context where a Push has already been sent, should the
> > > > update
> > > occur when we enable VRR itself? I'm curious about the rationale for
> > > not updating it immediately upon enabling VRR.
> > >
> > > The active timings should really be updated synchronously with the
> > > hardware latching the new values. But that is actually impossible so
> > > some race conditions will always remain.
> > >
> > > I haven't actually verified how the hardware behaves when we enable
> VRR.
> > > I assume the VRR_CTL will get latched at the next start of vblank as =
well.
> > > But we should really try to confirm that on actual hardware.
> > >
> > > The case where we have VRR already enabled while updating M/N might
> > > go badly with the current order of doing things as the vblank irq
> > > may trigger immediately upon push. So for that case it would be
> > > better to update the active timings before the push. Or perhaps we
> > > should just make sure VRR is always disabled around M/N updates...
> > >
> > > >
> > > > Regards,
> > > > Mitul
> > > > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > index 731f2ec04d5c..2367b030b469 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > @@ -1083,6 +1083,7 @@ struct intel_crtc_state {
> > > > >
> > > > >  	unsigned fb_bits; /* framebuffers to flip */
> > > > >  	bool update_pipe; /* can a fast modeset be performed? */
> > > > > +	bool update_m_n; /* update M/N seamlessly during
> fastset? */
> > > > >  	bool disable_cxsr;
> > > > >  	bool update_wm_pre, update_wm_post; /* watermarks are
> > > updated */
> > > > >  	bool fifo_changed; /* FIFO split is changed */ @@ -1195,7
> > > > > +1196,6 @@ struct intel_crtc_state {
> > > > >  	/* m2_n2 for eDP downclock */
> > > > >  	struct intel_link_m_n dp_m2_n2;
> > > > >  	bool has_drrs;
> > > > > -	bool seamless_m_n;
> > > > >
> > > > >  	/* PSR is supported but might not be enabled due the lack
> of
> > > > > enabled planes */
> > > > >  	bool has_psr;
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > index 05694e0b6143..ceab5b26b5e8 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > @@ -2535,7 +2535,7 @@ intel_dp_drrs_compute_config(struct
> > > > > intel_connector *connector,
> > > > >  	int pixel_clock;
> > > > >
> > > > >  	if (has_seamless_m_n(connector))
> > > > > -		pipe_config->seamless_m_n =3D true;
> > > > > +		pipe_config->update_m_n =3D true;
> > > > >
> > > > >  	if (!can_enable_drrs(connector, pipe_config,
> downclock_mode)) {
> > > > >  		if (intel_cpu_transcoder_has_m2_n2(i915,
> pipe_config-
> > > > > >cpu_transcoder))
> > > > > --
> > > > > 2.41.0
> > > >
> > >
> > > --
> > > Ville Syrj=E4l=E4
> > > Intel
>=20
> --
> Ville Syrj=E4l=E4
> Intel
