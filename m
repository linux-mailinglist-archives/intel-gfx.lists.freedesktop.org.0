Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0FC9D3518
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 09:13:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DA0110E3AA;
	Wed, 20 Nov 2024 08:13:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YUwStbKp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34B5C10E3A8;
 Wed, 20 Nov 2024 08:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732090403; x=1763626403;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ak7qPLXwomVRgQEg4LI78aN75dwh7m4i1AXIL6ZP56o=;
 b=YUwStbKpqAZZeq0YfDFHIOBY1gjFVa6pA3vxE5JVgUw5mnEOreCiopEr
 wxij1Gc33nHvQXm8aIzI6mTrzTk1K8nRn407B/YTHYnfK6KUlNzvS0bg8
 BddUM4Q6lCU6J1qsgkqlfNcXE9WfNf/ac9zy50JHq0BlBDrqI0SVRD/7/
 XBZ01sRGP6hHu/eOs3h6LN+55cGnRt6QXlCyCm/Fk/L5Gk+LXdKD9LXA8
 hZVliVQvwxsV0M4DlcdDxD9OWa9HK521p3TbnEWOas6RjpDWjvbCOQSr+
 sZ9aGEuZ4LnCoL+OEZbkTIvk/hCFZ/r1Q5gNtEy0dLUwnytDczUxUahIM Q==;
X-CSE-ConnectionGUID: CSBOPUe8T16v0ro0nbXCDw==
X-CSE-MsgGUID: /+TD7uEdQheN+J+0I++03Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="32384362"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="32384362"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 00:13:23 -0800
X-CSE-ConnectionGUID: rSFFB+GwQfuM8ZICirbsSA==
X-CSE-MsgGUID: JQzFnjYySMaQrcvI2hQEuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="89429411"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Nov 2024 00:13:22 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 20 Nov 2024 00:13:22 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 20 Nov 2024 00:13:22 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 20 Nov 2024 00:13:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=inXY+ubC6J18iSpQ2u6AEK5v7UySrOl7sj/wuLYwIePqCaX3f4jKvp9VnQ9QoPBqhSgEsFm6QCFfgCsBdJQ8VYCVR6e3Sv5s8T+bTjUaVuCfOVlzJRnHYCio3rORjigI5Pbjzgl8lIBYgfftJz7O/Y2nYkTnr/Co3EdUNXU4/zX9O4FKkkOZy5m95yeBRGEipjYW6dMQ5hx8Z4qzYQ6ieBPVGoXiJoaV7Mq3BJbXsuJ7FhSLIlFpXdNVNf1U9QM+HFXkKEcLDrd9GUyqr6uiOsOBQEjsrO9Hlcer7WHxYKVlJTeSpkB9FFYWJzl7ziG4OZoW5jjNLc+xfM3H+AmEKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ak7qPLXwomVRgQEg4LI78aN75dwh7m4i1AXIL6ZP56o=;
 b=cuvKnXPEmN+KHk7yXffp4oeGX6AU+dHXLoQF8Q6VueZkY3681geSyDWObPfQcsS/9DAugLdVS0ZI2tM2cMOC5wOAj42g6xAXtbl3VyTYbJzwCxZNY76z1q9Cd+6vkO18bpqFfHZrqOSsAgHyZIsnzXjZcpabljxvVuuKvRaH4RTuEx2UwRzlf9+mM7mMcQ1azji4Gk7Jn2cpyiyaZs+sLkUJ7QbbSj02c0uFBdWI40qZD7rKCTYDYethCyllac7FlnYK9Aqyq3/RfMNTfJv2cwU9bKou/1/F3HrwmNbn3nZbiM0sQ8Z7k8NvjsWx9tdXVkiQD86GK1raRLbdtdRiWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by BY1PR11MB8125.namprd11.prod.outlook.com (2603:10b6:a03:528::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.24; Wed, 20 Nov
 2024 08:13:19 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8158.021; Wed, 20 Nov 2024
 08:13:19 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCHv4 2/8] drm/i915/histogram: Add support for histogram
Thread-Topic: [PATCHv4 2/8] drm/i915/histogram: Add support for histogram
Thread-Index: AQHbOnGHtBKD/AJT8UCxfARYa86gFbK/xY4A
Date: Wed, 20 Nov 2024 08:13:19 +0000
Message-ID: <SN7PR11MB6750F70AC442DEE17CC30D52E3212@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241119104521.575377-1-arun.r.murthy@intel.com>
 <20241119104521.575377-3-arun.r.murthy@intel.com>
In-Reply-To: <20241119104521.575377-3-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|BY1PR11MB8125:EE_
x-ms-office365-filtering-correlation-id: e36f0c98-5387-40a5-0297-08dd093b317a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?VWQyTmt5YjVKL3VYbFQrb2tISzFVdzNnaDg3K2l6OW81dmRjM2ErOEE3SmFh?=
 =?utf-8?B?WjRyLzRjdDhYVG1zOVA1VTBIa3BjZDA0S1dtakdpSkJnaU9pYktTM1R5eEo3?=
 =?utf-8?B?emREbytzZ3ljYzhKN2FQK0lFb05MRDZMSWZCY092d1JXb0gxd2ZFYThtTm4w?=
 =?utf-8?B?cVFPVXVJVGx1UXZoU1h5clNJMW1HTVRGMXdUMzVvR0plMG1JSk1mZUpMZjQ3?=
 =?utf-8?B?YUJUdWFpck15VWkwbGp2WE4zUE03UTBDY2psekFjZXh3TzF2UW03VVJTNGpS?=
 =?utf-8?B?NkQvMWpzRzlvMmxsOG1OY2VVUkRKVlhDRVVPYmxjcWlDUWhxSytrejRDUnU2?=
 =?utf-8?B?NnNTQ01vR3NOUmVLQnNBb1ZUWjFLK0lPMzNURmRaMUlUQ1FIVVlsUkVvM2FY?=
 =?utf-8?B?cXRHQmlJZCsvdTZyY29qcTJCQUU5c2I3a2hmeEgxaERtaVVibWpscFFxZnhC?=
 =?utf-8?B?aDRuSG9McGdSQTlWUHowVG9BZ0JVVkE5d3JvRUo4bWFXUS8rMlNKMVBZbDFH?=
 =?utf-8?B?U1NqVmduZk1iWE9CUVRVNW5KVGJwSm9ONkI3eHlkNXpYdlRweFU3UW0vQnpL?=
 =?utf-8?B?OHFTU2tBTkxDQWtkTEppVDJ3dTNYdXBjeXZQMVZ5WXNCdWNqblZHT3RFTDMx?=
 =?utf-8?B?YnFaa1ZVZi92UUNSMjUxaFRVYTFuM044bGpJa3NWUXpuNDhlQzFrWEM3emNE?=
 =?utf-8?B?N3lwOG9FOG5pUWlVTHRJZ1lwU0FHVUpVNExoMWJNSk5UWU8weE4vRTlYVEEr?=
 =?utf-8?B?cW5Md0pMQWdBajhsRW5KaDF5bzVHbjhDVjZCS0VldnV2SmlMUWUreDZxTGMz?=
 =?utf-8?B?TERYRnY0NElvaWdMY3JzcEQzM3gra2drUWxiRS8wTG41ZTAveXNxNDFVeXNM?=
 =?utf-8?B?QVJNYlVXTk4ybkJ6QmxSR0ErSnFuMjh6N3I4N0N2VjRoVDZZNE9FUDFwUmls?=
 =?utf-8?B?dk4vZVIzOER4R3ZrQjNIVlVXUC8weFR6dnJLTmZvcEJNdjBORVJlaDJyREFT?=
 =?utf-8?B?NHV0eEl2RFFBWkZlb3ZpNU8wUGJPVVJCY0lsV25nYTdleUJubmREZzljTTVv?=
 =?utf-8?B?RDh2N29YbmRjVDh5STJRNnYxSkE1SGtNVFhXN09CVHlyM3dhTVU3cFU0NExa?=
 =?utf-8?B?OWxIYmpQeWZ6OUJjSWxYTFlqTWdqcFd6MnB5eUpjcm8yMFhvQnJrRjQvUjVi?=
 =?utf-8?B?dkVvUDZkSUVSUmJmS056ZGxNdDluRHpsR0xXejYwa1lMUzk4TzVrWWNHY2Nn?=
 =?utf-8?B?bEg4bXVPUGZCUmFiV0VBaW1USFdnMDdpLzdwY2ZheFZuRHpteHAvcko4dElt?=
 =?utf-8?B?QU1YQ2FJRytGNm9CaGZ1cEdDSU5sTk01bCt5TUJmRkpKMnFnZmF1SjdrWHVC?=
 =?utf-8?B?eHpGNjVuT2RqNzBSb2tTaW1FeG0vS0hnVE1WaURLUlNrV1Z1WWpoRytUWGp2?=
 =?utf-8?B?R3UyVEI3dnB6WjAzVWI0Qi9aQm1OWUNCTHVhN0RmY1FiTmJqb0JHbCt6N3JM?=
 =?utf-8?B?YlNiMVg1MmNkcVM0MktvUitXUXFsaUZJelJCUHNLZ05xT0lHczhvSjdva002?=
 =?utf-8?B?d0ZscnNNS3R3SjFMTjU4dWlWSmxRYWx5TUVCRk12R2IrMVRGT3JOWlpMazFa?=
 =?utf-8?B?TytOeVgweXlJT0gxT3pkWVJET2xqUjJjMFN1STUzc0ZMZkkrTE1QaWxVM0FH?=
 =?utf-8?B?UFZvK2JnNGZGaHhGOFpBNVo4QmN4Vk9hS3Q5MXlsUXhmVlJPMm8zQWRDR1RH?=
 =?utf-8?B?MHB4VFFxZ1lqUy95a2lGRnh5ODJPdHdJRWlvR0phdFlMWHd6TGIzcGpNQTZO?=
 =?utf-8?Q?K+P1/mUxiokL+9UQswucDoklSKdIZjTIW9G4c=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bUlsSlE0QXFESTM0MFVlTGFlZmEyUGRzdTNGcGVFcmF4TnArU0F6aURTNzF2?=
 =?utf-8?B?NWtJVjJ1cU5CcjVna0hEWk9hTkxXRmRzTmkzbnFIWGFUMXdQN1c3Ym1HSmJh?=
 =?utf-8?B?VVNLdFhHMWNVTHd3Mi9qd045ai9qYlhGUndZWUZsdkpFVVNvN09ocFNlNkFV?=
 =?utf-8?B?ZnlxMEZpanVFT1dXbjFIUFcrcWd2Nk5wZjVyTVBNeGtWSmROMWk0VFJ3K1lh?=
 =?utf-8?B?NDRROGdHQUZ0QkJXZHI4VUhNVWVDVTdJbjJTZXplK2J4d29qUDBEeldqYzRO?=
 =?utf-8?B?Rm1zZi9JalpxR2pZNXlaMHFZT2JxOU1UUzA2YnlybVplNnQza3RKUTdLTE9V?=
 =?utf-8?B?a3VqeEZkVEZIcjBqMkZ6NmdzMktZdTFRRWhWR3pXZkNZeG9MUVlkQW5ob3hz?=
 =?utf-8?B?aHZ1U1A5YUtWTGFGUTQrNW5rWnladURCekZiTkFIWlBEWXR5TTNiK1JHNENK?=
 =?utf-8?B?a29BMVJmV2VXN1N1L0M4RkQ5UEFvZ3VNN2lCT0ZSZlZNZUZjVE1UYXkxMVpQ?=
 =?utf-8?B?RUo3RFM5NHJBc0NnSzlKRnZlNGt3Y2JlYm5jZXIvYlZQWDhNMStxVDdnWGdN?=
 =?utf-8?B?RjZmeW9VeTlmMEw3NWszMlBlOXFSaUl1dllnWG9zSisyazRhU1l3bCtNbnNq?=
 =?utf-8?B?cXlyNjJWMlZGaTVjZGp5amdrWmM0Y1M5Zyt1Rko5RVhFZXZIcFEzWk9jQm0y?=
 =?utf-8?B?ODlzdFcvK2kvcGQ5MUJQMGRFY0VvWjVvUWxyRmtLNFJMMmhJTTgvMk4zQ2NN?=
 =?utf-8?B?N3lLOU1KMEQzUXZjNlRWSHZFNVkwNUhwSFo4MmV5bzBWR1FQblhja1RaMXRK?=
 =?utf-8?B?Tlc3TFlIRWphQTJaeVQ4d1B0YldpbmMvSldXVnhOSEJCZHpVNEwwUDdQWGVT?=
 =?utf-8?B?TDVsOGR0Q0RyL1BQeSs3TElTdmFGSENGNVpkMklPMjZjWXJrbUFzbVQrTDQ3?=
 =?utf-8?B?c21qbHBjTHpuOWxhdm1wTVpYQm9JWnNPU21UcE9nM3lHWmNBMk1zbG9xbG5l?=
 =?utf-8?B?N1NNOE9iSEJjTktqRWNQcFprbG1FUEhmR3hYcXdoOUFFT1ZxV1ZwbjNoU2Jm?=
 =?utf-8?B?WXZZN1dmcVNqeFFyVk1tN2QxNGhVRGdENHF6NVZpcGhzUzR3cTF2N09Da2JT?=
 =?utf-8?B?WENWQzFLejhPcWtLZStaOU1wV0c2RE9kUVEwanZCR0NlZ1c1emRPc2xGNU53?=
 =?utf-8?B?dzlZZE5YbkpieDJ2OHVnTmRiT0VJbHVtZ2lGNlAzLy9CMHhxV3ZhOVNXaldM?=
 =?utf-8?B?YzNWMFVtUXJqWTFQc0tONDRuY0M0K1IyZkpCMVFPY1BhbXBJNDhmV3ZyUkJp?=
 =?utf-8?B?K0Z6SUphbGpaSFB1dTZIUVo0WmorT0VyT09yYWMrRHpjd3kraG5tKytDZ0ht?=
 =?utf-8?B?bGZEVCtvUk43Z1NPaXc0US9FYk84V29pYXpHZUZLMFhYOFFWM0dDeFVtVzVq?=
 =?utf-8?B?aXhWendTakk5VXBoV092dXhnbyt1RDBuTjlFSzR1YUFhU201eks3MUtQNTlz?=
 =?utf-8?B?SUJ6akFFVUR6bXQwcnR3cEJVNmUxQmwvRmoyTjdhb1IrbHEzenpSamw3ZXM5?=
 =?utf-8?B?WU9vNVdaS3BMb1pHZy9vSEd6K1JEdFQzVVlxa2wwbC9HWFE5bTRxSDZYa1V0?=
 =?utf-8?B?cGJsRVZNWXArWURpS29UYjFlVmVRV0sreXQwL0Q3NmtGM1gybTBZYW9hMVlX?=
 =?utf-8?B?aDJwc0xEZmoraE81RmtGS0pyaVNWUm5JUXBuSnVYc1hxSGtRelFGdDVueW9S?=
 =?utf-8?B?MFdHaDMwY2NyQzhoaE0zM0NuOCtwNE9JNkV3RWxQbGNFRzZNUk1kUEJnMG11?=
 =?utf-8?B?WFJPZzJtVm9NRk5QQ0VwR1hoM0hSbHBLZlhjak1xYzlIek1xRnZEMUVzRGNY?=
 =?utf-8?B?YndTSVBTRmo2QlBTQjlEMThJa0RYNWJiRFBiWjg1Yzh1QXU2OGg5MUdDeVhz?=
 =?utf-8?B?K2N4ejQwWElrUlk5NmhwSzA2UUxQMStMUFJESURPWnRoS0RPU3UzSG40aU5X?=
 =?utf-8?B?V1dJWlhEQ0hFeHE4NFNTYTc5LzUyakMzdWpGL3B1T1NIb3A3MUZrbGUzK1Jr?=
 =?utf-8?B?ekNHemRYMzVRaFFGWEVPY2lBUGd1Y1h0V1FFZUhKT1dscEpyTk1mQVZrS3RY?=
 =?utf-8?Q?Y1bpUkjZg+W7zruC43VWjMIsK?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e36f0c98-5387-40a5-0297-08dd093b317a
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2024 08:13:19.3716 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3Mtn9KHJQuvlj7boEN2cue8v6hyHzreE6oGUYB1NPSz9W0uIDU6si2PEkcX+pbUHrPeWIvKoKyan9DKYf8Ca6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8125
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgQXJ1biBSDQo+
IE11cnRoeQ0KPiBTZW50OiBUdWVzZGF5LCBOb3ZlbWJlciAxOSwgMjAyNCA0OjE1IFBNDQo+IFRv
OiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmc7IGRyaS0NCj4gZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBNdXJ0
aHksIEFydW4gUiA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSHY0
IDIvOF0gZHJtL2k5MTUvaGlzdG9ncmFtOiBBZGQgc3VwcG9ydCBmb3IgaGlzdG9ncmFtDQo+IA0K
PiBTdGF0aXN0aWNzIGlzIGdlbmVyYXRlZCBmcm9tIHRoZSBpbWFnZSBmcmFtZSB0aGF0IGlzIGNv
bWluZyB0byBkaXNwbGF5IGFuZCBhbg0KPiBldmVudCBpcyBzZW50IHRvIHVzZXIgYWZ0ZXIgcmVh
ZGluZyB0aGlzIGhpc3RvZ3JhbSBkYXRhLg0KPiBUaGlzIHN0YXRpc3RpY3MvaGlzdG9ncmFtIGlz
IHRoZW4gc2hhcmVkIHdpdGggdGhlIHVzZXIgdXBvbiBnZXR0aW5nIGEgcmVxdWVzdA0KPiBmcm9t
IHVzZXIuIFVzZXIgY2FuIHRoZW4gdXNlIHRoaXMgaGlzdG9ncmFtIGFuZCBnZW5lcmF0ZSBhbiBl
bmhhbmNlbWVudA0KPiBmYWN0b3IuIFRoaXMgZW5oYW5jZW1lbnQgZmFjdG9yIGNhbiBiZSBtdWx0
aXBsaWVkL2FkZGVkIHdpdGggdGhlIGluY29taW5nDQo+IHBpeGVsIGRhdGEgZnJhbWUuDQo+IA0K
PiB2MjogZm9yd2FyZCBkZWNsYXJhdGlvbiBpbiBoZWFkZXIgZmlsZSBhbG9uZyB3aXRoIGVycm9y
IGhhbmRsaW5nIChKYW5pKQ0KPiB2MzogUmVwbGFjZWQgaTkxNSB3aXRoIGludGVsX2Rpc3BsYXkg
KFN1cmFqKQ0KPiB2NDogUmVtb3ZlZCBkaXRoZXJpbmcgZW5hYmxlL2Rpc2FibGUgKFZhbmRpdGEp
DQo+ICAgICBOZXcgcGF0Y2ggZm9yIGhpc3RvZ3JhbSByZWdpc3RlciBkZWZpbml0aW9ucyAoU3Vy
YWopDQo+IA0KDQpNb3N0bHkgbG9va3Mgb2theSB0byBtZSBzb21lIG1pbm9yIGNvbW1lbnRzIGFu
ZCBxdWVzdGlvbnMgYmVsb3cNCg0KPiBTaWduZWQtb2ZmLWJ5OiBBcnVuIFIgTXVydGh5IDxhcnVu
LnIubXVydGh5QGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtl
ZmlsZSAgICAgICAgICAgICAgICAgfCAgIDEgKw0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgICAyICsNCj4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9oaXN0b2dyYW0uYyAgICB8IDE5NSArKysrKysrKysrKysrKysrKysNCj4gIC4uLi9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oaXN0b2dyYW0uaCAgICB8ICAzNSArKysrDQo+ICA0
IGZpbGVzIGNoYW5nZWQsIDIzMyBpbnNlcnRpb25zKCspDQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oaXN0b2dyYW0uYw0KPiAgY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGlzdG9ncmFt
LmgNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlDQo+IGluZGV4IGU0NjU4MjhkNzQ4Zi4uOTcxNDFi
NGRlZjNiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQ0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQ0KPiBAQCAtMjY3LDYgKzI2Nyw3IEBA
IGk5MTUteSArPSBcDQo+ICAJZGlzcGxheS9pbnRlbF9oZGNwLm8gXA0KPiAgCWRpc3BsYXkvaW50
ZWxfaGRjcF9nc2MubyBcDQo+ICAJZGlzcGxheS9pbnRlbF9oZGNwX2dzY19tZXNzYWdlLm8gXA0K
PiArCWRpc3BsYXkvaW50ZWxfaGlzdG9ncmFtLm8gXA0KPiAgCWRpc3BsYXkvaW50ZWxfaG90cGx1
Zy5vIFwNCj4gIAlkaXNwbGF5L2ludGVsX2hvdHBsdWdfaXJxLm8gXA0KPiAgCWRpc3BsYXkvaW50
ZWxfaHRpLm8gXA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBpbmRleCAzMzllNGIwZjc2OTguLjM1MTQ0MWVmZDEwYSAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3R5cGVzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmgNCj4gQEAgLTE0MTQsNiArMTQxNCw4IEBAIHN0cnVjdCBpbnRlbF9jcnRjIHsN
Cj4gIAkvKiBmb3IgbG9hZGluZyBzaW5nbGUgYnVmZmVyZWQgcmVnaXN0ZXJzIGR1cmluZyB2Ymxh
bmsgKi8NCj4gIAlzdHJ1Y3QgcG1fcW9zX3JlcXVlc3QgdmJsYW5rX3BtX3FvczsNCj4gDQo+ICsJ
c3RydWN0IGludGVsX2hpc3RvZ3JhbSAqaGlzdG9ncmFtOw0KPiArDQo+ICAjaWZkZWYgQ09ORklH
X0RFQlVHX0ZTDQo+ICAJc3RydWN0IGludGVsX3BpcGVfY3JjIHBpcGVfY3JjOw0KPiAgI2VuZGlm
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hpc3Rv
Z3JhbS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oaXN0b2dyYW0u
Yw0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwMDAwMDAuLmU3NTE5Nzdm
YzZmNw0KPiAtLS0gL2Rldi9udWxsDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfaGlzdG9ncmFtLmMNCj4gQEAgLTAsMCArMSwxOTUgQEANCj4gKy8vIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBNSVQNCj4gKy8qDQo+ICsgKiBDb3B5cmlnaHQgwqkgMjAyNCBJbnRl
bCBDb3Jwb3JhdGlvbg0KPiArICovDQo+ICsNCj4gKyNpbmNsdWRlIDxkcm0vZHJtX2RldmljZS5o
Pg0KPiArI2luY2x1ZGUgPGRybS9kcm1fZmlsZS5oPg0KPiArI2luY2x1ZGUgPGRybS9kcm1fdmJs
YW5rLmg+DQo+ICsNCj4gKyNpbmNsdWRlICJpOTE1X3JlZy5oIg0KPiArI2luY2x1ZGUgImk5MTVf
ZHJ2LmgiDQo+ICsjaW5jbHVkZSAiaW50ZWxfZGlzcGxheS5oIg0KPiArI2luY2x1ZGUgImludGVs
X2hpc3RvZ3JhbV9yZWdzLmgiDQo+ICsjaW5jbHVkZSAiaW50ZWxfaGlzdG9ncmFtLmgiDQo+ICsj
aW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIg0KPiArI2luY2x1ZGUgImludGVsX2RlLmgi
DQoNClJlYXJyYW5nZSB0aGUgYWJvdmUgZGVmaW5pdGlvbnMgaW4gYWxwaGFiZXRpY2FsIG9yZGVy
IHNvIGludGVsX2RlIGdvZXMgYWJvdmUgaW50ZWwgZGlzcGxheSBhbmQNCkRpc3BsYXkgdHlwZXMg
Y29tZXMgdW5kZXIgIGludGVsX2Rpc3BsYXkNCg0KPiArDQo+ICsjZGVmaW5lIEhJU1RPR1JBTV9H
VUFSREJBTkRfVEhSRVNIT0xEX0RFRkFVTFQgMzAwICAgIC8vIDMuMCUgb2YNCj4gdGhlIHBpcGUn
cyBjdXJyZW50IHBpeGVsIGNvdW50Lg0KPiArI2RlZmluZSBISVNUT0dSQU1fR1VBUkRCQU5EX1BS
RUNJU0lPTl9GQUNUT1IgMTAwMDAgICAvLyBQcmVjaXNpb24NCj4gZmFjdG9yIGZvciB0aHJlc2hv
bGQgZ3VhcmRiYW5kLg0KDQpTaG91bGRu4oCZdCB3ZSBiZSB1c2luZyAvKiB4eHh4eCAqLyB0byBt
YWtlIGNvbW1lbnRzDQoNCj4gKyNkZWZpbmUgSElTVE9HUkFNX0RFRkFVTFRfR1VBUkRCQU5EX0RF
TEFZIDB4MDQNCj4gKw0KPiArc3RydWN0IGludGVsX2hpc3RvZ3JhbSB7DQo+ICsJc3RydWN0IGlu
dGVsX2NydGMgKmNydGM7DQo+ICsJc3RydWN0IGRlbGF5ZWRfd29yayB3b3JrOw0KPiArCWJvb2wg
ZW5hYmxlOw0KPiArCWJvb2wgY2FuX2VuYWJsZTsNCj4gKwl1MzIgYmluX2RhdGFbSElTVE9HUkFN
X0JJTl9DT1VOVF07DQo+ICt9Ow0KPiArDQo+ICtpbnQgaW50ZWxfaGlzdG9ncmFtX2F0b21pY19j
aGVjayhzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0Yykgew0KPiArCXN0cnVjdCBpbnRlbF9o
aXN0b2dyYW0gKmhpc3RvZ3JhbSA9IGludGVsX2NydGMtPmhpc3RvZ3JhbTsNCj4gKw0KPiArCS8q
IFRPRE86IFJlc3RyaWN0aW9ucyBmb3IgZW5hYmxpbmcgaGlzdG9ncmFtICovDQoNClNob3VsZCB3
ZSBhdCBsZWFzdCBhZGQgdGhlIHJlc3RyaWN0aW9uIGZvciB0aGUgbWluaW11bSAgZGlzcGxheSB2
ZXJzaW9uIHJlcXVpcmVkIHRvIHJ1biBEUFNUPw0KDQo+ICsJaGlzdG9ncmFtLT5jYW5fZW5hYmxl
ID0gdHJ1ZTsNCj4gKw0KPiArCXJldHVybiAwOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgaW50IGlu
dGVsX2hpc3RvZ3JhbV9lbmFibGUoc3RydWN0IGludGVsX2NydGMgKmludGVsX2NydGMpIHsNCj4g
KwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxf
Y3J0Yyk7DQo+ICsJc3RydWN0IGludGVsX2hpc3RvZ3JhbSAqaGlzdG9ncmFtID0gaW50ZWxfY3J0
Yy0+aGlzdG9ncmFtOw0KPiArCWludCBwaXBlID0gaW50ZWxfY3J0Yy0+cGlwZTsNCj4gKwl1NjQg
cmVzOw0KPiArCXUzMiBnYmFuZHRocmVzaG9sZDsNCj4gKw0KPiArCWlmICghaGlzdG9ncmFtKQ0K
PiArCQlyZXR1cm4gLUVJTlZBTDsNCj4gKw0KPiArCWlmICghaGlzdG9ncmFtLT5jYW5fZW5hYmxl
KQ0KPiArCQlyZXR1cm4gLUVJTlZBTDsNCj4gKw0KPiArCWlmIChoaXN0b2dyYW0tPmVuYWJsZSkN
Cj4gKwkJcmV0dXJuIDA7DQo+ICsNCj4gKwkgLyogZW5hYmxlIGhpc3RvZ3JhbSwgY2xlYXIgRFBT
VF9CSU4gcmVnIGFuZCBzZWxlY3QgVEMgZnVuY3Rpb24gKi8NCg0KSSB0aGluayB5b3UgbWVhbiAi
Q2xlYXIgRFBTVF9DVEwgYmluIHJlZyBmdW5jIHNlbGVjdCB0byBUQyINCkJlY2F1c2UgdGhhdOKA
mXMgd2hhdCBJIHNlZSBvbiBCc3BlYyBhbmQgYWxzbyBJIGRvbuKAmXQgc2VlIHlvdSBjbGVhcmlu
ZyBEUFNUX0JJTiByZWdpc3Rlcg0KCQ0KPiArCWludGVsX2RlX3JtdyhkaXNwbGF5LCBEUFNUX0NU
TChwaXBlKSwNCj4gKwkJICAgICBEUFNUX0NUTF9CSU5fUkVHX0ZVTkNfU0VMIHwgRFBTVF9DVExf
SUVfSElTVF9FTiB8DQo+ICsJCSAgICAgRFBTVF9DVExfSElTVF9NT0RFIHwNCj4gRFBTVF9DVExf
SUVfVEFCTEVfVkFMVUVfRk9STUFULA0KPiArCQkgICAgIERQU1RfQ1RMX0JJTl9SRUdfRlVOQ19U
QyB8IERQU1RfQ1RMX0lFX0hJU1RfRU4gfA0KPiArCQkgICAgIERQU1RfQ1RMX0hJU1RfTU9ERV9I
U1YgfA0KPiArCQkgICAgIERQU1RfQ1RMX0lFX1RBQkxFX1ZBTFVFX0ZPUk1BVF8xSU5UXzlGUkFD
KTsNCj4gKw0KPiArCS8qIFJlLVZpc2l0OiBjaGVjayBpZiB3YWl0IGZvciBvbmUgdmJsYW5rIGlz
IHJlcXVpcmVkICovDQo+ICsJZHJtX2NydGNfd2FpdF9vbmVfdmJsYW5rKCZpbnRlbF9jcnRjLT5i
YXNlKTsNCg0KQ29uZnVzZWQgaGVyZSBzbyBoaXN0b2dyYW0gd2lsbCBub3QgYmUgZW5hYmxlZCBm
b3IgYXQgbGVhc3QgMiB2YmxhbmtzIGFuZCAzIHZibGFua3MgZm9yIGRpc3BsYXkgMTItMTQgYWZ0
ZXIgd3JpdGluZyBlbmFibGUNCldoZW4gZW5hYmxlZCBvdXRzaWRlIHRoZSBhY3RpdmUgcmVnaW9u
IHNvIHdoeSBqdXN0IHRoZSBzaW5nbGUgdmJsYW5rIHdhaXQgPw0KDQo+ICsNCj4gKwkvKg0KPiAr
CSAqIFRPRE86IG9uZSB0aW1lIHByb2dyYW1taW5nOiBQcm9ncmFtIEd1YXJkQmFuZCBUaHJlc2hv
bGQuDQo+ICsJICogVG8gYmUgbW92ZWQgdG8gbW9kZXNldCBwYXRoDQo+ICsJICovDQoNClRoZSB0
d28gOiBiYWNrIHRvIGJhY2sgc2VlbSBkaXJ0eSBhZnRlciB0aGUgdG9kbyBzdGF0ZSBpbiBhIHNp
bmdsZSBzZW50ZW5jZSB3aGF0IG5lZWRzIHRvIGJlIGRvbmUNCg0KPiArCXJlcyA9IChpbnRlbF9j
cnRjLT5jb25maWctPmh3LmFkanVzdGVkX21vZGUudnRvdGFsICoNCj4gKwkgICAgICAgaW50ZWxf
Y3J0Yy0+Y29uZmlnLT5ody5hZGp1c3RlZF9tb2RlLmh0b3RhbCk7DQo+ICsNCj4gKwlnYmFuZHRo
cmVzaG9sZCA9IChyZXMgKg0KPiAJSElTVE9HUkFNX0dVQVJEQkFORF9USFJFU0hPTERfREVGQVVM
VCkgLw0KPiArCQkJICBISVNUT0dSQU1fR1VBUkRCQU5EX1BSRUNJU0lPTl9GQUNUT1I7DQoNCkFj
Y29yZGluZyB0byBic3BlYyB0aGlzIHZhbHVlIGkuZSBnYmFuZHRocmVzaG9sZCAiVGhpcyB2YWx1
ZSBpcyBzaGlmdGVkIGxlZnQgMiBiaXRzIChtdWx0aXBsaWVkIGJ5IDQpIGZvciB1c2Ugd2l0aCB0
aGUgMjQgYml0IGJpbiB2YWx1ZXMuIg0KSSBkb27igJl0IHNlZSB0aGF0IGhhcHBlbmluZyBoZXJl
IGlzIHRoYXQgb24gcHVycG9zZT8NCkFsc28gSSBkb27igJl0IHNlZSBhbnkgc3BlYyBzdGF0aW5n
IGhvdyB5b3UgY2FsY3VsYXRlIHRoaXMgdGhyZXNob2xkIGNhbiB5b3UgcG9pbnQgbWUgdG8gd2hl
cmUgdGhpcyBpcyB3cml0dGVuLg0KDQo+ICsNCj4gKwkvKiBFbmFibGUgaGlzdG9ncmFtIGludGVy
cnVwdCBtb2RlICovDQo+ICsJaW50ZWxfZGVfcm13KGRpc3BsYXksIERQU1RfR1VBUkQocGlwZSks
DQo+ICsJCSAgICAgRFBTVF9HVUFSRF9USFJFU0hPTERfR0JfTUFTSyB8DQo+ICsJCSAgICAgRFBT
VF9HVUFSRF9JTlRFUlJVUFRfREVMQVlfTUFTSyB8DQo+IERQU1RfR1VBUkRfSElTVF9JTlRfRU4s
DQo+ICsJCSAgICAgRFBTVF9HVUFSRF9USFJFU0hPTERfR0IoZ2JhbmR0aHJlc2hvbGQpIHwNCj4g
Kw0KPiBEUFNUX0dVQVJEX0lOVEVSUlVQVF9ERUxBWShISVNUT0dSQU1fREVGQVVMVF9HVUFSREJB
TkRfREVMQQ0KPiBZKSB8DQoNCldoZXJlIGRvIHdlIGdldCB0aGUgSElTVE9HUkFNX0RFRkFVTFRf
R1VBUkRCQU5EX0RFTEFZIGZyb20gPw0KDQo+ICsJCSAgICAgRFBTVF9HVUFSRF9ISVNUX0lOVF9F
Tik7DQo+ICsNCj4gKwkvKiBDbGVhciBwZW5kaW5nIGludGVycnVwdHMgaGFzIHRvIGJlIGRvbmUg
b24gc2VwYXJhdGUgd3JpdGUgKi8NCj4gKwlpbnRlbF9kZV9ybXcoZGlzcGxheSwgRFBTVF9HVUFS
RChwaXBlKSwNCj4gKwkJICAgICBEUFNUX0dVQVJEX0hJU1RfRVZFTlRfU1RBVFVTLCAxKTsNCj4g
Kw0KPiArCWhpc3RvZ3JhbS0+ZW5hYmxlID0gdHJ1ZTsNCj4gKw0KPiArCXJldHVybiAwOw0KPiAr
fQ0KPiArDQo+ICtzdGF0aWMgdm9pZCBpbnRlbF9oaXN0b2dyYW1fZGlzYWJsZShzdHJ1Y3QgaW50
ZWxfY3J0YyAqaW50ZWxfY3J0Yykgew0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
ID0gdG9faW50ZWxfZGlzcGxheShpbnRlbF9jcnRjKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfaGlzdG9n
cmFtICpoaXN0b2dyYW0gPSBpbnRlbF9jcnRjLT5oaXN0b2dyYW07DQo+ICsJaW50IHBpcGUgPSBp
bnRlbF9jcnRjLT5waXBlOw0KPiArDQo+ICsJaWYgKCFoaXN0b2dyYW0pDQo+ICsJCXJldHVybjsN
Cj4gKw0KPiArCS8qIElmIGFscmVhZHkgZGlzYWJsZWQgcmV0dXJuICovDQo+ICsJaWYgKGhpc3Rv
Z3JhbS0+ZW5hYmxlKQ0KPiArCQlyZXR1cm47DQo+ICsNCj4gKwkvKiBDbGVhciBwZW5kaW5nIGlu
dGVycnVwdHMgYW5kIGRpc2FibGUgaW50ZXJydXB0cyAqLw0KPiArCWludGVsX2RlX3JtdyhkaXNw
bGF5LCBEUFNUX0dVQVJEKHBpcGUpLA0KPiArCQkgICAgIERQU1RfR1VBUkRfSElTVF9JTlRfRU4g
fA0KPiBEUFNUX0dVQVJEX0hJU1RfRVZFTlRfU1RBVFVTLCAwKTsNCj4gKw0KPiArCS8qIGRpc2Fi
bGUgRFBTVF9DVEwgSGlzdG9ncmFtIG1vZGUgKi8NCj4gKwlpbnRlbF9kZV9ybXcoZGlzcGxheSwg
RFBTVF9DVEwocGlwZSksDQo+ICsJCSAgICAgRFBTVF9DVExfSUVfSElTVF9FTiwgMCk7DQo+ICsN
Cj4gKwloaXN0b2dyYW0tPmVuYWJsZSA9IGZhbHNlOw0KPiArfQ0KPiArDQo+ICtpbnQgaW50ZWxf
aGlzdG9ncmFtX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0YywgYm9vbCBlbmFi
bGUpDQo+ICt7DQo+ICsJaWYgKGVuYWJsZSkNCj4gKwkJcmV0dXJuIGludGVsX2hpc3RvZ3JhbV9l
bmFibGUoaW50ZWxfY3J0Yyk7DQo+ICsNCj4gKwlpbnRlbF9oaXN0b2dyYW1fZGlzYWJsZShpbnRl
bF9jcnRjKTsNCj4gKwlyZXR1cm4gMDsNCj4gK30NCj4gKw0KPiAraW50IGludGVsX2hpc3RvZ3Jh
bV9zZXRfaWV0X2x1dChzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0YywgdTMyDQo+ICsqZGF0
YSkgew0KPiArCXN0cnVjdCBpbnRlbF9oaXN0b2dyYW0gKmhpc3RvZ3JhbSA9IGludGVsX2NydGMt
Pmhpc3RvZ3JhbTsNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVs
X2Rpc3BsYXkoaW50ZWxfY3J0Yyk7DQo+ICsJaW50IHBpcGUgPSBpbnRlbF9jcnRjLT5waXBlOw0K
PiArCWludCBpID0gMDsNCj4gKw0KPiArCWlmICghaGlzdG9ncmFtKQ0KPiArCQlyZXR1cm4gLUVJ
TlZBTDsNCj4gKw0KPiArCWlmICghaGlzdG9ncmFtLT5lbmFibGUpIHsNCj4gKwkJZHJtX2Vycihk
aXNwbGF5LT5kcm0sICJoaXN0b2dyYW0gbm90IGVuYWJsZWQiKTsNCj4gKwkJcmV0dXJuIC1FSU5W
QUw7DQo+ICsJfQ0KPiArDQo+ICsJaWYgKCFkYXRhKSB7DQo+ICsJCWRybV9lcnIoZGlzcGxheS0+
ZHJtLCAiZW5oYW5jZW1lbnQgTFVUIGRhdGEgaXMgTlVMTCIpOw0KPiArCQlyZXR1cm4gLUVJTlZB
TDsNCj4gKwl9DQo+ICsNCj4gKwkvKg0KPiArCSAqIFNldCBEUFNUX0NUTCBCaW4gUmVnIGZ1bmN0
aW9uIHNlbGVjdCB0byBJRQ0KPiArCSAqIFNldCBEUFNUX0NUTCBCaW4gUmVnaXN0ZXIgSW5kZXgg
dG8gMA0KPiArCSAqLw0KPiArCWludGVsX2RlX3JtdyhkaXNwbGF5LCBEUFNUX0NUTChwaXBlKSwN
Cj4gKwkJICAgICBEUFNUX0NUTF9CSU5fUkVHX0ZVTkNfU0VMIHwNCj4gRFBTVF9DVExfQklOX1JF
R19NQVNLLA0KPiArCQkgICAgIERQU1RfQ1RMX0JJTl9SRUdfRlVOQ19JRSB8DQo+IERQU1RfQ1RM
X0JJTl9SRUdfQ0xFQVIpOw0KPiArDQo+ICsJZm9yIChpID0gMDsgaSA8IEhJU1RPR1JBTV9JRVRf
TEVOR1RIOyBpKyspIHsNCj4gKwkJaW50ZWxfZGVfcm13KGRpc3BsYXksIERQU1RfQklOKHBpcGUp
LA0KPiArCQkJICAgICBEUFNUX0JJTl9EQVRBX01BU0ssIGRhdGFbaV0pOw0KPiArCQlkcm1fZGJn
X2F0b21pYyhkaXNwbGF5LT5kcm0sICJpZXRfbHV0WyVkXT0leFxuIiwgaSwNCj4gZGF0YVtpXSk7
DQo+ICsJfQ0KPiArDQo+ICsJaW50ZWxfZGVfcm13KGRpc3BsYXksIERQU1RfQ1RMKHBpcGUpLA0K
PiArCQkgICAgIERQU1RfQ1RMX0VOSEFOQ0VNRU5UX01PREVfTUFTSyB8DQo+IERQU1RfQ1RMX0lF
X01PRElfVEFCTEVfRU4sDQo+ICsJCSAgICAgRFBTVF9DVExfRU5fTVVMVElQTElDQVRJVkUgfA0K
PiBEUFNUX0NUTF9JRV9NT0RJX1RBQkxFX0VOKTsNCg0KQWNjb3JkaW5nIHRvIEJzcGVjIHdlIGZv
bGxvdyB0aGUgYmVsb3cgc3RlcHMNCiIgDQoxKVNldCBEUFNUX0NUTCBCaW4gUmVnaXN0ZXIgRnVu
Y3Rpb24gU2VsZWN0IHRvIElFDQoyKVdhaXQgZm9yIHZlcnRpY2FsIGJsYW5rIGZvciBzd2l0Y2gg
dG8gSUUgbW9kZSwgY2FuIHNraXAgaWYgc3RlcCAxIHdhcyBkb25lIG1vcmUgdGhhbiAxIHZibGFu
ayBwcmV2aW91c2x5DQozKVNldCBEUFNUX0NUTCBCaW4gUmVnaXN0ZXIgSW5kZXggdG8gMA0KNClX
cml0ZSBlbmhhbmNlbWVudCBmYWN0b3IgdG8gRFBTVF9CSU4gRGF0YQ0KNClHbyB0byBzdGVwIDQg
dW50aWwgYWxsIDMzIGVudHJpZXMgYXJlIHdyaXR0ZW4NCiINClRoZSBzZXF1ZW5jZSBpbiBjb2Rl
IHNlZW1zIHJldmVyc2VkLg0KQWxzbyBJIGRvbuKAmXQgc2VlIHRoZSB2Ymxhbmsgd2FpdCB0aGF0
IG5lZWQgdG8gYmUgZG9uZSBhZnRlciBzd2l0Y2hpbmcgdG8gSUUgbW9kZS4NCg0KDQo+ICsNCj4g
KwkvKiBPbmNlIElFIGlzIGFwcGxpZWQsIGNoYW5nZSBEUFNUIENUTCB0byBUQyAqLw0KPiArCWlu
dGVsX2RlX3JtdyhkaXNwbGF5LCBEUFNUX0NUTChwaXBlKSwNCj4gKwkJICAgICBEUFNUX0NUTF9C
SU5fUkVHX0ZVTkNfU0VMLA0KPiBEUFNUX0NUTF9CSU5fUkVHX0ZVTkNfVEMpOw0KPiArDQo+ICsJ
cmV0dXJuIDA7DQo+ICt9DQo+ICsNCj4gK3ZvaWQgaW50ZWxfaGlzdG9ncmFtX2ZpbmlzaChzdHJ1
Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0Yykgew0KPiArCXN0cnVjdCBpbnRlbF9oaXN0b2dyYW0g
Kmhpc3RvZ3JhbSA9IGludGVsX2NydGMtPmhpc3RvZ3JhbTsNCj4gKw0KPiArCWtmcmVlKGhpc3Rv
Z3JhbSk7DQo+ICt9DQo+ICsNCj4gK2ludCBpbnRlbF9oaXN0b2dyYW1faW5pdChzdHJ1Y3QgaW50
ZWxfY3J0YyAqaW50ZWxfY3J0Yykgew0KPiArCXN0cnVjdCBpbnRlbF9oaXN0b2dyYW0gKmhpc3Rv
Z3JhbTsNCj4gKw0KPiArCS8qIEFsbG9jYXRlIGhpc3RvZ3JhbSBpbnRlcm5hbCBzdHJ1Y3QgKi8N
Cj4gKwloaXN0b2dyYW0gPSBremFsbG9jKHNpemVvZigqaGlzdG9ncmFtKSwgR0ZQX0tFUk5FTCk7
DQo+ICsJaWYgKCFoaXN0b2dyYW0pIHsNCj4gKwkJcmV0dXJuIC1FTk9NRU07DQo+ICsJfQ0KDQpO
byBuZWVkIGZvciBleHRyYSBicmFja2V0cw0KDQpSZWdhcmRzLA0KU3VyYWogS2FuZHBhbA0KDQo+
ICsNCj4gKwlpbnRlbF9jcnRjLT5oaXN0b2dyYW0gPSBoaXN0b2dyYW07DQo+ICsJaGlzdG9ncmFt
LT5jcnRjID0gaW50ZWxfY3J0YzsNCj4gKwloaXN0b2dyYW0tPmNhbl9lbmFibGUgPSBmYWxzZTsN
Cj4gKw0KPiArCXJldHVybiAwOw0KPiArfQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9oaXN0b2dyYW0uaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfaGlzdG9ncmFtLmgNCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4gaW5k
ZXggMDAwMDAwMDAwMDAwLi45ZDY2NzI0ZjljNTMNCj4gLS0tIC9kZXYvbnVsbA0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hpc3RvZ3JhbS5oDQo+IEBAIC0wLDAg
KzEsMzUgQEANCj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQNCj4gKy8qDQo+ICsg
KiBDb3B5cmlnaHQgwqkgMjAyNCBJbnRlbCBDb3Jwb3JhdGlvbg0KPiArICovDQo+ICsNCj4gKyNp
Zm5kZWYgX19JTlRFTF9ISVNUT0dSQU1fSF9fDQo+ICsjZGVmaW5lIF9fSU5URUxfSElTVE9HUkFN
X0hfXw0KPiArDQo+ICsjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4NCj4gKw0KPiArc3RydWN0IGlu
dGVsX2NydGM7DQo+ICsNCj4gKyNkZWZpbmUgSElTVE9HUkFNX0JJTl9DT1VOVCAgICAgICAgICAg
ICAgICAgICAgMzINCj4gKyNkZWZpbmUgSElTVE9HUkFNX0lFVF9MRU5HVEggICAgICAgICAgICAg
ICAgICAgMzMNCj4gKw0KPiArZW51bSBpbnRlbF9nbG9iYWxfaGlzdF9zdGF0dXMgew0KPiArCUlO
VEVMX0hJU1RPR1JBTV9FTkFCTEUsDQo+ICsJSU5URUxfSElTVE9HUkFNX0RJU0FCTEUsDQo+ICt9
Ow0KPiArDQo+ICtlbnVtIGludGVsX2dsb2JhbF9oaXN0b2dyYW0gew0KPiArCUlOVEVMX0hJU1RP
R1JBTSwNCj4gK307DQo+ICsNCj4gK2VudW0gaW50ZWxfZ2xvYmFsX2hpc3RfbHV0IHsNCj4gKwlJ
TlRFTF9ISVNUT0dSQU1fUElYRUxfRkFDVE9SLA0KPiArfTsNCj4gKw0KPiAraW50IGludGVsX2hp
c3RvZ3JhbV9hdG9taWNfY2hlY2soc3RydWN0IGludGVsX2NydGMgKmludGVsX2NydGMpOyBpbnQN
Cj4gK2ludGVsX2hpc3RvZ3JhbV91cGRhdGUoc3RydWN0IGludGVsX2NydGMgKmludGVsX2NydGMs
IGJvb2wgZW5hYmxlKTsgaW50DQo+ICtpbnRlbF9oaXN0b2dyYW1fc2V0X2lldF9sdXQoc3RydWN0
IGludGVsX2NydGMgKmludGVsX2NydGMsIHUzMiAqZGF0YSk7DQo+ICtpbnQgaW50ZWxfaGlzdG9n
cmFtX2luaXQoc3RydWN0IGludGVsX2NydGMgKmludGVsX2NydGMpOyB2b2lkDQo+ICtpbnRlbF9o
aXN0b2dyYW1fZmluaXNoKHN0cnVjdCBpbnRlbF9jcnRjICppbnRlbF9jcnRjKTsNCj4gKw0KPiAr
I2VuZGlmIC8qIF9fSU5URUxfSElTVE9HUkFNX0hfXyAqLw0KPiAtLQ0KPiAyLjI1LjENCg0K
