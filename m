Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BC3997B5C
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 05:37:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 503ED10E837;
	Thu, 10 Oct 2024 03:37:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QZtjJvFf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 652EE10E837;
 Thu, 10 Oct 2024 03:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728531474; x=1760067474;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NdHK+bDFIugFRZjOuwVbnknw03v4Z2j+JWZkzBqQiZ8=;
 b=QZtjJvFfKKon1cq+bgJBIc5XvouXDs2y1F6AMLqqCqXu00BCzI+5PKIA
 xxFlbWO0yYfWcv1R/weCJ9Z6eEM8y/hBNvpljyKLGb0/vZt8L2KGzWldw
 iciRmSYu4t8UnsVpkDZjtR+wOLN8/xOMW6vn7mCQtt/qE9OP9cj9SZcXt
 zeBEGlfLXPgblh3WZD7rDPWt0HyuEBqxSUen7P1msfqUpe0qz1yDh+UI5
 FA62DJVG3P0MGdowIlshDm/Krt5DUIMiLWc8ReJgxdon+o2/zXA0artP7
 K6lK+WQaEZ5OE8IGDoL1jnEDwoSQfi+Jw6gz/nVR+dIFD7I1mAvYodfbE w==;
X-CSE-ConnectionGUID: QlFUQjqAQvioKXeorOrZhw==
X-CSE-MsgGUID: oVFnPx7xQzaL3UaHeKBOBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27746589"
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="27746589"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 20:37:54 -0700
X-CSE-ConnectionGUID: fleUcFXaTl+rMriVSloeAw==
X-CSE-MsgGUID: Rfts/fffSpuTK5HSpng2hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="107193066"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 20:37:53 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 20:37:53 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 20:37:53 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 20:37:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p2QzBteehDJOXu7pFRtvImsQ5i4W6xkKnJcwAJBEpXLazn2b43lreg9LVNXr5tKDcSobqqqWv8djVpeNfIIFhaH0ShwL+rZEOQ6zII7IGTiWkxarNvfwRG6l+lb1yNd9GEiNXWSIRJ4VEkvuG8VBDh/2YCX5onz2m2w7kPK8S6ZWGYgUeuOkjKa2lbBHJOxjYZfqSSwxpNq1s1BqmShSX3HVYPfbTzPc63DmY8KgkymJWqrAjkw476CrKqsUdoYyVnRWZHicYw3REAxnCLdHEUJcqtphMbo3k9jI5toPcU2yJsGkbB892kOHez0YC6AY1zwBDZIvZxfEK3AHwG2cQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NdHK+bDFIugFRZjOuwVbnknw03v4Z2j+JWZkzBqQiZ8=;
 b=ddYyp70DuiKFbUNeb1819xMDzUKxMtbir5qJ2tZgnSBMW/Gjj/YpoyJZQR6HQdx1LgdGO9x+vjWSDYpyau3EuUpmYgBxwkcdWXyKae9TpkNKXf3E/Gj3uUxuPwc0LdnvhBdfOA4rnQaxeP8nTWfWEYlwEwL3G7Q7mEqdMTNgA0dfwBU/0L16Me+wotwFosx5Wgh6gsrEA63ITrH1zh1QOHM0IEQTrKl+9Sz7d1fovwx0SdizDolYKd44MDCYAjvKADdUBhIlMEPyhfjwNkpndWu1QHUrhH6b86VenxwmxxaYBa8p1G7ezyD3XxvoiTxC8Uvb9RyBUqeKDblv+4qJfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA2PR11MB5113.namprd11.prod.outlook.com (2603:10b6:806:113::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.18; Thu, 10 Oct
 2024 03:37:50 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8026.020; Thu, 10 Oct 2024
 03:37:50 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Atwood, Matthew S" <matthew.s.atwood@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 10/10] drm/i915/xe3lpd: Add powerdown value of eDP over
 type c
Thread-Topic: [PATCH 10/10] drm/i915/xe3lpd: Add powerdown value of eDP over
 type c
Thread-Index: AQHbGdK3jzBpcU8CuUSQgRrYsWknJrJ+DgGAgAD9ywCAAEvNcA==
Date: Thu, 10 Oct 2024 03:37:49 +0000
Message-ID: <SN7PR11MB6750EA7B1C82161D0531EBE1E3782@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
 <20241008223741.82790-11-matthew.s.atwood@intel.com>
 <87h69lbtf4.fsf@intel.com> <ZwcMNCKqy2OwTuyx@msatwood-mobl>
In-Reply-To: <ZwcMNCKqy2OwTuyx@msatwood-mobl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA2PR11MB5113:EE_
x-ms-office365-filtering-correlation-id: 4e54a6b9-e539-4cb3-df16-08dce8dcea3a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?WWJweitwaWVyOVFlbnhsSk1Ub0JhQis5MUNmSDQxVVpHTGhUUERhQlZrb0s0?=
 =?utf-8?B?Sit0UnJpSkJwYTRkQnVmbHZ4bzBMbEwrSFloWG5XQ2daU2RFS1Z6SmxvRERu?=
 =?utf-8?B?OEszUFFYMnpIN014YkpCM2R3OXdVVkcxMnlBLzUrRmtwWE9WOTRmYkUxRUFh?=
 =?utf-8?B?aVFDUnFBenh4Um9DQXBxcHI2VUlBQ0lhak5YK3lGemJwWGtUSjdVUyt0V0hN?=
 =?utf-8?B?MWwxRk9yQXRkMHgyRkZ0dGt1aVhPMk54UjVPOC9pYitUL1lnN1ZNUjZDYUZi?=
 =?utf-8?B?T01kVk5EdDZhRmpmSkViNXcxdUxoR0RWWFNFWThKU2ZqaWpKWkhGUzRqM2wv?=
 =?utf-8?B?MUp2ZUYrOFAwcTh5Q2RtS0ZvdjB3V2xFV09Wekx3WExnMkV5VEpUTmZTTVJy?=
 =?utf-8?B?Uk5yNUhmM3VqUi8rVGxiTTJKMXJNK0tKQmJ4VzlNS2ZZOGVZZ2V4bS9WeEFB?=
 =?utf-8?B?YVJ4VDlhVnZBRXlsTEtqY2pFYWpZYlQ4Y2pIekdrRXVyd1ZpOWpXTlhoaDR4?=
 =?utf-8?B?YkZvZEd0aVRGZGpLNy93R3pZM2VmU0h2Z0hyeFFNOTZNek9aVW9EYlVuemx3?=
 =?utf-8?B?b0FSUVVNeVRSMFMwOS9IOEE3T0gwVXFwa1RjMDVZbTkwMmdjODVmbEJQSTg1?=
 =?utf-8?B?ZXM2clRrbDZiL0RrMDU2VFkrT01FMzNnY0dCaDZwK25SRHNtK2hoSHpCajNX?=
 =?utf-8?B?Sm9rUEF0Z0g3bStyMVA5TGlKRU5uL3V3d1ZodUY0cUp2YUVqdTdnWDlDeEkr?=
 =?utf-8?B?bUpyaEZ6OXdXZzhEMzBPc2krWXZSSW9RU3VRdXVKd0tDdENOdWEyN0ZETnBO?=
 =?utf-8?B?c1JGQlBmS1FBekk5NkdKcHlWSnZaUXdOYWc1UW04dEc5aXNlODVzSjVmUXYx?=
 =?utf-8?B?TDZnNnR0dTM1ZnN6L0tISXVxcWMxVHdiZHo4cmkwV05UenplZGQvTzVwdlhx?=
 =?utf-8?B?dDdnc3owTlVpNWhIdmJ6YXJxYmFVTlBkTGU1SUdOUjVUcmtmR3dLeU1Kd1pz?=
 =?utf-8?B?UGRQVHBhQTJ2UzNUMXQrLzRuM2lrK0c5SC9QQlMxd3BYbUl6QnAvUVhwQ0Ni?=
 =?utf-8?B?b3BIbitYaE9lNS9WRXQ3T0xPd2YwaGljQjdvQ3pTSkd5azkvY1hMMmV0aG5L?=
 =?utf-8?B?V2NCVjNFSDFveGk0SzdBNVB4ZjlqaU1pTGJ4NWVBMU1KWWlEUStJNDhaNkxD?=
 =?utf-8?B?ZWZzSnVvMmtlekZDdDBhMGxVRjJSZUlUa1c4aFBJckFlajdUaFZDUU5OM2Nn?=
 =?utf-8?B?UzhmT3ZjdmMyOEx4SkJtQkFxdEhERGhjSE5JWkZwRVlXeWRqTDIrUXlXNTlX?=
 =?utf-8?B?R1NzeGpQWk1lVnNDYm1tQVN1TzZuWjIxVTBwQjcwTUZNT1ltbnc3MUVicFVC?=
 =?utf-8?B?MjJRclNHY0NVTEpOWEZjQVNwV0dLaWJEYmREblI0bWZocTNRZnlTSk1XSG5s?=
 =?utf-8?B?aW5ZWXc3M0pSYk5GREZJSEdhNTJWY3FzOWhST2JzQVBxak1qRnJWMEVTWXBZ?=
 =?utf-8?B?d1YrY1hsL0ZIQmkvcFNVakRKZzdrYU90L1QwOHF1SDJWcHJWUElpMnNkUXc5?=
 =?utf-8?B?ZmppK1VuOHBjTVRxWC9XaFZOY2l6RHJibW43VS9yTUMwcjc3RTYvSTVWbXA2?=
 =?utf-8?B?VEVFdXR3eUFtcFJXeENhL3g4TEJQNy9jNHhyYWF6VlVxdGtVV2JDKzBmWGkv?=
 =?utf-8?B?NDloZnNxWkUzdXFYelo1L1dCNjd2alBhSGlHVm5ENm5hRXZhQVpxRkVDakFh?=
 =?utf-8?B?bVpTbFE0M1VaU09MR09sZ25JYnlic0xDNnRPRzFiV2xNNFU0YmFsVUowaURl?=
 =?utf-8?B?NjlYY0xiOEtqd2Y1VmQ3Zz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aHAzZXVYK1c5bnQ1SWdxRTk3Q3BsOXdIR1lQMDg4eWhWMGRNSW9PbDJ3S2Zl?=
 =?utf-8?B?dEdNK0dzT3hINlI4YkZ2VElpMWlOSDhPbWtLdkpxcUdFaHpNd1NzVEZDbTFD?=
 =?utf-8?B?TG8rM3FZZVlCNHRPdGlpOXZvbk1ocmNCRGtYcjVaa3dYN0xibUhSbEMrRUVv?=
 =?utf-8?B?ZllRbXFMTkVkUmJUb1hDZFFIeXI5M0JjUXBCaTRvVlZCUWFuc0hSV0VxNW9W?=
 =?utf-8?B?L3hZY2ZROUI2eVYyOThIRGwyVlRtOTRIaUFLaXRtby9mY2k1cEt2VnJrYSt6?=
 =?utf-8?B?cnhLREU3ZndwZXNIQnl3NWlZSVlXaE9iRmxUWlYvZ2E1ZHJJQlR4L2M3RlVr?=
 =?utf-8?B?SjFRY08zOXNSSUgyQzIxak1Pdm0yb2dCbFE3Sy81YXJFWlZHWk4yRExDWmFD?=
 =?utf-8?B?TklHNW9sSFF4SXNXZ2ZrR2pRZXA0N2gwckQ0cEw0eDNjM1RDYklabzFpaGpq?=
 =?utf-8?B?bzlHOGFpaU5BTXh5VU5NcmpxT0NhUXU0MldKN3F4TWhadXJObllRUk5wYmxu?=
 =?utf-8?B?ZkI2MGdWT3Z5UUZpa0M3di9PRUE4YU84QkpGOEN0TEVMZThPbU9rU0toVlh5?=
 =?utf-8?B?TWFpRVFDNW1NdldZUWgyeXRsSEN3bTVZbTRxQnpxUk1jT0YxS3I0RHVUcHhy?=
 =?utf-8?B?aUg5T2NkSjlGVDdpeHZaSFIvUnUyRkt6RXdnVWsxTHp4bkt2QUJtbUgzT3hy?=
 =?utf-8?B?WmdLSWhETTc2VjY1YjFFNEdrS2x2RkkzcVN1RnlDaEQwYnorVjFob0o4dk1E?=
 =?utf-8?B?bWdVcmE0TldXMjZUUjRRMHAxbzR5cjJwdHFaWG80cnVHL0FLVTZqUDV6MTdL?=
 =?utf-8?B?RDRzK2xlSnBwbXErNUlqSTRKQ3g4eG5YRmxPTEk5aTcvYkp5VW54RHNQUGtH?=
 =?utf-8?B?TGxOdVhSR0xCS3V4ajQ1WlRaY1JwSnFzcUpjbGd6VzlrdmxZWU1ZU000aWtR?=
 =?utf-8?B?VGt2bHZsUUphdVRhdVZwOVJOVnVvQ2RIM1BITmUzOHlDakFUMTExcnArbEZC?=
 =?utf-8?B?SUNLNjdwQ2pmb05tNUlzWGp4RDVFeUhvWTk1dy9VUStNWGx1VGxCdWZXVlkv?=
 =?utf-8?B?UWJWWndnVy9pUU9BdHV2UGtWSXpvK0dscC9vM0FOeEhmWmY4a0UrSXdoODRM?=
 =?utf-8?B?WUxnR3FDTEhrL1FXcWlsNmhQOFYwSHRaK09YWUpqL2FnU3V3a3FMbEpXdlJw?=
 =?utf-8?B?SlExbmJtRGpha3J0UjZ1Njh5dzQ0RUtJYmkxeG4rUzZGUC9BZE1SaGh1Tk96?=
 =?utf-8?B?Vkt6VkNPMWphdjU5VEYvMHpkeStDdVJvUk1qODZCOEU4eitkZGthdnphZ2FR?=
 =?utf-8?B?bjl3QzVsRXQvUXhmaVFrdDA0aktwakdNZE45NUNSN2x2a2plWlozTHFYZ1pU?=
 =?utf-8?B?c1FsZzd2S0xLMlB6ZmtFQWJmM25DcWhUUFZSMGdIQ3dUVG91WVY4NEZHSVhv?=
 =?utf-8?B?clRVZEhqa3dNVjBwSC9IcXBUeUhXU3JOZy9Nem5ObUI3cDhQOEZIUUtEZ2Ru?=
 =?utf-8?B?SXVoaTJBejRrdHNiUUU0aFNIVTBJbkg5YlhNUEljd0R2N05WallGWXlPaENI?=
 =?utf-8?B?SnlvVnZDTVR3a3pSYVNNcDBYYTJNOUdwS1BCWXNZMmQyMzY5S3JSanpIZktS?=
 =?utf-8?B?bnBpM1ZmdHFOVnlsZ0VxbU1DTzJVbVRiM3lzMXpCWEphNStiRkw5QXdhNGJJ?=
 =?utf-8?B?eTczcVVsUlBpSTY0YWFQUlFOZ3EvbFpYQjZ3OXhpdnB5RElWcml5L2dlbVZZ?=
 =?utf-8?B?NTBHUklxN0o2VnBZUjBKUnVKa2JERkxubFl0Y0F1aWdYbC9JMnNXOUszRU9h?=
 =?utf-8?B?QXpzRW9mN0YvNDJXWGplcHdNN1FDVXhOT1B4VHhiNTJ6clcyd053N3RJdVlL?=
 =?utf-8?B?eFdLRkFKNG81OEp1VmVGN21YK1ZsaG03aUd5czhXczNMYlJFRXlzbkUyN01D?=
 =?utf-8?B?MCtOR3JzbnpxeStFMncrcnMxWFp4dGtwQnNnNThaVHYyNU9iYVZFakpnQ1FG?=
 =?utf-8?B?cmtBTFJ5a09OTDErbU1uTFN3Yk5lTnNPY2Yxc0RuRVhmVGcwWHhlYVlNQmw4?=
 =?utf-8?B?bzJTelZvYlZoK25pc2ZoeGtLK1krNGpDQ1puYWVRZVNCRUg3RDh3QngxYUJ2?=
 =?utf-8?Q?R1WskMhMRK3LRrXTadQAkpdVA?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e54a6b9-e539-4cb3-df16-08dce8dcea3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2024 03:37:49.9917 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zu7i8Q3kaE7imCcY1aIpZ9+lABTWISveTbsg5jvfJxaDQGTrhsWuPRFZBFYzKqXb0uEx9Crx+PZpzxGIHnFaIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5113
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQXR3b29kLCBNYXR0aGV3
IFMgPG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPg0KPiBTZW50OiBUaHVyc2RheSwgT2N0b2Jl
ciAxMCwgMjAyNCA0OjM1IEFNDQo+IFRvOiBLYW5kcGFsLCBTdXJhaiA8c3VyYWoua2FuZHBhbEBp
bnRlbC5jb20+DQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IEthbmRwYWwsDQo+IFN1cmFqIDxzdXJhai5rYW5kcGFs
QGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCAxMC8xMF0gZHJtL2k5MTUveGUzbHBk
OiBBZGQgcG93ZXJkb3duIHZhbHVlIG9mIGVEUA0KPiBvdmVyIHR5cGUgYw0KPiANCj4gT24gV2Vk
LCBPY3QgMDksIDIwMjQgYXQgMTA6NTc6MDNBTSArMDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6DQo+
ID4gT24gVHVlLCAwOCBPY3QgMjAyNCwgTWF0dCBBdHdvb2QgPG1hdHRoZXcucy5hdHdvb2RAaW50
ZWwuY29tPiB3cm90ZToNCj4gPiA+IEZyb206IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxA
aW50ZWwuY29tPg0KPiA+ID4NCj4gPiA+IEFkZCBjb25kaXRpb24gZm9yIFAyLlBHIHBvd2VyIGRv
d24gdmFsdWUuDQo+ID4gPg0KPiA+ID4gQnNwZWM6IDc0NDk0DQo+ID4gPiBTaWduZWQtb2ZmLWJ5
OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4gPiA+IFNpZ25lZC1v
ZmYtYnk6IE1hdHQgQXR3b29kIDxtYXR0aGV3LnMuYXR3b29kQGludGVsLmNvbT4NCj4gPiA+IC0t
LQ0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jIHwg
MyArKy0NCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pDQo+ID4gPg0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY3gwX3BoeS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jeDBfcGh5LmMNCj4gPiA+IGluZGV4IDFjOGMyYTJiMDVlMS4uM2Q5NWVlNjVhOWYxIDEwMDY0
NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5
LmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3Bo
eS5jDQo+ID4gPiBAQCAtMzE0NCw3ICszMTQ0LDggQEAgc3RhdGljIHU4IGN4MF9wb3dlcl9jb250
cm9sX2Rpc2FibGVfdmFsKHN0cnVjdA0KPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQ0KPiA+ID4g
IAlpZiAoaW50ZWxfZW5jb2Rlcl9pc19jMTBwaHkoZW5jb2RlcikpDQo+ID4gPiAgCQlyZXR1cm4g
Q1gwX1AyUEdfU1RBVEVfRElTQUJMRTsNCj4gPiA+DQo+ID4gPiAtCWlmIChJU19CQVRUTEVNQUdF
KGk5MTUpICYmIGVuY29kZXItPnBvcnQgPT0gUE9SVF9BKQ0KPiA+ID4gKwlpZiAoKElTX0JBVFRM
RU1BR0UoaTkxNSkgJiYgZW5jb2Rlci0+cG9ydCA9PSBQT1JUX0EpIHx8DQo+ID4gPiArCSAgICAo
RElTUExBWV9WRVIoaTkxNSkgPj0gMzAgJiYgZW5jb2Rlci0+dHlwZSA9PQ0KPiBJTlRFTF9PVVRQ
VVRfRURQKSkNCj4gPiA+ICAJCXJldHVybiBDWDBfUDJQR19TVEFURV9ESVNBQkxFOw0KPiA+DQo+
ID4gRG9lcyB0aGlzIG1hdGNoIHdoYXQgdGhlIHN1YmplY3Qgc2F5cz8NCg0KVHJ1ZSBpdCBzaG91
bGQgaGF2ZSBiZWVuIEFkZCBjb25kaXRpb24gZm9yIEVEUCB0byBwb3dlcmRvd24gUDIuUEcNCg0K
UmVnYXJkcywNClN1cmFqIEthbmRwYWwNCj4gUGxlYXNlIGFkZHJlc3MgSmFuaSdzIGNvbW1lbnRz
DQo+ID4NCj4gPiBCUiwNCj4gPiBKYW5pLg0KPiA+DQo+ID4gPg0KPiA+ID4gIAlyZXR1cm4gQ1gw
X1A0UEdfU1RBVEVfRElTQUJMRTsNCj4gPg0KPiA+IC0tDQo+ID4gSmFuaSBOaWt1bGEsIEludGVs
DQo=
