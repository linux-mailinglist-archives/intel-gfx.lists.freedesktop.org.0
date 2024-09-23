Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A1A97ED2C
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 16:30:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F374510E40C;
	Mon, 23 Sep 2024 14:30:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a00u3ljk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A557710E40A
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 14:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727101857; x=1758637857;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=U80PqZn2738P3Ok8D0MqFxB0YDFa9n21NXi9SOLKwqw=;
 b=a00u3ljk4AEdSJoVy97liYfzYYERlk48WAIFNu8YD06ClACe5TyZvO77
 6Y+QPFXi8fIZQoVgWeMjbaFIrsXNQAtdyItRQhItzryzje+jLhjN0bc07
 SJ7b3MFQR1VRYxVCqqK2iaROb36PQeqqX64DX9zzUEYeb5zpztesA8va1
 7v977YEwa/Fm6G4cxjy1NZ29AmpCQXVwkHycpL6/rUtOTsRU3kHHnIiXs
 ss4zRWoGshFCy1MfXiiZbZXDwNiZp+d38s2E/8DvQ1ip5Bv7t5p+H9M/H
 Bl4ZojtshIhsPEfYIvVX588eGDbgIw+XWyr88yWpHYsfZT8TevzIrFLW8 w==;
X-CSE-ConnectionGUID: cS6CD3NpT6efeTwGRmFY4A==
X-CSE-MsgGUID: Ohm7xd+RRdOdXGuBzGfLvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="37187686"
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="37187686"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 07:30:55 -0700
X-CSE-ConnectionGUID: jE8VZSBqQwOHUn4eEhXZxQ==
X-CSE-MsgGUID: 2jju/yncQRqZ0fEEXLfqig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="75840558"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Sep 2024 07:30:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 07:30:53 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 23 Sep 2024 07:30:53 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 23 Sep 2024 07:30:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cUdJ45+rwXjFXM4ZcP57WnRtDU7DjFK/+3crCe5RyZi11TK2qkT+pKYErlGxPuQKO1pfp/SNuq4DdpclMybVgD4C5j4BiAZemsvGqHgcoYn5c9ihLw3KIJfxOL/EZDjkImu8yg4BuL3wighN8acbKFA/lkc4Ji30nzUkNhBe7Zz9KsCQHJdOhKnsQ37ohnjhnZ6JWHR+VojWYBqkPqPSwgQlufy93S6zWXPbPORenQBko7tpL1ba5qC9QiGYpHXLeQU1jqXd+MYJWkiE+KbVjxLk4TxTHgCIzc+Ziw6fb+pe6freBR2kdeVLJ9vpjnKCvcoZkQT9AmXQkTtTDP28qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zxI1kG+NKbetq5Au6UwruyHnIH4bkWSRoZAYPpLnujc=;
 b=R+awI+vLpWKk8182D/q7288L88NdE1X+1Xq7QX2bYIar4VWjALgPrlKuWitkookfRns7vEVcX5K8nIARYDHPEh4jiG7HMIfEv+a5WfOumvEwHWjyUMpvkYmIx+6t31ORYnQbWGPpw1c1w0oRd1YDKpv2KBw5aGiKywrp7LcAeJln6jNzel3UCz4L5SjxgncReoSp6aq6qqJsGV2QK5Y/GsaYoYaAl3jbvf3D86/IGI/8mWo1f/tw1+ScO31xiVjIXanC1Lo27JG5njxd7JA8szAUAIDJMqnlcRjUbJpudmSW4itoQabxl+lb03UpYc0sPcO2AWn4zJPzfiw5m7HuYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS7PR11MB7689.namprd11.prod.outlook.com (2603:10b6:8:e2::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Mon, 23 Sep
 2024 14:30:50 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.7982.022; Mon, 23 Sep 2024
 14:30:50 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240918223735.GS5091@mdroper-desk1.amr.corp.intel.com>
References: <20240829220106.80449-1-gustavo.sousa@intel.com>
 <20240829220106.80449-3-gustavo.sousa@intel.com>
 <20240918223735.GS5091@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [PATCH 2/4] drm/i915/display: Store pipe name in trace events
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: Matt Roper <matthew.d.roper@intel.com>
Date: Mon, 23 Sep 2024 11:30:44 -0300
Message-ID: <172710184445.3259.11087011873010367888@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW2PR2101CA0015.namprd21.prod.outlook.com
 (2603:10b6:302:1::28) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS7PR11MB7689:EE_
X-MS-Office365-Filtering-Correlation-Id: a94516cf-5cc3-419b-9a62-08dcdbdc5250
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ME5CUUhFeEVwS1pndzRJTmdVaThLU2o3UHppVzM3RTBmbFRhcDVNTWd2SjJi?=
 =?utf-8?B?STRJcDJVaHBsODgrYktsTHVZVkFmTWwyQ2JGd1ZXWVUzcjY0QlhUQUt0cXRN?=
 =?utf-8?B?SHYrZmhCNzNEWW8wOVVYc1FES25XS3JXMVM3dlllQjRIRkZPV0RGTVFubGpJ?=
 =?utf-8?B?c05EL0dmNnBIeGM5WGE4SU45ZTNYNnplak1TRTlLUTFscGxuQlIxNlVvYVRC?=
 =?utf-8?B?VXRUM0dQRFMvSFMzMnY1elhka1Zueks3bXp4aDNrTzE2ZExUMGVVZ1RyQU1a?=
 =?utf-8?B?N0wyWlZncU92Y2IvN0tnbDc5VHVPTlIvL2p2VE9pbTNkVmFpL2FZUlBoMnhs?=
 =?utf-8?B?VWJUSEtkL2s3dHFLbEF4cUtFdjBhNnpWRFhZYTNrMTdMUUp5Y3h5YzJ0emhi?=
 =?utf-8?B?YUpyM0tSaE40dnlZZGRMZVhENnZpN2EzZm1qU2VIM0NMWTBkeVB6amFaeVEw?=
 =?utf-8?B?RnhlZmZZb09uV013MFlVV3lKTmdDV1EyV2tNc2t4bFVSekpJUEliRHFsaE5P?=
 =?utf-8?B?K0FyQjZPb0VLTUFTZlp0QmsrZE1TejkxcjNLSlNrUEV1blI0OVpWTnlqTjd6?=
 =?utf-8?B?MkljeHgwaHIzbkN6Sm4zQjdYRTVoZDVPWmIvbzR4OUxPZnpzU21TL0c4NzRH?=
 =?utf-8?B?RWFUUEl2dUZOYTNrTmw4S3JqcHY4RHBjVlU0SnBvQ2xCejRrYyt2TXF6OTdC?=
 =?utf-8?B?M2NmZjhJdU9ZcXZweGZ6b3ZmY2hVOE5iRVlqdnNObHBKZGQwNTFiOUVTTWcr?=
 =?utf-8?B?ZGYvR0dKNXdybkpZVFM0RWdOZEQ0SEVRVkppWjZUL3FqOUdiMElnZStBN0lL?=
 =?utf-8?B?RGJCU0piK0J5TmZtT0F6OGg5WVl4UVp3TjVFWEdkbzJDZFJ2WDdBd05YRFVu?=
 =?utf-8?B?cUJjRTFvM1hjdTNjR3czdm9xTW1qblVXeWFtSXJrM3gxUW9YVHdOMGhSd3lR?=
 =?utf-8?B?eFVDL3pQYm5sd202REJHOVhweXJmQk8yS1RzNEdlU3BMYXlmN2FvQmdVdSt3?=
 =?utf-8?B?emFjUERFSE9zM1hkQUpXKzRjdHNvcVh4YlorL1luVGowOXMranc3ajd4Vis5?=
 =?utf-8?B?bHJlR0VxZHJhNWdveU02dFJQd3R0V2hMbERUMHU3cnVPT1BsMU95VGtTN1dB?=
 =?utf-8?B?eU9ia2ZMWkZsOXhDenQyWEhmR0pzWVBsZ2wvYVRSK3pHMUNzQjZzbVJ2WGlm?=
 =?utf-8?B?cTJVanlWVEVGMW1MVHcrRkx5SThmRUhZb3kyU3o3c3NhdzF0Q0xqWW1aVHk1?=
 =?utf-8?B?TzlOOHliOWVsd1BlYWplWm9iTGtIYkdER1FOeHkrd0YwS2loQ2tKMGVNUHhX?=
 =?utf-8?B?b2hibjM5RFVLajZMWXg2RUtqanl0QXdYY2dHK1RjZEEwVnErTE5QSTZ4TnFJ?=
 =?utf-8?B?ampaNExNRnVLdUFqWThSOXlLalBWb2xuMlErbUFsTlFVVUxmcVhjYmh1RmxL?=
 =?utf-8?B?dWNpdTQ1ZVpVcmNkUTJ1OGE1RlVNYWg4eVZtcENTTURnOGJSczhRK29KSHhR?=
 =?utf-8?B?MW8waVQ2c0dtM3VCWVVxdWd5MHA5d3c0aTRQOGdCeWUzTmt3QklrbndWNDRx?=
 =?utf-8?B?Q3hpYzlVTFJrOW05MDN6MGg3UjhCaFhqSDJ6WXdNZUpncVVjNDNETHRzdFE4?=
 =?utf-8?B?b2ZpdVg0RjgrZWdzZitIeHFJSVRxYitIYnVFT1JId3hOK2swQ3FsOFNmblZz?=
 =?utf-8?B?UnJRMmpwR0wya2RnTHl5QWtxd2NGeGRxK3hGV1drSWJvT3V3a3ZPOXhRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SjdjbmJUSU5NRFZ1Vm9vVjNIenM5ZlJJd2t6OW01aVA0MDJwMlEyQWo0REVo?=
 =?utf-8?B?ZnFYL2psNXJOL2VXTGhvTXdGWlVHN0MvTFlOb2FrS3JRMmtmdHI1OTc0QTFL?=
 =?utf-8?B?SklDd2dscFVCbGM2OXpxdDlqYWp3emZnblVCTXJ6NldtRWZqUnZ5Z1NaSFlt?=
 =?utf-8?B?cjlIcWNORTdleFFTZHpnZkZsaGVqUmt0akhRNklkUWw5L3VOL240RjNDNnhC?=
 =?utf-8?B?SDVYUzNEUUMwV3gyaUZMQ1BRUFAyblIrMzVtSVpqZHhCL05HTG96cjhtcDJk?=
 =?utf-8?B?MUthNkFYTjJEeGlUQVJtT01HRE1JWjB3blNxay9LNW5kVDVkSWZIOUkveDlK?=
 =?utf-8?B?Zy9QYllGUTJEOGZReS9nTWROaWZXRzkrSmJZcEJ2VTdxVm02ei8wR3o4dWNi?=
 =?utf-8?B?VWRvZ1htZmFDazdkVkdrV0l5SkVYTGJQQWs0MWxrcWZaeDlpTmFJZDd2K0Ny?=
 =?utf-8?B?d1VlYkI4dFNsUHdhc2tzbGZRck5lYnc0T280U0JsV05iOGg1RFNtdFdJZktU?=
 =?utf-8?B?Wlg5VmxkaFZOakRJUFlCWTB5aXovck9PNzFaa24wR2MxY1ZRQWlReUh5M1ZY?=
 =?utf-8?B?S053QkZxL2syMVdnb0xTUHRsUFhySkFCZDdmcDU2ejVlTmFHb2NFazA4bHlw?=
 =?utf-8?B?UlVNc0ZYeVBHZDZ1QlFJWUY3ekRwV0RZdExXK1E0V3htUVVVTmU4N1Nodks5?=
 =?utf-8?B?VkM0WXB1akQ0ZDVZWVBrZlBxbWduNG9FOHhGeWtWMXBjM1g3cEJiZGpkY0Jl?=
 =?utf-8?B?YkI0bG9zREpLRnBlWG5sbWpoWERid1lMOFVZZDJpR09wTjZsbjFWcHptNzh0?=
 =?utf-8?B?RUNmK3VDNE5uRDlDZUlmcUpFc1MraWU5MUJtUFJmZkFGT3ZmaHlPTFg0aEI4?=
 =?utf-8?B?ZUJxa3phbTR0b3F5YUlFMXljK0tKTkJUbkNkVDhnSnBHbHR1M1lzQTRVSWlm?=
 =?utf-8?B?TUZTeCt3N2lFOGk0bE1RTHJOMS9IRjVTOWdlWGl6OFlRdnd6d2VtZnk5Z2h2?=
 =?utf-8?B?aFZMYlFUdXFSYlNnV0F2dFZ6ejNXZFFwUk5wKzBsaFN0Vml4c0Vkd2NWWWZH?=
 =?utf-8?B?UVlWRHhSTzk2OTNpT0hGWGtkem5FTnpDcGFrVEpCYjdEeGowMGFwTW5FUHdw?=
 =?utf-8?B?N3FhK2Y1cWxMaE5ROC9yZEhNcHpvU0V1VVRvazBtemZiV2ZlRXhNbGtrVUIx?=
 =?utf-8?B?Yy9PVnFRNEN1VDhVU0FCUTBibjliSzlONUxLTFV6MWRoNzdKemN6cE95eFVm?=
 =?utf-8?B?V0Z6bHc5OWtxNUttUXR0S2MzSy9Yd1NwYXB1U3lkUlJNTC9GSllpdmZOYzJt?=
 =?utf-8?B?OFFoYXpneTY0UHRSNEQrQnVhaHJ0RHdKQ0dvWG8reCtLTE53VjhNZGdWWFZ6?=
 =?utf-8?B?bzJ0L2ZydE1aUStNRUQwVEhJakRuMHY2L0RXUjQ3bkN3NW1oMU9rRVNRMHRt?=
 =?utf-8?B?NTJqKzBjdmRQdHAxN01remd3TzNESGpUTVVZTmRMT3JDK1NZZGlNZ2lldnYv?=
 =?utf-8?B?VjFsZDBsaFF6NXNHRmdCdmFwUThZLzBybVBudi9mRk9KcUt1TnhHYnRoWVA1?=
 =?utf-8?B?N1ZxWUFpdVZKT3N0cisvd01OUlZxNzFJdk5OcmdobUJTd2Z4T2NMYmpiOGk2?=
 =?utf-8?B?TXlVY2ZDQmdaOVd5SEwzanQ1TUlRZUFHTlVvQmQyRWdKekg4VDZvYlRsdzlp?=
 =?utf-8?B?QnVYQkNRTm5NRGd2RTBGNUJDVzRFZHkxejVLblVoeDAxR3Z6a0lkUXZ6WXVw?=
 =?utf-8?B?aGpQRmdHdFFoMTJtVjJvMld4RGxDK0FvK0NFNlJaOHgxeVQ3VGFWZEYwa2pv?=
 =?utf-8?B?RVR2K2pMUGxDd3dJVUFEbDY2S0tORzE3dUZVSWdpb0ZJcWRNVk1NMFJZZ1A1?=
 =?utf-8?B?aDZ1UC9VYnhKUTc5cFpPd1FrVTBpRi96amY0SVdGNk8zZ0ZpMzQwYnlaU0Zu?=
 =?utf-8?B?RXF2ajJIMUJzell5ZTFtN01kSmFOZ2hueldmeU85bUtPVTFYOWM1emVSRTIx?=
 =?utf-8?B?V2RCcFBOb0JZWitVZW9RMmJsV1BONjhURXAxS0gzVzVHL2VtNWNEVTFHcmlx?=
 =?utf-8?B?bHBBRVoxUW0zNUxqdVIvd0pOSmRtZFp2RGduMTFBb3MwR2ozZ1NzWHVjQW1V?=
 =?utf-8?B?SVM2V0xXSnovbjBHc3NUa3VTK2I0TG1uRWtTZkVVT21pTzJ1WmpyZDN1bFdj?=
 =?utf-8?B?RGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a94516cf-5cc3-419b-9a62-08dcdbdc5250
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2024 14:30:50.2370 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zRW39pdz3z5piRDkeRP1VMFDnygLc5rhU8A5LIkVo0Le4a/QN1jfkqulR2ED3yXgqq6lbQRYPuA/k5A4TQoxEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7689
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

Quoting Matt Roper (2024-09-18 19:37:35-03:00)
>On Thu, Aug 29, 2024 at 07:00:45PM -0300, Gustavo Sousa wrote:
>> The first part[1] of the LWN series on using TRACE_EVENT() mentions
>> about TP_printk():
>>=20
>>     "Do not create new tracepoint-specific helpers, because that will
>>     confuse user-space tools that know about the TRACE_EVENT() helper
>>     macros but will not know how to handle ones created for individual
>>     tracepoints."
>>=20
>> It seems this is what we ended up doing when using pipe_name() in
>> TP_printk().
>>=20
>> For example, the format for the intel_pipe_update_start event is as
>> follows:
>>=20
>>     # cat /sys/kernel/debug/tracing/events/i915/intel_pipe_update_start/=
format
>>     name: intel_pipe_update_start
>>     ID: 1136
>>     format:
>>             field:unsigned short common_type;       offset:0;       size=
:2; signed:0;
>>             field:unsigned char common_flags;       offset:2;       size=
:1; signed:0;
>>             field:unsigned char common_preempt_count;       offset:3;   =
    size:1; signed:0;
>>             field:int common_pid;   offset:4;       size:4; signed:1;
>>=20
>>             field:__data_loc char[] dev;    offset:8;       size:4; sign=
ed:0;
>>             field:enum pipe pipe;   offset:12;      size:4; signed:1;
>>             field:u32 frame;        offset:16;      size:4; signed:0;
>>             field:u32 scanline;     offset:20;      size:4; signed:0;
>>             field:u32 min;  offset:24;      size:4; signed:0;
>>             field:u32 max;  offset:28;      size:4; signed:0;
>>=20
>>     print fmt: "dev %s, pipe %c, frame=3D%u, scanline=3D%u, min=3D%u, ma=
x=3D%u", __get_str(dev), ((REC->pipe) + 'A'), REC->frame, REC->scanline, RE=
C->min, REC->max
>>=20
>> The call to pipe_name(__entry->pipe) is expanted to ((REC->pipe) + 'A')
>> and that's how the format is saved.
>>=20
>> Even though the output from /sys/kernel/debug/tracing/trace will look
>> correct (because it is generated in the kernel), we will see corrupted
>> lines when using a tool like trace-cmd to view the data.
>>=20
>> While the output looks correct when looking at
>> /sys/kernel/debug/tracing/trace, we see corrupted lines when viewing the
>> trace data with "trace-cmd report":
>>=20
>>     $ trace-cmd report \
>>     > | sed -n 's/.*dev 0000:00:02\.0, \(pipe .\).*/\1/p' \
>>     > | cat -v | uniq -c
>>          34 pipe ^A
>>=20
>> , where ^A is a non-printable character.
>>=20
>> As a fix, let's store the pipe name directly in the event. The fix was
>> done by applying the following sed script:
>>=20
>>     s/__field\s*(\s*enum\s\+pipe\s*,\s*pipe\s*)/__field(char, pipe_name)=
/
>>     s/__entry\s*->\s*pipe\s*=3D\s*\([^;]\+\);/__entry->pipe_name =3D pip=
e_name(\1);/
>>     s/pipe_name\s*(\s*__entry\s*->\s*pipe\s*)/__entry->pipe_name/
>>=20
>> After these changes, using the same example, we have the following:
>>=20
>>     $ trace-cmd report \
>>     > | sed -n 's/.*dev 0000:00:02\.0, \(pipe .\).*/\1/p' \
>>     > | cat -v | sort | uniq -c
>>         396 pipe A
>>          34 pipe B
>>=20
>> [1] https://lwn.net/Articles/379903/
>>=20
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>
>Interesting; I hadn't ever realized how the parsing in trace-cmd worked.
>Are some of the other macros/function helpers like DRM_RECT_ARG that  we
>use in our TP_printks similarly problematic?

Yep. I noticed some of those as well, but I didn't take time to take a
good look at the other cases though (which I wasn't using during a
specific debug). I could try looking at other cases a follow-up task.

>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Thanks!

--
Gustavo Sousa
