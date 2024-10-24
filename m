Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D599AE311
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 12:52:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 060D310E8FD;
	Thu, 24 Oct 2024 10:52:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V2aJFxKh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FB5B10E8FC;
 Thu, 24 Oct 2024 10:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729767169; x=1761303169;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bFxgjA92xxIsT4DhHN2SyTLJECKCVdUb6gDCjGMm8m4=;
 b=V2aJFxKhEyRFEGuypKpCseQ9QsTVPIgkYra98JEmuwNAJQU7FyD+UBjN
 3TUVr0NvBEcrfxSwWSWLuaoDvTbHznBGL2xbImec1lpzJL1y6mJA2u4Re
 doBnMNKdQ2ErO7db2RdtLFQPV04rex5ncLUKiDbS8fwo0slBgYLMVFe0C
 4rug4iIx3ACz2m5mZFPa3E5ojtv6ZGzhJz9Bn9ehzdc1XpER/VQi4Z0rH
 W1fnyoKeSxKwnkYS7iJajpjgHqq4XascWoQ6xx9ndlp65xW2P6I7zsNBU
 zIZHEnfK/sUqWsK1zU+yr7CitDnQHV/8axXkIfAvoATE81IQCSbwSs1a9 g==;
X-CSE-ConnectionGUID: efgwecdySJOEr+WnEjKEbw==
X-CSE-MsgGUID: 1vbQqJPDQ1CmtDcDrnCS2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="33296509"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="33296509"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 03:52:48 -0700
X-CSE-ConnectionGUID: IrbA792hTq6uaXyo3FV3og==
X-CSE-MsgGUID: ENEYeHhUSTmD/lS5SApFfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="85115804"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 03:52:48 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 03:52:47 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 03:52:47 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 03:52:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NS5j9J7aHwEBskjq/F77PvQQxvhvP3R28lPeelo2Yx2PeTtrplquTDdt4s6cx56dkHNktBVCh5LSqfWz66BUZPkclDfvKe7vlCTEh56fx0yiU6sTtAfYaiioxgSWxRK8i6qNoGjeoLVF+lGAnvNLC6bUeGpii1RUUG1NuexLXL2bxYEF35qmVdqRmL/pnrm6FVsOimncRn0f7KvcnhH9oBsSf9chxMfogeyFuQ7Q29/ym4IpvlKbITb7z/5PjPJTUXCkfFfnkcgekiM5OB5TR+s2RtaBBnJQ51XeUCzNi8hKZwItIr5OndXECUCnv26eHOwtV0fsO3F+JfY+RfPCQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s98ftp1qmhg7hmvuVLO9Y0gDiYyxtPjmaI16HqHXWhk=;
 b=EOEJ9xHwq9dBf1Aa/c6huS8Av/FF3DiVZzvlL3gwhZUPkwO02uCv6iWXUZuHGsHuHIwAjxKLX16WVSJTRNolnaehCkB1k5h8DezJ2DMIloE0s0KDdUPgpqSVkhfZg5FdiE88HVEVTYqpzcAeO40pZg4d/PH1cbe32HLenrnoXUzgfNFCJjuEN+EkfDWFOAZXkcp1jFV8vUgqdeZPsWa+0gutEw0iXHPjBpIp/+wTRdA3bB+QGXa+BCEpWoWm26yxLtNPDsTywuvydIInYiRuY6FhITEBA9QIyUR4VH4YR2LU65vjeBKehVcgsuPLihnRJk7XG2ANMD1TYRfaChOzDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by MW4PR11MB6934.namprd11.prod.outlook.com (2603:10b6:303:229::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.17; Thu, 24 Oct
 2024 10:52:44 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%2]) with mapi id 15.20.8093.018; Thu, 24 Oct 2024
 10:52:43 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Taylor, Clinton A" <clinton.a.taylor@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Bride, Jim"
 <jim.bride@intel.com>
Subject: RE: [PATCH v2 04/12] drm/i915/display/ptl: Fill VRR crtc_state
 timings before other transcoder timings
Thread-Topic: [PATCH v2 04/12] drm/i915/display/ptl: Fill VRR crtc_state
 timings before other transcoder timings
Thread-Index: AQHbJZUvBgkkHEJ/qEawjDC7OrF6/7KVuQbg
Date: Thu, 24 Oct 2024 10:52:43 +0000
Message-ID: <IA1PR11MB634888830FB5435DFFF1D22CB24E2@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241023214701.963830-1-clinton.a.taylor@intel.com>
 <20241023214701.963830-5-clinton.a.taylor@intel.com>
In-Reply-To: <20241023214701.963830-5-clinton.a.taylor@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: clinton.a.taylor@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|MW4PR11MB6934:EE_
x-ms-office365-filtering-correlation-id: dc10cb41-0ccb-4b70-5851-08dcf419fd37
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?ThUGW8SQLBUAly3fZIZer7JYd26koQnOIneZt6GWT90h3TWb+VG7PT7ouWW8?=
 =?us-ascii?Q?KyIWhZsLCCFNe8XgEd0LXvdQld2FIDO2NoqWevFN8P3Yx8+CfyLRcc+nR2mN?=
 =?us-ascii?Q?RP/7x8Q11w7nCsFdmPuy8zuwssMKMNIPsXNAx+fHpaAgNHv/AmaCRBPvlYb5?=
 =?us-ascii?Q?Ad/yBY26M6RtsgN2tLc2Ws9FJZwSA2npQQAhMEmzBNfAYHdsXr8ik3Wo/C7f?=
 =?us-ascii?Q?r0bnQPeKABdk0y6r7YtXT81si5YHlHYHuEUnViu36UeGXX922F321jfV6iU5?=
 =?us-ascii?Q?AF4InGYtx2JpjYbQRVgTZQfWRG5XY8U6p5wy2pbNr2wSJJs5UgBOX00h5TFm?=
 =?us-ascii?Q?soXEI0PDqC5mWYn6Kx9g64x2hP3kSdwjtQbjZ9TN4wvkpZNNs2V/nMQD236F?=
 =?us-ascii?Q?8GkrZvTX1ruixjf0UOAGbNDf0ZJpTDs7JnEaphJ7lHOLsXToWGAXkqs2T5F2?=
 =?us-ascii?Q?W7yjOsRrIaDdWvxTeZiLhX/3OSv/EF3NovqMnLoqtGX0wb31DKa54zV/iTY0?=
 =?us-ascii?Q?Gs3rdwjF+yiZVRqNYxGtCZDsNi9UJwx0cxDj2cXiyw64n6R8eMCZSaGfBanQ?=
 =?us-ascii?Q?hwJ/My0xhNUop822ASSK0iwj4h5FTsbRIxGnzV22u3d1mAi68k38jWjgUcN+?=
 =?us-ascii?Q?+gbIIxQSaOsOaN8dUhwAg6tpPZ+bhdSVbD1nzozuFgUH6kW6Se2Vba0SJ0W9?=
 =?us-ascii?Q?N+goS80bHq0J+dcr5EO6PQ8GtTWWPVl1wx6LiGAXip++mbsPc5hAR/tIRr1V?=
 =?us-ascii?Q?Z3QgogH519mm+cHFCB1JoqUjw6PflxrAiDuylJ4yx5sjbMwYrqSS/oJgMbQE?=
 =?us-ascii?Q?1pAh8I78c7PcpEy9d9FY1reujaOi5yBTTqrKTF6byvt/ikx6dKSsCFlc/CkM?=
 =?us-ascii?Q?JpxUd4mqqtiO0LofUeZR9ts7Rld4yiyhbzzi1BR9zjC3qod6dGwlhcZr1Vi9?=
 =?us-ascii?Q?aHA6R9DQOLwUO4liqHg+ezXCBaLbM+5nxvs1L9muNtdcvZEMl7Md+XNT4zis?=
 =?us-ascii?Q?MWZcX9oibpKbHtOmu0xUdRHhDmEfESoe44Y42RpaXws9Y/Dd5g5yFDQXnBVL?=
 =?us-ascii?Q?uaB2DSvew0NIxq1qqpaGGGSzzblyvSA+y1mZVqOKb4/epue5lGb2Gd2gis0p?=
 =?us-ascii?Q?Goi/LJhfBYPVDdUBIdvMXNktj+I7G8PU/hHk9W1sVJNPy5+7TEe4vVTTEEKH?=
 =?us-ascii?Q?dd/TSoSDLBLRQZ+e31NLv7+AWzbtr+It79/gRtzpmouvCQazWIQ629etbF6X?=
 =?us-ascii?Q?aNpPUTlgw0XxEjLvW8c26Rxr7EJRFOUNW9kVQQxD+zbbwncuZJQERhsjSefv?=
 =?us-ascii?Q?sykqOTZlloHWyuY9cdbafwZm?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dsaLLnCAgcmnLA0Ps4ISRlM81Yyjqy1ZY0nH4X4szMVNftP9pZEVs++v874P?=
 =?us-ascii?Q?KjMBmy2B2NCGBj5JGoh3LVwDIv8HjJuWqoVVn7YFsUM02Zolhnf/+csppMm1?=
 =?us-ascii?Q?w6oO1P/L6NtygKA0ZRKkRE8efFWyqmYyKIpIyeRQth2NaSSnKbqfUEG6wCwQ?=
 =?us-ascii?Q?Kui7IYUsK/KhklLrZGLdMnT1/rhaQyIORXFzJb8/06MsAJRjaBKFkKNSywkX?=
 =?us-ascii?Q?6WSD1zOtwcGGKIwXKSyfDPsDVbp3Jrm8LhJ0O1pC2AJZPt5n5x7Kvidh7lz0?=
 =?us-ascii?Q?8775iouEaIoGvdKP/Sd3dQmzdD+pqIZeEvgpKTTvo0kNfmkJSY5QdTetketN?=
 =?us-ascii?Q?AH4kRMtr7lh7lW+8Tr+XRBD41LpLcrDSNLTJRQKIpxywLVQ+/Z4O294tJJXi?=
 =?us-ascii?Q?xpetQNmi9YFJLqtBBM6wSlXFXvC+abfa3T+liqBhkmNruXQ3pnCxaBhXrYQj?=
 =?us-ascii?Q?mOzFAgth69J9SLiZN6kFePlw5EMiW42VT23CAR53BFgtiCMpix1/h9PAgQ7Q?=
 =?us-ascii?Q?4oJsRUdEBNeVgQtCpFL9rlFlIcgvjGMrqXVJTYnPRZ8Pq8NHYZy9CwIvmRj/?=
 =?us-ascii?Q?QnjfHqMAVXUukrdMdXsL4MP39j/P9mvHz5DqVZsE4Tl5mkbhDOl0l2iBeB55?=
 =?us-ascii?Q?x0X1NijsJg2paR/uYw8HZrQKT6khSEWvrPY5VPL+WNSXdjZgHtGbKDTXSbVx?=
 =?us-ascii?Q?H91s9dXxlXLsS6n443r1abm9awKtmlQqmKUHDb6INrRlrkQCDpLt5hfy7sel?=
 =?us-ascii?Q?zeXFC7grOqwtELD4rTW9J1Y7AUV1Q+vNM0aS+6udSqWB2N/2FaYJSarRDZys?=
 =?us-ascii?Q?iP2IVTW29/xPZV2tX4UC7950mYSRpU5Kfl+EGuyCzjdzY8F0d44oMv1vBF41?=
 =?us-ascii?Q?TB/udtcNiH9tJOJWD09Co9T8Vh6hwPPZkMLEvhoidSzX5GjnIa2PCgGTg5bn?=
 =?us-ascii?Q?NFl8Er/+Vc12mu0b4D8Dz2M0Hf6K2wXn2xvZwumy5ocgeuYD7AqqfsTO3r2c?=
 =?us-ascii?Q?g+z1382oA/ickzEJeWhC3RvdryB9xzpugIkLo1Id08iFSpzLVZy/esGZ3CWf?=
 =?us-ascii?Q?h7h9UU9KENnF+v4X9pySODG1v50mSBl31uRw+Nl3Lw9OUmabMUI8so7nXz6w?=
 =?us-ascii?Q?uCvzNxEB2FVxtzy8M+U2n+s+zQvG1hr5OOXhUIsYM4kDjB62k8ich/UO2Vaa?=
 =?us-ascii?Q?jllcdEFlK3gDgpai0GkSgjfDFs7EGWJMqLEfkcvbOQOqnZf4ipUwXgwtEIXC?=
 =?us-ascii?Q?rInsCzYW733QJGD7bm0IuyKsi/poepo4pEGfFPOpj1W9Q5Zx03q0cc/RDhJY?=
 =?us-ascii?Q?ER0D11eKVLMVgY9mvWr8+iiKz6TBCH4/j7SD+vRPlCox1TdeHYkUamle1tOh?=
 =?us-ascii?Q?tH69SgSJu5y4SDn/yLX3GgMVLzzzl0iP/FAbKIzHXHktevKfvnSMsY3S7cSi?=
 =?us-ascii?Q?sUUUROIhlM4ArUWg2XwE3nai3cS4M4WDS4DmCEa9JiC6nrjHWJOHxKisom5D?=
 =?us-ascii?Q?HtQaQaZRwvwGQmFJEUREvhNU2LFKWCV9/bc3VRau9F8sGewEqhOK3Yj0pspJ?=
 =?us-ascii?Q?M8Kq7H6qNr5917Y8C1fDDHmMzePOjIuf4g8zT5jJ3ksrCitsK36x2fsqsHND?=
 =?us-ascii?Q?TY2NjqFn0j46/8QEQyrtNek=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc10cb41-0ccb-4b70-5851-08dcf419fd37
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2024 10:52:43.9008 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xXqqnCAywuK+TBjlff5EA63+G5y5cynV+HaKZg/5auFFX1zoASmOsXkTPM+h80AMqwKQTa/ZdDE8DSk5g32Tjm+keBQRSSipz52XcpedX2IVF5J1ENR3hdTkV2gNfSbA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6934
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Cl=
int
> Taylor
> Sent: 24 October 2024 03:17
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: [PATCH v2 04/12] drm/i915/display/ptl: Fill VRR crtc_state timin=
gs
> before other transcoder timings
>=20
> From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>=20
> In progress to make VRR timing generator as the default timing generator,
> rest other timings will be derived based on vrr.vmin and vrr.vmax. Call
> intel_vrr_get_config before intel_get_transcoder_timings to accommodate
> values getting pre-filled.
>=20
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index ef1436146325..01466611eebe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4134,13 +4134,13 @@ static bool hsw_get_pipe_config(struct intel_crtc
> *crtc,
>  	intel_joiner_get_config(pipe_config);
>  	intel_dsc_get_config(pipe_config);
>=20
> +	if (HAS_VRR(dev_priv) && !transcoder_is_dsi(pipe_config-
> >cpu_transcoder))
> +		intel_vrr_get_config(pipe_config);
> +
>  	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
>  	    DISPLAY_VER(dev_priv) >=3D 11)
>  		intel_get_transcoder_timings(crtc, pipe_config);
>=20
> -	if (HAS_VRR(dev_priv) && !transcoder_is_dsi(pipe_config-
> >cpu_transcoder))
> -		intel_vrr_get_config(pipe_config);
> -

Hi @Clint Taylor

ref: https://patchwork.freedesktop.org/patch/620416/?series=3D140195&rev=3D=
1

As I have mentioned on revision 1, this patch does not have any significanc=
e as stand alone, we will be adding this patch as part of
Ankit Nautiyal's VRR default timing generator patch series which is under p=
rogress. For now we can drop this patch from this series,
This single patch does not have impact even if added here.

Regards,
Mitul

>  	intel_get_pipe_src_size(crtc, pipe_config);
>=20
>  	if (IS_HASWELL(dev_priv)) {
> --
> 2.25.1

