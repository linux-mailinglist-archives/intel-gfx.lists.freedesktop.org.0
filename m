Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7120EAD6712
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 07:05:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FE9910E108;
	Thu, 12 Jun 2025 05:05:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MYSO3OUs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C95B110E09D;
 Thu, 12 Jun 2025 05:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749704739; x=1781240739;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EFoqqPTb+6+JoKO86TNPCWmUWRQEDWiRVdUvd8nU4Io=;
 b=MYSO3OUsBhj9XL9pj2qBq/2899GU3NtvcFhAy3XlHuCsPi+2N5w/3c79
 qpaXxcwQkYXyOH1DcEiZw1804TuKBjo3KgdSw/g5h0kwKMuCT8Gxedj8V
 FTZA4hE5jzmv6ziOgB8tnk/XvXhQ0woVAiyNkIJHJWIdzkjtk5NAEhs8D
 MYGVd+D2C7l4u1VcHetF+nz8Z1l4P+eEHwPxyz7L07WFKlCza0Seh1ITD
 aWej3/bPVzHIxt1Vmm/Q0+J2B/F3IHwm5f+xwDyhocfcLa6hK7uEV3TpW
 xo7DNuxDGcYGvCuTQrIaMU6C7P/VdbyIOTl+r6Pgc7vuUfGLx2NEc0kre w==;
X-CSE-ConnectionGUID: QYJijMroSpWilqySbKZlwg==
X-CSE-MsgGUID: AVvSJHYeTPW4GOuRivrFSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="54496848"
X-IronPort-AV: E=Sophos;i="6.16,229,1744095600"; d="scan'208";a="54496848"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 22:05:38 -0700
X-CSE-ConnectionGUID: 2DQEewC2SNWCI+3q0rk/cw==
X-CSE-MsgGUID: wSZ2qa3qRZK67ZRF0H/leQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,229,1744095600"; d="scan'208";a="148317982"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 22:05:38 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 11 Jun 2025 22:05:37 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 11 Jun 2025 22:05:37 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.67)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 11 Jun 2025 22:05:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EeQJg9U9prHja3C/b4IJE1luSHQu0fXk6k0Cb+rO35r0sj9Ic8MxZNaTphqoahA5hS9pmqTZZlq8AY7pLtGiMc4CLYuS/ktJxMva0vko3bVWagdYiLlAunYc5cu8a9W7sy1s3N8PqNpKplrMu9Xgb+xXMpwhythyt9btmSaeUAdEy86XmGAElrAFjYpk9laBC1H4YB5rjzd19oVOhl3Tscfqzq/UZ7oGQa1fgoY7HJS5m5MtJj3bTaCIR5ejP1b/HsRCRxqnCj1yvEZncUDHfQNfT5g3xRsWuJvm+6yn2RKIUrOYifhgCHyAAg7Sxerc0Xs+0xpPiTmabjxjZer4kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VJHkR/q5wIcNr25UCsRcbyG3zYh6DtJOF4RyOkajL9A=;
 b=qbe6qSeAEx752zH4fMYCgXUJ4D/gWABPk/KI+IVdIuuoTuWrp/N9Zf427lae7GE3abLOONdp4fZmrUeaDZqkVBmJjZ67Lw34ZHoPPooAkQlqluQK/dpey741K/+/MyIczepwKdXiYUqH6T27gH9maVuBXb+Ux1G0dWuC9gC22Jr3ZxmIJRQyeptVoqhlxTvonsvIQFIH6ZNWUgdVtSvTQY23Iz1+vB3o6i94tF5+Lr4slOGIctD+yWzjdeJ0RFlfjT8wifXeW9TGx8tbp5ond28HSazkXxkXuvDFXZ+/s7s1BBj1oTgrVD3WUObx2xZ6Ugxuf8CDG0pAEGtYag5pzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CH3PR11MB8562.namprd11.prod.outlook.com (2603:10b6:610:1b8::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.29; Thu, 12 Jun
 2025 05:05:35 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8835.018; Thu, 12 Jun 2025
 05:05:35 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v4 12/21] drm/i915/dmc: Reload PIPEDMC MMIO registers for
 pipe C/D on PTL+
Thread-Topic: [PATCH v4 12/21] drm/i915/dmc: Reload PIPEDMC MMIO registers for
 pipe C/D on PTL+
Thread-Index: AQHb2UjF3YQd4aMGAES+TWSWgVXNY7P9CqSwgAD8OwCAAPUD4A==
Date: Thu, 12 Jun 2025 05:05:35 +0000
Message-ID: <DM4PR11MB636002D5E485E12E7F28C445F474A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
 <20250609141046.6244-13-ville.syrjala@linux.intel.com>
 <DM4PR11MB63609BA53894388FB862C0E8F46AA@DM4PR11MB6360.namprd11.prod.outlook.com>
 <aEmR6oxcFPhNOod4@intel.com>
In-Reply-To: <aEmR6oxcFPhNOod4@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CH3PR11MB8562:EE_
x-ms-office365-filtering-correlation-id: 3aafc05c-e367-4824-ab7a-08dda96ec3d8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?HrVTyMI502wUqd4k/0nLM5YJ9QVgubQERz96/vDhYORR/wjSgAJr20tAAo?=
 =?iso-8859-1?Q?2QIyBTPCMMCnK636Qvy+25aW/Uwxn/mjeR7KGwbWYfPKsIFV/hE+H4Q+r8?=
 =?iso-8859-1?Q?Oicj4AKpUi1vucdWjs9/VGBw1nZPafcPNJJOi44OOnJ9vFWvUpwBqXD+g6?=
 =?iso-8859-1?Q?hfdK4hEkkhdEWKSEDijqHwurG8dcnlr31ZmKgAMu+jN7Rx48Ey16cU5AQn?=
 =?iso-8859-1?Q?TdhpsZE/xoYNRaUi3XqwZDgJyNcmOf76GHrQWJppUdLeAC7VeT46NVi0mQ?=
 =?iso-8859-1?Q?7YvP7SVYI4zR3OtMZMNm8eOznjOYrG/cWo062BZsuE+WFb3aXPLLbG9ptY?=
 =?iso-8859-1?Q?OipPmMisGEipa82iPGAyje4FdfwQgC6NN6pPdfFCslQ2/6CHsBCXVTz49K?=
 =?iso-8859-1?Q?JCIo80xZPE86RBduEa6DwUUNoU9YpdgZTQS8p2K3l3A4CO9IECfOBX8Njf?=
 =?iso-8859-1?Q?wbgDP+8Esg/FxsSl4+tjlrkxdEEIVMUrO1kQ1ac0uMDLbZePKVZBCCYrEh?=
 =?iso-8859-1?Q?KSItdblPk2y9ATWRfJDlxBDhtmu2tctYtmfuaPZnstz4NmXHgIj/6yB/6g?=
 =?iso-8859-1?Q?zDxZc/oN7ZriLSnI8OJvkC5qCMDwLMZOQeCgRUsKq0oKLzP8NXfXf8bRsC?=
 =?iso-8859-1?Q?GM4c2mKfJSPrtHuzyB7tzdxJO5WMDbH2n3QCN0/KJFMZinXLhanOBHMPKN?=
 =?iso-8859-1?Q?i1yvFzdwBn/zQculb4C6rgP4H3WMEIKYqUD5jfNJg02PYXdTK9WiyaErma?=
 =?iso-8859-1?Q?jBLdJhoCRPJ1h90YuPtXdJQJ2nmTMV/0QW2SX8HUFTiJ94TsnsfTO0JTHf?=
 =?iso-8859-1?Q?ADjCZD8eo9CSFchi9L5re/YBFFcGOYuLXDhBqVubGxBtLnsf89On3UgZuA?=
 =?iso-8859-1?Q?MjMJDN5r+2TIuHatqbZtQIoX3tpsQ1E1kdFeDV8n6M2tBz91CV4HT4q2Tw?=
 =?iso-8859-1?Q?1SQJw8cLCpCulkn5ym21FIWTRW/PnurvIihUqpM8c13g7+aJGx4eW8Y4+i?=
 =?iso-8859-1?Q?s52qT/guVeHq8oJwDhutt37JQbnOXr+6L0E39sGEPHUytGdsR/P0VdPXV7?=
 =?iso-8859-1?Q?/ccH2XTGIK+8KmK/ad2HXPgQ+/xhS6HC5tEZgzaLWoK+8JWLJYLtcpGBMq?=
 =?iso-8859-1?Q?h4NJtg2IV24ubBo7wE/uk+vwoslZiDJ/HirP+nrs9hi+0W4fWc07f4T2K0?=
 =?iso-8859-1?Q?zyxzgOcJaH1ovxUYM5USrrWiNoF4kgZ19TrXVQm4P6NQpYqLVC/12c7SCn?=
 =?iso-8859-1?Q?ln3rNVZPkdTeKw+vUy3wXto8+tma+tRVZgRoUwvoiV8UFJthNJ8ufILxGV?=
 =?iso-8859-1?Q?Y1UwyOS1EL/bmtcAam8o/4Pa+MPc5EjPs5gMqMxDFVBFcsjzJ+C0YAB3sZ?=
 =?iso-8859-1?Q?UHtX5U34bBviW+RD+B/AMIm55NIYS3mK9YiqVjODWhqeGE6nF1FW6G/bYz?=
 =?iso-8859-1?Q?VxPHavLw83wf5K3V2ARAPFaPAWhAj9jYGu36EqszXgwXUYPoFbnVqo+PoK?=
 =?iso-8859-1?Q?ILUksB/lDJbc4MNIC8xs6USWThSjJizKtOOlBlrjEx3++ApQa+MuQKf6vt?=
 =?iso-8859-1?Q?L1I+h58=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?m5yvWIj11m/usetWH/z2U6Nx9Kkb0TXwsHnUNJDyspGFbCRKKkbCPH3Mtm?=
 =?iso-8859-1?Q?LzeCab5OoM8tvwPjM1NGU5V2/aPfHqcW2W3sooA4SuMdmBg32sPaRcI4Du?=
 =?iso-8859-1?Q?qIZsUnwj/Bi53d1hJ2EP5zzcIbgk5FD3tFkmrDqpSoumEPS1jGcUcWeqj0?=
 =?iso-8859-1?Q?WX01e9dQgkQm4EtYCKp5qsf7ctfB+xtphgJBgBp0VlzhC/eYYEzrkHVTw5?=
 =?iso-8859-1?Q?Ab4PclbPQ+TV619JqaqWXJ+x3B6gewPFTW8jwkYGXF6l7v0qIQgapt1uct?=
 =?iso-8859-1?Q?NSIquz6FhnWAicuGYsSHtOuFOMuf6GFimXZWbWGNEnSLFDQgGGJD++ZDJH?=
 =?iso-8859-1?Q?ZSYY3XOxhZxgAtPRwfLrjZ6zhd7o7+x0Nd8yw+KT4yVVOrbTBjZVCFG1xP?=
 =?iso-8859-1?Q?k466jvygTXh3rveZc7gZdZh9UJCpS40yEonYVAVe6bylfBFIAJu7SJr9o/?=
 =?iso-8859-1?Q?REYpN2aYB+Cfyk0CZL9aapoi3ya40+8+QSxeJe9FCbEDQueGjWbXgaOABz?=
 =?iso-8859-1?Q?xH6YQpSGKRCp+mi+MVJ/GiF+irtnZel9Vblgah+n2+54mH2gKN9KDI3+U5?=
 =?iso-8859-1?Q?V6pTEfK3eY89fSmLaJYYPLOTfPs2Ovdjx+HWDlTeW2DkCCwKji6lmhnSz+?=
 =?iso-8859-1?Q?6mqPKxdAVLEfPhcqFrJEE/0LPhT0Zo+1GBaa8dQ9WO8uMpDJf1GtKowBE9?=
 =?iso-8859-1?Q?uCG+9SfjrY/lL8rbwckj6Ss9M5CXwo/catVoC/asLOUL1QooF+yRwSeNNX?=
 =?iso-8859-1?Q?HXZ084VzlfaZzUkPjgTNzbIY2RMUl/uNnu037FcR8Jc21kAC0iyLaGk9Cs?=
 =?iso-8859-1?Q?8IjhXO38HclL7vvTGCC+fCCxGf2xkC/1eACJNUc8gqI3hH5WX0zPBR/QJU?=
 =?iso-8859-1?Q?a3WHk/ILcjzeJ3q/7MVm2LGC3vViGjHGgOcchkbhBkWh7Cq3qrvaMfMeld?=
 =?iso-8859-1?Q?1SZXAxRDzYLCZ4wGcmpxB1rZzUjMZ0o1c3KtC44wgaWa7c+Zc1KAK/anM0?=
 =?iso-8859-1?Q?iB3uNp2zwV+7kQ+WAKz1c2YxWcFOQqLKDWJegBkC66Jm43f5WoP0XSqBVk?=
 =?iso-8859-1?Q?DEHNx0l47luDe6K34U/QG61QaNst9x+Z+4pIewVlfBQKseLqWM4EYuuNBP?=
 =?iso-8859-1?Q?smPt+ivQV6TjM8Oyw6Xf0lxVVzY71gr2m5awCUCO7wlW+MeWlgrNb0AiG2?=
 =?iso-8859-1?Q?Ve40Zt2OpXjPQQbSO2NV4HFKPVJS/h1PqDKITurYPbZVyzoZEBJIs5u42u?=
 =?iso-8859-1?Q?sSvSYGP8pmu6FGo9maliPHdzJNDwm9fN44NMU6q/msLOFDW9S7ikfog4yc?=
 =?iso-8859-1?Q?NF6QvhGHfDsMKtcFDHAq9VoJ0VAH5kAHiPgmu0Yh9lArE2qG/ykxW0mz0I?=
 =?iso-8859-1?Q?J+aobtQAcXEeTPX2kr3d9kwsJ4G/VCHpd9R1gbVVBXi1QNtvHfW9AAq868?=
 =?iso-8859-1?Q?KOLaJKc3iDh6rX/43fGBhvbRQhraI8YikJtKxLSOe8hrVFuPQ+XXBm589V?=
 =?iso-8859-1?Q?b2pqPTkLJ3pXgMLP8BjfRjiyPzh7RnHOpmG2R0nOQq/k2WICIeMfvTgPFC?=
 =?iso-8859-1?Q?rcvjtzAkEjaSk0WYLVjCreZ/NlOUVDNPgoo/X2nCCxDbV2md+mROFxZUV7?=
 =?iso-8859-1?Q?S0Ozl3pCPA2KHLxdCpVIN95XwM7WOI0EWP?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3aafc05c-e367-4824-ab7a-08dda96ec3d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2025 05:05:35.3236 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RnmQ1nk4oBz3CmphHnJRGTIy4i1k2OG9tSLJNNp58tE3fX4sJcmCD+zOui9pxf4yGF1ITPHUV7I0yNHbLNAmTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8562
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
> Sent: Wednesday, June 11, 2025 7:56 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: Re: [PATCH v4 12/21] drm/i915/dmc: Reload PIPEDMC MMIO registers
> for pipe C/D on PTL+
>=20
> On Tue, Jun 10, 2025 at 11:24:58PM +0000, Shankar, Uma wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
> > > Ville Syrjala
> > > Sent: Monday, June 9, 2025 7:41 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: intel-xe@lists.freedesktop.org
> > > Subject: [PATCH v4 12/21] drm/i915/dmc: Reload PIPEDMC MMIO
> > > registers for pipe C/D on PTL+
> > >
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >
> > > On PTL+ the PIPEDMC on pipes C/D loses its MMIO state occasionally.
> > > Not quite sure what the specific sequence is that makes this happen
> > > (eg. simply disbling PG2 doesn't seem to be enough to trigger this on=
 its own).
> >
> > Nit: Typo in disabling
> >
> > > Reload the MMIO registers for the affected pipes when enabling the
> > > PIPEDMC. So far I've not see this happen on PTL pipe A/B, nor on any
> > > pipe on any other platform.
> > >
> > > The DMC program RAM doesn't appear to need manual restoring, though
> > > Windows appears to be doing exactly that on most platforms (for some
> > > of the pipes). None of this is properly documented anywhere it seems.
> >
> > Yeah can't find any documentation for the same. Lets go with the
> > empirical behaviour, will try to get this updated in spec as well.
>=20
> CI did catch the fact that TGL/derivatives lose the entire pipe DMC state=
 when
> PG1 is disabled, and the main DMC does not restore any of it. I'll cook u=
p some
> extra patches to deal with that. The pipe DMC is only needed for LACE on =
these
> platforms, so could perhaps just not load it at all, but I think I'll kee=
p it around just
> in case we ever want to implement some LACE stuff at some point.

Oh ok, sure. Yeah, good to keep it.

> >
> > Looks Good to me.
> > Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> >
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dmc.c | 23
> > > +++++++++++++++++------
> > >  1 file changed, 17 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > index 5a43298cd0e7..247e88265cf3 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > @@ -578,6 +578,17 @@ static u32 dmc_mmiodata(struct intel_display
> *display,
> > >  		return dmc->dmc_info[dmc_id].mmiodata[i];
> > >  }
> > >
> > > +static void intel_dmc_load_mmio(struct intel_display *display, enum
> > > +intel_dmc_id dmc_id) {
> > > +	struct intel_dmc *dmc =3D display_to_dmc(display);
> > > +	int i;
> > > +
> > > +	for (i =3D 0; i < dmc->dmc_info[dmc_id].mmio_count; i++) {
> > > +		intel_de_write(display, dmc->dmc_info[dmc_id].mmioaddr[i],
> > > +			       dmc_mmiodata(display, dmc, dmc_id, i));
> > > +	}
> > > +}
> > > +
> > >  void intel_dmc_enable_pipe(struct intel_display *display, enum pipe =
pipe)  {
> > >  	enum intel_dmc_id dmc_id =3D PIPE_TO_DMC_ID(pipe); @@ -585,6
> > > +596,10 @@ void intel_dmc_enable_pipe(struct intel_display *display,
> > > +enum pipe
> > > pipe)
> > >  	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(display, dmc_id))
> > >  		return;
> > >
> > > +	/* on PTL pipe C/D PIPEDMC MMIO state is lost sometimes */
> > > +	if (DISPLAY_VER(display) >=3D 30 && pipe >=3D PIPE_C)
> > > +		intel_dmc_load_mmio(display, dmc_id);
> > > +
> > >  	if (DISPLAY_VER(display) >=3D 20) {
> > >  		intel_de_write(display, PIPEDMC_INTERRUPT(pipe),
> > > pipedmc_interrupt_mask(display));
> > >  		intel_de_write(display, PIPEDMC_INTERRUPT_MASK(pipe),
> > > ~pipedmc_interrupt_mask(display));
> > > @@ -710,12 +725,8 @@ void intel_dmc_load_program(struct
> > > intel_display
> > > *display)
> > >
> > >  	preempt_enable();
> > >
> > > -	for_each_dmc_id(dmc_id) {
> > > -		for (i =3D 0; i < dmc->dmc_info[dmc_id].mmio_count; i++) {
> > > -			intel_de_write(display, dmc-
> > > >dmc_info[dmc_id].mmioaddr[i],
> > > -				       dmc_mmiodata(display, dmc, dmc_id, i));
> > > -		}
> > > -	}
> > > +	for_each_dmc_id(dmc_id)
> > > +		intel_dmc_load_mmio(display, dmc_id);
> > >
> > >  	power_domains->dc_state =3D 0;
> > >
> > > --
> > > 2.49.0
> >
>=20
> --
> Ville Syrj=E4l=E4
> Intel
