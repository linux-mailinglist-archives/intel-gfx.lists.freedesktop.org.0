Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A164E78D39A
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 09:32:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DB1010E4B7;
	Wed, 30 Aug 2023 07:32:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB77E10E4BE
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 07:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693380739; x=1724916739;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nAKwqh4vPVSETOP7XU2K/j4v5neH7oZs6Vu9flzHCtQ=;
 b=CO9vUiJg1WloZCVQxpRiO19YTSF5Dcrl3exO0Yr7/416T2FSWDkIzAzq
 kvUFEJ3SSSopDOzYgWM42S4TGN0lGh/6hHS3Lg932MrdaI4YTFaXifmcH
 d2Edxni4wqlDDkBFsQyhUm1k2kjPhcYYp1fCleXI4GZdbBw0//jbpZzzh
 Z/4rata/XkeAaUKcNSPuuCFqbcnkr6G2I+oNRYEaICPQqaIECyGubDxpR
 BGRyZQij9YioLYyNxDuhXdPmiojX4uBj9RZC87y4LqQ2a3JEBhOIb8Aos
 9yxgyiQslNsCfrMQJRRtDoPZqacrj+fi3SkRmR9qKrEsm/sdRPdztbV5u g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="406570070"
X-IronPort-AV: E=Sophos;i="6.02,212,1688454000"; d="scan'208";a="406570070"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 00:32:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="715800313"
X-IronPort-AV: E=Sophos;i="6.02,212,1688454000"; d="scan'208";a="715800313"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 30 Aug 2023 00:32:13 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 30 Aug 2023 00:32:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 30 Aug 2023 00:32:11 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 30 Aug 2023 00:32:11 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 30 Aug 2023 00:32:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UfRIpB9BVqlr/o2UffG2Ob4dSoyGiD9ElmgOMnXEApYWGBY8AqLXaKbanVMLbvZVjf2pmmrbMcEeSk8NwmnoijPClrCtQh8+gOF5LZRt0AsdM6IA5bYKQ2CAVSv5pNTiW3BNPI7ZC2Sf999TEsnv/5macBt1/pLyvqr2X7y0kXRORZhfkZd3G/aC9L3f6d5nMaxzxzGMuvfYu4O1xRln7dKXxRTCW8PrJA3asoh9Yh3NvpCYjaZx2FkRHbgKQHqeJO248ilg1iwdwQQn1oMZ5x0OMGQZP+utZPOTSEMrJLODMVE50FCqZD3MfND6ZtjqfGYsk5ZbrRkN3yizOKvTQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BrhbPSIc0To7TeBnueXTu6k/qvzoOnwApfSWTd5FhOY=;
 b=hvUaBGCL4GZXsBoZgLHkKWAOvmiwDegFGZtXNZZcjma9nIuSFTQUY8iV+DkoPpB9oE+A2zoz7uang8lnffGSYjJ9nBYMw5YpeH/JkT+XhKYSFhvCDvYDEdEOxYvySijgsGWZaTrFEgtfG6G8b8OmukIsHX+uky5rzftPjxGUBIrhLKsXJ83o0hHsk8ZG5/S/RwXxAPcEEbTMSSvK1tkyFGBPywGbmu8UkkTlxN3M0v1XSrjk+xoVfz4jnzJwKNeScfqDwcsXuf+7gb0oOYEy657s9VMtCMqeTpqLOruwUpUQWsTShEI+cVg/fu4hmsHYHb6aIiidP3rwi7Figf8U0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by PH7PR11MB7145.namprd11.prod.outlook.com (2603:10b6:510:1ec::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.20; Wed, 30 Aug
 2023 07:32:03 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::6462:b253:fa3c:2cee]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::6462:b253:fa3c:2cee%6]) with mapi id 15.20.6699.034; Wed, 30 Aug 2023
 07:32:03 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 5/6] drm/i915: Adjust seamless_m_n flag
 behaviour
Thread-Index: AQHZ2XJvB5Ost8epkEOiMtrQP47o7a//7aGwgAEC5ICAAFo8IIABBK6AgAAUAWCAAAiIgIAACJHw
Date: Wed, 30 Aug 2023 07:32:02 +0000
Message-ID: <IA1PR11MB634843D3FDB5BD0957DC6D3DB2E6A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20230828054140.28054-1-ville.syrjala@linux.intel.com>
 <20230828054140.28054-6-ville.syrjala@linux.intel.com>
 <IA1PR11MB6348E2A5D779E5D43EB3360CB2E0A@IA1PR11MB6348.namprd11.prod.outlook.com>
 <ZO2qXZ4MzHOzsVsr@intel.com>
 <IA1PR11MB6348EDA889B7CE26F4FBD298B2E7A@IA1PR11MB6348.namprd11.prod.outlook.com>
 <ZO7Qu8Q1VjiAL70w@intel.com>
 <IA1PR11MB6348B01A4136BA3553A7407FB2E6A@IA1PR11MB6348.namprd11.prod.outlook.com>
 <ZO7oq1gAFGJ5eW2M@intel.com>
In-Reply-To: <ZO7oq1gAFGJ5eW2M@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|PH7PR11MB7145:EE_
x-ms-office365-filtering-correlation-id: fe8bada2-fea4-40a2-6b04-08dba92b3455
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RanRfB4h1j7VwqWmZsf0s+s8UAxSjxgFHa1IHMZvSZXqloDscUbWGBjvGA3LYiuydsXzCi+Yi7fd8Z0ABPg7xeiMqitcw91LcLxjewrLINsI5fXo+L6+YV32aIuxAiFjH1/Kirdnh3lJ82kstoaaiuJG0YH5XlSt7Jq5mn3hDL8oQX5o0pgL8lyp6m3mkoiwRGc/zxb8JyYGA5rG471X1GWjnU77wD9qacKvLwIYoT66ak4DeLb86S/LkDWyvkfPl4x06LW7fvonZ9wnV6Qg/HmPXGXSqrWMcV9vrGG4K/S2G0ZoPkmuNHKw2ZDYys/rFIpw3BIdCAuUYp31EnkUmH5W1bYxZzBo/v0A8FpbxhEAswcxxbV91sL3yNOw4Fd2JgBN1z1dyU/MHtPt6ou0f32fkv+OSYa//sv0/VIPalnv3O9uL+NTD/2b90vlNGCjg9F4eRk+v2cN/B6vmV60nRsc+l82U3kmp16FO3cEykX1hx0egmfbsgij9dOvvswRkqZmyqS9Q5NwrOrDCA/eQkBE77WVqFKNcH/jFQJWSSh6zhMnmUANC0y3aDXHiRedu6v5tUjI1OYexBXUyyJaTLwtddOV4uc8vCkpz55586QTsLPeFAaeYj6S1KOq71N4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(39860400002)(376002)(346002)(396003)(186009)(451199024)(1800799009)(55016003)(82960400001)(66946007)(64756008)(66556008)(66446008)(66476007)(316002)(6916009)(76116006)(478600001)(38100700002)(38070700005)(122000001)(30864003)(2906002)(86362001)(5660300002)(8936002)(55236004)(41300700001)(4326008)(52536014)(83380400001)(8676002)(66574015)(9686003)(71200400001)(6506007)(7696005)(53546011)(26005)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?/zj4wNRejxSp/9bDzdTrNsG8ErK07AIIvm3lapX921VGkTD1eaoyMmUk3J?=
 =?iso-8859-1?Q?LVl+hSu40Cm1kfLFxo4KfKby1Ozo5qOuk+3dSd7wmVhAJEhpoTmCi2Hyjm?=
 =?iso-8859-1?Q?srydmPTpc4Z862J7Jibcox6Oy58SpagSOilyjdQlj1pXQ4bwLjU3+MXmeu?=
 =?iso-8859-1?Q?S83XfRtJNtgswPXUcojVJhCRc0ld9bH5IQ9QVPjnbjx3LvIYg9u6RlVpeL?=
 =?iso-8859-1?Q?CSYwN3AUt74edtWCfS8exELtwewS5sFYOYXb3v0f/QzelbxXCvP+c8zrRc?=
 =?iso-8859-1?Q?KMjHxKVyBt18dSPTqiRh7bwGpyIMRSzZ9W0T8f7L0xA6as/e1plKBj/204?=
 =?iso-8859-1?Q?wIvdOdwBmKTe9PAszTDtBMaipM3ZTBLgf0+t68Ta3pMlu/NH6I63neiOSt?=
 =?iso-8859-1?Q?KVCAfbsRPzyBn29HdVa0nrdZbqjM3g+MgU+d0BURew5Pjf8YbTxmpwNnc9?=
 =?iso-8859-1?Q?ckGB78JQymC1sA2trxGlth7trXt6O/PB/QaMFQlSliHlMZEnUlrCT1izCn?=
 =?iso-8859-1?Q?JFnKeSqcw7zCsoMR7RmYgZ1728LS8r4euEFs7mzrFETWLhVzhSnYhh9Ww1?=
 =?iso-8859-1?Q?tT88woC3uvqSAVP8c8ZH9dPABs7Osz/jaKwQwrHJXn8+7XhhQEorO9kbrA?=
 =?iso-8859-1?Q?/QZkLemSMKOGt4i+Dn16pMguNbHoiypAxmJ/L/TjQMzBj02e85ZrlJkE3L?=
 =?iso-8859-1?Q?780PBSqql+j3aZFZeUEThbcyao5on8c5SDlC2NqhCpwH8QWZb3hrS6gi4b?=
 =?iso-8859-1?Q?iyeTXnfYYjhIwjA1K3NLpS3U69f3CUtkDXEbKYlGsiHOtvBeNIc+BXvelp?=
 =?iso-8859-1?Q?/QYbbcvYN6MvByz+wtqRoeRbaGY67WiqfWmZzrqu8UP4mBGT7JvgWAQdFr?=
 =?iso-8859-1?Q?f8rFXTlNFCUG/+QDUbvW0Eu11SPRwtzTpcQeQXk6tSMwBl+w2yCJh087t6?=
 =?iso-8859-1?Q?1w6vE62H+bRnWySi31PKgAubxRJ2HmsaI+NgI/AIJ7UWI3rTB/dVFeJ5vC?=
 =?iso-8859-1?Q?FJnr3+z9MtiRZ9SPSvMRbX+rkcQvm++m70jMi1RDlf3sRe3KeEC7XDTpsx?=
 =?iso-8859-1?Q?J5QC/i24olaf8rj5x4gA2r2KSRorR4xfrwl1sRwpMP5MZwN9aiUtgGVrbF?=
 =?iso-8859-1?Q?UF46rX4mvovtx3LZMKAGCYMUbPZCMPcnbufJHZPgZDqG0edWV0U/HISBsE?=
 =?iso-8859-1?Q?T+WtcJ/MU7uwQtfe8aVLCNCfQaHZIrmJrTylINj+hyBlO4Yg//obR1O5ZD?=
 =?iso-8859-1?Q?oySyj2bpOs5wSBZP8ZhrvrSZ2EF0A3n2w0PgZRbieLHnr3IcX0gsV1N6a4?=
 =?iso-8859-1?Q?ai0Tk282FEFK/cxJkxaFgQn+H4YC9UuRTsMKCoiRmHpq26sp/N48YLhm7c?=
 =?iso-8859-1?Q?Q4B4fNYB4UAAN/4vMT6CE8WaZmmLx3l47SuszL18mNRHnAFJoE1OTyDVcl?=
 =?iso-8859-1?Q?Z2QmU6DIn4+ZgML4rJa8MoVVyVzBNfN9P4k+gQHc7yHJFyzmpnbvVoHC8y?=
 =?iso-8859-1?Q?c8IULbChbT8XdBFqmpS0PmmvXHcybqTO99RGfeu/AeYNQAmPVY16K7YieR?=
 =?iso-8859-1?Q?+p+zYb5MpZ/zRDHNwnEwWeAowqhe1L/mTnC4fTWDZ92aEKg9e/J/EeeoLz?=
 =?iso-8859-1?Q?unTj+3BoSg012K517eEzowptZAj6JymUWIBcNVnTxsIIMbYbFdhPoDaSSd?=
 =?iso-8859-1?Q?Ywep31jMG7z0ZIkXFDM=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe8bada2-fea4-40a2-6b04-08dba92b3455
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2023 07:32:02.9144 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zkq3igpr64rEo1SZ9Jz9HodMfDrl0AAbNd9MiZXzSBLH+2NHx7GKD93gx2tWNY4VnajcRManG047PujQ042FQEAsrpbvp7f7QBz5mSlZ/qJwo5TS2JOJEWnHvnJ+DDlB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7145
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
> Sent: 30 August 2023 12:29
> To: Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Adjust seamless_m_n flag
> behaviour
>=20
> On Wed, Aug 30, 2023 at 06:51:25AM +0000, Golani, Mitulkumar Ajitkumar
> wrote:
> > Hi Ville,
> >
> > > -----Original Message-----
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Sent: 30 August 2023 10:47
> > > To: Golani, Mitulkumar Ajitkumar
> > > <mitulkumar.ajitkumar.golani@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org
> > > Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Adjust seamless_m_n
> > > flag behaviour
> > >
> > > On Tue, Aug 29, 2023 at 01:48:18PM +0000, Golani, Mitulkumar
> > > Ajitkumar
> > > wrote:
> > > > Hi Ville,
> > > >
> > > > Thanks for the inputs.
> > > >
> > > > I encountered an interesting observation while validating the chang=
es.
> > > > In scenarios where VRR is by default ON from the panel, I noticed
> > > > that
> > > during the first-time enabling of VRR, a full modeset is required
> > > due to a fastset requirement mismatch, as indicated in the logs.
> > >
> > > Which logs?
> > >
> > > > However, I also observed that after this, the function
> > > intel_crtc_needs_modeset returns 0, which typically implies a
> > > fastset operation.
> > >
> > > Any fastset always starts out as a full modeset, it will then be
> > > promoted (or
> > > demoted?) to a fastset by intel_crtc_check_fastset() if possible.
> > >
> >
> > Thank you for your explanation. Considering the underrun issues
> > observed during validation, it seems plausible that for the initial
> > computation of VRR parameters, a full modeset might be required to
> ensure the accurate establishment of the baseline configuration. I
> appreciate your insight on this matter.
>=20
> Are you saying that these patches alone are causing underruns when
> enabling VRR?

Currently we are getting underruns with this patch series. However this may=
 be
exposing some other underlying problem in the driver. Which requires furthe=
r investigation.

Regards,
Mitul

>=20
> >
> > Regards,
> > Mitul
> >
> > > >
> > > > Considering that both conditions can't hold simultaneously, there
> > > > seems
> > > to be an inconsistency with underrun errors.
> > > > Could you kindly shed some light on this situation? I'm trying to
> > > > align the
> > > log messages with the observed behavior and the function's return
> value.
> > > >
> > > > Your insights would be greatly appreciated.
> > > >
> > > > Regards,
> > > > Mitul
> > > >
> > > > > -----Original Message-----
> > > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > Sent: 29 August 2023 13:51
> > > > > To: Golani, Mitulkumar Ajitkumar
> > > > > <mitulkumar.ajitkumar.golani@intel.com>
> > > > > Cc: intel-gfx@lists.freedesktop.org
> > > > > Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Adjust
> > > > > seamless_m_n flag behaviour
> > > > >
> > > > > On Mon, Aug 28, 2023 at 04:58:49PM +0000, Golani, Mitulkumar
> > > > > Ajitkumar
> > > > > wrote:
> > > > > > Hi Ville,
> > > > > >
> > > > > > > -----Original Message-----
> > > > > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> > > > > > > Behalf Of Ville Syrjala
> > > > > > > Sent: 28 August 2023 11:12
> > > > > > > To: intel-gfx@lists.freedesktop.org
> > > > > > > Subject: [Intel-gfx] [PATCH 5/6] drm/i915: Adjust
> > > > > > > seamless_m_n flag behaviour
> > > > > > >
> > > > > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > > >
> > > > > > > Make the seamless_m_n flag more like the update_pipe fastset
> > > > > > > flag, ie. the flag will only be set if we need to do the
> > > > > > > seamless M/N update, and in all other cases the flag is clear=
ed.
> > > > > > > Also rename the flag to update_m_n to make it more clear
> > > > > > > it's
> > > similar to update_pipe.
> > > > > > >
> > > > > > > I believe special casing seamless_m_n like this makes sense
> > > > > > > as it also affects eg. vblank evasion. We can potentially
> > > > > > > avoid some vblank evasion tricks, simplify some checks, and
> > > > > > > hopefully will help with
> > > > > the VRR vs. M/N mess.
> > > > > > >
> > > > > > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.c=
om>
> > > > > > > ---
> > > > > > >  drivers/gpu/drm/i915/display/intel_atomic.c   |  1 +
> > > > > > >  drivers/gpu/drm/i915/display/intel_crtc.c     |  2 +-
> > > > > > >  drivers/gpu/drm/i915/display/intel_display.c  | 22
> > > > > > > +++++++++++------
> > > --
> > > > > > >  .../drm/i915/display/intel_display_types.h    |  2 +-
> > > > > > >  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
> > > > > > >  5 files changed, 17 insertions(+), 12 deletions(-)
> > > > > > >
> > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c
> > > > > > > b/drivers/gpu/drm/i915/display/intel_atomic.c
> > > > > > > index 7cf51dd8c056..aaddd8c0cfa0 100644
> > > > > > > --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> > > > > > > @@ -259,6 +259,7 @@ intel_crtc_duplicate_state(struct
> > > > > > > drm_crtc
> > > *crtc)
> > > > > > >  		drm_property_blob_get(crtc_state->post_csc_lut);
> > > > > > >
> > > > > > >  	crtc_state->update_pipe =3D false;
> > > > > > > +	crtc_state->update_m_n =3D false;
> > > > > > >  	crtc_state->disable_lp_wm =3D false;
> > > > > > >  	crtc_state->disable_cxsr =3D false;
> > > > > > >  	crtc_state->update_wm_pre =3D false; diff --git
> > > > > > > a/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > > > > b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > > > > index 1992e7060263..a04076064f02 100644
> > > > > > > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > > > > @@ -510,7 +510,7 @@ static void
> > > > > > > intel_crtc_vblank_evade_scanlines(struct
> > > > > > > intel_atomic_state *state,
> > > > > > >  	 * M/N is double buffered on the transcoder's undelayed
> > > vblank,
> > > > > > >  	 * so with seamless M/N we must evade both vblanks.
> > > > > > >  	 */
> > > > > > > -	if (new_crtc_state->seamless_m_n &&
> > > > > > > intel_crtc_needs_fastset(new_crtc_state))
> > > > > > > +	if (new_crtc_state->update_m_n)
> > > > > > >  		*min -=3D adjusted_mode->crtc_vblank_start -
> > > > > > > adjusted_mode->crtc_vdisplay;  }
> > > > > > >
> > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > index 632f1f58df9e..6196ef76390b 100644
> > > > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > @@ -5170,7 +5170,7 @@ intel_pipe_config_compare(const
> struct
> > > > > > > intel_crtc_state *current_config,
> > > > > > >  	PIPE_CONF_CHECK_X(lane_lat_optim_mask);
> > > > > > >
> > > > > > >  	if (HAS_DOUBLE_BUFFERED_M_N(dev_priv)) {
> > > > > > > -		if (!fastset || !pipe_config->seamless_m_n)
> > > > > > > +		if (!fastset || !pipe_config->update_m_n)
> > > > > > >  			PIPE_CONF_CHECK_M_N(dp_m_n);
> > > > > > >  	} else {
> > > > > > >  		PIPE_CONF_CHECK_M_N(dp_m_n); @@ -5307,7
> +5307,7 @@
> > > > > > > intel_pipe_config_compare(const struct intel_crtc_state
> > > > > > > *current_config,
> > > > > > >  	if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >=3D 5)
> > > > > > >  		PIPE_CONF_CHECK_I(pipe_bpp);
> > > > > > >
> > > > > > > -	if (!fastset || !pipe_config->seamless_m_n) {
> > > > > > > +	if (!fastset || !pipe_config->update_m_n) {
> > > > > > >  		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_clock);
> > > > > > >  		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_clock);
> > > > > > >  	}
> > > > > > > @@ -5402,6 +5402,7 @@ int intel_modeset_all_pipes(struct
> > > > > > > intel_atomic_state *state,
> > > > > > >
> > > > > > >  		crtc_state->uapi.mode_changed =3D true;
> > > > > > >  		crtc_state->update_pipe =3D false;
> > > > > > > +		crtc_state->update_m_n =3D false;
> > > > > > >
> > > > > > >  		ret =3D drm_atomic_add_affected_connectors(&state-
> > > >base,
> > > > > > >  							 &crtc->base);
> > > > > > > @@ -5519,13 +5520,14 @@ static void
> > > > > > > intel_crtc_check_fastset(const struct intel_crtc_state
> *old_crtc_sta  {
> > > > > > >  	struct drm_i915_private *i915 =3D
> > > > > > > to_i915(old_crtc_state->uapi.crtc-
> > > > > > > >dev);
> > > > > > >
> > > > > > > -	if (!intel_pipe_config_compare(old_crtc_state,
> > > new_crtc_state,
> > > > > > > true)) {
> > > > > > > +	if (!intel_pipe_config_compare(old_crtc_state,
> > > new_crtc_state,
> > > > > > > true))
> > > > > > >  		drm_dbg_kms(&i915->drm, "fastset requirement not
> > > met,
> > > > > forcing
> > > > > > > full modeset\n");
> > > > > > > +	else
> > > > > > > +		new_crtc_state->uapi.mode_changed =3D false;
> > > > > > >
> > > > > > > -		return;
> > > > > > > -	}
> > > > > > > +	if (intel_crtc_needs_modeset(new_crtc_state))
> > > > > > > +		new_crtc_state->update_m_n =3D false;
> > > > > > >
> > > > > > > -	new_crtc_state->uapi.mode_changed =3D false;
> > > > > > >  	if (!intel_crtc_needs_modeset(new_crtc_state))
> > > > > > >  		new_crtc_state->update_pipe =3D true;  } @@ -6240,6
> > > +6242,7
> > > > > @@ int
> > > > > > > intel_atomic_check(struct drm_device *dev,
> > > > > > >  			if
> > > (intel_cpu_transcoders_need_modeset(state,
> > > > > > > BIT(master))) {
> > > > > > >  				new_crtc_state-
> > > >uapi.mode_changed =3D true;
> > > > > > >  				new_crtc_state->update_pipe =3D
> > > false;
> > > > > > > +				new_crtc_state->update_m_n =3D
> > > false;
> > > > > > >  			}
> > > > > > >  		}
> > > > > > >
> > > > > > > @@ -6252,6 +6255,7 @@ int intel_atomic_check(struct
> > > > > > > drm_device
> > > > > *dev,
> > > > > > >  			if
> > > (intel_cpu_transcoders_need_modeset(state,
> > > > > > > trans)) {
> > > > > > >  				new_crtc_state-
> > > >uapi.mode_changed =3D true;
> > > > > > >  				new_crtc_state->update_pipe =3D
> > > false;
> > > > > > > +				new_crtc_state->update_m_n =3D
> > > false;
> > > > > > >  			}
> > > > > > >  		}
> > > > > > >
> > > > > > > @@ -6259,6 +6263,7 @@ int intel_atomic_check(struct
> > > > > > > drm_device
> > > > > *dev,
> > > > > > >  			if (intel_pipes_need_modeset(state,
> > > new_crtc_state-
> > > > > > > >bigjoiner_pipes)) {
> > > > > > >  				new_crtc_state-
> > > >uapi.mode_changed =3D true;
> > > > > > >  				new_crtc_state->update_pipe =3D
> > > false;
> > > > > > > +				new_crtc_state->update_m_n =3D
> > > false;
> > > > > > >  			}
> > > > > > >  		}
> > > > > > >  	}
> > > > > > > @@ -6437,7 +6442,7 @@ static void intel_pipe_fastset(const
> > > > > > > struct intel_crtc_state *old_crtc_state,
> > > > > > >  	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> > > > > > >  		hsw_set_linetime_wm(new_crtc_state);
> > > > > > >
> > > > > > > -	if (new_crtc_state->seamless_m_n)
> > > > > > > +	if (new_crtc_state->update_m_n)
> > > > > > >  		intel_cpu_transcoder_set_m1_n1(crtc,
> > > new_crtc_state-
> > > > > > > >cpu_transcoder,
> > > > > > >  					       &new_crtc_state-
> > > >dp_m_n);  }
> > > > > @@ -6573,8 +6578,7 @@
> > > > > > > static void intel_update_crtc(struct intel_atomic_state *stat=
e,
> > > > > > >  	 *
> > > > > > >  	 * FIXME Should be synchronized with the start of vblank
> > > > > > > somehow...
> > > > > > >  	 */
> > > > > > > -	if (vrr_enabling(old_crtc_state, new_crtc_state) ||
> > > > > > > -	    (new_crtc_state->seamless_m_n &&
> > > > > > > intel_crtc_needs_fastset(new_crtc_state)))
> > > > > > > +	if (vrr_enabling(old_crtc_state, new_crtc_state) ||
> > > > > > > +new_crtc_state->update_m_n)
> > > > > > >  		intel_crtc_update_active_timings(new_crtc_state,
> > > > > > >  						 new_crtc_state-
> > > >vrr.enable);
> > > > > >
> > > > > > In the context where a Push has already been sent, should the
> > > > > > update
> > > > > occur when we enable VRR itself? I'm curious about the rationale
> > > > > for not updating it immediately upon enabling VRR.
> > > > >
> > > > > The active timings should really be updated synchronously with
> > > > > the hardware latching the new values. But that is actually
> > > > > impossible so some race conditions will always remain.
> > > > >
> > > > > I haven't actually verified how the hardware behaves when we
> > > > > enable
> > > VRR.
> > > > > I assume the VRR_CTL will get latched at the next start of vblank=
 as
> well.
> > > > > But we should really try to confirm that on actual hardware.
> > > > >
> > > > > The case where we have VRR already enabled while updating M/N
> > > > > might go badly with the current order of doing things as the
> > > > > vblank irq may trigger immediately upon push. So for that case
> > > > > it would be better to update the active timings before the push.
> > > > > Or perhaps we should just make sure VRR is always disabled around
> M/N updates...
> > > > >
> > > > > >
> > > > > > Regards,
> > > > > > Mitul
> > > > > > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > > > index 731f2ec04d5c..2367b030b469 100644
> > > > > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > > > @@ -1083,6 +1083,7 @@ struct intel_crtc_state {
> > > > > > >
> > > > > > >  	unsigned fb_bits; /* framebuffers to flip */
> > > > > > >  	bool update_pipe; /* can a fast modeset be performed? */
> > > > > > > +	bool update_m_n; /* update M/N seamlessly during
> > > fastset? */
> > > > > > >  	bool disable_cxsr;
> > > > > > >  	bool update_wm_pre, update_wm_post; /* watermarks are
> > > > > updated */
> > > > > > >  	bool fifo_changed; /* FIFO split is changed */ @@ -1195,7
> > > > > > > +1196,6 @@ struct intel_crtc_state {
> > > > > > >  	/* m2_n2 for eDP downclock */
> > > > > > >  	struct intel_link_m_n dp_m2_n2;
> > > > > > >  	bool has_drrs;
> > > > > > > -	bool seamless_m_n;
> > > > > > >
> > > > > > >  	/* PSR is supported but might not be enabled due the lack
> > > of
> > > > > > > enabled planes */
> > > > > > >  	bool has_psr;
> > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > > index 05694e0b6143..ceab5b26b5e8 100644
> > > > > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > > @@ -2535,7 +2535,7 @@ intel_dp_drrs_compute_config(struct
> > > > > > > intel_connector *connector,
> > > > > > >  	int pixel_clock;
> > > > > > >
> > > > > > >  	if (has_seamless_m_n(connector))
> > > > > > > -		pipe_config->seamless_m_n =3D true;
> > > > > > > +		pipe_config->update_m_n =3D true;
> > > > > > >
> > > > > > >  	if (!can_enable_drrs(connector, pipe_config,
> > > downclock_mode)) {
> > > > > > >  		if (intel_cpu_transcoder_has_m2_n2(i915,
> > > pipe_config-
> > > > > > > >cpu_transcoder))
> > > > > > > --
> > > > > > > 2.41.0
> > > > > >
> > > > >
> > > > > --
> > > > > Ville Syrj=E4l=E4
> > > > > Intel
> > >
> > > --
> > > Ville Syrj=E4l=E4
> > > Intel
>=20
> --
> Ville Syrj=E4l=E4
> Intel
