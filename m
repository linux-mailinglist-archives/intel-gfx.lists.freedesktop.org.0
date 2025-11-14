Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F246C5D1AF
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 13:28:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01DDC10EA58;
	Fri, 14 Nov 2025 12:28:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Squhuafq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0E5D10EA57;
 Fri, 14 Nov 2025 12:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763123304; x=1794659304;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PHwd09TD3kPbdUocIg5imi8VkBmviVWLdmRsDqB0qME=;
 b=Squhuafq/V+qe9r2B/Lr9WHYRuYOYOH0t+gjGHzg6VwjUpIk5HxJxnOA
 Zo4jRmG4ZmBpS9FxaH1/8gOLKGx4NkN7VF4SWH4NqHUUSCPxJ5pBSy69d
 rcxai1CtcOgoJ2KXbBXyzlQ5tHffr5QtACg3MKdyPM9kx6KmlIxV9Vj7y
 LzXUBD0zDAoKVcnbOEjjHNJXcupg+f0yKTXgcN6s4EGPLSJnOy5Pct6OR
 GgOSc0JOXa34spkaZeHYSIhqaBpKXPj0tp8t0wcx+cqF2L8SY1ZFKmgOp
 8RSi6i90AkOiMGNcqjSD8V2EfzMpM5BzB6d/2PEND/7ElFoN4ZzGBFIbc A==;
X-CSE-ConnectionGUID: cwlzqvgLRx+Ee/9Uq7eHHw==
X-CSE-MsgGUID: fjaFE3/DToO7hvWmEbIYPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="64924206"
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="64924206"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 04:28:24 -0800
X-CSE-ConnectionGUID: 4fb236hkQAalZZ3latm+Iw==
X-CSE-MsgGUID: Ho3BhARBTkKsLzEjgICcsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="193877131"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 04:28:23 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 14 Nov 2025 04:28:22 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 14 Nov 2025 04:28:22 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.68) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 14 Nov 2025 04:28:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h/ZhxrCIS7Aq7gTTUdtxpGFT1YJ6owmcEbqJNzrGQ8faRlXGpure9aeaFAQbhwUIbQSWWyKWtvTIQ0a3ulyE3l0IKDdHUUbfb9IfvOfRxb8owef50hJ78ka1pmtOQEAq5Nz9io5/vYuZhdf6/CYkPn06Lb1ZjaR3RVyaRWeC3GXFjLyAdVll4IAi86tCNOd7CyN+CriLerzRhWYtaTH+fAhdC+G+26bcWBL+Qm2+2+dnums4WGZKQvKcGVUWOwaqTapeGRZITlBcyG+sKKY271iCWYy/XAmMkecUvRkXWuSIj9MOpg/CAM85ly3CYyN1uIKBu7S9NIgwMDBaeOj1og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pISbrPJEOYQwmFIG1nHUkcVyZniQFN8lFHWQM3UTR+Y=;
 b=s9vNPjPd8q7czx1LnMySOmtXZ/3LNCB6ItoyNXGjUI4A+pyR1ketkgocv51PvNjSQ6ADbrZqASJ684IbDUerjfvNl7mVxAi/i33WCI7QJDesQ3RKP051qWjejuEH3/rNh6XURabSsqrq0oDpoEnipumyEQHs6wfLIu1uX/LaPBoMNlLoGHeyNWOAB1eYWg0Tn+LqqsL3kJnCIlV2z8DbkhKloG0Sv/82HMUu3EPZqCSpxcPduYvTFh8eH8VbZXNPhe5BJsi0UofJmjsifr8Si+NyoXm4EJrBasmstwi8aaWbGh41TeBFtj+8ExMgT9fPOjbw1STvTauUKMOAuSJzyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH0PR11MB5125.namprd11.prod.outlook.com (2603:10b6:510:3e::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9320.18; Fri, 14 Nov 2025 12:28:20 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9320.018; Fri, 14 Nov 2025
 12:28:20 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Joshi, Kunal1" <kunal1.joshi@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "Roper, Matthew D" <matthew.d.roper@intel.com>
Subject: RE: [PATCH v2] drm/i915/fbc: Apply wa_15018326506
Thread-Topic: [PATCH v2] drm/i915/fbc: Apply wa_15018326506
Thread-Index: AQHcUwk0RPDW9ev6pkGsmCiYV/I2s7TyHg7A
Date: Fri, 14 Nov 2025 12:28:20 +0000
Message-ID: <DM4PR11MB636043DACE0AD596AF086132F4CAA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251111124606.402380-1-vinod.govindapillai@intel.com>
In-Reply-To: <20251111124606.402380-1-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH0PR11MB5125:EE_
x-ms-office365-filtering-correlation-id: bb215fef-71dc-4900-2851-08de23794c0b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?D1L6k+fOEHv4tm2eB8sRFLz29D9Y/Negc/haJ9fWryp8hRLvZzjw450HycZ/?=
 =?us-ascii?Q?DhUl3whnxCBOS8ugPyHtbOV4f622aBO4UrwIsoTx7GLjhvSe6/P+XwaZIuDe?=
 =?us-ascii?Q?JrBuVWKmImIFe9LCCsL0eQEtr/zqKFe4L8Qjwl+SJxR3VPOfKPN4SNLD3vNa?=
 =?us-ascii?Q?pzEQQYI8ZZMhtacFthSi394uaT84wdWaR8JjirvV//igmHU+qrifY5A6oB/W?=
 =?us-ascii?Q?EwWnEM6Os9xuevWyCs6U4g2Y6B0sKrdoIPDlao7pI14J0aZB+c9dBPGir3AR?=
 =?us-ascii?Q?4rgwByPpvffxeA0oKqdDcci7KXbMYDnDcDAjdu7ldNm9g2BIl8i49FJhUadQ?=
 =?us-ascii?Q?iUwAW8jQJG0RHiu1U0zKg4PEaB4qK4vUoPqlFr+z/J9BTEan4eg3TH7MX5Qa?=
 =?us-ascii?Q?rr8OqQ9zLCYpv3ENPsVdABuNbYKgk6EDInpdwClW+d8CVjVNBLKokpa/6ChK?=
 =?us-ascii?Q?Z2w9BJ23pB/uyoIRzIRCxWflxuAEo2lHZADquE4mYZvl+WhFrxl73g85Bmc0?=
 =?us-ascii?Q?oqo+Jv6EMLFd4CbUFIY+cEbDoZD5pBE9PXQF5wU6XNxYW9wZeCv71Eq2TAXF?=
 =?us-ascii?Q?O0bA9IT1mtpU/2oKltMvD0/PR3RNSo8LzaVVBj6rsWNXix/trJp/Q7EJHXG/?=
 =?us-ascii?Q?iAjUq35k70Qb0yJyyKP/3mkh8SgyjtSQekrJcNJHukYu5iAKHRyRNvvMsN5v?=
 =?us-ascii?Q?btezEHxrhRBCbv3EpMXAjCBSRdwdDTNHcpAqwd1Ohcf6Z2l/WgF+TdH6yrpd?=
 =?us-ascii?Q?RWS+YkmOhsHZ69hvb9P8lOprDntXJ1ezGsmCgbZerVGWf2xcFxQ+WkAFMvB6?=
 =?us-ascii?Q?BTSbvhpI4vAQdTpEwSB2PnsKEyo4wTCby6TUERPUW44glqjI7kXr/xWpo21k?=
 =?us-ascii?Q?ysOed7d1RagitskaMykfvWSsOwjIarGyTYfA3bP++GuP2shs4s1cKuqdlrD/?=
 =?us-ascii?Q?681qC5RjqrNE2bDEOpdGU8r3WxiOWCw/UppXT/65jO1a9ix/lQcDSKh3Z8Kj?=
 =?us-ascii?Q?hIxoOBCdTbZEcXbHfJn4fFHUryh1hPt+gvRUR1XZ7q+VdTX0ahIWmIWnImVy?=
 =?us-ascii?Q?5V+otGQ1Wu5C25kJU2PjA7J3OheMWePXRa8svFb0y1DV0/980tINTQ7NrRjY?=
 =?us-ascii?Q?3kuj6nrq2thYBqwHIUz/ufMjaVbKJJ7smgSVS3ZLEsHW/MkfrDJ0hQ/7Z2pb?=
 =?us-ascii?Q?4ndHRmo3KMyhNlBv/lZbtE4SxiyG6htVeP1E3S12A+4EeyGj3VdIjHjvzFwx?=
 =?us-ascii?Q?ivDsX4VK/GhMY6OArpWJ3TIWgE+39lgsTJKZ3tJp8Shi5xFpqi4qJYUG8B8a?=
 =?us-ascii?Q?+y8OyKk7shRZ9djxqoqGVRW8JapI89vj5oi+gtm3QY7LOcJmstIBbgXD3AoV?=
 =?us-ascii?Q?EHWT+OF3q1fT+/xRE2ilKFS3UgUfqe+LK6j7eE207Qku4IcF9bJ/fEumINXA?=
 =?us-ascii?Q?baAAGmJZwnAtqYD8rBtacyhFBnIOzHTfkiGmknXp/ZGXkWklDeC54VkP77m/?=
 =?us-ascii?Q?Z0yLFfWx3kKmh8A7QenyZujtzy+AryaJer7p?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wURQbdkDa4cydjXmV/XpnyWQcSSqZL5m/1vaKFPSjapYc2wkjp5pS9mYhIUG?=
 =?us-ascii?Q?sPsF+GCkWI0S/7WeGkXMW4WrNjQdE3bJ16nB9xfFtwgHIodZO4ahf87F6tuV?=
 =?us-ascii?Q?mXv9/bRO/Ks4TqWo453FqWvxoHl4JrmgiblJhhne7Ua6dF+bgTmQhsrVAPPU?=
 =?us-ascii?Q?D45lkM1FC2iX0yinDgpBJuGh3lB+PuFqUrKrY3/0s0wa2EXOS7hrpmeAqaWc?=
 =?us-ascii?Q?lJVanp23+TGritF05J4q7WgZqGhRGR2djgJsV2wQunsQyCyRFlt6P/6WxDaL?=
 =?us-ascii?Q?N63gjciIZ/W+fzqAvkyDaUllfw9aHOG2JKtOMcx5eqeV0pdP6VCHy+4xgsUn?=
 =?us-ascii?Q?KHA2nAgbEke+L9s2zEpf6t7vO8XHuUVt47YTAzwm/VusBQBl6W3T0q1sFwxa?=
 =?us-ascii?Q?eaTGEh5sJFFI4VKEtt21PjumM/n02xw5H1Ko1c9H+soZezKeyQPb48boPEO0?=
 =?us-ascii?Q?1u9hn9s2zp0SUnrO24hLDaLAJ/OMGlVCqwCu3eMJroxhylGAgo502DxlwRrO?=
 =?us-ascii?Q?mnd3EhZVvZbC0k9mCWn0lLYBdduLAxbgBSqT+QahAiDxJRr7uAzO2CQsY5ME?=
 =?us-ascii?Q?fRR6PvY+e7FpYci4UI7tZqtWcbeYBIDJm6pI+HHLoEvzr94ea1VrnQHE6ONM?=
 =?us-ascii?Q?NDGA4B8/AZh+IQ3Bz+5Xb5bp+E4hCnvb2dB3fRlmOKxkwq0F2Y4dUOGv6F6z?=
 =?us-ascii?Q?u1hMmf0f+6TzI7C+1GEK7M2ytdt/pFpX0zOMX+t9Zt74jukP939ILdis8rMh?=
 =?us-ascii?Q?UAgy+Ecso2MxlfrCD62bW6/6xaTYi165XXYqiVAesAB7uqPy4nOqSvMnklyQ?=
 =?us-ascii?Q?/tgS3387yvZPeUZHr5Hxljt6XUPpNu69Bjd8zL0k9q8qba9NzQb7iGD6e1pc?=
 =?us-ascii?Q?f6L+vyfZFRb4kgbFDTQ4cllOpOD/ZXjdqKRs4/a4Uyeob3yMevhHWSZ9QZe3?=
 =?us-ascii?Q?uKYXExxMoQf4MVeSbDy2AVyDXf71Uo6gKsPO4qKKsqXN3+42ZhQZD+8Q8zYk?=
 =?us-ascii?Q?9IXbwa986HDhJuD60j4/R/+Kr3EjDDqWZ1AM2TWLUG6mfxxmUwNZfg7xd3j1?=
 =?us-ascii?Q?3lUfcFsNRhaQYAyjeZ5hfd9kDHpLa1cdZSzpPDOermMbE4guH1tAX4rjurpK?=
 =?us-ascii?Q?QEIHyy3raGkN8KS2L2AXYQb3YeIutM75vbr+Bd2RNNZS7oaNSKJOpIb0J2GS?=
 =?us-ascii?Q?1K28C6nswkx/og9nPn9vLZ97oLPqVCJPgdDlNL1pcKijM8kyzhoLRCAEuzkA?=
 =?us-ascii?Q?jI7P+T9VPlLUxA+mH8O+zySlTPEnZiaGooWz49G085Te7ce9baEOwsTHP6rP?=
 =?us-ascii?Q?jKq00w1Wu7LuUlBPpuTEw9abnJIZ+neOiL7bj0qZYy1+Rck769sdScaJPXPE?=
 =?us-ascii?Q?8kR5AAdi4Ux1SGI0Ksu469rYm2+OeSb+UqpSeVlEoNq86VqzN201YKGO3F5u?=
 =?us-ascii?Q?DsUbrIwb89Dp7N9gCyEKf26L/O9OyCdbfZhARScIvJuqzwCANCDq7887noLx?=
 =?us-ascii?Q?FOCjY1yD0X0Dko2+LpP/Vm8x70lDPWHPqoF6s4RXE6K6J7KNURi6nSlS6heB?=
 =?us-ascii?Q?E62Gwby+a/PWa6U9dZLR2GkRx3RYF4+RRLSBxcFY?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb215fef-71dc-4900-2851-08de23794c0b
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2025 12:28:20.6409 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0ZHB66V0QpLyjcYMOi4ab6BZZ07ADoHOgZ0gz6avrmUimtkFQNLvD2HnC/iTClOmrjWz3XacAtgi5eh6Gv/oNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5125
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
> From: Govindapillai, Vinod <vinod.govindapillai@intel.com>
> Sent: Tuesday, November 11, 2025 6:16 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Joshi, Kunal1 <kunal1.joshi@intel.com>; Nikula, =
Jani
> <jani.nikula@intel.com>; De Marchi, Lucas <lucas.demarchi@intel.com>; Rop=
er,
> Matthew D <matthew.d.roper@intel.com>
> Subject: [PATCH v2] drm/i915/fbc: Apply wa_15018326506
>=20
> Disable FBC in bmg as per the wa recommendation.
>=20
> v2: use the bmg platform instead of a specific stepping

Acked-by: Uma Shankar <uma.shankar@intel.com>

> Bspec: 74212
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_wa.c |  2 ++
> drivers/gpu/drm/i915/display/intel_display_wa.h |  1 +
>  drivers/gpu/drm/i915/display/intel_fbc.c        | 10 ++++++++++
>  3 files changed, 13 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c
> b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index e38e5e87877c..b2e71fa61c0a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -70,6 +70,8 @@ bool __intel_display_wa(struct intel_display *display, =
enum
> intel_display_wa wa,
>  		return DISPLAY_VER(display) =3D=3D 13;
>  	case INTEL_DISPLAY_WA_22014263786:
>  		return IS_DISPLAY_VERx100(display, 1100, 1400);
> +	case INTEL_DISPLAY_WA_15018326506:
> +		return display->platform.battlemage;
>  	default:
>  		drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name);
>  		break;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
> b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index 3644e8e2b724..f648b00cb97d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -26,6 +26,7 @@ enum intel_display_wa {
>  	INTEL_DISPLAY_WA_16025573575,
>  	INTEL_DISPLAY_WA_14011503117,
>  	INTEL_DISPLAY_WA_22014263786,
> +	INTEL_DISPLAY_WA_15018326506,
>  };
>=20
>  bool __intel_display_wa(struct intel_display *display, enum intel_displa=
y_wa wa,
> const char *name); diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> b/drivers/gpu/drm/i915/display/intel_fbc.c
> index a1e3083022ee..16cd99db2978 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1521,6 +1521,16 @@ static int intel_fbc_check_plane(struct
> intel_atomic_state *state,
>  		return 0;
>  	}
>=20
> +	/*
> +	 * wa_15018326506:
> +	 * Fixes: Underrun during media decode
> +	 * Workaround: Do not enable FBC
> +	 */
> +	if (intel_display_wa(display, 15018326506)) {
> +		plane_state->no_fbc_reason =3D "Wa_15018326506";
> +		return 0;
> +	}
> +
>  	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
>  	if (intel_display_vtd_active(display) &&
>  	    (display->platform.skylake || display->platform.broxton)) {
> --
> 2.43.0

