Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A27D6D2CD07
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 07:57:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DE0D10E17D;
	Fri, 16 Jan 2026 06:57:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PHRC9FE/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBCFE10E068;
 Fri, 16 Jan 2026 06:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768546671; x=1800082671;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=MtRLaBXwJ5M10FFH47uOrqxBbVgW/wbmzsm7lPh1IqY=;
 b=PHRC9FE/OQJVXpS4ZnLRghcu5Q9xAJsAt/cQGUg7KWAc0JkaJkf2F9Is
 JaE4XoGNdAH5cVDEO3pYmesDXkLer4IUNVVStU95M06YOXAY1bLAqtCDf
 cJ+1H7C4ms8uXM91n0AswLHunUq4g0FlwR/uyqTPKRzZsvCZmM1yIiD2R
 wlhVf0jcZajnaTnosR5mlwRA6y5ws3QskC7Fw8gqId3P5T09GZ6MzXrK3
 GQIVw0iVRf9OvGK8O7IO7HjwbX7CNtazCsZbqqCB3/zSfwindgS/o8aRQ
 3yONLi23uMG2AASupAyzZoW7o05Bm3vqSMz3qpLA65y7VL8yz6gZ5gTR2 w==;
X-CSE-ConnectionGUID: qJ8xb5OVQquYPdL3fp8JyQ==
X-CSE-MsgGUID: Dq1p46CARTesFJJfsDYb9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11672"; a="80164253"
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="80164253"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 22:57:49 -0800
X-CSE-ConnectionGUID: X4mLPksJQY+f6CM2HX+QMA==
X-CSE-MsgGUID: +QrlbeKwSO+I+SPk6vjn9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="236421880"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 22:57:48 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 22:57:47 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 15 Jan 2026 22:57:47 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.60) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 22:57:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HdphWMWGrMrHPVkT1BK2y+2X6j5crN5z7Xb8y4RTLlhpUsGpXv49yFKdzq9BzJYIkkOcYQbSAhMvuWaQAQX7htONEJUwoz9OvWWnd8jDDHnJ6Qzddf/mkytwLcnSUsvDZ/dzPhGsNdBQgm4p8T+kWG7j+Wy5zFQT/Y6jDbs/MWwrr0RhDGXR8jtlmw8ASQNEWWdF/kLa3RpVoiJpMHHgZMDV50h4FBBR85dShy/HmiWfgOEDcf0W15dcgSRaeliyi/3NkDDhKgsHk+hXtzHGBsR7petrTifWg1cAsYc4bFZ7CGQxzQpVEypqFJ6B5P2bgrqukHoIyL3Ue/Krdk8PRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MtRLaBXwJ5M10FFH47uOrqxBbVgW/wbmzsm7lPh1IqY=;
 b=oQDZApcNpv5TlXenrgaHM3Fn6XSMH0cTQIdMou7QPtjLAsXdSg2VMcpF4kvRMn3WcU/Ia09nXRuI5ztH8B2cJRO3rD+2cX/blNt758ttqZERKJ6HBvNnpGrvBB+SNuw2Rvb6bipIiJ/PHaSJJt1tNhRqu4QIsgIyUjqHar0JcaTufW0oTraSrNidmX7SCRieFfZtp2yUzxiWH0ZzzvEZ+4ieChW2c9i9ZPulmOLcvHopc1kedAlp8gwrwHPu1ZAz0f+mhgVfEthEEbLWVEamvqO/2K55yZRofc9ssxzbwHGzUKsRMJXDe1suS8imOnhJLufMU+wf5UtJ2gVLvGYBdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA2PR11MB4778.namprd11.prod.outlook.com (2603:10b6:806:119::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.4; Fri, 16 Jan
 2026 06:57:38 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9520.003; Fri, 16 Jan 2026
 06:57:38 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH] drm/i915/psr: Don't enable Panel Replay on sink if
 globally disabled
Thread-Topic: [PATCH] drm/i915/psr: Don't enable Panel Replay on sink if
 globally disabled
Thread-Index: AQHchezMJQ9Ne8s6Wk2EjEnp7hGpF7VTExaAgAFL3IA=
Date: Fri, 16 Jan 2026 06:57:38 +0000
Message-ID: <6a524142270e3109365db277994ee8dd946c55d4.camel@intel.com>
References: <20260115070039.368965-1-jouni.hogander@intel.com>
 <DS4PPF69154114F14FB57A5C217035A8C71EF8CA@DS4PPF69154114F.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPF69154114F14FB57A5C217035A8C71EF8CA@DS4PPF69154114F.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA2PR11MB4778:EE_
x-ms-office365-filtering-correlation-id: fddeca57-67d4-47e9-eef6-08de54cc891f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|10070799003|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?TTZzNW9jc3N0U3crS2R1d3Y0ZUljanJPR25nUnpnaG5ocDkrWlZlWFFScEpT?=
 =?utf-8?B?UW5RdkR3dlRwWmFCaEM2cmJQcFMzWG5nWC9PakU1aDFoQk9lTHRPMFNGc2ds?=
 =?utf-8?B?ZlZlU2dLVXhGVGtkdmhYV0FHandzZ1pSY3o3cERUZjFNd053TWIvd20vSnE4?=
 =?utf-8?B?R0VsaXVDWUNKb1o1ZXAzS1BHczZyYXVKb0wvSVltbldPRkV4U2VrRjA3YWJL?=
 =?utf-8?B?VUFEalZDb0JxYjdmdDVvclVZM1VnYlg5WW45ejJqbjZkcTJ0MWVxdHZTUE45?=
 =?utf-8?B?QjhycTAybVNKS1NaWUZrN242N1o5TG4zRWdBcnpEZXdsSERhWHFCTlZ2NWRS?=
 =?utf-8?B?MHluTDVwZE83eGsvN3U3Q0VxQlUxNzNCZnVGSHA2eFRVbnMzbm9NWWp2UHpM?=
 =?utf-8?B?L2tSdU5MeFBqa0tpY1ZiSlRyUTVaMFlIWFhvTXNvU0U3MWlEd2hGa2FIWmEy?=
 =?utf-8?B?QnlydGJwZDM4NEpyQW5aK3ZmVzdocHZvUTg2RldjSkppVm92Vmczc3AxMXdH?=
 =?utf-8?B?bVNXZ1pxU3RkR3lQeitwUGFJa2M3QTdMK2YvWjN4UEl0R1pQQWNuS3crV3Mr?=
 =?utf-8?B?MERRZkFmY3p4bjJlelZxNXdCUzJxYUFGdDdobkNWWFhCcXJoZnlkQVd3bzhh?=
 =?utf-8?B?V3k3QXRYdEE3dDg1aWlnc3hSa1k4Ny9OK0RXT1lRZTFTWDVQNHhTbnZWTU5S?=
 =?utf-8?B?YVR2TExJYkN6UGVjVXNkeSs2d09hMUk3SWlObGIxQTlvTk1jMkJZdXRQUVhY?=
 =?utf-8?B?OUlKbUVweGpyMW9ITWwvVTMwaGc2cW90QU1PY2ltRGM2d1RwejBveUpxOHFM?=
 =?utf-8?B?eEJFd0FMaU91NnVITEVVSVRTL2pTOW1uNG82bHEvS1VvRytJUVFnYXEvRlJ2?=
 =?utf-8?B?VjByTFpmb2I4NzA1aldId04rNGNJeU11STVTRFQ4YVdRcDEzcCtPTTNPaENP?=
 =?utf-8?B?SlZDank2ZTYrdks5L1lpM1laYnJjWlE4NytpMEh4aDRIZ2VmQlEzVDdHa256?=
 =?utf-8?B?RkNYWXY4RUF6aUw2U0dLejJvVzZJTzR3U3FReVRtNlRYa2NyNkNHWnMva0s3?=
 =?utf-8?B?Y3JkUFVnaDdmMW1lUURJYW03NEFhOUJNa3lieGRrZWRvbzlwU3VNc3lacWZK?=
 =?utf-8?B?WGhZN2U0WUlVaGJoZXMxcWJnd1o0c28rMllnaFg5THh5SUhVNVlvZWxhN0NG?=
 =?utf-8?B?VW9jdU9HY01ZQkV2RU53Z09DbUZmMUFHaldrRXVBVlpQOG1SZmpZZ0lySGtT?=
 =?utf-8?B?K3dRZlVxT0R6U3pqdjBjS3lvaFZtL0ltVlQyTjVwSUtmS0tEeTk2bG9wVGdN?=
 =?utf-8?B?VW1TWVFnUWc4Sit5SGFyRy83NW1WTk5kcE84M2FBbktXcE1IdWZUY2plOG1K?=
 =?utf-8?B?ZnhPVCtVem9OSGx3OTRrcGE5elVlQjBRUTh4MmFjd2hIbmN0OGdPWVlISWdq?=
 =?utf-8?B?L3BYMmdvZUQ3RWNqSzhYeUw1VXA2c2ludW1ONnM3dDdaenNraG5zZnZwdE9P?=
 =?utf-8?B?R1FxRUVTamNTMVgrbUIxTGxTOGxYUXNBU1BmaUZ4eDZDckZ2aUZySTFFSkdy?=
 =?utf-8?B?MmhVbmx1WlRMTU8wbm9tWmE3dFN6NklEdlhhUVRRQnRDK3ZiY3V2TElsWEFK?=
 =?utf-8?B?NjFOMFpRa0JvQlFhdVdUL0FIdHVNV3R3aVFjaDdhUTdSOUdFcHM1Sll6S2p5?=
 =?utf-8?B?VlVoQ3BYcU40NVZoVEdPQjhXTVVoQ2pvd21JMWJ5S2xRN3I1ZEd4VFFzOHFz?=
 =?utf-8?B?Q3dXWmtWM3ZCVGRvby92WExEUkUvc1lqcHEwTlBJcVEvcTc3R1pCTTIzRi9j?=
 =?utf-8?B?WEhxZmx6b1k1K0VCTGM3N2Iwd1Y3NXN4MGJPQnJTOWdDWmpLQ0VQSitPZjAx?=
 =?utf-8?B?Si91S2hRZnkxT1ZqZzkza2g1bkpCOVB4ZTErMFlab0ovQjE0cWt6L3BEaDM5?=
 =?utf-8?B?eG9kSmhFUEoydVc0T1NQUFkycHgyTEk5S2dLbUZDeWQyTnJPSnJKNWtaSTV6?=
 =?utf-8?B?S2hkY015V0JRS0F1M3hhR0FNek9CZWJXc1ZsQmk2UjgxK1NpRUR6MjIxeGpl?=
 =?utf-8?B?dnlzMlZoMWdQZUJQTGRtYzQwK1R1QWpWMC93ZXhrVkpDK1RaV2l2SC9DNUc2?=
 =?utf-8?B?MjJyWmtENjZLVkw4RFhvY0xKSU5jVVZXczhJVWhkU1ZmWmM5MVd1d2pkeC9G?=
 =?utf-8?Q?BoeWKn7DTa458Jon+nGehQ4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UVFma25uUmNsUnJOMU4vakQwRGVTblN3YXVKSFNkR3RHRzdhYjJNMjcya1hP?=
 =?utf-8?B?aHFZMWt6UDhQMTVETUladi9oK0JKdGpzR3JjazlCdXVBZGJiQUpMU1JJbmJJ?=
 =?utf-8?B?RG5mVVhGQmJnS3dQY3poUjFVa3NtT0hwSVVDYmdERkRpMkZpa0dpS3d2Um1G?=
 =?utf-8?B?bFpwUXNKUkw4K2syZWlKNHBMVC9JU3hTaHpES0lJOU1WVTg4UHBiRzl6NVgw?=
 =?utf-8?B?RTBOL21IQ0YzZWt1ZmlCSXY0enZiTU85eWNUYWJ3Rjc5b1hWaTB2R0ZLT1Fm?=
 =?utf-8?B?UkZJcmlIRk4rVHJkbmhRWWQwMmV2NUZpZnVlR2pFZTdiTWRCZUxmU3RtQVBl?=
 =?utf-8?B?QzNzRWJ5QnZDSUxMeGVacVdSSlhDKzgxN1VIZHRrQmpVS2FMWVZBbk5JRDFu?=
 =?utf-8?B?TWQ4S21TMXVmT01paE8xL3J5MDV6Uk15MHdqd3RBUFlkL09oR1dRT0JJbHRU?=
 =?utf-8?B?VG5UNjFSRW50dFlGQUl2dU5TZXQxNlNVdHgvaDVlVTl0cmhtUE00S29rS05z?=
 =?utf-8?B?Vk15bjJnYklQWU1XS2N1RiszTnlYcENoN1RIUys0b2xUWnUreFF1U0t6ZlNY?=
 =?utf-8?B?RlNQVUUwUDZSdmZaR1NpQXE5NmRacGV6c0VUc1I2SHM3VEp4a3A3Sy9samhu?=
 =?utf-8?B?NVRBTGVWbkNhaEJ6eVJCc1pvWUtSVUZzczdyaEpDNzFSZnBjMDA3TE5oUUlk?=
 =?utf-8?B?ZVdpckc0V2NneVJ4aG5nOE5Za21NQWpaNUl5Vk9oL1R0c3lueitFRWZqdnlB?=
 =?utf-8?B?VHhtcnIyTVArRmNpWFZxNzVHa3FYVXlTV2oyODMrMnVSR0dxRWJQa2lZeTJo?=
 =?utf-8?B?UlQ1dENNdDBiRzBETGRGdUVuTjlpTUNsQU9HajJtNnRxYU9WZHhWZC9vK09a?=
 =?utf-8?B?aERWRUNldElBRTBoQ0M2blQyUzkyOU9GdGNQMk40V2hGVHNlTWZobm9vOFIr?=
 =?utf-8?B?SklGcUg3UkZrRUFybjlYdDhyOXg3NXFJTi9OTS9rcGY3N1dodDRWL1JkMmEz?=
 =?utf-8?B?QjJPV1pRRmNHam1rd1M5RkRla1VhaTUyak95dmo5TkUzcUtyZUdnUmpxU3J4?=
 =?utf-8?B?ZnQ3bW9IQmZhNDJ4eTYxN000Y09JZ3VaZkJTZ0VYZFB5bnB3eHNtTFZiWXpO?=
 =?utf-8?B?bE0rRzVJSFFIbTRWTjVvM25QVjBZNUxUK0hZTEtnUlZoZHYxS3QvcGVvd2ty?=
 =?utf-8?B?TVVNcWpVcHpuVDF2amtvenlNQXN1RFZiaXJtYjRlOWpDMUxhU2xRajFQdGMr?=
 =?utf-8?B?VHF3VExQQ0QwWmNRN0xGaEFBMlllQkM3ZC8rWVc2N3JBV3oyOTRPVHViU3No?=
 =?utf-8?B?ZENDMXZaV05qNXNNZlBodFhPNUFnTERwenYrTmYvY0M3T2xzZXVveEsyMUpW?=
 =?utf-8?B?TnZ6b2hnR3R2RUFNdnFCYzdXOG9rUXBScUpHcUVHOG5IWkZGQm5lSDZyaXJi?=
 =?utf-8?B?SzlnZy9QWGJaSDZORXppQnQ4b3VlYjdzeSttSVFPYmlVMStzSDNEb0IrQ2F1?=
 =?utf-8?B?ZnZnb3lwQzBmZ1pURklkeXRIRXBhYWJaN3hIYU5WaXhrUXpxVjE4em9QNlRE?=
 =?utf-8?B?QlorNDg5NkpFcXNRbzF4S081dHpFdURsdytvUkcyYmNtNGhZYllCNHNZalFn?=
 =?utf-8?B?dUs4NFdraWpXeVlITktQeVAwQzd3bHIvUS9Ud0xwZGZRWVA0elhyaGZ5Nkov?=
 =?utf-8?B?d1ZFVG9SOFRmY1NYQ2ZuUVlnUjlmSmlXYmNMMzM5bGtPQy9SSzhiMUp0WGpW?=
 =?utf-8?B?bG1VTTg1emtOZGg5ZTk5a21PQjZ4RjVzVWpoRFltSWI4M1hYZWVvRUcyejFq?=
 =?utf-8?B?WktmVU9Odk9zaDdoV1pwY3BGM0RCQ2N4YnIreUFQbGZ2NTJvRVdLQ0pHTzN5?=
 =?utf-8?B?R0RpNEVveDlXbVpMZEtTSGtVc21oZnlIcktFZjhlbWNjNEdZUHE3b0h3ZG9G?=
 =?utf-8?B?L2JxbURURWtjaTFEWmJiNVdsNnZoeUNHVHhFSmFteGdnWjVEdXlRTjFEVlFY?=
 =?utf-8?B?WEU1QzJvYWpGYk0yUEhGQm9rak4xd3JySGNhdlFxY0hhekNQZXdxN0NvUm14?=
 =?utf-8?B?dG04ejN6OG9kdSszdEhNUmZIOHFIbzBXcnU4ZTA3NnFSY25NNWh0cU9PckJ5?=
 =?utf-8?B?QWxyVzBlOGcyb25LRENRNVhYRjBZSGVZQjhlbmZCK080VnpVTlQ3NHEydUVW?=
 =?utf-8?B?MDNnNElmc1daWUNGa3pGaG5HNCtRcnhLUTFlNWJYRHVBQVdwN3VxdzloZi9M?=
 =?utf-8?B?WFNhQ2U1TlYvNlFnYWE4ZTVZSVdIVUoxTlRkZE9ZblRsTitqd1c0cXJLU0tQ?=
 =?utf-8?B?cE0xRklKazhtU2xjTWNuRWdydnhDSElmVzBiZmRzWmlEY0RLVFNzaUlTMnNx?=
 =?utf-8?Q?uDgvLOgLmawUctwAfjvS5AX3sUkUS4M48cfkZFEVX2cNs?=
x-ms-exchange-antispam-messagedata-1: lJ35yg/W/qNCaAnkqQuIv4YjJ/KH//j1n6s=
Content-Type: text/plain; charset="utf-8"
Content-ID: <ED6556FF295BB046AAC6D7F665157BE5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fddeca57-67d4-47e9-eef6-08de54cc891f
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2026 06:57:38.3769 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K2t5sjidpFYU/wb4FZ/zO2kqkf4iDV9RVWZo+PptVuoQHI848unKpO54IoPCHGZV5F9Q87lzi8OWvY4wMtbT1DIXg+zONbZ9Q9I1s00blDg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4778
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

T24gVGh1LCAyMDI2LTAxLTE1IGF0IDExOjA5ICswMDAwLCBLYWhvbGEsIE1pa2Egd3JvdGU6DQo+
ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBIb2dhbmRlciwgSm91bmkg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBTZW50OiBUaHVyc2RheSwgMTUgSmFudWFy
eSAyMDI2IDkuMDENCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50
ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91
bmkuaG9nYW5kZXJAaW50ZWwuY29tPjsgS2Fob2xhLCBNaWthDQo+ID4gPG1pa2Eua2Fob2xhQGlu
dGVsLmNvbT47IEphbmkgTmlrdWxhDQo+ID4gPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT47
IFZpdmksIFJvZHJpZ28NCj4gPiA8cm9kcmlnby52aXZpQGludGVsLmNvbT47IHN0YWJsZUB2Z2Vy
Lmtlcm5lbC5vcmcNCj4gPiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1L3BzcjogRG9uJ3QgZW5h
YmxlIFBhbmVsIFJlcGxheSBvbiBzaW5rIGlmDQo+ID4gZ2xvYmFsbHkgZGlzYWJsZWQNCj4gPiAN
Cj4gPiBXaXRoIHNvbWUgcGFuZWxzIGluZm9ybWluZyBzdXBwb3J0IGZvciBQYW5lbCBSZXBsYXkg
d2UgYXJlDQo+ID4gb2JzZXJ2aW5nIHByb2JsZW1zIGlmIGhhdmluZyBQYW5lbCBSZXBsYXkgZW5h
YmxlIGJpdCBzZXQgb24gc2luaw0KPiA+IHdoZW4NCj4gPiBmb3JjZWQgdG8gdXNlIFBTUiBpbnN0
ZWFkIG9mIFBhbmVsIFJlcGxheS4gQXZvaWQgdGhlc2UgcHJvYmxlbXMgYnkNCj4gPiBub3Qgc2V0
dGluZyBQYW5lbCBSZXBsYXkgZW5hYmxlIGJpdCBpbiBzaW5rIHdoZW4gUGFuZWwgUmVwbGF5IGlz
DQo+ID4gZ2xvYmFsbHkgZGlzYWJsZWQgZHVyaW5nIGxpbmsgdHJhaW5pbmcuIEkuZS4gZGlzYWJs
ZWQgYnkgbW9kdWxlDQo+ID4gcGFyYW1ldGVyLg0KPiA+IA0KPiA+IFRoZSBlbmFibGUgYml0IGlz
IHN0aWxsIHNldCB3aGVuIGRpc2FibGluZyBQYW5lbCBSZXBsYXkgdmlhIGRlYnVnZnMNCj4gPiBp
bnRlcmZhY2UuIEFkZGVkIG5vdGUgY29tbWVudCBhYm91dCB0aGlzLg0KPiA+IA0KPiA+IEZpeGVz
OiA2OGYzYTUwNWIzNjcgKCJkcm0vaTkxNS9wc3I6IEVuYWJsZSBQYW5lbCBSZXBsYXkgb24gc2lu
aw0KPiA+IGFsd2F5cyB3aGVuIGl0J3Mgc3VwcG9ydGVkIikNCj4gPiBDYzogTWlrYSBLYWhvbGEg
PG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxh
QGxpbnV4LmludGVsLmNvbT4NCj4gPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50
ZWwuY29tPg0KPiA+IENjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyB2Ni4xNSsNCj4gDQo+
IExHVE0sDQo+IA0KPiBSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVs
LmNvbT4NCg0KVGhhbmsgeW91IE1pa2EgZm9yIHRoZSByZXZpZXcuIFRoaXMgaXMgbm93IHB1c2hl
ZCB0byBkcm0taW50ZWwtbmV4dC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiA+
IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29t
Pg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
YyB8IDcgKysrKysrLQ0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+ID4gaW5kZXggOTFmNGFjODZjN2FkLi42MjIwOGZmYzUxMDEgMTAwNjQ0DQo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtODQy
LDcgKzg0MiwxMiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX3Npbmsoc3RydWN0DQo+
ID4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+IA0KPiA+IMKgdm9pZCBpbnRlbF9wc3JfcGFuZWxf
cmVwbGF5X2VuYWJsZV9zaW5rKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCnCoCB7DQo+
ID4gLQlpZiAoQ0FOX1BBTkVMX1JFUExBWShpbnRlbF9kcCkpDQo+ID4gKwkvKg0KPiA+ICsJICog
Tk9URTogV2UgbWlnaHQgd2FudCB0byB0cmlnZ2VyIG1vZGUgc2V0IHdoZW4NCj4gPiArCSAqIGRp
c2FibGluZy9lbmFibGluZyBQYW5lbCBSZXBsYXkgdmlhIGRlYnVnZnMgaW50ZXJmYWNlDQo+ID4g
dG8NCj4gPiArCSAqIGVuc3VyZSB0aGlzIGJpdCBpcyBjbGVhcmVkL3NldCBhY2NvcmRpbmdseS4N
Cj4gPiArCSAqLw0KPiA+ICsJaWYgKENBTl9QQU5FTF9SRVBMQVkoaW50ZWxfZHApICYmDQo+ID4g
K3BhbmVsX3JlcGxheV9nbG9iYWxfZW5hYmxlZChpbnRlbF9kcCkpDQo+ID4gwqAJCWRybV9kcF9k
cGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1eCwNCj4gPiBQQU5FTF9SRVBMQVlfQ09ORklHLA0KPiA+
IMKgCQkJCcKgwqAgRFBfUEFORUxfUkVQTEFZX0VOQUJMRSk7DQo+ID4gwqB9DQo+ID4gLS0NCj4g
PiAyLjQzLjANCj4gDQoNCg==
