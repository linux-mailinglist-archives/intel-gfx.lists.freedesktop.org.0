Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6D9ABDDA8
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 16:46:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78BF510E510;
	Tue, 20 May 2025 14:46:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O0xESJMF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76FAA10E4F8;
 Tue, 20 May 2025 14:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747752410; x=1779288410;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=xmAIyXMuTfmm8N0GWGshuqiT34gQ+TX6auPXoJmKLUQ=;
 b=O0xESJMFLLVwsjY/5gIEvA5HwW1tUDt3lRJj0eMH8VXhDJJm8plqcFK2
 hPEftM+7Kzlw57FaAmyCLJxGnNBtL3NnZgpIP3TZNhLJEo0Iwz7OPLjEy
 qoUlZGtU3efmn6z+2wvSSjFhn0LR1wcdRBfYF7df38VZ+Z2X/9MxfKezS
 p6OvLUksx+IpblYQv8bdudHhgfC6VjoOLEbR0P8D1o4177spFDV/l307m
 67bs2dU6IZCkUfoHMy/ajtmNuH0va8dUKKhh8vo2q22jK+9ExAXe/n3KW
 QSTE93gIzPvoBwYHXSMSJD0KBpzy3E9r+3bny0VxRiEzOPp5hqZ7lh6Rb Q==;
X-CSE-ConnectionGUID: enK61vWVSrGedzvTMHXbqA==
X-CSE-MsgGUID: nMkdSXQGQUCL0MCEOYXmLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="67246309"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="67246309"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 07:46:46 -0700
X-CSE-ConnectionGUID: MEESy8DFSHqZT6wvZWh4Cg==
X-CSE-MsgGUID: SB5N0mDKSyyHe1zW0cW3iA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="144850919"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 07:46:46 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 07:46:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 07:46:45 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 07:46:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HNOAopXirQtRfvPT8VN1uQAkenvLCp1WBxqcpBvBcJ4NDZOVowlsQYpBtO+hrE/+DMiFllr9z9W2mPRuJeKCc21uOA3UxuSqs7zuhnTsz+Emp44dESW6pF0fZAwlUrzPNuYhuLt1E804/NpEpiRVJ9Utgu0TKLcvBTz6mpazhkFHe2nkU5F4JGT2+ChE2TBlfjJ//qQomQ7fbF/C5jnpCqKg7jUcJmZXUsrIzlmmYZbQUVxXy/oMSxFJ5jneOvkmQ08PqkfoRbnlsLV5VPrgFjecwBhQwMFuA9z9iueZ1a+9JVshKD8Jb0W/eYA0GNz4+r6qRb7Jf7iYbFsZg0nlxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xmAIyXMuTfmm8N0GWGshuqiT34gQ+TX6auPXoJmKLUQ=;
 b=euhWnohgKE/V0NMCaCnoiCfeSUij0tEmbDZMUCzG1miU4Oclvz6fN9xSLJumlD8sMNiS1CVyFClw/e+hujhRNzaMXl0BxZmiqt3cvOjwdVXNOIy7pofaYmEPBm7JhVijZOraKBpxKWorSvzgFJhh4swL+r9TIpAXSRwn4DOv6TVyeWoxN/VLjh44ybog4QFrBsKCD/RfBZjADiFgLuzlt8yEzMTPT2XEtI6Ddqu8xrB9TiU1FQ0NL4q7e+yjF25EHrjT4b01w4Ci6rI3FDOdkaiCYx9fQ51Kp9DNRHfgVEZAxabaarGCqzIGhjDxNFlHsojGt4V+8lTcaqifDSS/0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by LV3PR11MB8744.namprd11.prod.outlook.com (2603:10b6:408:215::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Tue, 20 May
 2025 14:46:13 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8746.030; Tue, 20 May 2025
 14:46:12 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH] drm/i915/dp: Fix the enabling/disabling of audio SDP
 splitting
Thread-Topic: [PATCH] drm/i915/dp: Fix the enabling/disabling of audio SDP
 splitting
Thread-Index: AQHbyZKWxGk/f5AwJUOg9shgTGHkB7PbmLQA
Date: Tue, 20 May 2025 14:46:12 +0000
Message-ID: <396c1b7bcb378570a9a18d49bea92c3b262c4d07.camel@intel.com>
References: <20250520142219.1688401-1-imre.deak@intel.com>
In-Reply-To: <20250520142219.1688401-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|LV3PR11MB8744:EE_
x-ms-office365-filtering-correlation-id: f1d35a9d-a844-4f33-e1df-08dd97ad1103
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?MmRKaHV2MkMzaDUvVDNHZEFDcU9OUFRNYjIrZlJ0U25RTi8reDlWK3BxaTUy?=
 =?utf-8?B?Ty9HdjBoaFlQemp6L3AxR3cyNFZCQ2l5anJ0YktYOUNZNFBrSVgvM0V2VHk2?=
 =?utf-8?B?RE1RTUk2T05XUk5WOWp5V3pFWWxNNkFpMnROdzVVeFhOeklGZXM4d2czYkFL?=
 =?utf-8?B?dnE2STBwUGE1V05tK2JsUUg4TTRHOXVpY2RZM0cwQTJFMG1pc1grR3RscERX?=
 =?utf-8?B?ckVtaU9KY2MzSU5pVThCZDQ0bDRsWm1HVkZ4ZnUxbXBpMmNaamRwRTBiSGZz?=
 =?utf-8?B?K01ZMUNWYm9lekFJcUxoRDlaQUhVb1lGVWZRQ3JhUmxxSGkzWElKZE5yeVhJ?=
 =?utf-8?B?a21QOEZqM05QVEhZM1hzb1VwbmdqUVdhSjJkZlptakRCWUVjdlNlQjdVSlBK?=
 =?utf-8?B?ZEdsZlc1WnloRS9RMzduSFVua3YrSjZya25MNUhBcnlTcURzM0kwbk5MQU1P?=
 =?utf-8?B?ODNrMEowUDkwb0Y3Q0pyRVN3Y2Z5MGI5aGplUzM0eEhkZTUxeU1Gb2lsa0tH?=
 =?utf-8?B?eHUzZmNYQkdPVGZnbVcrSTdqSW1aYjV0MnF1WldhQmpSMzd0RVRiZW5iYUVM?=
 =?utf-8?B?TUJCcHlYQUhSK1VVLzcrVHREd296dnV6dm92bU9TdmtaYWFoUW4xL1krZmVN?=
 =?utf-8?B?NjBnUzFhUWl4dkYrdFBkcDFtYlNQTEdSTDR6d055WXVmaXVXNzJkam5OM2py?=
 =?utf-8?B?THZWZU9NU1J4RCtING1MRERCbmt6K1hMMllZR3NSMCs1KzBYVnRJaGNzMTNw?=
 =?utf-8?B?TmlHcHIxNnFYZnlBT3hvSzdMRnRUdHNXUHUvLytnRTdxY0l0VXNNenFGY0Nr?=
 =?utf-8?B?ay96RE9tMlc5UWdSUFVFYURBek9EdjdJNXZmK2dMb3FDRVV5eDJLZk9YbUtT?=
 =?utf-8?B?bWFjUk9lY2MyQVQwUkpYTE9QZWk1Q1lyZ2FINnJWWE8wak90TnFCVEdrK3JU?=
 =?utf-8?B?RUExOVlYLzQ3UkJQMGxGK3NXa09ZcURpdlRVS3ZMcGVhenlpeFk5MVJ2N0lP?=
 =?utf-8?B?TEx0WDdGYityelBycXA4WVZpUVNFVmFhNE5NNVJ3NWhLa0FvaFZvU3BJbms4?=
 =?utf-8?B?dzk5bDlEUTR4N0VvYTFYS21jNmhISDhESkRFaEkxdHlWQlEwaUZ4VG41anNG?=
 =?utf-8?B?UmpqUlBoUldudUowZWlQaHd4NWJKQ25ML3FxY1VRdTVac3FrQmFQQW44SHhw?=
 =?utf-8?B?V3N1MUhLR3QyUStYOGZERGh6NTgvY05HRWgzSDFaRGV4UE8vUzJvY05maSt0?=
 =?utf-8?B?djQvczRQeGVyVkdOdmpsOERHeHFHTWlXS3Q0cUVMV3UwckdCRGh6elRmRE4y?=
 =?utf-8?B?amxxZmZEZWtoNlJCdElpTVBUSHR3bnhoTlVVa1VXZGpEL3gzSW8rY3FGZnFF?=
 =?utf-8?B?Q3dxRDl1OWxqa0lqS0krcXJac0VMWU9YQnA5K3M1S2xiR2tsdGpZZDRTQlJj?=
 =?utf-8?B?ZGFTWkNYTW1RcHBiNlRVRVk2bWRYYjJjaUtxeVM0VHZpeGJhMXhIYTZtV0N5?=
 =?utf-8?B?bUVMcXdCa044T29sYlE4aFhYbHhhQk5OOEpsanR0QmNWckpkclJCeXBxUHY1?=
 =?utf-8?B?ZncrVUdXZm56T3Jid3c1UFIrc2dsdDhpY2x4cEhBUTBNRE11US8zUVFFNUxj?=
 =?utf-8?B?RnZZUzgydXVQNHdzcU1pNndUYWFlU1dFbU40V3g5aXAwS1BxTWNEcFlqVTlh?=
 =?utf-8?B?eXplRzZReGFUVElTTEtLcS91QVV5aTlDYittRnZobWN4cHpQQlpkT2pIK3l1?=
 =?utf-8?B?T1pySk1CM3l1U1dDc0RDMmdJUkpYTmx6REs4eTdPb3pjSDZsQllKNmRpQ2J4?=
 =?utf-8?B?QU1xWDYxVFFKOVJkdXlydkpybGVnaDBMV0NHTHFCVU1zVGFUaEZma2YxRCtX?=
 =?utf-8?B?dzNleFBVbDM4Z093ZkE3bm5vWmxCNXIrRTJIVVpvN3ZpMnJ3L3pvcit3Yy9m?=
 =?utf-8?B?N1N3aW8vQkR3NGZabndZcXZSQlorK1VPb2ptaTVnWFhjZCs5YkhiUzRMenVz?=
 =?utf-8?Q?f4yN3RTke2GNSpn7RRZNQJFHbfU/do=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VW9iS1BVQUZZZXNNOHkyZzFFUy8zT2E3SE44d21OR0hUTzRqWjdLR1NOd1V2?=
 =?utf-8?B?WDRsb1VYWmxYSjBvdGZUVCszeCt1R2RHbW1Ib2RnWXVNTUoyeCtGNnl6SmxV?=
 =?utf-8?B?bkhHdWVOYW0rRzZyLzFnaUFDTGtpVjJjUjRCMXJnSFZEN2Z5Z1k1YmZQbzBY?=
 =?utf-8?B?eEM0dWFYbGkxWmcvL2NCeDIvVkhQeEwrUTh3bEpoaWVPY1UxWThxMjR5Y1Zw?=
 =?utf-8?B?cTg2REFXQkpBSUVnaE8yWTBGcmFoWmRHTmJ1eE1McHRVdDJ1NWYrejJ4aEU2?=
 =?utf-8?B?T1NWVGRTZ284T1oybzJrckxZS3J4ZXlrN0JETUVISXZ3KzBKQjA4ZXk3U0E2?=
 =?utf-8?B?cDJNTCtuNytZOFFpSmt4OEw1dXI5aTd5VDdHZFdPMFliSVhuT1ZkUVpJblg3?=
 =?utf-8?B?Y2d2OXNYOVNETkVWOUpsZFF5Nk5kcnA1TWROdy9PRXRPZWhGK1NCS0ozU3VJ?=
 =?utf-8?B?bWQrSHFxSmhOMVJuVlN4aE4wNDhkSFR6cGFnR2JDNm1mUWVBdCtjZEdlQ2w1?=
 =?utf-8?B?OHM5K1NlMHRJWkR4Z1hlWExjTnRNQ3NMZERScTBzY0VvQTVRWGhrR2Q1VllT?=
 =?utf-8?B?RnJZcVRFSmlkTmdQQ09RR3RrTGtoTVc1bFZrOUpiVWpTdjFRZTRITGZ3Zmcv?=
 =?utf-8?B?YVdXSlVtWjR4RE0vZE5obFRxK2dENk43T2lHZHZiVzJ5TkpSWm1USVVRUmVq?=
 =?utf-8?B?N0lYZUozdmg3Rk9MSzU5Q05NMFJZa2ozVTNGeUpDUE8wTzZUcmpPMEJsb3Iy?=
 =?utf-8?B?V2dQWWpTYjBDMEVXclRYamNTbG5YRk84bGVDSFh2STBNdmQ4MS9xc1hobkM0?=
 =?utf-8?B?aWxUTHRpUmUvM2ZQRmE1QVkwQVFGTk9DYnFXdU5tUXI5OGdhZzkzZ21XQ3RF?=
 =?utf-8?B?ZzJ6WVl0b3VVc2c3N3VQM2VxMmtaMzd0RXJRbSs5RDZHUmZ5ZWpDb2J6Vm5H?=
 =?utf-8?B?YU9wQkJOVnlxTmtYelVaL3ZLbTQvMHRBeHlaaWJGblN0Q2UrTDd3QUpqalRR?=
 =?utf-8?B?dXpaZ0lHa0tIY0g4bm9XK2ZwNUtwK2dZenBJamJGYnlVY0JDTlIwV0JHdlZW?=
 =?utf-8?B?ZHRMNmJaYzJReGQ5anRXbzEybnZDTXU5OW0rVFFlOWs1RHF0SkJFS2ZHdGdj?=
 =?utf-8?B?VXNwa204Rno3ME03TUY2WGNHZzdpWkZ2TEk3S2xIN05xWnZlVGpodUlYenVJ?=
 =?utf-8?B?QWl0bkpGMS9qeXJlSW1SWGdxR3JvdTMwZlRtdmNLNHpYY3hwTCtHakkvRHky?=
 =?utf-8?B?aW9RSU52M0FHY0JWL0tOL1J0Y1VFS3h3RDd3Y05ZcmIzQlE1NjNIaCtOZ0tT?=
 =?utf-8?B?dXNManIweDZ6RWlSMFF0ZEF0RUVMeWIybUZWNXdHc2lVTG1mUHA5ZFNlWG1m?=
 =?utf-8?B?dDl0alBPeFNHNEFIWmJvb3I3ZmllK1dhNnE0ak5SYmtPZmx0c3RJdnI2b3dS?=
 =?utf-8?B?S09uRndrQmlXSjF0alNuQ1lWbXBiU3ErZVRXWnA2T05MZmxFV2l0VzhaejRH?=
 =?utf-8?B?V2J1b1ZoWWdaVHRYRnZBc2h4aXhIVm8ySHEyeWhEWTh6RWtlM25oUlM2SjZt?=
 =?utf-8?B?MzlhcDRXcndIbkluRGphWVlzdTRWdkV3MVQ0UzBFWmxMV1NIYlpSbzhnLzI2?=
 =?utf-8?B?U1UvOGthaUZiN0ZhaS9SUFFWaDJwTStPMEUzeUp6TXRPTnBXUW51L0gyTjQ4?=
 =?utf-8?B?TWFrSnFkTnI3VnBaKzN5RjBoVlU5M0pIQksrNnJJRnZ5R3ZZbHZWQm1WSmQy?=
 =?utf-8?B?bWg1NVhzYVA0YjNQblMrQUJpcEZzRnA3S0lzM3BzTElMNXM4dWtQVVp5UXhv?=
 =?utf-8?B?bzRUNkMwWktPbjZObnMwdDRIZE9yTHpjVjZpYkE0bE11QnlCNnlicW5NMzlY?=
 =?utf-8?B?S2lWTFRQL2ppaDEyR1lmUVAzUk5IQzJiTU5vYUoxQ0xtdno1L3RkMi9EWWQw?=
 =?utf-8?B?ZElDUU5VTzhsZWtjdVBUWmRMTm8rQ0lybWhJbzEwMldtM0dyS3dFS3hFY2dN?=
 =?utf-8?B?OVFrYndIT2MzeUZ0TlpuWmVxbjEvdjZlR0plQU9uVks5dTd6VHhIMTVCTlpR?=
 =?utf-8?B?N3B1Rjk1YUdLRkxkZ3RXeU8zclg4YytzREJybGs3aEF4d0VBeUFRVmc5UW82?=
 =?utf-8?B?QjE3VmdJUTU2V3lvQTJ5Vm1qNWNtMXd2YXlrT2Y3T2xKN3RaRGlVaXBqQm0r?=
 =?utf-8?Q?LLAItuzXHhsWUL3N75fCaFw=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0A27BFCCC1ED8B43808DF11DD315E557@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1d35a9d-a844-4f33-e1df-08dd97ad1103
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2025 14:46:12.6507 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W9GTInEDBW2uhGOwTzlFl7t8priAxClSyQB4o3r+Qnv0nori9vaT5nL4bmG9RDWyaB6GBknfKcjcrLP2X9Li8Zoj1TbiihSILNreA/wBuks=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8744
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

T24gVHVlLCAyMDI1LTA1LTIwIGF0IDE3OjIyICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEFk
anVzdCB0aGUgZW5hYmxpbmcvZGlzYWJsaW5nIHN0ZXBzIG9mIHRoZSBEUCBhdWRpbyBTRFAgc3Bs
aXR0aW5nDQo+IGFjY29yZGluZyB0byBhIHJlY2VudCBCc3BlYyB1cGRhdGUuIFRoaXMgbW92ZXMg
dGhlIGVuYWJsaW5nIHRvIHRoZSBhdWRpbw0KPiBjb2RlYyBlbmFibGUgc2VxdWVuY2UgYWZ0ZXIg
dGhlIHRyYW5zY29kZXIgaXMgZW5hYmxlZCBhbmQgZGlzYWJsZXMgU0RQDQo+IHNwbGl0dGluZyBl
eHBsaWNpdGx5IGR1cmluZyB0aGUgYXVkaW8gZGlzYWJsZSBzZXF1ZW5jZS4NCj4gDQo+IEJzcGVj
IHJlcXVpcmVzIHdhaXRpbmcgZm9yIGEgdmJsYW5rIGV2ZW50IGFmdGVyIHRoZSB0cmFuc2NvZGVy
IGlzDQo+IGVuYWJsZWQgYW5kIGJlZm9yZSBTRFAgc3BsaXR0aW5nIGlzIGVuYWJsZWQuIFRoZXJl
IGlzIG5vIG5lZWQgZm9yIGFuDQo+IGV4cGxpY2l0IHdhaXQgZm9yIHRoaXMsIHNpbmNlIGFmdGVy
IHRoZSB0cmFuc2NvZGVyIGlzIGVuYWJsZWQgdGhpcw0KPiB2YmxhbmsgZXZlbnQgaXMgZ3VhcmFu
dGVlZCB0byBoYXZlIGhhcHBlbmVkIHZpYSBhIGZsaXAgZG9uZSB3YWl0IChzZWUNCj4gaW50ZWxf
YXRvbWljX2NvbW1pdF90YWlsKCkgLT4gZHJtX2F0b21pY19oZWxwZXJfd2FpdF9mb3JfZmxpcF9k
b25lKCkpLg0KPiANCj4gVGhlIGJzcGVjIHVwZGF0ZSBpcyBmb3IgTE5MKyBvbmx5LCBidXQgdGhl
IEhXIHRlYW0gY2xhcmlmaWVkIHRoYXQgdGhpcw0KPiBoYXMgYmVlbiBhbHdheXMgdGhlIGludGVu
ZGVkIHNlcXVlbmNlIG9uIGFsbCBwbGF0Zm9ybXMgYW5kIGJzcGVjIHdpbGwgYmUNCj4gdXBkYXRl
ZCBldmVyeXdoZXJlIGFjY29yZGluZ2x5Lg0KPiANCj4gVGhlIHdheSBTRFAgc3BsaXR0aW5nIHdh
cyBvcmlnaW5hbGx5IGVuYWJsZWQgbWF0Y2hlZCB0aGUgdmVyc2lvbiBvZg0KPiBic3BlYyBhdCB0
aGF0IHRpbWUuIEFkZGluZyBoZXJlIHRoZSBGaXhlczogbGluZSBzdGlsbCwgc2luY2UgdGhpcw0K
PiBjaGFuZ2UgZml4ZXMgYSBGSUZPIHVuZGVycnVuIG9uIFBUTCBkdXJpbmcgb3V0cHV0IGVuYWJs
aW5nIHdoZW4gRFNDIGlzDQo+IGVuYWJsZWQuDQo+IA0KPiBCc3BlYzogNDkyODMsIDY4OTQzDQo+
IEZpeGVzOiA4ODUzNzUwZGJhZDggKCJkcm0vaTkxNTogRW5hYmxlIFNEUCBzcGxpdCBmb3IgRFAy
LjAiKQ0KPiBDYzogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRl
bC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4N
Cj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdWRpby5jwqAg
fCAyNyArKysrKysrKysrKysrLS0tLS0tLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2F1ZGlvLmjCoCB8wqAgMSAtDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuY8KgwqDCoCB8wqAgMyAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIHzCoCAyIC0tDQo+IMKgNCBmaWxlcyBjaGFuZ2VkLCAx
NyBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkNCg0KVGhhbmtzIEltcmUuDQoNClJldmll
d2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNv
bT4NCg0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYXVkaW8uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXVkaW8u
Yw0KPiBpbmRleCA0MGQ4YmJkODEwN2Q2Li41NWFmM2E1NTNjNThhIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdWRpby5jDQo+IEBAIC0zOTcsNiArMzk3LDE5
IEBAIGhzd19hdWRpb19jb25maWdfdXBkYXRlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LA0KPiDCoAkJaHN3X2hkbWlfYXVkaW9fY29uZmlnX3VwZGF0ZShlbmNvZGVyLCBjcnRjX3N0YXRl
KTsNCj4gwqB9DQo+IMKgDQo+ICtzdGF0aWMgdm9pZCBpbnRlbF9hdWRpb19zZHBfc3BsaXRfdXBk
YXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiArCQkJCQkg
Ym9vbCBlbmFibGUpDQo+ICt7DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0
b19pbnRlbF9kaXNwbGF5KGNydGNfc3RhdGUpOw0KPiArCWVudW0gdHJhbnNjb2RlciB0cmFucyA9
IGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyOw0KPiArDQo+ICsJaWYgKCFIQVNfRFAyMChkaXNw
bGF5KSkNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJaW50ZWxfZGVfcm13KGRpc3BsYXksIEFVRF9E
UF8yRE9UMF9DVFJMKHRyYW5zKSwgQVVEX0VOQUJMRV9TRFBfU1BMSVQsDQo+ICsJCcKgwqDCoMKg
IGVuYWJsZSAmJiBjcnRjX3N0YXRlLT5zZHBfc3BsaXRfZW5hYmxlID8gQVVEX0VOQUJMRV9TRFBf
U1BMSVQgOiAwKTsNCj4gK30NCj4gKw0KPiDCoHN0YXRpYyB2b2lkIGhzd19hdWRpb19jb2RlY19k
aXNhYmxlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiDCoAkJCQnCoMKgwqAgY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlLA0KPiDCoAkJCQnCoMKg
wqAgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKm9sZF9jb25uX3N0YXRlKQ0KPiBA
QCAtNDMwLDYgKzQ0Myw4IEBAIHN0YXRpYyB2b2lkIGhzd19hdWRpb19jb2RlY19kaXNhYmxlKHN0
cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiDCoAlpZiAobmVlZHNfd2FfMTQwMjA4NjM3
NTQoZGlzcGxheSkpDQo+IMKgCQlpbnRlbF9kZV9ybXcoZGlzcGxheSwgQVVEX0NISUNLRU5CSVRf
UkVHMywgREFDQkVfRElTQUJMRV9NSU5fSEJMQU5LX0ZJWCwgMCk7DQo+IMKgDQo+ICsJaW50ZWxf
YXVkaW9fc2RwX3NwbGl0X3VwZGF0ZShvbGRfY3J0Y19zdGF0ZSwgZmFsc2UpOw0KPiArDQo+IMKg
CW11dGV4X3VubG9jaygmZGlzcGxheS0+YXVkaW8ubXV0ZXgpOw0KPiDCoH0NCj4gwqANCj4gQEAg
LTU1NSw2ICs1NzAsOCBAQCBzdGF0aWMgdm9pZCBoc3dfYXVkaW9fY29kZWNfZW5hYmxlKHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiDCoAlpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShj
cnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfRFApKQ0KPiDCoAkJZW5hYmxlX2F1ZGlvX2RzY193YShl
bmNvZGVyLCBjcnRjX3N0YXRlKTsNCj4gwqANCj4gKwlpbnRlbF9hdWRpb19zZHBfc3BsaXRfdXBk
YXRlKGNydGNfc3RhdGUsIHRydWUpOw0KPiArDQo+IMKgCWlmIChuZWVkc193YV8xNDAyMDg2Mzc1
NChkaXNwbGF5KSkNCj4gwqAJCWludGVsX2RlX3JtdyhkaXNwbGF5LCBBVURfQ0hJQ0tFTkJJVF9S
RUczLCAwLCBEQUNCRV9ESVNBQkxFX01JTl9IQkxBTktfRklYKTsNCj4gwqANCj4gQEAgLTY4MSwx
NiArNjk4LDYgQEAgc3RhdGljIHZvaWQgaWJ4X2F1ZGlvX2NvZGVjX2VuYWJsZShzdHJ1Y3QgaW50
ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gwqAJbXV0ZXhfdW5sb2NrKCZkaXNwbGF5LT5hdWRpby5t
dXRleCk7DQo+IMKgfQ0KPiDCoA0KPiAtdm9pZCBpbnRlbF9hdWRpb19zZHBfc3BsaXRfdXBkYXRl
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAtew0KPiAtCXN0
cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRl
KTsNCj4gLQllbnVtIHRyYW5zY29kZXIgdHJhbnMgPSBjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2Rl
cjsNCj4gLQ0KPiAtCWlmIChIQVNfRFAyMChkaXNwbGF5KSkNCj4gLQkJaW50ZWxfZGVfcm13KGRp
c3BsYXksIEFVRF9EUF8yRE9UMF9DVFJMKHRyYW5zKSwgQVVEX0VOQUJMRV9TRFBfU1BMSVQsDQo+
IC0JCQnCoMKgwqDCoCBjcnRjX3N0YXRlLT5zZHBfc3BsaXRfZW5hYmxlID8gQVVEX0VOQUJMRV9T
RFBfU1BMSVQgOiAwKTsNCj4gLX0NCj4gLQ0KPiDCoGJvb2wgaW50ZWxfYXVkaW9fY29tcHV0ZV9j
b25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+IMKgCQkJCXN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiDCoAkJCQlzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9z
dGF0ZSAqY29ubl9zdGF0ZSkNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYXVkaW8uaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYXVkaW8uaA0KPiBpbmRleCBhZDQ5ZWVmYTcxODJjLi40MmNmODg2ZjNkMjRmIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmgNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdWRpby5oDQo+IEBAIC0zMSw2
ICszMSw1IEBAIGludCBpbnRlbF9hdWRpb19taW5fY2RjbGsoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpOw0KPiDCoHZvaWQgaW50ZWxfYXVkaW9faW5pdChzdHJ1Y3Qg
aW50ZWxfZGlzcGxheSAqZGlzcGxheSk7DQo+IMKgdm9pZCBpbnRlbF9hdWRpb19yZWdpc3Rlcihz
dHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSk7DQo+IMKgdm9pZCBpbnRlbF9hdWRpb19kZWlu
aXQoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOw0KPiAtdm9pZCBpbnRlbF9hdWRpb19z
ZHBfc3BsaXRfdXBkYXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
KTsNCj4gwqANCj4gwqAjZW5kaWYgLyogX19JTlRFTF9BVURJT19IX18gKi8NCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IGluZGV4IDBlNmQ2MThiNTM1NjUuLjNk
NDdkMGVkM2MzN2IgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYw0KPiBAQCAtMzUwNyw5ICszNTA3LDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX2VuYWJs
ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gwqANCj4gwqAJaW50ZWxfdnJy
X3RyYW5zY29kZXJfZW5hYmxlKGNydGNfc3RhdGUpOw0KPiDCoA0KPiAtCS8qIEVuYWJsZS9EaXNh
YmxlIERQMi4wIFNEUCBzcGxpdCBjb25maWcgYmVmb3JlIHRyYW5zY29kZXIgKi8NCj4gLQlpbnRl
bF9hdWRpb19zZHBfc3BsaXRfdXBkYXRlKGNydGNfc3RhdGUpOw0KPiAtDQo+IMKgCS8qIDEyOGIv
MTMyYiBTU1QgKi8NCj4gwqAJaWYgKCFpc19oZG1pICYmIGludGVsX2RwX2lzX3VoYnIoY3J0Y19z
dGF0ZSkpIHsNCj4gwqAJCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxf
ZHAoZW5jb2Rlcik7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwX21zdC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9tc3QuYw0KPiBpbmRleCA1NzYwMjYwNmFjZDVhLi5jYzAwYTczODk4ZjE0IDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gQEAgLTEzMzYs
OCArMTMzNiw2IEBAIHN0YXRpYyB2b2lkIG1zdF9zdHJlYW1fZW5hYmxlKHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLA0KPiDCoAkJCcKgwqDCoMKgIEZFQ1NUQUxMX0RJU19EUFRTVFJF
QU1fRFBUVEcsDQo+IMKgCQkJwqDCoMKgwqAgcGlwZV9jb25maWctPmZlY19lbmFibGUgPyBGRUNT
VEFMTF9ESVNfRFBUU1RSRUFNX0RQVFRHIDogMCk7DQo+IMKgDQo+IC0JaW50ZWxfYXVkaW9fc2Rw
X3NwbGl0X3VwZGF0ZShwaXBlX2NvbmZpZyk7DQo+IC0NCj4gwqAJaW50ZWxfZW5hYmxlX3RyYW5z
Y29kZXIocGlwZV9jb25maWcpOw0KPiDCoA0KPiDCoAlmb3JfZWFjaF9waXBlX2NydGNfbW9kZXNl
dF9lbmFibGUoZGlzcGxheSwgcGlwZV9jcnRjLCBwaXBlX2NvbmZpZywgaSkgew0KDQo=
