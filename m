Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADEB9AE02F
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 11:11:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86DA910E8B7;
	Thu, 24 Oct 2024 09:11:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fVDVPeUJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCC3110E8B7
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2024 09:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729761065; x=1761297065;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=zkupySXhhdx672vMFbOR+7CCuwP2713GUYVC1yh9rjQ=;
 b=fVDVPeUJZZ6AL8HtVO0VF/nwu7qJX7HlC+mB8TZfpZP5tE3NLGFYjAwf
 al//lKd6IVqvT0kWpJeyaqm/tFB0eIn1EKW1La65OkTG/gCwpU6g8Rsg3
 mRtKZUJqAW0b9EnjkYvqPAFbnij6aDy1RSv7d2pDcq31TMSZTLPrk2e6a
 KIGf1zBvxCDwaD06YNS0MBLq4bDGeHrUWhX9sq9Hjvl30DzQGAJy6W5tf
 n2g2hQ7hdt7JNtOc8vv10aTXnJ1L62a7Psyx3sGh1BDIO1HzLUFnkG0qp
 Pc8pE1pptbyoFTxHLFzdRMNkNDdEDj5WVFOh49TxZ51hPOgn1diWEn/Ki g==;
X-CSE-ConnectionGUID: +t65BitcTRmLpldPTND5gA==
X-CSE-MsgGUID: dLzmZZPFSjqFHxlNYpwdOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="51925034"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="51925034"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 02:11:05 -0700
X-CSE-ConnectionGUID: Npbgqxs6QpqNJRBw7ZRjAw==
X-CSE-MsgGUID: A7ceiBBqQhWOeb7QEIhsVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="111377780"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 02:11:05 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 02:11:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 02:11:04 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 02:11:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fx5BFXw9DUjx+3KELc8EcyzrtCFIueq0+X9v5s731C73GA5PrB0MP9dKSirg91sSxpmeUr5OAkLsLdb2vz9Ur+eiKSqpVJpJBA25RCo8pXXiUw/sYeAxwp1MOavM47vUOjuPvnyfacwbXI2ZM85mdJ4RDjo+7GFfbkIggq0LkY2HLrPHzdLbE4c0R+OUn7bgf+Ex7ASEKgKQ96wVNrlHRYJanV2h2FTFuB1YHk2UKQ1RaJ6HYcaUbQfeIP4ygrmwki/7oRYx+4HOwDYB5DO/EaWknaSWD9hSU5Et4r9HofrTQxUQDGosNgF4L2hbg6R3kE8t2ilusolmXwabvWNoUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QAyBqbxY+/Wpe5zixDwBrvpZZcBxbS7FIsGju90lF48=;
 b=H9uaKXwrnlBJZ8lnKuA9CrZM6uslYKptV0lk+0PfIIKE+mPT/1fnLsZeGF/MmxULG4Za4ZnmVFwVKBjRCTC8+i9jrBQchC339nSwiVrO+CKn1fjNel7p4fdXNghyPfA6vFNQD5O8/K/t/dyuvjcLxBFDsnubzpfmL7swjUy7bSE9oesfeinnRUuXIemNkgS2ik74OIZxzbD3vMSz4AdgAZTdusghUkv9YCk+gmu/I6ddNaccq/bGXUpDmro2CfTAI4fcAIgZFWm5FGyp7qbUobP4/y7i2FixRnB9X/0jVPK7YQJBo51mCvbFPaJKC7wJOVr0ZeFwp0X+rPRcEyeCHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by SA3PR11MB7582.namprd11.prod.outlook.com (2603:10b6:806:31e::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Thu, 24 Oct
 2024 09:11:00 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%7]) with mapi id 15.20.8069.024; Thu, 24 Oct 2024
 09:11:00 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v4 2/5] drm/i915/display: Compute the scaler filter
 coefficients
Thread-Topic: [PATCH v4 2/5] drm/i915/display: Compute the scaler filter
 coefficients
Thread-Index: AQHbHin+46nUj9zCKkOv8VgIDQiE67KVi1YAgAAeJ6A=
Date: Thu, 24 Oct 2024 09:11:00 +0000
Message-ID: <IA1PR11MB646706473E65B47CC8C4B601E34E2@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20241014111302.95362-1-nemesa.garg@intel.com>
 <20241014111302.95362-3-nemesa.garg@intel.com>
 <CH0PR11MB5508BADD65CA32A1F3ADB77EC24E2@CH0PR11MB5508.namprd11.prod.outlook.com>
In-Reply-To: <CH0PR11MB5508BADD65CA32A1F3ADB77EC24E2@CH0PR11MB5508.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|SA3PR11MB7582:EE_
x-ms-office365-filtering-correlation-id: 10227eca-79c2-4b74-ad0a-08dcf40bc74a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?fGte6nvm2iCTISZIQD/xkjCnBWU6dj5zbdsMUACOJf7LGeRRcJYn0codbH58?=
 =?us-ascii?Q?RMwj7RLYHKuZgTyzxPm1KmEFrihyaabk6kMnwIIT8L7K0LKli9YULxChQyK3?=
 =?us-ascii?Q?NP7rjps+aglLk6VSurmihSj5ivBqk7hnG2oBDe+3a3uf2/7PPRauZVHUJHtQ?=
 =?us-ascii?Q?5bg6JGu1oBn3lfKcdFr5c7gNCW22ivUAw1hYvEpWdwF7XNS+JbkMwpBfNrtJ?=
 =?us-ascii?Q?QtlzZgZl7rFACwXWoCFJ8V22GnDJMDU5kGnmMIrSOyn2hyYHFZ9ERwpgbwr7?=
 =?us-ascii?Q?Sy2DJC8aYZKZHfCwhLt2tRr5Ky0Sb2dcrvv0462u+S86vZNkqx/3PJzfrkUI?=
 =?us-ascii?Q?/50R/HsV5WQkcADZiTxy1kQiXQutXkXZXrLVoVyxbDN6+wI5kPRLZyExzSCz?=
 =?us-ascii?Q?h84Oul14nYo0zjk5LvpVF/mzU40ggZimR7Z/9t8R5Gi/fgpXt/b72KNYORQ7?=
 =?us-ascii?Q?TfRDIBbynpsYNHTm5vPGiA3+LXlSqwMm4OESadJvJe/pKY7fKpblhqJT6uLK?=
 =?us-ascii?Q?YYMItLkP0r3mMIBZFZHvqcYLYC1DCRPw83Ru0PyJjxeZiZMcARJunm+yCJw1?=
 =?us-ascii?Q?HyoJwUGt9hqY0bJFKidcZqH1NNawvj3CWgSqMBU6I2nIpWMw9kO6XwmJi5bc?=
 =?us-ascii?Q?P4TusPTD5Qy3BxdzDNqj6a/ummkzAOKexuXI0MQ3RKqKvUkAtH9yfbPQkN28?=
 =?us-ascii?Q?MWRgrMZ0PmZRpP5/GSS1s/Xdv+dmvfWswHWVSKHb2Na27JCPnoSRb+SDTy/e?=
 =?us-ascii?Q?c8NJNGKLIH4SeJTMMXsE3YNFmQVUlI+unRij2PR7PPLNuAWW6dZcOOFXGDd3?=
 =?us-ascii?Q?ILYLdb26cG1mTktxpuO9oat+7W8to7DFn8TIDhMLnDABU4mNbVRXR0SXzccm?=
 =?us-ascii?Q?PBPLEDfUYa/fREESJG+AKdNxKwcy5xtrnkCoAnM/rnbQ22S0ymm0VLZaIdbF?=
 =?us-ascii?Q?48TNPToLQA/DQFMwhIPzT1Q+X2h3sXpWhcHk2LDZip6jqrAV6r+ckTv0e3Cu?=
 =?us-ascii?Q?omGUCQgTxtOIoDHU9Xl45ynIj3YO6SLrU0WP58PAOcZllP4MRrQzlNiKFgW6?=
 =?us-ascii?Q?gGfPbE8MHaLnadcFXFVbLT3duI4KNe5VqJ7BCmJaMmV+TmxYb1M0COLemJlc?=
 =?us-ascii?Q?cEgwyH8mb/ct/v+VgqZN/lltZPsjvIIEd2jd18af9Aj0uixfDNFDFU9FlIIn?=
 =?us-ascii?Q?MOLVjRI8Vx/3G/bbdt4bcev5w479N7wi3j0bN8au+9YP4MsbBDWBY7Fp0lQC?=
 =?us-ascii?Q?ncjAi47IAAHZE2dr3E+PZ0oqgOXeURNH1gTxW0DEI9TAsVsCD9NJRwU7Xhsz?=
 =?us-ascii?Q?w0ZHHNhvHWV1JfOAA6IhWKgevjMjCfu5aRiwuug4Wz2+45H1Ea0BLgyeMM6c?=
 =?us-ascii?Q?eiuxMSQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LVhUadARQWUFYzzVUX23EHpiEY4YV+Fi68fUTG6ZDpqHgDCfjYsgexx/jPPl?=
 =?us-ascii?Q?jY4L4jMi4Qt70mM/58RyiQ6SgvEb085gLcY+X+sCG3Dt2e5IipPW3EV3SwFd?=
 =?us-ascii?Q?NQ/ggNeBmBdQyl8Fwc2b66dXBA60YhDL2AgDFUnF7FqaX+JVDbJWmY8tv9xw?=
 =?us-ascii?Q?apSLV+KZ95fXlHmF77nJsg603BXg9ELpAMqoOxn+BFNHo2M8WtNu1msq3Ukg?=
 =?us-ascii?Q?D4ClpFDXcM67sVQ2P6Q5GmSP0X4Kvyh2dv9sqcBEl1upWoMFzAR6Llfc8Fsr?=
 =?us-ascii?Q?g6lzRnrvzOdraPdkHSJdMcZ3a+dNUni6eOYrxAEwEGEszmPbsFTFyd4/rlsZ?=
 =?us-ascii?Q?GhMapX/qlkFKtVRlpP6uEaUnPrRUpjL/5bnEnH0zKChPVCmVjEJUH1Os9rA0?=
 =?us-ascii?Q?elsUT/G8khKm+fhV9BFYpH5q4mWDfa5u+KZM0z4c/LuESbMH9ie7I5mHTifg?=
 =?us-ascii?Q?Qn32W0w7bsfPd2ROvqoiYgefuKpgfwDzg1OVTXDjwHpGWnl0Kp2SbhkhyCii?=
 =?us-ascii?Q?KrBemhAP8UUX1Aejk5mgNC90WcQpc/DfOygE2oVgpXsTynJTCWPnxVnOXL7D?=
 =?us-ascii?Q?FqhDWJiWtBX7iF3qFC42FJ88baenkYUK6rIcPROdjWenGM8VTbiqFm+yjD7t?=
 =?us-ascii?Q?5io4c0+djceVI8FyfaPJ8NRI2fLqQagrpPCBo44Ab0ijeDFGxZ/tFILmYph1?=
 =?us-ascii?Q?SU0v1C8/kiKI0f3g7V7kBJ59ixMmvRuzBDSTDkYf1g2MijyYQrUcwGJLY9GM?=
 =?us-ascii?Q?VPLlRNn8QIF6ImUbaXVj0AZSf/641qE77YhfYfFw51uZsoDpLKYbvJIy9KWB?=
 =?us-ascii?Q?rz0HeZn/L9OukNtfLmVhLSmmYchAuclB8ppRNYjatL1Hc+g5a9a1lZA5tdeR?=
 =?us-ascii?Q?c+1Kt+3LPU9aw2HhpzXAtQ+DBx6zCKOFsmrYw7xfVFOUf+2ghfYoETz5h1q6?=
 =?us-ascii?Q?oLH7FGi1lP4NmimNEa0dxgzwqoyRv0Qc04MqSRhxOmN9z0h2fmWAhCkpVaQI?=
 =?us-ascii?Q?96LKEv+4WMWeCxWUOCxoljBuDsfRoroX3M0MnqVL3uyk1BfWjhjF+4pZBMfI?=
 =?us-ascii?Q?WuxFe7/QL0EIPmArVoLqoNMWVNoRfxrlefn6Vj6QpEHqgVcWE3ZmaZB5ADRN?=
 =?us-ascii?Q?V1d/xLLMcOci4S7znQDzHcGYUKTqVyEcTA7roF1vBhdGKsIFOMXuOAdCmXsU?=
 =?us-ascii?Q?UEtUl7jYL/oEgESUjwSIUU2JGDxYssqq6fRphg4sZ9CuLehO5Gd8brNAxCVi?=
 =?us-ascii?Q?uRZ5jqyDb0LfQmsXBg9A5U1d4gDs194oco+zt09Q9g0GZDYni47cNUKFtWXG?=
 =?us-ascii?Q?mLOGyWp48aqRJCXmdcs9WlnOjI/JZxSitk6+cqeNXJ2KU4Js+a3EiYlgxRHl?=
 =?us-ascii?Q?PmY+S9Uwulo4pWwRuC1nnIgAx/fNn6TjliOREV0ATjJE754MlStj4KpNxzxY?=
 =?us-ascii?Q?+VHmTyCIhZ4JuInJAiz0f1aWjHhdNm5MP3Pv4a3LTU/V/XhR78bzyJSIkrEt?=
 =?us-ascii?Q?hkW9G2kNUXAgnqHAUFFMiRvWZQwSmqMNn4cH7qj6E4M1v4l4GPJCvv9OGW4R?=
 =?us-ascii?Q?B4IKkV+qBaQGv+cT9PM4jwETMhYdcP1hbYYwibLl?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10227eca-79c2-4b74-ad0a-08dcf40bc74a
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2024 09:11:00.5038 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EX2NGJbt5gMrm3/CY7Yohp6c2U6yGB14IlyJ37y+iJb5dyz7X6mym1RSpwdjsw+gCkvbDtWB/JcBBKM+VgUbyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7582
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
> From: Srikanth V, NagaVenkata <nagavenkata.srikanth.v@intel.com>
> Sent: Thursday, October 24, 2024 12:41 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>
> Subject: RE: [PATCH v4 2/5] drm/i915/display: Compute the scaler filter
> coefficients
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Nemesa Garg
> > Sent: Monday, October 14, 2024 4:43 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Garg, Nemesa <nemesa.garg@intel.com>
> > Subject: [PATCH v4 2/5] drm/i915/display: Compute the scaler filter
> > coefficients
> >
> > The sharpness property requires the use of one of the scaler so need
> > to set the sharpness scaler coefficient values.
> > These values are based on experiments and vary for different tap
> > value/win size. These values are normalized by taking the sum of all
> > values and then dividing each value with a sum.
> >
> > v2: Fix ifndef header naming issue reported by kernel test robot
> > v3: Rename file name[Arun]
> >     Replace array size number with macro[Arun]
> > v4: Correct the register format[Jani]
> >     Add brief comment and expalin about file[Jani]
> >     Remove coefficient value from crtc_state[Jani]
> >
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > ---
> >  drivers/gpu/drm/i915/Makefile                 |   1 +
> >  drivers/gpu/drm/i915/display/intel_casf.c     | 131 ++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_casf.h     |  16 +++
> >  .../gpu/drm/i915/display/intel_casf_regs.h    |  19 +++
> >  drivers/gpu/drm/i915/display/intel_display.c  |   3 +
> >  .../drm/i915/display/intel_display_types.h    |  14 ++
> >  drivers/gpu/drm/i915/i915_reg.h               |   2 +
> >  drivers/gpu/drm/xe/Makefile                   |   1 +
> >  8 files changed, 187 insertions(+)
> >  create mode 100644 drivers/gpu/drm/i915/display/intel_casf.c
> >  create mode 100644 drivers/gpu/drm/i915/display/intel_casf.h
> >  create mode 100644 drivers/gpu/drm/i915/display/intel_casf_regs.h
> >
> > diff --git a/drivers/gpu/drm/i915/Makefile
> > b/drivers/gpu/drm/i915/Makefile index c63fa2133ccb..ba3c33ca3149
> > 100644
> > --- a/drivers/gpu/drm/i915/Makefile
> > +++ b/drivers/gpu/drm/i915/Makefile
> > @@ -280,6 +280,7 @@ i915-y +=3D \
> >  	display/intel_pmdemand.o \
> >  	display/intel_psr.o \
> >  	display/intel_quirks.o \
> > +	display/intel_casf.o \
> >  	display/intel_sprite.o \
> >  	display/intel_sprite_uapi.o \
> >  	display/intel_tc.o \
> > diff --git a/drivers/gpu/drm/i915/display/intel_casf.c
> > b/drivers/gpu/drm/i915/display/intel_casf.c
> > new file mode 100644
> > index 000000000000..75c1ae37ae1e
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_casf.c
> > @@ -0,0 +1,131 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright (c) 2024 Intel Corporation
> > + *
> > + */
> > +#include "i915_reg.h"
> > +#include "intel_de.h"
> > +#include "intel_display_types.h"
> > +#include "intel_casf.h"
> > +#include "intel_casf_regs.h"
> > +#include "skl_scaler.h"
> > +
> > +#define FILTER_COEFF_0_125 125
> > +#define FILTER_COEFF_0_25 250
> > +#define FILTER_COEFF_0_5 500
> > +#define FILTER_COEFF_1_0 1000
> > +#define FILTER_COEFF_0_0 0
> > +#define SET_POSITIVE_SIGN(x) ((x) & (~SIGN))
> > +
> > +/**
> > + * DOC: Content Adaptive Sharpness Filter (CASF)
> > + *
> > + * From LNL onwards the display engine based adaptive
> > + * sharpening filter is supported. This helps in
> > + * improving the image quality. The display hardware
> > + * uses one of the pipe scaler for implementing casf.
> > + * It works on a region of pixels depending on the
> > + * tap size. The coefficients are used to generate an
> > + * alpha value which is used to blend the sharpened image
> > + * to original image.
> > + */
> > +
> > +const u16 filtercoeff_1[] =3D {FILTER_COEFF_0_0, FILTER_COEFF_0_0,
> > +FILTER_COEFF_0_5, FILTER_COEFF_1_0, FILTER_COEFF_0_5,
> > FILTER_COEFF_0_0,
> > +FILTER_COEFF_0_0};
> > +
> > +const u16 filtercoeff_2[] =3D {FILTER_COEFF_0_0, FILTER_COEFF_0_25,
> > +FILTER_COEFF_0_5, FILTER_COEFF_1_0, FILTER_COEFF_0_5,
> > +FILTER_COEFF_0_25, FILTER_COEFF_0_0};
> > +
> > +const u16 filtercoeff_3[] =3D {FILTER_COEFF_0_125, FILTER_COEFF_0_25,
> > +FILTER_COEFF_0_5, FILTER_COEFF_1_0, FILTER_COEFF_0_5,
> > +FILTER_COEFF_0_25, FILTER_COEFF_0_125};
> > +
> > +static int casf_coef_tap(int i)
> > +{
> > +	return i % 7;
> > +}
> > +
> > +static u16 casf_coef(struct intel_crtc_state *crtc_state, int t) {
> > +	struct scaler_filter_coeff value;
> > +	u16 coeff;
> > +
> > +	value =3D crtc_state->hw.casf_params.coeff[t];
> > +	coeff =3D SET_POSITIVE_SIGN(0) | EXPONENT(value.exp) |
> > +MANTISSA(value.mantissa);
> > +
> > +	return coeff;
> > +}
> > +
> > +void intel_casf_enable(struct intel_crtc_state *crtc_state) {
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	int id =3D crtc_state->scaler_state.scaler_id;
> > +	int i;
> > +
> > +	intel_de_write_fw(display, GLK_PS_COEF_INDEX_SET(crtc->pipe, id,
> > 0),
> > +			  PS_COEF_INDEX_AUTO_INC);
> > +
> > +	intel_de_write_fw(display, GLK_PS_COEF_INDEX_SET(crtc->pipe, id,
> > 1),
> > +			  PS_COEF_INDEX_AUTO_INC);
> > +
> > +	for (i =3D 0; i < 17 * 7; i +=3D 2) {
> > +		u32 tmp;
> > +		int t;
> > +
> > +		t =3D casf_coef_tap(i);
> > +		tmp =3D casf_coef(crtc_state, t);
> > +
> > +		t =3D casf_coef_tap(i + 1);
> > +		tmp |=3D casf_coef(crtc_state, t) << 16;
> > +
> > +		intel_de_write_fw(display, GLK_PS_COEF_DATA_SET(crtc-
> > >pipe, id, 0),
> > +				  tmp);
> > +		intel_de_write_fw(display, GLK_PS_COEF_DATA_SET(crtc-
> > >pipe, id, 1),
> > +				  tmp);
> > +	}
> > +}
> > +
> > +static void convert_sharpness_coef_binary(struct scaler_filter_coeff *=
coeff,
> > +					  u16 coefficient)
> > +{
> > +	if (coefficient < 25) {
> > +		coeff->mantissa =3D (coefficient * 2048) / 100;
> > +		coeff->exp =3D 3;
> > +	} else if (coefficient < 50) {
> > +		coeff->mantissa =3D (coefficient * 1024) / 100;
> > +		coeff->exp =3D 2;
> > +	} else if (coefficient < 100) {
> > +		coeff->mantissa =3D (coefficient * 512) / 100;
> > +		coeff->exp =3D 1;
> > +	} else {
> > +		coeff->mantissa =3D (coefficient * 256) / 100;
> > +		coeff->exp =3D 0;
> > +	}
> > +}
> > +
> > +static void intel_casf_coeff(struct intel_crtc_state *crtc_state) {
> > +	const u16 *filtercoeff;
> > +	u16 filter_coeff[SCALER_FILTER_NUM_TAPS];
> > +	u16 sumcoeff =3D 0;
> > +	u8 i;
> > +
> > +	if (crtc_state->hw.casf_params.win_size =3D=3D 0)
> > +		filtercoeff =3D filtercoeff_1;
> > +	else if (crtc_state->hw.casf_params.win_size =3D=3D 1)
> > +		filtercoeff =3D filtercoeff_2;
> > +	else
> > +		filtercoeff =3D filtercoeff_3;
> > +
> > +	for (i =3D 0; i < SCALER_FILTER_NUM_TAPS; i++)
> > +		sumcoeff +=3D *(filtercoeff + i);
>=20
> filtercoeff[i] instead of *(filtercoeff + i)
>=20
> > +
> > +	for (i =3D 0; i < SCALER_FILTER_NUM_TAPS; i++) {
> > +		filter_coeff[i] =3D (*(filtercoeff + i) * 100 / sumcoeff);
>=20
> Just by multiplying by 100, we are losing precision. Multiply by 10000 to=
 preserve
> the precision.
> For e.g filtercoeff of 0.125 is stored as 125.
>=20
> Ideal case using double:
> 0.125/2 -> 0.0625
> 0.0625 converted to mantissa 0.0625*2048 -> 128
>=20
> 125*100/2000 -> 6
> 6 converted to mantissa 6*2048/100 -> 122
>=20
> If we multiply by 10000
> 125*10000/2000 -> 625
> 625 converted to mantissa 625*2048/10000 -> 128
>=20
If we are considering the first coefficient set  then we can either have 0/=
2 or 0.5/2 or 1/2 so in this case:
Using double:
0.5/ 2.0 =3D 0.25 * 1024.0 =3D 256
1/2 =3D 0.5 =3D 0.5 * 1024 =3D 512=20
Using integer:
500/2000 =3D 0.25 *100 =3D 25 * 1024 =3D 25600 /100 =3D 256
1000/2000 =3D 0.5 * 100 =3D 50 * 1024 =3D 51200 / 100 =3D 512

So for different coefficient set, sumcoeff will change ie 2500 and 2750 , s=
o multiplying with 100 also precision will be there.

Regards,
Nemesa
> > +		convert_sharpness_coef_binary(&crtc_state-
> > >hw.casf_params.coeff[i],
> > +					      filter_coeff[i]);
> > +	}
> > +}
> > +
> > +void intel_casf_scaler_compute_config(struct intel_crtc_state
> > +*crtc_state) {
> > +	intel_casf_coeff(crtc_state);
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/intel_casf.h
> > b/drivers/gpu/drm/i915/display/intel_casf.h
> > new file mode 100644
> > index 000000000000..8e0b67a2fd99
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_casf.h
> > @@ -0,0 +1,16 @@
> > +/* SPDX-License-Identifier: MIT */
> > +/*
> > + * Copyright (c) 2024 Intel Corporation  */
> > +
> > +#ifndef __INTEL_CASF_H__
> > +#define __INTEL_CASF_H__
> > +
> > +#include <linux/types.h>
> > +
> > +struct intel_crtc_state;
> > +
> > +void intel_casf_enable(struct intel_crtc_state *crtc_state); void
> > +intel_casf_scaler_compute_config(struct intel_crtc_state
> > +*crtc_state);
> > +
> > +#endif /* __INTEL_CASF_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_casf_regs.h
> > b/drivers/gpu/drm/i915/display/intel_casf_regs.h
> > new file mode 100644
> > index 000000000000..0b3fcdb22c0c
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_casf_regs.h
> > @@ -0,0 +1,19 @@
> > +/* SPDX-License-Identifier: MIT */
> > +/*
> > + * Copyright (c) 2024 Intel Corporation  */
> > +
> > +#ifndef __INTEL_CASF_REGS_H__
> > +#define __INTEL_CASF_REGS_H__
> > +
> > +#include "intel_display_reg_defs.h"
> > +
> > +/* Scaler Coefficient structure */
> > +#define SIGN				REG_BIT(15)
> > +#define EXPONENT_MASK			REG_GENMASK(13, 12)
> > +#define EXPONENT(x)
> 	REG_FIELD_PREP(EXPONENT_MASK,
> > (x))
> > +#define MANTISSA_MASK			REG_GENMASK(11, 3)
> > +#define MANTISSA(x)			REG_FIELD_PREP(MANTISSA_MASK,
> > (x))
> > +
> > +#endif /* __INTEL_CASF_REGS__ */
> > +
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index b4ef4d59da1a..224fd0c84f18 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -112,6 +112,7 @@
> >  #include "intel_psr.h"
> >  #include "intel_psr_regs.h"
> >  #include "intel_sdvo.h"
> > +#include "intel_casf.h"
> >  #include "intel_snps_phy.h"
> >  #include "intel_tc.h"
> >  #include "intel_tdf.h"
> > @@ -5917,6 +5918,8 @@ static int intel_atomic_check_planes(struct
> > intel_atomic_state *state)
> >  		if (ret)
> >  			return ret;
> >
> > +		intel_casf_scaler_compute_config(new_crtc_state);
> > +
> >  		/*
> >  		 * On some platforms the number of active planes affects
> >  		 * the planes' minimum cdclk calculation. Add such planes diff
> > --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index f29e5dc3db91..de3867faa4d7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1036,6 +1036,19 @@ struct intel_csc_matrix {
> >  	u16 postoff[3];
> >  };
> >
> > +struct scaler_filter_coeff {
> > +	u16 sign;
> > +	u16 exp;
> > +	u16 mantissa;
> > +};
> > +
> > +struct intel_casf {
> > +#define SCALER_FILTER_NUM_TAPS 7
> > +	struct scaler_filter_coeff coeff[SCALER_FILTER_NUM_TAPS];
> > +	u8 win_size;
> > +	bool need_scaler;
> > +};
> > +
> >  struct intel_crtc_state {
> >  	/*
> >  	 * uapi (drm) state. This is the software state shown to userspace.
> > @@ -1072,6 +1085,7 @@ struct intel_crtc_state {
> >  		struct drm_property_blob *degamma_lut, *gamma_lut, *ctm;
> >  		struct drm_display_mode mode, pipe_mode, adjusted_mode;
> >  		enum drm_scaling_filter scaling_filter;
> > +		struct intel_casf casf_params;
> >  	} hw;
> >
> >  	/* actual state of LUTs */
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 41f4350a7c6c..84b05b57ad52
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -2257,6 +2257,8 @@
> >  #define   PS_VERT_INT_INVERT_FIELD		REG_BIT(20)
> >  #define   PS_PROG_SCALE_FACTOR			REG_BIT(19) /* tgl+ */
> >  #define   PS_PWRUP_PROGRESS			REG_BIT(17)
> > +#define   PS_BYPASS_ARMING			REG_BIT(10)
> > +#define   PS_DB_STALL				REG_BIT(9)
> >  #define   PS_V_FILTER_BYPASS			REG_BIT(8)
> >  #define   PS_VADAPT_EN				REG_BIT(7) /* skl/bxt
> > */
> >  #define   PS_VADAPT_MODE_MASK			REG_GENMASK(6, 5)
> > /* skl/bxt */
> > diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> > index 8f1c5c329f79..59dc97f30caa 100644
> > --- a/drivers/gpu/drm/xe/Makefile
> > +++ b/drivers/gpu/drm/xe/Makefile
> > @@ -254,6 +254,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
> >  	i915-display/intel_psr.o \
> >  	i915-display/intel_qp_tables.o \
> >  	i915-display/intel_quirks.o \
> > +	i915-display/intel_casf.o \
> >  	i915-display/intel_snps_phy.o \
> >  	i915-display/intel_tc.o \
> >  	i915-display/intel_vblank.o \
> > --
> > 2.25.1

