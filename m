Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC887A44EEF
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 22:32:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EB3010E7F6;
	Tue, 25 Feb 2025 21:32:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ol00BHr5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76E8F10E7F6
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2025 21:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740519136; x=1772055136;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=WvmAK9Nel4LwLUc02WFPRLGesakxSAzcqHzGuyuKAvw=;
 b=Ol00BHr5T7AH8zMJYEbqLp2HaRPlaZfsgcOwG+8iUfq+WD8g5wOCq9YU
 Vx7lt3CQUIDVF8+tDFkBKNRUcQRYV2l9fV9VkjWYsm11ra8CTLBcaM3KM
 TBtVWS8nVxhTLyVJJizmyONEd8Qawhw5jBqK/zvCh2GvO8P0D/9yUuNKh
 ih1BjWKUxtwfsdEoF2jboz6c2q/Lx5ZdTwc8di5GF12cGMOR033T7Y00o
 xUt23tOTOpSbZI7CfioW64WdeE07cLur/z4ovQHMryQwhtvBf3FuUb7LK
 0Gn/xBt1953bzE3HVo3+cYLGgr70oRR9qrIawxEQDnh6Dq7dj12W7vxRg w==;
X-CSE-ConnectionGUID: gJdvF2fYTESYq5e8AAvzvw==
X-CSE-MsgGUID: Z9peTDUmS4aOB00OAX51MQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="45260835"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="45260835"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 13:32:04 -0800
X-CSE-ConnectionGUID: F3SeVm0CQHyir8OBrXemfA==
X-CSE-MsgGUID: cZLO2/8tSN2Z/LGu0uiniw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="139746448"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 13:32:04 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Tue, 25 Feb 2025 13:32:04 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 25 Feb 2025 13:32:04 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Feb 2025 13:32:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S+o45lPkb4mhrAHM7c+jnoSAoOixIKCzMh4QASkvfqSxgG8XiAAzJ1+tLkKAip6ky6SOwkDQYHhsAQIF++00yIs/y7gfDq9XXf61kPcQmBulGqFCBTVZzTqRwAb0Vmpl/qDwWkvyYIaNQCRkdkV76EFJMi8XPF2cBDv2KE4Xx/u4cCGtrILx7Hh10E6yk8/EimmOLKz74iWN8pwh9pzKlTTLlkJYu6J7GaBulBO23i78V1jwihCboraCNm6XayW1JDSnP3wokOep5OitO42AsYLr+fZPqYwhEZ3JHKbGkRQrzgLd4JkFqOAUiW37FipW4XJmTlEvmZn7i+x3C9Cxdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WvmAK9Nel4LwLUc02WFPRLGesakxSAzcqHzGuyuKAvw=;
 b=Fmvn2ZLedZLoxRxu6XJ+dRGwqS9faOds37w1KrD5d1sqYF+r0vOe+58uc6N3CCkftX7BCyj438KySsfNJpOBkqH4He4IzU9b8XjpGGMhlksLIP+EwKy1tFaQWj+5u3h3unzJSldWS5irmR/B7kk8izOAZQ2DolPblHuiLT5qfZYW5o22vRsL0F7oFA5Ni59xC5sYlUV/P1rOLiGgzksqSaDT7uYCfq55JTf+RBVh8a6u6YJDOdOut2h1y8s3+VO/agjJiyYTa5tXqMpIvfXjKT3DDXiHdjg1tbLKZdaaRzxIkwRgGrQ9rsFPdJf2ya98/uKrOSQQKvnDd4ypIR8I8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CH3PR11MB7372.namprd11.prod.outlook.com (2603:10b6:610:145::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Tue, 25 Feb
 2025 21:32:01 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8489.018; Tue, 25 Feb 2025
 21:32:01 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 02/19] drm/i915: Drop redundant shared_dpll=NULL
 assignments
Thread-Topic: [PATCH 02/19] drm/i915: Drop redundant shared_dpll=NULL
 assignments
Thread-Index: AQHbgkrccjT6l2+kyUqVIFvc29h7+bNYlNGA
Date: Tue, 25 Feb 2025 21:32:01 +0000
Message-ID: <f7057bb571a1fd1c631a7d77eb3b0162810a0f90.camel@intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
 <20250218211913.27867-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20250218211913.27867-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CH3PR11MB7372:EE_
x-ms-office365-filtering-correlation-id: 67479bf5-81f1-4f11-76bb-08dd55e3d735
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?NzBFNURZa0N4MGFtd0xURVBLVWlIZ1hKOE16S2E1VjVBWm5YcW54dGF0WVdh?=
 =?utf-8?B?dktDekEwRXZsZDhiQTByemZySHFsZVE5MWhBM2pta1B0YVZXa2NUVVJoYzhC?=
 =?utf-8?B?cHNaWm12THFNNUJxZDdrbCtEd2NXcDRpUmlWRmdSQTBoZHJVTWlsaXkyRTVL?=
 =?utf-8?B?Wm5DY0FCUW5lZ0lLN0tldmZWZnpXRm4veGhhQURaTEZ0WU1USm1mdEQ4RStI?=
 =?utf-8?B?SEVQeEF1S204MTN5VzBOakVzVG9FdEJXSEl5Q1FrVmlhMVpSU0l4OHBqQUhC?=
 =?utf-8?B?eGQwdUQ0bHJYeTZBeEY3L280emxFQTNZalIrVC85MlpLYW1YQ3JPZlB5Qkx0?=
 =?utf-8?B?N01wMmczNG1ZbWw1T0UzY1IybHBhZVc0c1FKVUdJUTBxSkpZQlArUWw5NFJr?=
 =?utf-8?B?eGJOS2pSaVlNMzBSalVmc1crbjJwaStnL1lZQzhYRjAza0xDVUZoTHBBVG5L?=
 =?utf-8?B?cDlKb05TWU1oT3ExZU5sUStoUjd3Y2gyeHA2N05nbGNjRm5CcFdqZlNlR3NW?=
 =?utf-8?B?WlhMNXF0dFRLUkZ6Zk45Ry9MN2llaVBNSE9wVEYwd0ZsQXNwQmMzZVluMzV2?=
 =?utf-8?B?bEd4OTRRbnNVNWQ1a0Rxb2hRZG5xN1c0YmRTYkdMa0UydVFyN2dSTGgvZTFh?=
 =?utf-8?B?d0c3WkNlR3dURENQOFpDbmpQcmRycGlKU0hKbmVHOFJkVG1XQS92NklqUXZl?=
 =?utf-8?B?NkFoQ1B3RWJ0U0Zjcm9ubWI2bGhOdG5zWjQwbmQ5Z1ExellCKzB3dVkvVm96?=
 =?utf-8?B?d0Vod25sOUZQMFVMZkJvQXJDS1dJWnloMkJYaHh6V0Rhc1ZIS3FRMGs4Z3Vs?=
 =?utf-8?B?NVl6RzJZMFdSMTNMTDVoZ25vYzN6enhxeldsQ09EUkFpNTRGdWZjaGc5aVU5?=
 =?utf-8?B?a0lWT25YK1gzR3p4SkQwYjJIbHczdDl0MktZcDlTa0t6WGRVWUdIYkhPVVNz?=
 =?utf-8?B?RUhaSWdUUFpiVzl2aGdEc3pkbG1vVitDWW9QWC9FK1lYQzg4MmxzVUgxSjNJ?=
 =?utf-8?B?L2U2MUs0M1pGY05mdUFkRkRQQW1IdG5zczNYREZURGs3OGpvM1Nsblp3YVZ3?=
 =?utf-8?B?UWU1QU9uaGlya2pTMXBzTnZqa044U2haM3JHcEd5OHh0Rmg4VncrVmpudEIz?=
 =?utf-8?B?SmtGMXkzcEpUdUpudFpSUXlIT0FsWE8rVk52MXBQS0pEanI1QWhLRnZISjF2?=
 =?utf-8?B?UUxDQXNhRlhxMElNaHN0ckFzM1JrKzVWak5QZEZzcWFSWlI5ZGFSRWtSUUhj?=
 =?utf-8?B?UmJjZmJwSUNFenJpNi9RSkVkNVVWTXlEb1VEZ3gxWlhQRVdLZDQ3Mkp1K0Zy?=
 =?utf-8?B?UVYremtIVjkyYXlNbnVITG5OV2ZXZDdLTGs4ei82QlpveU1oNlNRaDI2dEVa?=
 =?utf-8?B?aDRaaVZkZThyUkdScklPbDVNdkRYRERJTUVRaEo1TTdHTlJjVG41ZHlnamxZ?=
 =?utf-8?B?NzFmcjdkVElJb1NSMThndFJ6eEREK3Q3NExiZ2lNTStxTWc4RUtVcWVONW1z?=
 =?utf-8?B?MTZaaGZYWFhhZ3Z3VDA5OWYzTlV6NythM1hLYUFoUzBwVlNZd25wM0piaCtE?=
 =?utf-8?B?dVl6OHdQZGlWaHp5QmRmRWNSNi9UVGFuWDRJK3g1U3FXTG1wMllUWENmMEpE?=
 =?utf-8?B?S2VpWDlVWXVsRlJoUjd3RlNMSjJQbkJkblljbS9PSjhyV1ZCQUEvcVJpYWNj?=
 =?utf-8?B?TWUwQ2V1NmNYWnA5TFpsYU9zRFduWE5kUWdpeHpqMEtFT0p1Z2YvUEpHdnQy?=
 =?utf-8?B?U0lIa3c2RC91WGdOVXRWNjRJcGtvTk9ZTC9MM3F1VE8zL1ZHOTJ1aDZnWjhi?=
 =?utf-8?B?cld1a2FoNEV3TjhyOUthWTRzMVRjRUdUQnpGK0VLcHk1OE9tdEZVN1p3QVlX?=
 =?utf-8?B?cHIxamlWRkVOSlhCNTl3Nmx5VzdwcllONU5VQzVUenZDcTBqN3VWTnRwVE5J?=
 =?utf-8?Q?iRyH4noTmlaChwQCbau4pOWJPUzv9DVI?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NnFzYlF0TGlsRGF0YXhSa3lCVW5IVDJuYllFOTBUOGJoM1VYeW4yWnZ3VXV5?=
 =?utf-8?B?MjV4U3hETEtZVFFNSzJkakYrT1dKcnRHajJ0Qm5hMXlJSytxY2tZOVoySHZD?=
 =?utf-8?B?ZXhlSjZhSXdEV0VnWHliTVQxdFU5REZxNjYyYWtGSTFkcnFUZitvK0ZkQmNn?=
 =?utf-8?B?cm80ZWdPd01zby9BQVdmNXgxc05IL3NZZTJRcU5BY3E2bUpoUkxodm1lODRx?=
 =?utf-8?B?Q24xOEJIUVdQSkJSc2hGQ2xxUEdoM0hyQ0xqNG4xeE1sUnMxSWpRWlo3bGlZ?=
 =?utf-8?B?U3RTaUszZDQzcVQ4WTdScU90ZE8rQ2ZJWGZvTVZwN2RNM0hCL1VsWEE4WjFt?=
 =?utf-8?B?TTE2OXpPNmVHS3RTSnVKQkJVQmQ0N1kvb2svK1RVakFhdzZ0SEx0SkphTWY1?=
 =?utf-8?B?UTd3WjZ0TDdVMDBmUHhsT0tQTUxmR1BDMkNnSHl6ZHp6SDlXanlZK2F4ZWJ0?=
 =?utf-8?B?eEhHQUVHN0V0L3dIZ1U5Y0ZlK3BXK0wzbDAzNllIYTJqSXV6amNsZ0RiWGpD?=
 =?utf-8?B?WmlmdUZ5eGxZbkozbkxnSGdDL01aTEoxc1EvR1R2Qy94Q3pSYWZaVnV5ZVJo?=
 =?utf-8?B?bGVZS0hJSTFNZk5hSHJGMkY3aSswUzFXSVZ6NGFiSjVucThHZ3ljUlRxRWxs?=
 =?utf-8?B?aDhWNFA5YzBhcFlzTmt5MVNlQmhYT3NzbDVMVzJtQUsreE5SbFNBM1l5TjJo?=
 =?utf-8?B?SHd6S2hzcG9kaTBITXNhMW1jdG5CSTFFSkI3bTBtMW4rdGFKcWlJa1pacUdp?=
 =?utf-8?B?YTVXQ0FTZm9nQ3A0Q2lXVmkwYm9udXNic3BPOFFLRHVtQ1VnNmZEdHpndkt3?=
 =?utf-8?B?NVErNnFvbHhqcHQ4cVczUHlSNTQ5N1grd05COVBDdXJOS05UZS9kNUxBSmkx?=
 =?utf-8?B?ekQrTmM4Z29BQXR5UnljbmorenZTVENkWUtxVUVqdjVOOGV2MHNYSEZSQWpG?=
 =?utf-8?B?REMwQjZ5K280RmYvSE9WTGYyVEIya3ZxenZZeDlhWDNpNlMzMyt1cUR0bjRz?=
 =?utf-8?B?MmE4a1VkVE4zR2NSL0tqRFBnQ1ZkV2hQYjdYMkxHSE5mY2tSUjBYRklYUXZC?=
 =?utf-8?B?anhLR0lFcGdoTDBMODkzQ3JGVE5Kd2NmWWZnK2pIYWNZR0c2WHVSLzNtcnB4?=
 =?utf-8?B?cEtjRlVnaVJDVk1RZTk3TThXc1psT2JzVlFJY2hSdmxWbnBkVEluWVV1cTRq?=
 =?utf-8?B?VHdIN1dOems3UnN6ZzFrL0hIV2dBOFo4YWk4SkM1UFVmc3hMKys5SlBnT3Nz?=
 =?utf-8?B?NWNzTUU4c2xmd0ZXUC9OQ28rSitodGZDNlZVLzhybjRqVDUrNnBkWDhXNEVl?=
 =?utf-8?B?NEtaazN3YlZyYUtQR3hsWEFJTW00QmRrYkZWbE52cDlrRndLazBMVzBYcEhN?=
 =?utf-8?B?bU0xV2Rud2xLUTZjUmM3Snc2bDZwMTJHSzZqbmVsL3pzcHdKMHpqZHVQQnYx?=
 =?utf-8?B?bTNnbzc1c0NKZ1pUMEowQTFlQmN6R0R1dGJUK095bVd5Nk5zb2FodjVjYVB5?=
 =?utf-8?B?aFZ5UkM2dlR5cFpNSHFmNmZ6cVdyUmQwa1k0Q1c0aVJnNk12TTAyOWhzMVB4?=
 =?utf-8?B?cU9pVUFtOTRRMDdVVW5DKzViQk94cVk2bmc2cWMraTVFQTFNcHd3RmRUdlVx?=
 =?utf-8?B?dmo1bis2cUpmWjQxam8xbnJWU0xycWpDcDlWKzRGODU3MktGREpSM0lkNisz?=
 =?utf-8?B?d25lMXVldmZPenc4QTJEZTFFU0F3OWRJRUQ0VWJiK0prQW5rcS9XYzFZdmNR?=
 =?utf-8?B?MDVaT3NBSnV5ajNWamo1RTNVMlI2QTZjQnBYNEkzaG8wMWNZc0pvaXBPUTFn?=
 =?utf-8?B?SWxHQ3dxbGYxakFFTTlJbm5oRlEzRWhycjRVVXI1WGxOYTNxWVptSm5qSHps?=
 =?utf-8?B?NW5ucDhOdTZkOHdUTHBYSURaemlUUDc1ZFNhWFBFU3NsQmF0dnVzd0YwUnFW?=
 =?utf-8?B?cHFVQ3dzdCtLWlppTlI0WmtzbFBNYmZDNWRKSFBwVjlmdGp1b1Q0MVpiSmxH?=
 =?utf-8?B?TTZiV212eFpmTnhUbHJadmtpNmUvR3ZESnJYR0xyck9uNmo5b3QyQlA4RFdj?=
 =?utf-8?B?eGZXc09pL1RycUZFWGR3ZE1xRWpGV1c0TFZ6NmlmaDBGREVpQ1JzdXJHY1dH?=
 =?utf-8?B?dS9YRnRmTThaaFJhZVRKQ1AxWFZBVE1PTWQxVnkxTFBJcnBJMVd6RzQ5TStS?=
 =?utf-8?Q?7jW+aW6ABuLoUVb5hS6X04A=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FBFA9340DF39B1459776848583BF7A68@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67479bf5-81f1-4f11-76bb-08dd55e3d735
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2025 21:32:01.2994 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZpdozFvXbyG4sEl0NswED/fi6qm+QKxKyf5svRSYuuse/QKJIH2YnNuBr2YtluckOinX9GhtiDWabYT9r3z5PiDEj6j3mZSbwJOJAUTrUFk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7372
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

T24gVHVlLCAyMDI1LTAyLTE4IGF0IDIzOjE4ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlIGNydGMgc3RhdGUgaXMgZXhwZWN0ZWQgdG8gYmUgZnVsbHkgY2xlYXJlZCBiZWZv
cmUgcmVhZG91dCwNCj4gc28gdGhlcmUgaXMgbm8gbmVlZCB0byBjbGVhciB0aGUgc2hhcmVkX2Rw
bGwgcG9pbnRlcnMgYnkgaGFuZC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNCAtLS0tDQo+IMKgMSBmaWxlIGNo
YW5nZWQsIDQgZGVsZXRpb25zKC0pDQoNClJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFp
IDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCg0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggY2I5YzZhZDNhYTEx
Li44ZWU4YzFkZjA3NWEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jDQo+IEBAIC0zMTIxLDcgKzMxMjEsNiBAQCBzdGF0aWMgYm9vbCBpOXh4
X2dldF9waXBlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywNCj4gwqAJcGlwZV9jb25m
aWctPm91dHB1dF9mb3JtYXQgPSBJTlRFTF9PVVRQVVRfRk9STUFUX1JHQjsNCj4gwqAJcGlwZV9j
b25maWctPnNpbmtfZm9ybWF0ID0gcGlwZV9jb25maWctPm91dHB1dF9mb3JtYXQ7DQo+IMKgCXBp
cGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlciA9IChlbnVtIHRyYW5zY29kZXIpIGNydGMtPnBpcGU7
DQo+IC0JcGlwZV9jb25maWctPnNoYXJlZF9kcGxsID0gTlVMTDsNCj4gwqANCj4gwqAJcmV0ID0g
ZmFsc2U7DQo+IMKgDQo+IEBAIC0zNTAzLDcgKzM1MDIsNiBAQCBzdGF0aWMgYm9vbCBpbGtfZ2V0
X3BpcGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLA0KPiDCoAkJcmV0dXJuIGZhbHNl
Ow0KPiDCoA0KPiDCoAlwaXBlX2NvbmZpZy0+Y3B1X3RyYW5zY29kZXIgPSAoZW51bSB0cmFuc2Nv
ZGVyKSBjcnRjLT5waXBlOw0KPiAtCXBpcGVfY29uZmlnLT5zaGFyZWRfZHBsbCA9IE5VTEw7DQo+
IMKgDQo+IMKgCXJldCA9IGZhbHNlOw0KPiDCoAl0bXAgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2
LA0KPiBAQCAtNDA4MCw4ICs0MDc4LDYgQEAgc3RhdGljIGJvb2wgaHN3X2dldF9waXBlX2NvbmZp
ZyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywNCj4gwqAJCQkJCQnCoMKgwqDCoMKgwqAgUE9XRVJf
RE9NQUlOX1BJUEUoY3J0Yy0+cGlwZSkpKQ0KPiDCoAkJcmV0dXJuIGZhbHNlOw0KPiDCoA0KPiAt
CXBpcGVfY29uZmlnLT5zaGFyZWRfZHBsbCA9IE5VTEw7DQo+IC0NCj4gwqAJYWN0aXZlID0gaHN3
X2dldF90cmFuc2NvZGVyX3N0YXRlKGNydGMsIHBpcGVfY29uZmlnLCAmY3J0Yy0+aHdfcmVhZG91
dF9wb3dlcl9kb21haW5zKTsNCj4gwqANCj4gwqAJaWYgKChJU19HRU1JTklMQUtFKGRldl9wcml2
KSB8fCBJU19CUk9YVE9OKGRldl9wcml2KSkgJiYNCg0K
