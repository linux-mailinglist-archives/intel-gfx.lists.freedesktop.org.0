Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A0B92CDEF
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2024 11:08:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1832410E1A5;
	Wed, 10 Jul 2024 09:08:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DEMXkZTt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1076C10E155;
 Wed, 10 Jul 2024 09:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720602531; x=1752138531;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MlGgCFyLb9CrBKLyeAtQWVjg8MlImWZ1p3qRLhdyctU=;
 b=DEMXkZTt+7GYoXsLnFf5BFGKi7R+XuehKRinOrZ3n2S+nd7YTKQOiGYK
 BLJEKjebxgoCrdpqYiAiooWqXXffVYo+xvO46QUvd9oaueAXwcsbiZZXk
 +B8kI6T7ya0B2ayqKWAifzmuFR+a3s1ljZdpcyeYjSxybIrZChwRyIWQI
 Yf+Dc2WHI7u9pn4GtfcdWHdIEwfluJ1uk4rqt8+XH85bSbqBQQyGQqzIM
 R9NdKeyuuCg5AsSIM3rZ4Cscf4ONdTTMKD2nPvqjnB1u+zYXn7UK3zMOm
 Or9Tr8xw3D+UOFxlxNidZk7HfmwHOE56C5WcPQiEPQK+MgEDVGme/+fXY Q==;
X-CSE-ConnectionGUID: NZK3JwYKSwifjrA5zIiTgA==
X-CSE-MsgGUID: IaMjZmEGTYSodtcWF3XkFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="29310576"
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="29310576"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 02:08:51 -0700
X-CSE-ConnectionGUID: MscbIuODSOKIxa/HkpwCmA==
X-CSE-MsgGUID: E0UXjC4jQCm61bcCD3mADw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="53325937"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jul 2024 02:08:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 10 Jul 2024 02:08:49 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 10 Jul 2024 02:08:49 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 10 Jul 2024 02:08:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ktWxVmJJ4Pr7oc7vvzZnE0jMEZz1vIJ3aDREg10VGIpNIpUgiRB34J/NAw/QLeguj69eHFJfsyDsadWGsfE732hzblLVTyzqerINEesEDdRSh8d/1Pk1eMZC/9wIqbdGFGRq1SuQgRPPEJeQNDqX8TcxywwceljAS2+oOIkHTJ6qmo0YOhBBdPEz5zsjYyXnKqJPTfftSjQrE1NpsBtao6353gBf54wtnGisNn8S8v2pY+GsMyOJvDuyoGUwIScH/W6Uo7nY0CH4WWSKLSe+Kq2mr+n/bWA85BweBiUqUR/F6cmziR88iwQQJWqYFnGTARt5Vt+xKn7HEYRxC+1A8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MlGgCFyLb9CrBKLyeAtQWVjg8MlImWZ1p3qRLhdyctU=;
 b=Xu7vg2CkUOye7dT+ia2G0GMZa4m5uaYjbNkPMAoQf7tgXOkJH2AIh7Ds0ZQibQEqphGWboftpB4XTwvt36Q3v5RAShGNPLokmkZDZTHIWZbiZuyp3QpaipHyRvDfznBIwFB+0GrgbX79Jiufg8XRm4Wzjwng8rLc6eJ9kCsRQsckSISbbegD6slh9G+cyfnxBTIL5S7fsUBB7DSqTYFN6E9XlL/I8xhSK9D1xtA1VWZJCLilkSVaQgcs/gQlQ4zxwyBk/hDKy0MU2ueoUTsIa1cJw786/XH+3cx//wcyWlNr8j2aLVtVbDg9eHEUffU3pFFbS6jf+NFiJrbGe3AvQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SN7PR11MB7438.namprd11.prod.outlook.com (2603:10b6:806:32b::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.20; Wed, 10 Jul
 2024 09:08:42 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.7741.033; Wed, 10 Jul 2024
 09:08:42 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 18/20] drm/xe/fbdev: Use the same logic for fbdev stolen
 takever and fresh allocation
Thread-Topic: [PATCH 18/20] drm/xe/fbdev: Use the same logic for fbdev stolen
 takever and fresh allocation
Thread-Index: AQHazustCJceu/nPSEKuF3kRJ1DAabHvsn7A
Date: Wed, 10 Jul 2024 09:08:42 +0000
Message-ID: <DM4PR11MB63607BB4376FB14B3D575190F4A42@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
 <20240705145254.3355-19-ville.syrjala@linux.intel.com>
In-Reply-To: <20240705145254.3355-19-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SN7PR11MB7438:EE_
x-ms-office365-filtering-correlation-id: 8d33f7fa-7ccc-4088-b6d4-08dca0bfe537
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?enN1SE4xVUJNR2RVTVEzZ0xlMXZCb3FjcEVpRXVQbHUwdlpkdTM0ZzBOUDJK?=
 =?utf-8?B?TUpwQWZXd0JHS3NObEd6NkIxczhxL2dmM1IrNWdyWkM3QkM4dVJFSm9XenVt?=
 =?utf-8?B?MURndmFybnQzRE11TVIxdWhDV2c0Q2V0UGxrNjdqeFRvbEdLbUtOczE5ZVNu?=
 =?utf-8?B?L2x0OWhMb3FNclhGck5NUzg3ak1EYklVczVLaFdsSjdydGtzWDJlaStWaCs2?=
 =?utf-8?B?VG1NcTdJSDcwU3FZeXhFNStwNStTd2YrVVkrS2pQb0h1WTJKbmFVanl4c2Zv?=
 =?utf-8?B?TVprUW8zNHFHcWdmT25GeUpvUXFiWHMwVjVKTnJrZUovQzlHc2tPUjYySWRj?=
 =?utf-8?B?bEgwajR3Uk9GMHI3bDA1VkVSSkRJQnBuYkRod2ZIQzF2Q1QxOW0rQ09KVUE5?=
 =?utf-8?B?RFdqN3A0OVl5UGVUVkZNajJjUVdHVUhJdnBLRnM2ZjY0aWxSRDJvTVBVbkRG?=
 =?utf-8?B?bjRVZ2hNOUhZMEpJRjRnV3Q0anpub2hVV09TMVpObG1FTXJmbUcxb1QvNlhl?=
 =?utf-8?B?aTFvczRwNU9qVUNIdVdnbWNId2dHdEpmUUtYTnN4ZXY1aXc5dEgxMDRiZ3Bw?=
 =?utf-8?B?amFpWnNsVUsxUTN2R3ZBVnVXS1NFdXp6Vnk5VUtaRzJmTUcxNzlYcFZ3eWlJ?=
 =?utf-8?B?akgrOVlVVGdNcm9OWS9NaW5mTUZRZk90MWNlUE9BcTJhOHJjcTFZT0crdkdi?=
 =?utf-8?B?NTBDK0pJclg2NmVQUHM4cUtoamZCak1ydWNvazN0R2NkQU5BdjZ2NmhidXJj?=
 =?utf-8?B?SHZDbG01MVdwUEFEMlNFU1p6Wk5iMEZiUldad1JVM25QTFdmdkE3TkhsRi92?=
 =?utf-8?B?MncwcVZUSTE1b0tSczN1N21yNFYwaFo1M2FZTFhnRloxZTNVMmsyeUhXOFIw?=
 =?utf-8?B?ZUFkZmN6K3FQbnlYRysreXd0YlR5UGpya2hXUldjbzIxbkhUYjR6R2ZNVnBS?=
 =?utf-8?B?dm1JRTg5N0xtSkoyMnVzbHEzeTllR2FmY0tibGVsNUxvQjhic0lrclp6L1V3?=
 =?utf-8?B?WSsyb1BJR1JVNnRIUmtFYkJSSk0vVklXSUVWYjZ0alp2WnFIc3dIVEVtSldE?=
 =?utf-8?B?b1dWRjIyM3dwU3A4ektZdzZETU1GTVAyOUl6SkpVNlM5UUkrTW1ReUcydnBT?=
 =?utf-8?B?YXJVdWZMS3ZoN2YvdjZINWN6VlgxSW9hNkIySUsyTDlSUmV3UlRvTk9uaHJh?=
 =?utf-8?B?azI1Rm5sK0tMbzFNMGF3czI0YzRGc0V1QnBwUWkzME9XY1dPMkJoMlZTTmVX?=
 =?utf-8?B?N216QTZZVVVPTjhHcmlUU1I1QVF1dVdWZkxBcDYxaVVYSEtMcjJ1UGpmS0pC?=
 =?utf-8?B?WUNRS1dlbFhKMTEwbUN1SUQrL29aUC9KYTF1eCtnY1NxUU1qc3o2ci9qa1A4?=
 =?utf-8?B?TzVDeDBmNzhqQUd1czBHWS9SSUtENWIyejVWKzZRMFVBWmJ2T0NTd0FBc2p2?=
 =?utf-8?B?OEJhWFRQbC9oMHVwNDNvSzRDcll0UVJUM2RxcFh1b2xIeEJ6Z2prbG4xbTF6?=
 =?utf-8?B?cEVQQU5iS1dINUVzRytqUW1GenQzS3h3TTh2SjQ4WTB0TEVMYVRrUnkyYmxh?=
 =?utf-8?B?Qi9MYk5QL2VvZGJWTUtDbFRVTWNiaEJ5QnFLZ1REckd5emF5MlZsZTFMUWI0?=
 =?utf-8?B?ejFNbEVBT1g4Vnh6OVFkSVlZMEFJUGI4bE9teVFtRnNmbVpBaGd1SmlsQS9r?=
 =?utf-8?B?T2JvaGxBbGVLSkdIa3NBSnp1YVluUk1OcTdsREJEQ0sydFk2VHFzSXIyTElK?=
 =?utf-8?B?TEY2dVJORVk0M3k5cGlZL1pnb3ZGU3QxVmw0a2pWMER3LzFreHNBQldpUGIw?=
 =?utf-8?B?c3BwUldCTGNjU3FXZXZiM0Fub2d4QWFrRHU3cDcvNXFzN3NhekNCYkxMN1Bl?=
 =?utf-8?B?SjFMeHlOTUdvakIyZ0ZGMnozWTdLelI5aDN1KzBOSHNkZHc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?amp4blVGQitsMko3MDlFcSsrUi9qTTRhaWRUYW1kZ1B0QlZYdU9Bck9NazhR?=
 =?utf-8?B?dmE2eW1HVUIvWmhXTWtRaXY5V1BtYVMveldxdW53T0hmTzlHbmJ0dEd4RmRU?=
 =?utf-8?B?UFBNWThUZCtZSWpHRERic2x1aXhDeUVYcmw1U0NlejV6dlU2QUt4cTloMGt0?=
 =?utf-8?B?RmtJYWtSbmlHTi9velAvM284SzgwWnozS1VvMVF4a0Q0WDBONEVxWHhaM0pI?=
 =?utf-8?B?ZVcyVGNhQUs3ZVFDOW9ZbjRDUzdGMCt3TENMS2pEQ2dLZGdHbkQ1N3RZRWto?=
 =?utf-8?B?M2s1T1hHTExvYmZ2YXVhdjhrTHh5eEdLV1hYQnhFTkNGZmpFMHpPeUZ3bXJB?=
 =?utf-8?B?YUtOTXpnb3ZzM1hJa1ZML1psT1dMOUdwSmJEY0syM2xpc0hBUVFWSHB2Ukpt?=
 =?utf-8?B?Tzd4d2pmcTFoNEpqNG5JYU9pY0E2d2hKK3laTStJbmtSQlZhZisvREhXMGlx?=
 =?utf-8?B?UFRhaTNYUjdnMUdZY0RqUG16eXk2RTNVSlY4NEV3OWUrN2lubVpTWklKUklh?=
 =?utf-8?B?Q0NBRDBRSGFUbmtUR29ROUFjd3VzSzlBTHlKb1ZzbThxR2NxMXdiVXF1Vy82?=
 =?utf-8?B?clh2V2JSaVlNSXF2K0pRVm00ZXNWMUg0MkE4ckk5amZzTEZLazFETlBUZjlT?=
 =?utf-8?B?R2ZMb1BvdjZwN1JhWFF2c0l2QXplbXhmVWlIWWplOFZpR053SFFJT3JZcHBP?=
 =?utf-8?B?Y0xMc3BJczlWR1NpMy92SjNsWGxpK1hDS2VvS2NKdnNrcDdaWmNNbHFVcUZ4?=
 =?utf-8?B?OVNnaFVjQU1qZnZGek55ZmJPVGVyOXQxSkdWMk1qQlJVaVNYVDhENDEyaHM2?=
 =?utf-8?B?SXh3eGdTL0pRTFZQM3NzS0JZWThVelFkL3Z0WURKakE3ZEplQVVqYzN1YjQv?=
 =?utf-8?B?MFZaVmYvOTdQUUFDd05URkppcWRhT3EyVW1kN243VUh6eVpmdlIzODVXeHg0?=
 =?utf-8?B?WnFkaWppaDN0MmlOSDRZM2VEQmQ4M2NIN1hyKyswZVo2K3NtNjkxeWN1K21I?=
 =?utf-8?B?TW9BYzg4dTZMRVdlZ215NFBFem03ZEVyOG1GbnpCQ2kyNVVWaENOaXowRW5X?=
 =?utf-8?B?bGJCV2VvMVhDL0k2ZEdGTjhoQ0hUUEI0TzR3OG1PNkJVZlhEL2swcVkxdU1u?=
 =?utf-8?B?bTNBVkpDV095aUNZeHkzS2hHRmVZNDB6SUJRcVNhdDdOdEZ4c2hseE9oeXNa?=
 =?utf-8?B?d2VNci9JUW9IYnYyVThyT0NqZSthSUNUNGxFak1lMFVrT2xpMmRCRG0rNUd1?=
 =?utf-8?B?STBxdFZoajJtRXpOZUlHbFJpUDBHTzRjVE9COTQ0RWxNQjVsM25RSWtYKys1?=
 =?utf-8?B?cHc3aktQMWFETjRyR214ZENwRndpcXFDSWdBRmNnektIcTg1UHN5UnQxaG5i?=
 =?utf-8?B?QnE5ek5sV3ZtclRPbmZyNFBvUktVVDBTaUpaQXkvaHRFRXRNb0dqTEluYzls?=
 =?utf-8?B?R2cxbUI4cVArcnpZQlFWOE51S2NMc0dhT3NTMk92cjhzeEdFbkV3YjEvQVM2?=
 =?utf-8?B?MENkYjhPVHRTRG5wdG9oQy9zbml1cFExWVEyaGFlRGtqT3ZmeVQzRnNNUHkx?=
 =?utf-8?B?OG1jRXJXZGZjL0M3bzRnNHIxVnFXblR1VkdEZE12RXB0UjFDNm80b21vVFRT?=
 =?utf-8?B?aUhmdG5DWWU4M3JlTlc0NU42dkYwZ1lsS0NvZGtITGJIZVp4dFdWR1FjY2E4?=
 =?utf-8?B?cTdZUGRBckVSNWdLbG5GckZqOGJnMUxEL3VJbHdDVzl1VElMS2ZhLzZvUmRr?=
 =?utf-8?B?azFhY3dHWGV4UC90engyREhHSEF3N1RWcU9aejRvMGxDd3g4R2NHd1JnS3lt?=
 =?utf-8?B?Uyt1YXlqUlN6cGYrdGxoZjdTOVR3bGkzV29RbFYxT1ZuVnY0ekl5bUtpZWk4?=
 =?utf-8?B?a2x4K25LL05lQ3pSQzJkRUNHeG5pUFIrK1Z3WWx0Tnc2dVFENjV5VSthYytm?=
 =?utf-8?B?ZG9JSWhVVUdoTmQ3NlJpYlJpNnVtVktrQ2NtSkppdFR2M2ZuZktzK1lUdWVL?=
 =?utf-8?B?cU5SQmw4RnpHbjlPVW4vR1A4RHg4YkNoc3JhMDI1T0NGUzJjdTFPelJZeUJ6?=
 =?utf-8?B?N3ppYnprRnFENzdsbVZISVVDSjNPcnRscGpnN3hDRS9qYllZVnhvdENScStM?=
 =?utf-8?Q?MUVZcx27ENO2iYp4k3v6ibeES?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d33f7fa-7ccc-4088-b6d4-08dca0bfe537
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2024 09:08:42.4093 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PQK/X5dqW+KR0u/koPzayXDxIwBvmlLXA7HPu9u2Lw1t6GtvFNufeuQRO1SHS9cu/bZUrFUaFgvWyYp58oH2Iw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7438
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
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUgU3ly
amFsYQ0KPiBTZW50OiBGcmlkYXksIEp1bHkgNSwgMjAyNCA4OjIzIFBNDQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDE4LzIwXSBkcm0veGUvZmJkZXY6IFVzZSB0aGUgc2Ft
ZSBsb2dpYyBmb3IgZmJkZXYgc3RvbGVuDQo+IHRha2V2ZXIgYW5kIGZyZXNoIGFsbG9jYXRpb24N
Cj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQo+IA0KPiBDdXJyZW50bHkgeGUgb25seSBjaGVja3MgdGhhdCB0aGUgQklPUyBGQiBkb2Vz
bid0IHRha2UgdXAgdG9vIG11Y2ggc3RvbGVuDQo+IG1lbW9yeSwgYnV0IGRvZXMgbm8gc3VjaCBj
aGVjayB3aGVuIGFsbG9jYXRpbmcgYSBmcmVzaCBGQiBmcm9tIHN0b2xlbi4gVXNlIHRoZQ0KPiBz
YW1lIHJ1bGUgZm9yIGJvdGgsIGp1c3QgbGlrZSBpOTE1IGRvZXMuDQoNCldvdWxkIGJlIGdvb2Qg
dG8gYWRkIHJlc3RyaWN0aW9uIGZvciBMTkwrIGFzIHdlbGwuDQoNCkhvd2V2ZXIsIGN1cnJlbnQg
Y2hhbmdlIGxvb2tzIGdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5z
aGFua2FyQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS94
ZS9kaXNwbGF5L2ludGVsX2ZiZGV2X2ZiLmMgfCA1ICsrKystDQo+ICAxIGZpbGUgY2hhbmdlZCwg
NCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3hlL2Rpc3BsYXkvaW50ZWxfZmJkZXZfZmIuYw0KPiBiL2RyaXZlcnMvZ3B1L2Ry
bS94ZS9kaXNwbGF5L2ludGVsX2ZiZGV2X2ZiLmMNCj4gaW5kZXggZjc5MDViMzgyZDA2Li5mNjdi
YzBmZDgwM2IgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L2ludGVs
X2ZiZGV2X2ZiLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkvaW50ZWxfZmJk
ZXZfZmIuYw0KPiBAQCAtMTcsNiArMTcsOSBAQCBib29sIGludGVsX2ZiZGV2X2ZiX3ByZWZlcl9z
dG9sZW4oc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gKmRpc3BsYXksDQo+ICAJc3RydWN0IHhlX2Rl
dmljZSAqeGUgPSB0b194ZV9kZXZpY2UoZGlzcGxheS0+ZHJtKTsNCj4gIAlzdHJ1Y3QgdHRtX3Jl
c291cmNlX21hbmFnZXIgKnN0b2xlbjsNCj4gDQo+ICsJaWYgKElTX0RHRlgoeGUpKQ0KPiArCQly
ZXR1cm4gZmFsc2U7DQo+ICsNCj4gIAlzdG9sZW4gPSB0dG1fbWFuYWdlcl90eXBlKCZ4ZS0+dHRt
LCBYRV9QTF9TVE9MRU4pOw0KPiAgCWlmICghc3RvbGVuKQ0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+
IEBAIC01NSw3ICs1OCw3IEBAIHN0cnVjdCBpbnRlbF9mcmFtZWJ1ZmZlciAqaW50ZWxfZmJkZXZf
ZmJfYWxsb2Moc3RydWN0DQo+IGRybV9mYl9oZWxwZXIgKmhlbHBlciwNCj4gIAlzaXplID0gUEFH
RV9BTElHTihzaXplKTsNCj4gIAlvYmogPSBFUlJfUFRSKC1FTk9ERVYpOw0KPiANCj4gLQlpZiAo
IUlTX0RHRlgoeGUpKSB7DQo+ICsJaWYgKGludGVsX2ZiZGV2X2ZiX3ByZWZlcl9zdG9sZW4oJnhl
LT5kaXNwbGF5LCBzaXplKSkgew0KPiAgCQlvYmogPSB4ZV9ib19jcmVhdGVfcGluX21hcCh4ZSwg
eGVfZGV2aWNlX2dldF9yb290X3RpbGUoeGUpLA0KPiAgCQkJCQkgICBOVUxMLCBzaXplLA0KPiAg
CQkJCQkgICB0dG1fYm9fdHlwZV9rZXJuZWwsDQo+IFhFX0JPX0ZMQUdfU0NBTk9VVCB8DQo+IC0t
DQo+IDIuNDQuMg0KDQo=
