Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F01A49D7C
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 16:31:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8017C10ECEC;
	Fri, 28 Feb 2025 15:31:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UFwyZJgm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 521DE10ECDB;
 Fri, 28 Feb 2025 15:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740756705; x=1772292705;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ifJsLVHHzeqN7puhdzLq4LK+E6BzutrL+xdEliO1u1E=;
 b=UFwyZJgmDAea5AwTXD1I9Z5TXr4P5Bplx/WCucwvVU/4Z7JmFvVKcutq
 8AbwahtUeHtobZkYquDCl/J3OMEuCwpLuTeJEtuU7wDDC0H1FqvkpI5E+
 yLGJYrLtz/808ZvBqrAGGq3Mrs5cWakWOTF/dH/YNHhg+sPBd+1YLJyTM
 ynYtV4MteTMBWFKeuczr5gw4f90GvsL0ysT0e8DQi5+qQndGJPlM7D4Z+
 xxxKFc1ydltcU1IhEA8a7WWG557KNZ3HFiq1B14pOUPvfcDIN5X+CZyal
 DB1PQ58ujXsMG42XIp/SnrL8agkP4AkwzniswysEYZRaI5rYjmcg4uPn0 g==;
X-CSE-ConnectionGUID: RYdrd+yaSl6aMGRoGzoF4A==
X-CSE-MsgGUID: npFyckWXS1u5mFNg/aYzrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11359"; a="41575069"
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="41575069"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 07:31:43 -0800
X-CSE-ConnectionGUID: yKNzBwoPSXWeeecl3x2jjA==
X-CSE-MsgGUID: pDIqK/YZQYqrqPnhg/FQUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117888452"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Feb 2025 07:31:44 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 28 Feb 2025 07:31:43 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 28 Feb 2025 07:31:43 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Feb 2025 07:31:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OsXor1a9jFBsYrmNAoU9d53K78cBzLPkW1y8F11wUtxS3UN01ee25jum4dJIwj+rvBDq78g5xPQWlYXQGaTCbCRyleb9HtxDzGDwGOuKjCbEINXDnpCHcNwYMwaKAhwuRQZTFzZo7+N8dRpb1TT9ca+JnAHUXmGEqntKhL7CcOUCHjWBTAXL6LCpHLm90cqv1ZgG4+QiE/6x5jGzPktyRkvvgsksLs2IatyIjHLeXOw4voME4eEGimC0fpWGAudxKT9Nt6wcO/uDkQh+HheTj15t2C4HiSvL6q0JlQWxvS/yaiIfFvO7ISrdFyoVCSyCDkunUxtj8M3+8WH+ajJOtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XKZaNQO6NEyqsOHm3lu6kKpTZg7NmJpzhHPo3B820Hk=;
 b=ba6YYTeA8VWN8SABPQT8PSHgnZI19mpejhoK1uvzzuuAC30QhhKhA1uv48UiuYwWXY6vMRMQM1zO7qpTH42kNxSVFgu1RdQT5IFus6svXNdDaeQ6QP8lYajfduLwRwxHaWimuEJER8but9ENnEFkTHPLo522Y1hX9UjHJZknGF9f80iTWvkrRdi5+7XjfFdBKkAHd32eKBAeFdIlaZ1bmDv0ZHZm6rFkQuIHl3IqGhsvPaedWGXT6wdeonWtGHFKJ1QKuy+BV+N+SBVoxkJ36zqUaexsz9iM50FsF39cxJTwysN5DRfYCpqCrqBcUddarUblwTffHKnmAMrVVeIOYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY8PR11MB7290.namprd11.prod.outlook.com (2603:10b6:930:9a::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.18; Fri, 28 Feb
 2025 15:31:39 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%5]) with mapi id 15.20.8489.021; Fri, 28 Feb 2025
 15:31:39 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>,
 "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 05/11] drm/i915/dpll: Move away from using shared dpll
Thread-Topic: [PATCH 05/11] drm/i915/dpll: Move away from using shared dpll
Thread-Index: AQHbh1ynxA6dtsvJ7kaK/vE1vKqgv7NXtOSAgAAA15CAAA/7gIAAX+cAgALNcwCAAdfbgIAAEMrg
Date: Fri, 28 Feb 2025 15:31:39 +0000
Message-ID: <SN7PR11MB6750E346CE1E741FE225D52CE3CC2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250225080927.157437-1-suraj.kandpal@intel.com>
 <20250225080927.157437-6-suraj.kandpal@intel.com> <8734g276o6.fsf@intel.com>
 <SN7PR11MB67507C9052363FC4E8E34450E3C32@SN7PR11MB6750.namprd11.prod.outlook.com>
 <SN7PR11MB6750A509052EF04B959BA7C1E3C32@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87ldtu59fb.fsf@intel.com>
 <SN7PR11MB67505D632A7CCE485E8FB81FE3CD2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <Z8HHsZbQWxr04C9k@intel.com>
In-Reply-To: <Z8HHsZbQWxr04C9k@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY8PR11MB7290:EE_
x-ms-office365-filtering-correlation-id: fcc5dcee-64d9-4d14-3d56-08dd580cfefe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?UPmkcX/xfTrU5P9BJHkYfdkm//pCJM2UMj0MRuy9vMOLzM9CBTTv5ja3yX?=
 =?iso-8859-1?Q?seBRWgg4ztN1qc6lG8lXU8sN4P96ecGTGhnDF/y4JvvoKA9peYEIRg3lz7?=
 =?iso-8859-1?Q?d+W23nVxeob6wG0AcP0CeZ5AkhHvYPUBM3G4aFsSYic78xn9HJ618INTTe?=
 =?iso-8859-1?Q?mgjqSqVde6iW9YACvqN3OquZEYMYhcWNNctyophw28LAaXVxoWWCu5iS82?=
 =?iso-8859-1?Q?LU0irmPh1682XA98xdKlWvnyQXv+D0XqjKMwqa4S0FkPDmeGb6kM2ZvV+a?=
 =?iso-8859-1?Q?WfjwGQqMDT26fOoRX/eJucvQVTpVqmDa3FZJNF4zN/M0l7HXF9HLiVabjX?=
 =?iso-8859-1?Q?rS4dNq4xzHGd77VXkf3CdEIECnyYiO82O7Vi8TH8zHTVvFWAU/j6qDc7PM?=
 =?iso-8859-1?Q?hJVy/BFFDY6onhEtJ1Y40Z4eUH/gG/PUz4Hl7DLYUXyKhPPTdBjmTjgA08?=
 =?iso-8859-1?Q?nQnlH0cmFll4OICL0XNBt00P/WobmoVclnznvOGu1GeAvtRysDq9tKyqwt?=
 =?iso-8859-1?Q?FNnfM9GadoVna81iK/abJgDgrKFfw0biev0x8t+7eeRjlH4PFh1vcsssF6?=
 =?iso-8859-1?Q?IB3b2bAzt9ewHTAf+mNzyvhvXy4OVcRdc7Om67MDq2lD8IbcRBQo+5xwCF?=
 =?iso-8859-1?Q?RCFPVcgfqkuAoiuMOXQP/W1JLA/ePehky26MnrJ4PETIYbt8sMjUBG3sRc?=
 =?iso-8859-1?Q?bHJiWrXueQu8pmDtSRTImEb2yZjqtQYVEax5HqkBakNiGdelbZIcItHtLW?=
 =?iso-8859-1?Q?a2ZJT9EsiHvLf901hPtTP2UumsEZxBCIF4R2v4bPhKJWDLWytl9aqKpfDd?=
 =?iso-8859-1?Q?4yw3SwMd0eNGpbSPbt9uI45zz0D6A0ha+Ojgqwjs+2d9z9t+l0uRWRwVIO?=
 =?iso-8859-1?Q?DhfHNgOkoTncyFTblWAQ3n5l9Uuasbib7M7qi6qJ95T+tO+JlRLtTOeoFw?=
 =?iso-8859-1?Q?KsUC6WCUhghGPEsnKv5wn44Vt9l9J9GXgPmUaDVzseeYrIjymQcoVoiK7c?=
 =?iso-8859-1?Q?mmZFll7dpETtdSJz9t+xbSqg0q7yeGsTlGktKT/FvqeimZJcvv+Pd+rlJo?=
 =?iso-8859-1?Q?MR5b4IgkUL8XkVW6SuvyxrsJ2JT+Svty5nGRfKUqF475D/c2xj8q5b8cEc?=
 =?iso-8859-1?Q?/DLrB4MJNPQOMvfGYRZJ1pnZDI1qCEr47+B80/P2E01rXlx6oM4oHSVquB?=
 =?iso-8859-1?Q?0+VAzh9/IjkGFDpyAJ7wPbYxIIR5i1UDQAAFovxRQRlaO8kSNkTFQjMa1W?=
 =?iso-8859-1?Q?4KjXwWH4nDoKKWnoU6oyknGBqtb900CWD+8c29vzMn2QYXcTU49v6L85Dz?=
 =?iso-8859-1?Q?MPY2IRPq7SFXqqjzyANrvjl/Wozm1xWcWZJBlTaDYTPDMcYw44iwsuE8rZ?=
 =?iso-8859-1?Q?p0BeueS0lRB944MnW1LjP2OKhNz//xFyZawKSu31WoJa40CzROHHKgsmTK?=
 =?iso-8859-1?Q?u2UXoLofZaMgr8wlSeeAxUMxxinHTlRfBvZs//O4/NpndhRepn2X7qOBRs?=
 =?iso-8859-1?Q?FFdA5iFkK6imX6kaPUtMxz?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?GG5RzEMT42VsBiTt3ujcWMCiB1h/0Bt2wZsVMwiZaNMY3djBI6/r0n/zek?=
 =?iso-8859-1?Q?RbO0LrkpZG6H3LZ0DFPVsiSmAvymCGRLZPCRtFnQPXSI82e5tHEpYqXw9v?=
 =?iso-8859-1?Q?ttblN2P+GoBwfKo0Fk1P1PcGsWX1r2IA1TBFXPK0q0uZeIeTcVcVopZlL/?=
 =?iso-8859-1?Q?X+/PRO48DloAW7lOnC9ENk9iKsYWz03E1GBUhAQp3r0a9g1I1tZRRgFBKQ?=
 =?iso-8859-1?Q?Ulelow/IBV1nBzYXp/1bNnxdAsjvI/PmGPBzkauO0VZOZ1FeZUzMa7q7xA?=
 =?iso-8859-1?Q?vWxJAyc8dvdT2z6XAWEJH+ll+gsL9heN+XVgMYksXIn4tj7c7XdQ9PDyXB?=
 =?iso-8859-1?Q?zts7EmZfykPutbIw9zTdusYrNUxm23cius4O8mgquCEFLZjRnXstSnu0Fj?=
 =?iso-8859-1?Q?9DfkOGwT7w84Q82KQZtAQBl2PsIRJYBPKcwmEDUZTA8p7htjEtCRbcOm3a?=
 =?iso-8859-1?Q?gaoDdELM9EhCF4MsPjpTrHZ8/k4ycX08vKdkfzzatNmk0WUWTkK0HEVCBK?=
 =?iso-8859-1?Q?T7fzPqY7YPc41ax2goJVHtILgLsemGFQ52VvaHK6lvlwO6V1V/4CAAzt+n?=
 =?iso-8859-1?Q?wOmSsFN9tSsl4z1VvOQDvPR9D/53MA7fBu4vsepUhLUohXu081LUUR1vCh?=
 =?iso-8859-1?Q?zpd3zPo77VzNDICVW7iGkB/ejrW20D1/hFIkk37pQhm5WQg9jU+du7xOC+?=
 =?iso-8859-1?Q?5mnnryUK9b7MkvHRj1B/rOUbQ2OqKJkOplp4tEZ3sSzy9lUDX1eaD5QMPx?=
 =?iso-8859-1?Q?e2fZzH8odGgDYaiayIY9MbwajszdnOy2sgMfPzzs7zcZC6NIPAOydvkAZZ?=
 =?iso-8859-1?Q?I2XAQ11FJ34IF7fBofLdRx8t2A0V2H8uOFep3DjZewmZgloqBG6NDF8CHX?=
 =?iso-8859-1?Q?Aa2di7Jg6Bf6PdyD0wcPGrF/jVgtpjJFY5/dHJ/bGyGso0a6rJBuvggNt/?=
 =?iso-8859-1?Q?w+oV13EBLbuOg7uinzcbdXztjBezinqIESaO7DwvFC++NsVCzVi7V5StA4?=
 =?iso-8859-1?Q?uPgf2nrzkGjrUP6jdpJV33JZHnUwdvzhH+/4ihtNO8Z1kdZEpILC53Nmoo?=
 =?iso-8859-1?Q?+1iOmz2ka5dpMKYRXv56P9zMLoIUoXl9Ez5Wh6QIWd0XpyndlAoW6zmwgd?=
 =?iso-8859-1?Q?kKyduJ3PrLSEuSVuvTfBIkTMi12TcES2nBvu5JwuSn/Fo1hzDU0MuQ00B1?=
 =?iso-8859-1?Q?6P6Qx/tKHupgNoJGROR9v75YSzcUXB36aoCJbuB0k+7ow13DFWKMX4WcoQ?=
 =?iso-8859-1?Q?pTgJQYUlYXrrX/5osSgfNmHV2afMctvAcAOiUn7wxmSe7dGclJjTZ0C766?=
 =?iso-8859-1?Q?sgux7SoNbIXXeR7Kl4zC+Kqhwspm44Nis5cDkcpxXiikomeasFZUcvhfXJ?=
 =?iso-8859-1?Q?n5xZLx8vNWFJWFz5lmJ6SrClVVAV00aww13gjWMLZpfFkoEsAiQePHQh47?=
 =?iso-8859-1?Q?5okJx1qFgQGVqlF99EmA5w/vX2YeTVd7s6KA9QwsQ6FA62lFFWTOHj8hlC?=
 =?iso-8859-1?Q?dCIuXSb+1VI1iYP5cqlp36v1XOP0UiykctIdYAufiZDV+4UfsUcdFSkqbH?=
 =?iso-8859-1?Q?+gWh7yRWC2aO9K9EY2dD1pTbHsjQTKLgWdaXfU0fRbi9JitZQOwZipzrwD?=
 =?iso-8859-1?Q?B9BsLEkYW6ncoaDFEgSbXs7cRpd+x3AtRv?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fcc5dcee-64d9-4d14-3d56-08dd580cfefe
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2025 15:31:39.7279 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0JSTx6DQa2sWX0FGAqmCm9oMKEJXh6DlF3Qbg1fcHtFF3g/V54jCWutLb4UgIHF4yg2uDbxm/Gxp8t8yPZOlZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7290
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
> Sent: Friday, February 28, 2025 7:57 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>; intel-xe@lists.freedesktop=
.org;
> intel-gfx@lists.freedesktop.org; Syrjala, Ville <ville.syrjala@intel.com>=
;
> Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kahola, Mika <mika.kahola@intel.com>
> Subject: Re: [PATCH 05/11] drm/i915/dpll: Move away from using shared dpl=
l
>=20
> On Thu, Feb 27, 2025 at 10:18:31AM +0000, Kandpal, Suraj wrote:
> >
> >
> > > -----Original Message-----
> > > From: Jani Nikula <jani.nikula@linux.intel.com>
> > > Sent: Tuesday, February 25, 2025 9:00 PM
> > > To: Kandpal, Suraj <suraj.kandpal@intel.com>;
> > > intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org;
> > > Syrjala, Ville <ville.syrjala@intel.com>
> > > Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> > > <uma.shankar@intel.com>; Kahola, Mika <mika.kahola@intel.com>
> > > Subject: RE: [PATCH 05/11] drm/i915/dpll: Move away from using
> > > shared dpll
> > >
> > > On Tue, 25 Feb 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote=
:
> > > >> -----Original Message-----
> > > >> From: Kandpal, Suraj
> > > >> Sent: Tuesday, February 25, 2025 2:25 PM
> > > >> To: Jani Nikula <jani.nikula@linux.intel.com>;
> > > >> intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > > >> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> > > >> <uma.shankar@intel.com>; Kahola, Mika <mika.kahola@intel.com>
> > > >> Subject: RE: [PATCH 05/11] drm/i915/dpll: Move away from using
> > > >> shared dpll
> > > >>
> > > >>
> > > >>
> > > >> > -----Original Message-----
> > > >> > From: Jani Nikula <jani.nikula@linux.intel.com>
> > > >> > Sent: Tuesday, February 25, 2025 2:17 PM
> > > >> > To: Kandpal, Suraj <suraj.kandpal@intel.com>;
> > > >> > intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > > >> > Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar,
> > > >> > Uma <uma.shankar@intel.com>; Kahola, Mika
> > > >> > <mika.kahola@intel.com>; Kandpal, Suraj
> > > >> > <suraj.kandpal@intel.com>
> > > >> > Subject: Re: [PATCH 05/11] drm/i915/dpll: Move away from using
> > > >> > shared dpll
> > > >> >
> > > >> > On Tue, 25 Feb 2025, Suraj Kandpal <suraj.kandpal@intel.com> wro=
te:
> > > >> > > Rename functions to move away from using shared dpll in the
> > > >> > > dpll framework as much as possible since dpll may not always b=
e
> shared.
> > > >> > >
> > > >> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > >> >
> > > >> > ...
> > > >> >
> > > >> > > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > > >> > > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > > >> > > index 6edd103eda55..ef66aca5da1d 100644
> > > >> > > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > > >> > > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > > >> > > @@ -387,24 +387,24 @@ struct intel_global_dpll {  #define
> > > >> > > SKL_DPLL2
> > > >> > > 2 #define SKL_DPLL3 3
> > > >> > >
> > > >> > > -/* shared dpll functions */
> > > >> > > +/* global dpll functions */
> > > >> > >  struct intel_global_dpll *
> > > >> > > -intel_get_shared_dpll_by_id(struct intel_display *display,
> > > >> > > +intel_get_global_dpll_by_id(struct intel_display *display,
> > > >> > >  			    enum intel_dpll_id id); -void
> > > >> > > assert_shared_dpll(struct intel_display *display,
> > > >> > > +void assert_global_dpll(struct intel_display *display,
> > > >> > >  			struct intel_global_dpll *pll,
> > > >> > >  			bool state);
> > > >> > > -#define assert_shared_dpll_enabled(d, p)
> > > >> > > assert_shared_dpll(d, p,
> > > >> > > true) -#define assert_shared_dpll_disabled(d, p)
> > > >> > > assert_shared_dpll(d, p, false) -int
> > > >> > > intel_compute_shared_dplls(struct intel_atomic_state *state,
> > > >> > > +#define assert_global_dpll_enabled(d, p)
> > > >> > > +assert_global_dpll(d, p,
> > > >> > > +true) #define assert_global_dpll_disabled(d, p)
> > > >> > > +assert_global_dpll(d, p, false) int
> > > >> > > +intel_compute_global_dplls(struct intel_atomic_state *state,
> > > >> > >  			       struct intel_crtc *crtc,
> > > >> > >  			       struct intel_encoder *encoder); -int
> > > >> > > intel_reserve_shared_dplls(struct intel_atomic_state *state,
> > > >> > > +int intel_reserve_global_dplls(struct intel_atomic_state
> > > >> > > +*state,
> > > >> > >  			       struct intel_crtc *crtc,
> > > >> > >  			       struct intel_encoder *encoder); -void
> > > >> > > intel_release_shared_dplls(struct intel_atomic_state *state,
> > > >> > > +void intel_release_global_dplls(struct intel_atomic_state
> > > >> > > +*state,
> > > >> > >  				struct intel_crtc *crtc); -void
> > > >> > > intel_unreference_shared_dpll_crtc(const struct intel_crtc
> > > >> > > *crtc,
> > > >> > > +void intel_unreference_global_dpll_crtc(const struct
> > > >> > > +intel_crtc *crtc,
> > > >> > >  					const struct intel_global_dpll
> *pll,
> > > >> > >  					struct intel_dpll_state
> > > >> > *shared_dpll_state);  void
> > > >> > > icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
> > > >> > > @@
> > > >> > > -418,10 +418,10 @@ int intel_dpll_get_freq(struct
> > > >> > > intel_display *display,  bool intel_dpll_get_hw_state(struct
> intel_display *display,
> > > >> > >  			     struct intel_global_dpll *pll,
> > > >> > >  			     struct intel_dpll_hw_state *dpll_hw_state);
> -void
> > > >> > > intel_enable_shared_dpll(const struct intel_crtc_state
> > > >> > > *crtc_state); -void intel_disable_shared_dpll(const struct
> > > >> > > intel_crtc_state *crtc_state); -void
> > > >> > > intel_shared_dpll_swap_state(struct
> > > >> > > intel_atomic_state *state); -void
> > > >> > > intel_shared_dpll_init(struct intel_display *display);
> > > >> > > +void intel_enable_global_dpll(const struct intel_crtc_state
> > > >> > > +*crtc_state); void intel_disable_global_dpll(const struct
> > > >> > > +intel_crtc_state *crtc_state); void
> > > >> > > +intel_dpll_swap_state(struct intel_atomic_state *state);
> > > >> > > +void intel_global_dpll_init(struct intel_display *display);
> > > >> > >  void intel_dpll_update_ref_clks(struct intel_display
> > > >> > > *display); void intel_dpll_readout_hw_state(struct
> > > >> > > intel_display *display); void
> > > >> > > intel_dpll_sanitize_state(struct intel_display *display); @@
> > > >> > > -437,6
> > > >> > > +437,6 @@ bool intel_dpll_is_combophy(enum intel_dpll_id id);
> > > >> > >
> > > >> > >  void intel_dpll_state_verify(struct intel_atomic_state *state=
,
> > > >> > >  			     struct intel_crtc *crtc); -void
> > > >> > > intel_shared_dpll_verify_disabled(struct intel_atomic_state
> > > >> > > *state);
> > > >> > > +void intel_global_dpll_verify_disabled(struct
> > > >> > > +intel_atomic_state *state);
> > > >> > >
> > > >> > >  #endif /* _INTEL_DPLL_MGR_H_ */
> > > >> >
> > > >> > If you're renaming almost everything anyway, I'd appreciate
> > > >> > moving towards naming functions according to the file name,
> > > >> > i.e. functions in intel_foo.[ch] would be named intel_foo_*().
> > > >> >
> > > >> > The dpll mgr is notoriously bad in this regard. I'm also open
> > > >> > to renaming the entire file, intel_dpll_mgr.[ch] isn't all that =
great.
> > > >> >
> > > >> > I'm not sure if the term "global" (instead of "shared") was
> > > >> > very well justified in patch 3. Maybe all of these should be
> > > >> > thought out together for the
> > > >> naming.
> > > >> >
> > > >>
> > > >> I agree with the renaming I would have very much have to keep the
> > > >> naming simple something like Intel_dpll_func but that exits !
> > > >> intel_dpll_mgr_funcs but intel_dpll_mgr already has some hooks
> > > >> defined
> > > inside It.
> > > >> I chose global since that way we will be able to represent both
> > > >> PLL using shared PHY and PLL with individual PHY.
> > > >> Also renaming intel_dpll_mgr.[ch] we have a intel_dpll.[ch]
> > > >> making it a problem What if we renamed the file to
> > > >> intel_global_dpll.[ch]
> > > >
> > > > Jani what do you think of this ?
> > >
> > > I think Ville probably has opinions on this. Cc'd.
> >
> > Hi Ville,
> > Any thoughts ?
>=20
> IMO it should just be intel_dpll_*. We want all PLLs to provide the same
> uniform interface for enable/disble/readout/state_dump/etc.
> Whether the PLL is shared/global or not isn't interesting outside the act=
ual
> modeset sequence and PLL selection logic.

But that still leaves us with the question what would be the most appropria=
te way to do away with the
Intel_shared_dpll_* naming what does it become if not intel_global_dpll_* (=
since intel_dpll wouldn't be a
Straightforward answer to this) intel_dpll_global ?=20
Can we rename the file to intel_dpll_global that way we can also have all t=
he functions follow the naming convention
As Jani said to intel_filename_foo()?

Regards,
Suraj Kandpal

>=20
> --
> Ville Syrj=E4l=E4
> Intel
