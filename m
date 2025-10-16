Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DDABE4C6D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 19:04:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0A1C10EA56;
	Thu, 16 Oct 2025 17:04:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ftd+ico8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E41B10EA56;
 Thu, 16 Oct 2025 17:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760634292; x=1792170292;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=udVbl51EaHO0ORVuC5ZXqboanYElUgaNY5kNabsLsDo=;
 b=Ftd+ico8eJR+mr5PQd2oqyI+PZwlFKg/viJVyrdV050QhRAHTM70UIt1
 PnUJGh0Zjs5P5CQLjP5j9MTabIXJSNn5Sck+TteUZZ3+AFLitBFYuJhMh
 IuMY3yF9kvKlUeSJ9eqGPCFHySLmS+POQmhknweOzNM0z6ZQXcvCgdifm
 +t4ss4A28ZhciELbhxnHzuZVwF6P6m8FcH6DkPNZ2/Cw9zusGZSdodPCf
 0NpybAwXeJzSWuGu0cdTMvXBF22zVApdTMl5ghAAstB4X4w9ElGm5+Iey
 0K+FnSTkeIRmULOvybYaWCC9lWcI9UURhnQfxHRip4hsujAWlNTWunSEE Q==;
X-CSE-ConnectionGUID: Sm+YNi1pSVqEl3yBv0Zgqg==
X-CSE-MsgGUID: /hEfbImmS2mV0Sj51FdtdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="62873030"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="62873030"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 10:04:50 -0700
X-CSE-ConnectionGUID: JM0+ehMfSemQ0+WUdjiFHA==
X-CSE-MsgGUID: 6l3Q1DyQSWSAfMNdxl7/gQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="206212037"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 10:04:50 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 10:04:50 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 10:04:50 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.54) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 10:04:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qa+Ll7JTJIrIJyAOJb6J5zQbVbTl3z5nZbwa4yHrnWD9h04i8fH0Mr5CM43e4gJs7jVP2mxwknuY0X90fD/V4/jLqhV0ICjV/2l5XhzBfzDJn/lBqCZj5DL9tDtDSWtjc0Do3LgXOHPSseoKX7e/eImzmKyENpZX+oIOVngjuqX3nykuZtmwFQXJhtnLz86sFsAO3RR7G/2Dg4tdOQVk4SEHuqI0nEo/YfivfAoW0UpWgIW3zWC6S50zdP4Yp9qiyoZUEyTC30o8mqdjL/1ivFhTrlvrt34GwT8Av/7HDSTNguGV8W5cF42c0JX9fMJrIMvrKsWbFTJsth6RlR1Erw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=udVbl51EaHO0ORVuC5ZXqboanYElUgaNY5kNabsLsDo=;
 b=yN+91ygVRJoU3V/2kNS7lBhOJXHQdvm6U67qy/BoNWKHCDfhuQl4AoULRI/ge/eLF1+fEd2dLZPE+x5F6whB3ZPhAzCFA9zSEpSJtrI3yTf9ag0lg6V8ukAozourxAQ7f+k4sqgUYdxEzjIPUSYFS/vsAj2F8Xm6h1Nsj4FEGJoMj7y+WYYmJgmU031TpEQOAPtKlXNRG8V57iI1DXIXtzPm5cYkTBLF7GIuaOcj+fGYlSrt14MlgBuHbpdcAP1axdiPXZeNqmOIF6j0lvPtLiBh2Q/0QBcbV4vZ3LZodXYY9zPoe1IEANWwqv9UTpByNRAtDag+s2WlAsa9ZV8thg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB7058.namprd11.prod.outlook.com (2603:10b6:930:52::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9228.10; Thu, 16 Oct 2025 17:04:47 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9228.010; Thu, 16 Oct 2025
 17:04:47 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH v2 6/7] drm/i915/dp_mst: Recompute all MST link CRTCs if
 DSC gets enabled on the link
Thread-Topic: [PATCH v2 6/7] drm/i915/dp_mst: Recompute all MST link CRTCs if
 DSC gets enabled on the link
Thread-Index: AQHcPfCRqqXrjGzMm0+DFwSDfLVVHrTFAhCA
Date: Thu, 16 Oct 2025 17:04:46 +0000
Message-ID: <c04fcdb63906c5207359d6b0bbb74e0b4e7ae336.camel@intel.com>
References: <20251015161934.262108-1-imre.deak@intel.com>
 <20251015161934.262108-7-imre.deak@intel.com>
In-Reply-To: <20251015161934.262108-7-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB7058:EE_
x-ms-office365-filtering-correlation-id: 9e8cc08a-5fe5-4e70-2105-08de0cd61c49
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|10070799003|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?WDUxWWY1VEdySlRtTzZhWFNNTUhheXpYOEJVWmxTNDhUeTI2ZzR0ZnZmbzlM?=
 =?utf-8?B?eWd0ekIyVTcwWHREbTdkaWRWT1pSRjA3SmlOL3MzQ3lZc3JLYmRTRXhTbmlt?=
 =?utf-8?B?L0xXVnBGK1YrZHhYeWpqVWkzTzByUXRvSmxKTU9ienBUZnMvQzBJZEJweU14?=
 =?utf-8?B?VTlaNElOeTVEZDZpeFBFQlgrYUFUMVhGaElMcnJncUhqaDNVb3FWdUxQV0da?=
 =?utf-8?B?ZWZYMCtWR3d6dG9CQzZ3MmZyT0Z5UnJGWkpZczVFUVVFc3hPTGN0MW91NjRr?=
 =?utf-8?B?SklnbFVzOE1tYTIxUlplTUxuN0tkMXhEa3ZHSU9VZlpMK3dNa1hPTEc1eE1s?=
 =?utf-8?B?NWRXUkhFWS9DTFpTSmF0THJxWjZYaUhaQVRrQ051WDkxTm9xd1V6ZldwU1Fl?=
 =?utf-8?B?bzNzc0VmU1NMZjBFV0pFYXZndkJXN0RSNmdJT2sxV1NvQTZPYkJzaEVocW44?=
 =?utf-8?B?c1YrR2ZUendSTEtEN2pNbW1xdUNidFgyRWpLbld0ZkNXdTlXTjg0cGNyelVp?=
 =?utf-8?B?MGxYK0pBSnprL1JQbFQvZDhjcmZneTZnNzBxbUdCVTV6S3AxRTZYWVJHTHlw?=
 =?utf-8?B?cEVsajhmY3Blc0UwQXF2L0w5Tk9IZGJMeHNoT0RjcUJHUitKWDlYMk13bG5K?=
 =?utf-8?B?T0dLTnN4WURCQk4zRlFTZHlheUhpNjBMM1RwTlpJalV2S3hDNDdrR1puZHFN?=
 =?utf-8?B?OU5IbDYrMG9iRUovYlE3SU5iL3lUTmZGcmU5R1VjV2lVYStBVTREVlVzM29G?=
 =?utf-8?B?YkI5enRQeGswb0xWa2cyY1czdkNzdEU3WXdNQjNRVGR1dWdHaE54ZWRxb3hK?=
 =?utf-8?B?dWRtSkdCUXdtZWdLNHBxZy8rMlpJREVra0xOam91bUo4ckdVckpEMjVQRlJ5?=
 =?utf-8?B?bUlLU0hyREVOb01xQmtZZlI3YTFISmNnTEF3bUVhRDhMSmFkOHZHWDRUUkUv?=
 =?utf-8?B?N0NySExUSXdHVjlkV21iMjl0ZGg2ZEU5dWtCOUdlV2k1Y0NRTmoxTlREZk8v?=
 =?utf-8?B?bzAraGU4RTR1c2NXL1hqZEJlaDByQ1d2UHR4dmVJNVVCaXUxeWhoU0tlMHlq?=
 =?utf-8?B?bE0zNjYvUnFXb1ZiZE50NjNlV2ZQY0ZlaVQ2cTBWSkFBWnVOYldld3Aya3pF?=
 =?utf-8?B?bnNMQ2dRN1JCcnRlMWpTVHYvTTlOZjBXQlVQN0w1YUtRSHBLcUxkZVNJL3Iy?=
 =?utf-8?B?aENhelp5MWs2L3pwSzdBc2NERE0wUGxneURBY1dqdDg5azdRTklKZGRpK0xT?=
 =?utf-8?B?ZXAzTDlQYWx5YXZwOGJ0U3BFZ1FmM2lEb2t0emlta1BMZXpnWEdsZktkL3Ur?=
 =?utf-8?B?dGtNczBEdHFYVVJwaGFqZ1hZVHMyRjFxRHhaRzE2M3J3ZlFDMlAveWY5cE5R?=
 =?utf-8?B?Y0ViVUJWd2IvTXMwaEU5YVI4U1J1OUw4aUc4Z2c2MjQrekx6M1JYWjNUVU9O?=
 =?utf-8?B?dmRqblQvSkljVkZPYnpmcll6MGY5aFVrYis1WElKcmZVRHcwQWdMNC8wNCtj?=
 =?utf-8?B?aXBwalVWT3hzc1MrUGw0NmpzaURKVWFUOGdsUW1nOEIzQkUzTkRqbHZvS1lQ?=
 =?utf-8?B?SXo0NnA4Z3cvSkpRR2JGUVFoRXFHeHZnQUhRVWwyM0NFd1JmaURMSkY5cG81?=
 =?utf-8?B?MmgvdUF5NlBWOFBIZ0ZQTkdmaUZoNzFsbzJKdWxmNGk3RkYxclJDQTZjM1pa?=
 =?utf-8?B?ZmI0L0U4d3BvdHQ0ck9EZk1zVTVod3ZxMkhBdU1nS2VTZUlsTk5MV0hTZ2ZQ?=
 =?utf-8?B?RHhWeVdFNXl0VWNVU3Q4dEZxVWcydE1OcnBQWnh3L3dzdXRWSENlOVVIb2JM?=
 =?utf-8?B?c2UweVNUU0VLUnNjYmxlaE9hdHJwZ3RCa0Z2YXNNZTVqZnpYMDJVUjM4aE1k?=
 =?utf-8?B?eGl6bnVDTklUWTFsQWJMQnkwWndlZ2cxZmRIZEdlbEk0Ni9MZndzdTZqcjAz?=
 =?utf-8?B?WlJOS1JDSStpdGhPV0haOEloN1ljOVBaUE5LcFBYNmNZOXBwYUtQWnNOZzZV?=
 =?utf-8?B?S1VUMEh1ZVdhemdzaGJlaWVEQ2tHYXJqUG5hT3Q0S2I3YmhWTEw1SWI5OE1y?=
 =?utf-8?Q?LEauPt?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b2pZTDlyWnZQUmZrQ0k5ZktxL0ZhMC9rOTFUbzl3VFZuQUVTejVnRUhraERW?=
 =?utf-8?B?ZW1sdURMK2FhcGlRUHQwNnljSjlTQm9OOEErbDNjUERSZHAra0Z3K1VJOTBq?=
 =?utf-8?B?dFpNT2cvcldBeWhqYUJ4VUtzS1h5YzBwWkFocDVva3VQdjJhZlF1cXNFRWFx?=
 =?utf-8?B?L3JFQ1Z5bnZXb0V5OHk5QVVFelo3VW5BTk1rQmt3M2Vuc1ZiOUVzWHJZWEZS?=
 =?utf-8?B?NExXTHdEdko0NXBCVjliUUxoMDhKM3hBbGh6NFNzMVBiUktFQkN5TE5HaE92?=
 =?utf-8?B?RTNnMkxoSDNKTWJwcmdpSFhFZ2I5YU12bHlBM0g3elRUMTFQZ1R3WFlZcUhm?=
 =?utf-8?B?MHNDVG5JUnJzMzVIU05CWmE3TVpZNFVvTHdqdkFnL0hrZlpUWFhBQWdrdUxm?=
 =?utf-8?B?cy9saEJ3NTJCTXE4dXozcForTmZQMUhJSEJtM3djRmkwTUlJSEZWQ2c4MnVt?=
 =?utf-8?B?eWc0UEtUeXphdjM4ckVZK1c1ZXl0b1QzTlVHTkI1eTJTK21RV1FxWEtiTVRx?=
 =?utf-8?B?Q1BGZjBibGRJWHJNN05GTkF6bnNaQUNKSmpYYnl6R0htWkVNeGVxdjZjUUNi?=
 =?utf-8?B?bjgwdTFHVnliMlIzNDA5ZWJBK3BEMCttUHIyT2lPN3dwZFNONlJnTG5mTGgw?=
 =?utf-8?B?UU9OeE5pdnB0dUkvMjY5dGx4elc5d0NLdnI1MmJ1aUJqcUp5dDJoV2dJYUR6?=
 =?utf-8?B?Und6cDlDanVUOUoxeTFLV3B3K1I0WEhkWlg1UTNmSXI0NXp1Vk0rQjJWQTd6?=
 =?utf-8?B?eEJDdFRnUkptL0k5ZkF5cmlpQnJDTG4xc3ZxTEhoU2N5SHhLaWp5N1NUVmFr?=
 =?utf-8?B?SDliNzlQcHRwLzR6T2lCell3RE5KSXZuT29XcjJzN1E5WnBBd2sxcWM0TDJK?=
 =?utf-8?B?WTZlM0ZidmZXaDhaZUF2dFFGUTV5MGNndmQ0THcvTHcra1NJdkxrNzFHbHBZ?=
 =?utf-8?B?bVZqUUhHRDBWNERZZnFKS2xIWWJOejY5dVE1bFZ1M3NqK0xlcHJ1N3FLNHIz?=
 =?utf-8?B?UjJBZThKbXcvbzFPTmIwY05oUytuN1gzRnRYSXdnM1p2ci9aQ1VIUWFlLys0?=
 =?utf-8?B?Wms3LzdoOWtiSFZVeGR0aUlWZlhUUHBHRjNOQlNXRnB1NHNkVHVrSkZuNXNw?=
 =?utf-8?B?a0lCLzNiR29lcUQzL1FMdHJ3VmxWZlNVei83N0xWdFN4RGdGZG5GcEN5RGxz?=
 =?utf-8?B?bTRDY3VBczdDbjJyc1VlT0NFN2h5bEhzWTRQbUJESE11OWc0WjNlTWhMUDc2?=
 =?utf-8?B?ZGwrZDdDUXAzQ3UyTXNsTEpXYUNOeGI4RFpNazk4MDh3cDhsck9xdVpYaGJq?=
 =?utf-8?B?VzBScFk3aDZzOG9xWUp6RnBaN1BVVWQ0RUpFTW5sdE9NVEs1Wm9hNlJrbk82?=
 =?utf-8?B?THlDdDlucGMrM09Qa1BGOEFHRGprSTQ1NkJ0THhDb3h0bHduUUZzbEJVdGtO?=
 =?utf-8?B?R3FmT0p2MkZXZDhwUWJnaVBwME1ERG0rMkdQNlRET1FrRGRRVE5NcGxueFNU?=
 =?utf-8?B?bDdLWkpQckVlVzNNNnprR1Y2eGVvZERDNTkveksrZm1VcXBra0cwM2tyMFh0?=
 =?utf-8?B?WHJVZjI1Z1hSaTU5T0l6YzJqdnBkQytBSjdiZStTN3JQbnlydmdTSGp3SWht?=
 =?utf-8?B?Z051enYrcjBrY0RocUJRQjlkcWdmUjVjbnlJZUwyQ1NsTXJnRDhzeGVPampp?=
 =?utf-8?B?b2FvVmZnaFl1YzZTa1liNmZpakpvNmJwVHVkSTBiaUFRU1F4Snd6dVMyN1NN?=
 =?utf-8?B?ZmRzeFczaDViQzlGT2NYckJjdTRzYUZvQnU5U0lGM2ZRQ2lyL09DT0RjTGxp?=
 =?utf-8?B?UlpLSzg5U3IrRjBvVFFmeEVFVVh0MnVHZ0lDSCtYbGliZTdha3l1MVpoTTdy?=
 =?utf-8?B?MG1rajNYUkZQUFIybnZHcHc4NWpiVzRHb1ZrNmNJNVRFb3ZodGV3SXhSL1dG?=
 =?utf-8?B?emYwZFBzRnhaR0l3cUZqUVVBVkdma2tkWXdVa1B5d1oxakRHaWN3SEFlaEhX?=
 =?utf-8?B?TS9QQWxmQ0ZPanF6RklzaEdlQ0dReENERmI2R0kyRC9OUklWaGNMV2RNYVdr?=
 =?utf-8?B?bDM0NVJEMlcxMFpZcnQySUZzM0o2TWtZQ2R2TXVPMG44aFZHYlhPdEFyV3VQ?=
 =?utf-8?B?d2Niak1keGE3NmJFUHIyVUJUS2Rmdm9OU21QSkNlL3M3NW8ycWVLeGRiUkhu?=
 =?utf-8?B?WUdTR2krYWpmZVRnZ2FkaTVlb1JnY1lGRUFQZzlmc0NiL2Z1dnp6bWhxaGZV?=
 =?utf-8?B?aTRFSVBaaHJqM2hsblJzMVJYSlh3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9CBC2C102414274BB0E4C37C281E717F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e8cc08a-5fe5-4e70-2105-08de0cd61c49
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2025 17:04:46.9903 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JiH1kfQi+lj2q3+tgFLbAmrNSDZHidf74JFPTRAIEvsz1qrMUruYMxuTS++SY2GtvSwaN15P1M10S+AqaLBzeszTWsjEtVOewJfVi7m9tIU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7058
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

T24gV2VkLCAyMDI1LTEwLTE1IGF0IDE5OjE5ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRo
ZSBzdGF0ZSBvZiBhbGwgdGhlIENSVENzIG9uIGFuIE1TVCBsaW5rIG11c3QgYmUgcmVjb21wdXRl
ZCwgaWYgRFNDDQo+IGdldHMgZW5hYmxlZCBvbiBhbnkgb2YgdGhlIENSVENzIG9uIHRoZSBsaW5r
LiBGb3IgaW5zdGFuY2UgYW4gTVNUDQo+IGRvY2tpbmcgc3RhdGlvbidzIFBhbmVsIFJlcGxheSBj
YXBhYmlsaXR5IG1heSBkZXBlbmQgb24gd2hldGhlciBEU0MNCj4gaXMNCj4gZW5hYmxlZCBvbiBh
bnkgb2YgdGhlIGRvY2sncyBzdHJlYW1zIChha2EgQ1JUQ3MpLiBUbyBhc3Npc3QgdGhlIFBhbmVs
DQo+IFJlcGxheSBzdGF0ZSBjb21wdXRhdGlvbiBmb3IgYSBDUlRDIGJhc2VkIG9uIHRoZSBhYm92
ZSwgdHJhY2sgaW4gdGhlDQo+IENSVEMgc3RhdGUgaWYgRFNDIGlzIGVuYWJsZWQgb24gYW55IENS
VEMgb24gYW4gTVNUIGxpbmsuDQo+IA0KPiBUaGUgaW50ZWxfbGlua19id19saW1pdHM6OmZvcmNl
X2ZlY19waXBlcyBtYXNrIGlzIHVzZWQgZm9yIGEgcmVhc29uDQo+IHNpbWlsYXIgdG8gdGhlIGFi
b3ZlOiBlbmFibGUgRkVDIG9uIGFsbCBDUlRDcyBvZiBhIG5vbi1VSEJSICg4YjEwYikNCj4gTVNU
DQo+IGxpbmsgaWYgRFNDIGlzIGVuYWJsZWQgb24gYW55IG9mIHRoZSBsaW5rJ3MgQ1JUQ3MuIFRo
ZSBGRUMgZW5hYmxlZA0KPiBzdGF0ZQ0KPiBmb3IgYSBDUlRDIGRvZXNuJ3QgaW5kaWNhdGUgaWYg
RFNDIGlzIGVuYWJsZWQgb24gYSBVSEJSIE1TVCBsaW5rIChGRUMNCj4gaXMNCj4gYWx3YXlzIGVu
YWJsZWQgYnkgdGhlIEhXIGZvciBVSEJSLCBoZW5jZSBpdCdzIG5vdCB0cmFja2VkIGJ5IHRoZQ0K
PiBpbnRlbF9jcnRjX3N0YXRlOjpmZWNfZW5hYmxlIGZsYWcgZm9yIHN1Y2ggbGlua3MsIHdoZXJl
IHRoaXMgZmxhZyBpcw0KPiBhbHdheXMgZmFsc2UpLg0KPiANCj4gQmFzZWQgb24gdGhlIGFib3Zl
LCB0byBiZSBhYmxlIHRvIGRldGVybWluZSB0aGUgRFNDIHN0YXRlIG9uIGJvdGgNCj4gbm9uLVVI
QlIgYW5kIFVIQlIgTVNUIGxpbmtzLCB0cmFjayB0aGUgbW9yZSBnZW5lcmljIERTQy1lbmFibGVk
LW9uLQ0KPiBsaW5rDQo+IHN0YXRlIChpbnN0ZWFkIG9mIHRoZSBGRUMtZW5hYmxlZC1vbi1saW5r
IHN0YXRlKSBmb3IgZWFjaCBDUlRDIGluDQo+IGludGVsX2xpbmtfYndfbGltaXRzLg0KPiANCj4g
U2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KDQpSZXZpZXdl
ZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCj4gLS0t
DQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfMKgIDIg
Ky0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jwqAgfCAx
NiArKysrKysrKy0tLS0tLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9saW5rX2J3LmMgfCAxNyArKysrKysrKystLS0tLS0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfbGlua19idy5oIHzCoCAyICstDQo+IMKgNCBmaWxlcyBjaGFuZ2Vk
LCAxOSBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IGQ1YjI2MTJkNGVj
MjUuLjY0YzBjZjM0YjdhZjMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC00NjAxLDcgKzQ2MDEsNyBAQCBpbnRlbF9tb2Rlc2V0
X3BpcGVfY29uZmlnKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiDCoAlp
ZiAocmV0KQ0KPiDCoAkJcmV0dXJuIHJldDsNCj4gwqANCj4gLQljcnRjX3N0YXRlLT5mZWNfZW5h
YmxlID0gbGltaXRzLT5mb3JjZV9mZWNfcGlwZXMgJiBCSVQoY3J0Yy0NCj4gPnBpcGUpOw0KPiAr
CWNydGNfc3RhdGUtPmRzYy5jb21wcmVzc2lvbl9lbmFibGVkX29uX2xpbmsgPSBsaW1pdHMtDQo+
ID5saW5rX2RzY19waXBlcyAmIEJJVChjcnRjLT5waXBlKTsNCj4gwqAJY3J0Y19zdGF0ZS0+bWF4
X2xpbmtfYnBwX3gxNiA9IGxpbWl0cy0+bWF4X2JwcF94MTZbY3J0Yy0NCj4gPnBpcGVdOw0KPiDC
oA0KPiDCoAlpZiAoY3J0Y19zdGF0ZS0+cGlwZV9icHAgPiBmeHBfcTRfdG9faW50KGNydGNfc3Rh
dGUtDQo+ID5tYXhfbGlua19icHBfeDE2KSkgew0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gaW5kZXggMGNiYjRjM2E4ZTIyZi4uYTg0NWIyNjEy
YTNmYSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9tc3QuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21z
dC5jDQo+IEBAIC04MTQsMTQgKzgxNCwxNCBAQCBzdGF0aWMgdTgNCj4gZ2V0X3BpcGVzX2Rvd25z
dHJlYW1fb2ZfbXN0X3BvcnQoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+IMKg
CXJldHVybiBtYXNrOw0KPiDCoH0NCj4gwqANCj4gLXN0YXRpYyBpbnQgaW50ZWxfZHBfbXN0X2No
ZWNrX2ZlY19jaGFuZ2Uoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZQ0KPiAqc3RhdGUsDQo+ICtz
dGF0aWMgaW50IGludGVsX2RwX21zdF9jaGVja19kc2NfY2hhbmdlKHN0cnVjdCBpbnRlbF9hdG9t
aWNfc3RhdGUNCj4gKnN0YXRlLA0KPiDCoAkJCQkJIHN0cnVjdA0KPiBkcm1fZHBfbXN0X3RvcG9s
b2d5X21nciAqbXN0X21nciwNCj4gwqAJCQkJCSBzdHJ1Y3QgaW50ZWxfbGlua19id19saW1pdHMN
Cj4gKmxpbWl0cykNCj4gwqB7DQo+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0g
dG9faW50ZWxfZGlzcGxheShzdGF0ZSk7DQo+IMKgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOw0K
PiDCoAl1OCBtc3RfcGlwZV9tYXNrOw0KPiAtCXU4IGZlY19waXBlX21hc2sgPSAwOw0KPiArCXU4
IGRzY19waXBlX21hc2sgPSAwOw0KPiDCoAlpbnQgcmV0Ow0KPiDCoA0KPiDCoAltc3RfcGlwZV9t
YXNrID0gZ2V0X3BpcGVzX2Rvd25zdHJlYW1fb2ZfbXN0X3BvcnQoc3RhdGUsDQo+IG1zdF9tZ3Is
IE5VTEwpOw0KPiBAQCAtODM0LDE2ICs4MzQsMTYgQEAgc3RhdGljIGludCBpbnRlbF9kcF9tc3Rf
Y2hlY2tfZmVjX2NoYW5nZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4g
wqAJCWlmIChkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sICFjcnRjX3N0YXRlKSkNCj4gwqAJCQly
ZXR1cm4gLUVJTlZBTDsNCj4gwqANCj4gLQkJaWYgKGNydGNfc3RhdGUtPmZlY19lbmFibGUpDQo+
IC0JCQlmZWNfcGlwZV9tYXNrIHw9IEJJVChjcnRjLT5waXBlKTsNCj4gKwkJaWYgKGludGVsX2Rz
Y19lbmFibGVkX29uX2xpbmsoY3J0Y19zdGF0ZSkpDQo+ICsJCQlkc2NfcGlwZV9tYXNrIHw9IEJJ
VChjcnRjLT5waXBlKTsNCj4gwqAJfQ0KPiDCoA0KPiAtCWlmICghZmVjX3BpcGVfbWFzayB8fCBt
c3RfcGlwZV9tYXNrID09IGZlY19waXBlX21hc2spDQo+ICsJaWYgKCFkc2NfcGlwZV9tYXNrIHx8
IG1zdF9waXBlX21hc2sgPT0gZHNjX3BpcGVfbWFzaykNCj4gwqAJCXJldHVybiAwOw0KPiDCoA0K
PiAtCWxpbWl0cy0+Zm9yY2VfZmVjX3BpcGVzIHw9IG1zdF9waXBlX21hc2s7DQo+ICsJbGltaXRz
LT5saW5rX2RzY19waXBlcyB8PSBtc3RfcGlwZV9tYXNrOw0KPiDCoA0KPiAtCXJldCA9IGludGVs
X21vZGVzZXRfcGlwZXNfaW5fbWFza19lYXJseShzdGF0ZSwgIk1TVCBGRUMiLA0KPiArCXJldCA9
IGludGVsX21vZGVzZXRfcGlwZXNfaW5fbWFza19lYXJseShzdGF0ZSwgIk1TVCBEU0MiLA0KPiDC
oAkJCQkJCW1zdF9waXBlX21hc2spOw0KPiDCoA0KPiDCoAlyZXR1cm4gcmV0ID8gOiAtRUFHQUlO
Ow0KPiBAQCAtODk3LDcgKzg5Nyw3IEBAIGludCBpbnRlbF9kcF9tc3RfYXRvbWljX2NoZWNrX2xp
bmsoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+IMKgCWludCBpOw0KPiDC
oA0KPiDCoAlmb3JfZWFjaF9uZXdfbXN0X21ncl9pbl9zdGF0ZSgmc3RhdGUtPmJhc2UsIG1nciwg
bXN0X3N0YXRlLA0KPiBpKSB7DQo+IC0JCXJldCA9IGludGVsX2RwX21zdF9jaGVja19mZWNfY2hh
bmdlKHN0YXRlLCBtZ3IsDQo+IGxpbWl0cyk7DQo+ICsJCXJldCA9IGludGVsX2RwX21zdF9jaGVj
a19kc2NfY2hhbmdlKHN0YXRlLCBtZ3IsDQo+IGxpbWl0cyk7DQo+IMKgCQlpZiAocmV0KQ0KPiDC
oAkJCXJldHVybiByZXQ7DQo+IMKgDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2xpbmtfYncuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfbGlua19idy5jDQo+IGluZGV4IGY1MmRlZTBlYTQxMmYuLmQyODYyZGU4OTRmYTcg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbGlua19i
dy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbGlua19idy5j
DQo+IEBAIC0yMCw2ICsyMCw3IEBADQo+IMKgI2luY2x1ZGUgImludGVsX2RwX3R1bm5lbC5oIg0K
PiDCoCNpbmNsdWRlICJpbnRlbF9mZGkuaCINCj4gwqAjaW5jbHVkZSAiaW50ZWxfbGlua19idy5o
Ig0KPiArI2luY2x1ZGUgImludGVsX3Zkc2MuaCINCj4gwqANCj4gwqBzdGF0aWMgaW50IGdldF9m
b3JjZWRfbGlua19icHBfeDE2KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiDC
oAkJCQnCoMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiBAQCAtNTUsNyArNTYs
NyBAQCB2b2lkIGludGVsX2xpbmtfYndfaW5pdF9saW1pdHMoc3RydWN0DQo+IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsDQo+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9f
aW50ZWxfZGlzcGxheShzdGF0ZSk7DQo+IMKgCWVudW0gcGlwZSBwaXBlOw0KPiDCoA0KPiAtCWxp
bWl0cy0+Zm9yY2VfZmVjX3BpcGVzID0gMDsNCj4gKwlsaW1pdHMtPmxpbmtfZHNjX3BpcGVzID0g
MDsNCj4gwqAJbGltaXRzLT5icHBfbGltaXRfcmVhY2hlZF9waXBlcyA9IDA7DQo+IMKgCWZvcl9l
YWNoX3BpcGUoZGlzcGxheSwgcGlwZSkgew0KPiDCoAkJc3RydWN0IGludGVsX2NydGMgKmNydGMg
PQ0KPiBpbnRlbF9jcnRjX2Zvcl9waXBlKGRpc3BsYXksIHBpcGUpOw0KPiBAQCAtNjUsOCArNjYs
OCBAQCB2b2lkIGludGVsX2xpbmtfYndfaW5pdF9saW1pdHMoc3RydWN0DQo+IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsDQo+IMKgDQo+IMKgCQlpZiAoc3RhdGUtPmJhc2UuZHVwbGljYXRlZCAm
JiBjcnRjX3N0YXRlKSB7DQo+IMKgCQkJbGltaXRzLT5tYXhfYnBwX3gxNltwaXBlXSA9IGNydGNf
c3RhdGUtDQo+ID5tYXhfbGlua19icHBfeDE2Ow0KPiAtCQkJaWYgKGNydGNfc3RhdGUtPmZlY19l
bmFibGUpDQo+IC0JCQkJbGltaXRzLT5mb3JjZV9mZWNfcGlwZXMgfD0NCj4gQklUKHBpcGUpOw0K
PiArCQkJaWYgKGludGVsX2RzY19lbmFibGVkX29uX2xpbmsoY3J0Y19zdGF0ZSkpDQo+ICsJCQkJ
bGltaXRzLT5saW5rX2RzY19waXBlcyB8PSBCSVQocGlwZSk7DQo+IMKgCQl9IGVsc2Ugew0KPiDC
oAkJCWxpbWl0cy0+bWF4X2JwcF94MTZbcGlwZV0gPSBJTlRfTUFYOw0KPiDCoAkJfQ0KPiBAQCAt
MjY1LDEwICsyNjYsMTAgQEAgYXNzZXJ0X2xpbmtfbGltaXRfY2hhbmdlX3ZhbGlkKHN0cnVjdA0K
PiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiDCoAlib29sIGJwcHNfY2hhbmdlZCA9IGZhbHNl
Ow0KPiDCoAllbnVtIHBpcGUgcGlwZTsNCj4gwqANCj4gLQkvKiBGRUMgY2FuJ3QgYmUgZm9yY2Vk
IG9mZiBhZnRlciBpdCB3YXMgZm9yY2VkIG9uLiAqLw0KPiArCS8qIERTQyBjYW4ndCBiZSBkaXNh
YmxlZCBhZnRlciBpdCB3YXMgZW5hYmxlZC4gKi8NCj4gwqAJaWYgKGRybV9XQVJOX09OKGRpc3Bs
YXktPmRybSwNCj4gLQkJCShvbGRfbGltaXRzLT5mb3JjZV9mZWNfcGlwZXMgJiBuZXdfbGltaXRz
LQ0KPiA+Zm9yY2VfZmVjX3BpcGVzKSAhPQ0KPiAtCQkJb2xkX2xpbWl0cy0+Zm9yY2VfZmVjX3Bp
cGVzKSkNCj4gKwkJCShvbGRfbGltaXRzLT5saW5rX2RzY19waXBlcyAmIG5ld19saW1pdHMtDQo+
ID5saW5rX2RzY19waXBlcykgIT0NCj4gKwkJCW9sZF9saW1pdHMtPmxpbmtfZHNjX3BpcGVzKSkN
Cj4gwqAJCXJldHVybiBmYWxzZTsNCj4gwqANCj4gwqAJZm9yX2VhY2hfcGlwZShkaXNwbGF5LCBw
aXBlKSB7DQo+IEBAIC0yODYsOCArMjg3LDggQEAgYXNzZXJ0X2xpbmtfbGltaXRfY2hhbmdlX3Zh
bGlkKHN0cnVjdA0KPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiDCoAkvKiBBdCBsZWFzdCBv
bmUgbGltaXQgbXVzdCBjaGFuZ2UuICovDQo+IMKgCWlmIChkcm1fV0FSTl9PTihkaXNwbGF5LT5k
cm0sDQo+IMKgCQkJIWJwcHNfY2hhbmdlZCAmJg0KPiAtCQkJbmV3X2xpbWl0cy0+Zm9yY2VfZmVj
X3BpcGVzID09DQo+IC0JCQlvbGRfbGltaXRzLT5mb3JjZV9mZWNfcGlwZXMpKQ0KPiArCQkJbmV3
X2xpbWl0cy0+bGlua19kc2NfcGlwZXMgPT0NCj4gKwkJCW9sZF9saW1pdHMtPmxpbmtfZHNjX3Bp
cGVzKSkNCj4gwqAJCXJldHVybiBmYWxzZTsNCj4gwqANCj4gwqAJcmV0dXJuIHRydWU7DQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xpbmtfYncuaA0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbGlua19idy5oDQo+IGluZGV4
IDk1YWI3YzUwYzYxZDAuLmNiMThlMTcxMDM3Y2YgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbGlua19idy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfbGlua19idy5oDQo+IEBAIC0xNSw3ICsxNSw3IEBAIHN0cnVj
dCBpbnRlbF9jb25uZWN0b3I7DQo+IMKgc3RydWN0IGludGVsX2NydGNfc3RhdGU7DQo+IMKgDQo+
IMKgc3RydWN0IGludGVsX2xpbmtfYndfbGltaXRzIHsNCj4gLQl1OCBmb3JjZV9mZWNfcGlwZXM7
DQo+ICsJdTggbGlua19kc2NfcGlwZXM7DQo+IMKgCXU4IGJwcF9saW1pdF9yZWFjaGVkX3BpcGVz
Ow0KPiDCoAkvKiBpbiAxLzE2IGJwcCB1bml0cyAqLw0KPiDCoAlpbnQgbWF4X2JwcF94MTZbSTkx
NV9NQVhfUElQRVNdOw0KDQo=
