Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D44FAC2D842
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:44:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE1F310E4A4;
	Mon,  3 Nov 2025 17:44:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vvq5burP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51F1F10E4A4;
 Mon,  3 Nov 2025 17:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762191886; x=1793727886;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=SRYF8TdxYh3BwhCxqXccxBBBx+wykqpAD94UqNyXNTU=;
 b=Vvq5burPopVMj2QF62opC6smYLFmU/jrhJEsPmywsTJhOmG2AeBJxxru
 NYT54mF+BwDK10Ov7iG4mYYBGBBUomKHrfLsZ+nfStejH3udezNorCNVE
 3Qlwv/AZ5spKgGbEaLU100gmWwa8n3zIUi8URzYzW0EZgGNjWsQmoe+/G
 N8hl9xZvWf1bpl6UcDFL1KlGaf27nF/h+Kjm0xr8nk4/eCsY0f9Ejk9Hl
 y95R8FwMBxVuoKoEJgAQajxF8j3iXHk0UoEST4J63R+mcOnRVcnHQZ+86
 I34Hl4dz0BKi1OAHDuyeG1ETlVyyoUMgZ8FzqSjsbBFkqKK1ZPeSSLLjD w==;
X-CSE-ConnectionGUID: AieHvWwRTMiyLF9SWDh2EQ==
X-CSE-MsgGUID: FxaRR/IqTkGtZ9HhHJNvlw==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="81903640"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="81903640"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:44:46 -0800
X-CSE-ConnectionGUID: s2VMcUHNRte5ThzKPmj9MA==
X-CSE-MsgGUID: +wF1SOeCTGyQ6RLFTwoKNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="191248626"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:44:46 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 09:44:45 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 09:44:45 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.58) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 09:44:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O4+JFIE1AHWNkuAbjGmRDCRp0cc6YRel7iqgooN/+sI158taIkOjdNQwfwSrUg5QALvrcM8KKYUgPKd49FeISH+fJYVH2f5Els80vl3kS3tbfgWiBVLKkC1g+eDKtuWwOUV2IwIRiAqiX3M7GyUdUzIzKSaebNJJYVN0lMYnVuTyH3onqgVqs+Lvd21biLrvcbiuz+pV29GJxc4+Tx0jr/eTLuZUewdO0sxdRhBzljwgVgvttoAhrrGNND+oSbDIeQfWa5jki8AlPqhn4uwMKSDJIQD0rqTpsnypQ0uieX6UymovZnkUGjR+HQuzw8UTo+J49TXh0Piy89kW96X2Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ccIF6MoeNB6eKpQ/pyXp9MvtzpvWiWQIBKHXgfN+S7o=;
 b=Pk0bhaHPwsdu+KeEXAkVqy3W9s1nIcrvt8GUZn0/WxsnbjJN+SUqx0TgpS3oJdlmBHTqz27xU7j6iy+9JhL8dpp1OGKEko+yTvLeIsXqpifaEtm5mgSx2NUf/9ySx986GWRZ0b4g7Wk8SdjTB6pDVsqipazGB8m1x5pwBXxpSwDFaixJCsiZPr/sJPgPo6TyFea0OBTaGT1lmJ3USDgIU7PiIQqqWxtrTXaFqyV/FG2OF7tOpXB23JkM4iZ2QIFTejBZW4NgkieF6mSn6Rct/PbenMsMh1OEQFlNM1CdQg7ZT8cPgnZWZWeHnq5ct1usrxGn9iDEsIIS5TASe15YjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM6PR11MB4546.namprd11.prod.outlook.com (2603:10b6:5:2a7::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.15; Mon, 3 Nov
 2025 17:44:43 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9275.015; Mon, 3 Nov 2025
 17:44:43 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251103174223.GF2980942@mdroper-desk1.amr.corp.intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
 <20251103-xe3p_lpd-basic-enabling-v3-27-00e87b510ae7@intel.com>
 <20251103174223.GF2980942@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [PATCH v3 27/29] drm/i915/display: Use platform check in
 HAS_LT_PHY()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Suraj Kandpal <suraj.kandpal@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Date: Mon, 3 Nov 2025 14:44:39 -0300
Message-ID: <176219187916.3586.5937760413407249057@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ2PR07CA0007.namprd07.prod.outlook.com
 (2603:10b6:a03:505::12) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM6PR11MB4546:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a20aa85-17ae-4311-976e-08de1b00abd8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cXU5dlVyZUhpR0MxZlhweTI0blJMeGt6S2NGeXNWV3Z5N2FWV1JtQTZQOCtx?=
 =?utf-8?B?OHlQeFRHYmRpbUVrdyt0c3hpcDEzTjFkb3Fya29wQktpOGVpZFJqTnNYMHY2?=
 =?utf-8?B?LzQ4NzNwek5CUjdxOW11cFhsOWVuWjRzR0tsNGpaOVd2RzFTRXREVTQvdzAx?=
 =?utf-8?B?YzJLdS9HczZNa0ZMSWZZVW5iYjNHSHNGQUpwV3J5VkhKNDJpdVZQZFdzS2dU?=
 =?utf-8?B?SUNCTE9nVDhZT25HTVIzRkIrZysyZVF3eFp1SVBuaXpvcERRTTBrN0JRSWtO?=
 =?utf-8?B?YS9wR3RubGx1QVpSYkswNGtPbXpTMXRBVk5XelNwUmR2ZFJrU25vT0lwSFFK?=
 =?utf-8?B?NjJoQjlxV1ZhdnFvQTFaemxmU2Z3aWx2SEJlclVZM1EzdEpTL0FiUUU4dnBH?=
 =?utf-8?B?a21lQ3k2ZENOdmVOYldVcVlzQnh3dlFHajRiaXhybDlFV2d5THljeTQ3SEp1?=
 =?utf-8?B?S0gwTVY2MXdsakJVV1JxUDBiTlRjNUlWeWZiWmthUDBSQnJSeCszdC9Tb2Np?=
 =?utf-8?B?WUhzeVNyYk5mTjRxMFNCSkJWVjlPY01VKzZ3SmtCTEVXQzZyOWIwb2FVMncz?=
 =?utf-8?B?R0pMMVEvSy9nNjk5bXNSS2V2ZTQ5bFV4SHZLVzBIcU0rQlpzVVdaWmI0NHVz?=
 =?utf-8?B?VC8xTFRjQnc0Q25vd0hsMXNZczlWc2RXRUdxZmVsR0l1dmpZNlpmSW9XTE54?=
 =?utf-8?B?dFdweWdDMTQyUk1MckJTb1lrSFd2bnBOYzkyYktQbTY1SWVGZWJwcDBKbTVY?=
 =?utf-8?B?WEZDSlpSU2ZHcndzaldvZlEzR2M0N3pUakh3TS9XeFNFVmFDenRtMG45VGVj?=
 =?utf-8?B?SCszZUVPeDdXcjZBR2NQS1ZZMDRsSEs5aEwrZkpzaENGRE5hYnZNd01IU1do?=
 =?utf-8?B?bTBmYU55UnBtM2IvYkQ1c0p0eHpRbHZkTFpkTzRpY1Z2N3RyUzlEZ3FpcnhH?=
 =?utf-8?B?aFRWQ3JNRmlzQlU4Y1pwK243U0NZQmp6MzdjN0g1T3B6SUFDREx2Vnk2VTla?=
 =?utf-8?B?RktqQmxDOWFuQWt5Ry85SFM2dXNyU3ljT1FLM3JvcFFiYWdKVmdQaVlzdUIy?=
 =?utf-8?B?bE5lL3M0UXpBVWdPc0l1bzZxSWdoMS8zRTQrRlVFemNGYkl3UHg0bEQvNkRV?=
 =?utf-8?B?R0FxWVp5SDNYSTRxcGx0TU5sSVBON09JamN4aitSRW9TZlZMMFg1bDRtZW9z?=
 =?utf-8?B?TGdIajNnaSsyd09oekpyZ0ZDVmlmc21BVWtrN2wvRGZ1T2pWMlF0bkZ1T2Fx?=
 =?utf-8?B?elFVSjcvaktkMnBKL3kzUkZSL0VWSnRBTk14VGtlVG1waEhES3ZaSHBuNVM5?=
 =?utf-8?B?bFdWZnRwd0I3U2hGelFhNVdGSU16d1FsOTBQWXVyM1FlVzlETWo0UjAwdVBl?=
 =?utf-8?B?VnlhY0N6THlXOGtQSG5hNmdJT2N2MFNNblQwTk9QeFFPMGJPSmE2bGVMWE9G?=
 =?utf-8?B?RkQ0enR5Z3V5RGYxdHRhZkF4c3JzWDJ0OXg2WnVpRm0wenY1UVdkZGFYMTl0?=
 =?utf-8?B?MXlsRy9lR3NrbFBYWWZpTU5uRkJ3Z2FocmQzYyt0MVJtcnk4K0JDdUdjQnhO?=
 =?utf-8?B?Z3MrdDF0MVBueiswUFkzVXJaaU8wK1I2L3Z1YkhtTUFRaWNsUU9JM2JZR1c2?=
 =?utf-8?B?RC95a211L3hJcy96ODF6bUV5UTFRWTlCYjZCK211dlRQc1JXT1h0aC9IV0Jz?=
 =?utf-8?B?MjNYZS9QRzN4cU9tUU5TOThDUDVQTnBEY1N1QzQzYml4Q2oydmlWcFNUak5S?=
 =?utf-8?B?VzZCdGw4amJnS2diUUR3eTBucEQ4aU54aC9IZHgzZ2pIaVBUZzVpa1E3QjV5?=
 =?utf-8?B?ZDNLTjg4NzNVYS9ySmZsc1h4U2ROQWh0QVo5Y1pGUzFhN2JxOXVyTkl3enFH?=
 =?utf-8?B?OW5KVG1oZkkwOS9SUnJrb1dqUmVlNUZuNFVCN2NxMjdFaDZpeXducmZFRytN?=
 =?utf-8?Q?Bu1ro2xD8sXrMlM4GNDFO9bZeK/jmZBz?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aU50aTRQL2VrWFRhNjEzRUtiWXFNcnJjTWFoUUZiYzhNK3Q2bHNhbGZZbGRk?=
 =?utf-8?B?aHpLbmVGTXk3NWtKeHhidk55NmpjZmVOUFBJZzRIczkyZ3lPSlJCSkViZC9a?=
 =?utf-8?B?Ky92ZUZiTXh5MVRXZFZWeWY4c3BDZjI5aThMcURqZWpwdmMwQzZTWXQwMjVZ?=
 =?utf-8?B?ejc3UUVmVFdYN1lic1JHZ2d6SE1yaThRZEpPb2NUdjBKT1JIWmxmWHk0VkNG?=
 =?utf-8?B?NU10WTRQWFgrTHFUSDE1ZE9jT3ZjQ09JbERZV1NnM0hmem5pZmorakEvalA0?=
 =?utf-8?B?MjdyME1kUE0yOGR0Y1A3T1N1RUt3Nk9KejUrY0NodWZVRXRwd2I1SGhaV3hF?=
 =?utf-8?B?dlhlOTQycGFWdVRrbHVQR0FlRXdTUlJyNFVTVjN4cnJJYThlTDFOcVBtVEww?=
 =?utf-8?B?NmtmWjR1V016ZFhhamNSNGwxdTl6bVl1WGdnVzR1dDN4dU50V0FwRTJ5bnNs?=
 =?utf-8?B?Y0tIaG1UUWIxSWpBTGd1RTF1TkxJdkZ1UC9GYmpMQUJCcTJiY0I0d0VZaDIr?=
 =?utf-8?B?SDhRa2FDYlJpbGNJLy9BYkdlb2FLbHFxNHUvT3hlN2NUckVEN2t4UFlSV2sy?=
 =?utf-8?B?WUVRY0wvREZGUy9ZSlpaS2QxQUtBb3lGd1RacnVZYVZsM1lBKzhBMWpkc0dR?=
 =?utf-8?B?ajNTZVozUHdLVzdwK2YwcnVxQVd6VjlXcjNlTGVuK21RR2NVZFUweml2bm0z?=
 =?utf-8?B?Rk5TS09ySGtBM1NVSW1nSkFGY1dVUVNuY29OTm5WUVRhcTZjdm9Jb1d0UHlU?=
 =?utf-8?B?RSsrSEFRaXFCbkwrTlJ4ZC9XL2VFeldUNUd5U1hLM2FDWDgrbnIrQjhlMVY5?=
 =?utf-8?B?U2hMTit3clhDNWgwVzRlVkJ1c1NHNHFNeHArTDdxa2VtTCtVTEx5RzB1cCtz?=
 =?utf-8?B?V1NDNmdUQjUyQ3R4OENHeFpEakNDdE9sbUxCZUtHMUlidHd4UjdoUGo0dWNi?=
 =?utf-8?B?cDJsaWlTaldjV0tLT2VFcS8zOUFQYlNjSFJvWWNHWFRyU0FRWFlGZzRVLys0?=
 =?utf-8?B?SjNjNEVRRUoxU2JKWEtMZmQ1L1BKZXNUZ25EcFJrQ0JtMkU0VG1Fd1QySDZw?=
 =?utf-8?B?eXVSeW9KTmRsTFpmem1rc3JKT3NpdFMwa0lHRkJFeENyZHhHeU1zVU14eGZ0?=
 =?utf-8?B?Q2ZZczdIenlDOURNN0lNVldySmE5V0NXVCtVUUlxSmFCN2RaNUh6cnRUdmNX?=
 =?utf-8?B?d2tLWXI0ZXRMK0oyZGlmalBtR1BWdXc3VzZQalRXeXl5MlFMakFMVCtNdVkw?=
 =?utf-8?B?YTRiMG9hYURZR1U5VndRMFhPL1Q1NjJWR1dRUVp5Wnk1UU5xL0ZRQnNZSks0?=
 =?utf-8?B?b2dmVUFOaXVBaWhZUGpZQW15UVVLZDRGVFdvWGV5cUpCcm9hcTNqa2k4bjNn?=
 =?utf-8?B?aHlMbmdIS24xeldEVlFXdW5wZ0NoRFMwZVpEd3I0TFg1YS81bG05RDNUUzY0?=
 =?utf-8?B?OUVBbVc3RWFUY2MwNktNSFYvejVkZlBQQzV0VUVsMHliVGwyeDFYZXE1L2xn?=
 =?utf-8?B?dk1nQkgwaTM5WndWYkRDdmQwSS9Fa2hEbDlxRkhDVVk2ZFA0dmIzWmUvQW0r?=
 =?utf-8?B?R3dDTGcrRWx6dFUzSFUwRzNQSXVQendoamxaRkpoQTNSV1QzS1pRaHhlZUhl?=
 =?utf-8?B?V2t0YXFqMkx5MFU4L1h4YytwRnd6VTR0QUEvU2Rwb0psRFRyY3I1eDVjbndY?=
 =?utf-8?B?SHF1Rm1hZWFWTTVaWmVtMlUweWMwSFBpRURGcDB3aFdXcGxjczlwOXY2SnBO?=
 =?utf-8?B?a2FFL1FXU0VOKzZKWHlhZGpuNnR6STR5S2NUQU5qRlIvSDZCOWgxRTAwekgy?=
 =?utf-8?B?YUMvZDRnK2Z0bDR6TW5oaGR5Z3diNWVhemxLRzh4MnJhMWdOZ3EvV0Z2cG0z?=
 =?utf-8?B?T1hJVVVhUGdITVV4eHlRcFhKdjN2czlRTkJ5bVBUQlI5dW1TVzN6RVBCak1G?=
 =?utf-8?B?OHBQcGY4QlIyQVE4TDl5WnZjTUMrV04wWHdaaFQwdmx1dk0vTzM3dUc3OUVB?=
 =?utf-8?B?T1AvRkk4Ym1xcDR6WHI1M2hKQ2xXVDFoazRCUEhxTVZEWk05eEJ6c3FnNEs5?=
 =?utf-8?B?a0ZTeHJMMU5aVTNEemJ5a0daSDNFYlpHK1o2N3pQZUEwaDlNV2YzWE1UUmoy?=
 =?utf-8?B?UkRZMDY5L1ErYmRsd0ppQlFyZGJHTThHanZES3VBRnlUTXZwLzVDZWxtTlRQ?=
 =?utf-8?B?bEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a20aa85-17ae-4311-976e-08de1b00abd8
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2025 17:44:43.2075 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wBNRa5TT6mhd7rERj6t4P+UIRb9dee4gzUvE25NtQNVybPObSW+BHnbTsd6MFzk8/D2BvUsCOgZ+uJSv9wvgfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4546
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

Quoting Matt Roper (2025-11-03 14:42:23-03:00)
>On Mon, Nov 03, 2025 at 02:18:18PM -0300, Gustavo Sousa wrote:
>> NVL uses the Lake Tahoe PHY for display output and the driver recently
>> added the macro HAS_LT_PHY() to allow selecting code paths specific for
>> that type of PHY.
>>=20
>> While NVL uses Xe3p_LPD as display IP, the type of PHY is actually
>> defined at the SoC level, so use a platform check instead of display
>> version.
>>=20
>> Bspec: 74199
>> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>
>Eventually we might need to make this a true feature flag, but this

Agreed.

>works for now.
>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Thanks!

--
Gustavo Sousa

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_lt_phy.h | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/d=
rm/i915/display/intel_lt_phy.h
>> index a538d4c69210..034c20c66baf 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
>> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
>> @@ -39,6 +39,6 @@ void intel_xe3plpd_pll_enable(struct intel_encoder *en=
coder,
>>                                const struct intel_crtc_state *crtc_state=
);
>>  void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
>> =20
>> -#define HAS_LT_PHY(display) (DISPLAY_VER(display) >=3D 35)
>> +#define HAS_LT_PHY(display) ((display)->platform.novalake)
>> =20
>>  #endif /* __INTEL_LT_PHY_H__ */
>>=20
>> --=20
>> 2.51.0
>>=20
>
>--=20
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
