Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5340A1B584
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 13:17:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D601910E963;
	Fri, 24 Jan 2025 12:17:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R+tyjkeZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1371010E954;
 Fri, 24 Jan 2025 12:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737721021; x=1769257021;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=SS6Ke4hCkgG0Z+bUqgZA70SRX0rqBj6+Iom/Stl3/W4=;
 b=R+tyjkeZlPxBpPneSybiR/O0JJbxnqiCdmtz7N7tsyhBkPIzS9X2yLgC
 fTnugzR1F1WaASbuqwIGlXptCBxpksMHWUeZx1+RmaFNzuitahUTSI/jr
 RBZl8BOHDgK/OB+3TsqKVGoIoHi03PcgNL7n0BcRYeVOR2oqRvvDt7xPe
 N7vcrOMHpTl7x0HteKGUFFU5gcX0AGRLMDfwvi4zqv9JgP8rEzDH8pKsd
 DAvWc6/EXlskixk6nLJRWurYxqMHUvZiRc9cFxOpus+KJCTSGCpgPNHti
 QV5YrFfZqUnyhLg6lCaCR7+Fu7OtNq9+SjInoNhtQyh8BrwL+psK30fut w==;
X-CSE-ConnectionGUID: +Lsbvs1rQ1aW85JaIVvKCA==
X-CSE-MsgGUID: A69/w0GQS0C9PRw+OOB44Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="49673188"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="49673188"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 04:17:00 -0800
X-CSE-ConnectionGUID: IEthgj9WRUmCJe/GbI5x5A==
X-CSE-MsgGUID: 8mxVFNt7T0GO6mF4Z6wBEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107678999"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jan 2025 04:17:00 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 24 Jan 2025 04:16:59 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 24 Jan 2025 04:16:59 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 24 Jan 2025 04:16:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nf9CTkYZbXDjRdUwD40IIxHGr84vD/3gUueDEMhh6+B8FutYHWg8uDhNJvSC+XfK0e1gWhfLg+LmbzP6OnZ6+st/1jETmDVtUjDaBB7wTBA+mTRZ7hXkFurl6W+QW0CYARM/hldBhm+pOKPYIVNFONmLyvow9eGUqmGUla3I48tvS6SbOL6KCK9WzDUxK2a/v4lT23Ww8AQLXWZy8axKja+JawSknR6QLAT/ufbXCAwTa2mZV8snwzsJPkh7PBEfhFBlt7ObneMx63MUx9qndz6Coj6FH/kZ81Jr97VwXRTiKBn5LPmPCLWYPZZVbHoSrGtXtech7hhybxmLDbcS7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SS6Ke4hCkgG0Z+bUqgZA70SRX0rqBj6+Iom/Stl3/W4=;
 b=gFMeKZ4VzpjsTk3Jgu32sIt2v39f37rc/0+N40M8a4GFIIFRhczGn0iwCDImn/FWbnkGMpyHxnyaHf5SEybDGJIqKLLaWe9oRnOl8MiRxB+QspXsMFg1cm0UVGv+R+As2Kwxt/l4Lq8t1Etrr8l0tNy8pBbwXy7EJMKfvFnGeLxCXYST4ISxHtjFq5D7VXleJSd5coMuuiij+jXF6QrQV7SAJS9z09DJwwVmq7wuSYXUd51CiB0d9c60BMwyhjlaaAApgbR+6KC/+iCIRTJpZ/HulHq++bsOF1YM+CNaieVct2nI2CRNeDkgZuyygde20yMUsw74PExQAN5fdeiZwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH8PR11MB6853.namprd11.prod.outlook.com (2603:10b6:510:22e::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.17; Fri, 24 Jan
 2025 12:16:57 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8377.009; Fri, 24 Jan 2025
 12:16:57 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v4 09/13] drm/i915/display: Don't use DSB if psr mode
 changing
Thread-Topic: [PATCH v4 09/13] drm/i915/display: Don't use DSB if psr mode
 changing
Thread-Index: AQHbbk632Su34OdA6UueN9SkZTlGELMl0JwAgAAEdACAAAIJgA==
Date: Fri, 24 Jan 2025 12:16:56 +0000
Message-ID: <fc528489a1e37dd9f853aa63bb93fd3fdfee0be2.camel@intel.com>
References: <20250124105625.822459-1-jouni.hogander@intel.com>
 <20250124105625.822459-10-jouni.hogander@intel.com>
 <Z5N_RgaVKLgHAeh2@intel.com>
 <f11a7d44d79533b0f1469277b2225b3bf1878825.camel@intel.com>
In-Reply-To: <f11a7d44d79533b0f1469277b2225b3bf1878825.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH8PR11MB6853:EE_
x-ms-office365-filtering-correlation-id: 592f2184-41cc-4e7b-09bf-08dd3c70ff11
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|376014|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?NXRQaDBCbGQyRGpPTUxvSE1xeFduajFFUy9IUXFGZkFHWE9tb1RHQkFIeE5p?=
 =?utf-8?B?LzdEYllybWRldFl2QjNjWnc3bmFkTmN1VDlzVU5rVkkzcHZGb28zbnZVd1BW?=
 =?utf-8?B?YzNNU1cxYVlRVlZ4K3QyNllDWVUxUlBNK1JVbjdPMk53aklxbXdYWnhoNWZl?=
 =?utf-8?B?NzA3b3pROEZGSGFyOElaVVN0SVNUalVTMFVlUDh5dU04TFhNUzZJNWVLNmwv?=
 =?utf-8?B?aWc0Ry9jN0VkTHY5ZjNHTUtOQVEybklLczhkN01DckJqdVc0TittclA4NC9T?=
 =?utf-8?B?WjBLQzZwMjNaY3ZRbGt6dUtBOE4rcFdLbTJGNU1ad1EweDVxTTFzdHp5OVNx?=
 =?utf-8?B?TE9BbEtlL2IwNWtpMnB2K3o1MzJ1MXU5VGEvQnVjYnVnRDJqMmR5K2crT291?=
 =?utf-8?B?Szg3Qm5Sck1zODNlTEdVSWMzS3pwS2s1Z2FnaER0a1hQTkJGYmFoMWR1akxQ?=
 =?utf-8?B?aGgvYnVxTVZNZG1CZ0pDU0c4STBRbXpXbzR2RW8zM0lmaWNpRXFmT2ZEVWFU?=
 =?utf-8?B?Smk4MHVCV2JtbXYxUUhFcGc2dDdHMmViMU9WZkJyOHd1TU1qR01ORmJqR1VD?=
 =?utf-8?B?VTdEMXRpdGl2L043OXc4djBPRUFCYVhPRVl6NGpTeHZzWk1SbHkxZEVhb0FZ?=
 =?utf-8?B?NVFYQWM0U0pEMmZ5KytjejZtbzBwSU9nWUZLQ3ppcEVhMG9yby9nbTc1RlBR?=
 =?utf-8?B?UmVpb01sYWhLQlYrSWNibXdTR2hscjhSeGxuQjN0T3B6VzJrMVBDUDYrQkRq?=
 =?utf-8?B?bDNCM3loVkxsdmg5ZkpsUG5EcDZCamlpY2FFbTJYSVVoMm5jS2lUSVVNVzRS?=
 =?utf-8?B?MHhEclNRa2FEeDlFcUhXVjJRc0Y4WDY4eUlUaUJxS0tobWRRSWRWY3hMdlEy?=
 =?utf-8?B?bEc4cjBNUklRUSsxaFhFMWo0U0RPVkNuY3g1bVBEV0VkNHNyYTZwZFV0ekFm?=
 =?utf-8?B?d1IxeDVlckJZZnVZN1VBS0ovRVV6akhMYkpxdUJUVUJTZDQ3N0xkSWtnZDNV?=
 =?utf-8?B?aHNSV1RSanJ2dUtjakt3UXNSeS9nTHg5UXdPTFRsRXgzUytOVEMzeVFVc2w5?=
 =?utf-8?B?VXljamw0T1VLWEx1NmJ5MzRrVkF0YVpKVm53ckIzUWJsSGJHT0J6Z2lobVRY?=
 =?utf-8?B?L1dQM0ozSUJPT0daQnNPaUFLVkdHa1lpTTg2cG5hNG1NelpuL0pPeDliemo4?=
 =?utf-8?B?anlmRUpkdDZYeGRiUEpTanhrVmNobmlGOEQ3a1ZjaElhOStjQklXbHk1bUhi?=
 =?utf-8?B?NkxMdmtqWGlGUmJSYi90dkhwd1lSbWFrdjJsSlJFMEhaa1ZKanZYN0VaYkJw?=
 =?utf-8?B?T0dtSWQ3RTVKL3c1UWVheEVzNHlQSTdWWXBmaGFWeFprUStqY1MwUWQ3MEM3?=
 =?utf-8?B?RWVnc2taakVJL0x6MmZIdXFLOFNkTGhUTkZXMFNWTlMzZC96M0ZKclhISHdH?=
 =?utf-8?B?N0g4ZmRlV1ZYcnRIQ1VZQnZ0M0pOKzVhZndaTWlvVnl4anQwQW1vMUVHSzhD?=
 =?utf-8?B?RC9zQm5pZ2RmOVMvbkpTSVlJY1lxbHp1TVJoL2tDQ01ET1NiOS81ZFQxNUNR?=
 =?utf-8?B?QjZIY2s0QnMvUmJ1NHNhNGJaKytvUC9xaUxXaFdWTllzOVJ6aFlvQ2I3UFNG?=
 =?utf-8?B?Z1M4bnU1VFpoZGlEeVhjSDR2ZTFKaEQ2NlR3bEpBZmFTb095UzVJWHUyaHpZ?=
 =?utf-8?B?SHlaMWRmY09XSDJzUW9Mb3ZrcmptMk82Tm5aMEx1cjkwd3hwMGxGS2laRmVo?=
 =?utf-8?B?WlU3dEl6ZVEzQWxCNGUrM0tqQzk1WStTaUdkK0Y1MzJRM2lVam8zeXU2RTN1?=
 =?utf-8?B?Y0pTL2Z3c3EwbnJSRWRoQ001dGdKRUpJK3pQWnhHRGtkYy83OExBdHlxb2Ns?=
 =?utf-8?B?aWlRZjZvT2FFVFo0R0ZBRVJhL2V5RG44QjBMVkhLK2QwNDR5TTNKbmhOYlh6?=
 =?utf-8?Q?HDMLIzBJ5Ci2Eo00BUt6V7Ou1RRl9AB6?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(376014)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L1B2QThLejB2TU5vQllRVStlN0FZNVg0QkQvVCt6OVZnWnNVWklaeUJVa1RC?=
 =?utf-8?B?a3hibkVXRWI2WXA3ZjYwNjNPMUNFck5KRGRpbUVPMVVsOExwaVkzc1BmTUll?=
 =?utf-8?B?UExENE0yejIwbEY3MVVaVG1iSWRPSTVxTFFya1RDRUZiSXZGQTNiY3JPVk5p?=
 =?utf-8?B?UXFZVWNRbnhUby9ZOFN0WitJYWpkSFZrZnNOTStkTEFQMmdQZ3hiUGM0RGZR?=
 =?utf-8?B?MmNXeGdqdTBZQXRqZnp2eWwvS0Z3TDRFdFI2OGRBUjBBcEhKYjRhRUNoV1VU?=
 =?utf-8?B?QXlyZ3pES3ZvSVpabG9IVWREOExKY1UzN3dSNVVrMXd4My9oZllWblNWVkhl?=
 =?utf-8?B?aXcwcmhSYzJkSVVLL1JaU1JMKy9US0NhdUtuQjZ6OVhmbEkxcnBTY2lLNnJY?=
 =?utf-8?B?RFNvWVBjSjdaOGNOeVBEVERGS29XQjkxNmZuT2lMMklidktzMmhrYzZQZHVT?=
 =?utf-8?B?LzE1SmFrUCs1cUF4R0hRTGs1YlZkSjNsV0R4N2U2eVhsOFF3YTU1MXdwWnA0?=
 =?utf-8?B?ZVM4Zzlyc3I4UEx4R0RBTlg0Y1d4MlQwRjFtUjFRQXR6bDZYUmZzbkJydjJn?=
 =?utf-8?B?ckpER05rWlE0dk5BQ3RQTFJreDAzRUcvbTM4eDBNWXE3bTlhMEpyR3ZpWGox?=
 =?utf-8?B?L0JRYVRZY3FhblVtZk1valltUWZ5bStWU0t1d3lxWWZoeU1wZ0pzNHV5cVgw?=
 =?utf-8?B?bVhuc0FpWGczT09rNEhQUHVia29kRUR2SXFxUU5BUExncFo3V05kSytyQ1R5?=
 =?utf-8?B?SjBJS1lLQnNOUEtxbTVadHR6QkFpRkFGbHc3U3Z6ZXUySllMUXIya0oweXhT?=
 =?utf-8?B?YkFtd244elRUaVZhNDAxRkN5Ym5LcTJVd2paUlVFY1dUck5VaTJaQUhvQ3R5?=
 =?utf-8?B?Kzc2ZnY0YitmQ1VFd05QSTV1QnR4QVdONXVWV3Bob0loNS84ZlAzTzIzQlYv?=
 =?utf-8?B?MndibnlLTnYvOThubVVjYmFlT3pudndnaXZSYm04NmgvNUFkZzVXS1Y3dDFt?=
 =?utf-8?B?a0pkYU5wcmQ3NHFFdGl0NUREM1VrbXl5YkdienVmaFYxZHMxcUJhRTVxRjV5?=
 =?utf-8?B?bGVNQmdDZ3JzZkdOcnQzNDBXaHI3ekVPdDZ5Z2RleThSdFVLQTV0QXJEOHhJ?=
 =?utf-8?B?NlZFNUZjOGM1R2YwYWpzbDBISWNwUnBTSzFoQmZlTE9XVEV6YnFyWVRzOEVo?=
 =?utf-8?B?cEd2dHJ5U3NnZTBFQTY4NlFzb1FHckJ6TTZTc3VibXRQYkNRTzJhUVBYS0lj?=
 =?utf-8?B?QnZjSDJ3UEJpYm9YRUJKN01PTjFVcVNrSUQyWGlaNUw5djJRbXc4WDdMd2U1?=
 =?utf-8?B?Z1FoeHNIS0ljNkVXQW8zSjgyM0I4ZUFFZUdZOFBJWThNY0t1NVh2dVZvblRJ?=
 =?utf-8?B?WGpYTzFGT0dSRC9tL2EvZ09iRFdnUUFaZG5ubE1maHQxTFRUN3lvTUtmUk9J?=
 =?utf-8?B?TmJBbG5tRlJBUldJdlZUVktqZFZZS1ZLaWVnSHZPRFRHR2M3TUR3ZFMxR2lo?=
 =?utf-8?B?QU0zTGRNTHdsTFJpYkNmSFlmWVhsSGxRNTFBWk9IV0doWFZUZDcwUnVURVpq?=
 =?utf-8?B?ZE5wQWVHNnpGVGFRSWx5dHVyWWl2SlRIQjloaEJHTnBvU0c2cGlaeGpXdVBt?=
 =?utf-8?B?QkZqOGJJZTNGRkZwL0VNVlRqdGxhcFpReEVMemhJSWhBYXluZ0xGTlI3VlV5?=
 =?utf-8?B?d1JMREYxcTgzTyt5RlV0M0F4dlhvdGkydlNmaUF1S0xocVU4Z1MwRGI5Y2Jl?=
 =?utf-8?B?WHlsRXF6T2tpZW42RHExd3RvRWtxa3VLOVVJbFp1aWJGSWlZVENQS2twTXh3?=
 =?utf-8?B?MWVEQ29EbFE0ajY4eGlQTFp0aVphczhhR2Nwb3Z1VVRmN2ROdmdPSEZZOWdz?=
 =?utf-8?B?THdoNzNNOUNhRGVnTktad09QZDlFU3E4U09VZlBmUE1aalF3RURaNWtrd0ZB?=
 =?utf-8?B?U3c5ODNQdlhGY2hpTkMwNElKa2ZtbUVIYUJheHc0cVZRcWF5QmtWU1lpSk5p?=
 =?utf-8?B?TUt3L0Fvc2djTjBNOFhBUTMzRXYvRTlUS2w5b2NUL3RaQm14d0JaVG9yekto?=
 =?utf-8?B?bHQvNk5NcVVpa2lxY2ltL2VjNTJwSU4vUFJsZjNGRmpFbG9MMHBIWUo0RUI3?=
 =?utf-8?B?d1IxRzZsUVBxNVIvb3NtMU5hTlBGT1k0cURiUU5ST0hXSlN1dkRuUEhmZGpS?=
 =?utf-8?B?RmFrcldIZjRLR3kzeE1KYWkyRVdzWFgwcWYxbjRlWWcwU3lBRUVTS3FBakh2?=
 =?utf-8?B?N05UejVnSTV6cXloUmRaTFJPYWFnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <46BA71FF40876748A957A00976C009F4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 592f2184-41cc-4e7b-09bf-08dd3c70ff11
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2025 12:16:56.9280 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gzpnxva6sK8LjjbmOBL13wy6aQoxrGJc08HedelsgwupZRFOGraT82erE9066fg7vjEM4NMV7B4RL3jXtXNhwHHeTm8TjL2BDXA415FAPjI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6853
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

T24gRnJpLCAyMDI1LTAxLTI0IGF0IDE0OjA5ICswMjAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIEZyaSwgMjAyNS0wMS0yNCBhdCAxMzo1MyArMDIwMCwgVmlsbGUgU3lyasOkbMOkIHdy
b3RlOg0KPiA+IE9uIEZyaSwgSmFuIDI0LCAyMDI1IGF0IDEyOjU2OjIwUE0gKzAyMDAsIEpvdW5p
IEjDtmdhbmRlciB3cm90ZToNCj4gPiA+IENoYW5naW5nIFBTUiBtb2RlIHVzaW5nIERTQiBpcyBu
b3QgaW1wbGVtZW50ZWQuIERvIG5vdCB1c2UgRFNCDQo+ID4gPiB3aGVuDQo+ID4gPiBQU1INCj4g
PiA+IG1vZGUgaXMgY2hhbmdpbmcuDQo+ID4gPiANCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5p
IEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gUmV2aWV3ZWQtYnk6
IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4g
PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMyArKy0N
Cj4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0K
PiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMNCj4gPiA+IGluZGV4IDNhYzFjYzlhYzA4YTguLmExODlhYTQzN2Q5NzIgMTAw
NjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMNCj4gPiA+IEBAIC03NjgyLDcgKzc2ODIsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9t
aWNfZHNiX2ZpbmlzaChzdHJ1Y3QNCj4gPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+
ID4gPiDCoAkJIW5ld19jcnRjX3N0YXRlLT5zY2FsZXJfc3RhdGUuc2NhbGVyX3VzZXJzICYmDQo+
ID4gPiDCoAkJIW9sZF9jcnRjX3N0YXRlLT5zY2FsZXJfc3RhdGUuc2NhbGVyX3VzZXJzICYmDQo+
ID4gPiDCoAkJIWludGVsX2NydGNfbmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkgJiYNCj4g
PiA+IC0JCSFpbnRlbF9jcnRjX25lZWRzX2Zhc3RzZXQobmV3X2NydGNfc3RhdGUpOw0KPiA+ID4g
KwkJIWludGVsX2NydGNfbmVlZHNfZmFzdHNldChuZXdfY3J0Y19zdGF0ZSkgJiYNCj4gPiA+ICsJ
CSFpbnRlbF9wc3JfaXNfcHNyX21vZGVfY2hhbmdpbmcob2xkX2NydGNfc3RhdGUsDQo+ID4gPiBu
ZXdfY3J0Y19zdGF0ZSk7DQo+ID4gDQo+ID4gSG1tLiBEb2Vzbid0IGFsbCB0aGF0IGltcGx5IGEg
ZmFzdHNldCBhbnl3YXkNCj4gDQo+IFBTUi9QUiBkb2Vzbid0IGltcGx5IGZhc3RzZXQuDQo+IA0K
PiBBdCB0aGUgdGltZSBvZiBlbmFibGluZyBQU1IvUFIgY3J0Y19zdGF0ZS0+aGFzX3BzciBpcyB0
cnVlIGF0IHRoaXMNCj4gcG9pbnQsIGJ1dCBQU1IgaXMgbm90IHlldCBlbmFibGVkLiBJdCBnZXRz
IGVuYWJsZWQgb25seSBpbiANCj4gcHJlX3BsYW5lX3VwZGF0ZS4gQWxzbyBpbiBoc3dfYWN0aXZh
dGVfcHNyMiBhbmQNCj4gZGcyX3BhbmVsX3JlcGxheV9hY3RpdmF0ZSB3ZSBhcmUgd3JpdGluZyBQ
U1IyX01BTl9UUktfQ1RMLg0KDQpJIHNhaWQgaXQgd3JvbmcgaGVyZTogcG9zdF9wbGFuZV91cGRh
dGUgSSBtZWFuIG9mIGNvdXJzZS4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiBC
UiwNCj4gDQo+IEpvdW5pIEjDtmdhbmRlcg0KPiANCj4gPiAsIGFuZC9vciBtYXliZSBhbGwgdGhl
DQo+ID4gUFNSIHN0dWZmIGhhcHBlbnMgaW4gdGhlIHtwcmUscG9zdH1fcGxhbmVfdXBkYXRlKCkg
c3R1ZmY/IEluIHdoaWNoDQo+ID4gY2FzZSBpdCBzaG91bGRuJ3QgcmVhbGx5IG1hdHRlciBmb3Ig
dGhlIHN0dWZmIHRoYXQgdGhlIERTQiBkb2VzLg0KPiA+IA0KPiA+ID4gwqANCj4gPiA+IMKgCWlm
ICghbmV3X2NydGNfc3RhdGUtPnVzZV9kc2IgJiYgIW5ld19jcnRjX3N0YXRlLQ0KPiA+ID4gPiBk
c2JfY29sb3JfdmJsYW5rKQ0KPiA+ID4gwqAJCXJldHVybjsNCj4gPiA+IC0tIA0KPiA+ID4gMi40
My4wDQo+ID4gDQo+IA0KDQo=
