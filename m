Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A474885F1FD
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 08:42:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BA4010E88E;
	Thu, 22 Feb 2024 07:42:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lu3Oyor4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73A7210E87E
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 07:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708587719; x=1740123719;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fmJkLvGBnwRr87xany6vmY/3pnxpHZ7gEN+UA3jAUhA=;
 b=Lu3Oyor4fuec5URJPkWNGbSb3mfAljMtuOTTJ/GGBwAVHGhele6E7g/N
 fdSePO9K34pD1pV3aUCCUN/l9mHhV7VgEHw8+5/hLnQsNmuYZoaUHsUyO
 dpz+7EoqaKNwQ6Z5KQ0Kn1cvCMhOv58/Toc4eFOZqF88oIsnnh1zuFhS6
 xEtxa9T8cdpKFWWMnZ6mcVx/+2dVXv/AhHCNCjzaZsZHHioUSIu81UeFL
 uo59saALY+4JnowdbJt/IChIm4bmqvnZrviAgotHrgH+3Ng98NRDIwjma
 L/ekSS2ApsiLAnNIgvT5O+0xL4rDvON2Edd5icAe6Xqh5gbo7ZdhC/rmz A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="13922954"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; d="scan'208";a="13922954"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 23:41:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="5610735"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Feb 2024 23:41:58 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 21 Feb 2024 23:41:58 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 21 Feb 2024 23:41:57 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 21 Feb 2024 23:41:57 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 21 Feb 2024 23:41:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QtJi3NMUgrTvYInCf6mSbx1aIUF1synru2RvIg89Jg2thWojYDn/zIf/ZP1luV46I8fb8/2mTDXXWZ2lF/zAe1TZ+KUWS2pIhW0XbDyjNvj3Kq/zXDsLz1LpF7uKNLJir6Pr6QukcWp5REMrk5sQpGneXd5B5EH1LMMsW53ggROS5IgRdexbsmBUsA7toxrY1uqqnMeHgB4Js2zDZODSI+qG27WEJJtJdKF6o9HcMEtfN+2cFms7mNoOTLnAnrQufoDRse7ZxGrCjNBRlu+6tbK3EJmxCokYcbDZS9VFyT0GM2QtUzmhpvuHuCZ99X6IKQgz+L27oxSPE6px87Kotw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DQYj18KEy/MCTfRuLW3W8zxCSq+komLL0Ak3te3hCFU=;
 b=euVXzVX9VQOEHpHM/j00FjTaWPbKgKNKFV/Ymf1mBrviSkko3aad8OPDIuKW5r3zXLbIdI2whNinvh2k6QAoSFBQnmJnopeMya4M2SFufSQzHwycxZWd1J0SEgDNCfp9M7bIEN0mqn8MnUtjKniWsr5VkQ55OFtt9KxrT2zzOOl/LMuuLhCs2v/R7QOmOu3UDjyKDQGQfB5MRmS7QEutI4GJv2/+rhsGsq5hexIVr96ajY7x7pWfXxjD8Wc6u0+By4E114met7gnlQ6RpEO1LOcfoBGXsLpnjuGItAvF/C/j/H8WT/EX0AWQrQ2lqXtmNZrK8cGJOhF580RapUbOcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:432::20)
 by CH3PR11MB8414.namprd11.prod.outlook.com (2603:10b6:610:17e::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Thu, 22 Feb
 2024 07:41:51 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::e515:8bfb:5b9d:f2a7]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::e515:8bfb:5b9d:f2a7%5]) with mapi id 15.20.7339.007; Thu, 22 Feb 2024
 07:41:51 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Roper, Matthew D" <matthew.d.roper@intel.com>, "Kim, Dongwon"
 <dongwon.kim@intel.com>
Subject: RE: [RFC v1 0/3] drm/i915: Add support for XRandR Border property
Thread-Topic: [RFC v1 0/3] drm/i915: Add support for XRandR Border property
Thread-Index: AQHaZKbFz0B7tCjiUU+UMCpHcjFVkrEVNyUAgACwGrA=
Date: Thu, 22 Feb 2024 07:41:50 +0000
Message-ID: <IA0PR11MB7185A8D0BF0D249C0C061BA4F8562@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20240221085246.808287-1-vivek.kasireddy@intel.com>
 <ZdZVtCZb1cJ33tQT@intel.com>
In-Reply-To: <ZdZVtCZb1cJ33tQT@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|CH3PR11MB8414:EE_
x-ms-office365-filtering-correlation-id: bef57c5d-3376-4b22-09fa-08dc3379bb87
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SHZMEQPifPcKV+rfZPQyhxxopK+lI1pf5HYTH+w6vDGrwY5RszMNbiEZkG7hMENNwyOT5nJg2KIH8aw0RfqyAmLnHe5S7Ocsd+2b1STvx5Cu1B7oeRVOoNCuEGsm9E6yeRqjj2Vdsp12QD33G/vQ4gjCf3f8sn56EIkh9loDB+dxc0v1W0zeaGuBEUO5Tz24CniLy5eWiZqmludsgiDZ36U9wRi4wf1xckw2nzYLUGHxNejjeagk30LWkFOKx1BE2rXgAR0dmz8QOY05rXEZl6vBy16CeF6bxjbKeyP1en1I5lD70llWaFivOaP1b2f/n42U/bSEcEekyZrNa543FLAFAqdbY/H7rNK/PJ6VFt1sRNgFh3IFjntroYZXX4/rb0g+N/pOOru2VdxBPmYMC421m8Gof4mlzKOIQ2ImjwRRfSg9HBjXdoo8gD6vVL7UQqNplxlwoBQSs1mzWkIXE23CIsyC7iF+3gdJenKTKo7p2RyE1FYuzOnRPD7BlYw98CnEVPjeTDK+xBTyKs7EkNzrlG7p0YEqwrTBZoNtV4Bu16uH0bRIIKfzBEglTge/AwqAZZyXnys62B+kaMpwggwOGFzpa6X9ih7AhXf5i/8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?6JStOvskAH5jdBcVrTABT+EbfRHQRGkJuaYn6N6TYzP/q1wJQN5KxGmU83?=
 =?iso-8859-1?Q?Q6IwTesUZqc+SVOjAcAAc0dDdfGF/Odo5JMjW6aJT7fnsNpg1KdI3PourV?=
 =?iso-8859-1?Q?9eg8YCavtLMy5CYHZKRLdgUEXZOIX0qrngYKA/PvNnkb+HqH2CUAKvvvle?=
 =?iso-8859-1?Q?S/VNjhta1JI4a3W9lZlqUHDFBAUc2+evarZ3LnZW3PhAbX4+1sCVaXr8Vd?=
 =?iso-8859-1?Q?6MncntQ2ACWSbovR4jQP8n9pA/UPQ3Va/yyFK8QMM8X+gRp4HDAS2NaK6n?=
 =?iso-8859-1?Q?9G6EOKxd7DMbBFLKI91h+hPyrOdkN+Zl27mHN2dgmEtcKC0ZN/PYC1pE8L?=
 =?iso-8859-1?Q?RXVA5WNaVY4GBoViSvjw8qP+CqLGxG3bxL/LOwlkenz4/bspW5pp9Qc8UZ?=
 =?iso-8859-1?Q?/oP/MxlCdJq7cko2PSFGQmxlztEwEUWMBG73aJjzuMQ4e/PYF0xnZibybJ?=
 =?iso-8859-1?Q?KA1D1QSGiTtp4UdD2pC3Obq8X5phlsZMQ9RKoo2NZksLMSBoytaRUsAzJN?=
 =?iso-8859-1?Q?yxHR5uwHbnAoWzXhjOoVgAGkcFC0kPbf/dK3+u7/SWnq8wVeRJe/Ppj03F?=
 =?iso-8859-1?Q?Sqz6xeSn0Q3p1qaEe5Kmv+nOy9ldJFBIpKGALp+qdlnOi6BpKteEQs8gmG?=
 =?iso-8859-1?Q?15CT70ZuYmvmC6ww5+ys8M/BaKGBILJoycQJudFfKOX9M2PcgmdH8Inse4?=
 =?iso-8859-1?Q?+rBUp/BAkvXSBrkpZqDA34NBIAx8AZ+OKOufB1ED29A7eCeHNbmnaYKrd9?=
 =?iso-8859-1?Q?phNQ07BSQZPZBAeBU2OP1XVG/XVvrfk0amr65qUpiXXQzJOEc/iX8j4SeD?=
 =?iso-8859-1?Q?DN/0RSWvh569I/Dqz6xM5e0EvxWZnM09S7rdgOwu4RJjsQfNEE7oR03Lba?=
 =?iso-8859-1?Q?ukyGN0Hx97oPP2dJAE/xfCYpX/SHlqz0O8kYgM2PyBlhUb1Ymq3QuOD8ke?=
 =?iso-8859-1?Q?3FJL2kJbZ1iPaf1Z5Nlbxpz5+Vp0A6szaJCyKxQfnqWbNLYgpsiL7aJX9Y?=
 =?iso-8859-1?Q?e4NVOqPpqqsFjoeLJJODRqcNg0KYJUEPzjhOrGe1Nb8D/6C/OEgO/UKbBZ?=
 =?iso-8859-1?Q?AkC0hZVrHVQcTRMPgfMtkpV5kDdAww/U0P9U8sTEpXbJ4EZuAZCU352UEx?=
 =?iso-8859-1?Q?JYUD+m+k1LE8tCtzUJQeS3TmqQ5aXtej3Wapt6DDIN0Q+KNyVaIVgOjfaO?=
 =?iso-8859-1?Q?xNn/mdKtBWTBSxGu/6kKywFUHl2DSC6Ycx77db30f3eeXtdoc0qnWt+1yc?=
 =?iso-8859-1?Q?xYuGcY8mwhEcSwgmiOVr2hMKLqQRO197aD8bQjVfOJJOY5SOQyZxe2AKxg?=
 =?iso-8859-1?Q?F0wROw6agCKttsK26BJjbXphmwYE4NN+70mesfcIfUfTv3hyzSHmzyAUqM?=
 =?iso-8859-1?Q?q9ycLiEj1AUesO7qbFeU7U60S2FveNWaW3ncexknbqSD3fnKIojBT/7osb?=
 =?iso-8859-1?Q?xhRotrUfI2NjQ4W7IhUbXlYAyofMwm6y66wC2dgKOCPnoIk8J/coZ5coW3?=
 =?iso-8859-1?Q?jfPwZmfgmIqBX7q4qL5qxB3pQesdf+zSTpAqw2QaQSgXlcRDn/R+K1nIgO?=
 =?iso-8859-1?Q?J6aQ5I7WWFxI9Iai6lSIssyTYcfG4+TcEIaghtf5vbNG4fIJ0rY93KsMY8?=
 =?iso-8859-1?Q?mGkXCbHAUzGVjsYFC4ZVLSLihkiOoNACRp?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bef57c5d-3376-4b22-09fa-08dc3379bb87
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2024 07:41:50.9627 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GzzHRQ33A79Q/RrL9AN0cbDIbriFXLEoP8SUfxnVYH+H/TZ78rs6OxzA87t+cE70WxmxuwtLGCfdJLf5+yydxHrfoEg5iOTGnes3qEX53Z4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8414
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ville,

> > Some customers and users have expressed interest in adding borders
> > (or margins) to certain displays in their multi-display configurations.
> > To address this need, this patchset implements the XRandR Border
> > property as defined here:
> >
> https://cgit.freedesktop.org/xorg/proto/randrproto/tree/randrproto.txt#n2
> 032
> >
> > ---
> >
> > Patchset overview:
> >
> > Patch 1: Create skl_program_crtc_scaler() to program scaler for crtc
> > Patch 2: Create and attach the Border property to DP and HDMI
> > Patch 3: Implement Border property by enabling crtc scalar
> >
> > This series is tested using following method:
> > - Run the following xrandr command with different parameters:
> > xrandr --output HDMI-3 --pos 1920x0 --mode 1280x1024 --fb 3840x2160 --
> scale 2.11x2.11 --set "Border" 150,0,150,0
> >
> > The following patch was also added to the modesetting driver to
> > implement the Border property:
> > https://gitlab.freedesktop.org/Vivek/xserver/-
> /commit/62abfc438f0d17fe7f88bf2826c9784c2b36443b
>=20
> I have an old branch implementing the margin properties:
> https://github.com/vsyrjala/linux.git hdmi_margins_3
>=20
> but it got stalled due to the scaler code being in a very poor state.
> I started sketching some reworks there, but that got put on the
> backburner due to other stuff:
> https://github.com/vsyrjala/linux.git scaler_rework_2
>=20
> I might have somehting more recent than that locally, but I'd have
> to trawl through my branches to check what's the latest state.
There is a lot to unpack in these two branches than what I had anticipated.
However, it looks like some of the patches are already merged. Do
you have any plan to revive this work anytime soon?

And, besides the remaining unmerged patches in the above two branches,
are there still any other missing pieces preventing this feature from
getting merged?

Thanks,
Vivek

>=20
> >
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Cc: Dongwon Kim <dongwon.kim@intel.com>
> >
> > Vivek Kasireddy (3):
> >   drm/i915: Rename skl_pfit_enable() to skl_program_crtc_scaler()
> >   drm/i915: Attach the Border property to DP and HDMI connectors
> >   drm/i915: Apply border adjustments and enable scaler on the crtc
> >
> >  drivers/gpu/drm/i915/display/intel_atomic.c   | 29 ++++++++++-
> >  .../gpu/drm/i915/display/intel_connector.c    | 49 +++++++++++++++++++
> >  .../gpu/drm/i915/display/intel_connector.h    |  3 ++
> >  drivers/gpu/drm/i915/display/intel_display.c  | 25 ++++++++--
> >  .../gpu/drm/i915/display/intel_display_core.h |  1 +
> >  .../drm/i915/display/intel_display_types.h    |  6 +++
> >  drivers/gpu/drm/i915/display/intel_dp.c       | 11 +++++
> >  drivers/gpu/drm/i915/display/intel_hdmi.c     | 11 +++++
> >  drivers/gpu/drm/i915/display/skl_scaler.c     | 27 ++++++----
> >  drivers/gpu/drm/i915/display/skl_scaler.h     |  3 +-
> >  10 files changed, 149 insertions(+), 16 deletions(-)
> >
> > --
> > 2.43.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel
