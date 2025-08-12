Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 904E6B22251
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Aug 2025 11:05:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD5CE10E5C9;
	Tue, 12 Aug 2025 09:05:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TCeqKvfx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27D5610E110;
 Tue, 12 Aug 2025 09:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754989519; x=1786525519;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=47nscbq+sB6m2FsX1lTqAbElkp/Qj7jDwQ9uWu5/4z0=;
 b=TCeqKvfxGuUWZimYks+sY6zgRUEY7A+pgJOq7zmAlCpDu+lKPpi760Bn
 VfZ3RMW9j0Z/MpyjEgDnBm6BRQX1xclMEWyYkR9nS6Tqk9KeRbcrFTyo2
 7NsYrkqqttm7GrY5FJsb7VF34U6joOzq1h6BkBpuEbCnvZk3JJKX267qW
 1GEFlGER4VWs2asjQkGSISnLCOQHLnlNbZ/e6vv9nj43j/NOm6st3HdnB
 eewljI0f54rDJnSha+kAFVcfo2T2XsTBK2nEcBvKKHHvXUD4u6OEz0Nhf
 fGr/4vCBgCcH+o+oxm4ml9Z1RC1veGbZW8nUVT7KmgAO+VoyIlgwQ8GnX w==;
X-CSE-ConnectionGUID: BmVeQoBaTRaLHcfH9gw4iQ==
X-CSE-MsgGUID: S2SfVvCSTvKiH9WkQ9ifXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="57179002"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="57179002"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 02:05:19 -0700
X-CSE-ConnectionGUID: BELvwtWESk6d/r347oITXg==
X-CSE-MsgGUID: sZGCSPz0RiekHovaIJqJqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="196992763"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 02:05:18 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 12 Aug 2025 02:05:18 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 12 Aug 2025 02:05:18 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.80) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 02:05:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W6IaasjpUAkE7dhJaPrx+qb96TNI8s2ieTYlWegu0jgr8aBO7YrChCrKtHLFhaNp3f2D34qEqJ0EsU5tjJP21dodhFN10o1u8eBadYem0eKPBktf2W+ee2RdnluQO/edhcL+fDLNKF/xlI/dVRkBQtnU4XSPxC5QCvt/XsyHJJBzEeWT17Xbq4S5wJmBJoxMqKtp12MY5qK9lydL2Xf0JzBwETONI132eJRIsRC1D5bzs8Fdv48IvVcyT1jsloka8TxD6QHv0Ly9j5r+cf8z5ImegIAWezXxWa1atBxMJbfdmsw1NrsKlmXTSrsHIujF4X6wM9rpKqmCR+er+CGWqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uSwE84AwcBUFuFIoDXGC/Wdp8EIYZ260uxnwQFX2VpI=;
 b=Sjdd3UDuyqinFZtj/PeJqg0foJdcGBfHRMbYHK3FZ8LsNx17JyY8mEq2/4zXRSmYXK0xcrL0UscJYWvjnV/SR16Ub57buoYRhifpPa799fT1y7/knqfS3D7LE4ksbsHXsD2hvJeSjIw4VnzeQwkfZXbKcwrV/D6O5e1Qyiot0mbZxobV0iF3oIa6z0REh06n8+ORzusvshqZrjTKm9rPiwUY5ijnQVjH5Tbkj/4WG4AA0hL2W5i8FNMeY2xCNVA9jib4/JDETF5garG723jkChW98amu5JXBTgo2K9TkkLwE3CYm/kEr91PaNygenxHm7ab9wJxiqkgWLWXHLTTz3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS7PR11MB7738.namprd11.prod.outlook.com (2603:10b6:8:e0::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9009.21; Tue, 12 Aug 2025 09:05:16 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8989.018; Tue, 12 Aug 2025
 09:05:16 +0000
Message-ID: <45a8453c-0101-4900-b006-921ac753d845@intel.com>
Date: Tue, 12 Aug 2025 14:35:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/7] drm/i915/psr: Add intel_psr_use_trans_push to
 query if TRANS_PUSH is used
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250721111406.1468064-1-jouni.hogander@intel.com>
 <20250721111406.1468064-4-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250721111406.1468064-4-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0095.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS7PR11MB7738:EE_
X-MS-Office365-Filtering-Correlation-Id: b3c68906-4b66-422b-5179-08ddd97f5a80
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QzFCV29xRFdoK05lYUYrYWhTazB2V2JSa0J1b2lKai82K2RpWWVzd2N4WEg4?=
 =?utf-8?B?OGhrUkJCUWwzSXdQMlgxSk9rRllIU1JqMGgvRzdMelBDVWpVekV0QkxzdXd2?=
 =?utf-8?B?OUhsOGhQTnhYUVZlZncyRjRoTERQdlpNUHpQU1YySjZHUkxLUEtRT2kvYndD?=
 =?utf-8?B?eTYvRC9EN0NyTTJsUDBmQmxGVStTVnhlNUJMdm1ROTRVaDE3MUlmdXhDZVNz?=
 =?utf-8?B?bEdhdlpxWUY2cWdJSFJnbkVWZTlRWSsvWThUOG5qRkJmN0tNMVU3Vk9RcEpG?=
 =?utf-8?B?akZBdUVvd0JCR0R5aVArVDZ4THJvVmVmR2JXaXJFZXpNekV0czZzRkt2eXFP?=
 =?utf-8?B?MjNnallCdThJamVNUjFjU0RDQkdGbDBtWGQ5L3NWckJZK1poY0pUV3VPSXVw?=
 =?utf-8?B?ZE5OVzJvTVRpeW9VM3VDalhOUXprbCttZjhkK0EyTWE5SHY5YjJuYWpRSUJI?=
 =?utf-8?B?U1VzMW1kSHlzcWt0VEM0cXdaOFdtQm9POXF5L3ZFV05PVFEzRnR5R3J4ZDdq?=
 =?utf-8?B?SGQ5TGlvSVI4a20zbm9maW12UUxKTUFIM2dIdk1xQW9jSWNqNGcrZUNhY1Yv?=
 =?utf-8?B?N3ZmT3hTN2tOSjZIUU41dDY4bGhsOUE1RmtoeXVYM08zK2k2NUdrMWpyNFNn?=
 =?utf-8?B?UVgxVFp2bENUWEE2blRPRTEwbVJ4bUZycjVsOXIzTGdNR0h6aDZkdU9tNks1?=
 =?utf-8?B?VHdsZ1pZNGRzbFlOUEJ0U1NTSzhkUWluVW5lRkxCcFRvK014eWltUEVna3RU?=
 =?utf-8?B?Z0xKaFpUZGdaV21OMkFSbjkrcU4wdUlLTzVFRFU1ZmN0SzViVjV3WlRsSFlR?=
 =?utf-8?B?N01TRjVZQ2ZhODZwYU5RaHhIdERaOHJoaTJRaFlNNVBkS0lic2VQL09wZ1lh?=
 =?utf-8?B?NXgyWnRTdytzaHE3OWNTR3JyNkFubTBhOE8rZWYxNWU4VVNpTVh5L0tTRU5R?=
 =?utf-8?B?NEtDSFZYalBXZHBMMXpxVEVGK1lsVzJlMFFycUkvWnFFVEtRYTZzeVcvcXE4?=
 =?utf-8?B?UzhqZ2I4SURYaVVxWE1hZWpzalJiUzdIQ0x2ZG1KeTFOWExkVDBrUGRDaFNS?=
 =?utf-8?B?WUdUOTNuaGlONThic2c2eWFRVmR0UjVCYWFJY0o1b0k3bWFscDJYQ01aWFFI?=
 =?utf-8?B?QkFkWVFyVVJjUVc0VGhTd3RIZFVsRUNZaUtrS21KNHk4eXlEaUpJLzB0MndX?=
 =?utf-8?B?VHRaOGNBYjFBZVp0SXJlSTZBUFA1S08veVl6WGZDbHpoRUR6VjRKU2k4ZGlD?=
 =?utf-8?B?WnM1QUorMXJTbXp0L0pIWlVaT1ZVU0VvU2hISW5LUVFHekoxbEdrZXhLZFIr?=
 =?utf-8?B?eTVSVURZNldWNkM4QUM2c1N6OG1sMDJ0bE55b0swMTAzUGlVNkY5a3dzWXY2?=
 =?utf-8?B?ZWhRbmxUZmJsZ0dXWGZDajZCZXB4NTUyVG1sZkdScnV2WlkzWXZMTDZ4a0dT?=
 =?utf-8?B?VmlkcEFCN00ybXZ4SHpWSHpDRUNyNGQ0MFJJUGNRdnl1aDRmbnp5RmZLTGU4?=
 =?utf-8?B?TExhNlYybTBMMzdMVmZMdEtqaDhIYnlmVzdOYWZBNkM4bitMeGdvL1JXT3Qv?=
 =?utf-8?B?Wms4OXdjVG5LdUJQMytUSWhTZndsOFBNMWxCekhkRGsrdDlwMXgrbmRHTzNG?=
 =?utf-8?B?cklEaTNqb1hKMkI1U1NlU3lHa0I3QWZ6UTlmenV2TStpdW8yRGRxWmxua0tQ?=
 =?utf-8?B?U1llNjVOZGxPTm12U2tVODdjS05vcy8vV1hxa0hMWmk5c2ZnNS91Y2VxVkxK?=
 =?utf-8?B?MWt4ZGU2WFpMN0gxRjEwZDdsVU92VWQ4NEJNNkxoN3kwSEFkdUFMZGRBakN0?=
 =?utf-8?B?TXM0VGd0Y2JVNCtuM09QUXdjRkVha3BZaDhUNVZWSzJuK3B2S2wyR0diZ2Jo?=
 =?utf-8?B?S25zcnppTzdnQ2lQbCtXc0syZG90aUdJUCtVR0RCcHduUklzbTlMUEg2aHN3?=
 =?utf-8?Q?GCBOwUJIkkQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VmJ3bGZrbEhTejZmZUcxK0p2bTdIRFlNSWZkZTZJakdmWGJyTVRIa1hMVDU2?=
 =?utf-8?B?ZS82ei9rVzVacVRUR281S3lWN25mZUloL0ZuSFlVTFBWSUZLWEdvbWlLa1Iw?=
 =?utf-8?B?NVgwd01YeUtmQ290Wm9Wa2szUWZlQjEra2l1d0kzdGhTcS9hTC9LNklDRnpP?=
 =?utf-8?B?blRyQWhpcFdiNUJBdFVnWWpWbHJuTjhsTzBGVU9sSDFpR2JLN3hoaEJTTmRL?=
 =?utf-8?B?dVRwWmxMdEpUeG52ZCszOElwbHNrTU5PejZPenQ0aC80NTZLMkhoOUpCZ2lU?=
 =?utf-8?B?MXRjQTF2YmREbGk1U3o5ajF2dFFHVVYzYlAyK0FZQ25LK2VmMXNzN0d1dlp1?=
 =?utf-8?B?SWF4Nk5hMTQ0UUViQ3hsMXdyRE0zRTBkYllYLzhVd1FaU1h6cFZuS2k0bHkx?=
 =?utf-8?B?b3NiQnNlS3ZQR3pMVEE5Sk80ajR1clFvOCtTeDJsSlNSUzdjOU9JK1hFQVRL?=
 =?utf-8?B?WmhvUFBrc3hWMDJsbUVjbjdhNmRHekZKTWExcEVQb3Y0bmlLVkgvdDM3YnM0?=
 =?utf-8?B?c1BLNlpiK1JRaTJwMld3TzJPTzJKaDRtbFNOT1lnZW9haXlYODlrYWNzZXFx?=
 =?utf-8?B?M1FMQnRJeGdZaU5BL0dGaTFTWDAzVTBCS2kxVVRYRWxST1IvTk9IUEw5bC9t?=
 =?utf-8?B?c1VONEFBZGNaRzhZK2IrM0xyZkdqMTZPZjFwYUQ3RDBnam9sNHVySDJId3VG?=
 =?utf-8?B?TnBYRjZ3cFpDd294UExUb3FwRzQwcEd1RXpWanVkSHVMOW9OQ1pHcFdFZ3Nq?=
 =?utf-8?B?Ynl2c0xIQVQwM1hGVk9GOTZLS01WazZRUXU4OTA4aDliN3o0RlhtSnJyU2Rs?=
 =?utf-8?B?ZytBd0xuRFo5QkVuNjBjb1F1aTlhckNWMTVsQmFJeitDd2lJaDl6cmpmNko1?=
 =?utf-8?B?OG1mYlRZTDJSbERyYWtOUUJiUFhGZVR4ZHZJN0hiMFFsTlFLemJCZ3c3ZFhD?=
 =?utf-8?B?Wnl3VHRmNFNwTzRlOEtFUE9IUmxSdkg3Z1JyTmVBMDlDRkRCekE4cG1wRUxC?=
 =?utf-8?B?N3hObG5BV2o4bnZJNHpFTlQ3NVRjdlZVY0ZvakFyRytvNCtTMnhyYndoSGZp?=
 =?utf-8?B?TzhwZXhXMC9lVmhOcWtRb3YwK1VkVE1xVEhyTTlOWDRibk5ZVGpSWlpnZ2Ft?=
 =?utf-8?B?UnBaZS94MnpXc3pnM0VLU05iMmluVTlRNFFYZzJ3d2FWc3orUWN2VzFxWlpl?=
 =?utf-8?B?ZXNveVI2U1FBRkNwdG9SSTdVRTh2T083RVNiZlVhUERsZzJkMW5TaVN4dW9C?=
 =?utf-8?B?RldjQ2FsVWhJdE1tVHNRUFQyb3RBMzRqM1JmTTRMUVFQZ21ITURUYjFxS2or?=
 =?utf-8?B?UzN1bFBpNlNQQnJ6cndiN1FnYTN4MjlSM08rVEJ1SUI3a2dsUUVvUVNXVnY5?=
 =?utf-8?B?VlM0OVduVFdMNnIwMG82VWFoaHJFeVJyV1dYYXY1ZlZxdzdKcDQ5Z0x4NXFu?=
 =?utf-8?B?MU9Jb0ZGc2FNUkxlUUlMTEhieDl4VFZDdmppZVFaUC9nQ2VVR1hJY0FFL1BH?=
 =?utf-8?B?dUozSG5Pb3JUZFVNb0RWRFVqQWQvUVMwelNiUWFuN0Z6czVxUVRuZDE3TTB5?=
 =?utf-8?B?em1zUVdzKy9CYnBRVHlUMk55NEN3aGtkeTg0eElxTG9oNjRXalB3VEx4b2lm?=
 =?utf-8?B?NDMzU3ZMRElIcWFWSkdtSlMwRUxZMGVGZ1pLcUxqQmNXQlNWV2VzNHRxaC9r?=
 =?utf-8?B?eWF0RUh1ajlkQnNwdmM0NlN3L0N6THlLcU5PNGZsTTJDQktSQ2crYWtGY21x?=
 =?utf-8?B?R2JydG9XR1ZlR0l6ektIczZVNGc5WEZSTVBEemQ1L0hvNzdSWWFzbHphK2hl?=
 =?utf-8?B?WkFRRU5qZlllaTJqK2k1M25uQW9aQ29sRFozZ3NCTHlRSWNOMDhLbzJid1I3?=
 =?utf-8?B?cUh2YUM5NEFTc0tPYjdCMUV1ZGgyTUE1aUd4U0JuVHBYSTUvY3BJUDRvMm53?=
 =?utf-8?B?WktDa082RkVxU0dMdWlIQVNCMFRxdDV0U1RHaXI5NUgzZ0FhaCs4S1RDMGsr?=
 =?utf-8?B?OE1tR2tDT01kN3M2Q0poSmNLYUMxQVBMTHhTakRjWkVFZjNYelNzVXpYbVZV?=
 =?utf-8?B?b09Qek4vQjRFTENhYzlqYWNIOVlCMlNvSjc0VExMeXVtNmc5eTlTdWlzUll3?=
 =?utf-8?B?cG1STmRONkZjajhmMk9nWER3YVA0S3RQbTVrelE1a0F6ZFpmNGI5NmRjb3lK?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b3c68906-4b66-422b-5179-08ddd97f5a80
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2025 09:05:16.3683 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7EZ3nhJBpCMcfAC6PCs/8N+69XUEmlwGKaYQk8dH+y2zXsBshOsW8eQZW5Fxmm0Wp/CojJNvIMENkp3RK/5ZckXf0+3fKoB+nOV/uFF2xQk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7738
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


On 7/21/2025 4:44 PM, Jouni Högander wrote:
> This is a preparation patch to start using TRANS_PUSH for PSR "Frame


Lets avoid 'patch' from commit message.

Perhaps can mention that this is just a placeholder for the helper to 
use trans push.


> Change". It adds intel_psr_use_trans_push which return false for now until
> we have everything in place.
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 5 +++++
>   drivers/gpu/drm/i915/display/intel_psr.h | 1 +
>   2 files changed, 6 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 4279c28ae27c..d7c19b053fcc 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -4253,3 +4253,8 @@ bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
>   {
>   	return intel_dp_is_edp(intel_dp) && crtc_state->has_panel_replay;
>   }
> +
> +bool intel_psr_use_trans_push(const struct intel_crtc_state *crtc_state)
> +{
> +	return false;

Will be good to add #TODO here.


Regards,

Ankit

> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
> index 9b061a22361f..7237dfa388b6 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -81,5 +81,6 @@ void intel_psr_debugfs_register(struct intel_display *display);
>   bool intel_psr_needs_alpm(struct intel_dp *intel_dp, const struct intel_crtc_state *crtc_state);
>   bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
>   				   const struct intel_crtc_state *crtc_state);
> +bool intel_psr_use_trans_push(const struct intel_crtc_state *crtc_state);
>   
>   #endif /* __INTEL_PSR_H__ */
