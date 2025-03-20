Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD15A69F6C
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Mar 2025 06:39:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1183B10E03F;
	Thu, 20 Mar 2025 05:39:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tebv6E1e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F76C10E03F;
 Thu, 20 Mar 2025 05:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742449158; x=1773985158;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q2bgORw71T5LkAJBFEB77l4qs5MZFDU169+KL8ON+dQ=;
 b=Tebv6E1eiPgiOKnV2LaQ0BeKiL0iTI0pXQUtjuK+ZA3rhBDNk1FK0+E3
 MuWMVYXMYMnDG3YCZvLRoEr8KIQySQUG5LPDYNpD4/1NSiZDe/O8LOuCJ
 bHHafntd/3f4tadmoKaLvH5RIz4NG8Y8G8RjjsasBx3Cl0LsWJTiS5rpZ
 P6tocLvthu5+/NSX2WPT8GKUme1lLAQrshqZXUGikGZev2EFcFE4TXrvr
 BHgdAmv3+pwlFY6TC+xJCG6Pej9ttK7iJ/aSK+2BM+VKAwCeUbdIfRBwV
 ZaSTbAx8guTKuTCFOMVESOervzk0T0NVmmBMXP3dlPMia11zgf7JIIeq+ w==;
X-CSE-ConnectionGUID: 63YbAV3GRKeLsgyCE1HhzA==
X-CSE-MsgGUID: p1XSZ9EXSF63tDvW6ihCDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="61057564"
X-IronPort-AV: E=Sophos;i="6.14,260,1736841600"; d="scan'208";a="61057564"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 22:39:17 -0700
X-CSE-ConnectionGUID: /3V+WI3AQjSvjDO+7r2W7w==
X-CSE-MsgGUID: x4TNLwQkQ2aO3vCDpI/FMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,260,1736841600"; d="scan'208";a="127657236"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Mar 2025 22:39:17 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 19 Mar 2025 22:39:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 19 Mar 2025 22:39:16 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Mar 2025 22:39:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CI+nKskM9SYX+hJR+W6KBI9zqbm63b1VRo0FIRYpeV8dypiWks1S544IL0Qw+TIrYFm7Lc6olYiE3zK2ktZs+HUUTZZamMURkxDNCAQ78Mt9WFExypfUvjbCV910th8c2m1ShNlSF7MmnBskbx20hev73MHj3+zD4IGNK7j+yNIFTIQg88tcKk3Ytg3CHOD5PuboRjIghEt4ZrUFc6HVnPfURyChL3Rc5fm2lvpJn0zIjFCw3dxBT2zTtM+sewku2uZ1tEH0o0pt8Cjimq32sBTMPHicuHGDoms1Fk1Oh1t6O9Vrjp+d/rACgfV0THI+mSpLy3Y9gL7bfTvz467TlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=51RgY9lgXmyFxH44l15XoyoJ8Pr9LmtE1zWEXoZz1ko=;
 b=uMjI1U9eX+klFv5/3m+XCqqvN5lSzy2CnNmE67s+2j5Urm8RpKgwsFnhvtkErBwCvkYVbrJaazj+KstHYHn2O14AZvnzzCpDJXxJxzfGnFdfx0zyq+C5uCKqqh+2q6DV6z+vLiXRKu9Fmd05d+0JeZlOusK18FKm4OoToVUSZG89FZrRCFUd5wEyPvBsVOQ8YR0cKd5C37dcr4k8IHz5mye7mPvkwTMBP2sFM7w/z3zXHSgtdwipHxLOXbB+qf2E903rz9NL401q1zL/lHS7tdswEUSP7GFG1nKriD+acKpUlVEB2wIjIJEpQWJZ9Eq+gP280GHXk3pbh2UXLyapgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH3PPF5D8CD6E8B.namprd11.prod.outlook.com (2603:10b6:518:1::d25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.36; Thu, 20 Mar
 2025 05:39:13 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8511.026; Thu, 20 Mar 2025
 05:39:13 +0000
Message-ID: <f29191ca-b3e8-4cad-b23f-3010c82c0e6f@intel.com>
Date: Thu, 20 Mar 2025 11:09:06 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/16] drm/i915/display: Use fixed_rr timings in modeset
 sequence
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
 <20250318073540.2773890-11-ankit.k.nautiyal@intel.com>
 <Z9rWb5WfuRd6FWoP@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z9rWb5WfuRd6FWoP@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXPR01CA0101.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH3PPF5D8CD6E8B:EE_
X-MS-Office365-Filtering-Correlation-Id: 5040cb0b-4304-4d4f-7db0-08dd67718be1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZCtZQ3VSYy9RVDJ4dEVQdWIwWjlUVUkwa1MzZTFyTXdvZGd4dWk2Q1VpOGY1?=
 =?utf-8?B?SXFQMDlxbjVXcUxiNW5WUEFMSHJWWXdUbFAyYlN2bEo3cEFKRnhDUzJ0MnJp?=
 =?utf-8?B?VGZoaUlMK3gvNU5obnROYjc0SHE2Z0wvTzBJWk1YQXNDK0x4V3J5WnFobG5v?=
 =?utf-8?B?RFF1bmFvQ2ZBYXZWRzg4TFVadkx4VDYyazRIQnptMW44YkpsQmtpdjFlS3BB?=
 =?utf-8?B?dTVyVkZSSzg2RFk1RnIvbHBMMnI5VThZYXZXWHB0SjN3VnkrQklPdm4veE9P?=
 =?utf-8?B?ZTRielV3UXFXaFpjSUJtMy81WHYxbzFUdU5Nc3l6a3hFT2tkR0VhMVRTcXhI?=
 =?utf-8?B?QWVFVHkwSTdJZy9nbThsK0tjeGo4anR1TjZlbGpoaVVVay9xWlBzSDZxY015?=
 =?utf-8?B?dVVuK09wTUhvdXBlZHB5bi9pUWNOR2lRTVFuajJwRFV6K2dCZG5OektQUlFC?=
 =?utf-8?B?Qi9LNVc1eHh1OWwvNHl3UXhUZUdnYmI1Qm5US284MGhnK05lODZhUnBMTm8z?=
 =?utf-8?B?cng1ZS9yOU9OL2hid0hyeWNta3J2UnFQNnlEQVdMemtvV29lRk41VTJJck0v?=
 =?utf-8?B?U3k1QmVacVZWU2Z1elJjVDBzeFZzWDg5NGNEL1Q3bDQzWDVsNXlkQkFtZ1VX?=
 =?utf-8?B?ZUJta21LaXVicHB0Qk5VbE5BdzBCQUxDZ1p1YzRiSG9udWpHNzZ2NjhjYXdr?=
 =?utf-8?B?MDVvdWQ5ckpnY2NCVy9obGN2NzNCeW05Q3JGZExWQWMwTTh5MmtlZUVzSFVS?=
 =?utf-8?B?c014dUZTcUcydzNFb3RRYW4vUHRibFVLUExqMGpNK1pneWJuZjdxYWhlREV4?=
 =?utf-8?B?dXFZVHV0NGdKZmlxc2FQckxxZ3lRd0hCL3VCeFVYYUtNQVBGQko3M1QrOXgx?=
 =?utf-8?B?d3c0dGFIQ2dPTGtWNXltYkVUempxT1pnb2RDbGxPTnYwQjRMRTV2ZHJCUllB?=
 =?utf-8?B?dEpSbENicktBdTBpOXpBaXR0Mm1uWTZpT1JoblVkbHViaWZnaGwyZTI2RHZy?=
 =?utf-8?B?R2kxSS9WdUd4KzhTVUR5VGw2NDdsZVdJUldXQXlQWEYvcUUwZzExbSszMldT?=
 =?utf-8?B?TGNXc01GV0FuQ2tyMXFaOURNWkRzVk9UbEtaTW16WTBmTEtrVmZ4dmg5NHNQ?=
 =?utf-8?B?Y2FzQ1BWM1dlOFBIUGQ0ckNjbDJCY0pwajFDNXhjQllDMCtkVFJzYVNSb3Iy?=
 =?utf-8?B?SUZqVnhtVFc5NlZzTUVnZ3VBVkJnUHh1cTBEKzlnYUxJbkIzY3YxMHI5THZC?=
 =?utf-8?B?Zjc4ZHFscVg0ZkJKYmVZeS9JL0N2c1g4MFZscmdKRS9nQlZqQkJENXM2QWQ3?=
 =?utf-8?B?aHpXa0JTN2h2eEd5L3JYZmQzQWhPWEUyMXBaWlMramJGenFlQ0hLaGdvaCta?=
 =?utf-8?B?UEFLMWZmbkQzRklJaUZWc3Y0U2Q3ZnMxSHpzM0NLRmZzNHdlY25MdEYvSFdm?=
 =?utf-8?B?bzNCeUhRVTliOVdpTUpIdVJjc3hrMFZITkhDVWQyWlhzNTlHekxUVmNrNURl?=
 =?utf-8?B?SVZkT1lZVW1mcEVYZy9ncVhpT2JlUVA4RDZKVHdPUjlFejJERW56M1FkOGJO?=
 =?utf-8?B?OGdlQW5uK2l5cGhVR0RWWEZsWVh6cjNDNExmQ2tlMGx0SlhHSi9QamU2dEFI?=
 =?utf-8?B?T3Q4SHphRllYZm1TbjJ3VWpJV0xyQXF4dDZjNXBrRVlpTTB3eWRTZ1hzRE5s?=
 =?utf-8?B?RXI5N05idWZoVkViZjEzYUlkNVI0VWVZc3VjZVNDOVV2em1PSmVyelpvWG5i?=
 =?utf-8?B?bVAvc1Vwd1RpZ2E5UVdLc3lqL0RDa2tzNSt6RVdzbm5kOVBKQU51N2hJbnA5?=
 =?utf-8?B?bDBsMHNRclVZajRwTFFOQWRhTDJTdFlqMHNUVmFuaEpnR1VtdGFobkQxVElp?=
 =?utf-8?Q?X3N/fd9lEVHup?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UkdQamdIbGRGNm9kRFhma1Q3RGM0RENQU0R0LzMyUnZkNzhSMHI2NEQvbkR0?=
 =?utf-8?B?a0lzalRDdlZPeTdxNjg1VjVxMVJEdmIwR1A5N2lwSHZJRk1kWEh6R1FjNnpV?=
 =?utf-8?B?NTUrWWVLWlNmU21NdTFHUVVyQmRERWMybUNhRUZ5WE4rYlRZUGhrcWIrdk96?=
 =?utf-8?B?WmFGWi9mdDRNWWpNb3VIWUVycWQ3NjZLK0VHVk94RDdJTS9jZlJkbk53aUhY?=
 =?utf-8?B?c213Y3pBR093NWhYanVNdFVJK3ZNZkhXbEwydjFnNTZtOHVkdTFHL1EwNmV6?=
 =?utf-8?B?YWU2UXV6K095NTRWVlMwYnVQQWJXelpwRmFxM0grWU1GdjlQR3lCR3R0eW1y?=
 =?utf-8?B?aEx3eXova2VmdXF2TlNKWkxWTjZUNlFxSFRtQnNBQVhmOU1LRndqRTR4aVQ0?=
 =?utf-8?B?ZmVqVFVQRTNIYWZIWkIxa2hoNjUyR2Y3VFlBMGlDemd5b3Q5SFlpM2F1aFVL?=
 =?utf-8?B?RDN2SkVEY1BHY3ZrZUJRNWplTUFzbWR1M2h3WGRoN0NXeGp6cUJ3R1hLNGxy?=
 =?utf-8?B?dEJhd0V0NmhGUUZHOW82cExSVUhEQmtQRkwrWSs5OGpRcFJuNWFYT3RNOUhY?=
 =?utf-8?B?T1lUcEptWVZkSVh5S0lteS9UTW1ic1JJSHVpL1FDcmJza2xld014ZG9iVW15?=
 =?utf-8?B?QUJDUG1pbnU4UDBicTlMMnRuQmx6a3FQY21RaDFpdWwrQkZpMVhxOEloSkNq?=
 =?utf-8?B?bUx4UGRMcUlKR0tGWEx0ZkRaaVNCMWpDc1pCWm5jZmYySkR3YU1OVUlwWjVq?=
 =?utf-8?B?ZGRUNlVQVDdMaXh3NDdFdHR0OGUrZ1pLMG5FZ2ZFNnFRV2ZMT3NKejJkZlQ5?=
 =?utf-8?B?MXZlTEF6aUprOFk5ZmduQ0lNU1oyQndkM2FzMDUzZVVFZ2l1MXlaaGVCOFo2?=
 =?utf-8?B?UnNLOVlyUW9PZTJwTkp2cWNHRTV5QkNvUy9xWWNVWnkrMDVYZEU3eG1laU96?=
 =?utf-8?B?VDdVTlUzSWFmN1doSmpmWlU3VlFoT0FVVlIxTmgrR3NiWi9mcDRPQXlHRG0x?=
 =?utf-8?B?RWpPV3dBYTNmUllpRmNacm90ZEZEQjFRNTZKUDBDSzA1UmgzeS9XWkN6NURj?=
 =?utf-8?B?bWtnY1V3U3lydTVpbzAwbk1vOGNHMEVqdFlHNk0zODdaanA2QUo5UGg1TjAv?=
 =?utf-8?B?T0g2a3lESnJJdDRRRjFSUUo2UWhEVEs1WTNWdHhvUTBURXQzQkcyV2pZN01P?=
 =?utf-8?B?eG01QThOTkVLenNpN3F3MVgrdFdrN2NHT0dvbmMvZmRjeUVOSlBnSEZmWkln?=
 =?utf-8?B?NVdSL3puRnB6YUhYUkJGejlxd0hJaXRqVDV1MHJ3ek04a2N0dUFFaWxoYmZz?=
 =?utf-8?B?aGZHUUJwWEd6aFczYWRjRjRQOUpkYVc3S2hqV0lhNDFPblozZzJad0JvWGs4?=
 =?utf-8?B?UDdjS2NlcDhsSDA5OVh4c291YUdPZjZtTVBCS2NZRkV6WDQ1YmQvcFFmM0V0?=
 =?utf-8?B?RlVYSWhrS2V3MVJUZk44NTgzNjFrSWh4TUVEWDZ2c29ORGZZQmZVK2ljcC9C?=
 =?utf-8?B?R1hRcm05SmJJRDcrVUFtTEhWN09QWkZDVFBGb2QwN2grU1VXa1llN2M3bWN5?=
 =?utf-8?B?Y0hHa0l4dGVLZ01WSk5sWnA3MVZQQ1owZWhpcG1IMXNqSkVVdUFyaFFyeVdZ?=
 =?utf-8?B?TFdhSGRXUUNIYy84VW9vUUZYZVNPUzBxaHlxSXdXNHN3MXRKcDNSZUVYR1Vh?=
 =?utf-8?B?U09mT2VXSnY5U1A2YmxaRlFPcVJ5N1hTOFV5Mm9YU1M2akJGWWppaTY1WHRN?=
 =?utf-8?B?c2xVeUFtSUpwMGtTS21NeXJwRS9LUnAwY3VaeitMTUtvckYxRERtSitSTkFo?=
 =?utf-8?B?SVp1bzBnaElzRXprdmxseXRYVjdUNWNsKzZvRnY5b3REU1daTGZyM3gvWVJl?=
 =?utf-8?B?cHdDSGU0SmtSNkwxUU9BelZBUjBTUjlZRFIwdXJMaWFKcGoyM29WbnpybkRa?=
 =?utf-8?B?RTlUV3A4Q1plR3NWR251WmZ1L3NlRzhDOW81UG1NTEk4QmZHcFdPd3hEenFG?=
 =?utf-8?B?M1BRT3FjenRTNXFnLzlTcXhxdmU3YnJLTjJiMmRXTm5rc2tBWHdHM2dLZ2lt?=
 =?utf-8?B?dFdGeDBaVkRBVlROL1dYSXZGeHY5cmhtaU9BM3J0UVFGeFUzdFlOaFBmZEhV?=
 =?utf-8?B?Y3Fydkp0QUtkNUszN0ZFalQra3FCV1VFbkh0ZytaajdxY3B2NkNSUVZiaWFX?=
 =?utf-8?B?V0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5040cb0b-4304-4d4f-7db0-08dd67718be1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2025 05:39:13.6494 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LzyQmCeWVWT4943drvlkIJG1DuvIeASM5UV7zBWqU6nVjLK713fn4kg9XC9HYrXxbZidWisFKbvWwB3vu4YRcq+thdZXmagDiYsmBqQg5d4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF5D8CD6E8B
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


On 3/19/2025 8:06 PM, Ville Syrjälä wrote:
> On Tue, Mar 18, 2025 at 01:05:34PM +0530, Ankit Nautiyal wrote:
>> During modeset enable sequence, program the fixed timings, and turn on the
>> VRR Timing Generator (VRR TG) for platforms that always use VRR TG.
>>
>> For this intel_vrr_set_transcoder now always programs fixed timings.
>> Later if vrr timings are required, vrr_enable() will switch
>> to the real VRR timings.
>>
>> For platforms that will always use VRR TG, the VRR_CTL Enable bit is set
>> and reset in the transcoder enable/disable path.
>>
>> v2: Update intel_vrr_set_transcoder_timings for fixed_rr.
>> v3: Update intel_set_transcoder_timings_lrr for fixed_rr. (Ville)
>> v4: Have separate functions to enable/disable VRR CTL
>> v5:
>> -For platforms that do not always have VRRTG on, do write bits other
>> than enable bit and also use write the TRANS_VRR_PUSH register. (Ville)
>> -Avoid writing trans_ctl_vrr if !vrr_possible().
>> v6:
>> -Disable VRR just before intel_ddi_disable_transcoder_func(). (Ville)
>> -Correct the sequence of configuring PUSH and VRR Enable/Disable. (Ville)
>> v7: Reset trans_vrr_ctl to 0 unconditionally in
>> intel_vrr_transcoder_disable(). (Ville)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_ddi.c    |  5 ++
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 ++
>>   drivers/gpu/drm/i915/display/intel_vrr.c    | 57 ++++++++++++++++-----
>>   drivers/gpu/drm/i915/display/intel_vrr.h    |  2 +
>>   4 files changed, 54 insertions(+), 14 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index f38c998935b9..44f4465c27e2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -78,6 +78,7 @@
>>   #include "intel_tc.h"
>>   #include "intel_vdsc.h"
>>   #include "intel_vdsc_regs.h"
>> +#include "intel_vrr.h"
>>   #include "skl_scaler.h"
>>   #include "skl_universal_plane.h"
>>   
>> @@ -3249,6 +3250,8 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
>>   		drm_dp_dpcd_poll_act_handled(&intel_dp->aux, 0);
>>   	}
>>   
>> +	intel_vrr_transcoder_disable(old_crtc_state);
>> +
>>   	intel_ddi_disable_transcoder_func(old_crtc_state);
>>   
>>   	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
>> @@ -3522,6 +3525,8 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
>>   
>>   	intel_ddi_enable_transcoder_func(encoder, crtc_state);
>>   
>> +	intel_vrr_transcoder_enable(crtc_state);
>> +
>>   	/* Enable/Disable DP2.0 SDP split config before transcoder */
>>   	intel_audio_sdp_split_update(crtc_state);
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index bd47cf127b4c..d2988b9a6e7b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -1065,6 +1065,8 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
>>   	drm_dp_remove_payload_part2(&intel_dp->mst.mgr, new_mst_state,
>>   				    old_payload, new_payload);
>>   
>> +	intel_vrr_transcoder_disable(old_crtc_state);
>> +
>>   	intel_ddi_disable_transcoder_func(old_crtc_state);
>>   
>>   	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
>> @@ -1326,6 +1328,8 @@ static void mst_stream_enable(struct intel_atomic_state *state,
>>   
>>   	intel_ddi_enable_transcoder_func(encoder, pipe_config);
>>   
>> +	intel_vrr_transcoder_enable(pipe_config);
>> +
>>   	intel_ddi_clear_act_sent(encoder, pipe_config);
>>   
>>   	intel_de_rmw(display, TRANS_DDI_FUNC_CTL(display, trans), 0,
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 66afa66c66af..d4912199c3ac 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -460,12 +460,6 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>   		intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder),
>>   			     0, PIPE_VBLANK_WITH_DELAY);
>>   
>> -	if (!intel_vrr_possible(crtc_state)) {
>> -		intel_de_write(display,
>> -			       TRANS_VRR_CTL(display, cpu_transcoder), 0);
>> -		return;
>> -	}
>> -
> Seems to me that removing this is what causes the state checker woes
> in BAT. I think we can leave this in, as our own computed state should
> always have a valid flipline and it's only the GOP that doesn't have one.

Yeah makes sense. I was wondering what was missing, thanks for spotting 
this.

I have sent revised patch in reply to this patch.

With this last patch will not be required, I'll remove the last patch.

Regards,

Ankit


>
>>   	if (crtc_state->cmrr.enable) {
>>   		intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder),
>>   			       upper_32_bits(crtc_state->cmrr.cmrr_m));
>> @@ -477,14 +471,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>   			       lower_32_bits(crtc_state->cmrr.cmrr_n));
>>   	}
>>   
>> -	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>> -		       crtc_state->vrr.vmin - 1);
>> -	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
>> -		       crtc_state->vrr.vmax - 1);
>> -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>> -		       trans_vrr_ctl(crtc_state));
>> -	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
>> -		       crtc_state->vrr.flipline - 1);
>> +	intel_vrr_set_fixed_rr_timings(crtc_state);
>>   
>>   	if (HAS_AS_SDP(display))
>>   		intel_de_write(display,
>> @@ -618,6 +605,48 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>>   	intel_vrr_set_fixed_rr_timings(old_crtc_state);
>>   }
>>   
>> +void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +
>> +	if (!HAS_VRR(display))
>> +		return;
>> +
>> +	if (!intel_vrr_possible(crtc_state))
>> +		return;
>> +
>> +	if (!intel_vrr_always_use_vrr_tg(display)) {
>> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>> +			       trans_vrr_ctl(crtc_state));
>> +		return;
>> +	}
>> +
>> +	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>> +		       TRANS_PUSH_EN);
>> +
>> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>> +		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>> +}
>> +
>> +void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +
>> +	if (!HAS_VRR(display))
>> +		return;
>> +
>> +	if (!intel_vrr_possible(crtc_state))
>> +		return;
>> +
>> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), 0);
>> +
>> +	intel_de_wait_for_clear(display, TRANS_VRR_STATUS(display, cpu_transcoder),
>> +				VRR_STATUS_VRR_EN_LIVE, 1000);
>> +	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
>> +}
>> +
>>   bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
>>   {
>>   	return crtc_state->vrr.flipline &&
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
>> index 65d2b0eead51..859f1dc8a6d7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>> @@ -36,5 +36,7 @@ int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
>>   int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
>>   int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
>>   bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
>> +void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
>> +void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
>>   
>>   #endif /* __INTEL_VRR_H__ */
>> -- 
>> 2.45.2
