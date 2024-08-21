Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED9095A0BC
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 16:58:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCC0010E0A7;
	Wed, 21 Aug 2024 14:58:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cTzrLsBt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3872C10E0A7
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2024 14:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724252308; x=1755788308;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pKl+5LupwC0Ey4B4nC+KNz0leCD39pWMhVxm0QHs8cY=;
 b=cTzrLsBtkrfBgyQIkqFFNKJVb/HjSP45iAwN7ODVE4FXTpwxAYF8rajD
 ACPBV3Kks84v29t3eJ8OUtE9QoIbTMchsaXGF7XPQ2qqtukrMcddIUjeK
 /V5pXLHXWacz4ej8D9r/0KBGdzzkbNw05DsV9kns90eAB/ITJFz2ZO03/
 C9L5H6KygXhDfSssdoqrKXzYd4oN6I6pNiOGvhRLeXFBx7W0WAgubruhd
 NAkEEiGCSKLFiRIvqryXqJbpYjSE7c5AKVH9AFTTaYqLkvcTRF3tfOYyN
 /mTqeyo1Jhuaf6HQ51u8XFmehD4QKeZr9LeDzL/cI8D8tikIZv8bWxXta w==;
X-CSE-ConnectionGUID: aBD2GmOSSyGlmhSdfUVyYg==
X-CSE-MsgGUID: 0eGt+sArTYWzZc2Yak/Dtw==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="22767379"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="22767379"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 07:58:27 -0700
X-CSE-ConnectionGUID: l5IM5ng9QuKIbH434aaP4w==
X-CSE-MsgGUID: tXdLPSr4QF6RR2JysDSxXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="84290175"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Aug 2024 07:58:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 07:58:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 07:58:24 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 21 Aug 2024 07:58:24 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 21 Aug 2024 07:58:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hIrHkVAjRsu4clja1zvo6N9yk2V0mRT0L2MKKblgCj3avP16WilhLlBqL7OjqpXmk8cJzdwLWhKHmCZc3XRZGPknYBdSUj87sjXySZQdEq1xX4C+S7kk30U672UG4/PzMTaU30cVsARC2ex4FjYWDwcsrPd/T5qQyDhEcLNxq+VgxrwxAkeEvLEJrr5CxsxzZO0wv+bypevUI6jmEfrniiFjauAte9Hl3NWSz36XJU+rYngx09on5kEbxplje4HZ5aRPZiev7LM7QYtqEnmEAeQxxCafn9AsqKUmVRidgawZKyXnCjATs51j7iCr9HVJXW8q5tglJkPRC//Js0YHgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dQLWksXvtKFox2E5tBeWFq8ZVlkPxroMdx9VIJy50BA=;
 b=VgioKBp0CAu+hRVF1WGAsXjGhyhfduCuPd4VIn+9+/UW8cG1/kGmv9y+RSQj4/SRxN6WKPz8GvESJwdOguN8VevKfe4dQg7ps/7zit0F4auX46lVN9O0Of4fiSfSWP79IQiSsAJySrOJjpnAuO5eduTlrmF3V9a5e38e2UckoYzsRXhth/3f0AwUWXEFRrUwZm7dyuxSvhnyIKXmlkaANTpH9B2b8iOYZH0vuBhth3KUAgeeruwh16j93WJ7E6wW1HGNzBKAbHEkbTr4z3OgyCT+xzn7aHv3lbvBESU9aRRykKemdi1IbbViBD3gulhPX2tWRGE9LS8ySLmagdtmVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by LV2PR11MB6047.namprd11.prod.outlook.com (2603:10b6:408:179::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.27; Wed, 21 Aug
 2024 14:58:21 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%3]) with mapi id 15.20.7875.019; Wed, 21 Aug 2024
 14:58:20 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 11/14] drm/i915/dsb: Allow intel_dsb_chain() to use
 DSB_WAIT_FOR_VBLANK
Thread-Topic: [PATCH 11/14] drm/i915/dsb: Allow intel_dsb_chain() to use
 DSB_WAIT_FOR_VBLANK
Thread-Index: AQHaxmpTP7/zlQICe06J0ru5SG7sK7HoWTSwgAAegQCASaxy8A==
Date: Wed, 21 Aug 2024 14:58:20 +0000
Message-ID: <PH7PR11MB5981B2421CBD2E4D973B3AC2F98E2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
 <20240624191032.27333-12-ville.syrjala@linux.intel.com>
 <PH7PR11MB59817808A0D51050365D665FF9DF2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <ZogvyhAqaZc11zyw@intel.com>
In-Reply-To: <ZogvyhAqaZc11zyw@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|LV2PR11MB6047:EE_
x-ms-office365-filtering-correlation-id: 451d83ff-f74b-4480-1906-08dcc1f1b293
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?TtvRPSDpHqeqU7tvDdyJEE0jJcWAEysOKzZrAhUvPH9XaDwnc1T5y/r9W1?=
 =?iso-8859-1?Q?hXgS1bbIZGrKxpMd4tSvpn3h8zzTm1X4BpIt7kRgMp0BrzivAYgB8VRe4T?=
 =?iso-8859-1?Q?vBvIPXNNvyzrYIPbDAMOYRCBnvqJmEzuegHo2y70cND/7gNktD1uMX05X/?=
 =?iso-8859-1?Q?peJs/InLwjJO7omLDWhgcXa2mRVMFrZAMqEzDi9PT664lqT9nhX/luqPc0?=
 =?iso-8859-1?Q?8f6T0ljbkZj87TNgDzCIR6o7Tt/Fh3yokDF5iRPX2J9yz5uhKpdKCTRTts?=
 =?iso-8859-1?Q?Fz3XnZH6FpEuTrTQ/aSqlF6BLyCc6dzPKpvPkh+wDOiTkJWe6Yq5DUTk79?=
 =?iso-8859-1?Q?uNfhawJr7TFx/p4rmgdY1eHIRUZLiH1w/Q7SoNj5/dkMSz4jSXyaKsLmf9?=
 =?iso-8859-1?Q?QPv/SGuqLAOIffb7ayt/OcSI1w9r3SCg7mAFb2O9E7X4sJ2AO2ndV3401a?=
 =?iso-8859-1?Q?AXbK9wF0566e+z9pllsxORjs+e0x+CGpdLtgvGs7ZodsSuT5j92BXnaZ2Y?=
 =?iso-8859-1?Q?DhMBYuKrUHCwmNbOzVURI8F3k897PFR6ce2qLUtuggNyZHQiKrIdTiuQW/?=
 =?iso-8859-1?Q?9yfBVR6MHR6a7lDKiEUSOLHWskFzUpvn08IWuwiuJUiYjtT6GlEPNjWIpL?=
 =?iso-8859-1?Q?qGWlVbMTnQirUj2L94U3h7WHdApsoeRGzkqbA8z9nC/S4ZdkAFLv3Q5g5a?=
 =?iso-8859-1?Q?8LBDacwV4yOcddUI/dcjimW88XzXueDUjf+1X17SLfLT/Ho4e7LTbs3i+y?=
 =?iso-8859-1?Q?0Em9gOZ9y62LT8qtK7BGY/HV79J3qLo/pTfC2ZqQ1kOltu8Msv1bMeHvP2?=
 =?iso-8859-1?Q?8saE6T/HbygzWv19z4ueRo0k3mSpWEOpOfnv54oK/D+Ahy0vTE2yqBamSA?=
 =?iso-8859-1?Q?MbSPHYtuNmSXxRv2HHZB3dq964eJnCSQsJWMTmW1XjFPxvFH0gpyCWo6Z4?=
 =?iso-8859-1?Q?pjH7yQp40Vsu3BI5Rbjd0TiEqy5EFmT/m4WQ8ahpGXkZPgtNbXTMp6F8OP?=
 =?iso-8859-1?Q?yuhdS2susDA2W1VN7Q2fQBKQigyYye7g0fgPZo1IIO4+5AiMx6NAggPqiq?=
 =?iso-8859-1?Q?SoE7pu7NpcewFrV7z/yxyxNKI060KxtAJ15pUZq5fbyBzh/VVPp3QcLnD5?=
 =?iso-8859-1?Q?5dkKFGHa8cKzv2K5XSV62g7zF8kwTWyuNftcQW2PERuthJiW7ZcWlGMSiY?=
 =?iso-8859-1?Q?+m5csqhBXini176FwK9dDRjIUjhA7VPDF7BqvD6h2jF/kUbF5bSHEia9Pq?=
 =?iso-8859-1?Q?XMWKZpugqub1Py8XtAzLMN29wJdSmf672tDMHLPCPP7q5dtjTDuwzO+i8C?=
 =?iso-8859-1?Q?FU8/lgfEUvSe2jtJcvh2ULpfQZKj4lsO7WDXaR/gahc8sEWI6kGh7L8YOT?=
 =?iso-8859-1?Q?ojXSUKo8d+sE7oS8PLByQwWY6NTMib4mDESzYh7Kl3Y8NjK8LZo00wLfft?=
 =?iso-8859-1?Q?XouJaH2DrUjmqDyvuJ7+htVRksxiyrwZhBecZg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?yh8SRN04MtlCgfwuSc7SRkNvt15EHAJX2tQydBzWzVjJKXSmSwgctHD8Qr?=
 =?iso-8859-1?Q?xBptblJ/ArBu94KBu/dig2I3qm5TPglg5ygRguXQbusnH7pvmAinpErAsf?=
 =?iso-8859-1?Q?OeEyOexAAeEBSKKkzcLW//k1H5cWIucLHkXG5rb2QVQ5jJFnnuPg87fUwX?=
 =?iso-8859-1?Q?EyYsV5uldz6NuAuLMmbP6gRs4Gww8shrlJEdH1t51ffb/jWYdkR1Ot+TJj?=
 =?iso-8859-1?Q?zhMdjYWT0V+/LvZ+Sg1f13UhmViLqFKKlyUtim1s/pFTQ0SPOitrBH2BhO?=
 =?iso-8859-1?Q?bXHQP05Qr+a9Yz9ImK/LGkZiuHY7Ym8Y4F8jneZ9ubIJGDKeMF7yCDXpqT?=
 =?iso-8859-1?Q?sXxAfn/NCgI0foqzhZfQB3zCgjdPQybPvew7QVnbYISAI1gOH6wR9+TlXp?=
 =?iso-8859-1?Q?FjlHXqhczYOROA2h+4+eD6nChYVhDU4pzPJ0kB+Ut/tYqTdP5cbbtGjau7?=
 =?iso-8859-1?Q?stb/gxIyxedN3ho+LsyFbsb/4VX+g0kV4lNJfBz0r/UjINJE2fKBQAIuts?=
 =?iso-8859-1?Q?xJ+Wju5doR7WcvVTlJcKggA1bHenEwskVlAj83pq4DYZZeQmHY54pWONaE?=
 =?iso-8859-1?Q?fy6u0JQ53EnDkKPIjKvhW/dcdJz46KQZvV8tKsSYMHiu9zq8u1/c+Wwbi+?=
 =?iso-8859-1?Q?QkVot9wyGd8jwyAIAW84gUol7yybjH6GJ5JVaf2QhnNpy5YZaxaqwH8zWz?=
 =?iso-8859-1?Q?ZUIg4OAcs+ZQetPfSBtVSegR6EgghztNEyN4K444RZB+/CNVUC1UUP/vPj?=
 =?iso-8859-1?Q?4fYOgvKRZP/soRUqRuTbfuucjM9F0ZLU4iGOt5vt51QaRVeTkQJcr/+CAD?=
 =?iso-8859-1?Q?I88x4tz+CUU1FinFvf2J0vfYLULEyimEWu8eyHzAwc1Gj3hi1gAM3dbbP5?=
 =?iso-8859-1?Q?1BZLEob0evx7U/Q0+qpyHKePYzHU0ukqYCZhieLp+QBFcKPeRT+Jf/EA/P?=
 =?iso-8859-1?Q?L8sGIJn8jWPVhL83x9T7XnJpH7YqS/4pDqNTcI/sz4e0ysamCGFCJNDXad?=
 =?iso-8859-1?Q?IIMQv0KdifIahGm6x37ZBhZc6QWOHWBDrCDT8mzClZn2K75yHd90qwgjCV?=
 =?iso-8859-1?Q?f4+FqDBuzxwpxJKZrzVBq+ev7BZdett7V0fZEzXBMa3k0Zd6EPceQOROsP?=
 =?iso-8859-1?Q?R6E1XcgUAGjE4ye8Ne0EzVS/T4nqgltflMwYTcoo1CHdg/sY951yPuGaT9?=
 =?iso-8859-1?Q?qf4j6UhUpLDW9lrmxH2Hr9/us1FfQgoLY2VjLHAGDkC8oq2dydpIt1VlSK?=
 =?iso-8859-1?Q?K8PUA5hhBcKwiMdTfbVl6HgJJmWsgRcqt0ZVRWgO+jb8PJ0xoPL+KxJYrL?=
 =?iso-8859-1?Q?hVu/+7gKJL9f9UCsKmVyXroX8bZFgQ+I9MdKpbjE6Pc6WO18IzL/2b8o27?=
 =?iso-8859-1?Q?cEqkdiLzxzAS5X7kYoiO19f08qsvNt/HwhpUFhA94QvJumkXRxm81pfORH?=
 =?iso-8859-1?Q?eE0SpqHgr78MaJ1MEvCwEHZGqzcT8dtsKIjZFAlhs5qbv2YeGD19pJ2AbJ?=
 =?iso-8859-1?Q?djr+6US3xkxHJEycDXWpYcI2fKtSCEHgmrvbVHakIZUmNZBkjAeGwo3BvN?=
 =?iso-8859-1?Q?PZ/Pse4kBPEO1JQsU8hZXk3Qv8kBA+/yQyhnq0KyUMqeRG29fTpjFlUpJt?=
 =?iso-8859-1?Q?x0/2HY2PUZOKXalpejqD/kcvpsnCXiToAc?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 451d83ff-f74b-4480-1906-08dcc1f1b293
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2024 14:58:20.6884 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iEIGs4RJCjtSuAYTD6WrPSwn2houiteUaWQDRZhGbqRUfGPKc09rTb7hvlXyVvhlwyhxaORqpm4O2vv6q8thLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6047
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, July 5, 2024 11:09 PM
> To: Manna, Animesh <animesh.manna@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 11/14] drm/i915/dsb: Allow intel_dsb_chain() to use
> DSB_WAIT_FOR_VBLANK
>=20
> On Fri, Jul 05, 2024 at 03:58:32PM +0000, Manna, Animesh wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Ville Syrjala
> > > Sent: Tuesday, June 25, 2024 12:40 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [PATCH 11/14] drm/i915/dsb: Allow intel_dsb_chain() to use
> > > DSB_WAIT_FOR_VBLANK
> > >
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >
> > > Allow intel_dsb_chain() to start the chained DSB at start of the
> > > undelaye vblank. This is slightly more involved than simply setting
> > > the bit as we must use the DEwake mechanism to eliminate pkgC
> > > latency.
> > >
> > > And DSB_ENABLE_DEWAKE itself is problematic in that it allows us to
> > > configure just a single scanline, and if the current scanline is
> > > already past that DSB_ENABLE_DEWAKE won't do anything, rendering the
> > > whole thing moot.
> > >
> > > The current workaround involves checking the pipe's current scanline
> > > with the CPU, and if it looks like we're about to miss the
> > > configured DEwake scanline we set DSB_FORCE_DEWAKE to immediately
> > > assert DEwake. This is somewhat racy since the hardware is making
> > > progress all the while we're checking it on the CPU.
> > >
> > > We can make things less racy by chaining two DSBs and handling the
> > > DSB_FORCE_DEWAKE stuff entirely without CPU involvement:
> > > 1. CPU starts the first DSB immediately 2. First DSB configures the
> > > second DSB, including its dewake_scanline 3. First DSB starts the
> > > second w/ DSB_WAIT_FOR_VBLANK 4. First DSB asserts
> DSB_FORCE_DEWAKE
> > > 5. First DSB waits until we're outside the dewake_scanline-vblank_sta=
rt
> > >    window
> > > 6. First DSB deasserts DSB_FORCE_DEWAKE
> > >
> > > That will guarantee that the we are fully awake when the second DSB
> > > starts to actually execute.
> > >
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dsb.c | 43
> > > +++++++++++++++++++++---  drivers/gpu/drm/i915/display/intel_dsb.h |
> > > 3 +-
> > >  2 files changed, 40 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > index 4c0519c41f16..cf710f0bf430 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > @@ -130,8 +130,8 @@ static int dsb_vtotal(struct intel_atomic_state
> *state,
> > >  		return intel_mode_vtotal(&crtc_state->hw.adjusted_mode);
> > >  }
> > >
> > > -static int dsb_dewake_scanline(struct intel_atomic_state *state,
> > > -			       struct intel_crtc *crtc)
> > > +static int dsb_dewake_scanline_start(struct intel_atomic_state *stat=
e,
> > > +				     struct intel_crtc *crtc)
> > >  {
> > >  	const struct intel_crtc_state *crtc_state =3D
> > > pre_commit_crtc_state(state, crtc);
> > >  	struct drm_i915_private *i915 =3D to_i915(state->base.dev); @@
> > > -141,6 +141,14 @@ static int dsb_dewake_scanline(struct
> > > intel_atomic_state *state,
> > >  		intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
> > > latency);
> > >  }
> > >
> > > +static int dsb_dewake_scanline_end(struct intel_atomic_state *state,
> > > +				   struct intel_crtc *crtc)
> > > +{
> > > +	const struct intel_crtc_state *crtc_state =3D
> > > pre_commit_crtc_state(state, crtc);
> > > +
> > > +	return intel_mode_vdisplay(&crtc_state->hw.adjusted_mode);
> > > +}
> > > +
> > >  static int dsb_scanline_to_hw(struct intel_atomic_state *state,
> > >  			      struct intel_crtc *crtc, int scanline)  { @@ -529,19
> > > +537,44 @@ static void _intel_dsb_chain(struct intel_atomic_state
> > > *state,
> > >  			    dsb_error_int_status(display) |
> DSB_PROG_INT_STATUS |
> > >  			    dsb_error_int_en(display));
> > >
> > > +	if (ctrl & DSB_WAIT_FOR_VBLANK) {
> > > +		int dewake_scanline =3D dsb_dewake_scanline_start(state,
> > > crtc);
> > > +		int hw_dewake_scanline =3D dsb_scanline_to_hw(state, crtc,
> > > dewake_scanline);
> > > +
> > > +		intel_dsb_reg_write(dsb, DSB_PMCTRL(pipe, chained_dsb-
> > > >id),
> > > +				    DSB_ENABLE_DEWAKE |
> > > +
> > > DSB_SCANLINE_FOR_DEWAKE(hw_dewake_scanline));
> > > +	}
> > > +
> > >  	intel_dsb_reg_write(dsb, DSB_HEAD(pipe, chained_dsb->id),
> > >  			    intel_dsb_buffer_ggtt_offset(&chained_dsb-
> > > >dsb_buf));
> > >
> > >  	intel_dsb_reg_write(dsb, DSB_TAIL(pipe, chained_dsb->id),
> > >  			    intel_dsb_buffer_ggtt_offset(&chained_dsb-
> > > >dsb_buf) + tail);
> > > +
> > > +	if (ctrl & DSB_WAIT_FOR_VBLANK) {
> > > +		/*
> > > +		 * Keep DEwake alive via the first DSB, in
> > > +		 * case we're already past dewake_scanline,
> > > +		 * and thus DSB_ENABLE_DEWAKE on the second
> > > +		 * DSB won't do its job.
> > > +		 */
> > > +		intel_dsb_reg_write_masked(dsb, DSB_PMCTRL_2(pipe, dsb-
> > > >id),
> > > +					   DSB_FORCE_DEWAKE,
> > > DSB_FORCE_DEWAKE);
> > > +
> > > +		intel_dsb_wait_scanline_out(state, dsb,
> > > +					    dsb_dewake_scanline_start(state,
> > > crtc),
> > > +					    dsb_dewake_scanline_end(state,
> > > crtc));
> > > +	}
> > >  }
> > >
> > >  void intel_dsb_chain(struct intel_atomic_state *state,
> > >  		     struct intel_dsb *dsb,
> > > -		     struct intel_dsb *chained_dsb)
> > > +		     struct intel_dsb *chained_dsb,
> > > +		     bool wait_for_vblank)
> > >  {
> > >  	_intel_dsb_chain(state, dsb, chained_dsb,
> > > -			 0);
> > > +			 wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0);
> >
> > As per commit description and current implementation always need
> DSB_WAIT_FOR_VBLANK. Just wondering is there any scenario where will
> pass false through wait_for_vblank flag to  intel_dsb_chain()? If no can =
we
> drop the wait_for_vblank flag?
>=20
> Shrug. For now I wanted to model it on intel_dsb_commit().
> I'm actually thinking of removing the wait_for_vblank stuff from
> intel_dsb_commit() after this lands. We could think about making the
> wait_for_vblank unconditional for intel_dsb_chain() at that point, assumi=
ng
> no one comes up with a use case for the immediate start version.

As I understood the whole concept of intel_dsb_chain() is based on DSB_WAIT=
_FOR_VBLANK which should be unconditional and always true.
Not sure is it really needed to add in this patch series and later again re=
moving it. So, I was waiting to see your next patch series related to plane=
 update using DSB.
For now, with the modification to make it unconditional the other changes l=
ook good to me. Good to understand your plan on this.

Regards,
Animesh=20

  =20
>=20
> --
> Ville Syrj=E4l=E4
> Intel
