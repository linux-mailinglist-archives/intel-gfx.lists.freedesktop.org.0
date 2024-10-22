Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F13A9AA085
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 12:55:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A79DD10E669;
	Tue, 22 Oct 2024 10:55:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nbEZagat";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DB6B10E668;
 Tue, 22 Oct 2024 10:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729594523; x=1761130523;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=03MOIetiYoVPF23aaS0J8aOTmi8cBd0pjCX8KbPeHMg=;
 b=nbEZagat5WZ1gOHUWYErUrGo7Co0xc9oDdqfan9jEC4ga7Fck4tyHMmI
 m2ldsPlOMiEkfT8Q0xCRaIC/0gDABZH8xxxz9tGADg567o6Tq4EHfWJWm
 az/J9fcX181DIp24cjMxPT1xhAeiqyvktnmq1hsDex2L/m+MCqRZ6Qwxo
 Yd5kkcxVdo69gb/cXWEEK0nlqxdi4eyP0WbZJpWOOnqvLSB0xKue3Df9u
 luTZFvIG02j+svp3aXZWslw5aLOywUjnYrU4SquZnIsxEGswh3CF+JmKm
 inpRxT+99SIlfTOmu8fqFMYO24Y72zHNEjlaO6z8BJ4EE3hfWjNqKqf55 A==;
X-CSE-ConnectionGUID: x9YtL4aoRrmfl3DtzxyXwA==
X-CSE-MsgGUID: Rk/KCMEKS++XP7RhIK76vg==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="39705439"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="39705439"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 03:55:22 -0700
X-CSE-ConnectionGUID: ZTZrASkjSbWRSIOtGT3AgA==
X-CSE-MsgGUID: 4QvwbdYKTF2zEYDjf3BvGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="80239103"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 03:55:21 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 03:55:21 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 03:55:20 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 03:55:20 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 03:55:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Lci0Kjs+hxj7r0Z8k7gcg/0gNsMw2RTwty77KAczPTNedaTALg8t7ls+RVsRJonZsy1bJoBNcg/MJxZxBSlKG4fdle7UDr/iQOP+Qmk9l6wPaF1rmgP3+ajmFuZAc01VQ4Lg+UFXT947U9xuMTH2q7iI8NtuPo7NhrQ0zGXYH5UVsQzKyCOgkF3M5vVRTI1OIlkE3wso1wrlZDEi1ptWJVqTjm/DGw5QXBHLx0FxJUuX5wIEOiEcgCBRuJw4W7dNjq6ghKlCOOCvL/mKJkqS4JjF8NznOl2p3/nlJipzFNpfeyNe4LHPDHknQykMfgH65LyZXZyBygeyNfvH4OgzSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LxPX+qvUTlI6Q18PEfD6QEfgEfjzZWyuQGm1IAlOT5c=;
 b=RldJflCFBRVbRX5qYqqGL/7SNJYxWDQ0mccSBrwGu+cmPiaPAySGsdRTFqCJph7GBoxuWoB6jyN6qq8DH117n6XCeZe88Lvx/J2rLDFf3eYoXI9JBCkOd/QQRBpYtiy6PoZQP5uN/VAIgW7bVGOMI63QZpqQA1Op37hmkjBewQiCJG4a535+zg4ZmT18zr0H4D/SjB4f7H2DvxteE2Gg/Z0UAsHcjnG8/zAymWMXkmGs7+seoDGUjsge0B1fdz7uXQOs48qpB7LPFV+kPjiAdHriHPR9dKibXCaW4j4jjcU4OcBpL5ieo+RkhT/6PmwtJyS/LVzy8i8eoG6PjM/lqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MW3PR11MB4569.namprd11.prod.outlook.com (2603:10b6:303:54::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 10:55:15 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8069.027; Tue, 22 Oct 2024
 10:55:15 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87wmi0v5u3.fsf@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-3-gustavo.sousa@intel.com> <87wmi0v5u3.fsf@intel.com>
Subject: Re: [PATCH 02/13] drm/i915/dmc_wl: Use non-sleeping variant of MMIO
 wait
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Tue, 22 Oct 2024 07:55:09 -0300
Message-ID: <172959450980.3700.12071321081236598428@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW2PR2101CA0032.namprd21.prod.outlook.com
 (2603:10b6:302:1::45) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MW3PR11MB4569:EE_
X-MS-Office365-Filtering-Correlation-Id: e31fecd1-81f3-4b47-8fc1-08dcf288028b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Tmpjb0RjZFdBNktxMkZzWmpZTHBrMU52ZUJxUTdnbmpXL0J6UUJBVkhpQ2R1?=
 =?utf-8?B?a3RFRDY0K01wWGtFdG9oOThJNnN2a3ZqMlRPczd6ZjB4bjBiNkw3Y05EeFBP?=
 =?utf-8?B?UlJBMVg5OFYyYXEyOFM3ZVoraXA4b2hWMXZacTJ3ZXJPSDlRZ3BWMzFHNGRS?=
 =?utf-8?B?alRyTGl2LzZQNTVpcDJjeGhiR1RKMEJJTXVTVkJ0UUVMRW53dTVLL0NSQmc0?=
 =?utf-8?B?R211cDlhY1UwREtIMUxrRnpTR0FCc2h0WENlNEhFd2dsSW5zZVdObng0d0xs?=
 =?utf-8?B?c2xVRDNOd0FxLzNuYUxqOUZyR0NydDNmNHQ1SXhZSWxxYVZvSVlKNmdZTXdU?=
 =?utf-8?B?V3dJVXg3blBCaU9LYVNYWlcyOFo3SGVmVmdZVmJpWEpPRDd1cm5xdnlia2l0?=
 =?utf-8?B?dzhFaVlhYmdHR1hMSnZvT3RwMTQ1bGFrNjVPUzcwS05VUyt3MVk3NXdRYWVy?=
 =?utf-8?B?TTRaZ0hGK3BZdWNxc0JvZklETDR2cThxSmFUZlJXWi9lK0pPbUdTbm02L2R6?=
 =?utf-8?B?S1NPdGsvR3VOY1RSVi9XL1UzYlVVRFF0NlozeGRmcHljMnRYZ1EzYXZFd2Ux?=
 =?utf-8?B?eGRYREF4YUF0RS9WaUhQOFBYUEUzWnJVZ2NURkdKdkxTZFNITnFZNzlIdyt6?=
 =?utf-8?B?YXR5R1RsY2gwOThwcjhXS2t4WkI2N3IrWWNiNkV0a0I2UlpLQUI1MDZxaFVL?=
 =?utf-8?B?K3dwUXo3TEhyTVE2ck1xRVZ4aHdScm1sS1UzbTFsNzZvZndxaGFFN20wUGN2?=
 =?utf-8?B?UjlPczlzN0JMUERUYW9nNkhCMFZLSmVQYmRDN3RpZTdkRGZXUVM0b2RoMFEx?=
 =?utf-8?B?U2JRY2JkejB1SnVWb0J0bVA0OTB1S0gvUjdZb0oxVHdSU1hLMk16R0hGdWNW?=
 =?utf-8?B?TlRJK3NOM0JBdm00TCswdU85N1Q5cE5IeDBYZ2czSzFqV0cvTlQyZWh3YnV6?=
 =?utf-8?B?TW1iZko4bzF1UnpPVFRQYk5LZFR3amtJSUFQeXVjUndxN0VzWVVPYnlIcUpK?=
 =?utf-8?B?Q2FUVzd6QlRMM2FkQVJIbUNSbm5EQnhlUGtVMEd4VUhHWWN6YW1mSGRwdUxZ?=
 =?utf-8?B?YWUrZjFtOEFNcjNHOTU1d3ljcWM5ZWJLRUZoSUU2N244OHJabVRtU01BNnov?=
 =?utf-8?B?bGljbWFyRWhQL2VCdjU0R0d6aGZFWkJEcGphSnFnTS91YWtNQ0o3QTNjWjRs?=
 =?utf-8?B?S1NuNjErcHExeVNHclVBZkplN01XVWhHQ0VGcm9MdkQxYjhabmZHaDllVkZw?=
 =?utf-8?B?aTEzZWJzUFZHbWdVMVoyL0pOL1N1RzdGRjgzaTJxRm8wbHdXWnI2UEU1am4x?=
 =?utf-8?B?V3FGZm9BTjRhQWpkQitjWlJ0NnVvb1l0NFJ6ZFZ4RmlHcjVoRnh6TERCVU9Q?=
 =?utf-8?B?YTBpa212VUpacFpYbk5MODljdkxBQ2d2WGxLQmtRcWlqL2wwMndVWndTTVlE?=
 =?utf-8?B?WGpOSHpHcGNsV0dxSGdVdE9CRWo0Y3ZJSFFIak1CWmNrWTBvTGpVR2VoYjBX?=
 =?utf-8?B?ZllYaDRzNzluVVJqMkFHUlF5VUVuTXEwU01oSk9CSVN4TVd6Y29ZWCtXS3Bn?=
 =?utf-8?B?ZmFlRjN5OGhsYlVGMTNWZ1Nzcjh1WHJiMkNEdjh1VVp5aU15VS9uQ1gvUlJl?=
 =?utf-8?B?NEp6bS9TVFA3N2J1U0Vtc2hCNTdtSUgvaXNOeTFhR3NLUGRPYTdFUTFqbUpu?=
 =?utf-8?B?eFNtVXF6T3ozOXBJUUd5RGF2eVo2QjVNdGdEci9oMDZEWWFpb3FNUEhLZU55?=
 =?utf-8?Q?J2KjTIX2XI6iitCUoSyuoN3Ymuh2Fg9xflLuqiv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cFZGYjk0alMxUXZ6OXlPQTNFdHJEOFRWL1dDYWFOek5QWEIxMWVaOHNNZ3R5?=
 =?utf-8?B?QVc4MmhvaHJCYjVqdTlBajdPY3RFY0xGeU9YMmxObytJd2d0eGxWb3RXTXlp?=
 =?utf-8?B?alBXZGJkaDg4bElhRlRXNzRJWmQ1RzdkS1FZR2FEam5jWUd3eGxkZVJiTmVE?=
 =?utf-8?B?WkQ1dUxZS3NrYXFOQVJMMGNYUkphdUVKeUgvdnF1YytwYWJ5WUl0N2M1aTNM?=
 =?utf-8?B?ejRlSUxjajVZcmhObm9lMnJtdlJTdGk4U1JCaVZ6dWpEbkNwL3VMcmdRbUdB?=
 =?utf-8?B?eStrWFYrMjRpUndpL3NmU1dGU1pZZ0NrenRqY1p1WEpScWp6TXNRMFJuMStk?=
 =?utf-8?B?N3ZzY0x0bFNTcmFZSTFGK2RRUklTYVpSdjh6VlUvQnNUS2Y4U0d2Uk5YR2pu?=
 =?utf-8?B?U3ZiRVZjaXhDZVFHSHQxMnp3Y3hOV21ldkVpL0V5V09jSW1ObUo0RzIrdFVa?=
 =?utf-8?B?elJ1bnpKcWJXNmdMOHowTkthV0NRdzMvZGpOOXNmWDFVdWtzTjlBSUlqRDZ2?=
 =?utf-8?B?cFFabWRWYlBzWWJCcjIxaWhmT2tRMzJzRWRpalFMdWI3RDZZUnY1ZFpqbS83?=
 =?utf-8?B?WDRDMjFURWdqZ25HOXZ2YTlMeU9nTUd6bFI0OWkwR2t4NXErWlVqUDJaY1ow?=
 =?utf-8?B?YW95dlhXc2V4aXExQmUzcXpIMmxTVlBGRjJjb0U1Nzd4YTUyeGpNeXkvQmlB?=
 =?utf-8?B?RWd3V3pmNDM1bW1CVHAyQkYwQ2ZzdDNVaEo3NnJNYWZ0VHMrMGtjNkdlemdp?=
 =?utf-8?B?Sm5zbVUyNXNqeTFVQlVveFNpb2NEOXhzYTR6cUJpd3JucjVvaFczMEk5ckww?=
 =?utf-8?B?TDBITUp4T1J0NjZNbXpFRm82Y3AxMW5WSWxCSDllTkhtaWlnY2NLeGZUYi9I?=
 =?utf-8?B?TXBOM2FhQnFNd3BMcTRLN0xNU0tIOENVNFNvS0R2bXhWcGxkbnJXeklac3Yv?=
 =?utf-8?B?NkJSSmhQLzgvTXpQOGFXUjdCSmpobXRYZm90dVFQUm9WT0ZGOUVLMGcwVmJl?=
 =?utf-8?B?R0Z6Z3dDKy9ITnRIRUh3U29EL21KSFNpaXBRWHZ6cjVlV0kwUnFLWk9raWNQ?=
 =?utf-8?B?Sy9HVjQrcW1qZEJsbnRjenNqNTZ6SUdFRmRraFh0M0tCNitTNTh0ZE16SlB3?=
 =?utf-8?B?cHArUzlSeHl5cit6SlBiYndnRWRwcUNTWk5oUmpsUUJlRmJTYTlnV0Jyd3hS?=
 =?utf-8?B?cjFGME5yZjFLSW0zM25naEF6d3hKU1BjZWhBMzhTdnJsMjN2U2tJVDF2UGd3?=
 =?utf-8?B?aEtUYjZtclpYZnRWSXBKSVRvSXM3UU9adE9VSllzTmZkRURxU0RieFk4dTJV?=
 =?utf-8?B?YXBlVEJxNGFuWHdiZVBGK04xWHliWU13OHd6Szg5K1o2UDFpSVZVVGN3UTNp?=
 =?utf-8?B?RnMxUFUrbmsxd0xtVVVJUlJWWERNMnRsd3ZycXFQNERLa2VFa0phWDI1NkJB?=
 =?utf-8?B?NWE4Z0hibHRXdmRlcmRxak10UFpRcEV4YXJsM2NIVGxJZnF1QjlSdEV2cWdi?=
 =?utf-8?B?WFJFbzhSY1hPSkJCZkt1KzErMlMzNTdTTU53cEFQZlZzeW4vbHdkMUxVTHRv?=
 =?utf-8?B?bTQyaEo3SzJkY1VOc0NISE5kT1Bkc2FlRURteG9VTkM1dU1HTHNOWllRZGJZ?=
 =?utf-8?B?UU85Z25xdHlDTlZrK3gzNzc3Y1lwS2hTQ0c5ZzJVeFlWaHZjaTZGL1FJdGJ3?=
 =?utf-8?B?VXhiblh1S2EzU3VXdVBhM1RXbDJRL2J3QkZPZ2Fvak9NLzBhRWJMTGhDcFov?=
 =?utf-8?B?N3JPUTNvT3pGUXdGOUhDRzRFUGkwQ25LcmNnM0NlUW5zNXE0bmtNVUFuVGM2?=
 =?utf-8?B?NUwyUTV5VEtBRDZTK1Z0RkpDcFgxZGFiSVdqUndITjF5ZlJFME40NTJKWXAy?=
 =?utf-8?B?RXZEa1dYQ1RsaEpWeXZEeldBdk5yYUtEMkwrbEJpMjhObjZveHJiWlZDaG9n?=
 =?utf-8?B?OGtLMHB5R1V3Slp6MGtHMVJ5cVdSclhHN1VnaVBSQm44UStvV2x5dW9QZmhu?=
 =?utf-8?B?RXpFVTlEdG03dUd1VFlCT2gwazlwVEZRMXgrNi9ZVUU5NjZwd3BENm9XanFk?=
 =?utf-8?B?NFNZczhZSFlsbE9UZEQyYW05Um56Y3RldCtSbFFZMXFJZ0JoUmFzS1lMS2Jt?=
 =?utf-8?B?alNldC9zcUtBT0RMYzlucDg5K2J0T0M5M2FDMGs3MjhNSzVTdlZFR2g3YUtK?=
 =?utf-8?B?alE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e31fecd1-81f3-4b47-8fc1-08dcf288028b
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 10:55:15.4132 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tJnzYxF2fA+PGjJatbwQCZqEyzaqvf0UNYvhEZtVYl6whU72TZIWd04D6K+864pIxQoC6OID71Z8Osmb+Zg3gA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4569
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

Quoting Jani Nikula (2024-10-22 06:34:44-03:00)
>On Mon, 21 Oct 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Some display MMIO transactions for offsets in the range that requires
>> the DMC wakelock happen in atomic context (this has been confirmed
>> during tests on PTL). That means that we need to use a non-sleeping
>> variant of MMIO waiting function.
>>
>> Implement __intel_de_wait_for_register_atomic_nowl() and use it when
>> waiting for acknowledgment of acquire/release.
>>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_de.h     | 11 +++++++++++
>>  drivers/gpu/drm/i915/display/intel_dmc_wl.c | 20 ++++++++++++--------
>>  2 files changed, 23 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i=
915/display/intel_de.h
>> index e017cd4a8168..4116783a62dd 100644
>> --- a/drivers/gpu/drm/i915/display/intel_de.h
>> +++ b/drivers/gpu/drm/i915/display/intel_de.h
>> @@ -121,6 +121,17 @@ ____intel_de_wait_for_register_nowl(struct intel_di=
splay *display,
>>  }
>>  #define __intel_de_wait_for_register_nowl(p,...) ____intel_de_wait_for_=
register_nowl(__to_intel_display(p), __VA_ARGS__)
>> =20
>> +static inline int
>> +____intel_de_wait_for_register_atomic_nowl(struct intel_display *displa=
y,
>> +                                           i915_reg_t reg,
>> +                                           u32 mask, u32 value,
>> +                                           unsigned int fast_timeout_us=
)
>> +{
>> +        return __intel_wait_for_register(__to_uncore(display), reg, mas=
k,
>> +                                         value, fast_timeout_us, 0, NUL=
L);
>> +}
>> +#define __intel_de_wait_for_register_atomic_nowl(p,...) ____intel_de_wa=
it_for_register_atomic_nowl(__to_intel_display(p), __VA_ARGS__)
>> +
>
>There's no need to add the wrapper when all users pass struct
>intel_display. And we don't want new users that pass i915.

Ah, okay. Thanks.

>
>And why are we adding new stuff and users with double underscores?

Well, this is a no-wakelock variant and it shouldn't be used broadly. I
believe that was the motivation of all "__intel_de_*nowl" variants being
prefixed with the underscores.

--
Gustavo Sousa

>
>>  static inline int
>>  __intel_de_wait(struct intel_display *display, i915_reg_t reg,
>>                  u32 mask, u32 value, unsigned int timeout)
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/d=
rm/i915/display/intel_dmc_wl.c
>> index 5634ff07269d..8056a3c8666c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> @@ -39,7 +39,7 @@
>>   * potential future use.
>>   */
>> =20
>> -#define DMC_WAKELOCK_CTL_TIMEOUT 5
>> +#define DMC_WAKELOCK_CTL_TIMEOUT_US 5000
>>  #define DMC_WAKELOCK_HOLD_TIME 50
>> =20
>>  struct intel_dmc_wl_range {
>> @@ -78,9 +78,9 @@ static void intel_dmc_wl_work(struct work_struct *work=
)
>> =20
>>          __intel_de_rmw_nowl(display, DMC_WAKELOCK1_CTL, DMC_WAKELOCK_CT=
L_REQ, 0);
>> =20
>> -        if (__intel_de_wait_for_register_nowl(display, DMC_WAKELOCK1_CT=
L,
>> -                                              DMC_WAKELOCK_CTL_ACK, 0,
>> -                                              DMC_WAKELOCK_CTL_TIMEOUT)=
) {
>> +        if (__intel_de_wait_for_register_atomic_nowl(display, DMC_WAKEL=
OCK1_CTL,
>> +                                                     DMC_WAKELOCK_CTL_A=
CK, 0,
>> +                                                     DMC_WAKELOCK_CTL_T=
IMEOUT_US)) {
>>                  WARN_RATELIMIT(1, "DMC wakelock release timed out");
>>                  goto out_unlock;
>>          }
>> @@ -216,10 +216,14 @@ void intel_dmc_wl_get(struct intel_display *displa=
y, i915_reg_t reg)
>>                  __intel_de_rmw_nowl(display, DMC_WAKELOCK1_CTL, 0,
>>                                      DMC_WAKELOCK_CTL_REQ);
>> =20
>> -                if (__intel_de_wait_for_register_nowl(display, DMC_WAKE=
LOCK1_CTL,
>> -                                                      DMC_WAKELOCK_CTL_=
ACK,
>> -                                                      DMC_WAKELOCK_CTL_=
ACK,
>> -                                                      DMC_WAKELOCK_CTL_=
TIMEOUT)) {
>> +                /*
>> +                 * We need to use the atomic variant of the waiting rou=
tine
>> +                 * because the DMC wakelock is also taken in atomic con=
text.
>> +                 */
>> +                if (__intel_de_wait_for_register_atomic_nowl(display, D=
MC_WAKELOCK1_CTL,
>> +                                                             DMC_WAKELO=
CK_CTL_ACK,
>> +                                                             DMC_WAKELO=
CK_CTL_ACK,
>> +                                                             DMC_WAKELO=
CK_CTL_TIMEOUT_US)) {
>>                          WARN_RATELIMIT(1, "DMC wakelock ack timed out")=
;
>>                          goto out_unlock;
>>                  }
>
>--=20
>Jani Nikula, Intel
