Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B33A1BDDCCB
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 11:33:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57EA410E785;
	Wed, 15 Oct 2025 09:33:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DgItWPhh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A2C010E777;
 Wed, 15 Oct 2025 09:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760520785; x=1792056785;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ONb1fOHW2Bq8sO+J70JDsJ0z7V9DXbgZGNwb4/KorLo=;
 b=DgItWPhhgUC2ko1me53Foh6U66jxYvS1RmVUCEWnTLrXrgJGKYE1pHIX
 WlZMU7ZR6WUTPcNdjOFqyYM13K5+PWVbbiju/tiZwnuK+bmiE+Lk9Tx8P
 ds728BSQna4tDYq7EwCjiPxYqc40v9awsOZqMc8Hah6poOU/ExY3TzdT6
 gbJzx0tEgbWjjvFFteQXcEI06wGTeZyY9dtGkLNdhkGPhumMrwB8/v+mU
 MH2LRrp1fr0JGEMTXLLdfpR68Z5kO0QyE+NstdC/pkPCsFG3nVMKCmkhS
 6M8GCX2Bb+wJpei7Kid3vkolgH8cJzg/dHXQDYZkr9GxejoEa2TWcRLm1 g==;
X-CSE-ConnectionGUID: o19W7YhZSoW5ljpmucDuRg==
X-CSE-MsgGUID: dar8RzV6TLeSHBuzQroyGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="62587831"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="62587831"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 02:33:05 -0700
X-CSE-ConnectionGUID: dhCmDWlKTxOEfj3j0LXkNw==
X-CSE-MsgGUID: mGcRvm+SQOi9spIKMac7+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="219272146"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 02:33:06 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 02:33:04 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 02:33:04 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.68)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 02:33:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yFFh+n0qMNU0Hr2daUf013NE4hSiak9J/BzH5OMdcVSW0nl0IRwije0OSIGwTGS9BwQ7U4WO6pX4yH/yWNGXfJ7T1RoP/Ijxs+sCGFcRiy06MVoBGIBMsbzQKt+VCsKTcC9dg4w49qPvrKE/UBjIoV7rdyy0VaTSmtHEnLJgIpDX8F9ueZ9DjcYMcLL9zqh2ZNxmoROwPzre8G9zp02WtNvA+At3Oq1ae2eGUATBK1+h6xgDzswyPK0DC/FZim3WVRDiOJwW4QaxPyjbet0dMH8vLAG35mkyp/HLHbVzMQkJRzQcjbNJIh//7UnIR9s2A2Ud3S+1fA3qf+P43i/nAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ONb1fOHW2Bq8sO+J70JDsJ0z7V9DXbgZGNwb4/KorLo=;
 b=vdJtdJUBxetbUGoPB2Vuf3UKwR0lico5wl3BA3LUeACzV5LI/tUaHKeePiAj48N7k5glmPoXZJf2dITmuq0/IbIdZTEVoOcWb1EN+vKeLM+sVhJMYpDNmJSHZ7ByiMgyNpUVkYdNoUN6KfG58FdZ1DkP1gYEKNDxNsfTTm9vXHNM8w5GnQMgQy9HwQw9GKrqwdWwV03cGZXExdT3vuEWYQJvD3kWvYPtBnrH8PceZBSP7S6XDWQhofwKQNTyR3MEcdxcJKbBgBmOAdsKkftEC08t5GJNGDfJDLKY/xlE287csEHSQA/jNh7OpyYDtN5sIsVhC6yX68BIixEQUAmeVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV2PR11MB6024.namprd11.prod.outlook.com (2603:10b6:408:17a::16)
 by PH7PR11MB5960.namprd11.prod.outlook.com (2603:10b6:510:1e3::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.9; Wed, 15 Oct
 2025 09:32:57 +0000
Received: from LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::dc22:ef1e:53e2:f00f]) by LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::dc22:ef1e:53e2:f00f%4]) with mapi id 15.20.9203.009; Wed, 15 Oct 2025
 09:32:56 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
Subject: Re: [PATCH 08/10] drm/i915/psr: Check if final vblank is sufficient
 for PSR features
Thread-Topic: [PATCH 08/10] drm/i915/psr: Check if final vblank is sufficient
 for PSR features
Thread-Index: AQHcPaZT44GOBlBLuEuyzQyRWpIWGLTC7PmAgAAFGYA=
Date: Wed, 15 Oct 2025 09:32:56 +0000
Message-ID: <f0d0d29676d3bc3eaf3795d5222b680f94940cd9.camel@intel.com>
References: <20251015072217.1710717-9-ankit.k.nautiyal@intel.com>
 <20251015091441.1785187-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20251015091441.1785187-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV2PR11MB6024:EE_|PH7PR11MB5960:EE_
x-ms-office365-filtering-correlation-id: e3475726-df95-4dd2-1159-08de0bcdd301
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|366016|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?NGYwdTFiV1FjYkc1b3JFYkRqYllJcEJwRzhFTmtCcThicVBNNndoM3EzdDZr?=
 =?utf-8?B?elAxL1JLN0dUbkVtVzdaRmJFeE1KQTVWRWdkSWZVcnh6bG1HWENIUTFXSU5L?=
 =?utf-8?B?T2ZmYnQwZXF5UXlQeWFsdXpONkhDWlp5ZGJsNml6b09sb1BCdENKSHc0MjU5?=
 =?utf-8?B?MGIvU3pTUzNqUFV3RzZYTUdSa0NEVzVtbzhIaVFkZWZPU3VqTlNBbkZHdVdT?=
 =?utf-8?B?S3lPUjJIQW4vaTluZWtrWEY4cFRTK1EwZTRaNG0wUTFOMFlYZVhKYiszK21l?=
 =?utf-8?B?TWFVT2NrOTdoMW5ZT3dUVWZ4N2w3VGE2SzJSem0yQmF5Y0lYTGUyMGFHNlox?=
 =?utf-8?B?YzBOdUpVUllsczdGYjcvL1FWNmFvQ1BqL3cremlrNnM2SU92M0lWZFYxSFBu?=
 =?utf-8?B?QU5EQWZpaC82MFVhc2V0dVFGeCtuQzN0N3pEemZ5UUpLYjY2RTlPN1ZCeGZQ?=
 =?utf-8?B?MU9KaC9YUFZSRGhYZHhpOGhtS2drakFRT3F6aTY2Z2JUT0NHWklaWHhIY0tH?=
 =?utf-8?B?bGRKRXl5bEE2K0ZXbUt5a2l6Rm5tWTBmQVFrNkFxbGpPWmdJZFF2YTd3NG1L?=
 =?utf-8?B?a1diNkJBRmVMRVJRMmtWUFlkWVhWVUVCZmNqc0N1Q3BXVnNyY2c1S0h2WjdV?=
 =?utf-8?B?S3VZTlFNc1BDcDhkbitFUzZGTENoMmp5M1IxaVBPVWoxTk1CVXdVNWZEbFBo?=
 =?utf-8?B?NWNxaWdjQ2FQZDFwKzFqS0NLQ2thNjFFMnFPU0tuWWVaSUI2TmsxcEprK2ZP?=
 =?utf-8?B?TDdIMGRjUkdxRUNrOFI5dldmcVNSbVMxQ2VIbWcyYTNJekppUG5XV0JCLy9p?=
 =?utf-8?B?UnpFVEdmMlVoYWlHT2hIaXh6ZjVyNjBwVjZzUGtCMC9oMndSTXZpYlQyVGNC?=
 =?utf-8?B?K2MzRE5BRHhjcVdWNTIzYjNzOEhOU2tBWHV1Z2JYZG5zUzV3Z3RYU3lUZmZV?=
 =?utf-8?B?NlZzVjNaNmJ6MDEzUXBHUG50OC9oeTVuVjN0YTNkZUZOVStZaWxiU3ZpS3ZP?=
 =?utf-8?B?LzJJYW9VRk1mQ094Q1k5SDVlS09RS3VabGNXUWdUb3N0Q2pqMEtIOGQyWk02?=
 =?utf-8?B?VjFOWktsd0JlL3ByeGNmZ0I0STRxYjY0djljNy9yaXhxZ29hb2lVYlEvYlhh?=
 =?utf-8?B?TURnYjN6SmFmY3BTUnVvRlJDSjhoc25ocWFDbml0L253QmtWVXI3VFU0RXI2?=
 =?utf-8?B?RW1kbE13VDVPakhrb1h0ZkhTNWl0dElhb1NvNG9ZTmMxOUszRUhIUmhHSXVL?=
 =?utf-8?B?SWwzT0J5SExwSkhHRVVjQTl4TXlIcVdpNS93eUt5VjdzbE1ZeFgyWTVLRHlL?=
 =?utf-8?B?c1M1Um9uMTFocys5LzYwRWliblRxNE9hNEdIOEVjY05VbTJIR0RHZm5VWGpl?=
 =?utf-8?B?eU1qUkFxOTBWK2ZTSnlSeWFSeFN3eGFNcEc0RlhsZDh1UzBlOHB5NldLQ1Ny?=
 =?utf-8?B?Rk51R0d0blJmcXZuaUMyWXVzRDY3U3Qrd1JSSUJVbnBjbE9BU0pTSklpM00y?=
 =?utf-8?B?TDI4dG5YeXJENHBNSUgxbU1XR1ZpQjRkNXdZcmdXdU5NREtCSWFTaU9GRGFP?=
 =?utf-8?B?OTh0cHdlUThSS3RCaS9lREFVdTFaUmFXMUhFbXhMOGJRV0tmWTVrYm1DS0tt?=
 =?utf-8?B?b2NkNUVDaFl4TitQNVN6RmdncUlqcXFvQ1NyRzk0czhNa0hYampFK1dzc3Vx?=
 =?utf-8?B?KzcyTzZYTGJkcjdNYXhOa1Q0L3Zvb1BjKzZUTXNJamZNTDdiK21FR1RUWk1M?=
 =?utf-8?B?TjVZcFI1N1NuUHNtb1hWRzE4dVhtcVZDNnhPVFhsRm9iS2pVUTNjNENqdVNO?=
 =?utf-8?B?SzlkMDdnV0hPRnUvQlcwUFl5eEJuSm9Rb3J3ZEZJRERpVFBseVlGNDM5Nm5i?=
 =?utf-8?B?RkxKT3FOa0ZnNFV4ZXEvS1Y2SGRnSUp1eDVhUm5lK2F0cE5kYVhmQnFwK1lZ?=
 =?utf-8?B?UFNyam96MnVYWjhqTWR1ZmVlODR3elRPcGx5UVNqRnpGTWpveWY4cmEyM0l2?=
 =?utf-8?B?cW1FUjIrU3YrbjF0TXV2aVBZOVNjMllSeER3VnlleTRnNVNuOWdVb1E2dytu?=
 =?utf-8?Q?hujn9W?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV2PR11MB6024.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(366016)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Ky83VFRhOGF2bnY3eWd1UUhDQ1lyVTdLNzBkNDdxeHBPVlduaDVWTjV0WS9v?=
 =?utf-8?B?S0ZoellISDFBUk9TR2p5RzRKUkwrNkM2ZkdDblBrdUlyNWpLRmhpVkFyNWc2?=
 =?utf-8?B?VlBHNW1JN0lURkI2b05oYkE1MVYxYU5yRnorcEZBc3NBY1VOc3p4S1lITFJQ?=
 =?utf-8?B?ZnU2T28xZzJIZG42V25tMHo4Q2N3OHM2TzkzbWxYbysrNnlZbnBramVCVzUw?=
 =?utf-8?B?RW54ZGFyUHh2eTV0dllLWUlpNWZXM05xQldHcnRDaVFDTTZMcmpMY1hBbVRE?=
 =?utf-8?B?cGVSSnhpZEhhb25xR2YvWlU0NE92cmxNSlhRYWR0Q1MrYTArRHJXOUc5cUkz?=
 =?utf-8?B?bXN0V0lycUhrUUZUc0QyY2tXb3RkVFBOTHY5NS9LOVJaMlh1SGtjT3FUcFVC?=
 =?utf-8?B?bjFWbTdibWVqOXdhZ1RjeU45bGQrRm0ydW5jZ1NSR1NGcS9MZFJ4UDJaRkMx?=
 =?utf-8?B?WHI1M2x3a24xSUtNaDREdlZxTGdDL3hrMXc2Rzd4ZWYvaVZVTkV3S1hVWmgz?=
 =?utf-8?B?dk1vYlZwT2tjWDJ3YzZLN2o1a3NZeXBabGtqTmd6QkhvdTBLNlRUbHAxdGc0?=
 =?utf-8?B?cDd6R0dxVlk0SmhiOUJTMzNpSmpFTXVNS0Q0S1piTWhjUzhCaUh6Znptakxh?=
 =?utf-8?B?U0E0VWk1K2wvbldYUjRKQmxsTHBwbDFUQ3puS2M3YWlIaHBFZUgvZTBBOWtS?=
 =?utf-8?B?R3FMZURxT1QxQjdkVTlaMWVWL3NqanBlQktVb0ZuMnlXMndrM01vODNqUjZ5?=
 =?utf-8?B?cjBGbGd6SGMrbnk0amg3VEwxYThzSnlEYlNQM2VaMnhFb2U2dXNnakJPTWYw?=
 =?utf-8?B?S0JKcDlIbWROUlN1OWdwOEVmcVlpWEZmZmdjUzR1V1NGaUNyQkllbUdUSlR1?=
 =?utf-8?B?LzkxQThPRWhvY3h2eVgvU0IvZDFySWlwOVhvcFJJeFNjdkY1Y1NPa0VFUHJp?=
 =?utf-8?B?ZHJRMVl3QzgwSXhCaUN0SDJ5MkYrYTR2dkRVSW52dkhnVVp3Z0VINjBzNTd5?=
 =?utf-8?B?ZXY5NnZEWnJBUGlVeHViVnlJQ2pha1l2NUNoY3gzTnhtOURReS9JQ2lNUGhv?=
 =?utf-8?B?WmticFluSGptZTNNRFh0cGtYZnV0aCtFMjBTd3pTQVlSeks5YlI3eVBrczJJ?=
 =?utf-8?B?QUM4cElpVUloY25uY1hmZXhoZUZnVzBvenhYMk12VzB1cFhhVzNmL2lGWmp6?=
 =?utf-8?B?cU83bEprNzhoQnMwMWpSTThqWVU0bnlIbGtYYm8vY3gyZ1ZVNW5lMHBCbGx4?=
 =?utf-8?B?eU9RZVFCVGFLNTBHbGRVSHdzQU0vY2xrYUhtZDhJZEFwVDFYZDVOTEtKYVU5?=
 =?utf-8?B?T0pqekJUSzBZU3ZROVFJQ053cUlMaHBDZTR4K1M2K3ZBRDBqOFpmd3c5eXJz?=
 =?utf-8?B?alNxVnZsMnVTUjliUVRubEROMVRVUTQxbmZCMWd1MStuZTlRTDh0YjlYWGxY?=
 =?utf-8?B?b25ZbzdDSS9TdjlOazBQdC9MNHMvUitCZTdYK2svK2U4aUZLdUpHT3k2UXJ0?=
 =?utf-8?B?SFZ3WFBLNjFOblBackY4Wk81ZWd0b1Q2cm1GVGZlc0pYRzlXNUE3dmJHNy83?=
 =?utf-8?B?bXVNemdyYTA4VE9iR3o5dUZscDFmbFNGbEhLOUFjQ0RZdHpjM2hZQnlvb1hp?=
 =?utf-8?B?dDkxY0twUDNhbnNpZGlXWmFiai9xM0FxenQvSERaWDRaN0N1ZEJxZHJTMlRE?=
 =?utf-8?B?ZE1yNHpkMGZjRWdSeDIzM29tc0k4aS95bkNuWmRsZHRicW93eWdKUmVJYksr?=
 =?utf-8?B?YlpUeE9oNkt6Q2hLZVNjTkdrS2pYWmJ5aVczYm5MVzAycVZlekwxY0dWcWpO?=
 =?utf-8?B?WFBvbW5uTWJ3UXUvR2h6TUd0WU5lb0QwQ3lKQU9RdkFmdjBUeUxwWGtSdFdM?=
 =?utf-8?B?MlFGNmdyL2RPUDk3UTFnMHZhV1ovS1lrclc0MEdkYzJEeFhBdEtibkZqR1RF?=
 =?utf-8?B?WC9wSXE0R2VQRzRteDRPd2h1aVdMb3B4U2JoZGwyRVpGcXVyaVVDdEFxekdi?=
 =?utf-8?B?Uzh6cUxmVEtadjB5VDVQaWROZnFoYTBIdzRzT0taQkxkTExTQWZOb2xhRkk5?=
 =?utf-8?B?cEJMOHN3dmlPU1g3U3BYWnVaT0FpLzIybFNuZmtIYW9raDNIaVI0NWVQWVJr?=
 =?utf-8?B?OXIxek5BdEk5UzhJZU9wdEN3UmFsVjNWcFBUeEwyaGtMN3ZxTStIajY0L0sy?=
 =?utf-8?B?OWl6Rm0xek5MT0RYTDZZTkVXOGx6dlB4OEViSlpIa3Yxc3lTMitnTDJ3UUNV?=
 =?utf-8?B?MUsxOXFscVppVkpoa21sM2V2QzlnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F5E6DB13EAB8E244A231170875B6E55E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV2PR11MB6024.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3475726-df95-4dd2-1159-08de0bcdd301
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2025 09:32:56.8954 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MDC6Hfl9T4SfZrLfRw81WRRdLpyPUrxzYSeNUNXLDSMWgvNB8ofUcKQT7T3QqDLZIDha/scM948hs8MeOe+d8UQXDZbv9m+n7Wm9DlJeVEY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5960
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

T24gV2VkLCAyMDI1LTEwLTE1IGF0IDE0OjQ0ICswNTMwLCBBbmtpdCBOYXV0aXlhbCB3cm90ZToN
Cj4gQ3VycmVudGx5LCB3YWtlIGxpbmUgbGF0ZW5jeSBjaGVja3MgcmVseSBvbiB0aGUgdmJsYW5r
IGxlbmd0aCwNCj4gd2hpY2ggZG9lcyBub3QgYWNjb3VudCBmb3IgZWl0aGVyIHRoZSBleHRyYSB2
YmxhbmsgZGVsYXkgZm9yIGljbC90Z2wNCj4gb3IgZm9yDQo+IHRoZSBvcHRpbWl6ZWQgZ3VhcmRi
YW5kIHdoaWNoIHdpbGwgY29tZSBpbnRvIHBpY3R1cmUgbGF0ZXIgYXQgc29tZQ0KPiBwb2ludC4N
Cj4gDQo+IFZhbGlkYXRlIHdoZXRoZXIgdGhlIGZpbmFsIHZibGFuayAod2l0aCBleHRyYSB2Ymxh
bmsgZGVsYXkpIG9yDQo+IGd1YXJkYmFuZA0KPiBpcyBzdWZmaWNpZW50IHRvIHN1cHBvcnQgd2Fr
ZSBsaW5lIGxhdGVuY2llcyByZXF1aXJlZCBieSBQYW5lbCBSZXBsYXkNCj4gYW5kDQo+IFBTUjIg
c2VsZWN0aXZlIHVwZGF0ZS4gRGlzYWJsZSB0aGUgUFNSIGZlYXR1cmVzIGlmIHRoZWlyIHdha2UN
Cj4gcmVxdWlyZW1lbnRzDQo+IGNhbm5vdCBiZSBhY2NvbW9kYXRlZC4NCj4gDQo+IHYyOiBBZGQg
Y29tbWVudHMgY2xhcmlmeWluZyB3YWtlIGxpbmUgY2hlY2tzIGFuZCByYXRpb25hbGUgZm9yIG5v
dA0KPiDCoMKgwqAgcmVzZXR0aW5nIFNDTC4gKEpvdW5pKQ0KPiB2MzogUmVzZXQgb3RoZXIgcHNy
IGZsYWdzIGJhc2VkIG9uIGZlYXR1cmVzIHRoYXQgYXJlIGRyb3BwZWQuIChKb3VuaSkNCj4gdjQ6
IFVwZGF0ZSBjb21taXQgbWVzc2FnZS4NCj4gdjU6IFJlbW92ZSBlYXJseSByZXR1cm4gYW5kIHNp
bXBseWZ5IHRoZSBjaGVja2luZyBmb3Igd2FrZWxpbmVzLg0KPiAoSm91bmkpDQo+IA0KPiBTaWdu
ZWQtb2ZmLWJ5OiBBbmtpdCBOYXV0aXlhbCA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+DQo+
IENjOiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gQ2M6IEpvdW5p
IEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogSm91
bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCj4gLS0tDQo+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDcxICsrKysrKysrKysrKysr
KysrKysrKy0NCj4gLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgNjMgaW5zZXJ0aW9ucygrKSwgOCBk
ZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiBpbmRleCAzODNlNmRjMWVkNjMuLjcwM2U1ZjZhZjA0YyAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xNDA1LDYgKzE0MDUsMjAg
QEAgaW50IF9pbnRlbF9wc3JfbWluX3NldF9jb250ZXh0X2xhdGVuY3koY29uc3QNCj4gc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUNCj4gwqAJCXJldHVybiAxOw0KPiDCoH0NCj4g
wqANCj4gK3N0YXRpYyBib29sIF93YWtlX2xpbmVzX2ZpdF9pbnRvX3ZibGFuayhjb25zdCBzdHJ1
Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gKwkJCQkJaW50IHZibGFuaywN
Cj4gKwkJCQkJaW50IHdha2VfbGluZXMpDQo+ICt7DQo+ICsJaWYgKGNydGNfc3RhdGUtPnJlcV9w
c3IyX3NkcF9wcmlvcl9zY2FubGluZSkNCj4gKwkJdmJsYW5rIC09IDE7DQo+ICsNCj4gKwkvKiBW
YmxhbmsgPj0gUFNSMl9DVEwgQmxvY2sgQ291bnQgTnVtYmVyIG1heGltdW0gbGluZSBjb3VudA0K
PiAqLw0KPiArCWlmICh2YmxhbmsgPCB3YWtlX2xpbmVzKQ0KPiArCQlyZXR1cm4gZmFsc2U7DQo+
ICsNCj4gKwlyZXR1cm4gdHJ1ZTsNCj4gK30NCj4gKw0KPiDCoHN0YXRpYyBib29sIHdha2VfbGlu
ZXNfZml0X2ludG9fdmJsYW5rKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgCQkJCcKg
wqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSwN
Cj4gwqAJCQkJwqDCoMKgwqDCoMKgIGJvb2wgYXV4X2xlc3MsDQo+IEBAIC0xNDI4LDE0ICsxNDQy
LDE2IEBAIHN0YXRpYyBib29sIHdha2VfbGluZXNfZml0X2ludG9fdmJsYW5rKHN0cnVjdA0KPiBp
bnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgCQkJCQnCoMKgwqDCoMKgwqAgY3J0Y19zdGF0ZS0NCj4g
PmFscG1fc3RhdGUuZmFzdF93YWtlX2xpbmVzKSA6DQo+IMKgCQkJY3J0Y19zdGF0ZS0+YWxwbV9z
dGF0ZS5pb193YWtlX2xpbmVzOw0KPiDCoA0KPiAtCWlmIChjcnRjX3N0YXRlLT5yZXFfcHNyMl9z
ZHBfcHJpb3Jfc2NhbmxpbmUpDQo+IC0JCXZibGFuayAtPSAxOw0KPiAtDQo+IC0JLyogVmJsYW5r
ID49IFBTUjJfQ1RMIEJsb2NrIENvdW50IE51bWJlciBtYXhpbXVtIGxpbmUgY291bnQNCj4gKi8N
Cj4gLQlpZiAodmJsYW5rIDwgd2FrZV9saW5lcykNCj4gLQkJcmV0dXJuIGZhbHNlOw0KPiAtDQo+
IC0JcmV0dXJuIHRydWU7DQo+ICsJLyoNCj4gKwkgKiBHdWFyZGJhbmQgaGFzIG5vdCBiZWVuIGNv
bXB1dGVkIHlldCwgc28gd2UgY29uc2VydmF0aXZlbHkNCj4gY2hlY2sgaWYgdGhlDQo+ICsJICog
ZnVsbCB2YmxhbmsgZHVyYXRpb24gaXMgc3VmZmljaWVudCB0byBhY2NvbW1vZGF0ZSB3YWtlDQo+
IGxpbmUgcmVxdWlyZW1lbnRzDQo+ICsJICogZm9yIFBTUiBmZWF0dXJlcyBsaWtlIFBhbmVsIFJl
cGxheSBhbmQgU2VsZWN0aXZlIFVwZGF0ZS4NCj4gKwkgKg0KPiArCSAqIE9uY2UgdGhlIGFjdHVh
bCBndWFyZGJhbmQgaXMgYXZhaWxhYmxlLCBhIG1vcmUgYWNjdXJhdGUNCj4gdmFsaWRhdGlvbiBp
cw0KPiArCSAqIHBlcmZvcm1lZCBpbiBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWdfbGF0ZSgpLCBh
bmQgUFNSDQo+IGZlYXR1cmVzIGFyZQ0KPiArCSAqIGRpc2FibGVkIGlmIHdha2UgbGluZXMgZXhj
ZWVkIHRoZSBhdmFpbGFibGUgZ3VhcmRiYW5kLg0KPiArCSAqLw0KPiArCXJldHVybiBfd2FrZV9s
aW5lc19maXRfaW50b192YmxhbmsoY3J0Y19zdGF0ZSwgdmJsYW5rLA0KPiB3YWtlX2xpbmVzKTsN
Cj4gwqB9DQo+IMKgDQo+IMKgc3RhdGljIGJvb2wgYWxwbV9jb25maWdfdmFsaWQoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCwNCj4gQEAgLTQzNTEsNiArNDM2Nyw0NSBAQCB2b2lkIGludGVsX3Bz
cl9jb21wdXRlX2NvbmZpZ19sYXRlKHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKg
CQkJCcKgwqAgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpDQo+IMKgew0K
PiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50
ZWxfZHApOw0KPiArCWludCB2YmxhbmsgPSBpbnRlbF9jcnRjX3ZibGFua19sZW5ndGgoY3J0Y19z
dGF0ZSk7DQo+ICsJaW50IHdha2VfbGluZXM7DQo+ICsNCj4gKwlpZiAoaW50ZWxfcHNyX25lZWRz
X2FscG1fYXV4X2xlc3MoaW50ZWxfZHAsIGNydGNfc3RhdGUpKQ0KPiArCQl3YWtlX2xpbmVzID0g
Y3J0Y19zdGF0ZS0NCj4gPmFscG1fc3RhdGUuYXV4X2xlc3Nfd2FrZV9saW5lczsNCj4gKwllbHNl
IGlmIChpbnRlbF9wc3JfbmVlZHNfYWxwbShpbnRlbF9kcCwgY3J0Y19zdGF0ZSkpDQo+ICsJCXdh
a2VfbGluZXMgPSBESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIwID8NCj4gKwkJCcKgwqDCoMKgIHBz
cjJfYmxvY2tfY291bnRfbGluZXMoY3J0Y19zdGF0ZS0NCj4gPmFscG1fc3RhdGUuaW9fd2FrZV9s
aW5lcywNCj4gKwkJCQkJCcKgwqDCoCBjcnRjX3N0YXRlLQ0KPiA+YWxwbV9zdGF0ZS5mYXN0X3dh
a2VfbGluZXMpIDoNCj4gKwkJCcKgwqDCoMKgIGNydGNfc3RhdGUtPmFscG1fc3RhdGUuaW9fd2Fr
ZV9saW5lczsNCj4gKwllbHNlDQo+ICsJCXdha2VfbGluZXMgPSAwOw0KPiArDQo+ICsJLyoNCj4g
KwkgKiBEaXNhYmxlIHRoZSBQU1IgZmVhdHVyZXMgaWYgd2FrZSBsaW5lcyBleGNlZWQgdGhlDQo+
IGF2YWlsYWJsZSB2YmxhbmsuDQo+ICsJICogVGhvdWdoIFNDTCBpcyBjb21wdXRlZCBiYXNlZCBv
biB0aGVzZSBQU1IgZmVhdHVyZXMsIGl0IGlzDQo+IG5vdCByZXNldA0KPiArCSAqIGV2ZW4gaWYg
dGhlIFBTUiBmZWF0dXJlcyBhcmUgZGlzYWJsZWQgdG8gYXZvaWQgY2hhbmdpbmcNCj4gdmJsYW5r
IHN0YXJ0DQo+ICsJICogYXQgdGhpcyBzdGFnZS4NCj4gKwkgKi8NCj4gKwlpZiAod2FrZV9saW5l
cyAmJiAhX3dha2VfbGluZXNfZml0X2ludG9fdmJsYW5rKGNydGNfc3RhdGUsDQo+IHZibGFuaywg
d2FrZV9saW5lcykpIHsNCj4gKwkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiArCQkJwqDC
oMKgICJBZGp1c3RpbmcgUFNSL1BSIG1vZGU6IHZibGFuayB0b28gc2hvcnQNCj4gZm9yIHdha2Ug
bGluZXMgPSAlZFxuIiwNCj4gKwkJCcKgwqDCoCB3YWtlX2xpbmVzKTsNCj4gKw0KPiArCQlpZiAo
Y3J0Y19zdGF0ZS0+aGFzX3BhbmVsX3JlcGxheSkgew0KPiArCQkJY3J0Y19zdGF0ZS0+aGFzX3Bh
bmVsX3JlcGxheSA9IGZhbHNlOw0KPiArCQkJLyoNCj4gKwkJCSAqICNUT0RPIDogQWRkIGZhbGwg
YmFjayB0byBQU1IvUFNSMg0KPiArCQkJICogU2luY2UgcGFuZWwgcmVwbGF5IGNhbm5vdCBiZSBz
dXBwb3J0ZWQsDQo+IHdlIGNhbiBmYWxsIGJhY2sgdG8gUFNSL1BTUjIuDQo+ICsJCQkgKiBUaGlz
IHdpbGwgcmVxdWlyZSBjYWxsaW5nIGNvbXB1dGVfY29uZmlnDQo+IGZvciBwc3IgYW5kIHBzcjIg
d2l0aCBjaGVjayBmb3INCj4gKwkJCSAqIGFjdHVhbCBndWFyZGJhbmQgaW5zdGVhZCBvZg0KPiB2
YmxhbmtfbGVuZ3RoLg0KPiArCQkJICovDQo+ICsJCQljcnRjX3N0YXRlLT5oYXNfcHNyID0gZmFs
c2U7DQo+ICsJCX0NCj4gKw0KPiArCQljcnRjX3N0YXRlLT5oYXNfc2VsX3VwZGF0ZSA9IGZhbHNl
Ow0KPiArCQljcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zdV9yZWdpb25fZXQgPSBmYWxzZTsNCj4g
KwkJY3J0Y19zdGF0ZS0+ZW5hYmxlX3BzcjJfc2VsX2ZldGNoID0gZmFsc2U7DQo+ICsJfQ0KPiDC
oA0KPiDCoAkvKiBXYV8xODAzNzgxODg3NiAqLw0KPiDCoAlpZiAoaW50ZWxfcHNyX25lZWRzX3dh
XzE4MDM3ODE4ODc2KGludGVsX2RwLCBjcnRjX3N0YXRlKSkgew0KDQo=
