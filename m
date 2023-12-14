Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0038813C53
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 22:06:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D984010E264;
	Thu, 14 Dec 2023 21:06:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20A5B10E236
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Dec 2023 21:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702587970; x=1734123970;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NnAvAdQj54wwHerwor2tbMzB5thkq3QREwqjCKekxpE=;
 b=PpqsmA2tsLHuN/ezmcvCclxHEJElsE5x7aSuqa4YW1PneBs4CHJbfrAs
 DpetcqLyzZY1WE6uOfoUNaDI0UPQibQL5Ad7gfDEVutXarkXD6quVWaAm
 cb6c21htLIVzBfDsLNqF6j03GXsivOFELmH0kUXbf6MjHCb1YD97HhDvf
 fALS+QfU3lSHaTlxn8g6T5GSgpcG8ft/S/aQfmwMWv9IVNGlYc9MhEI8g
 lZPUSBUGZkJ9+jDXvno3sAg3cZWr1/FRDFBuF+mONvF6waLbkTE1SzwMi
 /8tcv4evvXnFxIc0o5iRT0xXrhnVHhor4Hyy+gCItGWaNoswUjo7FQXGi A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="461650733"
X-IronPort-AV: E=Sophos;i="6.04,276,1695711600"; d="scan'208";a="461650733"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 13:06:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="1105866418"
X-IronPort-AV: E=Sophos;i="6.04,276,1695711600"; d="scan'208";a="1105866418"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Dec 2023 13:06:09 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Dec 2023 13:06:09 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Dec 2023 13:06:08 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Dec 2023 13:06:08 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Dec 2023 13:06:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c3HyVebbkqBuizdLg2ZMMbcfSDtjtAzuTfCbnVz7JcuNQvQvVMwy/4Qy8B7spXLM6RK+DIXLcgDmx+ciGKl9ItlTAEG5WeitFr7zpV8biLQCKZJNzhoofcz04tqj/+25L3U/jpd0OsamM46K6RutU+bOyjuGzWt2qrcXDfiIQcHC/r8JPZMhyV6IWmJUD08QvBNd3FrvSjzqVVtxoAABkjIKK6TYoD2GJ+9wlQ5DKIkbtCRVzCHJhUTOvHqiium4Hnp5qgGFnLHW5fGRj/WZCwnJgzHfgbFf4Ou+KI4O0f1RgLKc7fuMsOtgrW6GYw0cLiTBzgwf4KlOlreHCjZhrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wd12t8F6yh+1Wf0CDrlHQiX5O2FV6V2dQPui3E5FsaU=;
 b=gzX3Xp/LB9QJ2+eGpRZ41+vwKWu0VzmK0SjV6MzKkA7P+ymWnj9bJwzdF0Q3KUuBgrlY/vAFeyJMSlu/QSmVI45bCZWy27Iz1uuthG5hnVS4/Dd/YT0tPho7fk+hPO65eGJIEEycFjXjVu4UaksA54fqhqWhTKjicXf1VoMG5VlwIWOcDy4gBk4jVYxSDuJwMVoLIZGBJqDW08S8KuytdvkjGOiKGPLB35FsqUrY6AtkhVMSng+2Slt2hQD/mfXrTUKWfAi9DaLbd+aMkDDp9bVJgkMgESvfIb0LmkrjFJwMdlMZO9IzZKevjo/2g+xnQTfxBZ8s/cRoGZvB/jMSeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 CH3PR11MB8657.namprd11.prod.outlook.com (2603:10b6:610:1ca::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Thu, 14 Dec
 2023 21:06:03 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10%7]) with mapi id 15.20.7091.028; Thu, 14 Dec 2023
 21:06:03 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 04/12] drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen
 memory access
Thread-Topic: [PATCH 04/12] drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen
 memory access
Thread-Index: AQHaLV1ehsLMotduQkmac2IgjlhoXrCm7XcAgAAFwICAAK2RMIAAZ+qAgAECwPA=
Date: Thu, 14 Dec 2023 21:06:03 +0000
Message-ID: <DM4PR11MB5971511B62A161292A31689A878CA@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
 <20231213004237.20375-5-ville.syrjala@linux.intel.com>
 <170245857881.24445.6579832987498048224@jlahtine-mobl.ger.corp.intel.com>
 <ZXl5pclbJJRWL68T@intel.com>
 <DM4PR11MB5971E509F696DC0883F3D904878DA@DM4PR11MB5971.namprd11.prod.outlook.com>
 <ZXpiaUnPkpYkySd-@intel.com>
In-Reply-To: <ZXpiaUnPkpYkySd-@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|CH3PR11MB8657:EE_
x-ms-office365-filtering-correlation-id: 398ddde2-835d-4323-bd6a-08dbfce87b85
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wY1sBDpbVBWSJRHwjCi6B8sjmzOK1sQh7aChEJ9WY/VDgWd2h70WtIlXbRqbOnWYA7CuH/HxUm1COwrvtQfe+gPXBhmqj+LI/D0hGTIeilJruv5xkbqJcp2QTCTlr974BDb8MxH5NNlX6+whRa6RX6YWSzngSrozXB8AjkvYn5ggK+lTEf+VftqV+sIzbvQnOtdenrRgiNf37j9dkYegP1rfiAn70Hk7nF4sev0/m7Ub8CJCTv4XufDdB/TuCB5ZqSBl2IEGJBuN25AitqCdV8IRfdDK7B06zGgGknurcn/9bp6iHKlaMZjWeDz3UIhzJ88fVc9WiKGQdokCuT7QRNa5jOxymVfyS55aYuiZ6hFuTPmTLVHwpi44gvtN/ulPP3HHkZW4cQ0ckRHB3UWOXzNGi9QFyR3IfytsGZD0R42ds80Iw0uGudqL3+HIw+kb7LbUucj68CqKnF/m5gev4CYXTs3PxYOgWdCbxG5Y72gYmSo5cRFP9RIFaOeSYosLEG09OgsqTFlFyNX8pB+/CXi3fteW1N+nO583j3Oq5i/AJH05JeOGDI8NPrrCalPg83k9TLwjoxTFwTUROAGJ+cIazVTWaRWj3GQwQgcNjOx7MfwTbd0y9CCEwdbXK28atMqfYDgE+2ROyBtYxwvYHA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(396003)(346002)(39860400002)(366004)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(966005)(71200400001)(9686003)(8936002)(4326008)(8676002)(66574015)(83380400001)(478600001)(52536014)(26005)(55016003)(64756008)(76116006)(54906003)(6916009)(66556008)(66476007)(66446008)(66946007)(316002)(53546011)(7696005)(6506007)(5660300002)(122000001)(2906002)(82960400001)(41300700001)(86362001)(4001150100001)(38100700002)(33656002)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?hrrxS4fsMVOG47H+VMyNies+JGAY/WU2SGdkn6dm6cFwOm6oNR/mj+41xi?=
 =?iso-8859-1?Q?Unk5YaogBumF+6D57ddrrZh+Wcbcq7sFRExaoGp+lBUeGxscqTw2o/VWxL?=
 =?iso-8859-1?Q?8YrOSVYSqcVHmgZgW2CcbQoi5OBYV7IWLVBoYqAQBdR6ZHzG12YM+gEBur?=
 =?iso-8859-1?Q?M77MAWNGlO90A7vllVdcBgi/NDyXL6t+RD1dYrlJnNGp6+eoxYRsxV4CUm?=
 =?iso-8859-1?Q?yS+1AgT3AJVVwwye2DaSj+oE/uKMVsa07rSHzlSOH3ETK9ZNf1Zai2XRhH?=
 =?iso-8859-1?Q?fLpD3nJ/7QYdJZPRE4yCnjs8F1DwibbAj9fcKwvpQMk+2FFkzCZw4QPLyN?=
 =?iso-8859-1?Q?O1bW95BBrG6u0Y6zPXEuzPkfJsrKi4ak5EJ0Jtudoj4pOMmZoFyRWzUMs3?=
 =?iso-8859-1?Q?MKpbxTeX56G4xlPZbmxJrX3tmO8BBo2MDFrHMRENSa8+qOcQuhexzQ6UVP?=
 =?iso-8859-1?Q?Hg78D32BVEf1O+4kdGGOtp6CglSDYPdkC7T08ZwKtyUdCL3KOd/0f9dott?=
 =?iso-8859-1?Q?HYOuZhEqeU7tt8Tx1jnZBF6ppsBGLItOosKEvWlYtdTeQRLaUi6tK0Veox?=
 =?iso-8859-1?Q?g2n4iFrHXdS4bggQbdBYlGQHW42ZST8I7sHwSWTkdiPN1OuCs99IIeLypz?=
 =?iso-8859-1?Q?D7uYGnD9cB91SgfV7YRAkVfh8HoOz9pOm8K9Se85HHHXJXdEf2AxnzCDpz?=
 =?iso-8859-1?Q?8goVQ+M3qbcIpxQb6r1ChSl0UvyLLM916a0/Y1+K3JbnaiZSBf4upcQNSW?=
 =?iso-8859-1?Q?oaFbq/2/gpB7DyA045ytvi61xP4l8fhy08DPbck8wyvxXLn6j4rN9HuPWp?=
 =?iso-8859-1?Q?1zsu34uDvTgs4gQCHgrADqBsmpvFVjJZQS7dqxavSywaUoRbT2rhHrHcHL?=
 =?iso-8859-1?Q?RirU14PwQXUXkXsGZk9XPJP66Wh6LnsfRAkBetv4KOk9G49uDI4PkuEBaN?=
 =?iso-8859-1?Q?oYMTT3V03eri9pqmRvUSBjXjIy7IRJsZsNKenDYgWIrUbBOdCaqiuoX610?=
 =?iso-8859-1?Q?pYT3vrafNxTBqVrgeNHxkoLcWBw1fqQbSbhCNXW5aNG4CSKfN+BKJK9mcx?=
 =?iso-8859-1?Q?3CNIo8OfBSrRJ3vuPzq8fgzwbK1I9+ArwMlMz7aulJvNKdvjGEczx3vSsE?=
 =?iso-8859-1?Q?ILmH16UUhUC4sG4392vqGcxGPB97L4i5hFWk5sKxHnyLNn9uoD8ouVaGtL?=
 =?iso-8859-1?Q?MtBOf4Ns0QKXNcY6VZ5ArBRcVZLC9hQ/RAq34Vb3EmU7uPAuTmL2p/5iVh?=
 =?iso-8859-1?Q?4gRQRjMhfg3No80WzTD6+i0o0v9cqsiwYmti3Q8HfFU3eGqa8Zvs++wWGl?=
 =?iso-8859-1?Q?g0QTe8GXNhLbDEAI/BCKllat8Hn1mCQJT9T8AisGVuLc4m3dmZ4qqS45LN?=
 =?iso-8859-1?Q?G8HWUVLFHi/6C0N9FRN/ENEWE9Wya6h+PejfzUZhj23xTM+Ojyoi1tbOqC?=
 =?iso-8859-1?Q?x5lqchm8RFbNqKd2MjqlDZyAqSW24hpA2QbdBpZrCMRVyswJzKiWjGtzRR?=
 =?iso-8859-1?Q?abTezW/hffImGeBS6JE9fnYSpJch+oJJx47WLxaqaYOz+DzAdUKmZntlnN?=
 =?iso-8859-1?Q?vvEm2clIgLISsEebZBVaRBb5HziQ7K+5UWZQP1X0S0i6qMNEsxg7g9f+wG?=
 =?iso-8859-1?Q?pgWVWMxVt8NUALjfqZy8RpM7Uiy01rgTYFpDDo2Z93eKU06m8n4QuRcw?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 398ddde2-835d-4323-bd6a-08dbfce87b85
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2023 21:06:03.7992 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 03Dw8N7H3PEqYoSTZAgCdmNamNNUDMU1XzIaIBdWEFh4Vft9HFeKhFUzpqPCUqMkMfWtOjE+e3lp2Pc6RgtKxDsxSaia8l4c5KCOkbIs10Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8657
X-OriginatorOrg: intel.com
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Das,
 Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

HI Ville,

> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, December 13, 2023 6:03 PM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>; Das, Nirmoy
> <nirmoy.das@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 04/12] drm/i915: Bypass LMEMBAR/GTTMMADR for MTL
> stolen memory access
>=20
> On Wed, Dec 13, 2023 at 08:18:15PM +0000, Sripada, Radhakrishna wrote:
> > Hi Ville,
> >
> > +Nirmoy
> >
> > > -----Original Message-----
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Sent: Wednesday, December 13, 2023 1:30 AM
> > > To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Sripada, Radhakrishna
> > > <radhakrishna.sripada@intel.com>
> > > Subject: Re: [PATCH 04/12] drm/i915: Bypass LMEMBAR/GTTMMADR for MTL
> > > stolen memory access
> > >
> > > On Wed, Dec 13, 2023 at 11:09:38AM +0200, Joonas Lahtinen wrote:
> > > > Quoting Ville Syrjala (2023-12-13 02:42:29)
> > > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > >
> > > > > On MTL accessing stolen memory via the BARs is somehow borked,
> > > > > and it can hang the machine. As a workaround let's bypass the
> > > > > BARs and just go straight to DSMBASE/GSMBASE instead.
> > > > >
> > > > > Note that on every other platform this itself would hang the
> > > > > machine, but on MTL the system firmware is expected to relax
> > > > > the access permission guarding stolen memory to enable this
> > > > > workaround, and thus direct CPU accesses should be fine.
> > > >
> > > > Shouldn't this have a proper workaround number assigned?
> > >
> > > I think there are various numbers, half of which I couldn't even
> > > find in any database, and the other half I couldn't access for
> > > whatever reason. So dunno what situation really is apart from
> > > the firmware clearly implemening its part (since I can poke
> > > DSM/GSM directly without killing the machine).
> > >
> > > RK do you know what we should call this?
> > Nirmoy previously used Wa_22018444074 in [1].
> >
> > There were some associated issues Wa_13010847436 and Wa_14019519902
> > which Nirmoy quoted in [2].
> >
> > Wa_22018529850 is derived from Wa_22018444074, is targeting the latest =
Gop
> > driver change which is installed in bat-mtlp-8 hopefully it should help=
 debug the
> issue further.
> >
> >
> > Regarding the patch itself,
> > Do we need to carve out the range from e820 the area around DSM if we c=
an
> directly access the range from CPU
> > without the bar?
>=20
> IIRC we dropped the early quirks on new platforms under the
> assumption that the BIOS no longer forgets to mark the DSM
> as not-RAM/whatever. I don't think anything should change
> there even when we are allowed direct CPU access.
>=20
> But I don't recall if I double checked the e820 listing on
> the MTL I was using. I was able to direct access to both DSM
> and GSM for sure, and the address the GOP handed over to efifb
> also pointed directly to DSM.

Up until adl-p/rpl, the PCI config space had the mirror registers for the s=
tolen memory
base and size, since the stolen meory is carved out of the available physic=
al ram. Starting MTL
this was removed from pci config space due to the introduction of stolen lm=
em which should not
be cpu addressable aperture.

With the new gop driver allocating the FB memory in dram, should the e820 m=
ark the FB area
as reserved for the system use? Do we still preserve the efifb after doing =
a memtest before loading the driver?

Thanks,
Radhakrishna(RK) Sripada=20
>=20
> >
> >
> > Thanks,
> > Radhakrishna(RK) Sripada
> > 1. https://patchwork.freedesktop.org/series/120683/
> > 2. https://patchwork.freedesktop.org/series/123329/
> >
> > >
> > > >
> > > > Regards, Joonas
> > > >
> > > > >
> > > > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 11 ++++++++++-
> > > > >  drivers/gpu/drm/i915/gt/intel_ggtt.c       | 13 ++++++++++++-
> > > > >  2 files changed, 22 insertions(+), 2 deletions(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> > > b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> > > > > index ee237043c302..252fe5cd6ede 100644
> > > > > --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> > > > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> > > > > @@ -941,7 +941,16 @@ i915_gem_stolen_lmem_setup(struct
> > > drm_i915_private *i915, u16 type,
> > > > >                 dsm_size =3D ALIGN_DOWN(lmem_size - dsm_base, SZ_=
1M);
> > > > >         }
> > > > >
> > > > > -       if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
> > > > > +       if (IS_METEORLAKE(i915)) {
> > > > > +               /*
> > > > > +                * Workaround: access via BAR can hang MTL, go di=
rectly to
> DSM.
> > > > > +                *
> > > > > +                * Normally this would not work but on MTL the sy=
stem
> firmware
> > > > > +                * should have relaxed the access permissions suf=
ficiently.
> > > > > +                */
> > > > > +               io_start =3D intel_uncore_read64(uncore, GEN12_DS=
MBASE) &
> > > GEN12_BDSM_MASK;
> > > > > +               io_size =3D dsm_size;
> > > > > +       } else if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_=
size) {
> > > > >                 io_start =3D 0;
> > > > >                 io_size =3D 0;
> > > > >         } else {
> > > > > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > > > index 21a7e3191c18..ab71d74ec426 100644
> > > > > --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > > > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > > > @@ -24,6 +24,7 @@
> > > > >  #include "intel_ring.h"
> > > > >  #include "i915_drv.h"
> > > > >  #include "i915_pci.h"
> > > > > +#include "i915_reg.h"
> > > > >  #include "i915_request.h"
> > > > >  #include "i915_scatterlist.h"
> > > > >  #include "i915_utils.h"
> > > > > @@ -1152,13 +1153,23 @@ static unsigned int gen6_gttadr_offset(st=
ruct
> > > drm_i915_private *i915)
> > > > >  static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
> > > > >  {
> > > > >         struct drm_i915_private *i915 =3D ggtt->vm.i915;
> > > > > +       struct intel_uncore *uncore =3D ggtt->vm.gt->uncore;
> > > > >         struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
> > > > >         phys_addr_t phys_addr;
> > > > >         u32 pte_flags;
> > > > >         int ret;
> > > > >
> > > > >         GEM_WARN_ON(pci_resource_len(pdev, GEN4_GTTMMADR_BAR) !=
=3D
> > > gen6_gttmmadr_size(i915));
> > > > > -       phys_addr =3D pci_resource_start(pdev, GEN4_GTTMMADR_BAR)=
 +
> > > gen6_gttadr_offset(i915);
> > > > > +       /*
> > > > > +        * Workaround: access via BAR can hang MTL, go directly t=
o GSM.
> > > > > +        *
> > > > > +        * Normally this would not work but on MTL the system fir=
mware
> > > > > +        * should have relaxed the access permissions sufficientl=
y.
> > > > > +        */
> > > > > +       if (IS_METEORLAKE(i915))
> > > > > +               phys_addr =3D intel_uncore_read64(uncore, GEN12_G=
SMBASE) &
> > > GEN12_BDSM_MASK;
> > > > > +       else
> > > > > +               phys_addr =3D pci_resource_start(pdev, GEN4_GTTMM=
ADR_BAR)
> +
> > > gen6_gttadr_offset(i915);
> > > > >
> > > > >         if (needs_wc_ggtt_mapping(i915))
> > > > >                 ggtt->gsm =3D ioremap_wc(phys_addr, size);
> > > > > --
> > > > > 2.41.0
> > > > >
> > >
> > > --
> > > Ville Syrj=E4l=E4
> > > Intel
>=20
> --
> Ville Syrj=E4l=E4
> Intel
