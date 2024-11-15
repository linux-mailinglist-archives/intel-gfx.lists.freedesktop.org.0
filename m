Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A239A9CDC8B
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 11:29:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDCF510E848;
	Fri, 15 Nov 2024 10:28:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CQ7OOkHH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A01C810E841;
 Fri, 15 Nov 2024 10:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731666538; x=1763202538;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hgRCn0ljuGFiA/h5BRHZIwi4dwT/7KQA5H3Bgy2ifQ8=;
 b=CQ7OOkHHJIumH3PqNEyYcE25Y4S6kopNM53uMm42e/RWjKT7FaRzIZeM
 QnA53ffRn4ccdSxCfu0+MtlSqD7Nd3gXgWL542AASUSQTnRDbQ25GNUC7
 QczXRzg0oobvAaeQ8putt6+sYH0QTHzrE3o9JAUL8aEVpG85t5eaaaGsB
 QaMvKN0gTud5chm4OMRqVFszD4PzPaUMx5HnSF/5jFd+DvxRpd0IQeckM
 oIojlZRW/8fRgdHA+P2yPYDwUZVDTU5kIseEnUmpYV+4C3mmfoRpiwvUq
 9mtC3m55VaQ8jK1PS9E8g72bLAM/3D9WwXwzwhQKbo6Z4d42SlxGmZY+p g==;
X-CSE-ConnectionGUID: vR6UqdJuS2el+d9n6Nw7fQ==
X-CSE-MsgGUID: 1pzRMCPJQ7qsoerCJJLQzw==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="54173626"
X-IronPort-AV: E=Sophos;i="6.12,156,1728975600"; d="scan'208";a="54173626"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 02:28:58 -0800
X-CSE-ConnectionGUID: VA56LH08RBOPy+TMUiTt9g==
X-CSE-MsgGUID: vWYSsz8DT1OnIl2RhyOAfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,156,1728975600"; d="scan'208";a="88630308"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Nov 2024 02:28:58 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 15 Nov 2024 02:28:57 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 15 Nov 2024 02:28:57 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 15 Nov 2024 02:28:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h1GYi8KFiOCeL1v67SebGuGyHyJiF8DkglEqaJK63Nqtnx7EGd363v2iq1J3tNklZHzBdnummZSlt+JNXctKPFUZDfmPc5jXJzOyioMG0GQtsETX1Y52IWQG5EKQ130P2bAWY5qzf3l+F1njow5Ha9SlcF0HQbQnOYkrT26hAdsVXKplbJVmtLUt5JrOfgsAS2N3/3xm5QUIHtEgg2uuzUm9eIeOEXfwo/T+QgVrwd9/nIJtxz7/9365BP1Ei7B6cAP0tY9dJ+gpeuLmnKZBU4LEHSIPO8SJzXzdCP/03EluXlhPqFVedXht6fE5N+kBwVW/g/khuTMHGcX1LY8hAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1QPeARlbLZnpSacDn3zlResVn5No+gl0x4j0eEsCooI=;
 b=Mt4p6J8pxzVeds0+uncFX1KKqrrWz1likLRy6LcRi9KjHFeBqdBv3dFBbPChRJiTxitoV5IwnthDKOooSeVKccniC+Vqzx7FyJJv2sCgMZfNUmk2YJhqtU4jQmh1xrHy3sm1FXIcQfzcR8Tt0VCMmaGl016DX846O3p6I4orNASJGC0tEdVZB6psEWIB7yzcbY8en6whk9IvLw96gsbbgXW2FdJaaH0U2ARVzU50iP6Kh6Gb5H9JbxHQd7V/fnaG7attl9cG8hYVBDi+GcmyfXTQTDLQIVTGPSVyAyEk+e9rpL1fbYBB/h1ebHeB0m+7nvxUPjsqAN3mENJNxEmhMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY5PR11MB6092.namprd11.prod.outlook.com (2603:10b6:930:2c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.17; Fri, 15 Nov
 2024 10:28:47 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8158.013; Fri, 15 Nov 2024
 10:28:47 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>
Subject: RE: [PATCH 1/2] drm/i915/display: Refactor handling of dpkgc latency
 programming
Thread-Topic: [PATCH 1/2] drm/i915/display: Refactor handling of dpkgc latency
 programming
Thread-Index: AQHbNyi+9Tys+ji9X0W3vNjTWvpRXbK4IYOAgAABIPA=
Date: Fri, 15 Nov 2024 10:28:47 +0000
Message-ID: <SN7PR11MB67507AE2F5034F5C148276CBE3242@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241115063440.1422706-1-suraj.kandpal@intel.com>
 <87a5e06bp0.fsf@intel.com>
In-Reply-To: <87a5e06bp0.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY5PR11MB6092:EE_
x-ms-office365-filtering-correlation-id: 62fbcc80-9a79-4171-36e9-08dd05604a1c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?w19iVop+3DdMfeZ8LeT1Bz7n1I+ujVsEFrfiSPcEQDl27DaHFet4CQ4yzO8O?=
 =?us-ascii?Q?OpNvcFr0NQWSA3c3aV1C04A71IpLdN1O8sWByQFt1zvLSwx9vWp2IGBbT/qF?=
 =?us-ascii?Q?HuXvqgEd/mfu3mcCLAfDLl+pb0+G2aM4aEZOSEACYobN/Sa19V1uuMW3XWJa?=
 =?us-ascii?Q?U8m9uj3S4zEaCuTNtt/SO26DaiHiKC0Jkjoysv/uVhEXXEg5iee5JVBJzSQh?=
 =?us-ascii?Q?WyiquU922IMSwAH7076B2hmi3Z4n3xJQ1CNuCVPbNWtBB8YibvkOQ4Aqwnqz?=
 =?us-ascii?Q?KgAjNFEKhu1u477H+afb6ATfz1A6GdymN851Sll/ve72bQK7csHAPP80YxwC?=
 =?us-ascii?Q?Rzq9mdKQiTPJwc19hbKnP+rmDkpshkF3Kz2CTPMjkVbbfG178s6Ceo14cYC3?=
 =?us-ascii?Q?hr/l7Ttu8sqvBf6dK7ipXGu2LJSTMoqFnDbnS029kSwiZTCNykAQgRrGeGnk?=
 =?us-ascii?Q?K0jqpNdHtAmQ5fqV5hPT1/3E+ytoSqN6iqEvAYice2+ErGREqwPiHrNGhg6u?=
 =?us-ascii?Q?OfmwNWkw21hY/Y6P59GSX4O/W7ZasHB0OBAWrPQuYlHnJCOKa1E1I1tpAX5R?=
 =?us-ascii?Q?d+nYBsp/dAqiJajzWF5VUkMmY+XjGjh6caGYCHukc6Hak+C0+tX6pK0uccxr?=
 =?us-ascii?Q?Q0E01S9pZxAk4YS7RGeG67wa4Vy0F7RtdWEKwRWWfT9+RORJj2w/VXkxGijs?=
 =?us-ascii?Q?y8C+DJspz+73X3DUJNmV+Efo45pI1ELQ/0jZEtJkl5IFcMvnPuaUa17HOFkO?=
 =?us-ascii?Q?yxaeE4AYObRzm9XmwKRIsF+yP1FCaCRhBM7ADiEekFqojxSvFwTey718XSpI?=
 =?us-ascii?Q?u8CDLRaUwNG5HloOEv3k3D31VfkhUC9+1SrYRwB0D1zkf8BGM3kfGYlzCKAv?=
 =?us-ascii?Q?o88sDUjKXcVmfc2OH7Rm+vgahEklPmi5Ine5rUEvTRChlI12rncb95dqxHMW?=
 =?us-ascii?Q?YYNHbk2jJXfG2ElGbqofT7RgWtAmvAqh0jvmo+p4RV9jdKYyK4k3sXgad/2H?=
 =?us-ascii?Q?hQIjL8c5LCh51rLe6GLC/81Spl9bYMIM05gUqtUgveWbDITD+Ta2xTN62ql7?=
 =?us-ascii?Q?bRLfkuRb5VPTjjY4BjFCYL/tmW8j1W8qxvP/C4aAH/mkbXYmRZfcaWNCxAKp?=
 =?us-ascii?Q?hiVDM+FtifXlx2W/eguz8B4HnXkcMYv9NhotvTv58XdtKOr+ANG+yqmNjwlc?=
 =?us-ascii?Q?dAgJ5s2SHXjcc2tVJTMhI1FNanvb4p8wsEqp/XjVikmfI3idLAghcfhjv3IP?=
 =?us-ascii?Q?TmcbrBB9s3zUWw52RQSsmVpCjQ3A459H8oNSso4sWLiQTuG6RKkkh8qaVI3S?=
 =?us-ascii?Q?pxrzltYMoT0yfYKyFeUqOMg6?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2+JHcOCNqCpcxaJObtTCplZUM45seuRvV6TYufdWjvGvyOTAJQNcnnk5DHkw?=
 =?us-ascii?Q?U4wbMtBDVO5AIvdEB4AqAzBYkRo54hJXZBWrn828kCW2oUMaQ9hhhKv8gI2X?=
 =?us-ascii?Q?raph8ChA1W9w0JMC3+nB3ZhpykLdM14Iy8WMyrlQWvZSN1/v6orzHQ2BqDlz?=
 =?us-ascii?Q?Jsk0aoJNxDxcoRS3hhoKl6WtFbmRMglwcb6Q5V0xtIHfgsfYLTmG7xCOZxeR?=
 =?us-ascii?Q?94AylKXj01Y8hFeohyaKj35U5mW7DHU3yq6q+sUH7ztNxJjN/Yp7IHrIkbHx?=
 =?us-ascii?Q?x6AM72YImtsLx1yv0hBpCjmkwENcndIz6AHCEFqA2zULKB73+NPLV4d5mq6h?=
 =?us-ascii?Q?/I6rvTkQQzzzA52vjAqRRrG5fhW9f0N/Xd3TvX9fpwtUXWUOYIAPrtd2cFZU?=
 =?us-ascii?Q?uiDnNGzOmpc6wjUXUXsfqz9FmMnyks/YEsh9AfkeplA9oKsD+bVxEDUaofo9?=
 =?us-ascii?Q?f6PbYxfY8KoC/qtBTdk6d/Fi1myQSrrDE3BkuznoktCUZRhGrd/8ENAc2mBb?=
 =?us-ascii?Q?4HnaB9X05XR6fYWOnv9qcUiXQUNVFDGr8N2FThKEz1LVUuoR53RNDwPQkHmT?=
 =?us-ascii?Q?IUa/9ImcR0tr5TaT2lH61TVET/o2QdVh56ihntfJFAXcim/NXidIGAud+3tN?=
 =?us-ascii?Q?QykxMvAmZLdXiSc5pcfTXfYBA8zcI4aLHciAYgfEl1yY8rbcSbf17WICE1rh?=
 =?us-ascii?Q?DlT2NusN1gkC87/wMA0x3elEexd4ShKXL9nf9JpmydzK9JVXwrVgHPis5x9h?=
 =?us-ascii?Q?jQuxDPBGUDAevPeFq675tkEUsjBp5Ia+H5To1/y3vLdVaHSWTb2ejg+mknvF?=
 =?us-ascii?Q?EyAyEoSQYNDRZ5TuaLLGw9dK9CzllHrjirB+HSN3K2E0iCfqdKSrmsz22/Eg?=
 =?us-ascii?Q?cEjTL/IR0WYcMIo6FRJDELpoAD8+y1Ty3qEq5ZMh8A76zh51ZH8yCOcsOZPm?=
 =?us-ascii?Q?rcgB00qYb5dimYlWS2DMwsgLr3koQMzZ1S5Nqy16CVNr0sNfdchou7GgZpIc?=
 =?us-ascii?Q?wnA+rCQFRzMPi2V6MPAM82z5tftAzve3lWeLbeaMG2bUNoys47FPYHqOuKZr?=
 =?us-ascii?Q?utV/yXpKJAZhAvkqM89Iwr4n9TLdNhboTzqUCmohGHYEL7ny8jg0BkS2Idiv?=
 =?us-ascii?Q?1aXfWpV3kw8W59iRRfFQKG+rBWuFN8I63AnL5kD3oyst+TE3QL1kMVsxswf6?=
 =?us-ascii?Q?4FE6a+cbqa8GVGeLgiVfxeXsZWGC8G7yWTXm9og1WtbSC0p5FjKFVqo9krp9?=
 =?us-ascii?Q?5W3Vxmc9NyshYHG4PEdMx1UYqi2mWErXhc4zY8J8LnnrbfZ0HP7Dssg1e4Dk?=
 =?us-ascii?Q?jxk1ztSKIyzAQhbEYwA2joIaliXBKXaVKzoHRiNVwUWaiR35/vauvE/w93Yr?=
 =?us-ascii?Q?eihtCjnYbT886D+HnwfQDMnj7B+ayM05/fmOk+S/Z2sZbSQFsZHnQupQrtF2?=
 =?us-ascii?Q?s8HWMfLJ0jZWyryOms4n65uw7pV8x1wYHytI6FQ+OZb2aNcXM8Y0ym/bolAD?=
 =?us-ascii?Q?YL2HRHQWVaNw04kcMN4aYMnijw98Jg5X9dRvPIX5a0UI9ter+szOPL3NJpG9?=
 =?us-ascii?Q?2c1NBLodUogZDsCuKL9rglKOshv4XWsqxDomSdbu?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62fbcc80-9a79-4171-36e9-08dd05604a1c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2024 10:28:47.4430 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CZohfeVibDO+5DdMCuOjz23k2jIi8AYhdJ5Eab/ES4zv6ZeGL4zg6Tz5eX8rIoszSPVSLEN1e3TMsDfDWySLtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6092
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Friday, November 15, 2024 3:50 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Syrjala, Ville
> <ville.syrjala@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: Re: [PATCH 1/2] drm/i915/display: Refactor handling of dpkgc lat=
ency
> programming
>=20
> On Fri, 15 Nov 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > - We want to make sure we have all the required values specially
> > linetime which is computed after intel_wm_compute, this will also help
> > implement some WA's which require linetime.
> > -We do not want to write into any registers during compute_config
> > phase While we are at it do some more refactors in the function like:
> > -Use intel_display wherever possible
> > -Move away from using enable_dpkgc bool and call it fixed_refresh_rate
> > -Optimize value prepration
>=20
> Please write proper sentences instead of bullet points. And the general a=
dvice
> is to do one thing per patch.

Sure will fix that.
It was previously divided into 6 patches but squashed it after Vinod sugges=
ted to do you want me to go back to that convention
https://patchwork.freedesktop.org/series/141200/

>=20
> >
> > --v2
> > -No need to save anything in intel_display structure [Vinod] -Move
> > computation and writing into register to intel_atomic_commit_tail
> > [Vinod]
> >
> > --v3
> > -Rename the subject [Vinod]
> > -Rearrange the variable initialization and declaration [Vinod]
> > -Reaarange condition evaluation for fixed_refresh_rate [Vinod]
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c |  2 +
> >  drivers/gpu/drm/i915/display/intel_wm.c      | 56 ++++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_wm.h      |  1 +
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 52 ------------------
> >  4 files changed, 59 insertions(+), 52 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index e790a2de5b3d..d1880e0a5d29 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -7826,6 +7826,8 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
> >  	/* Now enable the clocks, plane, pipe, and connectors that we set up.
> */
> >  	dev_priv->display.funcs.display->commit_modeset_enables(state);
> >
> > +	intel_program_dpkgc_latency(state);
> > +
> >  	if (state->modeset)
> >  		intel_set_cdclk_post_plane_update(state);
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_wm.c
> > b/drivers/gpu/drm/i915/display/intel_wm.c
> > index d7dc49aecd27..4a2caf9cb03e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_wm.c
> > +++ b/drivers/gpu/drm/i915/display/intel_wm.c
> > @@ -7,9 +7,18 @@
> >
> >  #include "i915_drv.h"
> >  #include "i9xx_wm.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_wm.h"
> >  #include "skl_watermark.h"
> > +#include "skl_watermark_regs.h"
> > +
> > +/*
> > + * It is expected that DSB can do posted writes to every register in
> > + * the pipe and planes within 100us. For flip queue use case, the
> > + * recommended DSB execution time is 100us + one SAGV block time.
> > + */
> > +#define DSB_EXE_TIME 100
> >
> >  /**
> >   * intel_update_watermarks - update FIFO watermark values based on
> > current modes @@ -131,6 +140,53 @@ bool intel_wm_plane_visible(const
> struct intel_crtc_state *crtc_state,
> >  		return plane_state->uapi.visible;
> >  }
> >
> > +/*
> > + * If Fixed Refresh Rate or For VRR case Vmin =3D Vmax =3D Flipline:
> > + * Program DEEP PKG_C_LATENCY Pkg C with highest valid latency from
> > + * watermark level1 and up and above. If watermark level 1 is
> > + * invalid program it with all 1's.
> > + * Program PKG_C_LATENCY Added Wake Time =3D DSB execution time
> > + * If Variable Refresh Rate where Vmin !=3D Vmax !=3D Flipline:
> > + * Program DEEP PKG_C_LATENCY Pkg C with all 1's.
> > + * Program PKG_C_LATENCY Added Wake Time =3D 0  */ void
> > +intel_program_dpkgc_latency(struct intel_atomic_state *state)
>=20
> The function prefix should match the file name i.e. a function in intel_f=
oo.[ch]
> should be named intel_foo_bar().
>=20

Well it was previously intel_wm_program_dpkgc_latency but Vinod had asked t=
o rename the function


> But why is the function being relocated at all? That's also not explained=
 in the
> commit message.

The reason is in the commit message
"- We want to make sure we have all the required values specially
linetime which is computed after intel_wm_compute, this will also help
implement some WA's which require linetime."

Will reword the commit message into sentences to make it more clearer.

Regards,
Suraj Kandpal

>=20
> > +{
> > +	struct intel_display *display =3D to_intel_display(state);
> > +	struct drm_i915_private *i915 =3D to_i915(display->drm);
> > +	struct intel_crtc *crtc;
> > +	struct intel_crtc_state *new_crtc_state;
> > +	u32 max_latency =3D LNL_PKG_C_LATENCY_MASK, added_waketime =3D 0;
> > +	bool fixed_refresh_rate =3D false;
> > +	u32 clear, val;
> > +	int i;
> > +
> > +	if (DISPLAY_VER(display) < 20)
> > +		return;
> > +
> > +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> > +		if (!new_crtc_state->vrr.enable ||
> > +		    (new_crtc_state->vrr.vmin =3D=3D new_crtc_state->vrr.vmax &&
> > +		     new_crtc_state->vrr.vmin =3D=3D new_crtc_state->vrr.flipline))
> > +			fixed_refresh_rate =3D true;
> > +	}
> > +
> > +	if (fixed_refresh_rate) {
> > +		max_latency =3D skl_watermark_max_latency(i915, 1);
> > +		if (max_latency =3D=3D 0)
> > +			max_latency =3D LNL_PKG_C_LATENCY_MASK;
> > +		added_waketime =3D DSB_EXE_TIME +
> > +			display->sagv.block_time_us;
> > +	}
> > +
> > +	clear =3D LNL_ADDED_WAKE_TIME_MASK |
> LNL_PKG_C_LATENCY_MASK;
> > +	val =3D REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency) |
> > +		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK,
> added_waketime);
> > +
> > +	intel_de_rmw(display, LNL_PKG_C_LATENCY, clear, val); }
> > +
> >  void intel_print_wm_latency(struct drm_i915_private *dev_priv,
> >  			    const char *name, const u16 wm[])  { diff --git
> > a/drivers/gpu/drm/i915/display/intel_wm.h
> > b/drivers/gpu/drm/i915/display/intel_wm.h
> > index e97cdca89a5c..07e3d9359d73 100644
> > --- a/drivers/gpu/drm/i915/display/intel_wm.h
> > +++ b/drivers/gpu/drm/i915/display/intel_wm.h
> > @@ -31,5 +31,6 @@ void intel_print_wm_latency(struct drm_i915_private
> *i915,
> >  			    const char *name, const u16 wm[]);  void
> intel_wm_init(struct
> > drm_i915_private *i915);  void intel_wm_debugfs_register(struct
> > drm_i915_private *i915);
> > +void intel_program_dpkgc_latency(struct intel_atomic_state *state);
> >
> >  #endif /* __INTEL_WM_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> > b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index 1a4c1fa24820..d419edb196c6 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -28,12 +28,6 @@
> >  #include "skl_watermark.h"
> >  #include "skl_watermark_regs.h"
> >
> > -/*It is expected that DSB can do posted writes to every register in
> > - * the pipe and planes within 100us. For flip queue use case, the
> > - * recommended DSB execution time is 100us + one SAGV block time.
> > - */
> > -#define DSB_EXE_TIME 100
> > -
> >  static void skl_sagv_disable(struct drm_i915_private *i915);
> >
> >  /* Stores plane specific WM parameters */ @@ -2844,51 +2838,12 @@
> > static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
> >  	return 0;
> >  }
> >
> > -/*
> > - * If Fixed Refresh Rate or For VRR case Vmin =3D Vmax =3D Flipline:
> > - * Program DEEP PKG_C_LATENCY Pkg C with highest valid latency from
> > - * watermark level1 and up and above. If watermark level 1 is
> > - * invalid program it with all 1's.
> > - * Program PKG_C_LATENCY Added Wake Time =3D DSB execution time
> > - * If Variable Refresh Rate where Vmin !=3D Vmax !=3D Flipline:
> > - * Program DEEP PKG_C_LATENCY Pkg C with all 1's.
> > - * Program PKG_C_LATENCY Added Wake Time =3D 0
> > - */
> > -static void
> > -skl_program_dpkgc_latency(struct drm_i915_private *i915, bool
> > enable_dpkgc) -{
> > -	u32 max_latency =3D 0;
> > -	u32 clear =3D 0, val =3D 0;
> > -	u32 added_wake_time =3D 0;
> > -
> > -	if (DISPLAY_VER(i915) < 20)
> > -		return;
> > -
> > -	if (enable_dpkgc) {
> > -		max_latency =3D skl_watermark_max_latency(i915, 1);
> > -		if (max_latency =3D=3D 0)
> > -			max_latency =3D LNL_PKG_C_LATENCY_MASK;
> > -		added_wake_time =3D DSB_EXE_TIME +
> > -			i915->display.sagv.block_time_us;
> > -	} else {
> > -		max_latency =3D LNL_PKG_C_LATENCY_MASK;
> > -		added_wake_time =3D 0;
> > -	}
> > -
> > -	clear |=3D LNL_ADDED_WAKE_TIME_MASK |
> LNL_PKG_C_LATENCY_MASK;
> > -	val |=3D REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency);
> > -	val |=3D REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK,
> added_wake_time);
> > -
> > -	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val);
> > -}
> > -
> >  static int
> >  skl_compute_wm(struct intel_atomic_state *state)  {
> >  	struct intel_crtc *crtc;
> >  	struct intel_crtc_state __maybe_unused *new_crtc_state;
> >  	int ret, i;
> > -	bool enable_dpkgc =3D false;
> >
> >  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> >  		ret =3D skl_build_pipe_wm(state, crtc); @@ -2913,15 +2868,8
> @@
> > skl_compute_wm(struct intel_atomic_state *state)
> >  		ret =3D skl_wm_add_affected_planes(state, crtc);
> >  		if (ret)
> >  			return ret;
> > -
> > -		if ((new_crtc_state->vrr.vmin =3D=3D new_crtc_state->vrr.vmax &&
> > -		     new_crtc_state->vrr.vmin =3D=3D new_crtc_state->vrr.flipline)
> ||
> > -		    !new_crtc_state->vrr.enable)
> > -			enable_dpkgc =3D true;
> >  	}
> >
> > -	skl_program_dpkgc_latency(to_i915(state->base.dev), enable_dpkgc);
> > -
> >  	skl_print_wm_changes(state);
> >
> >  	return 0;
>=20
> --
> Jani Nikula, Intel
