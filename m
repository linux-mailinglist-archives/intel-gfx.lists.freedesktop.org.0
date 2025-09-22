Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60697B932DD
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 22:06:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F11CA10E510;
	Mon, 22 Sep 2025 20:06:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GIvGg+he";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2576710E510;
 Mon, 22 Sep 2025 20:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758571590; x=1790107590;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=IyOV8Sn7kai/mNglZWzb3xiNRCVw5wdB4A1Iveuuu54=;
 b=GIvGg+heRfamqODgFEHhKHgUO7x+nGFxKBtwAIG/DfTKTqtVoHMHFdmh
 vXiXMZWV3d65CoDp9VxQI47GzEhwtSwpZEVJDeJu1YkBZtVmf23VCiT4P
 J1iYCzqePoYBptujbZZAwPuTptyNIbJAcdn2QGYRcb457nLERh3VThTPU
 E6Z5h9SXcoC619jDmq3UogQs5Uw2qIgTZuESC6LttuQKFqZPMtOstBjLn
 Arg+0ipCTStNj9MU3sUv0aLu1ElrXv64lwWiYt0QXsRHZ4lePG2kdQY8f
 1/8+oDhHlFgarUh4bYq1GxYdIbgWvUnME6hN20hD4rbGKP4ih0XMlRrN3 g==;
X-CSE-ConnectionGUID: V6nRXy7CQIOXekCRxWAKLQ==
X-CSE-MsgGUID: 4kutHfrvSii3iZzAttHeGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="64665442"
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="64665442"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 13:06:30 -0700
X-CSE-ConnectionGUID: Ew9b6zgfT4mylskBVB2aOg==
X-CSE-MsgGUID: azh0falfS7GhkAuKSlWx9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="200276654"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 13:06:30 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 22 Sep 2025 13:06:29 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 22 Sep 2025 13:06:29 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.4) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 22 Sep 2025 13:06:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LCAazAPLTDUA/DeJp5+MaoTDLst0kVWWYpY10p2qnomcMwCmkfJQNB/wob0cYAX9EdKOfy2JmAp5x3vtGHGPMIM7GjdJ6WbTtAbnyLJMtr0rBVckywyS/N1aozPaLv2IDKAH668KftAXtjhXV8fNdHmCrhmGawGB8sDR6tP+VKy2AtGVLnVeJkyjc63IotNXIZM24GRyNp8LV51ctOj30B8Wt1RwbxcqgsumL1LlzRQ8ab1FBe9xpyiUwToroB0puPkJBJEkGb4QKQTahxNTab0tqZtI+/7eXNRR01sj0HKqeIXIF5u6FeOvkMOdIifR4JhPHJmlvBifv6nypXmRZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IyOV8Sn7kai/mNglZWzb3xiNRCVw5wdB4A1Iveuuu54=;
 b=LwCyLEurfOSxaRuCCAUYSWeNf7FSqVE8EgSKvDvQaIldlBnoTNm6/CSkYDlhP2kmFMu2N3OavGxWpUPpwHQKW1sT1GcFXNwlN1nKL5985gHrGjfw0sYd8T2tOuSVp4SorW7NAHPPlz2MZ8wkAJUCGOUu0nVRnbV7aisOTdbVf81aUf6rihLsgRta5TA425sZU9lnyZ5ljswK2rIukreyLQldwpUiZz1BfcY3YuDrvBvtI3PEhjO3beqpHY91XYM0vCOyMHcg5afednn3I47+92jEr728i0Yeq63iNd4wcpO5JreLhg7rWbymmC/tintNG0W3//Up4wAaro+Bab2nDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5373.namprd11.prod.outlook.com (2603:10b6:5:394::7) by
 LV3PR11MB8458.namprd11.prod.outlook.com (2603:10b6:408:1bb::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Mon, 22 Sep
 2025 20:06:26 +0000
Received: from DM4PR11MB5373.namprd11.prod.outlook.com
 ([fe80::927a:9c08:26f7:5b39]) by DM4PR11MB5373.namprd11.prod.outlook.com
 ([fe80::927a:9c08:26f7:5b39%5]) with mapi id 15.20.9137.018; Mon, 22 Sep 2025
 20:06:25 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>
Subject: Re: [PATCH] drm/i915/display: Set SPREAD_AMP bit to enable SSC
Thread-Topic: [PATCH] drm/i915/display: Set SPREAD_AMP bit to enable SSC
Thread-Index: AQHcKOM9iG6NYQ4Be0CzElKjEwE6+7SaTgKAgAVY7YA=
Date: Mon, 22 Sep 2025 20:06:25 +0000
Message-ID: <396995979a4e852c31fe090300ed1121b3a158e8.camel@intel.com>
References: <20250918212847.1838637-1-khaled.almahallawy@intel.com>
 <11551c7d318448823015cc26d6409e0f897f0562@intel.com>
In-Reply-To: <11551c7d318448823015cc26d6409e0f897f0562@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5373:EE_|LV3PR11MB8458:EE_
x-ms-office365-filtering-correlation-id: 4b0ceb0b-467b-46aa-1b21-08ddfa1382a0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?UnI5MW9tT1F5MEdqZnoyUmZybXVRa2FCTEZTUWJ1emY2dVFVcURoTlp5VUh6?=
 =?utf-8?B?b25WWklNZFMra3VPUnNkU0lUanNZZEwrOEIxRUQvWTR3MWdQVFBBK3R1UW1s?=
 =?utf-8?B?RmF6VTQ2TGhwK0tpcE5KUnZvak5jZG9SUUtGaEFDNWFjMWFlS3ROQTQzVEE0?=
 =?utf-8?B?cmV1dEtFbXphUmJTekFNQVdyMEJYYWdvMGFJZE44aSsxSk96Q0hkd1dJSzMz?=
 =?utf-8?B?SmxEVGhWSUNFM3B2V2xBYzJ0OUloL1hIY2l5cVF4czhJM3VHVHRSaHF0bFFU?=
 =?utf-8?B?RStjM05GTzlwYkc2UW5rOXBVd2QzckpNblBhUGJVTld3emxDOFJDeEwzRUNV?=
 =?utf-8?B?L3V5dzdBc1dhbjBZekcxTUk5TTZyYkhkRWwxT0dRdnl5b0F2cDd6eGExcVpU?=
 =?utf-8?B?U3Nyd29VNnFldnV4Zk5jdlU0QTlMMUhYUDF5NjBJaUp6eXhYeVMzdVlsOWdr?=
 =?utf-8?B?WTRLNC9PZlhMblY3a05RRWZmQklRdjk4U1BIblJHS1REZUR5RVMwS294OHpZ?=
 =?utf-8?B?Qm0wT0VERGxiL3lyVWRRMzI3aWk1TTUwdXgvNFZ5c2t5UDFFczQyeVJYMThL?=
 =?utf-8?B?NlFPR0YrVzRVTTRUcU9WL21SRmJhSVFpUGc0ZlgrUCtMeUphUW5iQUhVN0FL?=
 =?utf-8?B?OWl5Z3djR3hFN3lObXBCbVZyQktxQk1LYWtpdkFIZkRNbk1zMnFiRzlvU3Iv?=
 =?utf-8?B?Y21FRVpHMHVrRGNZZXNHMkFtMnNLdXI1Vm9VMW5rakZOUWZzQXVwYTk0MThw?=
 =?utf-8?B?Um9LZnRGNjdTMWlTQVc0REQwZ0FVS3pBcnJLVFcrWTBLUVhwMmhqSXdJMDZZ?=
 =?utf-8?B?TXlULzdqMDJhanVGd3lsYzdpbjBBaVlZd0lSVkpicVJMbUUxak9hZzVnUTh6?=
 =?utf-8?B?a3VjU3VFdUM2VDdtS0lLYjF2THowc053OEYxN1hUcTJnTEMzcW96N0tCUHl5?=
 =?utf-8?B?L3hBdGwzeWsrNE96MVpzK3M5c0N4ZjFZdTVkQ0ZhTUkxdVBnb21yZDZ2TXYx?=
 =?utf-8?B?d0Nud1E3VDVSMFg5V2x2SHZlQjFFdkI1eHRmZ3hMSVNYczlsaC9WUVoyb2ZO?=
 =?utf-8?B?WDNxTUtVUGppanNidEpwUUNwQ2tWakwxUVN6L1pkb0hEWW1MWjgxL200bGk3?=
 =?utf-8?B?SktEQTYvdmhxaWpVb1AwdnlKZTlEQ0JNNDBKN0RiSktJQmlnbFZVQStPa28w?=
 =?utf-8?B?eFpuRFhpZTZLZGJYbkRBV0hWMitZQmhZaUZub1ZrcVo2T1NDN2lkSTcwdmh3?=
 =?utf-8?B?ZTgxa1hYV3FhdzJOTXpvQml6NHhVbEd5OWVwdzRUS0F3eTFYWDh0cVhBNUVj?=
 =?utf-8?B?R1BhZTE5eW5ORDIrd1o2L0VGNUIvRGNXYW1JWDhJMXRuNm1iSlo3cUdrVDl6?=
 =?utf-8?B?dWR6cUdWVThZY1NKNlZZT3VkeUh3aXhsbmhoMG4wZWdDakJiYm5JR21KcVNJ?=
 =?utf-8?B?cEQzTkhvbVVLUFpUSW4zRWZtN2p5eXo4VlBWellLQ2VhdWxyK2NWY1U5dWkx?=
 =?utf-8?B?dmhCbG02K2UyeUtGOGhMVWpzSXRldytBNWpRRjlLQll0b1lxbXZoRnBTdGxQ?=
 =?utf-8?B?VWJyYXJCZVNsVFNhYStpaEoyelRJeWRsZmdDb1o2RFEyUnpJd0JCQUE5TXZV?=
 =?utf-8?B?UTdjN1NONVpMUWlHSHNKY1BLUWl1dElFaU9LNUY5cWtiRmtQbllVQ0N0NE1j?=
 =?utf-8?B?YzloQWFMLzFKV2pYaU50WVZGMnUrMjB0b2dGcDE0M3BFcW4rOEU2U1pJT2Fu?=
 =?utf-8?B?UkJ6OE5ZY0hva3VXT09UTUREZDViZk1CeEtWUmMxSWtTS0NXdjFqUmxFMVpS?=
 =?utf-8?B?OHdOamRxc3pYbDREZFZETWdzK3BYb2gwUENSZGd1RWFFUGRSZ2l5ZDhGdVh0?=
 =?utf-8?B?RlhPN2hJRnFSWmdEZ3U1R2FLS3BwRnB5aitBcFpGckNuODQ2WjR4U2EyMU9I?=
 =?utf-8?B?d0dSWkl3Rkg0M2lBN21DMzJVaFlXM2tYeVBNRFNNSHdtT2FrTHcvN3Z2TGUr?=
 =?utf-8?B?OVQ1SERTTWVnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5373.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SnFyOWhuODdMa0pycVNjWEdjbElnL0M0c2szZGlBU1dDc3ArRTlPNXJUNHk2?=
 =?utf-8?B?Q1VFK2ZXZWljUEFDK1FHZFhUMEpVdFVqT29qdTNHa3RJQzFsb3ZxckUzZkFv?=
 =?utf-8?B?dTBQRUJ6RmVPS0RqUG9qaXU1VGRtMkQyckd4T2Qvb2dYZis1Nm1MVzV4MG93?=
 =?utf-8?B?aGU2dUZNSHI3SHQxQTZGTmExMThNSWFhMlNxOTFVSFgvV1NWcXY1QURCRUVL?=
 =?utf-8?B?ZFRxSmlOOE1BSmVubWdjZVdGdnE5UnFDeW15T0tpQktVbUpVelFzUm1samFW?=
 =?utf-8?B?NHBtdTM5dDZpODI5QjJ1SU9sRFBGREpKK3hsSVlQMTMzaldlRkxsQ3AvMmp4?=
 =?utf-8?B?SUV5ZnlMdlJQWVJib2VxSzR4WncxNjF0cWVzenZnZE5lNHd3T21EalJ0cXM2?=
 =?utf-8?B?alNCa2ZtTjFSZDlrZlJsZm9CdjNlamlTMHRMc1A0eVI0Zy9GTU95WDNoS21n?=
 =?utf-8?B?ampqbVFZNGV4RSthZXB0RXU2b29hYWV1L29WU3FUVzhSYlkrcGRES0dJMVZC?=
 =?utf-8?B?dXN6SXRRRGFsQ2JzTkhNOXNzSU9UREdOSW9ER1FQUnpUYTc1RE0vVFhVQlFz?=
 =?utf-8?B?akZCZU1QRVpPNG5JMWNiOWxWTG9RTVAyNU0vdDJSb21lbEFSbnJONXV4Lzd5?=
 =?utf-8?B?MFJ2NjRmNFRMVm5RWkNmMlFKdG95TnNSdVRhYlI4Zzd1aTVHU1NjdUJMbkUr?=
 =?utf-8?B?dUJ0N3cycmNvUWp1NzBYeDVldFphcjQvb0ZsVzlacUNRZTM3U0lyUVNZc3Bi?=
 =?utf-8?B?Tll4TVBlSlFvUCs0Q1VXaitvV3drUW93azg3ckdoM1JaTHBPRWN6ZWZwdWJx?=
 =?utf-8?B?NldVWmxnckpmaDF2RHZmSVMyZ3lPT1l6SndNR2tuay85Vm1RZnpIblF6RUp4?=
 =?utf-8?B?TDJLeGhhSnYvQ0VFem4wNzFzc2dXVjY1N21GME41MzVlU1BaU3I2Skc0bTl4?=
 =?utf-8?B?d3d1YnUwZ1NwYkRSQUVXYi9PWld4MERGcUJkWjZ1R3czQkFLN2hoSTZ4RFlU?=
 =?utf-8?B?TjhNTStjTHUzcXN3QlpoRmt5ZisrOUJDdFVWWmNCTzVxMTRTSmFUVHlSRTN0?=
 =?utf-8?B?UFlWeXNjR2JRYVZGNE82ZXJMT1VqaWFkbnNZNys1enFmM2M5bGFsMHpjWE96?=
 =?utf-8?B?SXErU2Zxa0pPTVJuQUJNMk90N09WblV4cENPakJTcGtqTy9UdGFFdHM5RTNS?=
 =?utf-8?B?U0JFektZSnpyVEZvL0loS3JsZnNQT0crNUQ3dmlFTFFhWktsd1RYbkhhTWRj?=
 =?utf-8?B?L2JBNWdnWGNUdDdudWhidmIyVXhqTDJKQngzdGZMREkreU15aDJjT3RBSWhZ?=
 =?utf-8?B?SXdERmRhN3RmUHI4MFd3ZlpwV0FOMWg4akVpelFvRFRhNVYxMCtQYjFYVG4z?=
 =?utf-8?B?dG5tMldmSSt3WUlENjQxQXMrMDduQ2ZNQW9kdGcycjJiY0tZN0E3U04xaEdV?=
 =?utf-8?B?eFA4L3d6MHR3a2o5WmxURngxMEdkS1hZSGdZNE9NQ1VuZnppV1VqZDE5TUYx?=
 =?utf-8?B?NXB2VGVGNWwrVmJRT1BmTmhCaWtWYStjUXdCaXNMY3E1YXh0aGo0TU1mMDBx?=
 =?utf-8?B?NTJKdC9zbXRSOUczS2c4b0ROMnd3dmgvdytUbXpUTDNJK05HeXFxbmhKbUF4?=
 =?utf-8?B?NGQ0eDZ1ZHlSRU9qalVzNEFhbEdFeld5alNtc2daRnRzZXpFOURvYVArcUdU?=
 =?utf-8?B?MFJLeDl6WjVXZUROWllqcVpDbXU5ZUJIMjNEOWtsanphQTdrckdRTU80SEpj?=
 =?utf-8?B?UFdzdVZ2MzFRek5LWHJ5T3E5a0Mxb0FIemdoNVlXWU51WXJqbXovZnNnanpq?=
 =?utf-8?B?YW8vMHU3S2QzTkRvMnN1SFk5VGhpdm1tNGNLMFdJZk5wa0JtSmx6NmppNk5w?=
 =?utf-8?B?bGFpNjdBMVo5K1hTZGwyZlBHNmNnclhtK29XRFlvK08zNSs2V2xhcU5sc1p2?=
 =?utf-8?B?R3FtbWM0MUxTY3E0a0NXVTFaZC82WGNpNER1cDlTVFBNN0FtbnN3SUxEQ3FF?=
 =?utf-8?B?aGVSWXViSVZWMEN6RDR6UTVmSklGSkZobVp1a0JjSk5XUE04YUhyckpOOVgr?=
 =?utf-8?B?Mmh1TTRIQlRVMEdCTU4zSG9jV2Vpd096ckU0Ykh1ajg2cloxQmtZaE80WHQ0?=
 =?utf-8?B?Z050bjhFNFFTbTJob1dDbVkvcTA2aS9HWFRlTFcrRXA1VWwwYnNkVlJLb1l1?=
 =?utf-8?Q?1sRyHjvYbs+iTC2qq7yUxUk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3E3C763EFF9239498A75242FFA117F89@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5373.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b0ceb0b-467b-46aa-1b21-08ddfa1382a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2025 20:06:25.8820 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GC2A75RSQTMN/P+Ypo6yjS5mzFzQdXp7Sa84oZSWsOxHw9AKNSSccGXbUa3SEw4/s47KZZ1yzlL/y+V0YL0swG/eRt24vFbZUXmFEvmPDfE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8458
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

T24gRnJpLCAyMDI1LTA5LTE5IGF0IDEzOjI2ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVGh1LCAxOCBTZXAgMjAyNSwgS2hhbGVkIEFsbWFoYWxsYXd5DQo+IDxraGFsZWQuYWxtYWhh
bGxhd3lAaW50ZWwuY29tPiB3cm90ZToNCj4gPiBBY2NvcmRpbmcgdG8gRFAgU3BlY3NbMV06DQo+
ID4gIlNTQyBpcyBlbmFibGVkIG9yIGRpc2FibGVkIHdoZW4gdGhlIFNQUkVBRF9BTVAgYml0IGlu
IHRoZQ0KPiA+IERPV05TUFJFQURfQ1RSTCByZWdpc3RlciBpcyBzZXQgb3IgY2xlYXJlZCAoRFBD
RCAwMDEwN2hbNF3CoCA9IDEgb3INCj4gPiAwLA0KPiA+IHJlc3BlY3RpdmVseSkuIg0KPiA+IA0K
PiA+IFNldCB0aGUgU1BSRUFEX0FNUCBiaXQgYmVmb3JlIHN0YXJ0aW5nIGxpbmsgdHJhaW5pbmcg
dG8gZW5zdXJlIFNTQw0KPiA+IGlzIGVuYWJsZWQgYXMgcmVxdWlyZWQuDQo+ID4gDQo+ID4gWzFd
OiBEaXNwbGF5UG9ydCBTdGFuZGFyZCB2Mi4xIC0gU2VjIDIuMi4zLjEgRGUtc3ByZWFkaW5nIG9m
IHRoZQ0KPiA+IFJlZ2VuZXJhdGVkIFN0cmVhbSBDbG9jaw0KPiA+IA0KPiA+IENjOiBVbWEgU2hh
bmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiA+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEtoYWxlZCBBbG1haGFsbGF3eSA8
a2hhbGVkLmFsbWFoYWxsYXd5QGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jIHwgNiArKysrKy0NCj4g
PiDCoDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPiAN
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9s
aW5rX3RyYWluaW5nLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbGlua190cmFpbmluZy5jDQo+ID4gaW5kZXggMjdmMzcxNmJkYzFmLi5kYjJlYTNjNTFhNWYg
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9s
aW5rX3RyYWluaW5nLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiA+IEBAIC03MTEsOSArNzExLDEzIEBAIHN0YXRpYyBi
b29sDQo+ID4gaW50ZWxfZHBfbGlua19tYXhfdnN3aW5nX3JlYWNoZWQoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCwNCj4gPiDCoA0KPiA+IMKgdm9pZCBpbnRlbF9kcF9saW5rX3RyYWluaW5nX3Nl
dF9tb2RlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gaW50IGxpbmtfcmF0ZSwgYm9v
bCBpc192cnIpDQo+ID4gwqB7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9
DQo+ID4gdG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+ID4gwqAJdTggbGlua19jb25maWdb
Ml07DQo+ID4gKwlib29sIHNzY19lbmFibGVkID0gaW50ZWxfcGFuZWxfdXNlX3NzYyhkaXNwbGF5
KSAmJg0KPiA+ICsJCQkoaW50ZWxfZHAtPmRwY2RbRFBfTUFYX0RPV05TUFJFQURdICYNCj4gPiBE
UF9NQVhfRE9XTlNQUkVBRF8wXzUpOw0KPiANCj4gVGhpcyBpcyBhY3R1YWxseSBwcmV0dHkgbWVz
c3kuDQo+IA0KPiBpbnRlbF9wYW5lbF91c2Vfc3NjKCkgbG9va3MgYXQgYSBtb2R1bGUgcGFyYW1l
dGVyLCBhbmQgdGhlbiBhdCBhbg0KPiAqb2Jzb2xldGUqIGZpZWxkIGluIHRoZSBWQlQsIGJ1dCBt
YXkgYWxzbyBiZSBxdWlya2VkIGF3YXkuDQo+IA0KPiBBbmQgYXMgdGhlIG5hbWUgaW1wbGllcywg
aXQncyBmb3IgcGFuZWxzLCBvcmlnaW5hbGx5IExWRFMgb25seS4NCj4gDQo+IFNvbWVvbmUgbmVl
ZHMgdG8gbG9vayBhdCB0aGUgVkJUIHNwZWMsIHRoZXJlJ3MgYSBoYW5kZnVsIG9mIHBsYWNlcw0K
PiBtZW50aW9uaW5nIFNTQywgYW5kICphbGwqIHVzYWdlIG9mIGludGVsX3BhbmVsX3VzZV9zc2Mo
KSBpbiB0aGUNCj4gZHJpdmVyLA0KPiBhbmQgbWF0Y2ggdGhvc2UgcHJvcGVybHksIHVzaW5nIHRo
ZSByaWdodCBwYXJ0IGZyb20gVkJUIGRlcGVuZGluZyBvbg0KPiBCREINCj4gdmVyc2lvbiBhbmQg
cGFuZWwvY2hpbGQgZGV2aWNlLCBldGMuDQoNCk5vdGVkLCBJIHdpbGwgZ2l2ZSBhIHRyeSB0byBp
bXBsZW1lbnQgdGhpcy4gDQoNCj4gDQo+IChTaWRlIG5vdGUsIHRoZXJlJ3MgQ3gwIFBIWSBjb2Rl
IGxvb2tpbmcgYXQgRFBDRCByZWdpc3RlcnMgZm9yIHRoaXMsDQo+IFdURi4pDQo+IA0KPiBUaGlz
IGNvZGUgaGVyZSB3b3VsZCBwcm9iYWJseSBiZW5lZml0IGZyb20gaGF2aW5nOg0KPiANCj4gaW50
ZWxfZHBfc291cmNlX3N1cHBvcnRzX3NzYygpDQo+IA0KPiBhbmQNCj4gDQo+IGludGVsX2RwX3Np
bmtfc3VwcG9ydHNfc3NjKCkNCj4gDQo+IHRvIG1ha2UgYWxsIG9mIHRoaXMgY2xlYXIgaGVyZS4N
Cj4gDQo+ID4gLQlsaW5rX2NvbmZpZ1swXSA9IGlzX3ZyciA/IERQX01TQV9USU1JTkdfUEFSX0lH
Tk9SRV9FTiA6IDA7DQo+ID4gKwlsaW5rX2NvbmZpZ1swXSA9IChpc192cnIgPyBEUF9NU0FfVElN
SU5HX1BBUl9JR05PUkVfRU4gOg0KPiA+IDApIHwNCj4gPiArCQkoc3NjX2VuYWJsZWQgPyBEUF9T
UFJFQURfQU1QXzBfNSA6IDApOw0KPiANCj4gR2V0dGluZyBjb21wbGV4LCBtYXliZSBzb21ldGhp
bmcgbGlrZToNCj4gDQo+IAlpZiAoaXNfdnJyKQ0KPiAJCWxpbmtfY29uZmlnWzBdIHw9IERQX01T
QV9USU1JTkdfUEFSX0lHTk9SRV9FTjsNCj4gCWlmIChpbnRlbF9kcF9zb3VyY2Vfc3VwcG9ydHNf
c3NjKCkgJiYNCj4gaW50ZWxfZHBfc2lua19zdXBwb3J0c19zc2MoKSkNCj4gCQlsaW5rX2NvbmZp
Z1swXSB8PSBEUF9TUFJFQURfQU1QXzBfNTsNCg0KU3VyZSwgV2lsbCBpbmNvcnBvcmF0ZSB0aGF0
LiANCj4gDQo+ID4gwqAJbGlua19jb25maWdbMV0gPSBkcm1fZHBfaXNfdWhicl9yYXRlKGxpbmtf
cmF0ZSkgPw0KPiA+IMKgCQkJIERQX1NFVF9BTlNJXzEyOEIxMzJCIDogRFBfU0VUX0FOU0lfOEIx
MEI7DQo+ID4gwqAJZHJtX2RwX2RwY2Rfd3JpdGUoJmludGVsX2RwLT5hdXgsIERQX0RPV05TUFJF
QURfQ1RSTCwNCj4gPiBsaW5rX2NvbmZpZywgMik7DQo+IA0KVGhhbmsgWW91IGZvciB5b3VyIHJl
dmlldw0KS2hhbGVkDQoNCg==
