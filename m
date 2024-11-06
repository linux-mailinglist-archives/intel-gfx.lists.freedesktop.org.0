Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 356A79BE224
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 10:17:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4954810E0E0;
	Wed,  6 Nov 2024 09:17:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bQxjjz0N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F52410E0E0;
 Wed,  6 Nov 2024 09:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730884641; x=1762420641;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=kBadpU5rM9pZyjNYwWRdvVfOaQZ6l26jcSsDqyEsyj8=;
 b=bQxjjz0Nw4H/jZmjOZXdoaBbNeXW3evbTpSPilBaO0X61EeS6uyQaTjM
 lQIM6JTVwK216Gs+ZpNOBgbCGCYfyQYwlXvxWZ4GAPnI1sjEW+D6wNAWp
 91an3tXcIWHaZB9POdOg4V0jfxaZxEM7JhxaQ9phF7rLCfATxywhIt3wP
 kUG7ODcyZmGFeLW5dj1kwEdblmw3qQbe7RsQDt4dtZ/Iwy1CE0gJxt4Vz
 7whoAiUvicLV+fWg3Xfv4nbkZIvkL4e1tyxrLoIC2pHKOKAPkm1pLYyy6
 YEJVdSEYlEvzPkUEGpINE9GnCFVj6WO63kzjTDZ0AuupFyqnTtvVqbcOs A==;
X-CSE-ConnectionGUID: SegXSey7TzCzfa2PTagFug==
X-CSE-MsgGUID: yKQZOihoTVWzItq2YVTAoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="42071343"
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="42071343"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 01:17:21 -0800
X-CSE-ConnectionGUID: Hq1rsLJiSxym8rCMwUqutQ==
X-CSE-MsgGUID: zCi3N1ZQQ8OgBTB9G5KAnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="85253497"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 01:17:20 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 01:17:19 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 01:17:19 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 01:17:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cvG1O82Zxwjvk18iXSdI3byvBDqvqURIMNvHHQRcVOKGcDSY92Xg6Kvqusz5xwEVAhRnboZ9AyZz/uSulYAA1pmu+p1RvX9Hnnz1/VkDHTDrFo5vY+LdRu2BofRdC+ujTOaAz89kq2tvfip4m1m1dF3AVA54fBAla2zA9VgTBokIs0y5q8aht31xBeoInrgKENtB3HPEkezT+FW2rBAbZgv+FHHOFxNfOmevjYVf5aAp+/IgGAg+tK2q5qelVVCjtUeMB1MuawKLIFWf34rdkc4sRwwDOnn3D9cBc7xOcJ+7G0WGUa73gSqB/rIXaMmZ5t5cHXfc8UNMGLKeDr9sEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kBadpU5rM9pZyjNYwWRdvVfOaQZ6l26jcSsDqyEsyj8=;
 b=D4DVXwyVR5ScWGcZkq+PMZ+EKxd6fyBIwWEVG4hZoiWX168fuhIiQu7oALewUEUsJsFQmDQhemfY5qVkS3CTSkHqAKThUrT1XVqc9hH13n9J+FF6e2BrRjSLQgpIGnL5da/U5rrX92Eq7ph5zx//nCATkAhlrB2Dln4J20yZclivMJwniiVe33KClUls3XorGTRykkBksg8vjToJBvndH1U/RpDYCcXRA/ldcf3ijYKOPfPilEUYhSFq1ruj2TBcisCz2qZD1i8I6mxhtmg1Bo2vbVcjBLFVBZRIGmncZoeprhzzhzGZZWaeC+Fg1lBKVYPwsRyPZSBVDpgXuu3+lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by MN6PR11MB8146.namprd11.prod.outlook.com (2603:10b6:208:470::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.19; Wed, 6 Nov
 2024 09:17:17 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8137.018; Wed, 6 Nov 2024
 09:17:17 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 04/15] drm/i915/display: convert HAS_DOUBLE_BUFFERED_M_N()
 to struct intel_display
Thread-Topic: [PATCH 04/15] drm/i915/display: convert
 HAS_DOUBLE_BUFFERED_M_N() to struct intel_display
Thread-Index: AQHbLt3OTAkbLe/i3Uypa5S0HNOhurKp+5uA
Date: Wed, 6 Nov 2024 09:17:17 +0000
Message-ID: <b953a402b5f20ffa48b11ebfd4c56c15efb9faee.camel@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
 <3b045c864325b9ffbbc00c9b6f0f95305798223e.1730740629.git.jani.nikula@intel.com>
In-Reply-To: <3b045c864325b9ffbbc00c9b6f0f95305798223e.1730740629.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|MN6PR11MB8146:EE_
x-ms-office365-filtering-correlation-id: 471388dc-c321-44f9-0552-08dcfe43cf1e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?YW5nMkxDTVM5S2pTaS9hV1UveHZJd1orUi9TdUY3Mzh6Y0pBczc5MVhjWURF?=
 =?utf-8?B?a1FhV2JpdGNGeHJBOEdNZGNzbU1XdVNNZzNwaEg3ODYrUTMvMnZncXduN1gw?=
 =?utf-8?B?M2xOK09yUHc1WkNtTHp1dUp0Q1JVclNqVDB1VGxRUTloSGxNQXlYaVpqSVN3?=
 =?utf-8?B?emVDd1lmSlBFeU1rMStkWmxObXFmVFVCWFVJYmlHL1BpUURaeXFLdVN5cDlN?=
 =?utf-8?B?SjVQdWEvSzVzaldwUmtkL29EcXFlMDErNzYzcElRemUvM0IzTTJLaGRtZERE?=
 =?utf-8?B?SC9UQUlOYnBKR1d4TGVrNzc5dnQ4S3FEQVR4dVp3MERLaGU2b290cE1xcjRD?=
 =?utf-8?B?NDBITFFROWFlNUNjRnRzdlZkUVVJY1YzODJLWFVYZVVBMDc4RUFXY05uSlQ2?=
 =?utf-8?B?N0taanI3dy9VMWZHMlgxeGFaL3Z0dVN0N0VSUWJ2RkN1eXptZmVjS1k5Z2Z2?=
 =?utf-8?B?em5FZ2NYaWtNUTBwd012Vld2Rm03Nld5YzBFRU9KQnpObjRzY0RVYWlhSkc3?=
 =?utf-8?B?NFgwbUQ1cTRxNHlYV3diUDI0VUxOSXg5NDcvSWE3OGpPWFJoQ3l2UTJHSCtO?=
 =?utf-8?B?bDcwZGxrS28yd0lwU2JwSWFPTHJYdTJrYWl1K3VmeVBZWk5DZk1MOHB3ditR?=
 =?utf-8?B?cURwa3dEUEpKbkdCN2Nna1gwb2ltN2hPQ3REaUt4Sm84MFpCdTQzancwNUwx?=
 =?utf-8?B?V09LT0pScDVEOURkNkZkU2VSeGhqZm1yVUxzY1M0My8xOFBOeDBvMTZsZkQw?=
 =?utf-8?B?TmhwazVrNDZDa0RzSDhWTEloZnY1NEoyZmZIRmVXUkZFbWVjVnIza1F6UjZX?=
 =?utf-8?B?YTFZQWRwN2J6ZzZEeTY3V3NoTDd4RmpXMEw0MGJOYlZMMk5wRy9Pem53NDg5?=
 =?utf-8?B?Y0NPNTVoTkdEMUVsZnlaN2lXYUtDY0tMVGNKVGFOdlc3dXFUdnc5d2Uzbk5C?=
 =?utf-8?B?OFJmNk5MRk1KaExjeUJwM2NhTGNxV3JMWStZS0VXa2xuTW5oZ0VHWU1DQTZz?=
 =?utf-8?B?ZHBKdCtLTHRaZ05oZWRlWVY4UUlvWFF0d1dNdjJ0ZEo0eUNMU05iQkJzRGJT?=
 =?utf-8?B?UDBvMXRMc3F5NmIvM2Y2TXJQTnZTMzJCZU05WGZrdkVrdTFjYVhabjJGbXh0?=
 =?utf-8?B?bnU2dWNrcWJPRGcydFE2b0RhTjY4Y2k2SUY2RGc4c2ovRU4rQzlETUduV2ND?=
 =?utf-8?B?VkdmcTloVWQzd1FqeHNrSXFZTTAzVlJpTUJHZlQ4Nmg3VmRhNEEzYkIvdFAx?=
 =?utf-8?B?VHNSeSsxMExDUmNyVnBNVjlhV2diZDZzUEp6dk1zZkRER1B5K2RkaTV1MC8r?=
 =?utf-8?B?UWJBbXFlTnZGOVo4V25iK0NOUFkreStYdUFzWE5ST1FNS3p3a2dzdHRVcWI0?=
 =?utf-8?B?Qmpzd21GZmtpN3ZrYUJFcy9WT2xpTE5obXloSS94UnFjMVhoWkFVeGZ4Zjd2?=
 =?utf-8?B?bnFiUzlOUFUxNmhvT0M1M1Q1K283cHdkNHllSkJmUFg3MHFpc1VHT0ZIRll0?=
 =?utf-8?B?UUFQdnR4UGxXOGNhbUdFbG1xY3hOWmw4bWJoTGRqdTRCSjBBcjFLUFRJb2JJ?=
 =?utf-8?B?a0NlaStSaU8vdjdtaVFWM3J1NHhaTlk5bnJhSG5YczBDL1VORG13ZnozNTE2?=
 =?utf-8?B?bTBYYkQzdTVFUlUwVVFFcUZOTmJ2My90bnNaMDQwSWg2aWVTMlZxa1NTL3c4?=
 =?utf-8?B?Q2IrZmk2N1NkRWY5U1Bld1R5ZmV1eTR6TTQxd2lRV1c4TEFLclhSRTV3eHZS?=
 =?utf-8?B?dFh5K2FGVFpSRkIzSmc3SHh0M2xiNHplczJ5SGxmN2Q2S2dtS3FOa3BmWm5o?=
 =?utf-8?Q?JuRLGxfL0GWT9Qo3mHRXQydmp082CLqkE5RNs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cThFUytCU04wQXdQRFF3bTZsdWpOT0JGUGpYZ1JwaHl1UGNma3RkcTc2eit6?=
 =?utf-8?B?bGlOMVF3bDFOcjNYRFVndHhkYWtSc3g3VWVHNXlXTlh0U3grbDl2WTMwbURp?=
 =?utf-8?B?c245cElpN2syYUFvaEJ4L3dYdkFFdHJ6KzNMb3NCVjUxN2JMZjJZZDhKdEhP?=
 =?utf-8?B?K0tGRUN2OU5Pd3hYUmlrbVo2UWJvZzZ1akFTZ1ZHK3FtbG9JRXVZT3N2Z2NS?=
 =?utf-8?B?Y1JGaEtzT0UzTDcvTzdVRmhLWHdRZWFNZ04vVCt6RjF2U29VcDVicDJlQ0I2?=
 =?utf-8?B?OHloOGQ2ek41ZTNEZjk4SXUzRmlnRWptRGwrOG4rSFpVVEh2MmZZWkgveXhG?=
 =?utf-8?B?aWdZVW53Qk1GODZGYXJESXl1TTVNZmZ1M2JBMEdBV1BNVWFHYk93dk9QOUtk?=
 =?utf-8?B?RDRsU3hVVmUxMVBtZjJiSFJaK1BISjlNa3BuKzZnTERMQjg2aFRZQXIyUW51?=
 =?utf-8?B?bEt5eGFISWRaYUI5ZmcvZm13U1pzNmFhTlA5dmliZFBjblRuUFFmNEoyaHZZ?=
 =?utf-8?B?Umo5OXVBOHlHTEdiN1hWSE1nWXNDdm41RkZCSHZUVnUya1JxcVpVM3I5Q0E0?=
 =?utf-8?B?eVk1aVAvL2dacDNkd0loakR3dk5DRkVKWTM0UU15R2tZVGdJemFyRmxtNkFo?=
 =?utf-8?B?cUgwWEc2ZkZNcFVsK1hCVnJsNldGRGVRay9wbm1lNlBlTmlRaHUvckRtam04?=
 =?utf-8?B?R28yS3NhVUN3eG8wajR4eEMydmdnTnRKUEs4L2RHV1FFeFZQNjdSR3lQR2xY?=
 =?utf-8?B?REVPWlFvV0xvYTJqS3NabEIwQ2I1TkpVem5uU2kxTXovRE1BY1ZBdVh3KzBW?=
 =?utf-8?B?TE9Cb3hzc3hmcEFQS0hNWTN2RSs4a1k5RHkxVE15b3FGWEk0ZkZxVHZPOGdS?=
 =?utf-8?B?L3QxRXlrNEhoaTAvWnJ5NURnSUhuWmJWbVRsRUNlRkxLaFZFbzJpY1BqWjE5?=
 =?utf-8?B?QmYvd0ZRTExJVmlPWFhHTzRYNm85cWVDdXAzbWwrc1UrYlFmdzdvc3BZd29M?=
 =?utf-8?B?SXpnWWR6UWR0VFFOa1JKMHlVNFNob0dPeFNNbTZXYmdJTWwyeGVLSzRtYndO?=
 =?utf-8?B?TkwzcmlhUnp1K3RKeVZLT0UwMmozUTlvb01tOE9sbnEvRzFuTzQvbjNEU01O?=
 =?utf-8?B?QXByQWFlaGdVQytQUU5sUUtqSFlmWmdkaVpqSS8rcm1BTG84RUVFRFA1ZzhY?=
 =?utf-8?B?V3k4OTZtOExhWWVJYW05WkxodXl0RGI1NDJINUVhUGdWMExlekpZTDdLTjV2?=
 =?utf-8?B?ZTFKSWIrQkRuaUp6WGJNdzhyUkwxc0QyRnhiVDVTZVFhOE1oNmJyc3lwU3Rr?=
 =?utf-8?B?anY0YjBTeTlQMjJQZzMyU1dEMnRncUtadmJJdlJ1UjZsSk8zRUoyQlYrRHp3?=
 =?utf-8?B?RGVDaXQzN0FkTFlwQkMxaEp1TkpyblRLQjB3am13N3J2dFAvZ1RRNHFzUVFs?=
 =?utf-8?B?aUNjcEhGejlWTnJ2VkRGcjRDdHU1eFZraGMxMHJKVE9wb3p1cEJ4R3N1M2FV?=
 =?utf-8?B?bjRYUng4SXBCZ3Mwb1pNM21lSjB1ZE1haFZ5dUxmMDF5bk5XQTNlOGhKWEN0?=
 =?utf-8?B?bHJFNmx0bDE2bFZnOHA4TTlyZHc3Y2QyYzQ0SUtXRndpY2s4ZjB5dHg5TGNV?=
 =?utf-8?B?NTZUY3I2bEdHbWhwQjBFN1lNVUdDTmI1N2l0RkxpSjZJU3oybTBnNngzZkFk?=
 =?utf-8?B?VElsWDg5VDhFRUUyWmY5OFV3cXBiZTZTOFNFUncrRkZXK2dyTnR1Q1RNbTVD?=
 =?utf-8?B?NlJDUGJkRGJLeGM1RFlNOXRFRnpSWE5IWU5MNUFYUWFCSVVNelZDWkI4T0s2?=
 =?utf-8?B?QS9iRUpPWG5tcVZLdEkyOHBVZVp3bHZlcUZ2QURzb1UyQnRWSXNGaUcwYVBz?=
 =?utf-8?B?WC92cENaL05WUndWaEJSaDUyYmxzSjZDQm5hUlpHZUx1cDRMd0F4cGJ1UTNy?=
 =?utf-8?B?QUNLR3BZeWNVN3RoNEhxUkdlbFI3T0dBNllIZ0RTM3dxcFdSWnVrVjU1MGRB?=
 =?utf-8?B?TlJ5ZWNtL1hTcXFUb1ZKU1Z4T1BnQkxGQktEVUJtMGU1WlZ1VjJnN2ErZVJp?=
 =?utf-8?B?UUJXMTNsVHVFbmZGZ21GbEtSdmVyVlU3LzhMWEorbHVvN0F2MkUyaGdCNy9p?=
 =?utf-8?B?MGRnYitTTUVhT1RsazdpTk9MeXd0TExwbmMxQ2J3Uy9NTTdFMk1FRkM4aXIx?=
 =?utf-8?Q?cMMqnjlM8oxxr2U/osLWnNc=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <582661B9A3188143989FD565CA43DA87@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 471388dc-c321-44f9-0552-08dcfe43cf1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2024 09:17:17.0331 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pVjHOCOknG/0LmRJZvQb4mzGQjEqOUsGOe+3lyDGWlxwO6JD49qwQQkqyTBauR9PbKdfhyRt9U754WkgZH2dJiWTildUz4QmHd1j63iP4eU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8146
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

T24gTW9uLCAyMDI0LTExLTA0IGF0IDE5OjE5ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBD
b252ZXJ0IEhBU19ET1VCTEVfQlVGRkVSRURfTV9OKCkgdG8gc3RydWN0IGludGVsX2Rpc3BsYXku
IERvIG1pbmltYWwKPiBkcml2ZS1ieSBjb252ZXJzaW9ucyB0byBzdHJ1Y3QgaW50ZWxfZGlzcGxh
eSBpbiB0aGUgY2FsbGVycyB3aGlsZSBhdCBpdC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5p
a3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IC0tLQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmPCoMKgwqDCoMKgwqDCoCB8IDMgKystCj4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmggfCAyICstCj4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmPCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfCA0ICsrLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHJycy5jwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCA0ICsrKy0KPiDCoDQgZmlsZXMgY2hhbmdlZCwg
OCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmlu
ZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPgoKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggODYzOTI3ZjQy
OWFhLi41N2I0MjU1NGQ2NTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC01MzIyLDYgKzUzMjIsNyBAQCBpbnRlbF9waXBlX2NvbmZp
Z19jb21wYXJlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjdXJyZW50X2NvbmZpZywK
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcsCj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYm9vbCBmYXN0c2V0KQo+IMKgewo+
ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxf
ZGlzcGxheShjdXJyZW50X2NvbmZpZyk7Cj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3VycmVudF9jb25maWctPnVhcGkuY3J0Yy0+
ZGV2KTsKPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRl
bF9jcnRjKHBpcGVfY29uZmlnLT51YXBpLmNydGMpOwo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3Qg
ZHJtX3ByaW50ZXIgcDsKPiBAQCAtNTU2Miw3ICs1NTYzLDcgQEAgaW50ZWxfcGlwZV9jb25maWdf
Y29tcGFyZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3VycmVudF9jb25maWcsCj4g
wqDCoMKgwqDCoMKgwqDCoFBJUEVfQ09ORl9DSEVDS19JKGxhbmVfY291bnQpOwo+IMKgwqDCoMKg
wqDCoMKgwqBQSVBFX0NPTkZfQ0hFQ0tfWChsYW5lX2xhdF9vcHRpbV9tYXNrKTsKPiDCoAo+IC3C
oMKgwqDCoMKgwqDCoGlmIChIQVNfRE9VQkxFX0JVRkZFUkVEX01fTihkZXZfcHJpdikpIHsKPiAr
wqDCoMKgwqDCoMKgwqBpZiAoSEFTX0RPVUJMRV9CVUZGRVJFRF9NX04oZGlzcGxheSkpIHsKPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmICghZmFzdHNldCB8fCAhcGlwZV9jb25m
aWctPnVwZGF0ZV9tX24pCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgUElQRV9DT05GX0NIRUNLX01fTihkcF9tX24pOwo+IMKgwqDCoMKgwqDCoMKgwqB9
IGVsc2Ugewo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfZGV2aWNlLmgKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9kZXZpY2UuaAo+IGluZGV4IDcwZDFiZWViYmY4Zi4uZTExOTkzYTZmMDQyIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZp
Y2UuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9k
ZXZpY2UuaAo+IEBAIC0xNDksNyArMTQ5LDcgQEAgc3RydWN0IGludGVsX2Rpc3BsYXlfcGxhdGZv
cm1zIHsKPiDCoCNkZWZpbmUgSEFTX0RESShpOTE1KcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoChESVNQTEFZX0lORk8oaTkxNSktPmhhc19kZGkpCj4gwqAjZGVmaW5lIEhBU19E
SVNQTEFZKGk5MTUpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoChESVNQTEFZX1JVTlRJTUVf
SU5GTyhpOTE1KS0+cGlwZV9tYXNrICE9IDApCj4gwqAjZGVmaW5lIEhBU19ETUMoaTkxNSnCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAoRElTUExBWV9SVU5USU1FX0lORk8oaTkx
NSktPmhhc19kbWMpCj4gLSNkZWZpbmUgSEFTX0RPVUJMRV9CVUZGRVJFRF9NX04oaTkxNSnCoMKg
KERJU1BMQVlfVkVSKGk5MTUpID49IDkgfHwgSVNfQlJPQURXRUxMKGk5MTUpKQo+ICsjZGVmaW5l
IEhBU19ET1VCTEVfQlVGRkVSRURfTV9OKF9fZGlzcGxheSnCoMKgwqDCoMKgKERJU1BMQVlfVkVS
KF9fZGlzcGxheSkgPj0gOSB8fCAoX19kaXNwbGF5KS0KPiA+cGxhdGZvcm0uYnJvYWR3ZWxsKQo+
IMKgI2RlZmluZSBIQVNfRFBfTVNUKGk5MTUpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
KERJU1BMQVlfSU5GTyhpOTE1KS0+aGFzX2RwX21zdCkKPiDCoCNkZWZpbmUgSEFTX0RQMjAoaTkx
NSnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgKElTX0RHMihpOTE1KSB8fCBESVNQ
TEFZX1ZFUihpOTE1KSA+PSAxNCkKPiDCoCNkZWZpbmUgSEFTX0RQVChpOTE1KcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMykKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gaW5kZXggZmY1YmE3YjMwMzVmLi5h
MjdkYTk2ZDJjNjAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
Cj4gQEAgLTE3MDAsMTMgKzE3MDAsMTMgQEAgc3RhdGljIGludCBpbnRlbF9kcF9tYXhfYnBwKHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gwqAKPiDCoHN0YXRpYyBib29sIGhhc19zZWFtbGVz
c19tX24oc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQo+IMKgewo+IC3CoMKgwqDC
oMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShjb25uZWN0b3It
PmJhc2UuZGV2KTsKPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxh
eSA9IHRvX2ludGVsX2Rpc3BsYXkoY29ubmVjdG9yKTsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqAv
Kgo+IMKgwqDCoMKgwqDCoMKgwqAgKiBTZWFtbGVzcyBNL04gcmVwcm9ncmFtbWluZyBvbmx5IGlt
cGxlbWVudGVkCj4gwqDCoMKgwqDCoMKgwqDCoCAqIGZvciBCRFcrIGRvdWJsZSBidWZmZXJlZCBN
L04gcmVnaXN0ZXJzIHNvIGZhci4KPiDCoMKgwqDCoMKgwqDCoMKgICovCj4gLcKgwqDCoMKgwqDC
oMKgcmV0dXJuIEhBU19ET1VCTEVfQlVGRkVSRURfTV9OKGk5MTUpICYmCj4gK8KgwqDCoMKgwqDC
oMKgcmV0dXJuIEhBU19ET1VCTEVfQlVGRkVSRURfTV9OKGRpc3BsYXkpICYmCj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9wYW5lbF9kcnJzX3R5cGUoY29ubmVjdG9yKSA9
PSBEUlJTX1RZUEVfU0VBTUxFU1M7Cj4gwqB9Cj4gwqAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcnJzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RycnMuYwo+IGluZGV4IGJiMzllYjk2ZTgxMi4uMGZlYzAxYjc5YjIzIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHJycy5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcnJzLmMKPiBAQCAtNjgs
NyArNjgsOSBAQCBjb25zdCBjaGFyICppbnRlbF9kcnJzX3R5cGVfc3RyKGVudW0gZHJyc190eXBl
IGRycnNfdHlwZSkKPiDCoGJvb2wgaW50ZWxfY3B1X3RyYW5zY29kZXJfaGFzX2RycnMoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW51bSB0cmFuc2NvZGVyIGNw
dV90cmFuc2NvZGVyKQo+IMKgewo+IC3CoMKgwqDCoMKgwqDCoGlmIChIQVNfRE9VQkxFX0JVRkZF
UkVEX01fTihpOTE1KSkKPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlz
cGxheSA9ICZpOTE1LT5kaXNwbGF5Owo+ICsKPiArwqDCoMKgwqDCoMKgwqBpZiAoSEFTX0RPVUJM
RV9CVUZGRVJFRF9NX04oZGlzcGxheSkpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqByZXR1cm4gdHJ1ZTsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gaW50ZWxfY3B1X3Ry
YW5zY29kZXJfaGFzX20yX24yKGk5MTUsIGNwdV90cmFuc2NvZGVyKTsKCg==
