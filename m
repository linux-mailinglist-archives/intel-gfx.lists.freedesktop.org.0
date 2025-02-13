Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D477A33A99
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 10:04:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8EB410EA32;
	Thu, 13 Feb 2025 09:04:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DInG5rTC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D0D910EA2E;
 Thu, 13 Feb 2025 09:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739437458; x=1770973458;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UqooQ7JiRo/9WfvrdPP6imxdDNFLqco4MV4b/ptmyKg=;
 b=DInG5rTCFDIuL15q91evjB2XQ7jdO+NHEJS1T1kPc3W/uJ6HRGTlT201
 62JElsfXeh8OsNeqnfpM8CQVkku3tF2KH1GTcHx+Bek4qi05GdpBfycqH
 eVXW5yR1TmuFrEvUD0i+afSF97G5Rym15YX4xNh7vn0F3ORw7xwO9JJYk
 rD0qzqLG0qjnnveHcYP0QZuNaAtCwpgs6yx/xfS9OGz1fo3Nz6lH6dGyw
 353W+p7q1XiV/F5knrqttVWSOKhm/1IBY8WTNzWOYGXV70rvoIMowEMyU
 Ks+/pBFs7JXP8fjx+ml9i4REw/Ej2Pl1P/52kfdlBKfZZzG1SCw38DC+W w==;
X-CSE-ConnectionGUID: E7+n5HoRRq6wxG1Vlp9l4w==
X-CSE-MsgGUID: Vi6Y6ms/QJOmdLxtmC8DRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="27723887"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="27723887"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 01:04:17 -0800
X-CSE-ConnectionGUID: fuONPabETvG0FUYQZh0Gjg==
X-CSE-MsgGUID: s/hXWQ2aREexGw3EBNLIAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112925533"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 01:04:17 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Thu, 13 Feb 2025 01:04:16 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 13 Feb 2025 01:04:16 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 01:04:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=blf2ZC7TaJrn+X+cH3hk/VIWwFGvG3SKk6Kd1jQ25e9RBtn0Y3SA2jM9ONGLw5BZzYy7LO90BwFsWhawo22VxbzOaTCXJxS5hRQZStJLn44dXgSRRpwV0Z+4hd6faBVkPEQBfCUJU/fw6jQWDa8b6cQAoAJU+kPRKkLBj0x+7BtBuMDELhnlk1Q1nnZBWJBtvTnUHECa41XdS/n2ZNojVb5KqBCb9N0V5v5hkP5bKYb2k1wzgThzchD8mr8T+7qzW2kpOlJ/mHPPVlfX03ZAIgaAeYV+QjrJirId3qZb0+cdUBUqbksRqUu3WgkczMmYH/Z5s3ivp1br2wbAH5iV7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vXCRsrtTHAV6e3qoRQhjsD06dybhQfc676QZVgUxl9U=;
 b=JamWipnBpo5IFViOamDZ22tNv3eEIxvZ5OQ0gtqIHp9qldIjC0ERS/aKe5bK5vuAPThckyiC1dh+sKOB4hNTFCcnmzVd8cJnF6362o9ZKQMxoGw57ooRKCEaUpy/H3xGsL6sS1fGytJDkRTJ3tXc/93oLgh+Sko352Rf2Xy15eFrD8Q3ly1gm7LG5JoZ79Zhxq7lpjEsuFNaYo89fW11kbRf2DbjcG2GnzgmCRIX4CWe8njEsdV/8RxfQwMi4Q13ZOxFDv50QNy6I/ay8V2XjHqrmV55Hw9yYVpK5OWSEKYT9D1/VfMoNyfzc1THP4wDG2yo+gMGWoJ4ZxxjcZwKEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB8035.namprd11.prod.outlook.com (2603:10b6:510:245::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.19; Thu, 13 Feb
 2025 09:03:44 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8445.013; Thu, 13 Feb 2025
 09:03:44 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 07/14] drm/i915/display: convert intel_set_{cpu,
 pch}_fifo_underrun_reporting() to intel_display
Thread-Topic: [PATCH 07/14] drm/i915/display: convert intel_set_{cpu,
 pch}_fifo_underrun_reporting() to intel_display
Thread-Index: AQHbfWx3X0+VRQXceUiKnUoufSbYJrNE8Syw
Date: Thu, 13 Feb 2025 09:03:44 +0000
Message-ID: <SN7PR11MB67503D10F24C3996666B490AE3FF2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1739378095.git.jani.nikula@intel.com>
 <3b984d0183214d05d0cdecad35184ea8d89ae050.1739378095.git.jani.nikula@intel.com>
In-Reply-To: <3b984d0183214d05d0cdecad35184ea8d89ae050.1739378095.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB8035:EE_
x-ms-office365-filtering-correlation-id: d1a134c2-5168-4e8a-ab7a-08dd4c0d51c2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?7oLM8OaH1fwERkeNccRi2E95P4ujWA8A17SI2VwJxhExoTHQoXgR9guVcBVj?=
 =?us-ascii?Q?M0GWQIWNIMUtV23C5vcBMYHWfPuke/9UEkZPbNf21+5Fkg9kfHYu26OuGAQC?=
 =?us-ascii?Q?gZ6hr/sc8k7cswm3o3A7CSSI3PbvBpW7l9AHZ0jVvvIwO53TGOUVAvBB2VYu?=
 =?us-ascii?Q?ObMJy4TagE7/Ww7IppM9VrJCsX1SCbx4HL+SzrDg9x+igsBEWdU3FPQ1HeOx?=
 =?us-ascii?Q?1a1un/BLzZnqofxwvIubV7w4fFCsx//SUSdOl6lXSiBP/ztbyb7yVkRXymdG?=
 =?us-ascii?Q?8k1sREs+2Ta2QLJHfxC5pKVCEnPkAu8SB3Ng6AEke+DB6+srL93pgJOYzG8r?=
 =?us-ascii?Q?lukekZkJ4MzeO27FhnYNNKB95bacM6nGoaEpaALXYp8phRYZw5I/uoC/JcvA?=
 =?us-ascii?Q?m6cTRgRBjouchW6yoUOj8yZOFMVPkfj0uyAPM5LU0oXZJmbBu08A6RUPu6mh?=
 =?us-ascii?Q?fAvBFTg67M0S+rQ40J04HFy+HzrjrFHFvBZA/SoQFxFm7cRXQfk7TyZm/aSA?=
 =?us-ascii?Q?ZUti/5468ftwxQoIVP4Wsw2NJioW2e7GtS99YMfP4LPkOc/ryllE0E1fV2/2?=
 =?us-ascii?Q?BcN1vkevOrpHa32n5bBaov054VAQFJSEFCsVpHzuyw5sj9frPba+UvaoH/34?=
 =?us-ascii?Q?hNXQQktcNUNK28amRFIF8wRrLSE097UAozu/nhVW5A4/jpwIIeySRL+39r2/?=
 =?us-ascii?Q?/jezONOWu6RwsUOc8Feu9lFLF6h2x0JG/iGW3021PARPIbiqOMc5o5qfI+Hc?=
 =?us-ascii?Q?7Ifef0hGF9WMRec8v5iX5MfCij1BrFH77ucrmy8o+AOagv+WCwwrjK2k1li8?=
 =?us-ascii?Q?UpHY3FUIYlw9DNWiEdTp1as4tr0dpy8xnNrumRfetx7RpboFSMPXX9MkyDQD?=
 =?us-ascii?Q?Lor91FET22UFBscCIrkBlIzeaBVHEqJ0/PPbhzkTvQ81l0oYOh1r2TeBtyCx?=
 =?us-ascii?Q?mWIMHzjN3IRLSQYF0kK8sEdoEGMtDSFojvQTtTdA6eIlI35iXL1WTz6HXVuj?=
 =?us-ascii?Q?kAxLIQGrm4djjF7QF+QyAcWJzXw7zAZxrqw9xDcfDdIo8n5a9WwTSGHWCXVY?=
 =?us-ascii?Q?uUqYsUP8PymR/8XundqvDotsT2vB/xW9uDet8nxvX/NuD7vXjNjKNxX1t9k6?=
 =?us-ascii?Q?ENFrooSN2nEz+LtGiEUzFIrZuynVjWOfMx1K2a6aMCg7SDsHDswij3m4MXly?=
 =?us-ascii?Q?SEFrpHhD2Z/0DQ1O6DSrCOiQhVsIWOgrqAkYYfKlkj4HOQbbrJCliVVqr+l4?=
 =?us-ascii?Q?tpg6kgmsKD4gyOH5kCnXiknDPqJaxz13m4mve50u5Q05xe2aRj78bSqYiySv?=
 =?us-ascii?Q?2q9NCY8K/Pm6HREUtaWeXjlRVW8uqDUXIz9y8Wlyt+INCEmL49bCMdnRVYTV?=
 =?us-ascii?Q?cZDCgQxOItlTkF7Q29j13JQKML//KFcDLio1A1jnHMsarzZ4yicR26fktcIp?=
 =?us-ascii?Q?oqcXt789cYRrDPtiMot/jcPfodfoLyv8?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?28p9hWwAxwyQr07XiPhVJsRfQo9mLDRAFcWL101t3bR9nrGv2+5/E++eEpBl?=
 =?us-ascii?Q?66R0UFD+DuxXKLDET6yquIsN/JPdH/DfpOmr5PFyYjmA+3Z2geSA2W9GFgZr?=
 =?us-ascii?Q?5xx1SolCHubGuCqY90wxwdb/ivRWL7ah5K6ndoYYPdTWQxGLE3s9GvOLQ5WP?=
 =?us-ascii?Q?6P0bAxQdnmhqH3IlvaZ+/+nhEiiX+VHt2aHzOdJLTb2YdG4l4XPQvmbn4Tja?=
 =?us-ascii?Q?gQOi3RTCCvq5UD6BNIXAPvLi2telO0cADEBaWManfFYy7ZPXM914NcekWDCv?=
 =?us-ascii?Q?/n+WhXKYrA6abJyeYVxFEkIDTmybloCFbHf73VMc+EHsKL53qpVhXmVyZ3K8?=
 =?us-ascii?Q?CLkm7ur8XmDTmaqRLtLBePdPvNZHe0yyOinFJ03o1BDEzCtwIg4YL8ViMW2+?=
 =?us-ascii?Q?Yjun+E7Cwqcp8wkY9owMEqTKU0zrWfY/RwvvX82xWH40AIBtimPft1ZVbkdR?=
 =?us-ascii?Q?Bc48H9atfljvttfhfuvAAlS2xCeZ3y/Qf4Md2mgYRuMaeN38OUzbQdLXSnrc?=
 =?us-ascii?Q?y5SGX9d3K9YVwaYCcn8slMyeOOdcooBFMsBA1U7rVcRr788HV26Is5IMUXhg?=
 =?us-ascii?Q?xJ/5AKJrG6G6Z3eHHkHIotFwrn7UTzgpwKCBWRhS9JmGRKY+85/k71j0dleP?=
 =?us-ascii?Q?Q/mR9/XfrZAQaI5fDkJbnSiHItk0NBORlAovMJAumQ+OptiOpjBignTnJedL?=
 =?us-ascii?Q?peYbf9GhX7NDQ+uh109oPwmKnJW/PKCGiBrfEVO+iAo4/OwnpFWgUBYfmt2u?=
 =?us-ascii?Q?5/E7XCROhytcjhPwKpQvF7+BR2qtE4r1vlq6XVAwCAxrXZy/pN8O+0Dbeliu?=
 =?us-ascii?Q?VvGlzXJg+Ex6SOibCRT+dnyaSvQ2DevR1KtGCMOA+/EJH6Dw/rEE7+KoVoJV?=
 =?us-ascii?Q?jq01P2A6q8Nk1jb/byC8Bq4Tx+ISrzV0OyARrGPKI7YJuDtQHfazpIEsbl1z?=
 =?us-ascii?Q?jHlbZgBgt2bdmz3bpX/jIm0Rh6mSEOQBcf55K19EC+3ztvAkb4pxuqTUDBZI?=
 =?us-ascii?Q?qM302uo+pFNlQFhcSH7yKjKE2V92BTic8vL8LEEJFqCs65HL47uciW9tr3pH?=
 =?us-ascii?Q?JsGVw17JN4eDfaGsfvuKAKfxD+xorQot22mu65ulP/yy+5+4gnU9HRdLX25n?=
 =?us-ascii?Q?QKAYxD3dshWOxMsQhDz6MHLSo/L3Aq3ahO4HKdTePyj3EP08sOQysja6QML5?=
 =?us-ascii?Q?EbdRZBMUOALmh/sxllm1050gtGf+rJpM3VYMOPVIpZJXQQrEuGaJVP7vjok1?=
 =?us-ascii?Q?PLNE5xQ+L6mGj15BuWVvld7A+1Fz/5EtPMHTx+LqgCSgLIk68QLpPJ8mccbb?=
 =?us-ascii?Q?QChqdsHctvLy34T0FTo1VMWQwYbQpEE/Prsw0sPpDC/AcVKt9ck9ktcN+gls?=
 =?us-ascii?Q?8aRi7QiFCEgbmH92JB3I/rvSLxaqtjK1+36Ymf4fO7GDFKSml5nX08W//ljd?=
 =?us-ascii?Q?nCVuW6p0fSxxLivqJUmzvC9Uk4DoLjgS8n3i/QqwPQ7aLwvXIa+x85LqSINw?=
 =?us-ascii?Q?pkLahG2E1JHeee35tR42K094HpRkq7gg6MFT2+jKbdkA9BJ8HulADIWAB0Rv?=
 =?us-ascii?Q?3vxWutoPgagZX2fbtMiOWq6PqcYPtEGFkhmgIclz?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1a134c2-5168-4e8a-ab7a-08dd4c0d51c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2025 09:03:44.5873 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SRSbfydQ3V450aPpYsCDBgpXlmfjwUXgSVCslNSHASQ1qlMQbxTX0Szz4pCuxq6aHcFuz34ybKUAqf14lnAFHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8035
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani
> Nikula
> Sent: Wednesday, February 12, 2025 10:07 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 07/14] drm/i915/display: convert intel_set_{cpu,
> pch}_fifo_underrun_reporting() to intel_display
>=20
> Going forward, struct intel_display is the main display device data point=
er.
> Convert intel_set_cpu_fifo_underrun_reporting() and
> intel_set_pch_fifo_underrun_reporting() to struct intel_display, along wi=
th
> some of the call chains from there.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c         |  8 +-
>  drivers/gpu/drm/i915/display/g4x_hdmi.c       |  8 +-
>  drivers/gpu/drm/i915/display/intel_crt.c      | 17 ++--
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  3 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 43 +++++-----
>  .../drm/i915/display/intel_fifo_underrun.c    | 84 +++++++++----------
>  .../drm/i915/display/intel_fifo_underrun.h    |  7 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |  8 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |  2 +-
>  9 files changed, 89 insertions(+), 91 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c
> b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 4b51a4e47f63..0cb98cb043c6 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -453,8 +453,8 @@ intel_dp_link_down(struct intel_encoder *encoder,
>  		 * We get CPU/PCH FIFO underruns on the other pipe when
>  		 * doing the workaround. Sweep them under the rug.
>  		 */
> -		intel_set_cpu_fifo_underrun_reporting(dev_priv, PIPE_A,
> false);
> -		intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A,
> false);
> +		intel_set_cpu_fifo_underrun_reporting(display, PIPE_A,
> false);
> +		intel_set_pch_fifo_underrun_reporting(display, PIPE_A,
> false);
>=20
>  		/* always enable with pattern 1 (as per spec) */
>  		intel_dp->DP &=3D ~(DP_PIPE_SEL_MASK |
> DP_LINK_TRAIN_MASK); @@ -468,8 +468,8 @@ intel_dp_link_down(struct
> intel_encoder *encoder,
>  		intel_de_posting_read(display, intel_dp->output_reg);
>=20
>  		intel_wait_for_vblank_if_active(display, PIPE_A);
> -		intel_set_cpu_fifo_underrun_reporting(dev_priv, PIPE_A,
> true);
> -		intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A,
> true);
> +		intel_set_cpu_fifo_underrun_reporting(display, PIPE_A,
> true);
> +		intel_set_pch_fifo_underrun_reporting(display, PIPE_A,
> true);
>  	}
>=20
>  	msleep(intel_dp->pps.panel_power_down_delay);
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> index 1cd2e68e6ec5..089f1a4d7720 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -407,8 +407,8 @@ static void intel_disable_hdmi(struct
> intel_atomic_state *state,
>  		 * We get CPU/PCH FIFO underruns on the other pipe when
>  		 * doing the workaround. Sweep them under the rug.
>  		 */
> -		intel_set_cpu_fifo_underrun_reporting(dev_priv, PIPE_A,
> false);
> -		intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A,
> false);
> +		intel_set_cpu_fifo_underrun_reporting(display, PIPE_A,
> false);
> +		intel_set_pch_fifo_underrun_reporting(display, PIPE_A,
> false);
>=20
>  		temp &=3D ~SDVO_PIPE_SEL_MASK;
>  		temp |=3D SDVO_ENABLE | SDVO_PIPE_SEL(PIPE_A); @@ -
> 426,8 +426,8 @@ static void intel_disable_hdmi(struct intel_atomic_state
> *state,
>  		intel_de_posting_read(display, intel_hdmi->hdmi_reg);
>=20
>  		intel_wait_for_vblank_if_active(display, PIPE_A);
> -		intel_set_cpu_fifo_underrun_reporting(dev_priv, PIPE_A,
> true);
> -		intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A,
> true);
> +		intel_set_cpu_fifo_underrun_reporting(display, PIPE_A,
> true);
> +		intel_set_pch_fifo_underrun_reporting(display, PIPE_A,
> true);
>  	}
>=20
>  	dig_port->set_infoframes(encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c
> b/drivers/gpu/drm/i915/display/intel_crt.c
> index 396846025922..8eedae1d7684 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -250,11 +250,10 @@ static void hsw_disable_crt(struct
> intel_atomic_state *state,
>  			    const struct drm_connector_state
> *old_conn_state)  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>=20
>  	drm_WARN_ON(display->drm, !old_crtc_state->has_pch_encoder);
>=20
> -	intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, false);
> +	intel_set_pch_fifo_underrun_reporting(display, PIPE_A, false);
>  }
>=20
>  static void hsw_post_disable_crt(struct intel_atomic_state *state, @@ -
> 264,7 +263,6 @@ static void hsw_post_disable_crt(struct intel_atomic_stat=
e
> *state,  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>=20
>  	intel_crtc_vblank_off(old_crtc_state);
>=20
> @@ -284,7 +282,7 @@ static void hsw_post_disable_crt(struct
> intel_atomic_state *state,
>=20
>  	drm_WARN_ON(display->drm, !old_crtc_state->has_pch_encoder);
>=20
> -	intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, true);
> +	intel_set_pch_fifo_underrun_reporting(display, PIPE_A, true);
>  }
>=20
>  static void hsw_pre_pll_enable_crt(struct intel_atomic_state *state, @@ =
-
> 293,11 +291,10 @@ static void hsw_pre_pll_enable_crt(struct
> intel_atomic_state *state,
>  				   const struct drm_connector_state
> *conn_state)  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>=20
>  	drm_WARN_ON(display->drm, !crtc_state->has_pch_encoder);
>=20
> -	intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, false);
> +	intel_set_pch_fifo_underrun_reporting(display, PIPE_A, false);
>  }
>=20
>  static void hsw_pre_enable_crt(struct intel_atomic_state *state, @@ -
> 306,13 +303,12 @@ static void hsw_pre_enable_crt(struct
> intel_atomic_state *state,
>  			       const struct drm_connector_state *conn_state)  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum pipe pipe =3D crtc->pipe;
>=20
>  	drm_WARN_ON(display->drm, !crtc_state->has_pch_encoder);
>=20
> -	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
> +	intel_set_cpu_fifo_underrun_reporting(display, pipe, false);
>=20
>  	hsw_fdi_link_train(encoder, crtc_state);
>=20
> @@ -325,7 +321,6 @@ static void hsw_enable_crt(struct intel_atomic_state
> *state,
>  			   const struct drm_connector_state *conn_state)  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum pipe pipe =3D crtc->pipe;
>=20
> @@ -343,8 +338,8 @@ static void hsw_enable_crt(struct intel_atomic_state
> *state,
>=20
>  	intel_crtc_wait_for_next_vblank(crtc);
>  	intel_crtc_wait_for_next_vblank(crtc);
> -	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
> -	intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, true);
> +	intel_set_cpu_fifo_underrun_reporting(display, pipe, true);
> +	intel_set_pch_fifo_underrun_reporting(display, PIPE_A, true);
>  }
>=20
>  static void intel_enable_crt(struct intel_atomic_state *state, diff --gi=
t
> a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index ce7097937d70..900e066b2478 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3013,13 +3013,14 @@ static void intel_ddi_pre_enable(struct
> intel_atomic_state *state,
>  				 const struct intel_crtc_state *crtc_state,
>  				 const struct drm_connector_state
> *conn_state)  {
> +	struct intel_display *display =3D to_intel_display(state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum pipe pipe =3D crtc->pipe;
>=20
>  	drm_WARN_ON(&dev_priv->drm, crtc_state->has_pch_encoder);
>=20
> -	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
> +	intel_set_cpu_fifo_underrun_reporting(display, pipe, true);
>=20
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
>  		intel_ddi_pre_enable_hdmi(state, encoder, crtc_state, diff --
> git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 2a8f53f06463..9bcbd52f23cf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -774,6 +774,7 @@ void intel_plane_fixup_bitmasks(struct
> intel_crtc_state *crtc_state)  void intel_plane_disable_noatomic(struct
> intel_crtc *crtc,
>  				  struct intel_plane *plane)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	struct intel_crtc_state *crtc_state =3D
>  		to_intel_crtc_state(crtc->base.state);
> @@ -817,7 +818,7 @@ void intel_plane_disable_noatomic(struct intel_crtc
> *crtc,
>  	 * So disable underrun reporting before all the planes get disabled.
>  	 */
>  	if (DISPLAY_VER(dev_priv) =3D=3D 2 && !crtc_state->active_planes)
> -		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe,
> false);
> +		intel_set_cpu_fifo_underrun_reporting(display, crtc->pipe,
> false);
>=20
>  	intel_plane_disable_arm(NULL, plane, crtc_state);
>  	intel_plane_initial_vblank_wait(crtc);
> @@ -1305,6 +1306,7 @@ static void intel_crtc_async_flip_disable_wa(struct
> intel_atomic_state *state,  static void intel_pre_plane_update(struct
> intel_atomic_state *state,
>  				   struct intel_crtc *crtc)
>  {
> +	struct intel_display *display =3D to_intel_display(state);
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	const struct intel_crtc_state *old_crtc_state =3D
>  		intel_atomic_get_old_crtc_state(state, crtc); @@ -1406,7
> +1408,7 @@ static void intel_pre_plane_update(struct intel_atomic_state
> *state,
>  	 * vs. the old plane configuration.
>  	 */
>  	if (DISPLAY_VER(dev_priv) =3D=3D 2 && planes_disabling(old_crtc_state,
> new_crtc_state))
> -		intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe,
> false);
> +		intel_set_cpu_fifo_underrun_reporting(display, pipe, false);
>=20
>  	/*
>  	 * WA for platforms where async address update enable bit @@ -
> 1645,6 +1647,7 @@ static void ilk_configure_cpu_transcoder(const struct
> intel_crtc_state *crtc_sta  static void ilk_crtc_enable(struct intel_atom=
ic_state
> *state,
>  			    struct intel_crtc *crtc)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc);
>  	const struct intel_crtc_state *new_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev); @@ -
> 1663,8 +1666,8 @@ static void ilk_crtc_enable(struct intel_atomic_state
> *state,
>  	 *
>  	 * Spurious PCH underruns also occur during PCH enabling.
>  	 */
> -	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
> -	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, false);
> +	intel_set_cpu_fifo_underrun_reporting(display, pipe, false);
> +	intel_set_pch_fifo_underrun_reporting(display, pipe, false);
>=20
>  	ilk_configure_cpu_transcoder(new_crtc_state);
>=20
> @@ -1712,8 +1715,8 @@ static void ilk_crtc_enable(struct
> intel_atomic_state *state,
>  		intel_crtc_wait_for_next_vblank(crtc);
>  		intel_crtc_wait_for_next_vblank(crtc);
>  	}
> -	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
> -	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, true);
> +	intel_set_cpu_fifo_underrun_reporting(display, pipe, true);
> +	intel_set_pch_fifo_underrun_reporting(display, pipe, true);
>  }
>=20
>  /* Display WA #1180: WaDisableScalarClockGating: glk */ @@ -1901,9
> +1904,9 @@ void ilk_pfit_disable(const struct intel_crtc_state
> *old_crtc_state)  static void ilk_crtc_disable(struct intel_atomic_state =
*state,
>  			     struct intel_crtc *crtc)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc);
>  	const struct intel_crtc_state *old_crtc_state =3D
>  		intel_atomic_get_old_crtc_state(state, crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum pipe pipe =3D crtc->pipe;
>=20
>  	/*
> @@ -1911,8 +1914,8 @@ static void ilk_crtc_disable(struct
> intel_atomic_state *state,
>  	 * pipe is already disabled, but FDI RX/TX is still enabled.
>  	 * Happens at least with VGA+HDMI cloning. Suppress them.
>  	 */
> -	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
> -	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, false);
> +	intel_set_cpu_fifo_underrun_reporting(display, pipe, false);
> +	intel_set_pch_fifo_underrun_reporting(display, pipe, false);
>=20
>  	intel_encoders_disable(state, crtc);
>=20
> @@ -1930,8 +1933,8 @@ static void ilk_crtc_disable(struct
> intel_atomic_state *state,
>  	if (old_crtc_state->has_pch_encoder)
>  		ilk_pch_post_disable(state, crtc);
>=20
> -	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
> -	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, true);
> +	intel_set_cpu_fifo_underrun_reporting(display, pipe, true);
> +	intel_set_pch_fifo_underrun_reporting(display, pipe, true);
>=20
>  	intel_disable_shared_dpll(old_crtc_state);
>  }
> @@ -2211,6 +2214,7 @@ static void i9xx_configure_cpu_transcoder(const
> struct intel_crtc_state *crtc_st  static void valleyview_crtc_enable(stru=
ct
> intel_atomic_state *state,
>  				   struct intel_crtc *crtc)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc);
>  	const struct intel_crtc_state *new_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev); @@ -
> 2233,7 +2237,7 @@ static void valleyview_crtc_enable(struct
> intel_atomic_state *state,
>=20
>  	crtc->active =3D true;
>=20
> -	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
> +	intel_set_cpu_fifo_underrun_reporting(display, pipe, true);
>=20
>  	intel_encoders_pre_pll_enable(state, crtc);
>=20
> @@ -2259,6 +2263,7 @@ static void valleyview_crtc_enable(struct
> intel_atomic_state *state,  static void i9xx_crtc_enable(struct
> intel_atomic_state *state,
>  			     struct intel_crtc *crtc)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc);
>  	const struct intel_crtc_state *new_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev); @@ -
> 2274,7 +2279,7 @@ static void i9xx_crtc_enable(struct intel_atomic_state
> *state,
>  	crtc->active =3D true;
>=20
>  	if (DISPLAY_VER(dev_priv) !=3D 2)
> -		intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
> +		intel_set_cpu_fifo_underrun_reporting(display, pipe, true);
>=20
>  	intel_encoders_pre_enable(state, crtc);
>=20
> @@ -2349,7 +2354,7 @@ static void i9xx_crtc_disable(struct
> intel_atomic_state *state,
>  	intel_encoders_post_pll_disable(state, crtc);
>=20
>  	if (DISPLAY_VER(dev_priv) !=3D 2)
> -		intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe,
> false);
> +		intel_set_cpu_fifo_underrun_reporting(display, pipe, false);
>=20
>  	if (!dev_priv->display.funcs.wm->initial_watermarks)
>  		intel_update_watermarks(dev_priv);
> @@ -7069,16 +7074,16 @@ static int intel_atomic_prepare_commit(struct
> intel_atomic_state *state)  void intel_crtc_arm_fifo_underrun(struct
> intel_crtc *crtc,
>  				  struct intel_crtc_state *crtc_state)  {
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	struct intel_display *display =3D to_intel_display(crtc);
>=20
> -	if (DISPLAY_VER(dev_priv) !=3D 2 || crtc_state->active_planes)
> -		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe,
> true);
> +	if (DISPLAY_VER(display) !=3D 2 || crtc_state->active_planes)
> +		intel_set_cpu_fifo_underrun_reporting(display, crtc->pipe,
> true);
>=20
>  	if (crtc_state->has_pch_encoder) {
>  		enum pipe pch_transcoder =3D
>  			intel_crtc_pch_transcoder(crtc);
>=20
> -		intel_set_pch_fifo_underrun_reporting(dev_priv,
> pch_transcoder, true);
> +		intel_set_pch_fifo_underrun_reporting(display,
> pch_transcoder, true);
>  	}
>  }
>=20
> @@ -7921,7 +7926,7 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
>  		 * vs. the new plane configuration.
>  		 */
>  		if (DISPLAY_VER(dev_priv) =3D=3D 2 &&
> planes_enabling(old_crtc_state, new_crtc_state))
> -			intel_set_cpu_fifo_underrun_reporting(dev_priv,
> crtc->pipe, true);
> +			intel_set_cpu_fifo_underrun_reporting(display, crtc-
> >pipe, true);
>=20
>  		intel_optimize_watermarks(state, crtc);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> index 18fcdbe1248a..cf70dab4881b 100644
> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> @@ -55,10 +55,9 @@
>   * The code also supports underrun detection on the PCH transcoder.
>   */
>=20
> -static bool ivb_can_enable_err_int(struct drm_device *dev)
> +static bool ivb_can_enable_err_int(struct intel_display *display)
>  {
> -	struct intel_display *display =3D to_intel_display(dev);
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);

I think the same Nit as before can we call it i915

But LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>  	struct intel_crtc *crtc;
>  	enum pipe pipe;
>=20
> @@ -74,10 +73,9 @@ static bool ivb_can_enable_err_int(struct drm_device
> *dev)
>  	return true;
>  }
>=20
> -static bool cpt_can_enable_serr_int(struct drm_device *dev)
> +static bool cpt_can_enable_serr_int(struct intel_display *display)
>  {
> -	struct intel_display *display =3D to_intel_display(dev);
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	enum pipe pipe;
>  	struct intel_crtc *crtc;
>=20
> @@ -113,11 +111,11 @@ static void i9xx_check_fifo_underruns(struct
> intel_crtc *crtc)
>  	drm_err(&dev_priv->drm, "pipe %c underrun\n", pipe_name(crtc-
> >pipe));  }
>=20
> -static void i9xx_set_fifo_underrun_reporting(struct drm_device *dev,
> +static void i9xx_set_fifo_underrun_reporting(struct intel_display
> +*display,
>  					     enum pipe pipe,
>  					     bool enable, bool old)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	i915_reg_t reg =3D PIPESTAT(dev_priv, pipe);
>=20
>  	lockdep_assert_held(&dev_priv->irq_lock);
> @@ -135,10 +133,10 @@ static void
> i9xx_set_fifo_underrun_reporting(struct drm_device *dev,
>  	}
>  }
>=20
> -static void ilk_set_fifo_underrun_reporting(struct drm_device *dev,
> +static void ilk_set_fifo_underrun_reporting(struct intel_display
> +*display,
>  					    enum pipe pipe, bool enable)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 bit =3D (pipe =3D=3D PIPE_A) ?
>  		DE_PIPEA_FIFO_UNDERRUN : DE_PIPEB_FIFO_UNDERRUN;
>=20
> @@ -167,16 +165,16 @@ static void ivb_check_fifo_underruns(struct
> intel_crtc *crtc)
>  	drm_err(&dev_priv->drm, "fifo underrun on pipe %c\n",
> pipe_name(pipe));  }
>=20
> -static void ivb_set_fifo_underrun_reporting(struct drm_device *dev,
> +static void ivb_set_fifo_underrun_reporting(struct intel_display
> +*display,
>  					    enum pipe pipe, bool enable,
>  					    bool old)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	if (enable) {
>  		intel_de_write(dev_priv, GEN7_ERR_INT,
>  			       ERR_INT_FIFO_UNDERRUN(pipe));
>=20
> -		if (!ivb_can_enable_err_int(dev))
> +		if (!ivb_can_enable_err_int(display))
>  			return;
>=20
>  		ilk_enable_display_irq(dev_priv, DE_ERR_INT_IVB); @@ -
> 192,10 +190,10 @@ static void ivb_set_fifo_underrun_reporting(struct
> drm_device *dev,
>  	}
>  }
>=20
> -static void bdw_set_fifo_underrun_reporting(struct drm_device *dev,
> +static void bdw_set_fifo_underrun_reporting(struct intel_display
> +*display,
>  					    enum pipe pipe, bool enable)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>=20
>  	if (enable)
>  		bdw_enable_pipe_irq(dev_priv, pipe,
> GEN8_PIPE_FIFO_UNDERRUN); @@ -203,11 +201,11 @@ static void
> bdw_set_fifo_underrun_reporting(struct drm_device *dev,
>  		bdw_disable_pipe_irq(dev_priv, pipe,
> GEN8_PIPE_FIFO_UNDERRUN);  }
>=20
> -static void ibx_set_fifo_underrun_reporting(struct drm_device *dev,
> +static void ibx_set_fifo_underrun_reporting(struct intel_display
> +*display,
>  					    enum pipe pch_transcoder,
>  					    bool enable)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 bit =3D (pch_transcoder =3D=3D PIPE_A) ?
>  		SDE_TRANSA_FIFO_UNDER : SDE_TRANSB_FIFO_UNDER;
>=20
> @@ -238,17 +236,17 @@ static void cpt_check_pch_fifo_underruns(struct
> intel_crtc *crtc)
>  		pipe_name(pch_transcoder));
>  }
>=20
> -static void cpt_set_fifo_underrun_reporting(struct drm_device *dev,
> +static void cpt_set_fifo_underrun_reporting(struct intel_display
> +*display,
>  					    enum pipe pch_transcoder,
>  					    bool enable, bool old)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>=20
>  	if (enable) {
>  		intel_de_write(dev_priv, SERR_INT,
>=20
> SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder));
>=20
> -		if (!cpt_can_enable_serr_int(dev))
> +		if (!cpt_can_enable_serr_int(display))
>  			return;
>=20
>  		ibx_enable_display_interrupt(dev_priv, SDE_ERROR_CPT);
> @@ -264,11 +262,10 @@ static void cpt_set_fifo_underrun_reporting(struct
> drm_device *dev,
>  	}
>  }
>=20
> -static bool __intel_set_cpu_fifo_underrun_reporting(struct drm_device
> *dev,
> +static bool __intel_set_cpu_fifo_underrun_reporting(struct
> +intel_display *display,
>  						    enum pipe pipe, bool
> enable)
>  {
> -	struct intel_display *display =3D to_intel_display(dev);
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	struct intel_crtc *crtc =3D intel_crtc_for_pipe(display, pipe);
>  	bool old;
>=20
> @@ -277,21 +274,21 @@ static bool
> __intel_set_cpu_fifo_underrun_reporting(struct drm_device *dev,
>  	old =3D !crtc->cpu_fifo_underrun_disabled;
>  	crtc->cpu_fifo_underrun_disabled =3D !enable;
>=20
> -	if (HAS_GMCH(dev_priv))
> -		i9xx_set_fifo_underrun_reporting(dev, pipe, enable, old);
> -	else if (IS_IRONLAKE(dev_priv) || IS_SANDYBRIDGE(dev_priv))
> -		ilk_set_fifo_underrun_reporting(dev, pipe, enable);
> -	else if (DISPLAY_VER(dev_priv) =3D=3D 7)
> -		ivb_set_fifo_underrun_reporting(dev, pipe, enable, old);
> -	else if (DISPLAY_VER(dev_priv) >=3D 8)
> -		bdw_set_fifo_underrun_reporting(dev, pipe, enable);
> +	if (HAS_GMCH(display))
> +		i9xx_set_fifo_underrun_reporting(display, pipe, enable, old);
> +	else if (display->platform.ironlake || display->platform.sandybridge)
> +		ilk_set_fifo_underrun_reporting(display, pipe, enable);
> +	else if (DISPLAY_VER(display) =3D=3D 7)
> +		ivb_set_fifo_underrun_reporting(display, pipe, enable, old);
> +	else if (DISPLAY_VER(display) >=3D 8)
> +		bdw_set_fifo_underrun_reporting(display, pipe, enable);
>=20
>  	return old;
>  }
>=20
>  /**
>   * intel_set_cpu_fifo_underrun_reporting - set cpu fifo underrun reporti=
ng
> state
> - * @dev_priv: i915 device instance
> + * @display: display device instance
>   * @pipe: (CPU) pipe to set state for
>   * @enable: whether underruns should be reported or not
>   *
> @@ -305,15 +302,15 @@ static bool
> __intel_set_cpu_fifo_underrun_reporting(struct drm_device *dev,
>   *
>   * Returns the previous state of underrun reporting.
>   */
> -bool intel_set_cpu_fifo_underrun_reporting(struct drm_i915_private
> *dev_priv,
> +bool intel_set_cpu_fifo_underrun_reporting(struct intel_display
> +*display,
>  					   enum pipe pipe, bool enable)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	unsigned long flags;
>  	bool ret;
>=20
>  	spin_lock_irqsave(&dev_priv->irq_lock, flags);
> -	ret =3D __intel_set_cpu_fifo_underrun_reporting(&dev_priv->drm,
> pipe,
> -						      enable);
> +	ret =3D __intel_set_cpu_fifo_underrun_reporting(display, pipe,
> enable);
>  	spin_unlock_irqrestore(&dev_priv->irq_lock, flags);
>=20
>  	return ret;
> @@ -321,7 +318,7 @@ bool intel_set_cpu_fifo_underrun_reporting(struct
> drm_i915_private *dev_priv,
>=20
>  /**
>   * intel_set_pch_fifo_underrun_reporting - set PCH fifo underrun reporti=
ng
> state
> - * @dev_priv: i915 device instance
> + * @display: display device instance
>   * @pch_transcoder: the PCH transcoder (same as pipe on IVB and older)
>   * @enable: whether underruns should be reported or not
>   *
> @@ -333,13 +330,12 @@ bool
> intel_set_cpu_fifo_underrun_reporting(struct drm_i915_private *dev_priv,
>   *
>   * Returns the previous state of underrun reporting.
>   */
> -bool intel_set_pch_fifo_underrun_reporting(struct drm_i915_private
> *dev_priv,
> +bool intel_set_pch_fifo_underrun_reporting(struct intel_display
> +*display,
>  					   enum pipe pch_transcoder,
>  					   bool enable)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> -	struct intel_crtc *crtc =3D
> -		intel_crtc_for_pipe(display, pch_transcoder);
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> +	struct intel_crtc *crtc =3D intel_crtc_for_pipe(display,
> +pch_transcoder);
>  	unsigned long flags;
>  	bool old;
>=20
> @@ -358,11 +354,11 @@ bool
> intel_set_pch_fifo_underrun_reporting(struct drm_i915_private *dev_priv,
>  	crtc->pch_fifo_underrun_disabled =3D !enable;
>=20
>  	if (HAS_PCH_IBX(dev_priv))
> -		ibx_set_fifo_underrun_reporting(&dev_priv->drm,
> +		ibx_set_fifo_underrun_reporting(display,
>  						pch_transcoder,
>  						enable);
>  	else
> -		cpt_set_fifo_underrun_reporting(&dev_priv->drm,
> +		cpt_set_fifo_underrun_reporting(display,
>  						pch_transcoder,
>  						enable, old);
>=20
> @@ -394,7 +390,7 @@ void intel_cpu_fifo_underrun_irq_handler(struct
> drm_i915_private *dev_priv,
>  	    crtc->cpu_fifo_underrun_disabled)
>  		return;
>=20
> -	if (intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false)) {
> +	if (intel_set_cpu_fifo_underrun_reporting(display, pipe, false)) {
>  		trace_intel_cpu_fifo_underrun(display, pipe);
>=20
>  		drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun\n",
> pipe_name(pipe)); @@ -417,7 +413,7 @@ void
> intel_pch_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,  {
>  	struct intel_display *display =3D &dev_priv->display;
>=20
> -	if (intel_set_pch_fifo_underrun_reporting(dev_priv, pch_transcoder,
> +	if (intel_set_pch_fifo_underrun_reporting(display, pch_transcoder,
>  						  false)) {
>  		trace_intel_pch_fifo_underrun(display, pch_transcoder);
>  		drm_err(&dev_priv->drm, "PCH transcoder %c FIFO
> underrun\n", diff --git
> a/drivers/gpu/drm/i915/display/intel_fifo_underrun.h
> b/drivers/gpu/drm/i915/display/intel_fifo_underrun.h
> index b00d8abebcf9..8302080c2313 100644
> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.h
> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.h
> @@ -8,15 +8,16 @@
>=20
>  #include <linux/types.h>
>=20
> +enum pipe;
>  struct drm_i915_private;
>  struct intel_crtc;
> -enum pipe;
> +struct intel_display;
>=20
>  void intel_init_fifo_underrun_reporting(struct drm_i915_private *i915,
>  					struct intel_crtc *crtc, bool enable); -
> bool intel_set_cpu_fifo_underrun_reporting(struct drm_i915_private
> *dev_priv,
> +bool intel_set_cpu_fifo_underrun_reporting(struct intel_display
> +*display,
>  					   enum pipe pipe, bool enable);
> -bool intel_set_pch_fifo_underrun_reporting(struct drm_i915_private
> *dev_priv,
> +bool intel_set_pch_fifo_underrun_reporting(struct intel_display
> +*display,
>  					   enum pipe pch_transcoder,
>  					   bool enable);
>  void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private
> *dev_priv, diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c
> b/drivers/gpu/drm/i915/display/intel_sdvo.c
> index 0c3aa2e7b78b..46203d796fcc 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -1864,8 +1864,8 @@ static void intel_disable_sdvo(struct
> intel_atomic_state *state,
>  		 * We get CPU/PCH FIFO underruns on the other pipe when
>  		 * doing the workaround. Sweep them under the rug.
>  		 */
> -		intel_set_cpu_fifo_underrun_reporting(dev_priv, PIPE_A,
> false);
> -		intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A,
> false);
> +		intel_set_cpu_fifo_underrun_reporting(display, PIPE_A,
> false);
> +		intel_set_pch_fifo_underrun_reporting(display, PIPE_A,
> false);
>=20
>  		temp &=3D ~SDVO_PIPE_SEL_MASK;
>  		temp |=3D SDVO_ENABLE | SDVO_PIPE_SEL(PIPE_A); @@ -
> 1875,8 +1875,8 @@ static void intel_disable_sdvo(struct intel_atomic_stat=
e
> *state,
>  		intel_sdvo_write_sdvox(intel_sdvo, temp);
>=20
>  		intel_wait_for_vblank_if_active(display, PIPE_A);
> -		intel_set_cpu_fifo_underrun_reporting(dev_priv, PIPE_A,
> true);
> -		intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A,
> true);
> +		intel_set_cpu_fifo_underrun_reporting(display, PIPE_A,
> true);
> +		intel_set_pch_fifo_underrun_reporting(display, PIPE_A,
> true);
>  	}
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c
> b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index f6be1cd5d270..d68876fe782c 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -739,7 +739,7 @@ static void intel_dsi_pre_enable(struct
> intel_atomic_state *state,
>=20
>  	intel_dsi_wait_panel_power_cycle(intel_dsi);
>=20
> -	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
> +	intel_set_cpu_fifo_underrun_reporting(display, pipe, true);
>=20
>  	/*
>  	 * The BIOS may leave the PLL in a wonky state where it doesn't
> --
> 2.39.5

