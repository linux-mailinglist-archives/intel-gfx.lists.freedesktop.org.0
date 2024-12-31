Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7B39FF199
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2024 20:40:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E62C210E6AA;
	Tue, 31 Dec 2024 19:40:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WZGtlNiu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F43810E6A8;
 Tue, 31 Dec 2024 19:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735674004; x=1767210004;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=8hr0gCY7gMgMa/yvZo/1M1o/YphR5qCcz9E1MHL7xZ4=;
 b=WZGtlNiuWm0bjU045j01/JUcOf+2/oY8IReM8m5IRsHRkVKc7zvKPj/Y
 6DkaFS7JYrYkcXDUbd3CKEvcLnmmrJ4gAqVSibsMV6faR88eBZcuPnKBV
 WLO88EJAS+OjhBLIHgN6Nfw+6+I84NRHINYpeibwCmkJejP+3pXsfNTGg
 KJCadFvWyyyL4MR3CLwTCLfn6ZryEwxN21lmjSIlOj97el1OXm+WK+CQU
 s1UtA/s7O3k1Rn8fwd5sm9ttwzKcuhSMlxR5ccHAA8ncpC0J4p1BnJS4G
 Oyv1T1ivibeodruW/KdrYobwRnwAEbkhZ8wymrzQtjZZ164Yo+HnCgzPZ Q==;
X-CSE-ConnectionGUID: 7lID4qyYSZW2v2yoqrHy3g==
X-CSE-MsgGUID: 3By2qIHnSou8CeD5RJh4IA==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="47368654"
X-IronPort-AV: E=Sophos;i="6.12,280,1728975600"; d="scan'208";a="47368654"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 11:40:04 -0800
X-CSE-ConnectionGUID: jCtgU4+GTbuTF+ifwcY37w==
X-CSE-MsgGUID: FnUOjDNmS4eFnos2TTtpsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,280,1728975600"; d="scan'208";a="131958289"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Dec 2024 11:40:04 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 31 Dec 2024 11:40:03 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 31 Dec 2024 11:40:03 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 31 Dec 2024 11:40:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=udy7NeLKHC6zE1d7Zh/1czbeH1zZZTzFTSpXEq7fu+y/ymgphfpKLVBxh0kkLIQU9n1sxa7TMYeI0WKdQv6Tl9KCtxl9DB4YlSLdmHfXOq0uFkdHvvUaYi0B9Unph/uCJnohwcA9BHgZfBLVg5RdhzfarvMZlZ3zTNHfTD2ASOR8nIl4S3Dh3BKwq+/lGxeHsv6HTIUbgBq+v4gZes0oetmYvAH/GvJTxmyPOWgq1C0LzopOuFfbUwkBaKYv3CTnCnppcTM1xscY/mQwIo3DqizR896s3DjjgYl4Wgn6bLoIc24t66bw7PnPFnp4doeU9w9OZqGbuWAF8GMgfrNXYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oMDLodxNHIreo6KriI/6vOGLO+PYkViMqgVDkHynwOk=;
 b=Ig+PmuNTwirWbSKO6LnfGCkfY5lpfkRt4sgRXmGp11u/o5Yx54+wSDqbF9LpZPHE1qmQNIclXAIYqzExHgnSW+iLp90GatP9dkdHb8bUGL4+zUdfE7Ghn12PcEUhQT/qJSnNzrgicZK9P8MRLsF6bca07rJX9YSDKdGlk95JLpNIU574sq5GGrWxIf8dO+ZUIs3MBUcbUKt4J6SnhcQD7uNipkE6LhBXxX0kimBIZiM6IZxjFm7qxYA6ujrt1RUglTy1M3zYB9uA9FRK10UGW3GEzWw+comyCeOKacL/wuDIjM9N2hytQ3TzjEdICPMfCm25rXqJPd9hI/3p5y8PHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM4PR11MB6408.namprd11.prod.outlook.com (2603:10b6:8:b7::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.11; Tue, 31 Dec
 2024 19:39:57 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8293.000; Tue, 31 Dec 2024
 19:39:57 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <c1d92e9490013d5aba50fc1d1ebc0ee18e82cf7e.1735662324.git.jani.nikula@intel.com>
References: <cover.1735662324.git.jani.nikula@intel.com>
 <c1d92e9490013d5aba50fc1d1ebc0ee18e82cf7e.1735662324.git.jani.nikula@intel.com>
Subject: Re: [PATCH 3/4] drm/i915/pmdemand: convert to struct intel_display
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>, <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Tue, 31 Dec 2024 16:39:51 -0300
Message-ID: <173567399125.6883.4944298630369994219@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW2PR16CA0004.namprd16.prod.outlook.com (2603:10b6:907::17)
 To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM4PR11MB6408:EE_
X-MS-Office365-Filtering-Correlation-Id: e3295316-2f25-436b-e3ba-08dd29d2e7f5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dzN6Z2IzOS9vbmN0WDc5eWxmc0hCODdlSzRVSzgxc3dzcHJJSTZLRlA1S0Vn?=
 =?utf-8?B?TGZSaThJWlFRYzdjck1DQkVYeXk4NUdWdDJRUFZqbXZmb0hJT0gwcmlzMFlY?=
 =?utf-8?B?eXRRK1ppUmNxY01FS25qSytYVXFkTkpvL3NFQzljNHRVNGFtRTZlNlB3Wm1B?=
 =?utf-8?B?aWlQVWR2UWtVTU1pbWdrZk1mK2xHbUp3T2NSSDFITWI1dkc1MmlXMW52R3Q4?=
 =?utf-8?B?ZS9SWlhaMW44V3lWOHZkQldURlF2K1JCOHYxS1g4STl6WHFrS0k2U0tML29B?=
 =?utf-8?B?VmNlZjNGT0d2UlM1c3F0ZU1BdHhuUzd6bTMyMG13SEVFbCt5YzJRRFpuU2hs?=
 =?utf-8?B?UG4rbUJVTzhnTUpPc3E5SXNqbFh5ejVmUkFmbmNwMUMrZWdSZTRQajdFZkVG?=
 =?utf-8?B?Q1dXaW15L3pYRkVNSGxRM2ZHK25FaFVucThrRkNzWkFKN2hmUTlIb0hnRjhi?=
 =?utf-8?B?Q1YwdGVhTDBmYkVBYjd5TE5Ldmk0UUNHNGxucjJkTkliMmp2Vmc5Zjd0eVFS?=
 =?utf-8?B?U0ZCU25XU05FTjZ0WjFMT1BON1hwUzZrU21iNjdFakZpbUgrd051WmpwSGtp?=
 =?utf-8?B?MXNla1VXY2t4WGY0WHpCVDdRbTZaUXJLL0ZwMXVLamh1cHo4dnBpTFpWWXBS?=
 =?utf-8?B?a3FpZnZkZCtVV1FEY1lndnBTKzJjbldvcXlFS1l4UmMzQWdhVkVmdS9tY2JV?=
 =?utf-8?B?MW9jdGlXZlBhM0R2VjJvZWo3bHhCejdpYnBUVzE1cjQxMTNJTzQ0SUFzS2lp?=
 =?utf-8?B?eG84TWV4M0dKU3haNll1TzhhRmdTM0dLZE90a3NyeFdlNnZ3cnlPNUVxSFIy?=
 =?utf-8?B?ZEJQeUZvY1djREdEVW9kMjh6UnliZXg1M0NvVnVSTC9oUStLc3BwYjl6SEZy?=
 =?utf-8?B?dzUvNUdnUkVPUlpPVDltUjc4M2U0czZRYnlkUlBTWC9oanpNMThobDgyYjJm?=
 =?utf-8?B?SEEwdllTWUw5VmpDNTVDRXY4eWZ5V25iTmswMDBLSURBYTFzdUlDcElsclRq?=
 =?utf-8?B?dWdNTjdqdi9POU0zeXhPSmlZcjFlUTZBdVdQOWFzUFE4T3czcTNUMi9LWGp3?=
 =?utf-8?B?TWtSZCtjc1FjUjZWWnU3dFVCRzlQU2pVR2ZrWURLalZyMjJhckY5UVZ3QUhC?=
 =?utf-8?B?Qll3N0tSdGo3TUNWZmUyWEl5YnlCNHd3SC9oZzhVbDNzb05rdCs2WFZkVWQw?=
 =?utf-8?B?azk0WjlSTG9mam1rT3BlbUdaT0R5ZHFCU0UxbXZsODRObFU4MU4vejRmYVFC?=
 =?utf-8?B?QXRvZ2pXNHBZcXh4eUdhVkFtYTZwSGtRVDNVRmU4SmovdE5acVdOMWtHYy84?=
 =?utf-8?B?cnE3Qjh5TURjYnpMaXVDUG96NGE1L0Vzdk9SQ2d2dkRVRWJPdlVyRmxXWDZE?=
 =?utf-8?B?RUQ2aHdUellLTnhiQVczUnRIVEkrMnduZ0NMKzJjdnoxWWpyMTdGNlQrT3ll?=
 =?utf-8?B?eDAzRlJkWGNTSEloOVp3Vk5wY0VYUE5sd24wNFRpRUtxc1pVUmZHTUhGUEdI?=
 =?utf-8?B?eGIwVTNCMmxNQjVvdlFBZnJFS2ZaRWJjUGRSY1ZEb2xIbHpFQmJyYWxnTDdl?=
 =?utf-8?B?VXhZVkxkRTlWQkYyY1lmQm1wbUR2SEFyempsVzc2YXcwSnJaUG1CZjFGTE9O?=
 =?utf-8?B?a2wrSmZCbHJvdXFlZHBtWWxzVG9CcmYrUzJGeHU2akFvQ1RZY1cvSVAwV0I4?=
 =?utf-8?B?cEJUVlpYUmlWYkdra2tSKzh6RzZpR1ZMYmYwMXJITXQvdkQ5bHl2TFpXb2VH?=
 =?utf-8?B?VTNFWGs5NWl3WjhnZ1JJZzZIek42U1NDWDcyUUpldmNMWXl0TndFa3ZHUE9x?=
 =?utf-8?B?QUt3SGEwQlQzb3lCeDlQMzJrOWVjUnJIbGVNZSsxdWtYS0VnTytnRVRNVVNF?=
 =?utf-8?Q?ylhqZD8tXcnFF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cmo5OFZVMEFYUmFYQ1EySEcvdkljOG1hdjRIT1pBWlBFQWxOL1huakRWMFRj?=
 =?utf-8?B?UFNIQWMrMDdsb3ozNVB6QnpxR0liRm0vWklWcWpOK0RpNVozdEdjYUpCWXdt?=
 =?utf-8?B?QzJKTjlQYVJmcElhNnZ5QmhtSDJ4WS9SNnM2blN0NjdQSVJQMHRZYWxQMDFZ?=
 =?utf-8?B?RzY1UmxIc1Ixa2JUb2wrSEg2dmpFTnBVRnNHSUd5cUp5UEJPOGhkTjVOc1Vz?=
 =?utf-8?B?SmlMT1ZpS0hHRDJGcFpQWWU2MXZUUjVzSUNwM2JUb05YSHdHVmpxY3J1ckpG?=
 =?utf-8?B?cE5jQ0J4d2d2RDFSWjBITkFKTjlObWt5ZHAzSHFTbmFtQjF0RTdQbm1rRXJt?=
 =?utf-8?B?SDFUTTBnS2VTM0tESUZzU1VPLzQzRy9SNzg2c1dTU3hmQUJ2TkFFWGYzWWhC?=
 =?utf-8?B?SjBGbGFmbzJBZ24wbjZLbzF5SDhFQ2F1ZGhGMFVEbEFOTC9LYXl1a2FNMFY3?=
 =?utf-8?B?Rnd1SUI1REFoT3Bjc0xhd2FBWlg1YU1laU5sZjFpRUszMjVldGZZWXU1enIr?=
 =?utf-8?B?RUdXOEN1YlJtT0R4QWdGTlFtZ29HWUlZNVV6ejVVVmpEdFN3MHNkeTVDNXhF?=
 =?utf-8?B?TUJJa3R5T3VyOUpwQi80d2lPdFp1SThqVWR6eFpKcmVqeXQwa2R5Y0hxaG9W?=
 =?utf-8?B?SWxYKzdUYmxNT053cjlrV3pTZ21ITjJGRFo5N3RZL3p5bWJlTTM4U0VGWHky?=
 =?utf-8?B?bnJFeHU5NHZDbXNMdWtSRTRDODZhaGpvOHNQZU45MHU4a2s0WG1scTRya2My?=
 =?utf-8?B?ZmFKYWtFQzB5bkZ0WFF5WDBSSXRZWlVXRmJMWnFicGErYitFKzhYN3lnaS9M?=
 =?utf-8?B?bVl4NFc5VVJPd0dDNm1DTGVMU2s3cS9ISHdrZEZQVk05M0tSSTcySmNVZDZk?=
 =?utf-8?B?eVFGNXJsOW5DY214b1hMSTF1clhiN2ZiMk9JVkFHUUEzV0JoSmtuZjBWK2RI?=
 =?utf-8?B?bHRTTU1FeUF0b3FKU3lHOHk4UUhhUnZQUFdyTjRvblBpZmlOaTlELzZzMjNo?=
 =?utf-8?B?YWxKUHdENVVFSVQwem1QbFB3Q1oza2R4Um51RjB0YUZ6VWZjc2tQUng3SFlY?=
 =?utf-8?B?akZCWG53YXY5aWNRd0lXVDdKaTg5a1k3bjBVbHpMOUFIQkEvQkRob1c2YlhI?=
 =?utf-8?B?VU11QlhualRndmFIR3MwV3FuL2lUdHAvL2YxbXdrbnRiRnE2a0JadmN2SkhX?=
 =?utf-8?B?QXdsU0IwWlZ0SVRBcTZVNlpva21DajI3N1RiNXd5WExsLzI4UjFYL0F3Mkt1?=
 =?utf-8?B?MHYrOU1wdVArSWxaamQzaWRseHNVVlZOY3ZISTZ0ZlMrNWFNdVUxWnpaNmsr?=
 =?utf-8?B?U29jTVViUjBQSDRFSHhxeVhQMitIMEpScWp3RHVFWUdsa3NoM2U4bGUyUUd2?=
 =?utf-8?B?MVI2eXdKUENjZVkrekUrYjMzOFBGaEdjd2ZHNm1TaGNUNndZV1dob0RpMmJl?=
 =?utf-8?B?UEtiN0ZvWnNNMHBpSFdmcmllNVFJdUt3eXlWbFgyUmI4dWdRRjgyQnJPMlU2?=
 =?utf-8?B?RFp1WDNLWUpTYVpScEJHUmEwbC9FeEhpcFRqbUNTZXR5Nmh4SEhqQVVSUVp1?=
 =?utf-8?B?M0xWdGJ6RVVHZEE5WjA0bmZwWWZrQ0dDbWN2K01zbXphZ1YybGFSSUZMWUlO?=
 =?utf-8?B?eVUrK1lla2w4Y0JvNjdrLy9JdFEvVW5WOFhrTXZzUlNGbmF5VFpvSUM5TGZB?=
 =?utf-8?B?VXppV3RGaFB6N2pvS0RiNk5vSmpQaVNCUzZ5aE1pYm4xcVBKelpsZ0RmKzFN?=
 =?utf-8?B?L1YzUU1jUnBpM3BxdDJZREN6U0s0bGJRZnVkcVF3eWVWcHVudEUrc1VnZWIr?=
 =?utf-8?B?b2tFNklFQjdZdWRkRER1emdKcWVqS1pYSXhNWnNSbkxKTHRkUmM4UW5hR2lS?=
 =?utf-8?B?Zit0aHgvV3lTeXZjbUtQUit4enVxRnpKOE94Nzhyc0xtTHlHYkM5WDV5ajlI?=
 =?utf-8?B?NmxJb1hvZDVHcmRyd2o0OHkyUStFV2NrWlQ1VklScDZORnYxclVyV0l3cnZw?=
 =?utf-8?B?UEVBM2RSdUJrNTlZRlVDQ280N3N5VHo3Q0NIWE43UG1EQzdqRTh4ZGFmK05x?=
 =?utf-8?B?bCswenJ5TGhFNkYyczRlV0o3YzVycWgwNm1GNUUrVmF6M0RIcFlhMzhxN2tT?=
 =?utf-8?B?eHVFTktQbUJyd3hUTXhIQUlMVU5QbnVXdzdqR2dxWi9EZWV2U0gyNS92dUVO?=
 =?utf-8?B?SlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e3295316-2f25-436b-e3ba-08dd29d2e7f5
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Dec 2024 19:39:57.0907 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1rXLeUYIO1vdipwk1FNraTPovHlQfWoG2iUl7GYJ/r3s4G00UBK8yOP1Tv+94hN/AILN9ZSeVyV96uRBJxpXlg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6408
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

Quoting Jani Nikula (2024-12-31 13:27:39-03:00)
>Going forward, struct intel_display is the main display device
>structure. Convert pmdemand to it.
>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

with git show -W --word-diff and trust in the compiler.

>---
> .../drm/i915/display/intel_display_driver.c   |   4 +-
> .../drm/i915/display/intel_display_power.c    |   4 +-
> .../drm/i915/display/intel_modeset_setup.c    |  17 +-
> drivers/gpu/drm/i915/display/intel_pmdemand.c | 160 +++++++++---------
> drivers/gpu/drm/i915/display/intel_pmdemand.h |  14 +-
> 5 files changed, 101 insertions(+), 98 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers=
/gpu/drm/i915/display/intel_display_driver.c
>index 497b4a1f045f..c4cfb0406fa2 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>@@ -233,7 +233,7 @@ int intel_display_driver_probe_noirq(struct intel_disp=
lay *display)
>         if (ret < 0)
>                 goto cleanup_vga;
>=20
>-        intel_pmdemand_init_early(i915);
>+        intel_pmdemand_init_early(display);
>=20
>         intel_power_domains_init_hw(display, false);
>=20
>@@ -265,7 +265,7 @@ int intel_display_driver_probe_noirq(struct intel_disp=
lay *display)
>         if (ret)
>                 goto cleanup_vga_client_pw_domain_dmc;
>=20
>-        ret =3D intel_pmdemand_init(i915);
>+        ret =3D intel_pmdemand_init(display);
>         if (ret)
>                 goto cleanup_vga_client_pw_domain_dmc;
>=20
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/=
gpu/drm/i915/display/intel_display_power.c
>index 34465d56def0..d3b8453a1705 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>@@ -1103,7 +1103,7 @@ static void gen9_dbuf_enable(struct intel_display *d=
isplay)
>         slices_mask =3D BIT(DBUF_S1) | display->dbuf.enabled_slices;
>=20
>         if (DISPLAY_VER(display) >=3D 14)
>-                intel_pmdemand_program_dbuf(dev_priv, slices_mask);
>+                intel_pmdemand_program_dbuf(display, slices_mask);
>=20
>         /*
>          * Just power up at least 1 slice, we will
>@@ -1119,7 +1119,7 @@ static void gen9_dbuf_disable(struct intel_display *=
display)
>         gen9_dbuf_slices_update(dev_priv, 0);
>=20
>         if (DISPLAY_VER(display) >=3D 14)
>-                intel_pmdemand_program_dbuf(dev_priv, 0);
>+                intel_pmdemand_program_dbuf(display, 0);
> }
>=20
> static void gen12_dbuf_slices_config(struct intel_display *display)
>diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/=
gpu/drm/i915/display/intel_modeset_setup.c
>index 9db30db428f7..9a2bea19f17b 100644
>--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>@@ -116,6 +116,7 @@ static void set_encoder_for_connector(struct intel_con=
nector *connector,
>=20
> static void reset_encoder_connector_state(struct intel_encoder *encoder)
> {
>+        struct intel_display *display =3D to_intel_display(encoder);
>         struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>         struct intel_pmdemand_state *pmdemand_state =3D
>                 to_intel_pmdemand_state(i915->display.pmdemand.obj.state)=
;
>@@ -128,7 +129,7 @@ static void reset_encoder_connector_state(struct intel=
_encoder *encoder)
>                         continue;
>=20
>                 /* Clear the corresponding bit in pmdemand active phys ma=
sk */
>-                intel_pmdemand_update_phys_mask(i915, encoder,
>+                intel_pmdemand_update_phys_mask(display, encoder,
>                                                 pmdemand_state, false);
>=20
>                 set_encoder_for_connector(connector, NULL);
>@@ -152,6 +153,7 @@ static void reset_crtc_encoder_state(struct intel_crtc=
 *crtc)
>=20
> static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
> {
>+        struct intel_display *display =3D to_intel_display(crtc);
>         struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>         struct intel_bw_state *bw_state =3D
>                 to_intel_bw_state(i915->display.bw.obj.state);
>@@ -185,7 +187,7 @@ static void intel_crtc_disable_noatomic_complete(struc=
t intel_crtc *crtc)
>         bw_state->data_rate[pipe] =3D 0;
>         bw_state->num_active_planes[pipe] =3D 0;
>=20
>-        intel_pmdemand_update_port_clock(i915, pmdemand_state, pipe, 0);
>+        intel_pmdemand_update_port_clock(display, pmdemand_state, pipe, 0=
);
> }
>=20
> /*
>@@ -582,6 +584,7 @@ static bool has_bogus_dpll_config(const struct intel_c=
rtc_state *crtc_state)
>=20
> static void intel_sanitize_encoder(struct intel_encoder *encoder)
> {
>+        struct intel_display *display =3D to_intel_display(encoder);
>         struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>         struct intel_connector *connector;
>         struct intel_crtc *crtc =3D to_intel_crtc(encoder->base.crtc);
>@@ -613,7 +616,7 @@ static void intel_sanitize_encoder(struct intel_encode=
r *encoder)
>                             encoder->base.name);
>=20
>                 /* Clear the corresponding bit in pmdemand active phys ma=
sk */
>-                intel_pmdemand_update_phys_mask(i915, encoder,
>+                intel_pmdemand_update_phys_mask(display, encoder,
>                                                 pmdemand_state, false);
>=20
>                 /*
>@@ -770,11 +773,11 @@ static void intel_modeset_readout_hw_state(struct dr=
m_i915_private *i915)
>                                 }
>                         }
>=20
>-                        intel_pmdemand_update_phys_mask(i915, encoder,
>+                        intel_pmdemand_update_phys_mask(display, encoder,
>                                                         pmdemand_state,
>                                                         true);
>                 } else {
>-                        intel_pmdemand_update_phys_mask(i915, encoder,
>+                        intel_pmdemand_update_phys_mask(display, encoder,
>                                                         pmdemand_state,
>                                                         false);
>=20
>@@ -899,13 +902,13 @@ static void intel_modeset_readout_hw_state(struct dr=
m_i915_private *i915)
>                 cdclk_state->min_voltage_level[crtc->pipe] =3D
>                         crtc_state->min_voltage_level;
>=20
>-                intel_pmdemand_update_port_clock(i915, pmdemand_state, pi=
pe,
>+                intel_pmdemand_update_port_clock(display, pmdemand_state,=
 pipe,
>                                                  crtc_state->port_clock);
>=20
>                 intel_bw_crtc_update(bw_state, crtc_state);
>         }
>=20
>-        intel_pmdemand_init_pmdemand_params(i915, pmdemand_state);
>+        intel_pmdemand_init_pmdemand_params(display, pmdemand_state);
> }
>=20
> static void
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.c
>index 500faf639290..9373cf2885ab 100644
>--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>@@ -74,10 +74,10 @@ static const struct intel_global_state_funcs intel_pmd=
emand_funcs =3D {
> static struct intel_pmdemand_state *
> intel_atomic_get_pmdemand_state(struct intel_atomic_state *state)
> {
>-        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_display *display =3D to_intel_display(state);
>         struct intel_global_state *pmdemand_state =3D
>                 intel_atomic_get_global_obj_state(state,
>-                                                  &i915->display.pmdemand=
.obj);
>+                                                  &display->pmdemand.obj)=
;
>=20
>         if (IS_ERR(pmdemand_state))
>                 return ERR_CAST(pmdemand_state);
>@@ -88,10 +88,10 @@ intel_atomic_get_pmdemand_state(struct intel_atomic_st=
ate *state)
> static struct intel_pmdemand_state *
> intel_atomic_get_old_pmdemand_state(struct intel_atomic_state *state)
> {
>-        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_display *display =3D to_intel_display(state);
>         struct intel_global_state *pmdemand_state =3D
>                 intel_atomic_get_old_global_obj_state(state,
>-                                                      &i915->display.pmde=
mand.obj);
>+                                                      &display->pmdemand.=
obj);
>=20
>         if (!pmdemand_state)
>                 return NULL;
>@@ -102,10 +102,10 @@ intel_atomic_get_old_pmdemand_state(struct intel_ato=
mic_state *state)
> static struct intel_pmdemand_state *
> intel_atomic_get_new_pmdemand_state(struct intel_atomic_state *state)
> {
>-        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_display *display =3D to_intel_display(state);
>         struct intel_global_state *pmdemand_state =3D
>                 intel_atomic_get_new_global_obj_state(state,
>-                                                      &i915->display.pmde=
mand.obj);
>+                                                      &display->pmdemand.=
obj);
>=20
>         if (!pmdemand_state)
>                 return NULL;
>@@ -113,40 +113,41 @@ intel_atomic_get_new_pmdemand_state(struct intel_ato=
mic_state *state)
>         return to_intel_pmdemand_state(pmdemand_state);
> }
>=20
>-int intel_pmdemand_init(struct drm_i915_private *i915)
>+int intel_pmdemand_init(struct intel_display *display)
> {
>+        struct drm_i915_private *i915 =3D to_i915(display->drm);
>         struct intel_pmdemand_state *pmdemand_state;
>=20
>         pmdemand_state =3D kzalloc(sizeof(*pmdemand_state), GFP_KERNEL);
>         if (!pmdemand_state)
>                 return -ENOMEM;
>=20
>-        intel_atomic_global_obj_init(i915, &i915->display.pmdemand.obj,
>+        intel_atomic_global_obj_init(i915, &display->pmdemand.obj,
>                                      &pmdemand_state->base,
>                                      &intel_pmdemand_funcs);
>=20
>-        if (IS_DISPLAY_VERx100_STEP(i915, 1400, STEP_A0, STEP_C0))
>+        if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_C0))
>                 /* Wa_14016740474 */
>-                intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEO=
UT_DISABLE);
>+                intel_de_rmw(display, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TI=
MEOUT_DISABLE);
>=20
>         return 0;
> }
>=20
>-void intel_pmdemand_init_early(struct drm_i915_private *i915)
>+void intel_pmdemand_init_early(struct intel_display *display)
> {
>-        mutex_init(&i915->display.pmdemand.lock);
>-        init_waitqueue_head(&i915->display.pmdemand.waitqueue);
>+        mutex_init(&display->pmdemand.lock);
>+        init_waitqueue_head(&display->pmdemand.waitqueue);
> }
>=20
> void
>-intel_pmdemand_update_phys_mask(struct drm_i915_private *i915,
>+intel_pmdemand_update_phys_mask(struct intel_display *display,
>                                 struct intel_encoder *encoder,
>                                 struct intel_pmdemand_state *pmdemand_sta=
te,
>                                 bool set_bit)
> {
>         enum phy phy;
>=20
>-        if (DISPLAY_VER(i915) < 14)
>+        if (DISPLAY_VER(display) < 14)
>                 return;
>=20
>         if (!encoder)
>@@ -164,18 +165,18 @@ intel_pmdemand_update_phys_mask(struct drm_i915_priv=
ate *i915,
> }
>=20
> void
>-intel_pmdemand_update_port_clock(struct drm_i915_private *i915,
>+intel_pmdemand_update_port_clock(struct intel_display *display,
>                                  struct intel_pmdemand_state *pmdemand_st=
ate,
>                                  enum pipe pipe, int port_clock)
> {
>-        if (DISPLAY_VER(i915) < 14)
>+        if (DISPLAY_VER(display) < 14)
>                 return;
>=20
>         pmdemand_state->ddi_clocks[pipe] =3D port_clock;
> }
>=20
> static void
>-intel_pmdemand_update_max_ddiclk(struct drm_i915_private *i915,
>+intel_pmdemand_update_max_ddiclk(struct intel_display *display,
>                                  struct intel_atomic_state *state,
>                                  struct intel_pmdemand_state *pmdemand_st=
ate)
> {
>@@ -185,7 +186,7 @@ intel_pmdemand_update_max_ddiclk(struct drm_i915_priva=
te *i915,
>         int i;
>=20
>         for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
>-                intel_pmdemand_update_port_clock(i915, pmdemand_state,
>+                intel_pmdemand_update_port_clock(display, pmdemand_state,
>                                                  crtc->pipe,
>                                                  new_crtc_state->port_clo=
ck);
>=20
>@@ -196,7 +197,7 @@ intel_pmdemand_update_max_ddiclk(struct drm_i915_priva=
te *i915,
> }
>=20
> static void
>-intel_pmdemand_update_connector_phys(struct drm_i915_private *i915,
>+intel_pmdemand_update_connector_phys(struct intel_display *display,
>                                      struct intel_atomic_state *state,
>                                      struct drm_connector_state *conn_sta=
te,
>                                      bool set_bit,
>@@ -217,12 +218,12 @@ intel_pmdemand_update_connector_phys(struct drm_i915=
_private *i915,
>         if (!crtc_state->hw.active)
>                 return;
>=20
>-        intel_pmdemand_update_phys_mask(i915, encoder, pmdemand_state,
>+        intel_pmdemand_update_phys_mask(display, encoder, pmdemand_state,
>                                         set_bit);
> }
>=20
> static void
>-intel_pmdemand_update_active_non_tc_phys(struct drm_i915_private *i915,
>+intel_pmdemand_update_active_non_tc_phys(struct intel_display *display,
>                                          struct intel_atomic_state *state=
,
>                                          struct intel_pmdemand_state *pmd=
emand_state)
> {
>@@ -237,12 +238,12 @@ intel_pmdemand_update_active_non_tc_phys(struct drm_=
i915_private *i915,
>                         continue;
>=20
>                 /* First clear the active phys in the old connector state=
 */
>-                intel_pmdemand_update_connector_phys(i915, state,
>+                intel_pmdemand_update_connector_phys(display, state,
>                                                      old_conn_state, fals=
e,
>                                                      pmdemand_state);
>=20
>                 /* Then set the active phys in new connector state */
>-                intel_pmdemand_update_connector_phys(i915, state,
>+                intel_pmdemand_update_connector_phys(display, state,
>                                                      new_conn_state, true=
,
>                                                      pmdemand_state);
>         }
>@@ -253,7 +254,7 @@ intel_pmdemand_update_active_non_tc_phys(struct drm_i9=
15_private *i915,
> }
>=20
> static bool
>-intel_pmdemand_encoder_has_tc_phy(struct drm_i915_private *i915,
>+intel_pmdemand_encoder_has_tc_phy(struct intel_display *display,
>                                   struct intel_encoder *encoder)
> {
>         return encoder && intel_encoder_is_tc(encoder);
>@@ -262,7 +263,7 @@ intel_pmdemand_encoder_has_tc_phy(struct drm_i915_priv=
ate *i915,
> static bool
> intel_pmdemand_connector_needs_update(struct intel_atomic_state *state)
> {
>-        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_display *display =3D to_intel_display(state);
>         struct drm_connector_state *old_conn_state;
>         struct drm_connector_state *new_conn_state;
>         struct drm_connector *connector;
>@@ -279,8 +280,8 @@ intel_pmdemand_connector_needs_update(struct intel_ato=
mic_state *state)
>                         continue;
>=20
>                 if (old_encoder =3D=3D new_encoder ||
>-                    (intel_pmdemand_encoder_has_tc_phy(i915, old_encoder)=
 &&
>-                     intel_pmdemand_encoder_has_tc_phy(i915, new_encoder)=
))
>+                    (intel_pmdemand_encoder_has_tc_phy(display, old_encod=
er) &&
>+                     intel_pmdemand_encoder_has_tc_phy(display, new_encod=
er)))
>                         continue;
>=20
>                 return true;
>@@ -337,13 +338,13 @@ static bool intel_pmdemand_needs_update(struct intel=
_atomic_state *state)
>=20
> int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
> {
>-        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_display *display =3D to_intel_display(state);
>         const struct intel_bw_state *new_bw_state;
>         const struct intel_cdclk_state *new_cdclk_state;
>         const struct intel_dbuf_state *new_dbuf_state;
>         struct intel_pmdemand_state *new_pmdemand_state;
>=20
>-        if (DISPLAY_VER(i915) < 14)
>+        if (DISPLAY_VER(display) < 14)
>                 return 0;
>=20
>         if (!intel_pmdemand_needs_update(state))
>@@ -365,14 +366,14 @@ int intel_pmdemand_atomic_check(struct intel_atomic_=
state *state)
>         if (IS_ERR(new_dbuf_state))
>                 return PTR_ERR(new_dbuf_state);
>=20
>-        if (DISPLAY_VER(i915) < 30) {
>+        if (DISPLAY_VER(display) < 30) {
>                 new_pmdemand_state->params.active_dbufs =3D
>                         min_t(u8, hweight8(new_dbuf_state->enabled_slices=
), 3);
>                 new_pmdemand_state->params.active_pipes =3D
>                         min_t(u8, hweight8(new_dbuf_state->active_pipes),=
 3);
>         } else {
>                 new_pmdemand_state->params.active_pipes =3D
>-                        min_t(u8, hweight8(new_dbuf_state->active_pipes),=
 INTEL_NUM_PIPES(i915));
>+                        min_t(u8, hweight8(new_dbuf_state->active_pipes),=
 INTEL_NUM_PIPES(display));
>         }
>=20
>         new_cdclk_state =3D intel_atomic_get_cdclk_state(state);
>@@ -384,9 +385,9 @@ int intel_pmdemand_atomic_check(struct intel_atomic_st=
ate *state)
>         new_pmdemand_state->params.cdclk_freq_mhz =3D
>                 DIV_ROUND_UP(new_cdclk_state->actual.cdclk, 1000);
>=20
>-        intel_pmdemand_update_max_ddiclk(i915, state, new_pmdemand_state)=
;
>+        intel_pmdemand_update_max_ddiclk(display, state, new_pmdemand_sta=
te);
>=20
>-        intel_pmdemand_update_active_non_tc_phys(i915, state, new_pmdeman=
d_state);
>+        intel_pmdemand_update_active_non_tc_phys(display, state, new_pmde=
mand_state);
>=20
>         /*
>          * Active_PLLs starts with 1 because of CDCLK PLL.
>@@ -407,36 +408,36 @@ int intel_pmdemand_atomic_check(struct intel_atomic_=
state *state)
>                 return intel_atomic_lock_global_state(&new_pmdemand_state=
->base);
> }
>=20
>-static bool intel_pmdemand_check_prev_transaction(struct drm_i915_private=
 *i915)
>+static bool intel_pmdemand_check_prev_transaction(struct intel_display *d=
isplay)
> {
>-        return !(intel_de_wait_for_clear(i915,
>+        return !(intel_de_wait_for_clear(display,
>                                          XELPDP_INITIATE_PMDEMAND_REQUEST=
(1),
>                                          XELPDP_PMDEMAND_REQ_ENABLE, 10) =
||
>-                 intel_de_wait_for_clear(i915,
>+                 intel_de_wait_for_clear(display,
>                                          GEN12_DCPR_STATUS_1,
>                                          XELPDP_PMDEMAND_INFLIGHT_STATUS,=
 10));
> }
>=20
> void
>-intel_pmdemand_init_pmdemand_params(struct drm_i915_private *i915,
>+intel_pmdemand_init_pmdemand_params(struct intel_display *display,
>                                     struct intel_pmdemand_state *pmdemand=
_state)
> {
>         u32 reg1, reg2;
>=20
>-        if (DISPLAY_VER(i915) < 14)
>+        if (DISPLAY_VER(display) < 14)
>                 return;
>=20
>-        mutex_lock(&i915->display.pmdemand.lock);
>-        if (drm_WARN_ON(&i915->drm,
>-                        !intel_pmdemand_check_prev_transaction(i915))) {
>+        mutex_lock(&display->pmdemand.lock);
>+        if (drm_WARN_ON(display->drm,
>+                        !intel_pmdemand_check_prev_transaction(display)))=
 {
>                 memset(&pmdemand_state->params, 0,
>                        sizeof(pmdemand_state->params));
>                 goto unlock;
>         }
>=20
>-        reg1 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0))=
;
>+        reg1 =3D intel_de_read(display, XELPDP_INITIATE_PMDEMAND_REQUEST(=
0));
>=20
>-        reg2 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1))=
;
>+        reg2 =3D intel_de_read(display, XELPDP_INITIATE_PMDEMAND_REQUEST(=
1));
>=20
>         pmdemand_state->params.qclk_gv_bw =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, reg1);
>@@ -452,7 +453,7 @@ intel_pmdemand_init_pmdemand_params(struct drm_i915_pr=
ivate *i915,
>         pmdemand_state->params.ddiclk_max =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, reg2);
>=20
>-        if (DISPLAY_VER(i915) >=3D 30) {
>+        if (DISPLAY_VER(display) >=3D 30) {
>                 pmdemand_state->params.active_pipes =3D
>                         REG_FIELD_GET(XE3_PMDEMAND_PIPES_MASK, reg1);
>         } else {
>@@ -466,49 +467,49 @@ intel_pmdemand_init_pmdemand_params(struct drm_i915_=
private *i915,
>         }
>=20
> unlock:
>-        mutex_unlock(&i915->display.pmdemand.lock);
>+        mutex_unlock(&display->pmdemand.lock);
> }
>=20
>-static bool intel_pmdemand_req_complete(struct drm_i915_private *i915)
>+static bool intel_pmdemand_req_complete(struct intel_display *display)
> {
>-        return !(intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1))=
 &
>+        return !(intel_de_read(display, XELPDP_INITIATE_PMDEMAND_REQUEST(=
1)) &
>                  XELPDP_PMDEMAND_REQ_ENABLE);
> }
>=20
>-static void intel_pmdemand_wait(struct drm_i915_private *i915)
>+static void intel_pmdemand_wait(struct intel_display *display)
> {
>-        if (!wait_event_timeout(i915->display.pmdemand.waitqueue,
>-                                intel_pmdemand_req_complete(i915),
>+        if (!wait_event_timeout(display->pmdemand.waitqueue,
>+                                intel_pmdemand_req_complete(display),
>                                 msecs_to_jiffies_timeout(10)))
>-                drm_err(&i915->drm,
>+                drm_err(display->drm,
>                         "timed out waiting for Punit PM Demand Response\n=
");
> }
>=20
> /* Required to be programmed during Display Init Sequences. */
>-void intel_pmdemand_program_dbuf(struct drm_i915_private *i915,
>+void intel_pmdemand_program_dbuf(struct intel_display *display,
>                                  u8 dbuf_slices)
> {
>         u32 dbufs =3D min_t(u32, hweight8(dbuf_slices), 3);
>=20
>         /* PM Demand only tracks active dbufs on pre-Xe3 platforms */
>-        if (DISPLAY_VER(i915) >=3D 30)
>+        if (DISPLAY_VER(display) >=3D 30)
>                 return;
>=20
>-        mutex_lock(&i915->display.pmdemand.lock);
>-        if (drm_WARN_ON(&i915->drm,
>-                        !intel_pmdemand_check_prev_transaction(i915)))
>+        mutex_lock(&display->pmdemand.lock);
>+        if (drm_WARN_ON(display->drm,
>+                        !intel_pmdemand_check_prev_transaction(display)))
>                 goto unlock;
>=20
>-        intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
>+        intel_de_rmw(display, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
>                      XELPDP_PMDEMAND_DBUFS_MASK,
>                      REG_FIELD_PREP(XELPDP_PMDEMAND_DBUFS_MASK, dbufs));
>-        intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
>+        intel_de_rmw(display, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
>                      XELPDP_PMDEMAND_REQ_ENABLE);
>=20
>-        intel_pmdemand_wait(i915);
>+        intel_pmdemand_wait(display);
>=20
> unlock:
>-        mutex_unlock(&i915->display.pmdemand.lock);
>+        mutex_unlock(&display->pmdemand.lock);
> }
>=20
> static void
>@@ -568,38 +569,37 @@ intel_pmdemand_update_params(struct intel_display *d=
isplay,
> }
>=20
> static void
>-intel_pmdemand_program_params(struct drm_i915_private *i915,
>+intel_pmdemand_program_params(struct intel_display *display,
>                               const struct intel_pmdemand_state *new,
>                               const struct intel_pmdemand_state *old,
>                               bool serialized)
> {
>-        struct intel_display *display =3D &i915->display;
>         bool changed =3D false;
>         u32 reg1, mod_reg1;
>         u32 reg2, mod_reg2;
>=20
>-        mutex_lock(&i915->display.pmdemand.lock);
>-        if (drm_WARN_ON(&i915->drm,
>-                        !intel_pmdemand_check_prev_transaction(i915)))
>+        mutex_lock(&display->pmdemand.lock);
>+        if (drm_WARN_ON(display->drm,
>+                        !intel_pmdemand_check_prev_transaction(display)))
>                 goto unlock;
>=20
>-        reg1 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0))=
;
>+        reg1 =3D intel_de_read(display, XELPDP_INITIATE_PMDEMAND_REQUEST(=
0));
>         mod_reg1 =3D reg1;
>=20
>-        reg2 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1))=
;
>+        reg2 =3D intel_de_read(display, XELPDP_INITIATE_PMDEMAND_REQUEST(=
1));
>         mod_reg2 =3D reg2;
>=20
>         intel_pmdemand_update_params(display, new, old, &mod_reg1, &mod_r=
eg2,
>                                      serialized);
>=20
>         if (reg1 !=3D mod_reg1) {
>-                intel_de_write(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
>+                intel_de_write(display, XELPDP_INITIATE_PMDEMAND_REQUEST(=
0),
>                                mod_reg1);
>                 changed =3D true;
>         }
>=20
>         if (reg2 !=3D mod_reg2) {
>-                intel_de_write(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1),
>+                intel_de_write(display, XELPDP_INITIATE_PMDEMAND_REQUEST(=
1),
>                                mod_reg2);
>                 changed =3D true;
>         }
>@@ -608,17 +608,17 @@ intel_pmdemand_program_params(struct drm_i915_privat=
e *i915,
>         if (!changed)
>                 goto unlock;
>=20
>-        drm_dbg_kms(&i915->drm,
>+        drm_dbg_kms(display->drm,
>                     "initate pmdemand request values: (0x%x 0x%x)\n",
>                     mod_reg1, mod_reg2);
>=20
>-        intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
>+        intel_de_rmw(display, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
>                      XELPDP_PMDEMAND_REQ_ENABLE);
>=20
>-        intel_pmdemand_wait(i915);
>+        intel_pmdemand_wait(display);
>=20
> unlock:
>-        mutex_unlock(&i915->display.pmdemand.lock);
>+        mutex_unlock(&display->pmdemand.lock);
> }
>=20
> static bool
>@@ -630,13 +630,13 @@ intel_pmdemand_state_changed(const struct intel_pmde=
mand_state *new,
>=20
> void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state)
> {
>-        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_display *display =3D to_intel_display(state);
>         const struct intel_pmdemand_state *new_pmdemand_state =3D
>                 intel_atomic_get_new_pmdemand_state(state);
>         const struct intel_pmdemand_state *old_pmdemand_state =3D
>                 intel_atomic_get_old_pmdemand_state(state);
>=20
>-        if (DISPLAY_VER(i915) < 14)
>+        if (DISPLAY_VER(display) < 14)
>                 return;
>=20
>         if (!new_pmdemand_state ||
>@@ -646,20 +646,20 @@ void intel_pmdemand_pre_plane_update(struct intel_at=
omic_state *state)
>=20
>         WARN_ON(!new_pmdemand_state->base.changed);
>=20
>-        intel_pmdemand_program_params(i915, new_pmdemand_state,
>+        intel_pmdemand_program_params(display, new_pmdemand_state,
>                                       old_pmdemand_state,
>                                       intel_atomic_global_state_is_serial=
ized(state));
> }
>=20
> void intel_pmdemand_post_plane_update(struct intel_atomic_state *state)
> {
>-        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_display *display =3D to_intel_display(state);
>         const struct intel_pmdemand_state *new_pmdemand_state =3D
>                 intel_atomic_get_new_pmdemand_state(state);
>         const struct intel_pmdemand_state *old_pmdemand_state =3D
>                 intel_atomic_get_old_pmdemand_state(state);
>=20
>-        if (DISPLAY_VER(i915) < 14)
>+        if (DISPLAY_VER(display) < 14)
>                 return;
>=20
>         if (!new_pmdemand_state ||
>@@ -669,6 +669,6 @@ void intel_pmdemand_post_plane_update(struct intel_ato=
mic_state *state)
>=20
>         WARN_ON(!new_pmdemand_state->base.changed);
>=20
>-        intel_pmdemand_program_params(i915, new_pmdemand_state, NULL,
>+        intel_pmdemand_program_params(display, new_pmdemand_state, NULL,
>                                       intel_atomic_global_state_is_serial=
ized(state));
> }
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.h
>index 34f68912fe04..821ef2c4134a 100644
>--- a/drivers/gpu/drm/i915/display/intel_pmdemand.h
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
>@@ -9,9 +9,9 @@
> #include <linux/types.h>
>=20
> enum pipe;
>-struct drm_i915_private;
> struct intel_atomic_state;
> struct intel_crtc_state;
>+struct intel_display;
> struct intel_encoder;
> struct intel_global_state;
> struct intel_plane_state;
>@@ -19,18 +19,18 @@ struct intel_pmdemand_state;
>=20
> struct intel_pmdemand_state *to_intel_pmdemand_state(struct intel_global_=
state *obj_state);
>=20
>-void intel_pmdemand_init_early(struct drm_i915_private *i915);
>-int intel_pmdemand_init(struct drm_i915_private *i915);
>-void intel_pmdemand_init_pmdemand_params(struct drm_i915_private *i915,
>+void intel_pmdemand_init_early(struct intel_display *display);
>+int intel_pmdemand_init(struct intel_display *display);
>+void intel_pmdemand_init_pmdemand_params(struct intel_display *display,
>                                          struct intel_pmdemand_state *pmd=
emand_state);
>-void intel_pmdemand_update_port_clock(struct drm_i915_private *i915,
>+void intel_pmdemand_update_port_clock(struct intel_display *display,
>                                       struct intel_pmdemand_state *pmdema=
nd_state,
>                                       enum pipe pipe, int port_clock);
>-void intel_pmdemand_update_phys_mask(struct drm_i915_private *i915,
>+void intel_pmdemand_update_phys_mask(struct intel_display *display,
>                                      struct intel_encoder *encoder,
>                                      struct intel_pmdemand_state *pmdeman=
d_state,
>                                      bool clear_bit);
>-void intel_pmdemand_program_dbuf(struct drm_i915_private *i915,
>+void intel_pmdemand_program_dbuf(struct intel_display *display,
>                                  u8 dbuf_slices);
> void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state);
> void intel_pmdemand_post_plane_update(struct intel_atomic_state *state);
>--=20
>2.39.5
>
