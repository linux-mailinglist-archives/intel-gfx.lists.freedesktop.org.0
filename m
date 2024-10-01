Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3154598BA0E
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 12:50:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DDC910E2EB;
	Tue,  1 Oct 2024 10:50:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MkbrTpis";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2356E10E184;
 Tue,  1 Oct 2024 10:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727779814; x=1759315814;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VEtjL1Hh7Lnn14y4+l2fxgRDPDl01waDDjWI83VSFnY=;
 b=MkbrTpisyDYvRQ0EiNU24m/qk64UeGZWOVmWrgZZ7xYCx/o8ecXAxQAu
 RZw20IUNWXgVPCsfWtwm5hWpyl41o8z5XAiAbU4eNPzGV6GvYvu49YwTS
 O8vOqBhRKgV8ck+TEeXNK6kn77jQaIekfc7Zlz0RNqaplAGihESUULJ3q
 yyxC5pAYiizI78O5eDeuUBWuqKLbxcdWQOH0j2yf8dzrzunJ99SzbioUu
 ofnr/yelxcLwzkiqkscKQmpXXeQ8pOzRu/MWQ950fzbDTmv3w2CnTtauu
 PK295pMoZ2qIFEVy/PM4CrRSRwjeNPSz5m8JzNLUhW2/u1ZTMiTwSQp67 Q==;
X-CSE-ConnectionGUID: Q4g/aZ9VTHW9Wxh/5JcCeA==
X-CSE-MsgGUID: bygBpxrQQSqyXVMzwtWtzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="37583357"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="37583357"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 03:50:03 -0700
X-CSE-ConnectionGUID: HnUTJj2HSNKSwCh/In04Tg==
X-CSE-MsgGUID: ocfF5TDzQqyHT5YmwlsSyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="77678074"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Oct 2024 03:50:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 1 Oct 2024 03:50:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 1 Oct 2024 03:50:02 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 1 Oct 2024 03:50:02 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 1 Oct 2024 03:50:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZFEl6mNk1uVHGGT6IjR+iF3jO+m/0+jHVfZRvbaOQylHGHdtzR4GieNUPXoFi/taWcDpnSYhwVUM/4YuIVX3hCRr7ADTGXZnpf4svF7jp7aB4FkkQCSUiFbWM/rVuHqWJz9cjgK8alGTP4aHo52CsANioVnP1+xHMZcGJXDoPgwCrXqRM5aWtHh8QX0RtFmYJjrYHn5I0XcjwLIq5vYMO7umKAjjwgCd8+U8GcTZjGwSsMa7TirAcl5u9j0NvHbTzal1bU1ZMUOlGO0mfSUmYRwlvqA7UrepT2zDNPtT4GnVFUp46q5btqAOTGOg5h/XjYiS8wffduSADxCSa39ikg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VEtjL1Hh7Lnn14y4+l2fxgRDPDl01waDDjWI83VSFnY=;
 b=lbu8iut1DazSoZBElocYkUTmlSoWZBbHx2X9JeJ6jYuiE7+TPF4EehV8Uw1OCG+84Ws8z9PMoPNiPoEIfn07UcseWmekGtUc+m+ifSMP27WlaJtaCz/tGlkMze2AaabYaXDXs7vsJxDegvykQzIP7AFQhTpm4i8Uy6xMaAs1hITKiArye7dysq0Nh5wnpfWLgBw7IuMeP9vcNnVl8m3zwbUYyq0Rq2N7BQVnyxv3Sc5wu5HgbE7s2ztdYyTKcKoCeoKUzn8fPfDYgcmHFRBZ9PHq5Hrddjdv3bB8R3mdPzGk5tGIswIwEgbt60xKI4nHzBDvSgKUBzboVlUOzb2/Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB7073.namprd11.prod.outlook.com (2603:10b6:510:20c::5)
 by IA1PR11MB6194.namprd11.prod.outlook.com (2603:10b6:208:3ea::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.26; Tue, 1 Oct
 2024 10:49:59 +0000
Received: from PH7PR11MB7073.namprd11.prod.outlook.com
 ([fe80::d7f7:58f4:7360:54]) by PH7PR11MB7073.namprd11.prod.outlook.com
 ([fe80::d7f7:58f4:7360:54%6]) with mapi id 15.20.8026.016; Tue, 1 Oct 2024
 10:49:59 +0000
From: "Musial, Ewelina" <ewelina.musial@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>,
 "I915-ci-infra@lists.freedesktop.org" <I915-ci-infra@lists.freedesktop.org>,
 "Knop, Ryszard" <ryszard.knop@intel.com>, "Grabski, Mateusz"
 <mateusz.grabski@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBGaS5DSS5CVUlMRDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IHJl?=
 =?utf-8?B?bW92ZSBhbGwgSVNfPFBMQVRGT1JNPl9HVDxOPigpIG1hY3Jvcw==?=
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBkcm0vaTkxNTogcmVtb3Zl?=
 =?utf-8?B?IGFsbCBJU188UExBVEZPUk0+X0dUPE4+KCkgbWFjcm9z?=
Thread-Index: AQHbE6hy9oRkqzPTWkyUXDc77ISCz7Jxr5sAgAAH6KA=
Date: Tue, 1 Oct 2024 10:49:59 +0000
Message-ID: <PH7PR11MB7073D5120E2F5A04C458933593772@PH7PR11MB7073.namprd11.prod.outlook.com>
References: <20240930124948.3551980-1-jani.nikula@intel.com>
 <172774919726.1140040.15154995908551792317@2413ebb6fbb6>
 <87r090unub.fsf@intel.com>
In-Reply-To: <87r090unub.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: ryszard.knop@intel.com,mateusz.grabski@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB7073:EE_|IA1PR11MB6194:EE_
x-ms-office365-filtering-correlation-id: 691a9667-eca2-43e6-4c69-08dce206cb82
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?OWdkODMzME05c3JHWEdPNjJWQk5IOVI3NmpkZE1MNnRmeWFxWjZJMTNySlhF?=
 =?utf-8?B?SnpWdDVTbk1UZCszL2ZCMnAzWTlpbGxaVllqeFhXdzJFQmFiWHhST2k2cjhY?=
 =?utf-8?B?TUlRcFNqSm9JY3JteExRR0dOWDhTTS9Vdzk5SnJoZkNFcWE4OW56Y0NCU3Jv?=
 =?utf-8?B?VXA1MnZCazM0UFI5eHA3RkFlcGVxNXY2OWs4SDBDMUlxdy9HcHVIUzQwNU82?=
 =?utf-8?B?bk81ZHl1cFNIejd2QWt0c3NucjlRWG9iZWI3MEJzb3dmK2tqaXR5K1cyb2V1?=
 =?utf-8?B?RzhpUnVGYVhTMGEvbkFDQ3BEK2NwRWZ1clgrUGdmT3d1WjFQT3lrRGJ0QzR3?=
 =?utf-8?B?c2ZncUJWN2R6Rk9SaWxPcTl4VDNEWEtzTWx6ZDduYXYxSW1WdkZKREhZeUdG?=
 =?utf-8?B?bU5hUjFjZHZ4aXRDS2JVdnRaakg3V1F4OVloNWtueE8yOGxLL2t3OHRmNHFH?=
 =?utf-8?B?b1RlOVgrSWxmR0xPc255RU5sMXZtMGtDdXozZms2SWJQRU95cU5pWGpYY3k1?=
 =?utf-8?B?ZGl1bExLaWl6YkYvR3BhTHAxVTYreitlaEl3NTdLbGxNNEs0N25kUk9SODBX?=
 =?utf-8?B?SHBvWFNPbk5xMlZSRnVkYVMvVVl3VHcrNmQ2dEI4ZURnQjBTNDFUU29HLzBY?=
 =?utf-8?B?WCsydUtOTWJud2dLajY0eG1OK2hDYkovWklSeFRzWklZTS9xNXp2YXpYOUNr?=
 =?utf-8?B?VzZndUZlYno4Y0pPWlp3VHVGVENQOHNMZTNQWjRMektxK1J1STNBc05nWTEz?=
 =?utf-8?B?dkFjTjM5V284c3JvTU5qRVdZWDFvUXhTNVdaNUFWQURmemtycHlYMU1RcXJ3?=
 =?utf-8?B?MWwvdXBsOURTZ1pyQ0FGSERNY0tFOUtrUE12b0R0dVo5MVVsSXJ4a09yZk1B?=
 =?utf-8?B?RVlFbTVMVUVEQ0JlZWorQURUTEtIZ2Q3TVBXZnQ0RkNkdEw2eG5kR0FFU1ZL?=
 =?utf-8?B?MHhZM3lqcERLMGR4dDRFMHkxUllpaC91eWtUWCtMTUl0WE9JYnR3U0ZVQVRn?=
 =?utf-8?B?Y1NkUzJ4QStlS1hUV09CTVpEVkhTOW1JVXlOTEpjeTd3K3orNHNUM2h2UEto?=
 =?utf-8?B?NjRwNWlIQXpMT0hTTEpPSmwwczVBOGVlWFdXNXA0N2tUZ0p4cDFMemEzOHZ2?=
 =?utf-8?B?d29ocC9Lc1Ric0s5OExyc0hWQXM4clZtMUx2OTYrQzdITU9LZ2N2ZldsYmJP?=
 =?utf-8?B?TWdVVXgrQmhtV1lDMUh0YlBsMUVrY1M2UG5WbHZKcWxkVWxqV25laDNJa3B2?=
 =?utf-8?B?dHpOS3FBQkhaSVZ4Z1U3RTlDY1ZKNTJLZ3NsT1YvZTZYZW5wMUFqNHlab2c4?=
 =?utf-8?B?YVdvM3dGWmI1L0tzUDZMQlExMkpQZzlqRkJOMUhYUk45OWZzUHI0VHk3WG81?=
 =?utf-8?B?UjI4WUVCaWg5UG1RQTJWOE1NUmlVSmRTSWJUcjU4c1B0a2tublY1TURlbFpv?=
 =?utf-8?B?bUZGZHkySTFRSENVbjRwanlPMUdwNkNNcW9hcVR5eHk5Y1NJZGszS014ckZ0?=
 =?utf-8?B?VlpHczZ1UStoVFVab3RlMitacXhZK1YvcmllQkFKT0RLRys5N1ZJNU8yNlpV?=
 =?utf-8?B?VklzK2ZYOUkzRm01OUFNTVYwb2NzelBJeTdzREYzWTVUTHhUVEY1dG9RK3RH?=
 =?utf-8?B?eVdMRHAzTlpYaE8zWUpJdG1IU3hqTlp3Nk1HL1c2enBycmNlSG5zT1g3WmZB?=
 =?utf-8?B?RnRDWkFidFpUa0tkeUVXVEloRzFIVk1GY2p6L1dYSEEzQWZJMkRLd0FDeFIz?=
 =?utf-8?Q?vMQ+QCVN2B1o3p2edo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QUJvQkNXVG1rNjJqK2lYQkJ0aVVTNmI0VWtWQ3pJRGR6ZitGQmQxSHkyeUNZ?=
 =?utf-8?B?OTl0SFcvTy9ZYTdWVGRzMFZVUGkyMU02MG1XV1U4TUF3RFVnVW1oV3lGVlFR?=
 =?utf-8?B?ZllET3M1ZmtsUEhTQTI3UWEyOVJlaklvR2syMXhlUEQ4R2hoUVBzRTRUVVJY?=
 =?utf-8?B?RHhDRThqODlnZmhUU2RKZmNjZUNUWEg1U0FpVGp0VW14a1l0NjJHRW1FUUtj?=
 =?utf-8?B?TUwyQkhHRmJ2WmMvNHVNL0pjVjZDNytzV2VPOERNeGFsYWZYRzVTMThaWnVG?=
 =?utf-8?B?SWw1QzMrQThJZEFOOVJIMmZjN05FRUt0bEsvVzZGUDBmOElyY3A1S1EybXpJ?=
 =?utf-8?B?eWRRZTlkbUw2Qm9ZNjd5RXJ6a2xRUEozVldvTEVCWHAzeWRmS3ZKRmcrSXUz?=
 =?utf-8?B?YzlPMCtvVExoWk1RWk1SdEJEZG1zL1o3RTNZZ2FTUS8xRzVwWHdmTjVjSmZO?=
 =?utf-8?B?T3Z4SGhoZ3pDTTVtdXdETnd3c1MzV0JicUlBOUFPOFY1dW1Qc3dPUjBxMEJz?=
 =?utf-8?B?d2FFMkd2bThHVTZhQUl6VnVyOExCMzdZNkExQjFvQ1d1dWlYek1CYTVWTjRk?=
 =?utf-8?B?MmxlU2ZuK0dNdUQyQURUSVVwSCtqUG5ScXZ0eU1CeDBOOWdvOU1XOEhlOUp2?=
 =?utf-8?B?Vm5ISzFTOGt5aW1kK01kbWhiQUhKaWZGMC9PZ3B3bHhXUkp5WmFMcHpsUXo3?=
 =?utf-8?B?U1R3V2Mvb2NTMFpuMlg1Zjd6d1c2K1hNS0dXQWU1WVBVeE1MRWdIWVUzNncx?=
 =?utf-8?B?L0kyTVI1Zkl6M0VkZkNVYWlCUDI5OC9jSTdORzhNSDcrdjBvaEw4bE5LbXRO?=
 =?utf-8?B?Q1ZoWStUa281ODZNeFl4WmhVY2o1MHJrUXA1emcvVFpNVTd6Tm1STEUxanV2?=
 =?utf-8?B?SG1vSU5LWUlLS0JiaXFXd1VTa0UyME9GMnJrbEVmVlYvMCsvUVZrRDZLU3FG?=
 =?utf-8?B?ZUdUVjBkKzZMbDFjd1lWemNPOFB5Y1NTa3hjVHZIYUxIa2JBdDhWd3V4U0FR?=
 =?utf-8?B?Y0dWT3VHdThlakNnU3d5cWh4cFMyWHJsbHgzWlovVGFqeVV6VVZkb3EyeWdC?=
 =?utf-8?B?REs5RDN2Ymo5aXZzVE12OE82QXRydTVHSzFLazcva2VxUUtXcmZWeEtEQklj?=
 =?utf-8?B?QXJSdVV4TUZJOThkeFpMOEFuTHBHR0lDd3U4VU1samFQQTNQbDZKcXFIcmpr?=
 =?utf-8?B?OE5KMVcxZTEvb0hrQmZvZTFMdkJOdFZuUEF2ZURQcUJ1WktxV2lrOFRjN0pL?=
 =?utf-8?B?eXVidmdDeS96VXo2VTE5aWpGdWFTT00yazUyWmoyV3llU0ZKVmVYWWJvaWgw?=
 =?utf-8?B?dlJodVo1a2tRZW9hWnhpS1Jhd241ZFJkMVV1V283ZDBaVzUxT1pSZEZmWGxB?=
 =?utf-8?B?c2Jma29yNURnVnhROFN2QUVGdlZ6c0Q2MUVRRGd3NkpqWjZyVm9icUxIVFFI?=
 =?utf-8?B?QXdBVWtwRDh2U1QyS0swcTJ1V0NpNFNNL3o5bnYrKzlZZlhYbkwzWXRYeWZn?=
 =?utf-8?B?NVF0QUNia3hHcmJaN2NycktVbTgyRTFlSXZzTVVmQ09mRmVmQzJ3NWlyaDdw?=
 =?utf-8?B?ZFQwYk1YRDk4UlhDK2x0K01LVVNjWGZnMGVRd0p5dy9CVjZ2ZnJCellySjl3?=
 =?utf-8?B?SG94ZEFPbmtyYklkUU1ielFOKy9ycVp5NFJ2cnlWM3dPN3d2OXRkTzBUdEg5?=
 =?utf-8?B?aUl0bXhFcXh1MThJeno3NXlVM0JXaDc2YUpQZTRVNXhERzFGRGNFekRWRy9K?=
 =?utf-8?B?alNSVHBQWWQyL1hmVkdySGVDZjRoSkVoTUdOM2FQNFJudFowZ1BHYTNmMno0?=
 =?utf-8?B?K2E0R280Q0pYYzFtOFJkU2R5c1lXaFBTVkVCZk5sTk5pMVpkcXhNNS9vNzkr?=
 =?utf-8?B?TlNsK256ODhVQjJXTTF4Q2hUTWFLOUl0ZzlQSXRJYjVyeXhERHNxNUNQSGlh?=
 =?utf-8?B?cXpRREpReGlyUlhFOEdHUmJuVGVLWUVoZElpaHRkcGE0S3hWRUEyNFVOUlhN?=
 =?utf-8?B?cmQxRXpoSVJVYU5aa0hnNnd2ZUozU1JOS1pDU09TaVpBSHE0RGhkTW5uOW1s?=
 =?utf-8?B?SE56cllzMUROcjhSSUJxUlhQRHdYVUdGVUFWZGdHUmwyb2JPQ3MvVDZmT0tO?=
 =?utf-8?Q?IgMKLYgfFGUjAtlRy25PTNjEG?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 691a9667-eca2-43e6-4c69-08dce206cb82
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2024 10:49:59.1254 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kSvvoFmDXYrMDj5oEBHjU/VjRHk8CGFRqHOTGCYdFA14/eDm8ZP8XdSzZIGvsDCD/NdsSvoioGef/CScB89a42NlrWGcyCOtx3ye9sVeCZk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6194
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

QEtub3AsIFJ5c3phcmQgLyBAR3JhYnNraSwgTWF0ZXVzeiBjb3VsZCB5b3UgcGxlYXNlIGludmVz
dGlnYXRlPw0KDQpUaGFua3MsDQpFd2VsaW5hDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
DQpGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zz4gT24gQmVoYWxmIE9mIEphbmkgTmlrdWxhDQpTZW50OiBUdWVzZGF5LCBPY3RvYmVyIDEsIDIw
MjQgMTI6MjAgUE0NClRvOiBJOTE1LWNpLWluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KQ2M6
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNClN1YmplY3Q6IFJlOiDinJcgRmkuQ0ku
QlVJTEQ6IGZhaWx1cmUgZm9yIGRybS9pOTE1OiByZW1vdmUgYWxsIElTXzxQTEFURk9STT5fR1Q8
Tj4oKSBtYWNyb3MNCg0KT24gVHVlLCAwMSBPY3QgMjAyNCwgUGF0Y2h3b3JrIDxwYXRjaHdvcmtA
ZW1lcmlsLmZyZWVkZXNrdG9wLm9yZz4gd3JvdGU6DQo+ID09IFNlcmllcyBEZXRhaWxzID09DQo+
DQo+IFNlcmllczogZHJtL2k5MTU6IHJlbW92ZSBhbGwgSVNfPFBMQVRGT1JNPl9HVDxOPigpIG1h
Y3Jvcw0KPiBVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMv
MTM5MzA2Lw0KPiBTdGF0ZSA6IGZhaWx1cmUNCj4NCj4gPT0gU3VtbWFyeSA9PQ0KPg0KPiBFcnJv
cjogcGF0Y2ggDQo+IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9hcGkvMS4wL3Nl
cmllcy8xMzkzMDYvcmV2aXNpb25zLzEvbWINCj4gb3gvIG5vdCBmb3VuZCBCdWlsZCBmYWlsZWQs
IG5vIGVycm9yIGxvZyBwcm9kdWNlZA0KDQpJIHdvbmRlciB3aGF0IGhhcHBlbmVkIGhlcmUuIFRo
ZSBrZXJuZWwgdGVzdCByb2JvdCBidWlsdCBpdCBqdXN0IGZpbmUuDQoNCkJSLA0KSmFuaS4NCg0K
LS0NCkphbmkgTmlrdWxhLCBJbnRlbA0K
