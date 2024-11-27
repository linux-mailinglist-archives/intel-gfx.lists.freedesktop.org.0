Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6C19DA3FB
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 09:32:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30CF010E20E;
	Wed, 27 Nov 2024 08:32:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HdqdCxtc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B82410E20E
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2024 08:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732696327; x=1764232327;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eWtHLhw+zdb0RnbOXH22CmVFia4wjkk1qLlIVLlTejA=;
 b=HdqdCxtc0IfLgfCpzruTM989yThqz9DxUbSvOByIfqu9cFbsaP/S/E0o
 N0DkU+vhe1We0DkgUgQsn238Oz/EmCBgzKXU4QRBSXuiRirdOrR0a0JJH
 WlGXgofb8IWeK/pU3EuiHO68GYTNXBU3pX5kgiyLUe9wyRiuulvPvzQBK
 yGpicF12V2kR9VREZs+L5Um5RCaUXH5YKq9rAduG3BoTRMo9XGwD18nir
 Oteopfah9Wcrr9gWr2YjBPQApCRTZQARes7wFrKuAj5TEYJnmuPfqZx9U
 nnpivO7sSbVHkQugwVvab1KMUR/P788R+drX5LtEJ8h82gSihbokrRN0E Q==;
X-CSE-ConnectionGUID: 5VbReizkS/y5a7za+bbb9A==
X-CSE-MsgGUID: jaLWbPpTTuClZX2LQmDQ4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="32260467"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="32260467"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 00:32:05 -0800
X-CSE-ConnectionGUID: ppG2j6djQXqppGt8CoOSXg==
X-CSE-MsgGUID: 3QcUyjzlRjKUTt4Se+DOtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="91492881"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2024 00:32:06 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 27 Nov 2024 00:32:05 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 27 Nov 2024 00:32:05 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 27 Nov 2024 00:32:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MEI8L/Pi91C9YRCT1vZnbDeMJd5PrxLBtSlXXojE5mFvGvb3rdFNIpFfm+OpR/QqF2+81KpOyl7aQc8qP0a+/93/Es4zsTlnvZsNwu5To4pelnAaxFN7KLlnKrcvlKqcWpnh1AqmgkavQ8DjBvHfB75cttq8rMPUvvWE9D9u73K4fdkRIS8E5Xmldd+Y/0sW7udEM7Y4Tg5Ofq5nItjaLWfF5AQfG8RdRZv7BgB0bX0aJf7dQUpQEnFH8G5Y3BI5Alt19t+1FW2PB/8a/Eegj+No3zazzZEp65LrgkNsTkKnHeiCyiJgv0THrgXDQcglIm6AgsS7LjXk5fuTnpl5IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eWtHLhw+zdb0RnbOXH22CmVFia4wjkk1qLlIVLlTejA=;
 b=OpvaBUciqA34g/TuHSN+ziMejsdKqO9zCGSKOO2a3EmVb2J+x8oeGo5U9VCqmZCzB5HtZdVtkgR5g7FeQWT7X98mL1vG9Vs3exHYb1UYxqQWvbWxyQswmevOaxIor65vX0qP6XSZM46I4VrrB6F2CBtXsIBAosbDcSC5LsQ3xZTpkSQsVE6ndto44SKQ1pdasVBabMLAiW3PyvJUEhpLi+71a2JlhRuVQbEYbfyNBf1x1c2sIZQ4hLi/o9LYQDyH2XqzS5+vMmqnQV2p5ifl9twXNfKSvg7s3hh5SNma63QiZB/F70GRkN73e3NC9vfxtm0NDtqGUQEIZeU+oawfWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by CH3PR11MB8520.namprd11.prod.outlook.com (2603:10b6:610:1af::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.13; Wed, 27 Nov
 2024 08:32:02 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad%6]) with mapi id 15.20.8207.010; Wed, 27 Nov 2024
 08:32:02 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: Brian Geffon <bgeffon@google.com>, "Lee, Shawn C" <shawn.c.lee@intel.com>
Subject: RE: [PATCH 3/4] drm/i915/dpt: Evict all DPT VMAs on suspend
Thread-Topic: [PATCH 3/4] drm/i915/dpt: Evict all DPT VMAs on suspend
Thread-Index: AQHbQJM6Vn9+z4QGBkOWICJkJvQFgbLKy29g
Date: Wed, 27 Nov 2024 08:32:02 +0000
Message-ID: <PH7PR11MB82523F777D23B6C37ECCE70489282@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20241127061117.25622-1-ville.syrjala@linux.intel.com>
 <20241127061117.25622-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20241127061117.25622-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|CH3PR11MB8520:EE_
x-ms-office365-filtering-correlation-id: 27d8390a-44f5-4c98-ea25-08dd0ebdf7bc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?aFdteGh3V1E0VTZYUWpGdEx6SUhWTkUwL0w4OVBKdDRscGRmSFpDbDI4aGZy?=
 =?utf-8?B?RVBYU3hrdTRkSEx5TmVrNkJLUzRJTks4czRHWHpPYW1MQzhLeFNHbEtZWC9M?=
 =?utf-8?B?NlBLV3VtSHRLQjBTcVY2cU85WUxQMjFManQreEQ4YUdxcXBQbXN0ZmQrbmlO?=
 =?utf-8?B?YVJQZ3Q5NlJTL1NsZk9OYmw3cGdKSGZBcjFrTGczeXZIUXE2aVpmZlBMOENl?=
 =?utf-8?B?bHBBaThGVEFtZmhlWWxWOGhmMHFNcXNrQWovRWNrT0tTdXByb0UxS1JlMWhS?=
 =?utf-8?B?TUNaUTBzMVU1cXErc0gvWTJ3SGdWRVRJczlybmt3YUd1ejc5Sjg1Vjg5UHdU?=
 =?utf-8?B?Ni9BMkFOQThsNjZWanNwUXhzSFFnay9CS3grNUtHbEU3V3prc1RhdmdwS0l2?=
 =?utf-8?B?QkRxbml4S0hEREdxcFRUbURsNnhSVS9QbXVWQlF1VGV3NHhrN1Y1NWFsLzdy?=
 =?utf-8?B?aFR0K3VibmdIV1Z1eTVmSlZpRlpvWUlneFJkUmJFd1BXK0hzYW1hSk1NV3dU?=
 =?utf-8?B?S2JUUWs0bUdlN2lBYUIxeEtvaHhNQ2kxQktWTXdQTHV4MzQ3OHpVVUVUemha?=
 =?utf-8?B?Y3hGYzZGWmlnQ29lcVBMbUZwSEZoejJkYlZITDhvdE1oK2JLT29heCt2VTVD?=
 =?utf-8?B?UzgwYVZlMEF3THEwV0hiMC91WURxNnVnUXZ3Uy9xTEhKc0pBQ2l1WVNuNHhu?=
 =?utf-8?B?ZWM3emZydnA0Vis4V3ROdVhRU3NLSENMTVNlUnZnK3A4SW5ocGVaRENxcGVa?=
 =?utf-8?B?T1VJc1ZQVGN1MXErZm45ME1mSVdFcmtlNURCbUFOUUNLd1BvdjcvRUtXbE5m?=
 =?utf-8?B?TzlBd1BSTEZ5bnN1OENSRk9uVVVYZ2hRTE9neDZjc0grclNZcTVrRnBIeTJ1?=
 =?utf-8?B?ZWQvbkQvaHpVSDY3NE1JSjBNUXFWYTJGK0dhdVUyTWVHQnVWN3ZUZ2tucE5w?=
 =?utf-8?B?eWFqc09JSHIxQmpiUEpIUjg4bXVvb01ES2NQeFJnRXVCbG93UE5oazV5TnRr?=
 =?utf-8?B?SFE4cS9vOXB3VEtFWHhiZ1JaVW9JSitEUmxaenljdTFUSEE0Z254c1dPL1lh?=
 =?utf-8?B?Y2RJVzJ6ckdIVkhFZy9jaHRiYXZrcmZmc3FoeDl5UUtFc1o2WEo3S3dEVVJF?=
 =?utf-8?B?TVQzVW01MWxOeUJFdHBUcTFEekRkRFFTNGUzSjVIL2ZEVkFWUWZIWW0yWHdT?=
 =?utf-8?B?NDRiYUdiTWorZk1HY0ZrMFRraXVwZ3BMbU1xQWNCVFNXS0pacVFScDhTM0k1?=
 =?utf-8?B?cFNDVEU3NHNqbjZvbE42cmlpQ0RiOEVrS3VHc1Rha1FXREcvWmRqMXkyK1FX?=
 =?utf-8?B?aGs1THJWUnZFZFJPWHFCOHcxc2Y4TitEaUxvRGZXWXliNU5uNUxwR2UyM2Vu?=
 =?utf-8?B?LzFNUXpqYktBeEpJZ1NtSlJZVGNqb2xTZnZEWDJLclFZbXZhcHVXWFZraENG?=
 =?utf-8?B?a1ZuQmJtU1V4Zlhsd3NjWjZkMWtUbEVwaHFKWHRYMGI5VmRTUngrM29vMEpS?=
 =?utf-8?B?U29yRWJrMUZIdUdZUDduSUNVcC91Ykw1WE1VMkMxYk1XVmJqR0pXaHlYemM0?=
 =?utf-8?B?clhNRTJBUVhyZGVSWk9CYTJYd2wxSkFoNmRDdW9RdXFndEdvRm43V2NDRC8x?=
 =?utf-8?B?MUZQaW40ZHUvRnFvZi9FWGFOSTM3L2ZXcW1JU1lxaUlFQjlXR0FTK3lZVHJD?=
 =?utf-8?B?dVIwOTlCN25sWnlsOUVqUmN3bE5mdnJDSCthYisyUWhyWHV0SzVqVlBBYi9F?=
 =?utf-8?B?SnBxeG1HMWZwRHFCQ3h2MFVPakVQd3BLRS9TZjE5RnFvSVZQRzFaWndsRjN3?=
 =?utf-8?Q?RCkDhjwbMokADSdedCL0Z1vduX91Zo0/aKeCg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eDJreHJyUVloRDJLNFl6SXMyZC8wMmlXdFk3UklLYlcvaTJNSEtMLy9TNG5m?=
 =?utf-8?B?cDNqcWpLRzZaMThsVEFxbVZoSDJQUG56UlZCemwxcmZrclFZU24vbjZZY0F4?=
 =?utf-8?B?ZmpKV0xsWm02RFV3cFJLVzlqcnFIZ0NuU25sN1l4dkRsRHpKNXdZeE9wQ2Qr?=
 =?utf-8?B?Zzc0WGxycEVnME5pL3g2WUhLMG9XUkQ5UjI3OUpZcW1mT3I1R1A2NlQzdEJu?=
 =?utf-8?B?MGJFaHRtUDYzOVFvd3FMTXpvM0xiSldwVXF4amxkUFFSb2dRTVNCejRLdlUr?=
 =?utf-8?B?R09IT1ltTWtjR3h2UU4yU0R6cWhCdGxEZXByQkExUEw1cElyWHlEV0NSZHJE?=
 =?utf-8?B?VVp6T1J5U2JxbVV2T2J5Vm9EYWVVaE94ajQ3bTh2bWZndkVLb2Z1UFF1ZHdK?=
 =?utf-8?B?UlV2enlEdnM4cVNNL0x0aTBmQThiVnJZRml5eDA5aUxoVlliVDNhcjlQUFhz?=
 =?utf-8?B?YzNJdHlYbWxJMlN5cDQyN1grUk5JV2JYMUM4dzQ4c20vNzRFZDRZRnVaUXpu?=
 =?utf-8?B?c3Vjay9YM3VmUGRmYW1CVDlHckRtZ3RZSmxQZ3h1U1plZDNYYzRTYlVEcG41?=
 =?utf-8?B?ZDRKRFVwQ2hRaVRsV3FCUDQyd292SVpraUZVSmowcm9uekc2Ky9OU1VOdDRp?=
 =?utf-8?B?VHIvOHhzMWVxdmEwTnZhUS8xSkdRWkNmTUFxY1dSSk12QmpydEhGTERtNVB0?=
 =?utf-8?B?VXRNem5kWHJlazF2K1RtY2tmUXNna1pMK1I5KythSUp6K2E4MGE0TUd2YVp3?=
 =?utf-8?B?MlVtbmIwYjFtUEFvS2tnVGJSNWIrMTdHSFltYU1SMFVEa1AxanhFZGIwNTkw?=
 =?utf-8?B?NDZqUXQ3K0JGWXdsOUxNZi83Q3dNVXVNSk82U09YcDd0Y1ZyR28rVzcxRUdq?=
 =?utf-8?B?ZkJLQkUxWlRaR0gvN0YxWVg0T1plT0JpaWd4Vy9zQjdMNnhzSnRkaUF4TkdC?=
 =?utf-8?B?VG1UZDhZY0F3cWxzcG9MWjkrWmxteW1kc2UramJUOHE0TWgrczlPeFYzM0dx?=
 =?utf-8?B?Q08xSWJxSmNCTjNmK0lLRTIybnpLN2hLb21jbS9YRy9ONHNYa0xBYXJJNmJk?=
 =?utf-8?B?Zk5ESzZ1SnVPRUVkYWpLa3V0NlF2NzJRS3NyTk5VcEZaem43ZnpZZHdtVXdU?=
 =?utf-8?B?WEFLa1ZqMWg4cDhrWjU2QnBlK2dYZGpNOVhYbWM4Z2Fxa25uMEtsaXFGRTEz?=
 =?utf-8?B?WU9FSGQ3eFI3Wk5wZHV6M1E3YjZndzNvVVFOR0JEYTUyWEptaDgzYVRzTkQ2?=
 =?utf-8?B?T1ZtTzFQU1l3VGVwWFYrb3NEUlBENDZ5Z0NGbkFMOHJWZHRqeTNxaUlFRk5L?=
 =?utf-8?B?bys5RXdMT0tic2VuWlRWMllsRlEzTS9RN1hzdkhyd0VFSng1OGY2RlJzKzky?=
 =?utf-8?B?TzVxbHVJZXlhNERpYmpFcVNxWi9JcUVPajNJMjVybWNRdDFocmlST3QvNm92?=
 =?utf-8?B?RjhtR2ptSVNCYUpERHE4bW12Q0NaeG9QMjQ2a2w3VTRQdGh3TGVBalhxOGUz?=
 =?utf-8?B?WEpkTDZMYjRMZkQ4VkREZ1hrTzBwU0FVdVBWdkN0VzV5cGVEMTNiTUFsOUQv?=
 =?utf-8?B?c0hvMFlWZ1k0WFVHYWZrRnd4UkE2d2IxdXdNWlJ6RGc3ODlXam55STR1dUhC?=
 =?utf-8?B?MFRQVlJKUHkvVFF6NkwyMjkxSThpM0RYMXpHNkt4bUJMdnpoNW40NFpkNW1V?=
 =?utf-8?B?aFNUTVU1TEpGalEvUkRheGE0UWtjbVN2OVBWam4yR2pOMnR6WHpDdzcwWDcv?=
 =?utf-8?B?VHE0azJXeVJEY3dyTWhCR3dPNzdkU3VEN2xMSGQ3c2wrdTNzMWRJM0lnbzBi?=
 =?utf-8?B?c29ITWFOVmROd20zOWNIeFhWTFU4dkZnVXdXYVAxVEVhdHk2OHA2Ri9TOWdB?=
 =?utf-8?B?Vm5yY2Irb1FkeCtIUHRCcWdBZHZDczRRakw0L1gxWUpMbGV6YVh1dElXNXo0?=
 =?utf-8?B?OEpMNjJGeEtxL3kyT25Gcm42MTF3S2Zwd1FZQW4yTXVKeDVqcE85OUptaXpF?=
 =?utf-8?B?WGUrRjRsQmpkVmRvQmRyU1pVOTFlZ1dONHEzdXUrMEIxT1l6M3R1RDhxV0h6?=
 =?utf-8?B?bStXeFh2a0ozbFhhenJnTFVBYjR3cmp0RFR6ZER2ZHd1ekRORlFsQVVkS1pI?=
 =?utf-8?Q?xW/Pm9H01KRMsQ+6VIJn4NVph?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27d8390a-44f5-4c98-ea25-08dd0ebdf7bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2024 08:32:02.4039 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F/wuVp498Nrr55TJ/M6PBa6BW34X9SYXD6I7qNxYLHYNHeX5CdxTxuKDkaqyTy8zd/lmYM75steN/f6NCeYFWudJRYGmh1DIIKx1TMSdK2o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8520
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmlsbGUgU3lyamFsYSA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNlbnQ6IDI3IE5vdmVtYmVyIDIwMjQg
MTE6NDENCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEJyaWFu
IEdlZmZvbiA8YmdlZmZvbkBnb29nbGUuY29tPjsgU3Jpbml2YXMsIFZpZHlhDQo+IDx2aWR5YS5z
cmluaXZhc0BpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCAzLzRdIGRybS9pOTE1L2RwdDog
RXZpY3QgYWxsIERQVCBWTUFzIG9uIHN1c3BlbmQNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBDdXJyZW50bHkgaW50ZWxf
ZHB0X3Jlc3VtZSgpIHRyaWVzIHRvIGJsaW5kbHkgcmV3cml0ZSBhbGwgdGhlIFBURXMgZm9yIGN1
cnJlbnRseQ0KPiBib3VuZCBEUFQgVk1Bcy4gVGhhdCBpcyBwcm9ibGVtYXRpYyBiZWNhdXNlIHRo
ZSBDUFUgbWFwcGluZyBmb3IgdGhlIERQVCBpcw0KPiBvbmx5IHJlYWxseSBndWFyYW50ZWVkIHRv
IGV4aXN0IHdoaWxlIHRoZSBEUFQgb2JqZWN0IGhhcyBiZWVuIHBpbm5lZC4gSW4gdGhlDQo+IHBh
c3Qgd2Ugd29ya2VkIGFyb3VuZCB0aGlzIGlzc3VlIGJ5IG1ha2luZyBEUFQgb2JqZWN0cyB1bnNo
cmlua2FibGUsIGJ1dCB0aGF0DQo+IGlzIHVuZGVzaXJhYmxlIGFzIGl0J2xsIHdhc3RlIHBoeXNp
Y2FsIFJBTS4NCj4gDQo+IExldCdzIGluc3RlYWQgZm9yY2VmdWxseSBldmljdCBhbGwgdGhlIERQ
VCBWTUFzIG9uIHN1c3BlbmQsIHRodXMgZ3VhcmFudGVlaW5nDQo+IHRoYXQgaW50ZWxfZHB0X3Jl
c3VtZSgpIGhhcyBub3RoaW5nIHRvIGRvLg0KPiBUbyBndWFyYW50ZWUgdGhhdCBhbGwgdGhlIERQ
VCBWTUFzIGFyZSBldmljdGFibGUgYnkNCj4gaW50ZWxfZHB0X3N1c3BlbmQoKSB3ZSBuZWVkIHRv
IGZsdXNoIHRoZSBjbGVhbnVwIHdvcmtxdWV1ZSBhZnRlciB0aGUgZGlzcGxheQ0KPiBvdXRwdXQg
aGFzIGJlZW4gc2h1dCBkb3duLg0KPiANCj4gQW5kIGZvciBnb29kIG1lYXN1cmUgdGhyb3cgaW4g
YSBmZXcgZXh0cmEgV0FSTnMgdG8gY2F0Y2ggYW55IG1pc3Rha2VzLg0KPiANCj4gQ2M6IEJyaWFu
IEdlZmZvbiA8YmdlZmZvbkBnb29nbGUuY29tPg0KPiBDYzogVmlkeWEgU3Jpbml2YXMgPHZpZHlh
LnNyaW5pdmFzQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICAuLi4vZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X2RyaXZlci5jICAgfCAgMyArKysNCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHB0LmMgICAgICB8ICA0ICsrLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2dndHQuYyAgICAgICAgICB8IDE5ICsrKysrKysrKysrKysrLS0t
LS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0dC5oICAgICAgICAgICB8ICA0
ICsrLS0NCj4gIDQgZmlsZXMgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMo
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfZHJpdmVyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfZHJpdmVyLmMNCj4gaW5kZXggMjg2ZDZmODkzYWZhLi45NzNiZWU0M2I1NTQgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9k
cml2ZXIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfZHJpdmVyLmMNCj4gQEAgLTY4MCw2ICs2ODAsOSBAQCBpbnQgaW50ZWxfZGlzcGxheV9kcml2
ZXJfc3VzcGVuZChzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gIAllbHNlDQo+
ICAJCWk5MTUtPmRpc3BsYXkucmVzdG9yZS5tb2Rlc2V0X3N0YXRlID0gc3RhdGU7DQo+IA0KPiAr
CS8qIGVuc3VyZSBhbGwgRFBUIFZNQXMgaGF2ZSBiZWVuIHVucGlubmVkIGZvciBpbnRlbF9kcHRf
c3VzcGVuZCgpDQo+ICovDQo+ICsJZmx1c2hfd29ya3F1ZXVlKGk5MTUtPmRpc3BsYXkud3EuY2xl
YW51cCk7DQo+ICsNCj4gIAlpbnRlbF9kcF9tc3Rfc3VzcGVuZChpOTE1KTsNCj4gDQo+ICAJcmV0
dXJuIHJldDsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHB0LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwdC5jDQo+
IGluZGV4IGNlOGM3NmU0NGU2YS4uOGIxZjBlOTJhMTFjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwdC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHB0LmMNCj4gQEAgLTIwNSw3ICsyMDUsNyBAQCB2b2lkIGlu
dGVsX2RwdF9yZXN1bWUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+ICAJCXN0cnVj
dCBpbnRlbF9mcmFtZWJ1ZmZlciAqZmIgPSB0b19pbnRlbF9mcmFtZWJ1ZmZlcihkcm1fZmIpOw0K
PiANCj4gIAkJaWYgKGZiLT5kcHRfdm0pDQo+IC0JCQlpOTE1X2dndHRfcmVzdW1lX3ZtKGZiLT5k
cHRfdm0pOw0KPiArCQkJaTkxNV9nZ3R0X3Jlc3VtZV92bShmYi0+ZHB0X3ZtLCB0cnVlKTsNCj4g
IAl9DQo+ICAJbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0ubW9kZV9jb25maWcuZmJfbG9jayk7DQo+
ICB9DQo+IEBAIC0yMzMsNyArMjMzLDcgQEAgdm9pZCBpbnRlbF9kcHRfc3VzcGVuZChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gIAkJc3RydWN0IGludGVsX2ZyYW1lYnVmZmVyICpm
YiA9IHRvX2ludGVsX2ZyYW1lYnVmZmVyKGRybV9mYik7DQo+IA0KPiAgCQlpZiAoZmItPmRwdF92
bSkNCj4gLQkJCWk5MTVfZ2d0dF9zdXNwZW5kX3ZtKGZiLT5kcHRfdm0pOw0KPiArCQkJaTkxNV9n
Z3R0X3N1c3BlbmRfdm0oZmItPmRwdF92bSwgdHJ1ZSk7DQo+ICAJfQ0KPiANCj4gIAltdXRleF91
bmxvY2soJmk5MTUtPmRybS5tb2RlX2NvbmZpZy5mYl9sb2NrKTsNCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHQuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2dndHQuYw0KPiBpbmRleCBkNjBhNmNhMGNhZTUuLmY2YzU5ZjIwODMyZiAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ2d0dC5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHQuYw0KPiBAQCAtMTA3LDExICsx
MDcsMTIgQEAgaW50IGk5MTVfZ2d0dF9pbml0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1KQ0KPiAgLyoqDQo+ICAgKiBpOTE1X2dndHRfc3VzcGVuZF92bSAtIFN1c3BlbmQgdGhlIG1l
bW9yeSBtYXBwaW5ncyBmb3IgYSBHR1RUIG9yIERQVA0KPiBWTQ0KPiAgICogQHZtOiBUaGUgVk0g
dG8gc3VzcGVuZCB0aGUgbWFwcGluZ3MgZm9yDQo+ICsgKiBAZXZpY3RfYWxsOiBFdmljdCBhbGwg
Vk1Bcw0KPiAgICoNCj4gICAqIFN1c3BlbmQgdGhlIG1lbW9yeSBtYXBwaW5ncyBmb3IgYWxsIG9i
amVjdHMgbWFwcGVkIHRvIEhXIHZpYSB0aGUgR0dUVA0KPiBvciBhDQo+ICAgKiBEUFQgcGFnZSB0
YWJsZS4NCj4gICAqLw0KPiAtdm9pZCBpOTE1X2dndHRfc3VzcGVuZF92bShzdHJ1Y3QgaTkxNV9h
ZGRyZXNzX3NwYWNlICp2bSkNCj4gK3ZvaWQgaTkxNV9nZ3R0X3N1c3BlbmRfdm0oc3RydWN0IGk5
MTVfYWRkcmVzc19zcGFjZSAqdm0sIGJvb2wNCj4gK2V2aWN0X2FsbCkNCj4gIHsNCj4gIAlzdHJ1
Y3QgaTkxNV92bWEgKnZtYSwgKnZuOw0KPiAgCWludCBzYXZlX3NraXBfcmV3cml0ZTsNCj4gQEAg
LTE1Nyw3ICsxNTgsNyBAQCB2b2lkIGk5MTVfZ2d0dF9zdXNwZW5kX3ZtKHN0cnVjdCBpOTE1X2Fk
ZHJlc3Nfc3BhY2UNCj4gKnZtKQ0KPiAgCQkJZ290byByZXRyeTsNCj4gIAkJfQ0KPiANCj4gLQkJ
aWYgKCFpOTE1X3ZtYV9pc19ib3VuZCh2bWEsIEk5MTVfVk1BX0dMT0JBTF9CSU5EKSkgew0KPiAr
CQlpZiAoZXZpY3RfYWxsIHx8ICFpOTE1X3ZtYV9pc19ib3VuZCh2bWEsDQo+IEk5MTVfVk1BX0dM
T0JBTF9CSU5EKSkgew0KDQpIZWxsbyBWaWxsZSwgbWFueSB0aGFua3MgZm9yIHRoZSBwYXRjaCBz
ZXJpZXMuIFdlIHRlc3RlZCBpdCBvbiBNVEwgY2hyb21lYm9vayBhbmQgd2UgYXJlIG5vdCBzZWVp
bmcgYW55IGlzc3VlcyAoeWV0KS4NClRoZSBvbGRlciBzdXNwZW5kL3Jlc3VtZSBpc3N1ZSBpcyBu
b3QgcmVwcm9kdWNlZCB3aXRoIHRoaXMgc2VyaWVzLg0KV2UgaGFkIGF0dGVtcHRlZCBzb21ldGhp
bmcgc2ltaWxhciBpbiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvNjI1
OTY3Lw0KVGhhbmsgeW91IHNvIG11Y2ggYWdhaW4gZm9yIHRoZSBoZWxwIGFuZCBmaXguDQoNClJl
Z2FyZHMNClZpZHlhDQoNCg0KPiAgCQkJaTkxNV92bWFfd2FpdF9mb3JfYmluZCh2bWEpOw0KPiAN
Cj4gIAkJCV9faTkxNV92bWFfZXZpY3Qodm1hLCBmYWxzZSk7DQo+IEBAIC0xNzIsMTMgKzE3Mywx
NSBAQCB2b2lkIGk5MTVfZ2d0dF9zdXNwZW5kX3ZtKHN0cnVjdA0KPiBpOTE1X2FkZHJlc3Nfc3Bh
Y2UgKnZtKQ0KPiAgCXZtLT5za2lwX3B0ZV9yZXdyaXRlID0gc2F2ZV9za2lwX3Jld3JpdGU7DQo+
IA0KPiAgCW11dGV4X3VubG9jaygmdm0tPm11dGV4KTsNCj4gKw0KPiArCWRybV9XQVJOX09OKCZ2
bS0+aTkxNS0+ZHJtLCBldmljdF9hbGwgJiYNCj4gKyFsaXN0X2VtcHR5KCZ2bS0+Ym91bmRfbGlz
dCkpOw0KPiAgfQ0KPiANCj4gIHZvaWQgaTkxNV9nZ3R0X3N1c3BlbmQoc3RydWN0IGk5MTVfZ2d0
dCAqZ2d0dCkgIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfZ3QgKmd0Ow0KPiANCj4gLQlpOTE1X2dndHRf
c3VzcGVuZF92bSgmZ2d0dC0+dm0pOw0KPiArCWk5MTVfZ2d0dF9zdXNwZW5kX3ZtKCZnZ3R0LT52
bSwgZmFsc2UpOw0KPiAgCWdndHQtPmludmFsaWRhdGUoZ2d0dCk7DQo+IA0KPiAgCWxpc3RfZm9y
X2VhY2hfZW50cnkoZ3QsICZnZ3R0LT5ndF9saXN0LCBnZ3R0X2xpbmspIEBAIC0xNTQ1LDYgKzE1
NDgsNw0KPiBAQCBpbnQgaTkxNV9nZ3R0X2VuYWJsZV9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSkNCj4gIC8qKg0KPiAgICogaTkxNV9nZ3R0X3Jlc3VtZV92bSAtIFJlc3RvcmUgdGhl
IG1lbW9yeSBtYXBwaW5ncyBmb3IgYSBHR1RUIG9yIERQVA0KPiBWTQ0KPiAgICogQHZtOiBUaGUg
Vk0gdG8gcmVzdG9yZSB0aGUgbWFwcGluZ3MgZm9yDQo+ICsgKiBAYWxsX2V2aWN0ZWQ6IFdlcmUg
YWxsIFZNQXMgZXhwZWN0ZWQgdG8gYmUgZXZpY3RlZCBvbiBzdXNwZW5kPw0KPiAgICoNCj4gICAq
IFJlc3RvcmUgdGhlIG1lbW9yeSBtYXBwaW5ncyBmb3IgYWxsIG9iamVjdHMgbWFwcGVkIHRvIEhX
IHZpYSB0aGUgR0dUVCBvcg0KPiBhDQo+ICAgKiBEUFQgcGFnZSB0YWJsZS4NCj4gQEAgLTE1NTIs
MTMgKzE1NTYsMTggQEAgaW50IGk5MTVfZ2d0dF9lbmFibGVfaHcoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUNCj4gKmk5MTUpDQo+ICAgKiBSZXR1cm5zICV0cnVlIGlmIHJlc3RvcmluZyB0aGUgbWFw
cGluZyBmb3IgYW55IG9iamVjdCB0aGF0IHdhcyBpbiBhIHdyaXRlDQo+ICAgKiBkb21haW4gYmVm
b3JlIHN1c3BlbmQuDQo+ICAgKi8NCj4gLWJvb2wgaTkxNV9nZ3R0X3Jlc3VtZV92bShzdHJ1Y3Qg
aTkxNV9hZGRyZXNzX3NwYWNlICp2bSkNCj4gK2Jvb2wgaTkxNV9nZ3R0X3Jlc3VtZV92bShzdHJ1
Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwgYm9vbA0KPiArYWxsX2V2aWN0ZWQpDQo+ICB7DQo+
ICAJc3RydWN0IGk5MTVfdm1hICp2bWE7DQo+ICAJYm9vbCB3cml0ZV9kb21haW5fb2JqcyA9IGZh
bHNlOw0KPiANCj4gIAlkcm1fV0FSTl9PTigmdm0tPmk5MTUtPmRybSwgIXZtLT5pc19nZ3R0ICYm
ICF2bS0+aXNfZHB0KTsNCj4gDQo+ICsJaWYgKGFsbF9ldmljdGVkKSB7DQo+ICsJCWRybV9XQVJO
X09OKCZ2bS0+aTkxNS0+ZHJtLCAhbGlzdF9lbXB0eSgmdm0tDQo+ID5ib3VuZF9saXN0KSk7DQo+
ICsJCXJldHVybiBmYWxzZTsNCj4gKwl9DQo+ICsNCj4gIAkvKiBGaXJzdCBmaWxsIG91ciBwb3J0
aW9uIG9mIHRoZSBHVFQgd2l0aCBzY3JhdGNoIHBhZ2VzICovDQo+ICAJdm0tPmNsZWFyX3Jhbmdl
KHZtLCAwLCB2bS0+dG90YWwpOw0KPiANCj4gQEAgLTE1OTgsNyArMTYwNyw3IEBAIHZvaWQgaTkx
NV9nZ3R0X3Jlc3VtZShzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQ0KPiAgCWxpc3RfZm9yX2VhY2hf
ZW50cnkoZ3QsICZnZ3R0LT5ndF9saXN0LCBnZ3R0X2xpbmspDQo+ICAJCWludGVsX2d0X2NoZWNr
X2FuZF9jbGVhcl9mYXVsdHMoZ3QpOw0KPiANCj4gLQlmbHVzaCA9IGk5MTVfZ2d0dF9yZXN1bWVf
dm0oJmdndHQtPnZtKTsNCj4gKwlmbHVzaCA9IGk5MTVfZ2d0dF9yZXN1bWVfdm0oJmdndHQtPnZt
LCBmYWxzZSk7DQo+IA0KPiAgCWlmIChkcm1fbW1fbm9kZV9hbGxvY2F0ZWQoJmdndHQtPmVycm9y
X2NhcHR1cmUpKQ0KPiAgCQlnZ3R0LT52bS5zY3JhdGNoX3JhbmdlKCZnZ3R0LT52bSwgZ2d0dC0+
ZXJyb3JfY2FwdHVyZS5zdGFydCwNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2d0dC5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3R0LmgN
Cj4gaW5kZXggNmI4NTIyMmVlM2VhLi4wYTM2ZWE3NTFiNjMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0dC5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2d0dC5oDQo+IEBAIC02MDgsOCArNjA4LDggQEAgaW50IGk5MTVfcHBndHRf
aW5pdF9odyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KTsgIHN0cnVjdA0KPiBpOTE1X3BwZ3R0ICppOTE1
X3BwZ3R0X2NyZWF0ZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0LA0KPiAgCQkJCSAgICAgdW5zaWduZWQg
bG9uZyBsbWVtX3B0X29ial9mbGFncyk7DQo+IA0KPiAtdm9pZCBpOTE1X2dndHRfc3VzcGVuZF92
bShzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSk7IC1ib29sDQo+IGk5MTVfZ2d0dF9yZXN1
bWVfdm0oc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0pOw0KPiArdm9pZCBpOTE1X2dndHRf
c3VzcGVuZF92bShzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwgYm9vbA0KPiArZXZpY3Rf
YWxsKTsgYm9vbCBpOTE1X2dndHRfcmVzdW1lX3ZtKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2Ug
KnZtLA0KPiArYm9vbCBhbGxfZXZpY3RlZCk7DQo+ICB2b2lkIGk5MTVfZ2d0dF9zdXNwZW5kKHN0
cnVjdCBpOTE1X2dndHQgKmd0dCk7ICB2b2lkIGk5MTVfZ2d0dF9yZXN1bWUoc3RydWN0DQo+IGk5
MTVfZ2d0dCAqZ2d0dCk7DQo+IA0KPiAtLQ0KPiAyLjQ1LjINCg0K
