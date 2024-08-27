Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5156396018B
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 08:26:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCC0F10E265;
	Tue, 27 Aug 2024 06:26:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WCaR4K7V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6021C10E265
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2024 06:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724739961; x=1756275961;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=PdXUAwj2k32oz7J6tDjscgjr750kjp+gXyV/CpvQsKo=;
 b=WCaR4K7VRKDPi1KrkXb4YZKatVXPQmz8F5vegPgu0AvOcrLJVsxFLUPn
 tnegklsyNDpncap/3sYPZ1/iyLfM1KL9KzC5OyRXgNQ59to1oRDqvD2D2
 3ert70ifDXiVC32XMmYC06TY3E6adcO/Mrtg4kcuxwbzTEcD3g2F2bzMm
 r1NLzY3liIPuAN7IFw8WqjAx6dJMR5vBZEFlTX0GP4fsS5JFh5zbbmoZM
 D8G8D73V9b1BO695dewEr8/RE7g7z0oxIcjbmGOtxK5vHzemqyBOQSc1i
 6z2ejPBpDZ1L2HPYumbmadFUEBAFuUXan7Hw206j/HdpkA9GkRM7pTzfx A==;
X-CSE-ConnectionGUID: hX4ge2i1QqOYlWvNs0C++A==
X-CSE-MsgGUID: +jbklfWVQB+pKkOgkt1log==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="26992040"
X-IronPort-AV: E=Sophos;i="6.10,179,1719903600"; d="scan'208";a="26992040"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 23:26:01 -0700
X-CSE-ConnectionGUID: 69fkvvFKRUetM64PH6ymow==
X-CSE-MsgGUID: Geechs/kRkqMTZUcmJSI6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,179,1719903600"; d="scan'208";a="67666452"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Aug 2024 23:26:01 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 26 Aug 2024 23:26:00 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 26 Aug 2024 23:26:00 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 26 Aug 2024 23:26:00 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 26 Aug 2024 23:25:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U+h3zLE4Fh4aRl1LSuQQpXUUsNA61MbzJ0kHQklbISTPqL85YHWQsAlVXzLtzpgAra9A2bQ/2nLoepjnIc+0ZpbN+lUL+3ZdriUGqtUHZP8okYmd8qBYPkHHXOiabyyKGpN9qBtNuxFIEbR//Ghu4EMPe66iQBeJUdqQqiImK2c4UkVgHC2ACfu+7OAPX6oHYWSEKYUpNjw0DGX8TpdVmdSREpSXn+XfSoSkH5f7YJUaq4bFHu6BlBIuG0iTi/MJVcaGZYektVz0WVadgvGWBTOyG5Kc2iZL8RUnwM0b5JNCeloqBF0VhKX+Z07eTvXR9/Mr1bZQMqur3BAJUfAaHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PdXUAwj2k32oz7J6tDjscgjr750kjp+gXyV/CpvQsKo=;
 b=bV6gH9Li5i+gwtodRbeANtYlgy83VkLUv83FczI7K7OB4TqyJ5+PyoX9V+x3ozBKg3kgK1DQx67U6hPtSAmlWC0PEZKHL+OvoW/+q9MOFHN45wJj5+CKcQ6pRO/kiHZ/ADn7G9LwTH8bKEqGFMiiPkJ6NriamaF51xUZuM9PmPSpJE1bfWD6YeC0htfS7S2rPCjQJ1q746sZ6iEolU/RhI6vEyCqtpoRi7lTcIZNFNoChArBf4c2AO1cvJVXaTcaqMVWXWZ57ezGJnDXdixAEiIlM7HEiOXT0oHdj2yk7y5xBrTNW6kXzhk21r+RsEefO+/aeMDjZmk3Tg7IzJkWlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by BN9PR11MB5228.namprd11.prod.outlook.com (2603:10b6:408:135::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.25; Tue, 27 Aug
 2024 06:25:57 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%3]) with mapi id 15.20.7897.021; Tue, 27 Aug 2024
 06:25:57 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 14/14] drm/i915/dsb: Use chained DSBs for LUT programming
Thread-Topic: [PATCH 14/14] drm/i915/dsb: Use chained DSBs for LUT programming
Thread-Index: AQHaxmpZumI1pH7kEEOpkxSF3/qDOLI7BuwQ
Date: Tue, 27 Aug 2024 06:25:57 +0000
Message-ID: <PH7PR11MB59818856E8A10BB606E6BEBCF9942@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
 <20240624191032.27333-15-ville.syrjala@linux.intel.com>
In-Reply-To: <20240624191032.27333-15-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|BN9PR11MB5228:EE_
x-ms-office365-filtering-correlation-id: 3260ebeb-69ae-4270-de9d-08dcc6611cd3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?NGoyby9kYUhzT1kxeG9Ub1VyZHlrak9IVldET2cwZ0lwZGw4MVg4bmlHUmtv?=
 =?utf-8?B?eW02K2dDMFZKWnJWZ0NpdEUyMENlV3FQSy9ueTQwdkN3VWhUemhybVltV3Yy?=
 =?utf-8?B?SjQxbzdTd3NmdGJ6VG5oQzJrV0JnbndzZk5tWVI3MUo1L01adGVzck42Wnkv?=
 =?utf-8?B?SGFsSWpSeGIvbGkxUXlFelZKTEQzMnlJbisyK0lLYnlPZ0Y4clNOdFFrMGxl?=
 =?utf-8?B?dVZhNFZMTDlJVStUd2tCaklHRWNYYWVYblJNc3VLZUROdDJiNzUvbnAwYXhR?=
 =?utf-8?B?QXVldlpoeDBLWjB2L2k4cGROYVRnRTRIVUg5amJRWGtxZlJiNTVtcWQ0cHpT?=
 =?utf-8?B?WWh4eEJXeGx1ZlNnS0dvTFpxYWdQa2c0MHQvM2xpYk5jU0NiMWhKdVFFbVNY?=
 =?utf-8?B?WWJRYlJjdlA0VFFqVWt3TXhHVHRKMkI2eXVaSnNvdlVqZ2ZrcE50cVNNVlRx?=
 =?utf-8?B?a0ZJMUdkM3NzdUw4bktxUytnekRZbjN4Nk5RR05oV1V3VUkwZWFaeDhmaUxP?=
 =?utf-8?B?ZGF2YW4vd1dmVVVyTW5jaWlFRmN3djJEazRHamVHZGNWQjhJSGRyYUxJNmdJ?=
 =?utf-8?B?TlQ4aU5WWkVGYlYyWUN2aGZSR2lLZCszeGR6dlBJeWhjaitmZmkxVjVpK2d4?=
 =?utf-8?B?T0FqcE82MjI1YjRHVE1YbmlzdGtYeVhJNGdzZkU5M3ZUMFp1QS8rK2JxWVBx?=
 =?utf-8?B?MG1iYTQzaFVwNGQxTlduUkl0bkY2M3hBT0pOTlFnK3JYckMxcnkxK3FiRnRR?=
 =?utf-8?B?L0MzSDkvMW45ME5GRklicXNGN1VzZVMwcjNzUDNZZGh3VTdVdE9jdXhiM1NY?=
 =?utf-8?B?ZTBJeEpXWkd0QXhmUnZQSUxqbENJdTZTVGpYckh0d2hkUnl5Wi94R0hXZ2xa?=
 =?utf-8?B?dUV6dWl6VTJXeElNdXBKL0o3dHVQcTVpWXBIbjQyQTVLQk9QRnJUcDFUeU9p?=
 =?utf-8?B?VExlZVJINXVXZFFEdVA2bmNsREhoVzk2dFFNdi9pTGNwZG5RTWFxQ2ZPeWlN?=
 =?utf-8?B?R2ZuTWFuQVk0bE4yak9wWDkwR09UKzJkU0U3ZHFEWFcveFlkZkFraXlKdEh0?=
 =?utf-8?B?MTJwMXJqOHBBVGU0WTV6NFlUcVpUc2xHTUJJaVFJdVN6Z2thbXRTMU5rZ01M?=
 =?utf-8?B?UnRwYW9OWTRVNGRIcFRqZ2lDMkRnUFl5U0R5SlBON25IMFBVeFpkR0gvRnN6?=
 =?utf-8?B?a3R6ME8wOStyWFNpTU9rYmNiZ0tZQ05TanV0NGwwbGtHd0Z6ZEhKQ2M0SWFD?=
 =?utf-8?B?ejRxSHlqY1o5OXY1cmhYMUwwZWo2QlJ0K294ejlXY3c3LzFjWVZrZVZoUTBp?=
 =?utf-8?B?K3BoNnpYeWhlek1MeEVMblQxUDN4UXBiS0F4d1F6ZjMrUm1UWU8zL1dQd3hP?=
 =?utf-8?B?bVNvN3JsUDhCUmxTcFFEZTRsaXVOMFlZK3RLSG1HcW9sS0wyVnB4MWZmS25x?=
 =?utf-8?B?SmszU2N5dW4wRVhoQ0Z5RzYyMGtIc0NXOTE0YUNjODVtd1h0bEpMeDFVZG1O?=
 =?utf-8?B?TFZaNGUwNkI2OVlDT2RkYU9lcHAyYjJuU09raDdsRklUZXMvWGdzQkRwOFFW?=
 =?utf-8?B?MDh3MEpDdFBVaG5KZ1hwQzNwdWZrak9WMldNQ3JSblU1MEYxN0VTanBTN2cy?=
 =?utf-8?B?cytXQ3I3eGtudEZnMzBDV0J4U0hlOUdXSi9zUGVqZ0RVRzBxRGx2a1c2dlF3?=
 =?utf-8?B?LzJZaUhJR3lrWEN2K2NwVThGL0dsd25tVFZYY1BsVE9Xa3FsTE5oZUw2dWVK?=
 =?utf-8?B?dDBEeVFXcG1GSHFFVC9jd2pRdEk5U3VIZHJMbFp5bVRYWnlySmw2YmtFRDJN?=
 =?utf-8?B?NnJ1cEtsYytMVUNWOGFNWXUyY01YTnFLdFd3WWlEWE14T25aRktxWENjU0VT?=
 =?utf-8?B?Nzc3OHJmS093eEk2c3RwcldabkRmZ05Fa3BxOHY0czQxbHc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TDNTZVlxR2o0a2plYnhENHgvYjUrdi9qOWZwZEMxd3UraFhIYnNYcGxCVnJ5?=
 =?utf-8?B?Y0FLYkVReGgyanY5c1F2OGc4V051eHJkMHMvQi9TOGF3b3FNOE40QmFWRGR5?=
 =?utf-8?B?bm9nMnJROGJrUjJobVFLTGt6ditsQjJ4YzFCRnhBaG1XWlArbE0zYkVyYmk5?=
 =?utf-8?B?OGlaUG8yanNxYmxMZ0JvMk5DaGlDdWR1U1liZ1RweGpXSTZQU09weWFSR1px?=
 =?utf-8?B?eGozR2pmVEo3OWZPTUllWFNTM3VUM2hjMFlMWlhKMXJaSXZ3cjNYRS9oMXlq?=
 =?utf-8?B?M2RzeFRjUmJTRW8xdUZuMkhRRzRkaFlJaVVuYXQ3NTBlY0pmY3lLMjNKakFa?=
 =?utf-8?B?bzNrRzBNcDZobGpwNlI5Z3pubzkxendsdm9xNEcvOHplckFGbXdYN3F3SEds?=
 =?utf-8?B?TTlObXVwNVBvejJmOEczMHlPUGdnL0tlSWRiMVJPekMvRDVSOUF3RklMTWt0?=
 =?utf-8?B?YjUzWTkwK2E5TDF0UzRiTW1haE9MSUllY3BxSW5GQ1lnQllvVE5kc2UvM3Bk?=
 =?utf-8?B?dVd1bXp3bUVzdHpFc1AvREo1WnI1YTlrRVExNFFJdnhTRU9xZGtDOU0xR0tI?=
 =?utf-8?B?eVp4RjRodWhmYlZ3cUl1TWhHcy9WbG93b1d5cFAvUFNyNlJYbmhTeXluOTdq?=
 =?utf-8?B?YlZ6bzdSdExIYnhGSzY4UTdWQ21jVzZQVHRjbFJ5em1LdWtZb3dtdTVrOTdi?=
 =?utf-8?B?YkY0Mnk3OCt2WFBTYkpLWlZPV3NrSm1hYmhzeDBjellsZ3JScEQ5T2lDUFJZ?=
 =?utf-8?B?NDBFaDJxQUlWM2YvTlF6L2RZSUVBWTBKNlcreEdBYVV6RXRKcjcyaGF2cnd1?=
 =?utf-8?B?Y2hubmRQTklrbzdobUlyU1MrVDZiSXlaOVFBMEZMb251disvZUN4RE1CMkll?=
 =?utf-8?B?QjZXbTA3THFFOTkxbkVKbnN2bDI1anZyVko1dXU3cUIwMWVrTVkrMlFmalkw?=
 =?utf-8?B?dFpYdXllT2xUVGpiazdGQ1UwMGY4LzFrTTZhVFZMTC84QlBzQXdsdkNscGtq?=
 =?utf-8?B?WCtMWTdTc3dCMHo3UHR4cGIzclhtUmtVSlNYKzEyQjZxNkkzekMvY3JRQWJh?=
 =?utf-8?B?dXR3MDBuVWY3UVBxV1llYlF6YmFOZzlwTUcrbU1pUGFmZnRDdmNhejhyREMw?=
 =?utf-8?B?TUlRWXR0WFkwQ3FJS2dKeE1WVndnVStnSUcyV3NuWWlZOGRPZCtVdjM5TEt0?=
 =?utf-8?B?TVF6bVNGN2k4STNaK1ZvWDFyWHBQLzRKaWt4bmJxNEZralF4QkxnZ0NiQU1M?=
 =?utf-8?B?UFZ3eHh5NS83VXlNM1JyVk4rZk1pelZvWG93c3ZNVkMvcnVrSHVFK0J1anlD?=
 =?utf-8?B?VmNhS2tLRlJkTWt5dkVyLy9pOTcxZGFVRVhqdkl1RWlOQS9lWFBNMldCY1p5?=
 =?utf-8?B?cWk4cVRleVdZOG5zN0xRME9OYlVVeXVRbW16Y25tSE44ektpY0NEZ3dzOHZv?=
 =?utf-8?B?a3FPbW84NDA3dDROZW9TU3R6VytPeXBvVXY0ZTFZTi9QenljdGx0OEM1bW9x?=
 =?utf-8?B?MFdNQ1pqYTMxem0zc0tHYTI0U2VTRVdUU0hpVWtNKzBrVFFML3dhcW9IZGk5?=
 =?utf-8?B?NzFCNjBlMmorcDdEK1MrSDdjaWptWjYweGlqKzU2ZkdvU1NoWXl0cEZuMC9h?=
 =?utf-8?B?RENqaGpkWmZWQ1AwaTBmbFV5N2xUT3dLSGFlbWkzSHpqeVJYU2U0UUplTUlK?=
 =?utf-8?B?WExkeG9UZjJVTDgwMC9Sb1VxMFRKMDRNTnFYcXF4c1hrL09ISC9yOVBFZmFI?=
 =?utf-8?B?VTZHb0dJZHJ2b0ZGSjRiT2hLWnI2emUrQ3hkTldadFV3N2V5emcyRlRTdkcw?=
 =?utf-8?B?cVBWYVQrZWJWMlVmbnVhSU45TzlwQ3dMcHliVEl3N2ZZcTY3NzUxdzNadGpa?=
 =?utf-8?B?SnVyTEsvSERTcnYyT1ZPaTBWTWhyQnltQXZJblZ1NmNMMkpscFQvbUE3aUZZ?=
 =?utf-8?B?eitEQTNXaGxLVHhWL0Z0c0RndEx0YkZLVDJETFFZSlYvN2dTNTNvZ0liNVV3?=
 =?utf-8?B?TnY4WUMwRko3N2xJNjBqN3ZFS1pSam1BdFo0Z1hGTHFDRmJGRjk3dHFCN1hN?=
 =?utf-8?B?KzFySzVzTjFOWjgyaVlTSXkyeWlRcDhXTFB5Y0JyUXNYZFk2Q2N5M2k5MW1x?=
 =?utf-8?Q?1h37MiP4+Bnoz9hhLASH98nRb?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3260ebeb-69ae-4270-de9d-08dcc6611cd3
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2024 06:25:57.7162 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oqzKTk4UfZrgcurZL4X8g/qXWMI1BaHbkdm3hFZQBY+R/YkhH631tSEEp2Jglf6nejrSQ4wBeNgTl9S1lt+4uA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5228
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgMjUsIDIwMjQgMTI6NDEgQU0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDE0LzE0
XSBkcm0vaTkxNS9kc2I6IFVzZSBjaGFpbmVkIERTQnMgZm9yIExVVA0KPiBwcm9ncmFtbWluZw0K
PiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gDQo+IEluIG9yZGVyIHRvIGJldHRlciBoYW5kbGUgdGhlIG5lY2Vzc2FyeSBEU0IgREV3
YWtlIHRyaWNrcyBsZXQncyBzd2l0Y2ggb3ZlciB0bw0KPiB1c2luZyBhIGNoYWluZWQgRFNCIGZv
ciB0aGUgYWN0dWFsIExVVCBwcm9ncmFtbWluZy4NCj4gVGhlIENQVSB3aWxsIHN0YXJ0ICdkc2Jf
Y29sb3JfY29tbWl0Jywgd2hpY2ggaW4gdHVybiB3aWxsIHN0YXJ0IHRoZSBjaGFpbmVkDQo+ICdk
c2JfY29sb3JfdmJsYW5rJy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBBbmltZXNoIE1h
bm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCiANCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jICAgfCAgMiArKw0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jICAgIHwgMzIgKysrKysrKysrKysrKysrLS0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgIDEg
Kw0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgIDIg
Ky0NCj4gIDQgZmlsZXMgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0
b21pYy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYw0K
PiBpbmRleCA1NWNlNzFiZTQxZWMuLjEyZDZlZDk0MDc1MSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jDQo+IEBAIC0yNzcsNiArMjc3LDcgQEAg
aW50ZWxfY3J0Y19kdXBsaWNhdGVfc3RhdGUoc3RydWN0IGRybV9jcnRjICpjcnRjKQ0KPiAgCWNy
dGNfc3RhdGUtPmZiX2JpdHMgPSAwOw0KPiAgCWNydGNfc3RhdGUtPnVwZGF0ZV9wbGFuZXMgPSAw
Ow0KPiAgCWNydGNfc3RhdGUtPmRzYl9jb2xvcl92YmxhbmsgPSBOVUxMOw0KPiArCWNydGNfc3Rh
dGUtPmRzYl9jb2xvcl9jb21taXQgPSBOVUxMOw0KPiANCj4gIAlyZXR1cm4gJmNydGNfc3RhdGUt
PnVhcGk7DQo+ICB9DQo+IEBAIC0zMTEsNiArMzEyLDcgQEAgaW50ZWxfY3J0Y19kZXN0cm95X3N0
YXRlKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSA9IHRvX2ludGVsX2NydGNfc3RhdGUoc3RhdGUpOw0KPiANCj4gIAlkcm1fV0FS
Tl9PTihjcnRjLT5kZXYsIGNydGNfc3RhdGUtPmRzYl9jb2xvcl92YmxhbmspOw0KPiArCWRybV9X
QVJOX09OKGNydGMtPmRldiwgY3J0Y19zdGF0ZS0+ZHNiX2NvbG9yX2NvbW1pdCk7DQo+IA0KPiAg
CV9fZHJtX2F0b21pY19oZWxwZXJfY3J0Y19kZXN0cm95X3N0YXRlKCZjcnRjX3N0YXRlLT51YXBp
KTsNCj4gIAlpbnRlbF9jcnRjX2ZyZWVfaHdfc3RhdGUoY3J0Y19zdGF0ZSk7DQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gaW5kZXggMjdhY2JmOTJk
NjBmLi41ZDcwMWY0ODM1MWIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY29sb3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NvbG9yLmMNCj4gQEAgLTE4OTAsOCArMTg5MCw4IEBAIHZvaWQgaW50ZWxfY29sb3Jf
Y29tbWl0X2FybShjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkN
Cj4gDQo+ICAJaTkxNS0+ZGlzcGxheS5mdW5jcy5jb2xvci0+Y29sb3JfY29tbWl0X2FybShjcnRj
X3N0YXRlKTsNCj4gDQo+IC0JaWYgKGNydGNfc3RhdGUtPmRzYl9jb2xvcl92YmxhbmspDQo+IC0J
CWludGVsX2RzYl9jb21taXQoY3J0Y19zdGF0ZS0+ZHNiX2NvbG9yX3ZibGFuaywgdHJ1ZSk7DQo+
ICsJaWYgKGNydGNfc3RhdGUtPmRzYl9jb2xvcl9jb21taXQpDQo+ICsJCWludGVsX2RzYl9jb21t
aXQoY3J0Y19zdGF0ZS0+ZHNiX2NvbG9yX2NvbW1pdCwgZmFsc2UpOw0KPiAgfQ0KPiANCj4gIHZv
aWQgaW50ZWxfY29sb3JfcG9zdF91cGRhdGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUpIEBAIC0NCj4gMTkxOSwyNiArMTkxOSw0NCBAQCB2b2lkIGludGVsX2NvbG9y
X3ByZXBhcmVfY29tbWl0KHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAg
CWlmICghY3J0Y19zdGF0ZS0+cHJlX2NzY19sdXQgJiYgIWNydGNfc3RhdGUtPnBvc3RfY3NjX2x1
dCkNCj4gIAkJcmV0dXJuOw0KPiANCj4gLQljcnRjX3N0YXRlLT5kc2JfY29sb3JfdmJsYW5rID0g
aW50ZWxfZHNiX3ByZXBhcmUoc3RhdGUsIGNydGMsDQo+IElOVEVMX0RTQl8wLCAxMDI0KTsNCj4g
KwljcnRjX3N0YXRlLT5kc2JfY29sb3JfdmJsYW5rID0gaW50ZWxfZHNiX3ByZXBhcmUoc3RhdGUs
IGNydGMsDQo+ICtJTlRFTF9EU0JfMSwgMTAyNCk7DQo+ICAJaWYgKCFjcnRjX3N0YXRlLT5kc2Jf
Y29sb3JfdmJsYW5rKQ0KPiAgCQlyZXR1cm47DQo+IA0KPiAgCWk5MTUtPmRpc3BsYXkuZnVuY3Mu
Y29sb3ItPmxvYWRfbHV0cyhjcnRjX3N0YXRlKTsNCj4gDQo+ICAJaW50ZWxfZHNiX2ZpbmlzaChj
cnRjX3N0YXRlLT5kc2JfY29sb3JfdmJsYW5rKTsNCj4gKw0KPiArCWNydGNfc3RhdGUtPmRzYl9j
b2xvcl9jb21taXQgPSBpbnRlbF9kc2JfcHJlcGFyZShzdGF0ZSwgY3J0YywNCj4gSU5URUxfRFNC
XzAsIDE2KTsNCj4gKwlpZiAoIWNydGNfc3RhdGUtPmRzYl9jb2xvcl9jb21taXQpIHsNCj4gKwkJ
aW50ZWxfZHNiX2NsZWFudXAoY3J0Y19zdGF0ZS0+ZHNiX2NvbG9yX3ZibGFuayk7DQo+ICsJCWNy
dGNfc3RhdGUtPmRzYl9jb2xvcl92YmxhbmsgPSBOVUxMOw0KPiArCQlyZXR1cm47DQo+ICsJfQ0K
PiArDQo+ICsJaW50ZWxfZHNiX2NoYWluKHN0YXRlLCBjcnRjX3N0YXRlLT5kc2JfY29sb3JfY29t
bWl0LA0KPiArCQkJY3J0Y19zdGF0ZS0+ZHNiX2NvbG9yX3ZibGFuaywgdHJ1ZSk7DQo+ICsNCj4g
KwlpbnRlbF9kc2JfZmluaXNoKGNydGNfc3RhdGUtPmRzYl9jb2xvcl9jb21taXQpOw0KPiAgfQ0K
PiANCj4gIHZvaWQgaW50ZWxfY29sb3JfY2xlYW51cF9jb21taXQoc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUpICB7DQo+IC0JaWYgKCFjcnRjX3N0YXRlLT5kc2JfY29sb3JfdmJs
YW5rKQ0KPiAtCQlyZXR1cm47DQo+ICsJaWYgKGNydGNfc3RhdGUtPmRzYl9jb2xvcl9jb21taXQp
IHsNCj4gKwkJaW50ZWxfZHNiX2NsZWFudXAoY3J0Y19zdGF0ZS0+ZHNiX2NvbG9yX2NvbW1pdCk7
DQo+ICsJCWNydGNfc3RhdGUtPmRzYl9jb2xvcl9jb21taXQgPSBOVUxMOw0KPiArCX0NCj4gDQo+
IC0JaW50ZWxfZHNiX2NsZWFudXAoY3J0Y19zdGF0ZS0+ZHNiX2NvbG9yX3ZibGFuayk7DQo+IC0J
Y3J0Y19zdGF0ZS0+ZHNiX2NvbG9yX3ZibGFuayA9IE5VTEw7DQo+ICsJaWYgKGNydGNfc3RhdGUt
PmRzYl9jb2xvcl92YmxhbmspIHsNCj4gKwkJaW50ZWxfZHNiX2NsZWFudXAoY3J0Y19zdGF0ZS0+
ZHNiX2NvbG9yX3ZibGFuayk7DQo+ICsJCWNydGNfc3RhdGUtPmRzYl9jb2xvcl92YmxhbmsgPSBO
VUxMOw0KPiArCX0NCj4gIH0NCj4gDQo+ICB2b2lkIGludGVsX2NvbG9yX3dhaXRfY29tbWl0KGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSAgew0KPiArCWlmIChjcnRj
X3N0YXRlLT5kc2JfY29sb3JfY29tbWl0KQ0KPiArCQlpbnRlbF9kc2Jfd2FpdChjcnRjX3N0YXRl
LT5kc2JfY29sb3JfY29tbWl0KTsNCj4gIAlpZiAoY3J0Y19zdGF0ZS0+ZHNiX2NvbG9yX3ZibGFu
aykNCj4gIAkJaW50ZWxfZHNiX3dhaXQoY3J0Y19zdGF0ZS0+ZHNiX2NvbG9yX3ZibGFuayk7DQo+
ICB9DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
DQo+IGluZGV4IDA1YTJhNjk0MjAwMC4uZDVlMGZhNWM3OGI1IDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtNzUxMSw2ICs3NTEx
LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2NvbW1pdF90YWlsKHN0cnVjdA0KPiBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAgCQkgKiBGSVhNRSBnZXQgcmlkIG9mIHRoaXMgZnVu
bnkgbmV3LT5vbGQgc3dhcHBpbmcNCj4gIAkJICovDQo+ICAJCW9sZF9jcnRjX3N0YXRlLT5kc2Jf
Y29sb3JfdmJsYW5rID0NCj4gZmV0Y2hfYW5kX3plcm8oJm5ld19jcnRjX3N0YXRlLT5kc2JfY29s
b3JfdmJsYW5rKTsNCj4gKwkJb2xkX2NydGNfc3RhdGUtPmRzYl9jb2xvcl9jb21taXQgPQ0KPiAr
ZmV0Y2hfYW5kX3plcm8oJm5ld19jcnRjX3N0YXRlLT5kc2JfY29sb3JfY29tbWl0KTsNCj4gIAl9
DQo+IA0KPiAgCS8qIFVuZGVycnVucyBkb24ndCBhbHdheXMgcmFpc2UgaW50ZXJydXB0cywgc28g
Y2hlY2sgbWFudWFsbHkgKi8gZGlmZg0KPiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gaW5kZXggYmQwNzljZDc3YmRhLi5mMjJkZTA0
OTVkZDcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV90eXBlcy5oDQo+IEBAIC0xMzk3LDcgKzEzOTcsNyBAQCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSB7DQo+ICAJZW51bSB0cmFuc2NvZGVyIG1zdF9tYXN0ZXJfdHJhbnNjb2RlcjsN
Cj4gDQo+ICAJLyogRm9yIERTQiBiYXNlZCBjb2xvciBMVVQgdXBkYXRlcyAqLw0KPiAtCXN0cnVj
dCBpbnRlbF9kc2IgKmRzYl9jb2xvcl92Ymxhbms7DQo+ICsJc3RydWN0IGludGVsX2RzYiAqZHNi
X2NvbG9yX3ZibGFuaywgKmRzYl9jb2xvcl9jb21taXQ7DQo+IA0KPiAgCXUzMiBwc3IyX21hbl90
cmFja19jdGw7DQo+IA0KPiAtLQ0KPiAyLjQ0LjINCg0K
