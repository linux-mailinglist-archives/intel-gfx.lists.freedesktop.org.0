Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C4D993636
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 20:28:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 822DC88284;
	Mon,  7 Oct 2024 18:28:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bqnvP4Qi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C80710E3F9;
 Mon,  7 Oct 2024 18:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728325737; x=1759861737;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oIffiFmPAttRVCysWIqOoIcHJq33Totr1i5vPRCsAi4=;
 b=bqnvP4QiBt5yLxy0oaxKsqij378EsKVwvm6JSIJuL0tlbgYmBAT7XkpU
 Ik7JaKOmzBgW8bLgc1hx3LUuSNJV/uAnfRjTzfcys4dl4Zqlj+BrGc+HZ
 feQTzvamoeV/OvHrOdNTc3wEviR9d28rA6Um9TspIZJXW+zZTylbfZf7k
 QwX5ed8DfwPE5PIKUcJKSgNI0fOYlsiHXTqpxwodYaSTBedtOmsAiMROt
 xVoKXAiMzji/h0q6v2+ME5s65bYwv+wNuBg3C7vfFBYv8rwK1zIIY9Bqz
 ysGGSC49TmzMI6GOM+lOEBL2qY653yNpQshKF/hMxb37NHS3mD8FNHjmE A==;
X-CSE-ConnectionGUID: SnfqzFLFSiy8wQcQ9XtERA==
X-CSE-MsgGUID: SvUgMilHQ26ue4t81nChww==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="38618667"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="38618667"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 11:28:56 -0700
X-CSE-ConnectionGUID: ieiFLyo8QqinxO6pMeP18g==
X-CSE-MsgGUID: B0akReGLQBWvBUk+hmhgRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="75678632"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 11:28:56 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 11:28:55 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 11:28:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 11:28:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 11:28:54 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 11:28:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dJkBsanZu6R8VaqMNMpKipPo+Cb3uBoQB+qB6HqOkhVnTJ/M7SiXlmMexwV0DKfF0ZVYgX1ImwDL6KMk1e5OE2xjl/9ei2HWO8Z+rt+5ywvvFl/q6XfDnBBbYBJXnVuELPxtjkHaYUqwkdqE7PuIvwlyXqH2adTQGm+zayf47EcnvA2tSD8HO5fprWBKD3AwcpuSh+/V9ocADICnK3ffkxbFk0fZ1zDLA2wKkmfEmqQkCypK/x5dN2/Y+nieFi4i7YJe6ukImf8/9+KJGytL0LR33wJR3kp4Bxihu1yVyDWjQoBLJkkZRiCOTB9SYrfokVS9Oad3qc4ZAlvnFr4T4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wTrbzXWl1VVCQ0z2jJNBbEDSb1m4r7m7hTD4i0fmZ78=;
 b=K0rlJus5bXQRhNuRXsCF9kIW5WhMKBIikTqGRGoQfMRl8hXjUib7Y+PFS5KgGkL61jChZ0BLiD0/xdYLsZ5yk+zBdQ6xivNY25bbOsqAmWV6UkjlRmTDDvR6P4XIEyIpPGpRYqVy7RWMDNTsKquOuqEpbNWhqCs/KpCCZvKGZos7bRERJFJWEn3jCDgWjjokjVAInDzrqXJHfCqBP5VdXJv8nQfUGEj7Z8JyMf01qt+c/kGS8wP3zXdmRqMp/arAjBwyKhsgX65nBWWn8kQgIZFkcysDVYNNBDi41tvIKSxaH+gZo+ni/CTYdNQpeT/VDBXH1FJBBGQ/7kXL3SEXvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by SJ0PR11MB5071.namprd11.prod.outlook.com (2603:10b6:a03:2d7::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.20; Mon, 7 Oct
 2024 18:28:52 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161%7]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 18:28:52 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 1/2] drm/xe: Separate the d3cold and non-d3cold runtime PM
 handling
Thread-Topic: [PATCH 1/2] drm/xe: Separate the d3cold and non-d3cold runtime
 PM handling
Thread-Index: AQHbGMH0cIlG4PpJJ0y4pgmJsNqEWLJ7mzqg
Date: Mon, 7 Oct 2024 18:28:52 +0000
Message-ID: <BL1PR11MB54456F054673E415F0A65698E57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20241007140531.1044630-1-imre.deak@intel.com>
In-Reply-To: <20241007140531.1044630-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|SJ0PR11MB5071:EE_
x-ms-office365-filtering-correlation-id: 5c2073b1-df32-44ad-15e7-08dce6fde528
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?BEDZj2lDzJW3vZzn6mVxSRK17vkzaWjwsjo+3RDXb+eCBA1KWzxEohL1FrjX?=
 =?us-ascii?Q?ug07NVdS7UpkJcyqNLufYhU00yiBAC0IhQYNFeIvrLvKgf2dZBU1dLyRCpvn?=
 =?us-ascii?Q?dGipxfG8vko94qZqCgZfO7PVC5aLWwETcdKF6g0QXNdQm9htuMERjfqpYXtJ?=
 =?us-ascii?Q?mD/ayB85EstuCLOfHLDGcyA4eRAD0REHP0aamiHiw/KbAfPHEV3EICfRZKXL?=
 =?us-ascii?Q?crlVgX+HpbW/Q9z/O6B2EIRR1/RinFtAclclgF9pvFn40oziIs+UtGUzvEDI?=
 =?us-ascii?Q?dFUrs2jGb5XKEes9A4yHv0HHpCLDo2aXV1heqwn9LvBBDdHYqDU3gs3TahhX?=
 =?us-ascii?Q?WAW68jXn7JRNjglM/Mp8fFNfkJFuIImJEBcFopgbyhgIwHa8VYwsEj3BkbwG?=
 =?us-ascii?Q?e0+ScSuV8hFkbIycbLwoANPjVtaIGzyBeeJKZtJV8Z0OZGqbbiUIT7zndXnr?=
 =?us-ascii?Q?ff/Qppa1zVSaBACxs8+1S10my9HilPnOlrXL5auViIT75CBRic+YtYoNLlBC?=
 =?us-ascii?Q?X51yfKQdeptrnnkVD6P2Ib8tJYvZlSm6jZs/Y8SI4CZxs0l1KW5r2VbaHWAz?=
 =?us-ascii?Q?qbvOC2jC62rGwGktAvfEIz7G7cCbpBtmg+GX6yAO83NL/Y0I884ee7WvsnMR?=
 =?us-ascii?Q?FwtEP/Zgg1Wp6vIJDjmDPYDGLtf+0r5v7S0EUDKgktwa6iwv0jQPzFI2SNH+?=
 =?us-ascii?Q?3ouRJRh7ceRaOmcBuUKYGFT96XSftsE4PMrhCp21rGEWkccU+aosW98HYr4K?=
 =?us-ascii?Q?7YFILBCdErSSlhvHhn482poc3ZQxwBmi8VV1zIYibe1sy/0bOc0RUUkPEP0K?=
 =?us-ascii?Q?YIHVoj6WEihFyuLXYhvU2gN1dG3BOfUvcbm3p5veWxmCcH/YmH1z0TQyTZUL?=
 =?us-ascii?Q?uflYpp4LEhYOdTOa7oUfMfhlKG5H4my7+cdMnIBUr8f1U2g05ub4lflNo9JK?=
 =?us-ascii?Q?Tz+fIRfk1PuIca1v5i/yrxlBq5KblC+Iq7u2x2BIM6WM//dMq/8nCXNSYEmK?=
 =?us-ascii?Q?zaqCc0SJtSkUqNRjYK4PBDv97iCcZX2DUW8FQC98+zk0cvlmYmjV+VIbyTJB?=
 =?us-ascii?Q?gHujcmYD9wzmxdmVS3mkybGT+L1zJ7fdIBTSCRt9VVGeyECXsjr97pog3ngI?=
 =?us-ascii?Q?UcphdTla6cExA1swfAxxImFBTdeoN+uWGTKtHeVMInvHHdNzaHLZGRQoipNt?=
 =?us-ascii?Q?FIxc/16CrU+HS6dXgzhpqEkepL0gaYyhdiLql0PNzfk3EJgDaedpbiAcytef?=
 =?us-ascii?Q?uuHVTJ3AJsSWvSE3KV8GIOkPH4mpqz6Q0+5Brt91M61d2ZNhaPXDH69jUWno?=
 =?us-ascii?Q?QsOUmDF2AMBk8/0W+TiArG3jvp/bTJ/PlSP3dnFuIZ41vw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aElSE1a0PdTamaY3oTBlYdLM/Sz+x4G4SCRVIG7eg9lQhczH8F5IjMDOHuAq?=
 =?us-ascii?Q?BmqNpXz+/uT8qDsZq2WZDQaGrAb/XwIvDQjIwVYQdbfA3foQP9eWxi3wpKAX?=
 =?us-ascii?Q?iD8v5Rt72AWAsrGj3fHOi9EWtlqv6I1vWLtxNyjG5aSUiXpYoEhj9mCerMTe?=
 =?us-ascii?Q?O7BawOCi1vxojYga9EKddDi+jfMWy0g7/TKjZlbroXjFro1Ykmb8EaRROlpf?=
 =?us-ascii?Q?D34s+mmQlMIcXvEsCdv7SJ/95pVMGg5zMVmHCsglh86tdnm3OJT4WMRG4f7F?=
 =?us-ascii?Q?pD2lHgWOMOueR3TQ0MT97xQfjgF+5Ph5iw78VJ0CIIuuhJwcNNAsg5FFJNma?=
 =?us-ascii?Q?dGt2TdE6C18AKsbokoSc5UZY8izOYAIKLnPUjNtS1UydtXRL4mQmWE0hrXnh?=
 =?us-ascii?Q?B2HBh6vWYZdM66aPMuVSgLweYJDZI7dtlOoMQ6nZaDU2xAh/7vX7D2d6DSpY?=
 =?us-ascii?Q?+CdwVZ7BMeELwJTOQUcP0KQjqPyk487Kh5l3OVCvCp49x8Gqw/V4ErlgyP4T?=
 =?us-ascii?Q?iZ6xEdGmvbp4LY3+NmipBWd1BiGEPAus80Dub+NAFOb0sM340E39sk0x6baY?=
 =?us-ascii?Q?bnViFCyOMAIImyfZAWnyGM5ytj39QVM6twd4sv36pec5qcHahQvAk3NJvEBY?=
 =?us-ascii?Q?tHxExtnuciTB9onJENJDFHeTH7/Jc1973lhmj9Dn3sL+ftmaDq468eXk8Ew4?=
 =?us-ascii?Q?wZapt76N9NxwMg03AJXLcWzCgAr7EEToR78jEPx9kIBpbSeKlsNmJuBf+AFk?=
 =?us-ascii?Q?8/g+kErNwW/mG/Wt/zLZmlebFXSUEE7Ve78c7iUR0uT+GhR1pEupIe7JQ4ik?=
 =?us-ascii?Q?DFoH76BO2UJDDvphmgWcWWtoXWFZXcG9mHqbG5XfagtGv4UsDuP9vUsW3MnJ?=
 =?us-ascii?Q?PWuL238JNnDw85h+Uu+8HgAuQoRVs67UeG8xgeZIJGXQR3XsImWxEi4uXPwy?=
 =?us-ascii?Q?qldoZhFOgmrF7VhloLtyfABeJNlffbJGttcgdZWKnaqiNhMCrMuVPbKxWY4A?=
 =?us-ascii?Q?XiRJt5tUKL9xQzFLHEqoHJqXxYH3gMC95o6MhVe9rxvOGU7tvW3mK20lo9iA?=
 =?us-ascii?Q?bwUlgbdscCHkz2GaGmOUSp2RXH7ykNI4hIWiWTrLWlKiYYCACnfopN1q4HJU?=
 =?us-ascii?Q?8Lo2MRCp7riuQqZH/IeD1CbRxHp7xQjkygBBolWuT1E0IF7ZznKUA2M6aJq4?=
 =?us-ascii?Q?NbDa6S1pyDqBw5zedUQPsJPLCeRW1qg19BRdvdxZDjDoShA9kj5I9tu2p6qx?=
 =?us-ascii?Q?6yx1RwEYIhMAE/GscSQhyvKcclF+qH8KY8Dg8eFLCv/0nNPYvS+1iouNO+T4?=
 =?us-ascii?Q?luJaw1TtROdMzAt1iwQNJgLerr5AaXczLyDgh7Iyb2pj1ckkEn2AkTtY3YFL?=
 =?us-ascii?Q?+E1dzQSETlchdYmsTehyS1vDARxHZPu4eki6eoFP0jctK8LEeNHaG0IzT4XZ?=
 =?us-ascii?Q?rOq7D6WdQWmvZmFZtfHvgfNhcFGzV+UGZ5Il//34YjQl/dUYUZV55kkq52CL?=
 =?us-ascii?Q?hO19G8ySoNA2NYV9zpnZdXxV761AUPYNTGR36yHyIcVbMrRvEEWC0qT7D8oL?=
 =?us-ascii?Q?bWk6O3MjXLgPhFlH8aU0Y1dkSqNcMUSih8w2HJQ3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c2073b1-df32-44ad-15e7-08dce6fde528
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2024 18:28:52.5312 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t7Hv7Hy45xcfa3iPXb5nZnYUIF1xT9uIr+CzcQPq10RXmGVQBFSN/ZUHpLc2FJDk/p3q4iQVHa9c+OfrC8OxVGICbgccklSOwmBuqt+hi6c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5071
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Imre=
 Deak
Sent: Monday, October 7, 2024 7:06 AM
To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>
Subject: [PATCH 1/2] drm/xe: Separate the d3cold and non-d3cold runtime PM =
handling
>=20
> For clarity separate the d3cold and non-d3cold runtime PM handling. The
> only change in behavior is disabling polling later during runtime
> resume. This shouldn't make a difference, since the poll disabling is
> handled from a work, which could run at any point wrt. the runtime
> resume handler. The work will also require a runtime PM reference,
> syncing it with the resume handler.
>=20
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

It seems a bit weird to me that we're enabling hpd polling during the suspe=
nd
path and disabling it during the resume path, especially given the second p=
atch's
commit message mentioning that HPD interrupts are getting disabled in the
suspend path.  However, I just looked, and it seems like this is the way it=
 has been
since the beginning, so I'm going to trust that it's supposed to be this wa=
y.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 19 ++++++++++++++-----
>  1 file changed, 14 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index ca00a365080fb..cb2449b7921ac 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -345,6 +345,9 @@ static void __xe_display_pm_suspend(struct xe_device =
*xe, bool runtime)
>  	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
> =20
>  	intel_dmc_suspend(display);
> +
> +	if (runtime && has_display(xe))
> +		intel_hpd_poll_enable(xe);
>  }
> =20
>  void xe_display_pm_suspend(struct xe_device *xe)
> @@ -387,8 +390,10 @@ void xe_display_pm_runtime_suspend(struct xe_device =
*xe)
>  	if (!xe->info.probe_display)
>  		return;
> =20
> -	if (xe->d3cold.allowed)
> +	if (xe->d3cold.allowed) {
>  		__xe_display_pm_suspend(xe, true);
> +		return;
> +	}
> =20
>  	intel_hpd_poll_enable(xe);
>  }
> @@ -453,9 +458,11 @@ static void __xe_display_pm_resume(struct xe_device =
*xe, bool runtime)
>  		intel_display_driver_resume(xe);
>  		drm_kms_helper_poll_enable(&xe->drm);
>  		intel_display_driver_enable_user_access(xe);
> -		intel_hpd_poll_disable(xe);
>  	}
> =20
> +	if (has_display(xe))
> +		intel_hpd_poll_disable(xe);
> +
>  	intel_opregion_resume(display);
> =20
>  	if (!runtime)
> @@ -474,10 +481,12 @@ void xe_display_pm_runtime_resume(struct xe_device =
*xe)
>  	if (!xe->info.probe_display)
>  		return;
> =20
> -	intel_hpd_poll_disable(xe);
> -
> -	if (xe->d3cold.allowed)
> +	if (xe->d3cold.allowed) {
>  		__xe_display_pm_resume(xe, true);
> +		return;
> +	}
> +
> +	intel_hpd_poll_disable(xe);
>  }
> =20
> =20
> --=20
> 2.44.2
>=20
>=20
