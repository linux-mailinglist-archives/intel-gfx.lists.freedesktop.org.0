Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 337CECC66A2
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 08:50:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A66210E34B;
	Wed, 17 Dec 2025 07:50:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="moBCnNSh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C89910E099;
 Wed, 17 Dec 2025 07:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765957826; x=1797493826;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=1Ih+F6Hsar98TZLXhzibP+240yerTGxxKCdQabtyfBY=;
 b=moBCnNShVSB33zPKK6Udgk6IhZl77pKfmhltP4d59QLoGEXHH7AB/hj5
 GPusJUVdfQN6b2/IeMCPdYZI9Q7brXXWdEyATwT1Mt+1DEHt7YIscLWVt
 OQlMrpooQpKTldCPsbXNkox4UejTrbK48sIuQToUL3VZq9YmzaCQyQCz1
 R/xxAqLyJ34MO7UkiGRVa0FBvBNQHn2EpD5G2E2rQKBQqN8/zO+ds8hRN
 EC7hgnJLWARujmgtOI2qwzBawcmb6ZNO5gnZA8IYENav3yO0RgDErak8s
 cxj/iqaQ5iKZBwzqWqGbCJaRAwbWV++H4sRk8hQqtYMszzJ32eXyrsuI1 g==;
X-CSE-ConnectionGUID: PlamkQ3WSFykxGx6NwVXjg==
X-CSE-MsgGUID: 6KWU0ElYTJ6Jhv1nvUlmRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="79258150"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208,217";a="79258150"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 23:50:25 -0800
X-CSE-ConnectionGUID: jUi2enenSbuRwFOB+jPBMw==
X-CSE-MsgGUID: 3Rkxvz5OQjSCysVXXvLW2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; 
 d="scan'208,217";a="198295851"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 23:50:25 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 23:50:24 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 16 Dec 2025 23:50:24 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.30) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 23:50:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FHtqj/0KWkTy7XZ5rukzizpun2jG7iFfwlKOQ8foBOYN92b9hqLQ6DJ20dL/ezzFbMhnfohIov7mYc4lAqma9Wz2y+Ury3AdCanQsiOuIN2E5xZZQjtGmmq/LFSDIsBqPzo/idZHDUDRCfrtRJJpknZoazmQQqr57gL90Ozt8zxqFAfSnVzyFvTaNbjsK4Qw03GFiA0aTvCpdbI2D2xxXvM8TR4ADKSxb4MjZp9dmC/IcdqBHD9ce76idTOXJ9DgbxRhQiCu2S3IxhMeN2yQzJTsyNVKJG5tisYhI6o/9tb1lJthwdoE13Q2qLrxRWXjx+FG8m3HuXWP+ozE9mEqZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ruKJyoAs3xii++6w++imGF/TMT49BvQHZhhvb5s5Dhw=;
 b=WCCgtGbzxL02IurKJ2SPDsSS74u0anNY7jAAKAgCmpryAK5ElYzzLokYbM3Lifyp+4qjUCnaroATc4z0qDCS2GSPyfpVptNjOjANfrEu9Y2CUCG6RXboDG/kpX6Np5cxuLsuGmo7JTsLYEmq+O5/I51xNC0hKTFnIVIuAhZoqCp9MZl1Sh90pfsW8s0asmWTLxgyUui3tvpNZD/sryLEap+QpXjJX5KdUd3rhrjeg5O9APB2Xh+AdeKSJJGIs2q8SAjeq4+topDObcChVDogb7yAjN8UFAajrqMHLWBonUAAc1RoVq6uTLp6w8XDFGAy8SavhO42FMyyVr9cAOumBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by PH3PPF9D9CDC305.namprd11.prod.outlook.com (2603:10b6:518:1::d3b) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.6; Wed, 17 Dec
 2025 07:50:21 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::e656:9300:fc6a:1b5a]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::e656:9300:fc6a:1b5a%7]) with mapi id 15.20.9434.001; Wed, 17 Dec 2025
 07:50:21 +0000
Content-Type: multipart/alternative;
 boundary="------------h2Cyski0xePWn3Kh4y5BABkD"
Message-ID: <7fbc8061-6e43-4fa6-9752-ab1f94f57a84@intel.com>
Date: Wed, 17 Dec 2025 13:20:13 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 9/9] drm/i915/display: Add DC3CO disable handling for psr2
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "Deak, Imre" <imre.deak@intel.com>
References: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
 <20251209113332.2770263-10-dibin.moolakadan.subrahmanian@intel.com>
 <212474a0884c026477653ee664c637506defadeb.camel@intel.com>
 <817d03db-522e-435f-994d-f7a25a4b8009@intel.com>
 <ad4e1829187881b80784fa951d73f07a490ff16f.camel@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <ad4e1829187881b80784fa951d73f07a490ff16f.camel@intel.com>
X-ClientProxiedBy: MA5PR01CA0153.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1ac::14) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|PH3PPF9D9CDC305:EE_
X-MS-Office365-Filtering-Correlation-Id: f8f8183e-3bf0-4f99-7e4c-08de3d40ede0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|8096899003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eUJpcHNaNVovVTJPMVdXTmdTeGJaVEhXNk94ZlNuU0ZxbW9jQ1VpWDR6UTVV?=
 =?utf-8?B?WHRNcEgyaWwrcHR4bXdiNTVrekhGWUdBLzdiOWVoZGVlL3lEdEdybTQxV1ZH?=
 =?utf-8?B?K01nYkttMjduNzhFb1FSSzNkMHFMMXMrdzhCRVd5VmpWc2FDdTkxUGF2VUM5?=
 =?utf-8?B?dkRJZXdHb2dGZWx1MEhER2J1MTNJSjBNdkwrMHN0TzNDM0dXcmNWcUJ5ek15?=
 =?utf-8?B?MWVqam1waTNzZnAzTHBNKzFHYmJKRjNoVTl2STBzQWhPTVZucWpXckVqZ01z?=
 =?utf-8?B?czB3TnFYT0J0aEZ3RUU1NWREZ0UyZEdtaC8wQ0lJNTZUOG8yaFkrMUtPR05S?=
 =?utf-8?B?akprMUFUWVFwemV3ZldtMm5zQ1JQNEdQSnNValNhcXBRVWx2enJUdzhJOGFZ?=
 =?utf-8?B?N2JKOWJLWUVGVVFHYjRRcTc1ODFBdi9oSmgrcUlBR3lJWXM0NXNhMTJDdTJu?=
 =?utf-8?B?WjVabkhTOVVmNVJuazY5dUZwc3ljWHZrdnRBYTRFQTQ3MThnNzBPYTVxZVRi?=
 =?utf-8?B?TnhUL0treG13Ky8ycWxMNi9yQkZEdnZ1RlhVelBhVWdQaHYxaCtLcnFqOEtL?=
 =?utf-8?B?ZDNnaWJmYnMwM1E4VXZJdTY4M05QOTBnSFE0RnB1Z3BCNm5OQTgvOFp2R01O?=
 =?utf-8?B?Wm00VWRyNGxnMmI4QlZhYlNuakJGUjNaVHI1c2xjUjg3RVd0MTZzSTF1QlR3?=
 =?utf-8?B?YjVZV2dGalJuVCtHWUJibnpxekFaSGxPMksvTjNLS1lDcHRxTGNtSkJjcExO?=
 =?utf-8?B?dFNlZUpnbjRPSXNZakNyYUJTbjZMUXp5cTBCQjZxVllGdDF2bm8yaE5iSnVV?=
 =?utf-8?B?eW8zT21vbFo0VmR1ZVlQVGlYTlllZStnd0thdEQxY2F1UkVGNFdOalVrQ0RV?=
 =?utf-8?B?citIbmp2djQ3NEtQdHlSTmJoSjNwaTh4Q0I5aExEQmlKL2UycTMwSllFQ0Jm?=
 =?utf-8?B?ZlFYNnRBemQ3UkZmU1FVTFpabGZxZjAvY09qb0w4TlM3Smsxek5weG9kbHRN?=
 =?utf-8?B?K3A0cXlMNzdBS0FLakxraDM4ZDR2OW55aThTY3FXYWJVNUtPTTRwTlZkUkRH?=
 =?utf-8?B?M3NZdGk4bER6NVA1ZEFZeHhoNXlzUjBPOXJlQk43ZE1ZZlhoTHoyTENpT0hn?=
 =?utf-8?B?YXI1RmNwNmJ6ZFRZakFMNk12QVRpaEVoZGJlMWtjSlUyY1owWmFRQ1JiMUpX?=
 =?utf-8?B?Vy9Tb2ZwQ0poK3phV3dSVU9Sa3dSWjVGd21BaFJwSTZVSjRPS3p4L0hFZ0p0?=
 =?utf-8?B?ME96dDNwOWo1UU84YXZpZEJkK2hUZVU5bk8yaFJMSzdGM3Vaa2VOcEJTRVAr?=
 =?utf-8?B?Wms3YUNUc1NYWmFqMFliOGhRV1ZVK2xSVmNkcVRrekgwbjk4eTNTUWJwQmND?=
 =?utf-8?B?T3VmbDFsNUxxNzhaMWxHamRISGc1WmJ2ckkrYnBzQThaL2RtLzNFZmZ3MHhB?=
 =?utf-8?B?RTc2eks3Zi95YzA5ZnFDQlM1M0gxYkV1TVFQSTlKaFFydzlqdHlwNTFmYWFE?=
 =?utf-8?B?Nis3VGdmcXRldUNhOEFySlpZZkdoa3puaFlZNlFyN0RSVmJBTWFqWmlTakpH?=
 =?utf-8?B?clJOV1JsVCtZcmV6Ti9wL1ZhdkdoS0JhRElHVzQxb3dLeDRUODlEOWFsdGEx?=
 =?utf-8?B?TVQ3Q2JYVXdYcklWSXR4Y2lTRDdzbGM0THNkekJzaTJXT2YwbEZ0YnFQUFhL?=
 =?utf-8?B?Wlk2RFMwcFlhSzF5VDNadWVBeVRHNXRrUjcrRTN4QlUweXFlSC9KS0M3dHd4?=
 =?utf-8?B?OWsxbi9aOGFIQ1ZjSVVuODJtdWlxNnBoSHpmdUd3cVRCaFNPelNnMzRodWc2?=
 =?utf-8?B?SVcwY1ZkQy81QTdDbFZldFdYaS9YbHlpUEJLajU3a29yMXhYam5Fb1lMN1V6?=
 =?utf-8?B?U0p4aWMwRXdXcHNOTXF2clVuSHJhZkIwLzYyK2w0elhQVzVFOGlib1g0TUFC?=
 =?utf-8?Q?P4JpcsVrvOAhp7hFspGJKuKTw6YaQe/n?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(8096899003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHRENmQwWjVFNUdZWk1pVWRSU0IrVUl5RG8rVnhJdkNVb28vZHpLVGdEak5h?=
 =?utf-8?B?aHEySzhvVWV5cGRQeHR0cmNLR09GQlJiV2k0akFXeTdpZzN1cnIvaWNUQXJX?=
 =?utf-8?B?MGZuNUpuMmxRVHdiaDRkcnRMM1FxUzQrSnZ1WmFsQ0FpR0JwbFlFM1cxUW10?=
 =?utf-8?B?SFQrWFF5cWxsYWdDSXBxL3NXZXNCdTNWbDhGLzhBbVkvUmwxVG1FQzVKVGEr?=
 =?utf-8?B?T2ZPMUpIVmFDRjdkN0kvM1pPdUxqc0JCOHA0Z0lwdDh3ZHc3a2NtRjIza0hT?=
 =?utf-8?B?ZVRRclc2OVNSZjZKMytLMkxUWUd2bmR4SHBOSzV1UXVBdFp6bUVoV2Z3bDNQ?=
 =?utf-8?B?QUR0TFAvQ1VUT2N0UEZFVEx2VVp4ZE52S01tbWNDc2tuU2pIZ1dnQlozcERj?=
 =?utf-8?B?N0RmTmhxNXdJSE9WWGJ1c0t6WDZCYzRFVjlYZHIxWSsrTDUzT1A5V04rWTlF?=
 =?utf-8?B?Tm5RNEp1RVY5cmIrejFZZUxmTGJLS0pkNXlwZExweEY4NFg3ay83VjZGK29O?=
 =?utf-8?B?dXJqenJjKy9mS3hmeGQ4ZG94N3hIem9lWktpaXNKNmlqaVdWdEFqdE4yenk1?=
 =?utf-8?B?MXViWkowR1pzU3U3YlcrelM3QTZYZkpUeko0dTY5UEVTUjV5R2JZZU14MkVN?=
 =?utf-8?B?M2ZkSHJTRGVOWEl5Y0VEd0Q3eWhLRmZQL3NOU0NQeiszU0hDcHJlUVBrdTl5?=
 =?utf-8?B?LzgrRlFROWtaamZuVkFzY1VsZVJ0S2hvcHNoMEM5QkFOSUpleHdJdUpmVVFT?=
 =?utf-8?B?VW1VTFQ0UEZYU2p0NGNmcHBrQTVrdzlCMzZkWVE5WEM4TWo5eXU2MzhoNzhR?=
 =?utf-8?B?NWFUUU0wNmVXbG1vcHVNdkNwT0NSV2NqY0ZXeHlNeFBOY0NrNThyV1dueENO?=
 =?utf-8?B?dXNzOTNUZ1VjUTZjK0piT3R2UDQvTjRsTmlkN0FkMkNRUzI5Q01wK1VLSWxX?=
 =?utf-8?B?ZVd5YWxtNElkOWNGay9NTGoyWmZSTjY5ZDBkQTBDTW5tTzJaTEdvWUxTV25q?=
 =?utf-8?B?dVlGNDlKWG5TNGxKM3lDRVlOLzZlenN6ZU90NFpjUnZtM2tTNFd3YUxwOXQ5?=
 =?utf-8?B?TFJJbWk5QnlWQ0laSjl5TlA5bDJFZXB2UFRJOTUvK0xiNHlUYWg3QW5TamIx?=
 =?utf-8?B?Tm00ejVKK1VhbGkyWHlTSnVtcVhVRmRUMlZQRGVpbDFGSVdRSkN3RnJlVFhE?=
 =?utf-8?B?T25JZ2UvUHZ4OVJXbGl2MC9RSkF1eFFITGVIWk9aTlpQQWVtejNoMTRrdUgx?=
 =?utf-8?B?RzVyVzNGVnhZMUtGWjUwRFQva2lJcmlIdzkzbEdsZVFGRWZLOEZ2ME5OdlM5?=
 =?utf-8?B?VlMyQkViY1RmaWl3RUF1Y09QcTNKTUdiaFlWdmkzWm1VTEJaangxcDhpUDJD?=
 =?utf-8?B?VWxhc0phWmNCWExKUzhxOGErSjU3UE5zSngyWVgvUWlaazh1dTRvMkNzbjdv?=
 =?utf-8?B?eDZQOEIxZUVPUGErZE5MRkVTbFFVQTVMcTk3M3Z1TW1Pc0R1T0EvRHQvZm12?=
 =?utf-8?B?VlRTT2t4VFIzZkU1Z3hJMXRvQmZvdW1NeE55TFlTcDlTVGcyQ0dYaENiZmNL?=
 =?utf-8?B?Y2FYQy8wR0VuT2FLOHdWa1RxYm1VdEZyUE5RYUpqTjI1K1ZjSHB5TFhqeXJz?=
 =?utf-8?B?MjM0NVBKYkRhR0pKb3MxMzFpOFhpdTlYSzNUekhyRkZOTk5ROWlRblJPdXhG?=
 =?utf-8?B?OFNUYk5yZDJlSldUYzVJdFVkNGdGT1Q3QVBEWGlTVjZUNHV4TDEzMEVZTjBk?=
 =?utf-8?B?cGp1cjdlVHdsQnFZTDRXNXFGQkdaYmR3ZGV4bHBuSW1HczkxRlh6RzBRTEN4?=
 =?utf-8?B?d0hQYkZ0VE90a0pBdXRRVXoyRGVmNnVNMlNLM01DWnhtdzBsZEk0cnRINmdL?=
 =?utf-8?B?TUkrMXEyaGJuWmlnanJYUUJ4UlJOTDAvVi94MjlIT3pLWGZpT3NwRng0VVRZ?=
 =?utf-8?B?NE04QWR6UTg2S1RxRnlUY3A0RlBTamE1WU9vdXZKcHhrb1A2REpPbTQ2OWZ3?=
 =?utf-8?B?aHgvVENqU2dUeUpLejhBQmJVTmFINGdFSjNHQkwyYldQOW85Wm01NWo3N0lt?=
 =?utf-8?B?a3grK0xQRjY3eVN6eVZOZ1JHWmVZRlFGSnJQRjRYSmdFREVieTZuYStJSi84?=
 =?utf-8?B?d3N0cERKakczS25mbi8wOWYzSWZBeGZqUjB4Z1ZjUm9BV1JnZ1E1eERGZ2RE?=
 =?utf-8?Q?Aq+C7rxSQZfMCh3718DOl2+Mkn7Md8b4ss/SOfKng7FJ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f8f8183e-3bf0-4f99-7e4c-08de3d40ede0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Dec 2025 07:50:21.5065 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AsZ6lgJFqOdz1xknnnMWN0TOTFvKQ3xGcAbzzxDccJD0s5we9Kuv1eDPNlxk8V960oNdIZhXe+IL/OZKv1wpNnKnRqDVeLG2HnH0HqQxsbFXZyirLbjd+UcEWwCErT2M
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF9D9CDC305
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

--------------h2Cyski0xePWn3Kh4y5BABkD
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit


On 16-12-2025 14:00, Hogander, Jouni wrote:
> On Tue, 2025-12-16 at 13:54 +0530, Dibin Moolakadan Subrahmanian wrote:
> >
> >
> > On 12-12-2025 12:41, Hogander, Jouni wrote:
> >
> >> On Tue, 2025-12-09 at 17:03 +0530, Dibin Moolakadan Subrahmanian wrote:
> >>
> >>> dc6 should be enabled instead of dc3co after  6 idle frames
> >>> while in psr2.(re enable part of tgl dc3co handling)
> >> This is for PSR and pretty much following existing (disabled) TGL DC3CO
> >> control. What is your idea how selection between DC6 and DC3CO will be
> >> done in case of LOBF?
> > For both LOBF and PSR dc3co will be enabled from intel_atomic_commit_tail() it self.
> > This patch selects DC6 after 6 idle frames for PSR.
>
> But how you are planning to do the same for LOBF? I think they should have
> common control.

Planning not to enable DC6 for LOBF, only DC3CO will be enabled in LOBF.

> BR,
> Jouni Högander
>
> >
> >> BR,
> >>
> >> Jouni Högander
> >>
> >>
> >>> Signed-off-by: Dibin Moolakadan Subrahmanian
> >>> <dibin.moolakadan.subrahmanian@intel.com>
> >>> ---
> >>>   .../drm/i915/display/intel_display_types.h    |  1 +
> >>>   drivers/gpu/drm/i915/display/intel_psr.c      | 78
> >>> ++++++++++++++++++-
> >>>   2 files changed, 78 insertions(+), 1 deletion(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> >>> b/drivers/gpu/drm/i915/display/intel_display_types.h
> >>> index 27f69df7ee9c..6ff53cd58052 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> >>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> >>> @@ -1759,6 +1759,7 @@ struct intel_psr {
> >>>   	bool panel_replay_enabled;
> >>>   	u32 dc3co_exitline;
> >>>   	u32 dc3co_exit_delay;
> >>> +	struct delayed_work dc3co_work;
> >>>   	u8 entry_setup_frames;
> >>>   
> >>>   	u8 io_wake_lines;
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> >>> b/drivers/gpu/drm/i915/display/intel_psr.c
> >>> index 18bf45455ea2..4be709d1d324 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> >>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> >>> @@ -1157,6 +1157,78 @@ static void psr2_program_idle_frames(struct
> >>> intel_dp *intel_dp,
> >>>   		     EDP_PSR2_IDLE_FRAMES(idle_frames));
> >>>   }
> >>>   
> >>> +static void psr2_dc3co_disable(struct intel_dp *intel_dp)
> >>> +{
> >>> +	struct intel_display *display = to_intel_display(intel_dp);
> >>> +	struct i915_power_domains *power_domains = &display-
> >>>
> >>>> power.domains;
> >>> +
> >>> +	if ((power_domains->allowed_dc_mask &
> >>> DC_STATE_EN_UPTO_DC3CO) != DC_STATE_EN_UPTO_DC3CO)
> >>> +		return;
> >>> +
> >>> +	intel_display_power_set_target_dc_state(display,
> >>> DC_STATE_EN_UPTO_DC6);
> >>> +	/* Todo restore PSR2 idle frames , ALPM control*/
> >>> +}
> >>> +
> >>> +static void psr2_dc3co_disable_on_exit(struct intel_dp *intel_dp)
> >>> +{
> >>> +	struct intel_display *display = to_intel_display(intel_dp);
> >>> +	struct i915_power_domains *power_domains = &display-
> >>>
> >>>> power.domains;
> >>> +
> >>> +	if ((power_domains->allowed_dc_mask &
> >>> DC_STATE_EN_UPTO_DC3CO) != DC_STATE_EN_UPTO_DC3CO)
> >>> +		return;
> >>> +
> >>> +	cancel_delayed_work(&intel_dp->psr.dc3co_work);
> >>> +	intel_dc3co_source_unset(display, DC3CO_SOURCE_PSR2);
> >>> +}
> >>> +
> >>> +static void psr2_dc3co_disable_work(struct work_struct *work)
> >>> +{
> >>> +	struct intel_dp *intel_dp =
> >>> +		container_of(work, typeof(*intel_dp),
> >>> psr.dc3co_work.work);
> >>> +
> >>> +	mutex_lock(&intel_dp->psr.lock);
> >>> +	/* If delayed work is pending, it is not idle */
> >>> +	if (delayed_work_pending(&intel_dp->psr.dc3co_work))
> >>> +		goto unlock;
> >>> +	/* enable DC6 after idle frames*/
> >>> +	psr2_dc3co_disable(intel_dp);
> >>> +
> >>> +unlock:
> >>> +	mutex_unlock(&intel_dp->psr.lock);
> >>> +}
> >>> +
> >>> +/*
> >>> + * When we will be completely rely on PSR2 S/W tracking in future,
> >>> + * intel_psr_flush() will invalidate and flush the PSR for
> >>> ORIGIN_FLIP
> >>> + * event also therefore psr2_dc3co_flush_locked() require to be
> >>> changed
> >>> + * accordingly in future.
> >>> + */
> >>> +
> >>> +static void
> >>> +psr2_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int
> >>> frontbuffer_bits,
> >>> +			enum fb_op_origin origin)
> >>> +{
> >>> +	struct intel_display *display = to_intel_display(intel_dp);
> >>> +	struct i915_power_domains *power_domains = &display-
> >>>
> >>>> power.domains;
> >>> +
> >>> +	if (!(power_domains->allowed_dc_mask &
> >>> DC_STATE_EN_UPTO_DC3CO))
> >>> +		return;
> >>> +
> >>> +	if (!intel_dp->psr.sel_update_enabled ||
> >>> +	    !intel_dp->psr.active)
> >>> +		return;
> >>> +	/*
> >>> +	 * At every frontbuffer flush flip event modified delay of
> >>> delayed work,
> >>> +	 * when delayed work schedules that means display has been
> >>> idle.
> >>> +	 */
> >>> +	if (!(frontbuffer_bits &
> >>> +	    INTEL_FRONTBUFFER_ALL_MASK(intel_dp->psr.pipe)))
> >>> +		return;
> >>> +
> >>> +	mod_delayed_work(display->wq.unordered, &intel_dp-
> >>>
> >>>> psr.dc3co_work,
> >>> +			 intel_dp->psr.dc3co_exit_delay);
> >>> +}
> >>> +
> >>>   static bool intel_psr2_sel_fetch_config_valid(struct intel_dp
> >>> *intel_dp,
> >>>   					      struct
> >>> intel_crtc_state *crtc_state)
> >>>   {
> >>> @@ -2117,7 +2189,7 @@ static void intel_psr_exit(struct intel_dp
> >>> *intel_dp)
> >>>   		intel_de_rmw(display, TRANS_DP2_CTL(intel_dp-
> >>>
> >>>> psr.transcoder),
> >>>   			     TRANS_DP2_PANEL_REPLAY_ENABLE, 0);
> >>>   	} else if (intel_dp->psr.sel_update_enabled) {
> >>> -
> >>> +		psr2_dc3co_disable_on_exit(intel_dp);
> >>>   		val = intel_de_rmw(display,
> >>>   				   EDP_PSR2_CTL(display,
> >>> cpu_transcoder),
> >>>   				   EDP_PSR2_ENABLE, 0);
> >>> @@ -2259,6 +2331,7 @@ void intel_psr_disable(struct intel_dp
> >>> *intel_dp,
> >>>   
> >>>   	mutex_unlock(&intel_dp->psr.lock);
> >>>   	cancel_work_sync(&intel_dp->psr.work);
> >>> +	cancel_delayed_work_sync(&intel_dp->psr.dc3co_work);
> >>>   }
> >>>   
> >>>   /**
> >>> @@ -2289,6 +2362,7 @@ void intel_psr_pause(struct intel_dp *intel_dp)
> >>>   	mutex_unlock(&psr->lock);
> >>>   
> >>>   	cancel_work_sync(&psr->work);
> >>> +	cancel_delayed_work_sync(&psr->dc3co_work);
> >>>   }
> >>>   
> >>>   /**
> >>> @@ -3475,6 +3549,7 @@ void intel_psr_flush(struct intel_display
> >>> *display,
> >>>   		if (origin == ORIGIN_FLIP ||
> >>>   		    (origin == ORIGIN_CURSOR_UPDATE &&
> >>>   		     !intel_dp->psr.psr2_sel_fetch_enabled)) {
> >>> +			psr2_dc3co_flush_locked(intel_dp,
> >>> frontbuffer_bits, origin);
> >>>   			goto unlock;
> >>>   		}
> >>>   
> >>> @@ -3533,6 +3608,7 @@ void intel_psr_init(struct intel_dp *intel_dp)
> >>>   		intel_dp->psr.link_standby = connector-
> >>>
> >>>> panel.vbt.psr.full_link;
> >>>   
> >>>   	INIT_WORK(&intel_dp->psr.work, intel_psr_work);
> >>> +	INIT_DELAYED_WORK(&intel_dp->psr.dc3co_work,
> >>> psr2_dc3co_disable_work);
> >>>   	mutex_init(&intel_dp->psr.lock);
> >>>   }
> >>>   
>
--------------h2Cyski0xePWn3Kh4y5BABkD
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 16-12-2025 14:00, Hogander, Jouni
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:ad4e1829187881b80784fa951d73f07a490ff16f.camel@intel.com">
      <pre wrap="" class="moz-quote-pre">On Tue, 2025-12-16 at 13:54 +0530, Dibin Moolakadan Subrahmanian wrote:
&gt;
&gt;
&gt; On 12-12-2025 12:41, Hogander, Jouni wrote:
&gt;
&gt;&gt; On Tue, 2025-12-09 at 17:03 +0530, Dibin Moolakadan Subrahmanian wrote:
&gt;&gt;
&gt;&gt;&gt; dc6 should be enabled instead of dc3co after  6 idle frames
&gt;&gt;&gt; while in psr2.(re enable part of tgl dc3co handling)
&gt;&gt; This is for PSR and pretty much following existing (disabled) TGL DC3CO
&gt;&gt; control. What is your idea how selection between DC6 and DC3CO will be
&gt;&gt; done in case of LOBF?
&gt; For both LOBF and PSR dc3co will be enabled from intel_atomic_commit_tail() it self.
&gt; This patch selects DC6 after 6 idle frames for PSR.

But how you are planning to do the same for LOBF? I think they should have 
common control.
</pre>
    </blockquote>
    <pre>Planning not to enable DC6 for LOBF, only DC3CO will be enabled in LOBF.</pre>
    <blockquote type="cite" cite="mid:ad4e1829187881b80784fa951d73f07a490ff16f.camel@intel.com">
      <pre wrap="" class="moz-quote-pre">
BR,
Jouni Högander

&gt;
&gt;&gt; BR,
&gt;&gt;
&gt;&gt; Jouni Högander
&gt;&gt;
&gt;&gt;
&gt;&gt;&gt; Signed-off-by: Dibin Moolakadan Subrahmanian
&gt;&gt;&gt; <a class="moz-txt-link-rfc2396E" href="mailto:dibin.moolakadan.subrahmanian@intel.com">&lt;dibin.moolakadan.subrahmanian@intel.com&gt;</a>
&gt;&gt;&gt; ---
&gt;&gt;&gt;   .../drm/i915/display/intel_display_types.h    |  1 +
&gt;&gt;&gt;   drivers/gpu/drm/i915/display/intel_psr.c      | 78
&gt;&gt;&gt; ++++++++++++++++++-
&gt;&gt;&gt;   2 files changed, 78 insertions(+), 1 deletion(-)
&gt;&gt;&gt;
&gt;&gt;&gt; diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
&gt;&gt;&gt; b/drivers/gpu/drm/i915/display/intel_display_types.h
&gt;&gt;&gt; index 27f69df7ee9c..6ff53cd58052 100644
&gt;&gt;&gt; --- a/drivers/gpu/drm/i915/display/intel_display_types.h
&gt;&gt;&gt; +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
&gt;&gt;&gt; @@ -1759,6 +1759,7 @@ struct intel_psr {
&gt;&gt;&gt;   	bool panel_replay_enabled;
&gt;&gt;&gt;   	u32 dc3co_exitline;
&gt;&gt;&gt;   	u32 dc3co_exit_delay;
&gt;&gt;&gt; +	struct delayed_work dc3co_work;
&gt;&gt;&gt;   	u8 entry_setup_frames;
&gt;&gt;&gt;   
&gt;&gt;&gt;   	u8 io_wake_lines;
&gt;&gt;&gt; diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
&gt;&gt;&gt; b/drivers/gpu/drm/i915/display/intel_psr.c
&gt;&gt;&gt; index 18bf45455ea2..4be709d1d324 100644
&gt;&gt;&gt; --- a/drivers/gpu/drm/i915/display/intel_psr.c
&gt;&gt;&gt; +++ b/drivers/gpu/drm/i915/display/intel_psr.c
&gt;&gt;&gt; @@ -1157,6 +1157,78 @@ static void psr2_program_idle_frames(struct
&gt;&gt;&gt; intel_dp *intel_dp,
&gt;&gt;&gt;   		     EDP_PSR2_IDLE_FRAMES(idle_frames));
&gt;&gt;&gt;   }
&gt;&gt;&gt;   
&gt;&gt;&gt; +static void psr2_dc3co_disable(struct intel_dp *intel_dp)
&gt;&gt;&gt; +{
&gt;&gt;&gt; +	struct intel_display *display = to_intel_display(intel_dp);
&gt;&gt;&gt; +	struct i915_power_domains *power_domains = &amp;display-
&gt;&gt;&gt;
&gt;&gt;&gt;&gt; power.domains;
&gt;&gt;&gt; +
&gt;&gt;&gt; +	if ((power_domains-&gt;allowed_dc_mask &amp;
&gt;&gt;&gt; DC_STATE_EN_UPTO_DC3CO) != DC_STATE_EN_UPTO_DC3CO)
&gt;&gt;&gt; +		return;
&gt;&gt;&gt; +
&gt;&gt;&gt; +	intel_display_power_set_target_dc_state(display,
&gt;&gt;&gt; DC_STATE_EN_UPTO_DC6);
&gt;&gt;&gt; +	/* Todo restore PSR2 idle frames , ALPM control*/
&gt;&gt;&gt; +}
&gt;&gt;&gt; +
&gt;&gt;&gt; +static void psr2_dc3co_disable_on_exit(struct intel_dp *intel_dp)
&gt;&gt;&gt; +{
&gt;&gt;&gt; +	struct intel_display *display = to_intel_display(intel_dp);
&gt;&gt;&gt; +	struct i915_power_domains *power_domains = &amp;display-
&gt;&gt;&gt;
&gt;&gt;&gt;&gt; power.domains;
&gt;&gt;&gt; +
&gt;&gt;&gt; +	if ((power_domains-&gt;allowed_dc_mask &amp;
&gt;&gt;&gt; DC_STATE_EN_UPTO_DC3CO) != DC_STATE_EN_UPTO_DC3CO)
&gt;&gt;&gt; +		return;
&gt;&gt;&gt; +
&gt;&gt;&gt; +	cancel_delayed_work(&amp;intel_dp-&gt;psr.dc3co_work);
&gt;&gt;&gt; +	intel_dc3co_source_unset(display, DC3CO_SOURCE_PSR2);
&gt;&gt;&gt; +}
&gt;&gt;&gt; +
&gt;&gt;&gt; +static void psr2_dc3co_disable_work(struct work_struct *work)
&gt;&gt;&gt; +{
&gt;&gt;&gt; +	struct intel_dp *intel_dp =
&gt;&gt;&gt; +		container_of(work, typeof(*intel_dp),
&gt;&gt;&gt; psr.dc3co_work.work);
&gt;&gt;&gt; +
&gt;&gt;&gt; +	mutex_lock(&amp;intel_dp-&gt;psr.lock);
&gt;&gt;&gt; +	/* If delayed work is pending, it is not idle */
&gt;&gt;&gt; +	if (delayed_work_pending(&amp;intel_dp-&gt;psr.dc3co_work))
&gt;&gt;&gt; +		goto unlock;
&gt;&gt;&gt; +	/* enable DC6 after idle frames*/
&gt;&gt;&gt; +	psr2_dc3co_disable(intel_dp);
&gt;&gt;&gt; +
&gt;&gt;&gt; +unlock:
&gt;&gt;&gt; +	mutex_unlock(&amp;intel_dp-&gt;psr.lock);
&gt;&gt;&gt; +}
&gt;&gt;&gt; +
&gt;&gt;&gt; +/*
&gt;&gt;&gt; + * When we will be completely rely on PSR2 S/W tracking in future,
&gt;&gt;&gt; + * intel_psr_flush() will invalidate and flush the PSR for
&gt;&gt;&gt; ORIGIN_FLIP
&gt;&gt;&gt; + * event also therefore psr2_dc3co_flush_locked() require to be
&gt;&gt;&gt; changed
&gt;&gt;&gt; + * accordingly in future.
&gt;&gt;&gt; + */
&gt;&gt;&gt; +
&gt;&gt;&gt; +static void
&gt;&gt;&gt; +psr2_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int
&gt;&gt;&gt; frontbuffer_bits,
&gt;&gt;&gt; +			enum fb_op_origin origin)
&gt;&gt;&gt; +{
&gt;&gt;&gt; +	struct intel_display *display = to_intel_display(intel_dp);
&gt;&gt;&gt; +	struct i915_power_domains *power_domains = &amp;display-
&gt;&gt;&gt;
&gt;&gt;&gt;&gt; power.domains;
&gt;&gt;&gt; +
&gt;&gt;&gt; +	if (!(power_domains-&gt;allowed_dc_mask &amp;
&gt;&gt;&gt; DC_STATE_EN_UPTO_DC3CO))
&gt;&gt;&gt; +		return;
&gt;&gt;&gt; +
&gt;&gt;&gt; +	if (!intel_dp-&gt;psr.sel_update_enabled ||
&gt;&gt;&gt; +	    !intel_dp-&gt;psr.active)
&gt;&gt;&gt; +		return;
&gt;&gt;&gt; +	/*
&gt;&gt;&gt; +	 * At every frontbuffer flush flip event modified delay of
&gt;&gt;&gt; delayed work,
&gt;&gt;&gt; +	 * when delayed work schedules that means display has been
&gt;&gt;&gt; idle.
&gt;&gt;&gt; +	 */
&gt;&gt;&gt; +	if (!(frontbuffer_bits &amp;
&gt;&gt;&gt; +	    INTEL_FRONTBUFFER_ALL_MASK(intel_dp-&gt;psr.pipe)))
&gt;&gt;&gt; +		return;
&gt;&gt;&gt; +
&gt;&gt;&gt; +	mod_delayed_work(display-&gt;wq.unordered, &amp;intel_dp-
&gt;&gt;&gt;
&gt;&gt;&gt;&gt; psr.dc3co_work,
&gt;&gt;&gt; +			 intel_dp-&gt;psr.dc3co_exit_delay);
&gt;&gt;&gt; +}
&gt;&gt;&gt; +
&gt;&gt;&gt;   static bool intel_psr2_sel_fetch_config_valid(struct intel_dp
&gt;&gt;&gt; *intel_dp,
&gt;&gt;&gt;   					      struct
&gt;&gt;&gt; intel_crtc_state *crtc_state)
&gt;&gt;&gt;   {
&gt;&gt;&gt; @@ -2117,7 +2189,7 @@ static void intel_psr_exit(struct intel_dp
&gt;&gt;&gt; *intel_dp)
&gt;&gt;&gt;   		intel_de_rmw(display, TRANS_DP2_CTL(intel_dp-
&gt;&gt;&gt;
&gt;&gt;&gt;&gt; psr.transcoder),
&gt;&gt;&gt;   			     TRANS_DP2_PANEL_REPLAY_ENABLE, 0);
&gt;&gt;&gt;   	} else if (intel_dp-&gt;psr.sel_update_enabled) {
&gt;&gt;&gt; -
&gt;&gt;&gt; +		psr2_dc3co_disable_on_exit(intel_dp);
&gt;&gt;&gt;   		val = intel_de_rmw(display,
&gt;&gt;&gt;   				   EDP_PSR2_CTL(display,
&gt;&gt;&gt; cpu_transcoder),
&gt;&gt;&gt;   				   EDP_PSR2_ENABLE, 0);
&gt;&gt;&gt; @@ -2259,6 +2331,7 @@ void intel_psr_disable(struct intel_dp
&gt;&gt;&gt; *intel_dp,
&gt;&gt;&gt;   
&gt;&gt;&gt;   	mutex_unlock(&amp;intel_dp-&gt;psr.lock);
&gt;&gt;&gt;   	cancel_work_sync(&amp;intel_dp-&gt;psr.work);
&gt;&gt;&gt; +	cancel_delayed_work_sync(&amp;intel_dp-&gt;psr.dc3co_work);
&gt;&gt;&gt;   }
&gt;&gt;&gt;   
&gt;&gt;&gt;   /**
&gt;&gt;&gt; @@ -2289,6 +2362,7 @@ void intel_psr_pause(struct intel_dp *intel_dp)
&gt;&gt;&gt;   	mutex_unlock(&amp;psr-&gt;lock);
&gt;&gt;&gt;   
&gt;&gt;&gt;   	cancel_work_sync(&amp;psr-&gt;work);
&gt;&gt;&gt; +	cancel_delayed_work_sync(&amp;psr-&gt;dc3co_work);
&gt;&gt;&gt;   }
&gt;&gt;&gt;   
&gt;&gt;&gt;   /**
&gt;&gt;&gt; @@ -3475,6 +3549,7 @@ void intel_psr_flush(struct intel_display
&gt;&gt;&gt; *display,
&gt;&gt;&gt;   		if (origin == ORIGIN_FLIP ||
&gt;&gt;&gt;   		    (origin == ORIGIN_CURSOR_UPDATE &amp;&amp;
&gt;&gt;&gt;   		     !intel_dp-&gt;psr.psr2_sel_fetch_enabled)) {
&gt;&gt;&gt; +			psr2_dc3co_flush_locked(intel_dp,
&gt;&gt;&gt; frontbuffer_bits, origin);
&gt;&gt;&gt;   			goto unlock;
&gt;&gt;&gt;   		}
&gt;&gt;&gt;   
&gt;&gt;&gt; @@ -3533,6 +3608,7 @@ void intel_psr_init(struct intel_dp *intel_dp)
&gt;&gt;&gt;   		intel_dp-&gt;psr.link_standby = connector-
&gt;&gt;&gt;
&gt;&gt;&gt;&gt; panel.vbt.psr.full_link;
&gt;&gt;&gt;   
&gt;&gt;&gt;   	INIT_WORK(&amp;intel_dp-&gt;psr.work, intel_psr_work);
&gt;&gt;&gt; +	INIT_DELAYED_WORK(&amp;intel_dp-&gt;psr.dc3co_work,
&gt;&gt;&gt; psr2_dc3co_disable_work);
&gt;&gt;&gt;   	mutex_init(&amp;intel_dp-&gt;psr.lock);
&gt;&gt;&gt;   }
&gt;&gt;&gt;   

</pre>
    </blockquote>
  </body>
</html>

--------------h2Cyski0xePWn3Kh4y5BABkD--
