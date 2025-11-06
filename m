Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0981FC3AB59
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 12:53:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0258A10E027;
	Thu,  6 Nov 2025 11:53:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gvFKdgfb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6708310E027;
 Thu,  6 Nov 2025 11:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762430011; x=1793966011;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XPogKOuFYzh0w7RSpLx8D+RqNoLO1R3gH/7ttbEshp8=;
 b=gvFKdgfbNJM43ZazgAvrwTxlchpKgNgct+xAqFuLa0RKn+4CXxUw0RGW
 1eCu9tsuitNEhLNeY0Qf05Eb1oHGBKV9Cs7YpgR4m7fvg7qHhHNK20ssX
 1bK92qy9STltaE3YvOO8ZSrLW6tZH/bLHEnl+kW06cgXIkF1hHILyVa6m
 s+40pw05VN7a0ycWMuvuwERLGjvSQSCMWQyHxI7qmU+/WV1xYE4liCKkR
 URcvZAoFehXVTlKYtxe68kpEUoUfXAnnkSg8y+L+TIZwWURz19BXnYPgp
 Wowrtm8E3of7LVBU1FGOzkcluANlSC8NA6ZvFvVKw70aRKbio7D46ITWj w==;
X-CSE-ConnectionGUID: RDpXEfk+SLWDHcSVvp69GQ==
X-CSE-MsgGUID: gpm1hZhOSX+8BYlTncUjXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="90031520"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="90031520"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 03:53:30 -0800
X-CSE-ConnectionGUID: 7nyv377QSxWjOnW2R8XWBQ==
X-CSE-MsgGUID: 8vR3ey3HQtG1D0co1Hi1gQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="187402620"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 03:53:30 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 03:53:29 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 6 Nov 2025 03:53:29 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.33) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 03:53:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RceosQ75JmEa3nKq+93Nw8ts50e4jriWAqiAOzYptbg+aO8q9c/KD6Q0Cqtc4SzOoJqQOO496+I7afkHHtxJdaGQq0PyF0lkTRjgEkwcmdj8ze6wbfc5SA2SpLfnRSXlqh6n1Doev39YqgxP+KkoiPK1DNyfEiMy3eHXYCprzp/xbjuZQ5UkD7tfJjB/LF2LMaNp5khtmrabPFNlxWAtqsRkgeOZExwNscychEBgyw84TGJqGK616argKc7oOukCPeo83Mjn8JLYkXTpaojw8CIxK1O3gl9KcJzRKA1L66antl1FIjdnoV8Bp1ItJ2tGCF3tvvndUADdLxqVvbesXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XPogKOuFYzh0w7RSpLx8D+RqNoLO1R3gH/7ttbEshp8=;
 b=wHvssg8//Kg9etH1TZGl9/2nm1uWy5zjVJSYz0lE+IjzG7GCD95WcieX01JQSXKiiGsCkN1ehNFOrZ32I5LlE0N/HKq6kdmAINBvp5e5CKfT1XcswEGMofk87ggv+tf2J50GwzjxwrMJQhiwYXCFA7EbPPYM+48Yhl/428ZGmQzAS+JqLm7gblTEhyd2soyN1Ga4UkSMTdRBAJajFoQneRTPFvIsakYPSD1QrqUzRZuPdIvjGiRyS3dbEXq216L9BhrTlNb9T8XeZFeVx4M6uWK80NcIgKKsoEc3o3EzJnX+qporcD5wFY4CzGCM2hstY8H8NpnV/mvpz2OtH9op/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ5PPF1FF629472.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::818) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Thu, 6 Nov
 2025 11:53:25 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9298.007; Thu, 6 Nov 2025
 11:53:25 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH 1/7] drm/i915/cx0: Undo the unjustified timeout change
Thread-Topic: [PATCH 1/7] drm/i915/cx0: Undo the unjustified timeout change
Thread-Index: AQHcTocZUBd8+DW6206e+aZAYiPRxLTlegCAgAAQVNA=
Date: Thu, 6 Nov 2025 11:53:25 +0000
Message-ID: <DM3PPF208195D8DD9FE41C2ABEDBBF4D32CE3C2A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251105190433.16434-1-ville.syrjala@linux.intel.com>
 <20251105190433.16434-2-ville.syrjala@linux.intel.com>
 <6a1805606fe7963cc5ee998401a22c6b71476fe0@intel.com>
In-Reply-To: <6a1805606fe7963cc5ee998401a22c6b71476fe0@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ5PPF1FF629472:EE_
x-ms-office365-filtering-correlation-id: d9177cc1-5c6c-4023-bbb4-08de1d2b17b8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?TjZYT1VFL1NSRTlBSnBSRFVINEZlRG9wTmNCSnJ2VUo0Q2o4ZmNjK2p4OGpL?=
 =?utf-8?B?dEcwMktWb2RYbG9zcGl1T29Hc1hiY29zNUVTK0NqZkhQdDh2NFlhVnBmQkY5?=
 =?utf-8?B?NGxsaDVsTkMzcUhGQjVzaDM2Nlc0Y3RVVzNMTVhQTEkzSm42L1BReE5kM0I1?=
 =?utf-8?B?MmJZdDBNeDBoM3k0ZHcyOW92Tm8vbHhUQUVaZW1McGFsUmhJU3cwR1NJWnJZ?=
 =?utf-8?B?Qm1aTU16VS9ORjRUQkhwaWdid3lSNVBpZGc2dW1nZWFkVm5jNEVSdlhyelpS?=
 =?utf-8?B?YVpOY1NqZVIvQkh3WWk0SHdQVjYzeDJ4TVFnc0EvVHp1dG0xN3REVGtKYWZE?=
 =?utf-8?B?S1JaRmhOVHd6QXhIZm9IaWxBM0JPOG9kWGJxbGM3UFdFU1JkQVFaUEtEOFpw?=
 =?utf-8?B?RDZRVEkxWkJ3T21XQW5RQmRTV0RnTjVzMXFvVTlsY3ZEUXhQdlo1WFh2eW9X?=
 =?utf-8?B?OVAvZG9ZVXlOdGQ1ckRMQXBOMXpGcGFHUXdmdjNSTHpzTUcvR0ZzaW51RkdE?=
 =?utf-8?B?NURoVExBK2JyMVF2NjIyRC9yTUlRQldXcVpLaERSaE5aT01sdVRxdW9La1I4?=
 =?utf-8?B?ZC9xYUJUeU55aGErRjRGT3k2ek1wOFIxa3llazU2cWt5NWZmYlIzVkVBbkRW?=
 =?utf-8?B?a1BvWGJUaVpPN21SQlpqTm1tdzBYd1RYeVhFWG5BdFJ6b1F4M3BuZnJkdEc1?=
 =?utf-8?B?SnJIcTlGaEM0amlxWmVJeDhKZG92b2FxOEFXTlJOVjhYeUJURkdXdUQ3US9y?=
 =?utf-8?B?SVZuUzJFRzdZa0ZiTWRuU093OERhT2tqbWh5cDVzeThWVnp0QWhHd3JsS3NL?=
 =?utf-8?B?YnpEVkhSTmhnLzlJV0ppRktmSytXV012UzNCRFAwWUI1bUl3bjlMNkJIQUph?=
 =?utf-8?B?U3RXditGVzk1c3hRcjJqWG51VGVVSkJMLzk0Y3VRZUhoa0x0QnVnMWM1Tnho?=
 =?utf-8?B?MWR5S3N0YVZ1aGVja0s0dy9pcUhqQ3lMc3BCUGN6WGQ4N2ZHRjg4eHFDT1du?=
 =?utf-8?B?Y3A2NS9NL3o1RHVsVVk3UmV5K1g2YTRBWktJNW42bWo2bG1DbkpVVE1Fb2Nk?=
 =?utf-8?B?SXhEcThDNHN4U0RxQmFlZmtLTTgzQWJkOHZrRkY0b242c2pDWUhyNU1qL1JK?=
 =?utf-8?B?MGk2ayt6S1RRc0NzSEFDRmZIYmswa1grZEg3eGVrRXZwK2dGZlZwY1YvbzNX?=
 =?utf-8?B?U0xmZzFoVUF4YzVCUWhmRmlUZU1UYnlDb0lHY3pjYUw1Z3ViWlk5NUJZRWcr?=
 =?utf-8?B?eFd4VUlrV0lEdVVxazBPSTd4bTM4N3JVYllZd1lDRWFQK3FvZTlvZmc2OGgw?=
 =?utf-8?B?aVdteWVzT1ZjTnMzb29nTThlcGRRNTdtOHB5Uit0aTNiakQ1OWJnQ1Q4aHdN?=
 =?utf-8?B?Z0RPZnlwK2wwRWNudUJKVkx0cURDSGx3cEI5Z0VTZ3lubmsvWlBTOHYyZk12?=
 =?utf-8?B?MEdjM1JTOUhDVjFhRzQzVEdxZG40dzI4U1hFYS95c2VONEFHQkRsNSswR05R?=
 =?utf-8?B?ZGpTTXN3MlUzSUh0NHRYL0g4aFgzUkFVRCtLUEE4Y25FYVpGNmZhdnVBL3lM?=
 =?utf-8?B?WVEvOG9DSmhybnR0WlJ4Z3NiYnUzc3FuWkF3dS9NN3ZXSkU3bGtjUERIVGw2?=
 =?utf-8?B?UGhVRHVYUnZsY0ZJQlhBOXJDT1pPYTZ6LzIzVXZXY1haUzViMW5JajJ4ZVBX?=
 =?utf-8?B?K0FIME9zRVJtYXkrRi9tMFVkeXN4MU91QzRmZFhFVlc4Q1ExUllEUSsxTFVh?=
 =?utf-8?B?dmhDZ0QwMjBqTlMvMlF5VlVaSnE5UGp5N3FQQ2VIOE9SZm5KL1ZYblV2SzVE?=
 =?utf-8?B?UTNRQUpFd0g5Q3lhcTZVR210UU9VLzBaVEk4V2l2U1l4aEtETDhVR1VXRFlL?=
 =?utf-8?B?TnNrZ1k0S2pwRmd6OWRiUU9xUGl3N1Y0bitoQUFGV25kLzRNbCsvUzduSm1P?=
 =?utf-8?B?NVVvZWUycWVtb1dRNUkwY0R5L2EwL2R1THk0SWlCdE1xNTNvV2dQTm5zekFY?=
 =?utf-8?B?MVdvRGlES1puTE1nd2pFanpqcUxuOEYvWGp2MytnUDZkdllPWWlFYm93Vkoz?=
 =?utf-8?Q?VFqoLj?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZlpteG9UVHJMQ2g3Z3B4NVRNNkZLczVDRitHYjZqM2Y4S3NkaEduWTNFMzhp?=
 =?utf-8?B?TWdHZU1hOUNJbDNBNXVTK0kvNjdrT1kvRXRNdVdPYzE0dy9KSGVtWDYvNHNV?=
 =?utf-8?B?OGk3bklIRTJ2YmFlRkdwTWdvQ2V2dmU2ckVTY1dkUGFTbUF2TE5aZXVNK0wy?=
 =?utf-8?B?NEg1TkNEUmFoL2VkaGtVTE5XV1VjUmhxS3VVdnlTZGVuN3J2bkVYbUpzbzJq?=
 =?utf-8?B?dHZ1YVJwdWpUY0RmR2l3WEk2MGJsOWJlTGdqUWFYSWVaQXkzcXZjKzdCZmJY?=
 =?utf-8?B?V0MzRXNOdEJndXJ3NWlucGVSMytua05wTW9LbmcyYXdNQTIvUThiOGtJTVpM?=
 =?utf-8?B?NTduKzRMUG45RDYrbUhRQlRlQXk1dnhSSU5tSXR4TXM5d3N0SnBRQkE0Q2lG?=
 =?utf-8?B?S2xTM3d6R204NXVXYVZNNHUwRVhCRndKNG5YVGNrU2d3UVdoY25TTXdWeUVy?=
 =?utf-8?B?R2dlRkRQOGVWdmRtYThORUFCWXRzNTd5ZXdxZjVueU5iWHFrK2dMV05HTEdZ?=
 =?utf-8?B?cnUwdjZTV2paZXdIL1Q4VDU1aENWVE1JdThyV2YxcVhaRzFQTC82Y1BSWEFw?=
 =?utf-8?B?Tkgwc3lFMnQ2MWV4c2s5eE1mZjRjZndhd0o4S1pFSUVPQi8zd3dHeTRoRFlC?=
 =?utf-8?B?cUZXNHNyNjkwQlZ0YlNtNnZhd2hQMWxDOS9CQUUyc3FCTGZxb2lkZE83S1p2?=
 =?utf-8?B?VS9Ha2RQRkp2UDcvQkhuQ2dKbU9maGM4SDJJM3dXUHBVSFVpd2FJVUxSLzF1?=
 =?utf-8?B?cUNmU1htWDc5bHEzVTJCbVg2WnVVM3V1M3phNnp2VkRrdUJvNlc4NHdJcVA2?=
 =?utf-8?B?bDBlRm9oZHZMd0ZxMkVLUHA1Umw0bzYwUjZBZ0h3c1hyMmtrOEZvRTN3SVlp?=
 =?utf-8?B?Q3BRNXhoOU1TTGFUQ0duZnI5OUhFcnRIVnRIT2MwWmRMdmg4aFdEN0s4Q2FW?=
 =?utf-8?B?a3N4dGtqMHd3QWR6RktXYU9Pc0FtNkJiOTVRNWt2SmNqNGUyVWNKZ2NQZ0lB?=
 =?utf-8?B?U09EYTNiMXhOVE5sSTQvbTc5RmxBcExXeHg0K2hjRlkyUHFYczVUNVpRdlJj?=
 =?utf-8?B?UmUwMGlnQWJiYlRJZkNZdE90dmxTdDJTbnpaaXVyM0laemtMMWJpQTJJMlYz?=
 =?utf-8?B?TytiMEJmbFhRZEhPbXBWREU1b0dyRks0T1VrQ3NRTHErY0QwbkZzb2JvK1g5?=
 =?utf-8?B?RUVmd3F4REEySUxRdFZJUWhvVFNjak1xSlVsaXU3NkpWT29ZR0oxOUZHSDBk?=
 =?utf-8?B?VmI2aHBDY0VuYmlvWXBZMlFFUTdnNlZQbmNCRk9PbTcvOWhLNzdIV0IzeExB?=
 =?utf-8?B?MVorUUdmMktjaGlRN0p3SGpCVDQzVGNOR0FJdjk0cGxEZzlaK1dDS2ZQY3lx?=
 =?utf-8?B?ZHhJcXZzT2M0dW40TkFGSlZFZWx2ZW50UDdtUzRiVXA0MWJIdE01R1RRUFhm?=
 =?utf-8?B?VXVjcVNBV3UrdkRGbmNDbjBqNGNUZjZvRnFwWkhKeTVwcVFOWmxxOEo1VzRF?=
 =?utf-8?B?UXRSbFFzZDEvbEU4ZVltMFhiaDdLZ2lKdmRJN0UyRW1PZjVGeUhOb1hlR09T?=
 =?utf-8?B?enVSTWNKYW54NXpjZEhiVHlwUXJESEFWVUljYzE0bzFpMGZjZDN3NHliYXov?=
 =?utf-8?B?VzhOQi95L1BWQWNGSmdnc3RjZ2NySk5scGlXa0R0eEdvR0ltLzVUUndCaFI5?=
 =?utf-8?B?ZUExUmQzUWIrVjFqZWozNXRNK1JiclptbFZ3d0kxU1pGUGx1Z21vZytDRzJ5?=
 =?utf-8?B?bGJDZDNqRFYvVGVJZ2JvTkVnRUlTd2VlbVBmTGlIYVU2YXE1cVRpa21nNGVE?=
 =?utf-8?B?ZFFkNHpmYUV2MmJwVWhSSE94em5aNzB5MHowMTRsWnZJM0xhNUpWY1ZRQ2Z2?=
 =?utf-8?B?NUhrVmVWZFhYRG00V3Y4RzJnY0ttVGNoZHNvYWNsOEF0NHdQVHJ5Ym14Rm5q?=
 =?utf-8?B?aFg4TUY1TFpmem5qVlFPS00wVlluWUhrRDBiaGVZdzRvdmJjMDdCb3dVeWJ5?=
 =?utf-8?B?ZTFLLzhmc3NTeWlITDBFRGpZRkh6VXFTTVJCam16VzRtemhTTmo1RVpkNzBR?=
 =?utf-8?B?MHFQWVhSSXpwRU9ESFcyN0RzeU1PZWZvakJPb3dnT0ZON2ZYSzdKVlhmRWpV?=
 =?utf-8?Q?4Rgk/gyzVbLEPyLD0j26+/axb?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9177cc1-5c6c-4023-bbb4-08de1d2b17b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2025 11:53:25.1668 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G+10edoqAq/yj8LtlRYcs83/egpNEjrQclhGYQbeuYgezZUw2GTHnSnVc5Ndsp9sh31R9VdDR9LKN4lqH8jEsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF1FF629472
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

PiBTdWJqZWN0OiBSZTogW1BBVENIIDEvN10gZHJtL2k5MTUvY3gwOiBVbmRvIHRoZSB1bmp1c3Rp
ZmllZCB0aW1lb3V0IGNoYW5nZQ0KPiANCj4gT24gV2VkLCAwNSBOb3YgMjAyNSwgVmlsbGUgU3ly
amFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOg0KPiA+IEZyb206IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4NCj4gPiBV
bmRvIHRoZSBib2d1cyB0aW1lb3V0IGNoYW5nZSB0bw0KPiA+IGludGVsX2N4MF9wb3dlcmRvd25f
Y2hhbmdlX3NlcXVlbmNlKCkuIElmIHRoaXMgd2FzIGludGVudGlvbmFsIHRoZW4gaXQNCj4gPiBz
aG91bGQgaGF2ZSBiZWVuIGp1c3RpZmllIGluIHRoZSBjb21taXQgbWVzc2FnZS4NCj4gPg0KPiA+
IFRoaXMgaXMgYWxzbyBub3cgYWJ1c2luZyBpbnRlbF9kZV93YWl0X2N1c3RvbSgpIGluIHdheSB0
aGF0IHByZXZlbnRzDQo+ID4gZnV0dXJlIGNvbnZlcnNpb24gdG8gcG9sbF90aW1lb3V0X3VzKCku
DQo+ID4NCj4gPiBGaXhlczogZmM5YmUwYTEwY2E0ICgiZHJtL2k5MTUvbHRwaHk6IEFkZCBhIHdy
YXBwZXIgZm9yIExUIFBoeQ0KPiA+IHBvd2VyZG93biBjaGFuZ2Ugc2VxdWVuY2UiKQ0KPiA+IFNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQo+IA0KPiBSZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4NCj4gDQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y3gwX3BoeS5jIHwgMiArLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jeDBfcGh5LmMNCj4gPiBpbmRleCBiM2I1MDZkMGUwNDAuLmU3ZmU5NzQxMjlmZSAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9w
aHkuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3Bo
eS5jDQo+ID4gQEAgLTI4MzAsNyArMjgzMCw3IEBAIHZvaWQNCj4gaW50ZWxfY3gwX3Bvd2VyZG93
bl9jaGFuZ2Vfc2VxdWVuY2Uoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gIAkv
KiBVcGRhdGUgVGltZW91dCBWYWx1ZSAqLw0KPiA+ICAJaWYgKGludGVsX2RlX3dhaXRfY3VzdG9t
KGRpc3BsYXksIGJ1Zl9jdGwyX3JlZywNCj4gPg0KPiBpbnRlbF9jeDBfZ2V0X3Bvd2VyZG93bl91
cGRhdGUobGFuZV9tYXNrKSwgMCwNCj4gPiAtDQo+IFhFTFBEUF9QT1JUX1BPV0VSRE9XTl9VUERB
VEVfVElNRU9VVF9VUywgMiwgTlVMTCkpDQo+ID4gKw0KPiBYRUxQRFBfUE9SVF9QT1dFUkRPV05f
VVBEQVRFX1RJTUVPVVRfVVMsIDAsIE5VTEwpKQ0KDQpBY2NvcmRpbmcgdG8gQnNwZWM6IDc0NDk0
DQpUaGUgcG93ZXJkb3duIGNoYW5nZSB1cGRhdGUgZGVsYXkgY2FuIGdvIGZyb20gYW55d2hlcmUg
dG8gMnVzIHRvDQoxLjJtcw0KDQpSZWdhcmRzLA0KU3VyYWogS2FuZHBhbA0KDQo+ID4gIAkJZHJt
X3dhcm4oZGlzcGxheS0+ZHJtLA0KPiA+ICAJCQkgIlBIWSAlYyBmYWlsZWQgdG8gYnJpbmcgb3V0
IG9mIExhbmUgcmVzZXQgYWZ0ZXINCj4gJWR1cy5cbiIsDQo+ID4gIAkJCSBwaHlfbmFtZShwaHkp
LA0KPiBYRUxQRFBfUE9SVF9SRVNFVF9TVEFSVF9USU1FT1VUX1VTKTsNCj4gDQo+IC0tDQo+IEph
bmkgTmlrdWxhLCBJbnRlbA0K
