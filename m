Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A0BB416FA
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 09:40:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6A6810E41E;
	Wed,  3 Sep 2025 07:40:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UfKSZSbn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C7DD10E11A;
 Wed,  3 Sep 2025 07:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756885245; x=1788421245;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=STJTZsmIiJH3XRtac1MwWHZSdCyYRDIz620I8AyfugM=;
 b=UfKSZSbnEZe1Hs1tBsjpAjfs8eoCIxlxOoGag0mRBBCK7yWz8dkqcW64
 fTJ0R7gw939SoRj07DB4AHi1iLmrQ8fQ2IKy2TRslSdGWGyE5M5rHGenv
 tPqb9vGIy1sMCN1j0cdWtu+N3x9Ud9wUUhaSDLAzlCZUVVzCLMcf/Jp2t
 Qu2rvpx+FsPKPRI6DUDiVqR+/TFmoBBXdcIX63m17gL9odBe3dSY9pCDd
 mZpQ61WhCGOYI+7TjW4nirvXZ+3xso/0lzRZ2/28ozV7YKDbLC05xKrLO
 sMU26vi69wJcwaYprKouFz028Nq0IFGM1tS8jo5wr+5YesvyWt58F9U70 w==;
X-CSE-ConnectionGUID: ZQcHlY4MRP6KYZlrlfKBUA==
X-CSE-MsgGUID: FGgbNr6qQDy9LM+WL+LQcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="59257246"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="59257246"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 00:40:45 -0700
X-CSE-ConnectionGUID: uRJg1pabSKW+4YS5Yorc3Q==
X-CSE-MsgGUID: KSK7Gqv7SQ+IeTD7hnbzqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="175665732"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 00:40:45 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 00:40:43 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 00:40:43 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.78) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 00:40:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c8y/anC9Mt9BT4zs+2B+imyW0bqZtHSTXabhTaqB6cUpDFeFcYBFte75G0/at4Sl0/TH12wTCbXkf/VBj2QH/xAC+7vPvclSnR7m6wKGD0OCk1Mt6f607txCdwUHdCIkQd7RC5vWvPNcDPKSkjuDrRDrWZnMPXhVIoQjbzsG1MTifp2F/7Ngq2do9Nzj+MWYWC2EV1Ke/l6buz7mAq0ZNvPZi2a8ZtMgtXqneD5799widX2dcfzwHf919TTX9d4wqFcGmX9CufQLAYQGHrF234t+B3idVeA8S6723/kN2AG3F0WeuOCtXHdZum3CuTHfc3nbS6zbfHk/UJHVhkVBLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g68Ca23j2aomFRiKYdaLJ+Hq+CF1f2ml3bm1CA2RvqE=;
 b=dCvYIchiIPNeQzq3dS7PS/yzq3i1WX7J8ZZTtOuspcWt4yCsKmPDi3G3EffBAI0Bmt2qC2+fqCbdbQ6DrGloAEfRDn6Azk1QcirWF1XtfeOYy5OUSy5ZsVj3sd0qpjc/o0mlBwu7Si+Supw3jXj026Hb87X/zB7f/hgiWgUpW4VvEx48eM5Klo62OKala20idOyiP0vox+xk4awWFp6WSGzcSTnT76HJQ2vSYW9c2G1Ycm8Qu84HQXnC51FSB36OAKm7V3boTdhdSRmSYv6c7AKh3ol7sCmXxy3FzZv6sS/X6pYQJNBLPuWLm2DHOf6iMyjsD+Lr7pBGVHxD84+YVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW5PR11MB5882.namprd11.prod.outlook.com (2603:10b6:303:19e::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9073.27; Wed, 3 Sep 2025 07:40:41 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9094.016; Wed, 3 Sep 2025
 07:40:41 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Subject: RE: [PATCH 1/1] drm/i915/display: Remove FBC modulo 4 restriction for
 ADL+
Thread-Topic: [PATCH 1/1] drm/i915/display: Remove FBC modulo 4 restriction
 for ADL+
Thread-Index: AQHcG/wM8z3OI5nBj0Wr6LXcKKjnGbSAiHSAgACKrpA=
Date: Wed, 3 Sep 2025 07:40:40 +0000
Message-ID: <DM4PR11MB6360131F44CBC8973E1B0312F401A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250902113538.269338-1-uma.shankar@intel.com>
 <20250902113538.269338-2-uma.shankar@intel.com>
 <CH0PR11MB5444E377ECA3214907F2BBF5E506A@CH0PR11MB5444.namprd11.prod.outlook.com>
In-Reply-To: <CH0PR11MB5444E377ECA3214907F2BBF5E506A@CH0PR11MB5444.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW5PR11MB5882:EE_
x-ms-office365-filtering-correlation-id: 4a300716-a374-4f6f-4dd2-08ddeabd2eb9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?7trO4PKVmgVNVTqltlVLYmS07N+PpUPcNIs0Kltsx3HUcSpa2T5M6qsLKLTx?=
 =?us-ascii?Q?a7dhjx4GukgsGlbNZeY3NF1miaIUvd7DNmNlX8ZmegNeGlqYcsfLZo4keyXP?=
 =?us-ascii?Q?Bv4diLi/KRG9iXfkBDm2/NIa7dDcHDvztSoPGxos3Re3/JGZ7KsVfusQB2ot?=
 =?us-ascii?Q?lPtNreZnAkS4byxlnU1rkXNYSyHnLENX/nYgDgXLEcWeTQ+GfBOXV8p5E8L4?=
 =?us-ascii?Q?LWRp+pVOZ7V+PimvdTmuljgRxO5XZYhrMYz/j4BmFvzbcTnRpHLp6sXCsRJe?=
 =?us-ascii?Q?p57LG4c8M588goQrAgbY0MYYOkRKdHk6MxjNBHJ1c54CJsc1y2jfGMET0mpl?=
 =?us-ascii?Q?Gf0+8pa4GWhjNC6cBj+rI7j1Ag2IuDtc27FM0R3HqHxUKtid51J9asxSnGZz?=
 =?us-ascii?Q?4+mX/7S1V8B5W8iKY2ab8VZmolJgaPWQTEgC+t42YA6+djus3oGrAY676w6q?=
 =?us-ascii?Q?+NIkKtO6qk1+F/Lc3BWAlDKHbdjvHJrnE321aKAa5UXuzHKt8DsgtwF+QJrD?=
 =?us-ascii?Q?2LXJcuMqgFKzAbY8m+Gn5WXWUMUgaPdyWTt/vkPG3ADrgq/eiEENLJpErFza?=
 =?us-ascii?Q?QU4WnCS2BwSkTgP38K+5Jk5hRPPlNLcn5zKN5u/O0n28oTA9oQw/WgGQkYz9?=
 =?us-ascii?Q?sPMbahvFMjSh9fxrH1tmuLkFn9Hwo3wKhm0O5pTTrz+NIuysp2efUoiogSin?=
 =?us-ascii?Q?VuJN1dDMuQoDzK2MNcfj2EFvYfTA45Fgg1QfWvoeX4j4FDHA2/44pOIoqK5L?=
 =?us-ascii?Q?/Cgtqqa3WpIfjNFylKBYgLf9k0/na9RFzeOZhCXVL1aazjBUhjQcsx1z8fll?=
 =?us-ascii?Q?/Sf80Mf2I2a6XoP9ZI65LORC9uUu7hboWsfg6YBjkTXdXAEd/fyLR/1Dfy+X?=
 =?us-ascii?Q?hgjZzVhygCjksKJ3tSgg0p/h0dROhJSZSTuydaaZJV3+8wheKYRa15Fzba5a?=
 =?us-ascii?Q?5FdNNf93OzmwE8Ps3Ke71vPY4GQMnKmt6uPkUOtX8Grwie0O8yia2jk/Erw3?=
 =?us-ascii?Q?s3uLd+C8r6S51Ktz4bVm07cs4IDE9tkAoDs9x22fKLhpT5YCfoLeDIvoqXtm?=
 =?us-ascii?Q?eKoXZPpBW3mQ10JDLNn4ZRo/Dd90yWzc3MH1l7Hf2VLtUqFkMg9jD7yYyvTs?=
 =?us-ascii?Q?vbeaUiR1He52whSd40P3VUEWFWqXX8JNqH3+Uwwai5OnJD3PFCEFbBGGoZ8q?=
 =?us-ascii?Q?JnPOf6vlH71v6WVZhRzJG1fIJP/yUsVSZyi5jKHyLfaYQ4QFYBmjCagr6BOp?=
 =?us-ascii?Q?jSgFPHQ/wfe+Ag1De/wUqG66m0qew8igBSBinFaxiC/+zqHldEZ7RyXqtnds?=
 =?us-ascii?Q?Z/gJUbE4vGdqZ+x6YPBCM/hs7o/T12rFghwt/HOEcAnPsXUulEAvV8ZtkXHl?=
 =?us-ascii?Q?I/3heVXGchx7JyE91t2kuLmoa5T1eV+kw/y8wBEFbkeTVaHQ1fsDsF1WFmg2?=
 =?us-ascii?Q?V3m1SjJ0O0IqebtID9hiy9rsxKPaTjXdzCCNz24Z3TOvq21FrEehXw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mbJGof714g0fkcxy5jR6Gb9vhlwLyhHK1AklgepFjyU6S3BauB3gGl2ovB+i?=
 =?us-ascii?Q?y4awf5SLw++GRNBoI6g3JS9XD3NM5OZzeK/vNEc2ukjbCN5FDwzCVFvQgokk?=
 =?us-ascii?Q?63sxXfFSJ6iDdzj5Dp629+3lLGSFpJeidmp60GOi6AuzPFpLC/dEycVVPjue?=
 =?us-ascii?Q?wLXO9o2PtPC/kGhKVDB8GuZHrIKcsqoVOMAVu40EUlH6lwhnZyppXfJLtYSF?=
 =?us-ascii?Q?f49ylDPuLLCrzIj3j5XImkckfW9Mk0L5yBS5FA1d3gER8eKNbLq2dCsqEw7q?=
 =?us-ascii?Q?13g3rp4ycC3Om0OfqxjpRdTvrJvDTkXRqqMx4uiRGyqY6gpYgZlfKityZKNy?=
 =?us-ascii?Q?Uw08hpbE5qhCsNEqaWKcTiMgaHrmWCf4ITekl0bpx4/B5GgTd1GYw1mbl/ET?=
 =?us-ascii?Q?7VHyhFcFeYk80KTKSWBRzYOt8t8392uwzmA5B/Q2w+feryF8GkIsVeOFq6X3?=
 =?us-ascii?Q?Wo9hu/1PsTTuJGMaBWzztZGtH+N5cntj9utVYeveFi4hi5nsU8wkIsuwwlft?=
 =?us-ascii?Q?addSsk5yliVdv30K7i9vo+EFvber50IKYprP2l02R1hrOAVZuMjc+kwFh0+c?=
 =?us-ascii?Q?l0gUs07tfH9VdiP0ld76iyRFk28UMb2XeeDo+62WCVN7kOgvKmrEtUhhpFIQ?=
 =?us-ascii?Q?sSY2wYN7o58MycQvl3unft+118dTbvyEAZ9H3ddewdV7CadadVePGJHyxQHf?=
 =?us-ascii?Q?rcHX+PWfJ98+o0z/ZrruUZstCnXZo1KTVqovFMEYqGhRqecncn/j3RN2CsIP?=
 =?us-ascii?Q?B6LnDfabA1z7mDXfJyWEhPb/GwXLkUq0HOZ7Rdc1OITBTXbP8F9fyOhaoSsk?=
 =?us-ascii?Q?pbSQ8komg+5Q96w0Lp8+MjGC1Jrqv8P6wKuXyR9L0ZnZbvVM54fF7rU1Tm8E?=
 =?us-ascii?Q?Ab+doKx1aNeJOTRQUTw13uXIOTtH7cGOjplc+jcDlRQdt012Pl5THqg82TcU?=
 =?us-ascii?Q?HEzyTWYk2f32dXG/akvlsqdsxobPaDpq0qIKja7za+OfXDCiu/464bxVaVVb?=
 =?us-ascii?Q?qPCESNvmFiE0be9LnPJpiLrpEj3SKr0OUqPUIJzgsUipdbP4NxqzbR0wEHQR?=
 =?us-ascii?Q?fkXy7aEjWmdUO1bK0XkdubdljHYfZfZ3oVgVBRty65N68w+ZIw3bAgR2SWJh?=
 =?us-ascii?Q?ZfkBX0ETbqmM9hMxWzylBlZjjVxvaESzNhKahKJ6kHsHsQ/jPm3Vo/cwydA8?=
 =?us-ascii?Q?dtzNFQU/5MuAF6nl5LcWRpLosFOkMYc4baaqrD1dN92auEnidoWIaVBsVeF+?=
 =?us-ascii?Q?DfvqBqWcvcJBYQ6HBX/HWk9pILebtfMNNqUf4Gtii3qM3VK4TDvo65YTSdVf?=
 =?us-ascii?Q?fxnVtHpwpo2A55hvZXUg1vMWEgg47g6YPUMPPye4TMtgbFl5xUCBfqpDGFwD?=
 =?us-ascii?Q?2CLFTKFr+3eLG2Z6+UKmNCq2gF74I1bGC4oSkN2Mo3jURCxJkhMsmfs2vsBa?=
 =?us-ascii?Q?PJaiI+gslOpCl1V69VRDK3uNJJ94l/+dSbFvRmtS1wKN0rBLVgYM3ATOhtlK?=
 =?us-ascii?Q?+VB9yNwLvoSfp3cq5+tv7L45ly2DqqZaC0ILHn6UdTkyAdCKsIKvUeZyAVX+?=
 =?us-ascii?Q?GZdiOyWz6XNxZgLV7qv7I2Vr4LHPQuyMFqk1Qxn7?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a300716-a374-4f6f-4dd2-08ddeabd2eb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2025 07:40:40.9705 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ydTr7tY4mZ0E4ZuUwLZAwTDxmy4k0JXBtb+1qa4ykKBKARUp7f28ztQ2CSZI652h31UrUgLy/XrB1b2uFnuLJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5882
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
> From: Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Sent: Wednesday, September 3, 2025 4:51 AM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Govindapillai, Vinod
> <vinod.govindapillai@intel.com>; Shankar, Uma <uma.shankar@intel.com>;
> Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Subject: RE: [PATCH 1/1] drm/i915/display: Remove FBC modulo 4 restrictio=
n for
> ADL+
>=20
> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Uma
> Shankar
> Sent: Tuesday, September 2, 2025 4:36 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Govindapillai, Vinod
> <vinod.govindapillai@intel.com>; Shankar, Uma <uma.shankar@intel.com>
> Subject: [PATCH 1/1] drm/i915/display: Remove FBC modulo 4 restriction fo=
r
> ADL+
> >
> > FBC restriction where FBC is disabled for non-modulo 4 plane size
> > (including plane size + yoffset) is fixed from ADL onwards in h/w.
> > WA:22010751166
> >
> > Relax the restriction for the same.
> >
> > v2: Update the macro for display version check (Vinod)
> >
> > Credits-to: Vidya Srinivas <vidya.srinivas@intel.com>
>=20
> I saw an earlier comment about how Credits-to: is not a trailer we should=
 be using.
> Of the given alternatives, I'd recommend using Suggested-by.
>=20

Sure, will go with the same.

> > Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>=20
> Reviewed-bys should go below Signed-off-bys.

Sure, will update.

> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
>=20
> The commit message here is the same as the commit message for the associa=
ted
> IGT patch, and all my comments there apply here as well.  But for the sak=
e of
> completeness:
>=20
> 1.
> s/ADL/ADL-P
>=20
> 2.
> The phrasing here is a bit difficult to parse and sort of implies the WA =
is the fix to
> the FBC restriction for ADL onwards, which is not the case.  Try [for the=
 first
> paragraph]:
>=20
> """
> WA:22010751166 does not apply past display version 12.  Or, in other word=
s, the
> FBC restriction where FBC is disabled for non-modulo 4 plane sizes (inclu=
ding
> plane size + yoffset) is fixed from display version 13 and onwards.
> """

Thanks for the review and feedback Jonathan, will fix and send updated vers=
ion.

Regards,
Uma Shankar

> -Jonathan Cavitt
>=20
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> > b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index d4c5deff9cbe..9e097ed80bd1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -1550,14 +1550,14 @@ static int intel_fbc_check_plane(struct
> intel_atomic_state *state,
> >  	 * having a Y offset that isn't divisible by 4 causes FIFO underrun
> >  	 * and screen flicker.
> >  	 */
> > -	if (DISPLAY_VER(display) >=3D 9 &&
> > +	if (IS_DISPLAY_VER(display, 9, 12) &&
> >  	    plane_state->view.color_plane[0].y & 3) {
> >  		plane_state->no_fbc_reason =3D "plane start Y offset misaligned";
> >  		return 0;
> >  	}
> >
> >  	/* Wa_22010751166: icl, ehl, tgl, dg1, rkl */
> > -	if (DISPLAY_VER(display) >=3D 11 &&
> > +	if (IS_DISPLAY_VER(display, 9, 12) &&
> >  	    (plane_state->view.color_plane[0].y +
> >  	     (drm_rect_height(&plane_state->uapi.src) >> 16)) & 3) {
> >  		plane_state->no_fbc_reason =3D "plane end Y offset misaligned";
> > --
> > 2.42.0
> >
> >
