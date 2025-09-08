Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 701CAB49BDE
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 23:28:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB25010E5E0;
	Mon,  8 Sep 2025 21:28:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nR0W9Cqk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7345C10E5E0;
 Mon,  8 Sep 2025 21:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757366882; x=1788902882;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=NZ2zntPLX//yWUbEciFExqElhPQT/28JwaE6jSK5ZKo=;
 b=nR0W9CqkH/vysq69p0upQE7BTaoGjYxgdUpVNTadsgt8NBa5yxYPqJbt
 M88BvCEQ66uxwjeeMRhw3nlWGU/KLD8gvGiAwRjphf9rAYxUMdxRhcUG5
 WJ75ir3WFG05KZXi3YA9NZoiEctiiJGKSXx63ndKPc649AxeZGkaIK5WG
 4C/2z4IonqkoCFGnAXb+M0fJG4bIhLOCmk5YoRVhJqQBhRjzJ82F3hyB4
 Rx88UUZV3U/46cKrFLtmHLKERcAEM+YCk9GJrDy2G8EdwBHv/D64A00u9
 Xmf13KDbc7xXaPvodJF1TfIQ8bq82dt6gqkwj+RRsaLBb44AIrAN9/Zbw Q==;
X-CSE-ConnectionGUID: taQ+l5ZSSEi5ei7pGBi7tA==
X-CSE-MsgGUID: TtAAG8Z6Q2Cv51mocck/RQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="85084755"
X-IronPort-AV: E=Sophos;i="6.18,249,1751266800"; d="scan'208";a="85084755"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 14:28:02 -0700
X-CSE-ConnectionGUID: xNkN8aJQSfuA8i2KYbK7BQ==
X-CSE-MsgGUID: qAWk1p/DQuWLfd1TvedKmw==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 14:28:02 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 14:28:01 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 14:28:01 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.89) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 14:28:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vcTLaKhXojdSYlQXpmrSmVJuMTtG6mcCl6DWqJRxM9Lj6CM6n2fXUnJqA4ytHyBIirF5d+r2p8ZTluf/mcSvbpAo9zrasXZZvi6EQNneWfUZNEU/ynjMEAB9Cn9ZxHzB3VWaQxzwuXxM9ZRunVGF91dnie7PiV5UsxC7tUmrOHcoTwuPrXR2bLiCiZGhCeVik84B+J/lM1wj/MAthDWkQfYa19qgUmuuG3lUMG4vk6q8gwOH820xq6rHivqgXOykcByedMeW0bedjXNDKpf1i+ZB6rWaqPD3BUGawWvHbBN6zxCywgFtz43bV2WceZtGOb+AVlyzvba/36uMEJNj0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q4Kt0+2Cnm5bATupBuPyyFlQmdCbxcp7h9l5JwqM8q8=;
 b=lf2vGBbFC5eEwRRhI9dm0SscHm1xl7p1ko4okD04UQu15R21E856D0rHyvRO+mCewqXtsPOJRYi0DsNGI3m3GC/2NxuxF2LMtx4Jc0dxRGwFYIAcZI1d3XE61/jw6ECVIvcEEzAanUBiPFK+2f9AOYaTdlt5aA0u7eKLCcCid0FO4e+ssjcoveHQ92+gq93xlI/ARM1Lc3yzuZAjA0tSbOYJorKRCg9soKGMHnYuvc/iJW1yCI6oGOsgYSH2oWnr7jHgAGq3j5HlpsiDHKdGyBPcrMPuwsFL42N8jYutfjh529adegIrU1D296dmapM+hPTpbHiolmyq5CTwcfDmtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e) by PH8PR11MB6925.namprd11.prod.outlook.com
 (2603:10b6:510:227::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Mon, 8 Sep
 2025 21:27:59 +0000
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a]) by SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a%6]) with mapi id 15.20.9094.021; Mon, 8 Sep 2025
 21:27:59 +0000
Date: Mon, 8 Sep 2025 14:27:55 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Juha-Pekka =?utf-8?B?SGVpa2tpbMOk?= <juhapekka.heikkila@gmail.com>,
 <jani.nikula@linux.intel.com>, <gustavo.sousa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Gustavo Sousa
 <gustavo.sousa@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: Use DISPLAY_VER over GRAPHICS_VER
Message-ID: <aL9KW7qLvRzIVHDQ@msatwood-mobl>
References: <20250903170821.310143-1-matthew.s.atwood@intel.com>
 <175700478100.122246.8257747418250302965@intel.com>
 <aLnEtkH2axNnG3td@msatwood-mobl>
 <CAJ=qYWRSXQAUaYsJb1h+JADkKmcNuhZmgxwCBJAqdxRZviWUXg@mail.gmail.com>
 <44f40d56b53c2aa4be7aa605247373c693b1ce4f@intel.com>
 <CAJ=qYWQ5NvouNHnXWA0aD02h69t2GYEq8O54ipgjM_4df6z6ZA@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAJ=qYWQ5NvouNHnXWA0aD02h69t2GYEq8O54ipgjM_4df6z6ZA@mail.gmail.com>
X-ClientProxiedBy: MW3PR06CA0016.namprd06.prod.outlook.com
 (2603:10b6:303:2a::21) To SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF89507EDE4:EE_|PH8PR11MB6925:EE_
X-MS-Office365-Filtering-Correlation-Id: 47193e7a-b9ea-4699-f8c7-08ddef1e9537
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VW5jMGYwZEhxZjhsQm9OeUpsL1lsWVYwSFRpTUs1dFdHSldPSGpnbEl5YjdN?=
 =?utf-8?B?Um1GWEp0cnZraU9reVVId3J1dWFOYzdEUHNxMkM0UXR3b1JZZjBJVTZXOGJB?=
 =?utf-8?B?WXJIbHNnb3pkQ1JrcS9mZldnbFkrbDd2cnNEYmpvOHpIYzRiMmpDQ0Z1dVVj?=
 =?utf-8?B?ODNCaXBYVVlHR1dibXNCZGR4Y0FOUEZFV0owZ1ExN0FiN0lwUi9mYVQzQkVm?=
 =?utf-8?B?YU03RDJhNEg4ZVJWRTBmd0t2ck80RzZvcGZCZUw2MkQwN1VMb0tXQVIrR2gz?=
 =?utf-8?B?Znd6dUNXSFJMeTdUbnArY2VnSVZJb1Z5ODZGTWdVY1E3RjE2ZE4rc1Fwajg4?=
 =?utf-8?B?aEllTmJaZTlza0xiQ2dveHcrY0lvejdkRFNPYlNqRVNjemlpYXVqcVJMSm12?=
 =?utf-8?B?S1c0WWRJRGJlYTUxaUt3b0xoa1g5Q1NtNTVGelNhUHpxY25oSEVsM2RhTko5?=
 =?utf-8?B?SzZ6enI2ei8yTXVNMUUyczZ4bDZCSUdTOHNDbVhwSVAzcHcrbUwzNjVPYldm?=
 =?utf-8?B?VjBXNVVMVno2Mkl5aHhDQUdTUXdwQUo3MmhOR0ZlOWZzZGtLbFgxNnpUZGhv?=
 =?utf-8?B?UTlOQU1yaW5CMmRUeTFFOXNmTVAwVVpVSGl3bW1waExxVGtrb0FvTXZPK1l4?=
 =?utf-8?B?aFZwWWF2Q0lTMHFzSHZ0Z1hEak5NM2JBRDg3KzFLbXkxblFGbWJJQlBEZk9a?=
 =?utf-8?B?cHA0UjJQcHRnQTFVUnliZ1JPcEdOTFhQWnY3Nkx5MmZPZW9FUCtxclFqNDBk?=
 =?utf-8?B?Vy9aWGdOSC81YmEraFFvcUZNeEE2TSt6cFY2ektVelhiQUxWZW44MlYrMmN0?=
 =?utf-8?B?dFJIcmFFTllsWWoxNjhTdHpYeFVtQUpmUTNWS3FmSmxvU0pJOUoyMDhiUCtZ?=
 =?utf-8?B?cktJVFIxZWp3dkQ4UEFnNVRrNGJoQmVrRTBscHFaZFlwYVVJRGlDdm1nWjdv?=
 =?utf-8?B?K3M2V3FOZXhxTWtZOGVLMDd3SDNRdXN1Z0NFTk56bGNoVk50Mkx2b21UUjJy?=
 =?utf-8?B?Um9oSEIrY0hEdVlCcDlZWUZHeE9iYTk1cHF4NWgrTUJZc3JjVm1SczFjNENr?=
 =?utf-8?B?aUFFQ0IyT2tNSjZxOWpwMVZ3WWdmTHUwN0R2WG5aY2ZSRmdpaTJWbXp2Zmw5?=
 =?utf-8?B?ZXdaaEc1YjJ0WXlSNkttUlVteDZDUHRIMVE1ZzdtWUtEUzRxejdGQitmS0N3?=
 =?utf-8?B?SjlpNGpSOHluZjJ2bnVrRHo0bkYydGNWZUp3TmZoL1dsL0MxdGFqSHJjeDlp?=
 =?utf-8?B?S2NqYzlXY3E0ZDlZN1d0RkZHa1gzUnZCWTBKZXJuOExwZW1KM0lyazJpSFg1?=
 =?utf-8?B?SnRuS2JOcHRFd294Z0U0M2ZiQlZhUVpXTmdFUW9JYmcvOEZQRnhvd1JJeS8y?=
 =?utf-8?B?cXNQbFVIWVFQamFONldvWTlLMUVxQ2RKdjQvaTJWWXpUN1lnVTluRkJvQWN6?=
 =?utf-8?B?VDU5M1phczNtdFovSjJwd2RYZXA4ajl1REZFMW5ZMzV0S0UzSlBzSlk3NnJh?=
 =?utf-8?B?UlFMc2taVVl4WGxneXJuSzBjWTdsNnNBQ2ltdG1SVFR1YXpkWkZJRCtYU1M4?=
 =?utf-8?B?VDREWHFpdEs0ZnRLZlpmUFRUbXVmQzdqK3VhNXQwYlFmV1cvMXZFRFhZdGc4?=
 =?utf-8?B?MTBPaFZOUkltcWtNdHY1eENpR0NpNFJmR1JURlEzb3dpcHhvb01Sd09wYnVp?=
 =?utf-8?B?UHJxVnZaM0RDakRRTkxwalFnSFR6RUx5aTZ3NUZyRlkxMEJicnlPYzB2Zytx?=
 =?utf-8?B?UVpQcDJYUUpGbkVBelZMbHhJYkV0eUJUdWxVazducGM1cmhhNmsvZmE0RlNv?=
 =?utf-8?B?Y1oyYUpabDBhQWp6NU04WXVkVXU3VHlBQVpNcS9mYmltY0Z6dlc4SGdDdzlW?=
 =?utf-8?B?RnQ5ZFhrNjJBd2xPWmorc2VPSFQ3N2xRWFVnTjVocXdkZ1Ztc1RoSGVmTWtY?=
 =?utf-8?Q?OrMgJDQydWk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF89507EDE4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dnVvZWVZY1BkS0xsYnBnLytrVVF1Yyt1aTJaekw4QWFYUzJHeDBUNmVVV013?=
 =?utf-8?B?MEtJbGJJU1dRSUxuaXVXMXcrSHBkWmVjZkJEVjVWUWFMODVUWUM1Vkl5Q05h?=
 =?utf-8?B?UzFTcVIyMlpjSlBRUWhpb1orYjdQK01oVTNCcUQvOTN2ZVZaazk5aGtWeEdW?=
 =?utf-8?B?YUJLU2ZBZ3NoeW5wbmljZzJGZ3JSRnAxV2R5eTBYVzFid2Q5djcvQzBMVkUw?=
 =?utf-8?B?dlVZejdXeXdiOHlmclpIeGFweG82ajRDRlNwVnhFa0hRSFNMVVZrY09QYVBZ?=
 =?utf-8?B?M21DWFlpS1R3THkya0czTWp6Yk1ZNjFTcU11Z2pNT1RIUkEyaGc2dmlhRVda?=
 =?utf-8?B?S0lJRTlhbTBJeEtybTRKcXVJQkUzY0NIVXg3QS9OTkRNNk1vc1pmSUl0bnd3?=
 =?utf-8?B?R2N1YUkyQUgwV2lIMWNTNyt4TVNDQkdiaXVSVFpkNTdGR3lpbnlhTWpVMW50?=
 =?utf-8?B?b2x1eE1EZ0lZUWtiOFcvT0RXRXAwOXZTT1BEdjJGZWwrRnByNHdjRkxCT0VV?=
 =?utf-8?B?NVdxOFlaZWVhdHNYbGNscW5MTXZmd0dzVEZBVit3LzZQY0F2NEx5QmtmdzR4?=
 =?utf-8?B?eVVzY1BvTHFkYVdxS0s2ZElZYjdFZDErQmk0R25vdzdJd2tMU3htRkFtNVp4?=
 =?utf-8?B?OG5OdkZwV2JRbXlyMmtWeklwUTBHMmhyV1pGWThlL08wcmJ5WU5PTEU2ZlJi?=
 =?utf-8?B?Zm5HWmhPNzBuam1DaTBNci8zYVFadmN2enFOeG1ubUFiYzRERXd0b0NtVUdh?=
 =?utf-8?B?TWxUK2VSUWlMM2ZvK0oxalVsTDB5VjFJY1g3THZnWThYcUZOQ3o0SUJoZm8x?=
 =?utf-8?B?S2N1cEVzQjFpY2dKQkRhMFpWeFJ3Ym9Ocjg2ZlpPWFA3WkxoNjZwRWZtbTFm?=
 =?utf-8?B?YzdwNTRFdm9zendWUG45MDcvQ3A3UHU3dHExZExPOW1TNlJFYnRFNXJrRzJO?=
 =?utf-8?B?cVhJVkZyajE1cndQYkM5amJHRGZCYm5wRUxrejhKaGFpckE3cVNEYjhBb1hk?=
 =?utf-8?B?bHFuTW5hbWxEa2FvZzJHNXZ1RXVYTCs0WkZGK0FWb2ZJc3pQYXlRejN5WGVl?=
 =?utf-8?B?cFkxTGluUHlGeGdjTGtsMXQrWVNyV0lNOVN3aGVtVEFpTjN4a0FkblVGTFp0?=
 =?utf-8?B?aTk1eCtuY2xCRG13cUQyUlF2RllsdFA1Z0xqL1R2U2l3VUlUTS9DN3g5UFh3?=
 =?utf-8?B?QVkxdEtuQUVOUEo0b1hkeUdEd0RpTkRRNGZoR214bWNESzJIUG1YYlRDaGF6?=
 =?utf-8?B?Y2RlNHJQTWtpWHVJWWFwdkRRSExTMHBUMk9VSjlzb3NlazVLWHBnbkxURzRi?=
 =?utf-8?B?ZGg3YXd0b2w0SDcxbHFXcm5NTG14UTlXeUpUdmJMNjBDTXExVlp4U1E0OU5l?=
 =?utf-8?B?ZGIrclFXeU9Vdjg2ODg2Wkl1L3I4NFp2NGJBTUZrMkVzZ3YrM1FCL1Q1c2Rp?=
 =?utf-8?B?MkR5ZktIL0Fld0xoTTBKZ0drMnVqR1RlL2JFajJMUTEwZjNCWjBSWXYwVjJ2?=
 =?utf-8?B?cHRHOFJnYnpRNnh4QWN2U3hYVjJ2N0I2YVR6NEg4UE52d1dac0dyblVBQ01H?=
 =?utf-8?B?YzMvRDBHTU9zc2dMbUJIcjU2WFhmTkZhVDdFN2d2b1hldDVITTNlbCtYYzBY?=
 =?utf-8?B?Y1RDNjFtckxVNE02T1pmNjQrWjR4Z3FTUmpqbTF5TVg1aThFK1Jyc0Y5bHF0?=
 =?utf-8?B?bWdzYjdzaWtiNmpwWmNzWGE1YmF4dFdUYzF3cWVodmd5UTRybHpXaGpYL2FZ?=
 =?utf-8?B?LzVaOEpsaTIydDNnT3Jibk5MaEhpNG1GNmNKaVJOdHluOGI1TTkvdEx1MWFE?=
 =?utf-8?B?dUgxWUtNSkszU1M5bzlnZHNxQk5GbVRWRFBhM1VFZ29pOGFBS3pzWGFQOUpa?=
 =?utf-8?B?dU9oNzlVQnUrNGovcnB0dEp3ME0za3dtWGRCVEdxWExVR0RhSnZ6UzdhR3Ez?=
 =?utf-8?B?VCsxTUVSZFlFUWtKTHhmZit0TlNtTlFQY01zb1BjTHR0QVN5NG0vR3JGVTlm?=
 =?utf-8?B?NUx1RUpxTkVMQU1mWk9VVDdSdVN3R0k5c29EMkhOMER0YW13SjI3aStBWTJO?=
 =?utf-8?B?VXphL214dkNFbEF2YnkyQXV4QUhINDVUTk1WMm5jSG40c3ZqMm1ycEtpMk05?=
 =?utf-8?B?c1lKUi9XRDdGUDUrVCtYZUkzZ25maktORWJjcXpDUG93SkF6SGRaRlQrRXhz?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 47193e7a-b9ea-4699-f8c7-08ddef1e9537
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF89507EDE4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2025 21:27:59.1952 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ITRyzKMuCswcbC17IcKm1i0Hi15xMuCUL5M50OEiKTf8biTqv3q6y/sieo+/7y7q1QFB0cmc0GZwo3rVOKZp/FWwrZ/G4Uw4Gn6zllkZa3Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6925
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

On Mon, Sep 08, 2025 at 04:26:12PM +0300, Juha-Pekka Heikkilä wrote:
> I tried to look but can't find any reason why here was needed
> GRAPHICS_VER(), probably was something that's not anymore. In any case
> as Jani wrote GRAPHICS_VER() need to be removed from display code and
> if something breaks from this I think it will come to my list of
> things to fix..
> 
> Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

I'm not entirely sure how much the format modifier code is tested in CI.
However the CI test failures, the few that there are, have been
accounted for. Thanks for the review.

MattA

> 
> On Mon, Sep 8, 2025 at 1:29 PM Jani Nikula <jani.nikula@linux.intel.com> wrote:
> >
> > On Sun, 07 Sep 2025, Juha-Pekka Heikkilä <juhapekka.heikkila@gmail.com> wrote:
> > > On Thu, Sep 4, 2025 at 7:56 PM Matt Atwood <matthew.s.atwood@intel.com> wrote:
> > >>
> > >> On Thu, Sep 04, 2025 at 01:53:01PM -0300, Gustavo Sousa wrote:
> > >> > Quoting Matt Atwood (2025-09-03 14:08:21-03:00)
> > >> > >The checks in plane_has_modifier() should check against display version
> > >> > >instead of graphics version.
> > >> > >
> > >> > >Bspec: 67165, 70815
> > >> > >
> > >> > >Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > >> > >---
> > >> > > drivers/gpu/drm/i915/display/intel_fb.c | 4 ++--
> > >> > > 1 file changed, 2 insertions(+), 2 deletions(-)
> > >> > >
> > >> > >diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> > >> > >index b210c3250501..1e4cee857d7b 100644
> > >> > >--- a/drivers/gpu/drm/i915/display/intel_fb.c
> > >> > >+++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > >> > >@@ -563,11 +563,11 @@ static bool plane_has_modifier(struct intel_display *display,
> > >> > >                 return false;
> > >> > >
> > >> > >         if (md->modifier == I915_FORMAT_MOD_4_TILED_BMG_CCS &&
> > >> > >-            (GRAPHICS_VER(i915) < 20 || !display->platform.dgfx))
> > >> > >+            (DISPLAY_VER(display) < 14 || !display->platform.dgfx))
> > >> > >                 return false;
> > >> > >
> > >> > >         if (md->modifier == I915_FORMAT_MOD_4_TILED_LNL_CCS &&
> > >> > >-            (GRAPHICS_VER(i915) < 20 || display->platform.dgfx))
> > >> > >+            (DISPLAY_VER(display) < 20 || display->platform.dgfx))
> > >> > >                 return false;
> > >> >
> > >> > Hm... Maybe using GRAPHICS_VER() here was intentional? The checks on
> > >> > display version are already covered by the entries in intel_modifiers.
> > >> >
> > >> > If we look at commit fca0abb23447 ("drm/i915/display: allow creation of
> > >> > Xe2 ccs framebuffers"), we'll see that the respective entries were added
> > >> > to intel_modifiers *and* the checks on GRAPHICS_VER() were added as
> > >> > well. Perhaps there are indeed restrictions on the graphics side to be
> > >> > able to use the format?
> > >> >
> > >> > --
> > >> > Gustavo Sousa
> > >> Honestly, I tried looking for reasons. I couldn't find anything in the
> > >> documentation to support. I decided to send upstream to see if it broke
> > >> stuff to not do the checks that way. CI seems very clean. Hoping Jani or
> > >> Juha-Pekka will chime in if it is indeed an issue.
> > >
> > > Using GRAPHICS_VER here was intentional. Jani didn't like it but these
> > > xe2 ccs don't follow display versioning but gt versioning.
> > >
> > > Proposed change look ok but I'll need to dig in to documentation
> > > before I can say for sure. I remember we had discussion about this
> > > with Jani but can't remember what convinced Jani I needed to use
> > > GRAPHICS_VER at that time.
> >
> > I think I just took your word for it.
> >
> > In the long run, we can't have GRAPHICS_VER() checks in display
> > code. Either this needs to be converted to DISPLAY_VER(), or, if that's
> > not right, we need to add a way to ask for the *feature* support from
> > i915/xe core. That means higher level semantics than just checking for
> > graphics version.
> >
> > BR,
> > Jani.
> >
> >
> >
> >
> >
> > >
> > > /Juha-Pekka
> > >
> > >> >
> > >> > >
> > >> > >         return true;
> > >> > >--
> > >> > >2.50.1
> > >> > >
> >
> > --
> > Jani Nikula, Intel
