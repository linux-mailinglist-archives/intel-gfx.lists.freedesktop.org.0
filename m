Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A987BA5DA28
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 11:08:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 318A510E751;
	Wed, 12 Mar 2025 10:08:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ItHBMncy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C818F10E747;
 Wed, 12 Mar 2025 10:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741774103; x=1773310103;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Sp/iy3Yhjxa47quC6SVWfSJO0QitCfsOdo/rcSCDRrU=;
 b=ItHBMncyPIAssjr/Bg+7wdsvEAiwkLoWyOS/mJiH/iUjF5d9SXHt9lmb
 upZLPJEzDPfCTAFjrJODTuevjtx2H3cxP3z/cYEkE7nLKbDqQ0VVtww0T
 cLhEDbPS4gMXPy1g0EbHD/fRocBnkv/sO1jUSDwOYRV2X1iLioIT9QRGz
 EW2BK2hmLbCuK+p351jizVgmxIFCc5u3UO1WmI41r2lcJptosgI0ik/AQ
 ZfqUgEaBzIINN8OcWdYtdt2QoSo9YcBxQjOutHsddQy7Lz9GD2V1ExoeS
 +hXjOY39PfZ4eYdm7Iukf6D5+dLWl+179EkugffW0r/eniAgnQovyY8cz g==;
X-CSE-ConnectionGUID: mMMQ8T0UTF+e2QwMx5y8Cw==
X-CSE-MsgGUID: bDzqinwUQRibgvBrurHSdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="46628165"
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="46628165"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 03:08:23 -0700
X-CSE-ConnectionGUID: 8Z3ASSyDQd2xB0Sxf+Ev0Q==
X-CSE-MsgGUID: 35AivVaaTCmnBl7H5FqnAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="125782580"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 03:08:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 12 Mar 2025 03:08:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Mar 2025 03:08:22 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Mar 2025 03:08:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Cw2ykH+tpVl2Mry/szzaPygbJw5Ib17VhLCVBM87bDvW58qDLlOiidzxsHvSh+5gg/26RACVFmvpa6yF3O/Y0OSOgxLVtClfS7lCIUnfKAOOum2DEP4vmMke1PPD3QXvKZK11K6poQrWdI/EOX8kM8AexkLBs7WQlzCSEX8Hg6Mkz7O7z9oRWZ+LSTHv0naKOc45zZhYG7yubijoNQuuc1cPoePbp6IiGeQlWRvcTOGDBGrFK5rlbaQavW8nN9XG0CTvSV3t68lHoydECIV+/HAxDZ4PKQE6F+SaYp9TMnRGyerC0hE5rGiOU14Dm9D8RxyCsn8lGIXPG0zmogBgEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sp/iy3Yhjxa47quC6SVWfSJO0QitCfsOdo/rcSCDRrU=;
 b=AutIimCtnjU2K2z/bCz3//ygGHDLnC3jt8YG+gPnssUiEGvo9jt9NqgiR6SezxBRKN67jPBfJ9MwVYGg4xgfaUt9fxL7l8/yxgeONsRhXqwR8Eh6rTSXk7RO5NmsPJWo6yPDqn02/cegxnA3N7P7HSaJbbn1jmAJBdIHO/a7a0ySRXi8o8sasqPPL+rlAwSV/hLdR+A6E41sl748HIEdQ/CD1qzQ44o/czbPzH7z5AlDdh3iR7vc0ipAveIBVugzeg5NFPc9HM4qvN3m0GxryjR79e+JPfXt18lFBesZ20eDRTGb8yzryom5DrM4OK6i89Joo2akeiPpnDHCTPMYzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 SA2PR11MB4796.namprd11.prod.outlook.com (2603:10b6:806:117::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Wed, 12 Mar
 2025 10:07:47 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9%4]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 10:07:47 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "I915-ci-infra@lists.freedesktop.org" <I915-ci-infra@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvcG06?=
 =?utf-8?Q?_Clean_up_the_hibernate_vs._PCI_D3_quirk_(rev2)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9wbTogQ2xl?=
 =?utf-8?Q?an_up_the_hibernate_vs._PCI_D3_quirk_(rev2)?=
Thread-Index: AQHbktuXpuGOFvYkX0y0ZRqP5FjnJ7NvQ0cAgAAB9nCAAAId4A==
Date: Wed, 12 Mar 2025 10:07:47 +0000
Message-ID: <DM8PR11MB56557C20724881BE8724BA18E0D02@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
 <174173495369.22166.15885117229945257147@18a75f3d1eae>
 <Z9FZailpdSXuyxKv@intel.com>
 <DM8PR11MB565554EBA1295A921661128EE0D02@DM8PR11MB5655.namprd11.prod.outlook.com>
In-Reply-To: <DM8PR11MB565554EBA1295A921661128EE0D02@DM8PR11MB5655.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|SA2PR11MB4796:EE_
x-ms-office365-filtering-correlation-id: 296e7344-c08d-4556-7246-08dd614dbd6d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Wlo3c0c2WjlJdGVNR2QxUDFnZUJEQUVLeDBWUFdhTkJKcXd2akROeUtwYzVk?=
 =?utf-8?B?MVNsWkd6cWVBT3Z5cFF6VWpvd0ZRU1pMSFZTY09McllPelg1R0RuQVJpNEVD?=
 =?utf-8?B?NmdOS3F1MXVDZ094ZlhNK3hyMDU4WGltZC9URzhDdHRqeXM4a2lmSFR0Zitw?=
 =?utf-8?B?TDBST0toand5Q1BzWHFpcnNYRC8xWVdlN3JGUEN0bHBBa2cyeEYzK1BaNVFC?=
 =?utf-8?B?SU5RUlRnaWRpa09MWUJjTFRoR1FyN3RwR3hNV1NTR2RpdHEwSUt5ODd5N2Q3?=
 =?utf-8?B?dTgvRHIrODhqc3NjQ1pvN2Y3bDRGdXZwa0Z5b01NUXFQVVpBNjhDbi9aRUg4?=
 =?utf-8?B?Tm1kQU4zN3VwWnh1S0RCcFUxRWhHbjZPT1BLY1hRVVRGdWYxMlR4eG9RQzBQ?=
 =?utf-8?B?a1hqbUZrRUFtZWRwY2pFbExlV0FPWlNrbXpYdTAwNndrc1R2V1UyZHlqaFow?=
 =?utf-8?B?Szc0dy9uZFpqMWRFRFFuL2toU2JzQVlwdmZTb1BNNGFGbGFHci9GK2g3NUJh?=
 =?utf-8?B?cUg4ellLL3k0U0J1eElwL0tveittd3ZFN2VOeENKYUw5aTNIVEVTRXhGNy9P?=
 =?utf-8?B?ci9qZDlXMnpNSTZ4SmM1dUdJMlhmYk9xRnltcjkwK1VVV24wS0VHdEc4bFRN?=
 =?utf-8?B?K3ZRK0xJbDdSdS9IMmRhYW92bmF3bU5rcFJsZlFEZ1c1T3ovNm1uVngrOUZ6?=
 =?utf-8?B?aFVmY0ttZzQ0UERveDRaaXAybXd0NVpVSHRBWGprd241Q0pNdEtqb25Nd0tq?=
 =?utf-8?B?ZGNMWUNmcnFaMDRXRGVrS3JaeC8xWU9MSm1leFR6U3AxVEZCM1dwRTBOTXpH?=
 =?utf-8?B?a1dsdGYvdUp3aDVFMnZZS3A3S001a2RWZU9ES0JUbHlTYmdtLzg3a1hudzdK?=
 =?utf-8?B?eW5CeFhQd0lTVzYxRGR3Y0oxcWhGdnJIcXY5K2ZWeTBsdTZKeC8xd2NObXFn?=
 =?utf-8?B?eEExOU5ZNFkwK1M2dEFLSnRSanVJWDhtSlBNTmJDa3VLWHQ0czEvYzZDMG84?=
 =?utf-8?B?OEJEaHRXT3pidGxJWG1pOVZrbG41OFN1RDlEN0F2Y2J0VHFOcDNqR3ZaQ2dO?=
 =?utf-8?B?SGQ4c2JiMnNUTTJEUXpJcGkzaW9jRzh4QWtFUTVVMDV1V1pyelg2Y2N2Wlk0?=
 =?utf-8?B?bW9lWGtkWkJjcndtZGFmY3hkbXlpZDd3dkRRR3NRK3dDeXJ1SzYwMkdZVFBT?=
 =?utf-8?B?eTV0QUQwdXY1T2ZsSWhYRHdFVFBkVGQ2UHhDVXFnd01tUy9KSkJCT0xMbEh4?=
 =?utf-8?B?cjFjeUVaVDI1cWNTdVc1cEZKd3R1d3hCTlZrak5LTVdRU01JUTZ1M21RN1NI?=
 =?utf-8?B?c01Wb2J0TmIxd1dtcENXd2lzamIrWmFkNFVDYkhZc2lBaW1IRGNCa25yWnRx?=
 =?utf-8?B?N3kwUEMyVU9NMm1CRG41QnpGU0lCZDBPWnppN3VBcHYzSE82clAwdDl2cGlW?=
 =?utf-8?B?UjFSbitrYkwyNzgrU0ptVGYzaDR1OVI2SDdaUWxKSXFuZVNyNDIxamoxU3R5?=
 =?utf-8?B?cU1VK1ZQV3EzeExJUEtTT2N5TWNlcFBVRnAyK0xQekRLeVZkeDdvbUVnTDV3?=
 =?utf-8?B?cVpjOEhOWnRka3FrTmpOdlRjN3RJcUZ2V1VmM2hkQWxqWTFZazNaM2gyZ1BR?=
 =?utf-8?B?TVhFWGpmdTdaTlJjS0Nsd29iZjdGTFYzYjZ6aDQvN2ZKUTBPYXF2SzZKdXN2?=
 =?utf-8?B?MkxlVzlUd2FzbnhJamlQVmx5TEFScFRQc3ozYkxYQTMxVFd1M2h5S0tJSTln?=
 =?utf-8?B?bytrWlIyZHBaWkh3SVg3MkIxcDFLajArb3lqcmhkWHlSU2E4UExGS3BndFdV?=
 =?utf-8?B?ZGM0WWdadGtLM0w5VEp3ckNyQUtvNlBMQlpXSXh2NnZCY2lJZmp5SFg4M0NP?=
 =?utf-8?B?YmxDVkxBdS9Xelh0bmswRnZzeTVGV3NJNzZNYzQ5U2lZVlE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WHhTUmZIV1FkZWU3eUVnT3dOSVJvcmJiTS9LMG04ODNjRTZBTm5EaTVDZDFG?=
 =?utf-8?B?aDBKMDFCSFZzUXpDWDU4V3Fpa1VhMEg4NHVyVFNWWHpHSmpYT1ZBWkVwS3Ay?=
 =?utf-8?B?ZWNxWEt2eFQ3UTdUM0hud2tPTFFTUjNxVG1DOGtjUTRydm1tTjVpUlZ6eWcr?=
 =?utf-8?B?SHErTzN1dTVNMnd5UlhpNHhBYWl5b3hONm5Xb0FlbU5POVQvWXhmUGNlT0t3?=
 =?utf-8?B?TWY5Nmx1emtTNno4bnVVNmlPRmVIQ3k5RUNsZHU4NXp6R2dLbk1yYVZybTdv?=
 =?utf-8?B?c01tT1I5aGdscGx5a0dlVHR6NlVFbytTRE9Va3M0SXg2anlyZy80VmlFOWNV?=
 =?utf-8?B?SFR0R25vYlMybi9mZTZqa09BUTFvVk9CSEFPdHlING1UNGUzejYwaWxxMEt3?=
 =?utf-8?B?b1FrWHpvUGxHMGx3UUdPMW5BS3ZlQ2pwZlFQMFBvUUpBT0pKbi9ZY2ZOVGkx?=
 =?utf-8?B?bVFIaGxwWk9KKzVGcTVGaGdtZ1gvRW1NMTBwaDFBOCtmSEV6V2krdlByK0Ix?=
 =?utf-8?B?eUwyOWNRNlp2MUtFMFExTGlWbHdwR2R0eEU1emdBTWFrMElkMlZTNHJUL2ZO?=
 =?utf-8?B?UHNqbGxyeUxuMGpBb0kzdi9hSVgwZ0s0RVRMWk96UTR1amlvd1dRMEcvemZ5?=
 =?utf-8?B?bi9KYVozZmh1ODlZK2Q4RlZWRXlHUWVPb2UyS3h2c1lXamwrT2F1VHo2YWlx?=
 =?utf-8?B?R2lZend3c1Y4Wm9LMXlPYS9NL2ExNFROMUNPQldwQlNKQnl0dGdtM1NhQkxE?=
 =?utf-8?B?SS9CZ3pGYm5BT0VZZXMwNUdEd2Nkd0pHcCtvZzRNN1hORUJrVFBybktiM0dY?=
 =?utf-8?B?M3Y1dFFXdVdXYTh4Zm5ZM2hFN2RWZlp4Q1g4NHZXU2V3Q3JycklZK0FmdVAr?=
 =?utf-8?B?ZlhzaFpUMjR6WUVjb3NtOENLMWlSSXRBcnRIYVlkbmlleDAxdWFTdFk1WHFV?=
 =?utf-8?B?WW1FYUNZM3hvOE5VaVlFcUhyV29yYlhqVWFidkVDUHNDMWp0Sk9Yc0h4QWpS?=
 =?utf-8?B?TUo0eFdwRW9xaENwZllzWjZobjZIcmRpc3FVRC9UNkJsbTQvVkNSbDJLcmhu?=
 =?utf-8?B?VTErY0ZDRGt6L1dhTlA2QitidGJFYmFBYVNMNG5FLzZzbEhvbjduL1VHczg4?=
 =?utf-8?B?SFJwaXc5ZWdIVWlxRjRya3ZsYWdWK1pzN0kvbHlsdkRFNkdFWk55Y1J5dnJi?=
 =?utf-8?B?MkRJek5yYkZUbWJWbmdmN2ZscnR0V0kwOVdkMXlnT21xTEp1NE9ZdGJFY2RQ?=
 =?utf-8?B?cG5aR0Y2QTZiQzhiRGcxN1p0T2ZicU5QdHZqOCtuKzBuYmEvQVZXR2xrNXhN?=
 =?utf-8?B?T0RVa2l6WFJhVjVlTHdsbXFkRXMvQ245TzJYZ0x6SWZ3WjhZRmd6N2RaYU1E?=
 =?utf-8?B?QmZBRDZ4MXFlY3JIblZIZnpzUUE3eWxRNFNLMThJVjNicTRTR1Z0dE9EMzVZ?=
 =?utf-8?B?Q0V4KzdZK3l1MXNwRi91NHRoSHM3ak5BK3hzbnZtNDNCOXJHRWI5MEp3N3E2?=
 =?utf-8?B?bkZwVWE2QjVvbFd2b0kzeDJwYm90TitWS3drekY0dGE5dkFpcW54QWwwVllp?=
 =?utf-8?B?bHFRWTIyQjBkZXIwOGt2L2dIYnlPNlVzV3hQbTJod2FocDF5MExlWnEyS21w?=
 =?utf-8?B?SHI4OU9nakFwZmdkWC9rV2RLMmJ0cVNEakx1bVFTRHZva3YyVk40UDJwUHNk?=
 =?utf-8?B?Q0V0WDVDMGhvZkhsd2lvVEp2cHVxVXd6MlpjTExuVnJBeElTSHlhdWFjRlB3?=
 =?utf-8?B?aXJERkxXVjBjVmhRMkFWVFVGTjlGTUtHY1ZOODVXOUZCeGRnN1pJSzh2RW1s?=
 =?utf-8?B?L0U3VlY3Q2ZnK3JsU0FBN2ZQTXh5MDNHTnlGeFd6ajNGQ0tDeC9UQVNtSTJO?=
 =?utf-8?B?QjRjZzlUOWxkYWxTQmU1WFJ3OW9hQWdlVXZxa2lwdkRhU1ZMbUNlM3c5blVs?=
 =?utf-8?B?L2k2eUZXenU1ZEcvMkVxV0RZR0tyUlFZVEZsM00zemxZdnZ5d3JUUngvakFw?=
 =?utf-8?B?RlcxUWJBckhMYzNVenlTYkJIQkIrQ1Z2NjJTMllXU09xNjM2NTZTQzJxMmQx?=
 =?utf-8?B?Y3RhdTlYR3VxSGE5ajBaUzlYY0J0N0dicnNnRHFWeHM1WWozVkNWa0ZiTVQy?=
 =?utf-8?Q?o3SoaIF5Y6DM9/w2Lto1d1Fhe?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 296e7344-c08d-4556-7246-08dd614dbd6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2025 10:07:47.4730 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FKbzuJCXdXeJtnoAEODKZqpCmgw4N7SglBcUPwN9wbvRovkHAq6kh7n09SJkwV8QiKbM6si81EmpNWv4LOHbkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4796
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

SGksIA0KDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2FhcmluZW4s
IEphbmkNCj4gU2VudDogV2VkbmVzZGF5LCAxMiBNYXJjaCAyMDI1IDEyLjA2DQo+IFRvOiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZzsNCj4gSTkxNS1jaS1pbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4gU3ViamVjdDogUkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUv
cG06IENsZWFuIHVwIHRoZSBoaWJlcm5hdGUNCj4gdnMuIFBDSSBEMyBxdWlyayAocmV2MikNCj4g
DQo+IEhpLA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSW50ZWwt
Z2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBP
Zg0KPiA+IFZpbGxlIFN5cmrDpGzDpA0KPiA+IFNlbnQ6IFdlZG5lc2RheSwgMTIgTWFyY2ggMjAy
NSAxMS41Mw0KPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gQ2M6
IEk5MTUtY2ktaW5mcmFAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gU3ViamVjdDogUmU6IOKc
lyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvcG06IENsZWFuIHVwIHRoZQ0KPiA+
IGhpYmVybmF0ZSB2cy4gUENJIEQzIHF1aXJrIChyZXYyKQ0KPiA+DQo+ID4gT24gVHVlLCBNYXIg
MTEsIDIwMjUgYXQgMTE6MTU6NTNQTSAtMDAwMCwgUGF0Y2h3b3JrIHdyb3RlOg0KPiA+ID4gPT0g
U2VyaWVzIERldGFpbHMgPT0NCj4gPiA+DQo+ID4gPiBTZXJpZXM6IGRybS9pOTE1L3BtOiBDbGVh
biB1cCB0aGUgaGliZXJuYXRlIHZzLiBQQ0kgRDMgcXVpcmsgKHJldjIpDQo+ID4gPiBVUkwgICA6
IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTM5MDk3Lw0KPiA+ID4g
U3RhdGUgOiBmYWlsdXJlDQo+ID4gPg0KPiA+ID4gPT0gU3VtbWFyeSA9PQ0KPiA+ID4NCj4gPiA+
ICMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIw0KPiA+ID4gICAqIGlndEBrbXNfYWRkZmJf
YmFzaWNAdG9vLWhpZ2g6DQo+ID4gPiAgICAgLSBmaS1rYmwtODgwOWc6ICAgICAgIE5PVFJVTiAt
PiBbRkFJTF1bNl0gKzMgb3RoZXIgdGVzdHMgZmFpbA0KPiA+ID4gICAgWzZdOg0KPiA+ID4gaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM5MDk3djIv
Zmkta2JsLQ0KPiA+IDg4MDlnL2lndEBrbXNfYWRkZmJfYmFzaWNAdG9vLWhpZ2guaHRtbA0KPiA+
DQo+ID4gQSBidW5jaCBvZiBzdHVmZiBzZWVtcyB0byBoYXZlIGJyb2tlbiBpbiBDSToNCj4gPiAt
IHNvbWV0aGluZyBpcyBub3cgbG9hZGluZyBhbWRncHUgd2hlbiB3ZSBkaWRuJ3Qgd2FudCBpdCBs
b2FkZWQNCj4gT24gYm9vdCBJIHNlZQ0KPiA8Nj5bICAgIDAuMDAwMDAwXSBDb21tYW5kIGxpbmU6
IEJPT1RfSU1BR0U9L2Jvb3QvZHJtX2ludGVsDQo+IHJvb3Q9L2Rldi9udm1lMG4xcDIgcm9vdHdh
aXQgZnNjay5yZXBhaXI9eWVzIG5taV93YXRjaGRvZz1wYW5pYyxhdXRvDQo+IHBhbmljPTUgc29m
dGRvZy5zb2Z0X3BhbmljPTUgbG9nX2J1Zl9sZW49MU0gdHJhY2VfY2xvY2s9Z2xvYmFsDQo+IHhl
LmZvcmNlX3Byb2JlPSogaTkxNS5mb3JjZV9wcm9iZT0qIGRybS5kZWJ1Zz0weGUNCj4gbW9kcHJv
YmUuYmxhY2tsaXN0PXhlLGk5MTUsYXN0IG1vZHByb2JlLmJsYWNrbGlzdD1hbWRncHUgcm8NCj4g
DQo+IElzIHRoYXQgbm90IGVub3VnaD8NCj4gDQo+ID4gLSB0aGUgZnVsbCBkbWVzZyBoYXMgYmVl
biBsb3N0IHNvIEkgY2FuJ3QgZXZlbiBmaW5kIG91dCB3aGVuIGFtZGdwdQ0KPiA+IGdvdCBsb2Fk
ZWQNCj4gQ0kgdGVhbSwgY2FuIHlvdSBnZXQgYWxsIGxvZ3MgdHJhbnNmZXJyZWQgPw0KRnJvbSBy
dW5uZXIgbG9nIGFsc28gc29tZSBkYXRhIDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM5MDk3djIvZmkta2JsLTg4MDlnL2lndF9ydW5uZXIwLnR4
dCANCg0KDQo+IE9uIGRpZ2dpbmcgaW50ZXJuYWxseSBJIHNlZSBmcm9tIGRtZXNnIChzdGFydCBm
cm9tIHRoYXQgZmlsZSkNCj4gDQo+IDw3PlsgICAzOS4zNjU2MjldIFtJR1RdIGk5MTVfbW9kdWxl
X2xvYWQ6IGV4ZWN1dGluZw0KPiA8Nz5bICAgMzkuMzczOTkyXSBbSUdUXSBpOTE1X21vZHVsZV9s
b2FkOiBzdGFydGluZyBzdWJ0ZXN0IGxvYWQNCj4gPDc+WyAgIDM5LjM3NjA5MV0gW0lHVF0gaTkx
NV9tb2R1bGVfbG9hZDogZmluaXNoZWQgc3VidGVzdCBsb2FkLCBTS0lQDQo+IDw3PlsgICAzOS4z
NzYxOTddIFtJR1RdIGk5MTVfbW9kdWxlX2xvYWQ6IGV4aXRpbmcsIHJldD03Nw0KPiA8Nz5bICAg
MzkuNTUxNzQzXSBbSUdUXSBjb3JlX2F1dGg6IGV4ZWN1dGluZw0KPiA8Nj5bICAgNDIuMTk2ODky
XSBbZHJtXSBhbWRncHUga2VybmVsIG1vZGVzZXR0aW5nIGVuYWJsZWQuDQo+IDw3PlsgICA0Mi4x
OTcwNjVdIFtkcm06YW1kZ3B1X2FjcGlfZGV0ZWN0IFthbWRncHVdXSBObyBtYXRjaGluZyBhY3Bp
DQo+IGRldmljZSBmb3VuZCBmb3IgQU1EMzAwMA0KPiA8Nj5bICAgNDIuMTk4MDY5XSBhbWRncHU6
IFZpcnR1YWwgQ1JBVCB0YWJsZSBjcmVhdGVkIGZvciBDUFUNCj4gPDY+WyAgIDQyLjE5ODkzM10g
YW1kZ3B1OiBUb3BvbG9neTogQWRkIENQVSBub2RlDQo+IDw2PlsgICA0Mi4yMDA1OTVdIGFtZGdw
dSAwMDAwOjAxOjAwLjA6IGVuYWJsaW5nIGRldmljZSAoMDAwNiAtPiAwMDA3KQ0KPiA8Nj5bICAg
NDIuMjAxMzUyXSBbZHJtXSBpbml0aWFsaXppbmcga2VybmVsIG1vZGVzZXR0aW5nIChWRUdBTQ0K
PiAweDEwMDI6MHg2OTRDIDB4ODA4NjoweDIwNzMgMHhDMCkuDQo+IDw2PlsgICA0Mi4yMDE0MThd
IFtkcm1dIHJlZ2lzdGVyIG1taW8gYmFzZTogMHhEQjUwMDAwMA0KPiA8Nj5bICAgNDIuMjAxNDIw
XSBbZHJtXSByZWdpc3RlciBtbWlvIHNpemU6IDI2MjE0NA0KPiA8Nj5bICAgNDIuMjAyMzA3XSBh
bWRncHUgMDAwMDowMTowMC4wOiBhbWRncHU6IGRldGVjdGVkIGlwIGJsb2NrIG51bWJlcg0KPiAw
IDx2aV9jb21tb24+DQo+IDw2PlsgICA0Mi4yMDIzMTFdIGFtZGdwdSAwMDAwOjAxOjAwLjA6IGFt
ZGdwdTogZGV0ZWN0ZWQgaXAgYmxvY2sgbnVtYmVyDQo+IDEgPGdtY192OF8wPg0KPiA8Nj5bICAg
NDIuMjAyMzE0XSBhbWRncHUgMDAwMDowMTowMC4wOiBhbWRncHU6IGRldGVjdGVkIGlwIGJsb2Nr
IG51bWJlcg0KPiAyIDx0b25nYV9paD4NCj4gPDY+WyAgIDQyLjIwMjMxNl0gYW1kZ3B1IDAwMDA6
MDE6MDAuMDogYW1kZ3B1OiBkZXRlY3RlZCBpcCBibG9jayBudW1iZXINCj4gMyA8Z2Z4X3Y4XzA+
DQo+IDw2PlsgICA0Mi4yMDIzMThdIGFtZGdwdSAwMDAwOjAxOjAwLjA6IGFtZGdwdTogZGV0ZWN0
ZWQgaXAgYmxvY2sgbnVtYmVyDQo+IDQgPHNkbWFfdjNfMD4NCj4gPDY+WyAgIDQyLjIwMjMyMV0g
YW1kZ3B1IDAwMDA6MDE6MDAuMDogYW1kZ3B1OiBkZXRlY3RlZCBpcCBibG9jayBudW1iZXINCj4g
NSA8cG93ZXJwbGF5Pg0KPiA8Nj5bICAgNDIuMjAyMzIzXSBhbWRncHUgMDAwMDowMTowMC4wOiBh
bWRncHU6IGRldGVjdGVkIGlwIGJsb2NrIG51bWJlcg0KPiA2IDxkbT4NCj4gPDY+WyAgIDQyLjIw
MjMyNV0gYW1kZ3B1IDAwMDA6MDE6MDAuMDogYW1kZ3B1OiBkZXRlY3RlZCBpcCBibG9jayBudW1i
ZXINCj4gNyA8dXZkX3Y2XzA+DQo+IDw2PlsgICA0Mi4yMDIzMjddIGFtZGdwdSAwMDAwOjAxOjAw
LjA6IGFtZGdwdTogZGV0ZWN0ZWQgaXAgYmxvY2sgbnVtYmVyDQo+IDggPHZjZV92M18wPg0KPiA8
Nj5bICAgNDIuMjAyNDI3XSBhbWRncHUgMDAwMDowMTowMC4wOiBhbWRncHU6IEZldGNoZWQgVkJJ
T1MgZnJvbSBWRkNUDQo+IDw2PlsgICA0Mi4yMDI0NDldIGFtZGdwdTogQVRPTSBCSU9TOiA0MDg0
MzUuMTgwMzAxLjA0cw0KPiA8Nj5bICAgNDIuMjI4MzQ4XSBbZHJtXSBVVkQgaXMgZW5hYmxlZCBp
biBWTSBtb2RlDQo+IDw2PlsgICA0Mi4yMjgzNTNdIFtkcm1dIFVWRCBFTkMgaXMgZW5hYmxlZCBp
biBWTSBtb2RlDQo+IDw2PlsgICA0Mi4yMjgzNTZdIFtkcm1dIFZDRSBlbmFibGVkIGluIFZNIG1v
ZGUNCj4gPDY+WyAgIDQyLjIyODczNF0gYW1kZ3B1IDAwMDA6MDE6MDAuMDogdmdhYXJiOiBkZWFj
dGl2YXRlIHZnYSBjb25zb2xlDQo+IA0KPiA+DQo+ID4gLS0NCj4gPiBWaWxsZSBTeXJqw6Rsw6QN
Cj4gPiBJbnRlbA0K
