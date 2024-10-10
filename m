Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB32997BB1
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 06:14:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99B3B10E84D;
	Thu, 10 Oct 2024 04:14:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ainfTJnt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2F7010E085;
 Thu, 10 Oct 2024 04:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728533652; x=1760069652;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sTsyL6//boOYrJ19e7soMGkvIBMR/OhXvPlKtvDuEBM=;
 b=ainfTJntKaciKuidT4tklYemapE/S0AxLDCQNrsun+V924nySF5mcI5t
 SYCATLCzmO/2lS0TTfPTIjDB9WlHQcQYdBxxoLLtGxqwBUvw0e69LTMNK
 4CzP+353q7vlyYDZoOvBr7nx8548d0F53ZOP1SadlDR77B/ryH0TzcI/6
 auUI6JTZZsEGkLOpNNRmlsnNgM5G/3VKTwl0crt2Cn+pjrtv4v8aPPmNx
 5LGR/w78Jv1HwkAFl1kndMvdFsBCnjBXnjVb27qAKqLlUW79jibUXe2cI
 hqwC6BNr44ME17l9WbxHfhQu8B3WzFQ+4yADQuRxLUvZIFobR9HMLvQHf A==;
X-CSE-ConnectionGUID: dboWTQICQ0a7ABcc3+P5Hw==
X-CSE-MsgGUID: XK+J9QfiSCWU4a7eIRkR9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27681876"
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="27681876"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 21:14:12 -0700
X-CSE-ConnectionGUID: ChMyCbGQTZCjv+655mGI+g==
X-CSE-MsgGUID: qlLEyiNJSPeTk3ExLeSa6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="76936409"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 21:14:12 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 21:14:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 21:14:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 21:14:10 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 21:14:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=drvCkMFZU6wEs/9g/Wh8PSrWByjzX4GSKqA0+DeElan3YCr1cTRp9aZbUTUdBaQ5GKJ8qUCZPaFVzGs6Jx3cBCqQVfzBtIgTXXFuPPmWup95wGd28atN1bsriyvB5nk0NYPBdPu/ntdMPJgCIKUZpG7IprBdYF8t0zLHynARbEJCPFIVi5Z2Mx+AO78QnbqKIWhhhXxyW0zU4rIu1Ln5uK7ehdxsiQi2NaQHBG7dPekHBKJ2xoawF+NzIf5uj287c4gBmSXf08nTGkEQCUxXFKBqszz5jYDGdd/pbjY1JHeAzzGMXsA1+TW0Y6gKGxwfp8ckM5LIwH80HBlJF4lvWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SOGQ7pOITvS4c/p5IYawLMdRsSz9A74RMuRum6MC+TM=;
 b=GSjzrWqphLwJXdvDs5fbMzSh5z/TVzZ8lY85TO/yIoayFtzr66u8L8gpEM7/0wr8bJbpKjp3vLa17NiW18VA6/Ojl6JpqEiv11f8sh8eEL1bvrykRar4/uSQXLskniLb5oknsyE0Ig8R8eTScdBcEy+8bdIjO0ysF8O6x/2HowdRgJZtX3ZSbigWcP9EtKnaz4elWxSXyvN/wZ+hXsjFv3yntvIaFYKYy0EvOZZP5hH55KyaEtCOaN7+J5DB6OmNwkNeWxVh+7AQz7tMx6UAgbe8lRAlPoBnssqG9OGSTvUGYWS5KmTEB0VH0zObaXn061S39MbZ+9iHLHBWQ+4tHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY5PR11MB6343.namprd11.prod.outlook.com (2603:10b6:930:3c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Thu, 10 Oct
 2024 04:14:08 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8026.020; Thu, 10 Oct 2024
 04:14:08 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 06/10] drm/i915/xe3lpd: Add macro to choose
 HDCP_LINE_REKEY bit
Thread-Topic: [PATCH 06/10] drm/i915/xe3lpd: Add macro to choose
 HDCP_LINE_REKEY bit
Thread-Index: AQHbGdK6tw4oJfqoYUWGO2+ex8s1xbJ9gmuAgAHdsFA=
Date: Thu, 10 Oct 2024 04:14:08 +0000
Message-ID: <SN7PR11MB67504DF105CEC1561141817CE3782@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
 <20241008223741.82790-7-matthew.s.atwood@intel.com>
 <20241008233727.GO4891@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20241008233727.GO4891@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY5PR11MB6343:EE_
x-ms-office365-filtering-correlation-id: 0ee3a5ea-d520-47a9-a362-08dce8e1fcb3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?5YM/6tD7UNiyxo8l0CA3l8TGTBrFz+7/SKBJJ4w3JYHIs/5pt53594TX9lMC?=
 =?us-ascii?Q?1xgxs97RC73+MAq/1F0fTsCZ3u0hg2pPeZU0BUg4MyRMBnNlZqYiga/JEpNV?=
 =?us-ascii?Q?QnBFr1DedhrlNGwosqVm9PNlrCtZsLs6D5vhiWxMSrV0QJqbASa0emKj/X5Y?=
 =?us-ascii?Q?bH8dccm9EZCnhyFWtYogTC8PtmurnbBAxksvXsmzdkPUZ/b9yU6LPbRbYaop?=
 =?us-ascii?Q?2836t0Niycg1EDnvAe0rvVL/dV6JQDXI8x4BqFvFNrKvsY8iT/Sdyszd/3LI?=
 =?us-ascii?Q?xv4N2NoGfn6xrQE8ndi6SbEoCJHya3a0QT0H68xe2lJzhmSRS+D6JAI7sUoE?=
 =?us-ascii?Q?B7/GKl5B2rV64ygpiSJiXmKcnWgHBUFvtHse099c1oPouUHQ5D+1uViuwO3q?=
 =?us-ascii?Q?rN4TRuJqrTuoaFli2RD9mC7SaPJNjf6lk0e1Utio14aOzPORhy3klLwFnD9a?=
 =?us-ascii?Q?yUtk+x8a1HOJEgnIDro29BOCkfTFws8K3hhDa1/kunDbrqVTmoCla0HF5jlF?=
 =?us-ascii?Q?TfTZR6tULjKwbg6aywq4GmSKHOFBGx4Ch8anBTpoBPY1FcwMpFbd666xW9+d?=
 =?us-ascii?Q?ao12iSat9NtA1TEDsgNmZX5xRhMhS4VPr+s/xT86wfrlsbdvZtqjtOEC3r/D?=
 =?us-ascii?Q?yIEwSdF5N1NN1EfQt3mpGs1hXoFj+oPr0XNMH6QJXSTyAekn74I9/IVXxKH8?=
 =?us-ascii?Q?9Ffl+mNwm/dTtW25lRLt+M2bZ0Ujw+5WTM/U2CS2DZGdKHuv1A4USSgXc39n?=
 =?us-ascii?Q?WR1qGbnzvHRzNRiTqqtihbGfPu72ECZI+3UVHT8kiQWx3gCEiAdxFDMIQWQk?=
 =?us-ascii?Q?Z+99WUH1XbyLlIX3NMRJtxKSd1iQGOMU0a6ONpFaV0kFgm7Fq0HbNvkgdfPG?=
 =?us-ascii?Q?6jZwIUyvYdaxb8Owz3SUtIWwLXF3eskzyHCGyfsvwRgGq22RByLQkGd6PQpb?=
 =?us-ascii?Q?hhyhJQzrHf6AKOn3RAyyN14V2L8+0FRP4ciMPMn5sI70NJN4CHV5Ix7T5j0l?=
 =?us-ascii?Q?ZsThbat7d2XOsPhVIPaEg2MFT0Bjb7F2Q2Qd4EZf2Sc3CsG6Dov47w+4OiBA?=
 =?us-ascii?Q?QzhlBkO0ArzGFuWo/uYf2AAp/Ti9lTYhSN9+weOELJ2COetm24a+Lxc5SN4a?=
 =?us-ascii?Q?cGIfQKbaE7RBOTn7ePL4svbL2GnrOXkNb41CCWmYzN85keqNBSfpkO2yGYJa?=
 =?us-ascii?Q?dijPlw2OyAdMrtfeYYP24Kc0ca6r64X7r4DZRVW8GqmhD7lcDLjMXssK3bRy?=
 =?us-ascii?Q?YnzANfXBNFCZZIOEDNbmFM7hKdK6XMZH28snUykO0bF8SIZwuaMNBS99+I42?=
 =?us-ascii?Q?rkeha2+0+VYsejZHc34kwqSAA3vSObhQtEZxJn2PJBVgbA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Uu/rCfLsamOQSt452OiPy3Oc2nJoJEOIDbD11J3sRQOThfWqwktpkeRHYXr4?=
 =?us-ascii?Q?2pSxG/L5+9mXZ+/PoDckk9+R/gyg+oJBOTHD6IHzXKuCRwaooXfDN+ntvYGD?=
 =?us-ascii?Q?Nkf+MejhIf20tVcX5UvQYlqJlSVP3stNJbDtTy11GmVuEtXzan34iYUybvDG?=
 =?us-ascii?Q?Pz5x3hgF11TFN4vUUiyoJmAMoBb8taHQ8tB2DcBTobyzbXIiO0gtl/hy7aoz?=
 =?us-ascii?Q?UXgsUxcMO1HErLR8aNo7Ohv9ynxQ3vta/UhDeeVM0I4Q9EiWJtK89+lpZvFT?=
 =?us-ascii?Q?5VRw5lnozRKpLpXbpsKtqf0pYqUDN3EoqXQPdCY2Wepx9CDfa80eyJOaE9T0?=
 =?us-ascii?Q?lUIOa50kNe1GM0lAKg986TVeA1vHGoh9NEvzzPNpFGhggRdoEkFRRiQdV+CO?=
 =?us-ascii?Q?fx8DYQuSsT0wxnn+4MjvsuujxH/zQPGjzHVmxbnFYpdfwcz+awL9GP0Hqz0b?=
 =?us-ascii?Q?2Zy1G/7SCQfgMqPcSt3r92folZTHJ1qsgD8k6FAhtG6T1czMWHZY0I/Va89o?=
 =?us-ascii?Q?LbTqRjUv6GPOMUUVCFK6v0e+czqfrODxzzkr8v6PBYF8AwZvHyNHbbnczHVf?=
 =?us-ascii?Q?k9/kz535xOOvNfHk56QWW87xSOzNL2JuzIYNT7qmHEWpovxD89hIilsQaYGV?=
 =?us-ascii?Q?kPLvswNSd2vs1ySjotlBm4OMyTtq7uIlXFR5c2r3YBM5SLae8i/+yjQS8Sb5?=
 =?us-ascii?Q?DtnvVJDPHG7Aft8B1BDpfOPr40lR7kyhPIqpr2AkOoOJR6HhOQvk+H+vG+ox?=
 =?us-ascii?Q?iEjfCCHcrzFJBYIEayVJrLlgjGQsWS/NfwYkR/HZIdUlYixveQJBq5+mBDpJ?=
 =?us-ascii?Q?H2r5OrqQ6fYm61iNKGgBZe3XHA2DF+HXKUpeZh2vNNAxlQ3QRxUHXrXm8tnC?=
 =?us-ascii?Q?savgjYFgCOr77IK0ItiLPX9J6DVmax6zv7g8YWttAvx+5cMalKL0bemIb3dP?=
 =?us-ascii?Q?yO6j6QnHFQaYGqHJaCRo3kJYrz4Ds5pkjL1s0xdO+iIeCi+N40i97K6hpi/c?=
 =?us-ascii?Q?tGIYrVEsLKTuqgo1PxQJj0mk9ryhTQbWsTaLjNrfdh9I+4DsDKaQGaiAwgpD?=
 =?us-ascii?Q?t6ZlxdZJxpE/F3ocXaGnspdsz1DW2zxIJQ4Mn6tvuFnR/S/MytmLHdBpFNQO?=
 =?us-ascii?Q?Vwtu8qgPVZsXTgwVFH2hd42KkkJC21llVJnqT6XTulKzbGF4zJVyIEq+DAy7?=
 =?us-ascii?Q?KIotBCUes/8rTWaGvs1D3dRLFsDvsB/86VpPGqJU5+5Ia9WSB2lb9W+JWaIa?=
 =?us-ascii?Q?MxhcD5G3s1yvoaPZIjTe52nIpmXNy/CD3vamSB8+GHwEtO5E0CHV0aslsQHs?=
 =?us-ascii?Q?FiV5hsjCnpPesuw/LxNjSZhdF6w9mtj+BFEPCkZ18H6lc7/lncdSIddAuX9j?=
 =?us-ascii?Q?0QZqKoznlnjmq/2MFh8416f3HlswuGs5ce9ozw5VG/A0s327s439Y7Gsj7e0?=
 =?us-ascii?Q?XL05yyrixzA1iEHcB3J+CTxOSdSyphkeD7lZoQ7OcQui5zEpaGJM5mSl+xZV?=
 =?us-ascii?Q?NfapcrgPz8dFrw0d7oVIJGax0h54W0WBSApVIW2HpERId1JGRJD4R8qIkb/w?=
 =?us-ascii?Q?x23GXa16jvNn5AgyLVKi+BbVgFRqMMyFbEQwtET9?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ee3a5ea-d520-47a9-a362-08dce8e1fcb3
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2024 04:14:08.4374 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oEqTOaSg7W6v6+oRAldp1YCT6M4tpCbQIZS2iKHK93MhXnn2/68n6wtyHt8hYazEiI8txBNvN0MsMeg7KFLVcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6343
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



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Wednesday, October 9, 2024 5:07 AM
> To: Atwood, Matthew S <matthew.s.atwood@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Kand=
pal,
> Suraj <suraj.kandpal@intel.com>
> Subject: Re: [PATCH 06/10] drm/i915/xe3lpd: Add macro to choose
> HDCP_LINE_REKEY bit
>=20
> On Tue, Oct 08, 2024 at 03:37:37PM -0700, Matt Atwood wrote:
> > From: Suraj Kandpal <suraj.kandpal@intel.com>
> >
> > DISPLAY_VER() >=3D 30 has the HDCP_LINE_REKEY bit redefined from bit 12
> > to bit 14. Create a macro to choose the correct bit based
>=20
> Typo?  The actual bit moved to 15, not 14.

Yes that is a typo it should have been bit 15

>=20
> > on DISPLAY_VER().
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c | 5 +++--
> >  drivers/gpu/drm/i915/i915_reg.h           | 2 +-
> >  2 files changed, 4 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index ed6aa87403e2..e9b0414590ce 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -47,10 +47,11 @@ intel_hdcp_disable_hdcp_line_rekeying(struct
> intel_encoder *encoder,
> >  			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp-
> >cpu_transcoder),
> >  				     0, HDCP_LINE_REKEY_DISABLE);
> >  		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 1), STEP_B0,
> STEP_FOREVER) ||
> > -			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0),
> STEP_B0, STEP_FOREVER))
> > +			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0),
> STEP_B0, STEP_FOREVER) ||
> > +			 DISPLAY_VER(display) >=3D 30)
>=20
> Is this correct?  The programming here is to account for Wa_16021352814
> which applies to MTL, LNL, and BMG (but gives different direction for
> different steppings of each platform).  The workaround does not apply to
> PTL, so is there something else in the spec indicating that we need to
> disable the rekeying?
>=20
> Also, the commit message doesn't say anything about this change, only
> about the disable bit switching spots in the register.

Right that is the hblank restriction that comes for the following platoform=
s
MTL >=3D D0
BMG >=3DB0
LNL >=3D B0
And for all platforms of PTL
So the line rekeying needs to be done for the following and below that the =
hblank restriction needs to be done
So this code just ends up adding code to do line rekeying for the above pla=
tforms.
We can add the part that we need to add ptl to the platforms for which line=
 rekeying needs to be done

Regards,
Suraj Kandpal
>=20
>=20
> Matt
>=20
> >  			intel_de_rmw(display,
> >  				     TRANS_DDI_FUNC_CTL(display, hdcp-
> >cpu_transcoder),
> > -				     0,
> TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> > +				     0,
> TRANS_DDI_HDCP_LINE_REKEY_DISABLE(display));
> >  	}
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index d30459f8d1cb..da65500cd0c8
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -3832,7 +3832,7 @@ enum skl_power_gate {
> >  #define  TRANS_DDI_EDP_INPUT_B_ONOFF	(5 << 12)
> >  #define  TRANS_DDI_EDP_INPUT_C_ONOFF	(6 << 12)
> >  #define  TRANS_DDI_EDP_INPUT_D_ONOFF	(7 << 12)
> > -#define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(12)
> > +#define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE(display)
> 	(DISPLAY_VER(display) >=3D 30 ? REG_BIT(15) : REG_BIT(12))
> >  #define  TRANS_DDI_MST_TRANSPORT_SELECT_MASK
> 	REG_GENMASK(11, 10)
> >  #define  TRANS_DDI_MST_TRANSPORT_SELECT(trans)	\
> >  	REG_FIELD_PREP(TRANS_DDI_MST_TRANSPORT_SELECT_MASK,
> trans)
> > --
> > 2.45.0
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
