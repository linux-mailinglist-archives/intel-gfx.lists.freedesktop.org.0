Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BFB0A0530A
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 07:05:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9224910E7EF;
	Wed,  8 Jan 2025 06:05:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nDmCGTPp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4365A10E25D;
 Wed,  8 Jan 2025 06:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736316307; x=1767852307;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Kh89bbojnK4N+QpYga1TgGpbsEAIkHEtdtW7Ji9Skqg=;
 b=nDmCGTPpl1S9z8623ZJ77geIMAMeRVBNszVN6lGbLy3T6+zczOfKhj78
 YLircR3i7zY2oLnrDYKKc6dUlJNtlh0xMs9L+J4/0X+8UV6lI6NDcUsDr
 S6uZ3f0kARAZ2XMQ3epD8ZGj12dOcuH9k+9fX/d8dpi/F7iORmojNumc1
 zVS/+UxB/ABA+ZljPDz3BK35amB+kXPtqFt2PDECpL3ctNl4CrWXvSsq8
 WmYAOboYZ5xKdvhcujXxmuNiqVngDcwIMTvFhlrgCpCOpTEF2kGIFRoZv
 QWBkLt8fYxxUcluepR3MMIgX4CDJIaUo4Mi+Kxrn+IlBeqCnnkd5/ogl2 w==;
X-CSE-ConnectionGUID: EBfyrimfSGSnJgKCiPCuIg==
X-CSE-MsgGUID: Cp4E/4zuQ56VWNFJbDAidA==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="36642906"
X-IronPort-AV: E=Sophos;i="6.12,297,1728975600"; d="scan'208";a="36642906"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 22:05:06 -0800
X-CSE-ConnectionGUID: odtB+QKxTuKSvex4G3PSOA==
X-CSE-MsgGUID: vJ9ciKiVRgqGYpPDvVHwjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="103508218"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2025 22:05:06 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 7 Jan 2025 22:05:05 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 7 Jan 2025 22:05:05 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 7 Jan 2025 22:05:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lIoYWIk6bU5dVw+jL4Hpm6Ef1ktqhOb6+0RH2oimn0zxmJEoBBdTcS/xSNHT18C9jTG5zLidmdSyX0eJ6e5OLS9x3HjIbcsdnhbNkDyLXUbRgJ1uKe3Ic1o2A/FvdRF87cxlhzsDwu4W60W77ZWXk6+QtO8CAk4qB/IipghkHMTPzniWVWANK+4FW/b/HVqOIcTTZHKUMumrcTxTa2SuXyLreZvnF5eXzBaqRShl6xteifWATOtabjLFQkdtvc4d6PLTC1rVxGJ4xIsP0j/JBzpzhPtHKL4OFj0fPMzQb6IUgPFUBRMvYO9i4FCfR3aZp9/AtgBTch3imrD84U4aIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kKcdwKypC3NibBKqhHZIbJryvShVIVUEGU63O7Z4DPU=;
 b=P78SrxJHJhIJ2teTyKJdQujTak6az7G7OQqPdeLiS1Pas6ZKcl7FxhlmfsCTYCl+O1eL01E5AGeaTUpYmUNjUmHBacfqbgHNki5TS/9zM0EX+y04M5C2XIn9vNy+A+LggZgGSpIf3/+oaZT/W9+vTw557uQP13F/IW5/ySVKtB1JZWRfHoGXCXguPq0kq2K4uXx2nFAJBTWrXttYaYGOXDYvwjcXGLCeJ6afEjXN3+3bK8RDycA8Gm+N99uDH1BKay8hCRgxd0mlGtkbYac6RYppbRCImI973CjwC8RfPSGcWSv36ogNoJYhH3DT6ZebAmSblime2wpN8BXsk5L12A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by BL1PR11MB6004.namprd11.prod.outlook.com (2603:10b6:208:390::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.17; Wed, 8 Jan
 2025 06:04:59 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%5]) with mapi id 15.20.8314.015; Wed, 8 Jan 2025
 06:04:58 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>
Subject: RE: [PATCH 1/2] drm/i915/cx0: Fix SSC enablement in PORT_CLOCK_CTL
Thread-Topic: [PATCH 1/2] drm/i915/cx0: Fix SSC enablement in PORT_CLOCK_CTL
Thread-Index: AQHbX/C6cM4E/xzsYEejOTkH5lbMf7MLaouAgADvOPA=
Date: Wed, 8 Jan 2025 06:04:58 +0000
Message-ID: <MW4PR11MB6761744B96F87D810286FAC8E3122@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20250106040821.251114-1-suraj.kandpal@intel.com>
 <20250106040821.251114-2-suraj.kandpal@intel.com>
 <Z31CF9QeIe7erRqE@ideak-desk.fi.intel.com>
In-Reply-To: <Z31CF9QeIe7erRqE@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|BL1PR11MB6004:EE_
x-ms-office365-filtering-correlation-id: 441e1d2e-695a-44e9-1b91-08dd2faa6184
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?1KggmgP4j6ZtvPP/eBqgZ1axoAsWo7yyO98jHbPU2kbk6TndqXczyK11iTd8?=
 =?us-ascii?Q?QxHGk58O0EZcaugWblihpLtx2tyIjHkPArS1CzlATUGdHeOJFk0WEusBC8GV?=
 =?us-ascii?Q?tC9zgmu+wFiePeXLrMvFOjh6PW2OqPEKBsojAfd7YM6ZsLqyezNYO/+ALAO1?=
 =?us-ascii?Q?wpgFO7QXlmtRYOunQuqIVoC1GmLccmQc+JJCLFVv2kfJ16d7IDnW/r2YUlTL?=
 =?us-ascii?Q?CjIHcJVbeKNK26yoA14QRe4eEaV37osaFpEX++KFanbV4MsIcvltuJYvnSzS?=
 =?us-ascii?Q?oxuw4eZizmzP6HCFTCFpJJqP1qJLy4xbq+00W+0qA9vmusg1BDw/TBOBmj9s?=
 =?us-ascii?Q?7Q6KAttTeY1ipvguciipsI2ozDG+j75pzMcFfMcdObvx6lySmKquLQUEkxEi?=
 =?us-ascii?Q?huniazlReSr7B6ZnPEgZGLfDku+GEOT9/bmrWQfT3mK5PG968vmN4fut89Pd?=
 =?us-ascii?Q?hud8gfH1fcW8vFJ40shdbHvsoAPXMtSlx6iGJyvPigzfYVXamBox6g1vOyue?=
 =?us-ascii?Q?DnigHL/HI8O8OW/mlY1vbnnS+kzMowEdlPMRUw2DQjTIOmn5AhpxPsO7q4Ca?=
 =?us-ascii?Q?n8h5+PW2mfmS0T0wwcPkpeL86dIhvD5JvSRNWmN5GC6KIlnCr0J5K76qqb7D?=
 =?us-ascii?Q?N9kGN5Al4dvi+fKbKYJsk+exnTB7pBYW3Cr3gf+Xfx7AeKTbcUCBOIIpnwCi?=
 =?us-ascii?Q?KlWpz8UIbeRYfe/Xh0/gBuY4y5ud4LslHTkMuSmKgzWZLyXptiC6B4EORuG+?=
 =?us-ascii?Q?f0iUhWRuJv/Lka6OJGvr0aj9wIB+H2rM2xOW8c7J/TLBfbcJ8VeHIVqZJLqq?=
 =?us-ascii?Q?FX17IvCNMX5OdsThCR2EiutnioIq6I25jqsN8PVezU/3BLlilS+QeC4CGj3v?=
 =?us-ascii?Q?0RTdeHhnBGsFQu54xvS07Thgb4ywnO3fcrvbAJobq8tTxiVXhVED+aeaGsaS?=
 =?us-ascii?Q?JZmDlQqtZhMgYmJ+3PuGTLZz1nguZUnzqvtOUOInez1r+FKGbBrU/jw+82Wr?=
 =?us-ascii?Q?JRpP0e2HerW0gxwo/Sq3rxD4dar7vwOk/SNF3ERMfLc8xnZLUudnh8fvo+bi?=
 =?us-ascii?Q?uCXNFqqe9wFGUNbq6XFpyBqlHUcNHzZ/JWpC+U2Lj1jwcCCOHUUDguFiGj8Q?=
 =?us-ascii?Q?JHm4IDgYESdl6vg2ioD9Ylu7JyevImgfyhOvVhTOT+Czfzffhc/7g7L4oFYq?=
 =?us-ascii?Q?iV9Trq6FHj6/bl5aXVXKWp2WxeJ4xhu+lDAew4S7RmeOcF6f3391cBlmjL5p?=
 =?us-ascii?Q?Ojv99B8cOCjsQ58h8pdUtBZjCx4exfYITOPiKQIDJ9LBbRwkUMb1M8MrtYP0?=
 =?us-ascii?Q?xor/oWjphPUwU9VRjnBlxw/ZO/D+AJskdgRLKi5rRBqvPvppfnnSyMUj9jgO?=
 =?us-ascii?Q?oo+jIMm/eAeismYRHRCo7nvKhnq+VetnDzLBLPpQjNwcWAac6AWCegEXb0Rm?=
 =?us-ascii?Q?biBUq4dzHWyyl1rpd7h4jThMd3ZFqNbT?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zsZsMSYdAy2jXkCjVSwaeIojtnjqjntmYffKlCxaXnTqZqs8ssLrxKfA8Wsu?=
 =?us-ascii?Q?fERG1qZREV3tyc25vtbanNwqr9C4lUuRux6Zd+ofel6GCATFvnTxaMLDfdi/?=
 =?us-ascii?Q?nuCGt0bxktkwzjTT78/v2/fHD6B1mK8jlyaIuKo2XBxpcMoYOQfpVxf73Ya8?=
 =?us-ascii?Q?BQ/wazCSnM5hujFUotA+qyWauvaK0/608UA2/KAWCrfYWcycpPPmXkTWYIXA?=
 =?us-ascii?Q?Tzh/h7NJwh3FOUTRX9v3HW97npDkbI8NGqRFgmTvu1sQhFbEpTEUstWEPTg1?=
 =?us-ascii?Q?lcALkCQ+DGsHNsB+HLn95W3tKiR6uGtPs9bbNdKpELAQKmrL6S3Mo/1rhL3b?=
 =?us-ascii?Q?w9JK/3fcsiaLfXQj82/c9fdYkPPFOORgHw+v6fGkG9CdGowAByTYhuv/GbCf?=
 =?us-ascii?Q?ZxrNbNRm4fv/2Ql/MOc95/TsNy0vBfr6j/iX1zZ2NUlgxNfM3oWNlLzTwXE5?=
 =?us-ascii?Q?jK/VccM5ICZD7S0ZE3xDRcqZ08hVvwc3DYYLKo0pamAa6G1UkT1oREW6xBzr?=
 =?us-ascii?Q?kq2crAqmZF/0Hh3D4w5QNTXMR2gWLSp67rQvTZar0+0DtUAhAmVKmfGfqu5O?=
 =?us-ascii?Q?Rzq4Q5KdTVz4A0tXzoMJfSRdRLoSuYi2twOOQldlsLE6psAepc6SQXdNllG3?=
 =?us-ascii?Q?DvwOPndbC8vf8hJ5r5JRXAP9+B5MRuN7FJ0+isBgl6VTyJuQrljZglIiR9uN?=
 =?us-ascii?Q?AqN00ic/I0R9WBZhMfP9k4K26M+zsSso7VNjjGh0FVzxiXcd4W4gQSWvz2xE?=
 =?us-ascii?Q?LoTUVdd08YSf+KyinV/6GqLUFQvKgdY3c/aQKKGt96FQaOUwkZJiBH2sKi4r?=
 =?us-ascii?Q?5B9SHEYXPXdVpCl8x7SammeRaGopDn6IFzagC8Lsdh8uAv8D5OJ1l4IuquwB?=
 =?us-ascii?Q?WtGtP2ZpZP8AE/D2MA2Q9CDi1g1O4i2J+455uYFdwSdcpTqxIBPniXK0baqh?=
 =?us-ascii?Q?Z4YTMvKAr0NPCaTDCSpKEEYuoeyUqMSTPGyYnN8m1OqBdqTGW1LPdx0mzg81?=
 =?us-ascii?Q?bfuxi4Tzwv4SkD6qvroURBB3uZMAzJRx22aeA9+nTRhAvTqttUOJeU5W1lG+?=
 =?us-ascii?Q?YgHxRhLHUVwCKiJXiXvCaoQ0mnd4LapcDsrCrRK2hPEGXm0ZgvHZZbGItSUX?=
 =?us-ascii?Q?eChWv1rVAtHuW70enpHspEiyMgZfTskI6juPXR6IAglo9dNQsUyo2jRdMklc?=
 =?us-ascii?Q?bxU9jcmhV91dmzUkq+BXqPnXnT63bLMpWokjg4GnGpQKtDtcTrWxPgDi74ph?=
 =?us-ascii?Q?5qlM5k+1lrQNaYjhIX6H6mQivZlDnnyOSMZSH8YPfir3u+C1070/8C37omf1?=
 =?us-ascii?Q?AZ8FpzHj6wLquoWf4bnA3PFOh+DdvDeyvMMLhO9Es5fPDdohghtSWuO+WYoh?=
 =?us-ascii?Q?HY3MzLoc4dPeOuxr8UssakHok2y0mhZeIkSJhez/D+fPrJt4CdG4YP9MksNt?=
 =?us-ascii?Q?iRhp1mZUsE+FE/gvYTINg69Lm1ejXinoy37WnTgowIyKgR18mbKgKOZy1cg9?=
 =?us-ascii?Q?OEcPGje0D4aYV07cc9LCc05nnrPaeARdqZyRK+pATPjq013nK51a9AwSay8z?=
 =?us-ascii?Q?T9vQbABTcvizYJJyDQJIGdFNObCQlVBa5gsitKIu?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 441e1d2e-695a-44e9-1b91-08dd2faa6184
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2025 06:04:58.3242 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S5ymahLuTKCysHazF3AWLakXOTGswc5+pty7qyVAErp3nJU6k42DLzE16Z4NN4Pac6fBISC3ynLlNdu6qzlV1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6004
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
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Tuesday, January 7, 2025 8:33 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Naut=
iyal,
> Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Subject: Re: [PATCH 1/2] drm/i915/cx0: Fix SSC enablement in
> PORT_CLOCK_CTL
>=20
> On Mon, Jan 06, 2025 at 09:38:20AM +0530, Suraj Kandpal wrote:
> > SSC for PLL_A is enabled for UHBR10 or UHBR20 regardless of the need
> > for SSC. This means the ssc_enabled variable had no say to determine
> > enablement of SSC on PLL A.
>=20
> I don't see the above in the spec. It suggests that SSC should be enabled=
 on
> PLL A for MFD, but in any case SSC can only be enabled if the sink suppor=
ts
> SSC, as indicated by dpll_hw_state.cx0pll.ssc_enabled.

Hi Imre,
You are right
In Bspec 74489 under Non-thunderbolt PLL Enable Sequence
It says SSC enable to be done on PLLA  for MFD when on UHBR10 or UHBR20
(PLLA is only used for C20 PHY UHBR10 and 20.)
and check for ssc_enabled for Native mode to enable SSC but now the issue i=
s
that we aren't checking for MFD mode any particular reason for this ? and h=
ow would we
go about checking if we are in MFD mode or not ?
Also the ssc_enabled bool variable never actually gets set for C20 Phy whic=
h makes checking the ssc_enabled
Useless, which I fix in the next patch.
Would be great if you could also have a look at that.

Regards,
Suraj Kandpal

>=20
> > Bspec: 64568, 74165, 74489, 74491
> > Fixes: 237e7be0bf57 ("drm/i915/mtl: For DP2.0 10G and 20G rates use
> > MPLLA")
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > index e768dc6a15b3..3fd959a2773c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > @@ -2747,7 +2747,7 @@ static void intel_program_port_clock_ctl(struct
> intel_encoder *encoder,
> >  	/* TODO: HDMI FRL */
> >  	/* DP2.0 10G and 20G rates enable MPLLA*/
> >  	if (crtc_state->port_clock =3D=3D 1000000 || crtc_state->port_clock =
=3D=3D
> 2000000)
> > -		val |=3D crtc_state->dpll_hw_state.cx0pll.ssc_enabled ?
> XELPDP_SSC_ENABLE_PLLA : 0;
> > +		val |=3D XELPDP_SSC_ENABLE_PLLA;
> >  	else
> >  		val |=3D crtc_state->dpll_hw_state.cx0pll.ssc_enabled ?
> > XELPDP_SSC_ENABLE_PLLB : 0;
> >
> > --
> > 2.34.1
> >
