Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98315B43639
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 10:47:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1437010E23C;
	Thu,  4 Sep 2025 08:47:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hZWD84c5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1480710E23C;
 Thu,  4 Sep 2025 08:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756975641; x=1788511641;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=enpMd4iCkCk8xyX9xp79PYN+MmfvG37EYRqWUJt6jj8=;
 b=hZWD84c5MrCp5BFq0EuAItoUqvi+SZZjTS0AYSTYILTC/BPcj3yKSFyL
 j0AhHvSvsbLUr1TlKKh9Y0m8yBGYxdwTlDKmFCguVwCxfR4pdYQaastt9
 27VS+SGire9RdC59veZPeQc+iARw3r36N6GQ5Pmm98n+0o9y3h6bI3uBK
 yV/XGTxR9TstBCxHEnAuYyL/jvE8EgF3JNxCopD79XQJ7V86zLkkZLggT
 2MIEAJ1H1rYD7hgJzpLLST/Vn/+EGFrapXH4yjm7iwWyBU5EgcwsDTPje
 6QPIQgFDLV6FzHG5ZRuWAyzI2BGWIy7KOy3ir1aKddWLbfXngvL5EQmHg g==;
X-CSE-ConnectionGUID: 5G7qlEtIS+KyysC/U2n95g==
X-CSE-MsgGUID: ZRjG29reQyquN/4FjvSi1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59222046"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59222046"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 01:47:21 -0700
X-CSE-ConnectionGUID: 2F+0vp0HT7i2HXkjb2sjCA==
X-CSE-MsgGUID: VL0ACMe3ToCOjApc1aDLhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="175957701"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 01:47:20 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 01:47:20 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 01:47:20 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.45)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 01:47:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bvcgb8V9lLswtsZ7owEeMMwJlmxUBAiEz6waXpyZBnQP8FfZdRRDyB4xtYuvKZg/3A1280bU9rI4egCw3t6RGacilgwmJhz+Llm31PTbYNgn3iSGENsYf5VU5DuahuUFC5YrBL8seGjkGshYD1ePyDec8IvFcU/8X93X13gxqBaooLEWX7u2X59ghpPUwaHHdnrxL8R32N+Lqve9BYVAEe6jNOzUVA3X2rAw6fHoIjAKOIHjU0hJC/548fivvumt/MXDQ/pCmS1AKNtj0UPbe+Y/dKq+5Pq9ilZWWaFeAgM+TlIPqah8Jou2QjhJOTbPoyUnuLDFhP+0RMH8FqeEvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=enpMd4iCkCk8xyX9xp79PYN+MmfvG37EYRqWUJt6jj8=;
 b=gmcJ7OuupWuqVMlQC5KDVP/qkc6MS7X3N+ZfTTON9BxgpW7+f+TFVgy8IFBsgqPlXXXLhe6pig29Mf2/t0fFUI7YVkDRWbcEELhLtA1+zcqjUHUE2QTaZVPtPe+tIJU0N1KYlSwHvBqHSwQuuxvvIKPBwECyoWhJxU3Xl4JBA6UQgPZ/5QXJnVReeTmmqB0pGmI966O0PzDt7Qpx4LZYOlCi4ouefwjuKJJ6ZCD0k6at/dCByOLFi7Ytq1FXgLZ77jM/EhdhP9kEf40oT1+0jt+9Fje9mM559XhncpGy1ymyOh/y28UfNUyRV90AElOKU/SZojzA8Mvl7+yZfCZ1Gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN7PR11MB6726.namprd11.prod.outlook.com (2603:10b6:806:266::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.18; Thu, 4 Sep
 2025 08:47:13 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.015; Thu, 4 Sep 2025
 08:47:13 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 17/20] drm/i915/lspcon: use generic poll_timeout_us()
 instead of wait_for()
Thread-Topic: [PATCH 17/20] drm/i915/lspcon: use generic poll_timeout_us()
 instead of wait_for()
Thread-Index: AQHcGBZ7ZYi4PCkxXEiqkp0IXXbyH7SCwNSA
Date: Thu, 4 Sep 2025 08:47:13 +0000
Message-ID: <fbc3e9e005c9022a2457c7945d2e0ab9358c336c.camel@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
 <4065fa96c0ef6afd51a384f365761d2ca802256b.1756383233.git.jani.nikula@intel.com>
In-Reply-To: <4065fa96c0ef6afd51a384f365761d2ca802256b.1756383233.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SN7PR11MB6726:EE_
x-ms-office365-filtering-correlation-id: ddcbaf4c-69ae-4be4-7e07-08ddeb8fa49e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?c2l6K3V1UU9DZ2pxNTYzcDdKTFBFRWdUVTA3YWtOMjZ1a3poOU9KUWVJa0Yv?=
 =?utf-8?B?WUpuQXhLRk5oMnlpa1ZkL0hlcjJHRURqc3l3clpvQXo2a3htaTJobWVITHZK?=
 =?utf-8?B?MjEwRXBkNkFjUGorV21tcCswTjlpOEIrK29nTitKYW84dER1VEhFMzJ4MWFk?=
 =?utf-8?B?Y3ppRWFJVVZuSTBuN3AvZWs4K3g5dk91MW5Hang5WDlwYURpYVp2ZG5KV2lx?=
 =?utf-8?B?TFVGV1BZRXlJZVJmaE5qTzRydlRldmRsdzlKTkVCUHEyQ1h0ZU15NU1KNDl1?=
 =?utf-8?B?Q3VVeWZCdWVTT212MFIxdE0yRld3ZHlsbzlWcmgxbkwzMEtrcE9Sd1d2aSts?=
 =?utf-8?B?UUFVNWlRWTl6K3dTZGViUWgxVzhYUkVPNkZqVEZtL2oxeEduK0ZNdUR2d1Zl?=
 =?utf-8?B?VE1sNVFlSENiYnRucnBUV1dSSlFCZlhqRTBMY0RNOXVFRXljTldySWZJSmMw?=
 =?utf-8?B?MWFLSTQ1NlJuRm9NVUdDUU9GNUdaUmt2WjhGeGZhWmM4NWRPTGNTdWw3STdC?=
 =?utf-8?B?aHhsQUEyM3pZaS9YZGtyOUJFTHAvZ3NJazQ4WVovdHBDZW1QQmhVaE9kR011?=
 =?utf-8?B?NEVkSm5OMTl4Q2JlVEgxTVl6SFZzYmVvM3BjcStWNTgvRjBlKzJyN3N3b1ky?=
 =?utf-8?B?d08xc0s2bDRXR2I3VlRUbnNKcmEyZVQ2ZHluVDhWMW5MQmdDT3JNSDNONjRU?=
 =?utf-8?B?Zk5ySHhYTHBNV2ZJU3I4NGUzcExNcUd1d1VNc2F3Qms1SU5aT2R6bW5JK2wx?=
 =?utf-8?B?cmE0T3NMQ1ozVC83WjRNQ3NIZlVxaVNhYWJPZGZQRU1mZFhOM1ZGVitZcWZO?=
 =?utf-8?B?bTlwODNsSWcxdytUcDYvTGVmbGxEQWFKUFlXRE1XaUNVWFRveDkvdXRYNFBi?=
 =?utf-8?B?Tm5jRWVBUU9JYjhVNHhwUTJ6aHVxNS9IR2NIV1Juc1VCWE9KaWVtcUU3dHU4?=
 =?utf-8?B?NE5mb1UxZ2VSdjZIbGZMcWRwYVBiT2xxUHdFNkNCbkVlem1nZEhob0NUckI3?=
 =?utf-8?B?bEM0VXI0SGE2QkVUOW5TL2szcXRUS2dJRGUvTkJmNzlMMEJLQWJwcUIvZlkv?=
 =?utf-8?B?L3NzSWU2a2Z3NHQvSHVCK1k0UWtEYnBHeFBRbElVTHpPTkNOYUhSL2ZzWUxY?=
 =?utf-8?B?V2tCbGdLN1pCWWZRbHB3RmhnR3hpUmdGUm54aFlWVDUvSHZNSEdJM2Y3ZGxu?=
 =?utf-8?B?UlpGb2gwUDBRUWQ0RFh3U2ZjSk9RK2VwK28xT3VRZDRpcHdFVWNXdElCMmhZ?=
 =?utf-8?B?VHlmRVhzQXlqY1dSdlpPdVJaSEM5T2lYSGdFVnV3dFUwdlkzZU9OVGlUWEYx?=
 =?utf-8?B?cmcwZTlQaVdBMnJQM21iTnRtbFBxNm9VNEI4UHRxTTJ0Q3gxSWt1M2lUdU1X?=
 =?utf-8?B?R0tBQ3BDMjZhbkQxYUNNZUJJakxOTkZZNzJldmF1bllrSldtdWx3WUpuQUdE?=
 =?utf-8?B?RnkzSE5KM3drQ1pZTHl5NDNieWlvazh3SnBpZDlYOGkrbnpwMkUyNTFUL2NW?=
 =?utf-8?B?TjZIQUlza2M0K2gxM1JybFhsb1lMOUwvZVRuRkVxRzBHR0ozcVY1T2V3bXRG?=
 =?utf-8?B?QlhyMFNEenhZV0ZVVkcyRmZFa3ZDenhDTWdJY3VqcUZnRk9ERHh1K3VuNHEw?=
 =?utf-8?B?cHRpOU54QUR1cTNOMG1Za3A1MWw2OUU0bEF6bGNZd3REcmpwMnN5TUZ0NDNm?=
 =?utf-8?B?VnhibUhVbnZoVHl2NFJFeXVKZHlEWGE1UWtXcWJlZmRkemdiZis3SmZuZTcw?=
 =?utf-8?B?aXJacEdKK1ZZOXh2RmQzZHhOQVVTN0NHUW1ka0w1L0NtSWtrbzhzb0c2SDRn?=
 =?utf-8?B?Rjh0dituRmMvb1lqNjgveU50eHdGL1hQdXVwTVlCUnp4eVhLZW13bzNYRDJm?=
 =?utf-8?B?a3NKUE9pOEM4SDM4TVIrMGxSWWtZaUhBYWdVRngxbnhsYmRES2hBb0ExL256?=
 =?utf-8?B?azE0T2wxWDhVNCtkNzZTVCtvV0ZTY0J4Yi9FSnlhN2F3UHhCTzZTVlloa3Fp?=
 =?utf-8?B?L214ZnRmMi93PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VE0rOEV2RTBIVmN6ak5DWUxrVVhyUVgzUnMrN2lHZzdkYXNRYzFSYjRmSG5N?=
 =?utf-8?B?ei9hSVZaLzgrOGV4eG84NlN2Q01uWHdBNEZqQzQyWCtSa0t3cUFIUUQ1WjY5?=
 =?utf-8?B?NTdGZjRuN2dVeWhsdk5XOVJabG4rM0ZBUGlWZGUrOXdJK1hKMGZYSWU3Nm5J?=
 =?utf-8?B?UE9HYktUQVFXWGdGa3d1aVFpS2hMRmNyanFpM3orbTd3QUluL1RWWE9rS1Rr?=
 =?utf-8?B?YlZQdDdaTUhWRTFmUldabVpBaWpSSE90dEhzbC9veXdhZnQzWUtiRzN1TnNM?=
 =?utf-8?B?b3JpUUkzV0phOURlK0lxZm5GUDhXd2U4eGRPVTFNSStaY0h3RXNsT1drU0FK?=
 =?utf-8?B?b0d2SWc5UXJjcnl3RFd0Nlo1Z2prcEhPbk5LaUJ4cVRlNHdSdVJkblF4a2dl?=
 =?utf-8?B?WWhBOTUxVC9hRkRiSFVaOUI5V2V6YWNKOTZwb2lqeFFiVjZ5Ykg4TG1IYk9r?=
 =?utf-8?B?MEhkdFdiRjdpdmduSHp6N3d5SWducFRjQUFhb2twRHFqZlV1OFc2T1FFTUh1?=
 =?utf-8?B?bDU1c2YxUEQ4TGRUZVZpSm5NRmdhaGVMNXJGODRIak5Lc0lPOEg0cmI1Tnp2?=
 =?utf-8?B?dWNlNlZKb09pV2hTbzNRQk5GUFU3Y0xZbzYrRjVmbkh4WW9wVWZSbGhMYkFB?=
 =?utf-8?B?M3YwU1FiQnJZak9ycTRxeWd2enVwd2ZhTFk2Wnc5eEpkSHBrZ1Y3VS9mT3VQ?=
 =?utf-8?B?R0NXcjBEYWRvOVVvdWhmOW00ZWhWUXh1RmZJclhEM05VektsYTlzaEI0Rit4?=
 =?utf-8?B?eU9WNXdWRTRXeENrVzVDbkQ4WHhKR1pDdFpuQzhQZWhwUTZreDBFVm90VWk1?=
 =?utf-8?B?RmI3OVNIM2VHVHJXQWcvck0xVTZJaW4wYWF5bXlpcVNpVENERW9Fb0oxMXha?=
 =?utf-8?B?dXNYajhXOFp5NldjTFlVK2dLMXNUYkZqbG81Wm9LWDBaS1pEaklKeU93Unly?=
 =?utf-8?B?NkZ5RzMzYWMrazEyVFJDQVVVelU4VHdPZjBCRHhuM3BTRFBFYWdEaCt0K21o?=
 =?utf-8?B?UStSVVZ6eXNPR2V1eUhBYmRGaTg0ZlBudCtHWGhMTTFxME4vVWd1dC96QnlJ?=
 =?utf-8?B?cm00VWljdDVaenNPTjB4c3JZWWhidTVnU0lLVE1ac3Q2SkV2S2dtL25LZko4?=
 =?utf-8?B?L09NZTBudE5DR2JIN1lzdmQ2elJOczRmd1lBVFp5cTQ5c3V6SjlBOSs2VG9B?=
 =?utf-8?B?cUZ4MXhUaFBZc2owM1VMdWJ1ZHZmemxTNzVQVFA2eTlXcFZPRVZZNUFaQ3kx?=
 =?utf-8?B?bXQrM24vRnE0RUFxMnlsWHViZFp1NE5EYmttakptemxUV0EzRG40SUQ2VWlO?=
 =?utf-8?B?Wm5zd2NTUlNyQmJ3YnZhTFlaWUNOQksvYmZwUlBNYWFVUllMTHIwTEx1QkI3?=
 =?utf-8?B?Q0lWSEVCajhZVXdzVzVCUklFcHRqZEVoVzNuVnVyeXhqL3pvcHJtZTV0dUpS?=
 =?utf-8?B?ckhCOGRDNjROekU0NUZGY0RMaW02L3dKRGxQai9nNlIyRUVOS1VNTXRCTmI3?=
 =?utf-8?B?RisyU2dTNzJBY0VhbVBHdnh5QlArVUttblhKdDlBWjdnbEwzVHBIMW01eUI1?=
 =?utf-8?B?TU8zRzVQMGkwQzZWOGNXcE5yYkI0cHFTcVFTKzZXbEpGN2hMTUpRS2VuV3Jo?=
 =?utf-8?B?Z09uTXdBdzRyYmlieDY3UEd2OGFLOXhzSjlQbGtDdkhsTzk2QXRBSk1XQnpO?=
 =?utf-8?B?WCtnbjU2SEtoME9NMWhaU1hkLzJTdEJ0T3FBNGVoWFU4V3JHZ0N5RUxRQmlQ?=
 =?utf-8?B?d0ZiK0F2MGNPNllDTEc2dlBrUVZsQjRCMFZyR2JTcWloNGtEZFNRcS8rb25O?=
 =?utf-8?B?NUIvWEtMV1c0KzVHUUhqaXgrVUxEbjM4bnI1QW50Q3V2clpjWUJHaDhaYmJO?=
 =?utf-8?B?QXR6ZENab0dRbk9MWHJnbHoxRUs2NFkyRkpLSERZdElxdWo1Z1QzUERHMngv?=
 =?utf-8?B?S1pONGc4SjlLclEvcTN2cGlPbGp4SG50bnIvZE1jcEtyUjJ4dGd2Mmo2VWov?=
 =?utf-8?B?cU14MXZNUkd6bWNMalNQdlZvMnd0UFBUYnFuQ25qNWZhVWNBdlFSSlNIRzBy?=
 =?utf-8?B?ZklSY0ZVSm1MQUh5MVVoM2Z5enBoS3k1ckpxQUpBSE1SUW4rVkM0NHlPWUVU?=
 =?utf-8?B?bFpYTzBNY1J6RTE0SFlvQXkrdlVaTisrQkl1MUllQTBNOTlFeU4yNi9EV24z?=
 =?utf-8?B?a0x6OHY2bEJGb042WFRUdkZTNXZaRFlKTCtOdUV4Zm94THgwNzQ3Ry83dHM2?=
 =?utf-8?B?TVpjdVdSNlVQajFwTENtdG00SnB3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CB51592216675647B201B9A635ECEE8E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ddcbaf4c-69ae-4be4-7e07-08ddeb8fa49e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 08:47:13.0535 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H03ACmJkBMPeVCXVrGF8TWfAl1HdpOqjKBniZEckzxNEyYrirckQaB+ysOflXtbeuE+sbLTXFlXbUcoIR3oTfgC0ojUJRjMCaYxEqukWDRk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6726
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

T24gVGh1LCAyMDI1LTA4LTI4IGF0IDE1OjIwICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
UHJlZmVyIGdlbmVyaWMgcG9sbCBoZWxwZXJzIG92ZXIgaTkxNSBjdXN0b20gaGVscGVycy4NCj4g
DQo+IFRoZSBmdW5jdGlvbmFsIGNoYW5nZSBpcyBsb3NpbmcgdGhlIGV4cG9uZW50aWFsbHkgZ3Jv
d2luZyBzbGVlcCBvZg0KPiB3YWl0X2ZvcigpLCB3aGljaCB1c2VkIHRvIGJlIDEwLCAyMCwgNDAs
IC4uLiwgNjQwLCBhbmQgMTI4MCB1cy4NCj4gDQo+IFVzZSBhbiBhcmJpdHJhcnkgY29uc3RhbnQg
NSBtcyBzbGVlcCBpbnN0ZWFkLiBUaGUgdGltZW91dHMgcmVtYWluLA0KPiBiZWluZw0KPiA0MDAg
bXMgb3IgODAwIG1zLCBkZXBlbmRpbmcgb24gdGhlIGNhc2UuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5
OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogSm91
bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmMgfCAxMyArKysrKysrKysrLS0t
DQo+IMKgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bj
b24uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmMNCj4g
aW5kZXggYWJjNGI1NjIwODNkLi5kNTYwMjZjNGVmZGQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYw0KPiBAQCAtMjMsNiArMjMsOCBAQA0KPiDC
oCAqDQo+IMKgICovDQo+IMKgDQo+ICsjaW5jbHVkZSA8bGludXgvaW9wb2xsLmg+DQo+ICsNCj4g
wqAjaW5jbHVkZSA8ZHJtL2Rpc3BsYXkvZHJtX2RwX2R1YWxfbW9kZV9oZWxwZXIuaD4NCj4gwqAj
aW5jbHVkZSA8ZHJtL2Rpc3BsYXkvZHJtX2hkbWlfaGVscGVyLmg+DQo+IMKgI2luY2x1ZGUgPGRy
bS9kcm1fYXRvbWljX2hlbHBlci5oPg0KPiBAQCAtMTgxLDYgKzE4Myw4IEBAIHN0YXRpYyBlbnVt
IGRybV9sc3Bjb25fbW9kZQ0KPiBsc3Bjb25fd2FpdF9tb2RlKHN0cnVjdCBpbnRlbF9sc3Bjb24g
KmxzcGNvbiwNCj4gwqAJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGxzcGNvbl90b19pbnRl
bF9kcChsc3Bjb24pOw0KPiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2lu
dGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiDCoAllbnVtIGRybV9sc3Bjb25fbW9kZSBjdXJyZW50
X21vZGU7DQo+ICsJaW50IHRpbWVvdXRfdXM7DQo+ICsJaW50IHJldDsNCj4gwqANCj4gwqAJY3Vy
cmVudF9tb2RlID0gbHNwY29uX2dldF9jdXJyZW50X21vZGUobHNwY29uKTsNCj4gwqAJaWYgKGN1
cnJlbnRfbW9kZSA9PSBtb2RlKQ0KPiBAQCAtMTg5LDkgKzE5MywxMiBAQCBzdGF0aWMgZW51bSBk
cm1fbHNwY29uX21vZGUNCj4gbHNwY29uX3dhaXRfbW9kZShzdHJ1Y3QgaW50ZWxfbHNwY29uICps
c3Bjb24sDQo+IMKgCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwgIldhaXRpbmcgZm9yIExTUENP
TiBtb2RlICVzIHRvDQo+IHNldHRsZVxuIiwNCj4gwqAJCcKgwqDCoCBsc3Bjb25fbW9kZV9uYW1l
KG1vZGUpKTsNCj4gwqANCj4gLQl3YWl0X2ZvcigoY3VycmVudF9tb2RlID0gbHNwY29uX2dldF9j
dXJyZW50X21vZGUobHNwY29uKSkgPT0NCj4gbW9kZSwNCj4gLQkJIGxzcGNvbl9nZXRfbW9kZV9z
ZXR0bGVfdGltZW91dChsc3Bjb24pKTsNCj4gLQlpZiAoY3VycmVudF9tb2RlICE9IG1vZGUpDQo+
ICsJdGltZW91dF91cyA9IGxzcGNvbl9nZXRfbW9kZV9zZXR0bGVfdGltZW91dChsc3Bjb24pICog
MTAwMDsNCj4gKw0KPiArCXJldCA9IHBvbGxfdGltZW91dF91cyhjdXJyZW50X21vZGUgPQ0KPiBs
c3Bjb25fZ2V0X2N1cnJlbnRfbW9kZShsc3Bjb24pLA0KPiArCQkJwqDCoMKgwqDCoCBjdXJyZW50
X21vZGUgPT0gbW9kZSwNCj4gKwkJCcKgwqDCoMKgwqAgNTAwMCwgdGltZW91dF91cywgZmFsc2Up
Ow0KPiArCWlmIChyZXQpDQo+IMKgCQlkcm1fZXJyKGRpc3BsYXktPmRybSwgIkxTUENPTiBtb2Rl
IGhhc24ndA0KPiBzZXR0bGVkXG4iKTsNCj4gwqANCj4gwqBvdXQ6DQoNCg==
