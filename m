Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61335ABD266
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 10:54:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 797C510E42D;
	Tue, 20 May 2025 08:54:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="es+EOKiw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5963910E440;
 Tue, 20 May 2025 08:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747731279; x=1779267279;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=cUXECsHIZcfYAsoZYWtSOlAJEP6tQvHgkXTvpT6W0lA=;
 b=es+EOKiw1y9QsTRUxFMUSKfoBkmgm7GIuQlu/P8OlEUPYs9A6u2/Rl1l
 aSaqazrcKo+0FT5SRcKj09wlXFx99qG2zJ29L2L/IfbJFMi5vcFfN/oc2
 9F1RogLHxZcdGXUocBfdjpPAvBtuJ3ckf4ozSMHvBhGynh7aPw+QEy7nA
 Ub70wvWxT8NeB/eip6MxOzQqp1trzsiOe6sGmp5KsKoNh26fBy5qS0sux
 byC2TXt2faD93U7UxGH+5uV4T/NacYCHA3Tw6MsYNKUIoGK6EHh4STBi3
 QP/8XE9/1DdB8Hly5DytBjSUWs7pRk20Iotxp7CcvV8XfHeXqM9hi1DrR Q==;
X-CSE-ConnectionGUID: Huf25qVlQxOcLLNQcBZwBw==
X-CSE-MsgGUID: pNZDZl4CTqKPNr2PzoW7aQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="60290547"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="60290547"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:54:39 -0700
X-CSE-ConnectionGUID: kVyauoYKRsuIpZ+UJa2s2A==
X-CSE-MsgGUID: LAI0tSwDQ+i3AJnFZcFA8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="140048872"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:54:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 01:54:38 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 01:54:38 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 01:54:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T+2RcUQx1HJIwbVarNTfM2NYm2KzF4A63MvFz6CRnemYHmCTpPaNKHnEi9TanVErCnot1Lrl+Ni3eeDKkzAikrMuRuU5pLtp6Ibf/7RTzrEODMA57qQUPwJqfgkw15vFRGzb+7uPpSTZ9urHOzj1cEK2IEpEaa/cJz/9zUvyUPvt4+QspkUyQkCSPOI4kHGmxVVnwr/IuZ6StjLGcIP8q2r8Rt3atena1bxPNNlRctZwx6fecck+PPyRaW1RkH/G2JIQMgTrFD7KaXKauMxlZd2KR7Cskpr9ifY2ZmMpfzAuI0UCPwoI4iSp/YdtWPifeoUp/WzrWhJNm7VbXcZk1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ecbySEGdHzj3cuHmXGN7NmDznPYUtZVuTZ8ujd+0ORE=;
 b=N9IkxXXdbpNiiYPVuowNxe3sS5vVSIcP7nwAiaGN7m/LZ7ztG+YO8UODUviIFmQQWi5R5LLrN3c5DugpvRJqWXj2FgyBNuUzZK3VTLZ/t4z1ZApdB5bzr2+Bc7LZu4CcvZkNRiWrUwC8JGbKtAWYX+ouykfI3EQJXNTCW0tJ6euigoWLbqgryDcVMD6wWQza7OOxNEKI86f15cxD3/BiVgIykWpR+aSyHubUJvjiKz8QXWrEJ+yFxQzvDXDAHlqnHWGubzH0emtvU+U/A+mKAeoP2do60x9N1VUzdRZDe5mpW7Rj0hnSZO9y0p1GVq22n8UG0cp3ZikgUm282HDPGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB7778.namprd11.prod.outlook.com (2603:10b6:930:76::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Tue, 20 May
 2025 08:54:36 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8746.030; Tue, 20 May 2025
 08:54:36 +0000
Message-ID: <66e576a4-9500-4faa-a7a5-d716e0c9e670@intel.com>
Date: Tue, 20 May 2025 14:24:29 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/11] drm/i915/alpm: Add new interface to check if
 AUXLess ALPM is used
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
 <20250502085902.154740-7-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250502085902.154740-7-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXPR01CA0112.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::30) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB7778:EE_
X-MS-Office365-Filtering-Correlation-Id: 0cf7f4d2-89d4-41d8-1413-08dd977bf263
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z3N0QjhYTHluSDI5QzhuL1lWcGMxTUJJNlJjZEdnQnlLMkVEQnczWDZCSzlo?=
 =?utf-8?B?a09qRGNLYXJaakpSdGhGWGI2bmUzYTVsbzBMM2dwREUrdWpJTEo5Y3VqTkFN?=
 =?utf-8?B?ZUc2N1ljRE5JelZlUVFZNi9IWmJvd1JBRy9zNXBNWGlUbHhZS2FYMUtwYzVG?=
 =?utf-8?B?aWM1WXJEWnl0RUVuSHlETDRVTmYxMk9NbEIyNDJTOXRlUlZxcTMwMDVHd1Yw?=
 =?utf-8?B?aTZhU09JeHBUZm9UWUdxSEUzR0dFeEVVSUZiM1FGbHhLQ3pWOFMxN3g5SHU2?=
 =?utf-8?B?NTBMQy8rRk5sdzdIM2lCa2NkazcwK1pENnh5cEdndEFoODRPbStHdE1XcnIv?=
 =?utf-8?B?dmp0bVIzejJxeHpJYm1wQTBCMkZSRWpqM2dmU2JHRVBUQ3Z3SjZLbTA4RGts?=
 =?utf-8?B?WVU2QlNLQ2lKV3hRMS9ZSHJKaUN0S2Y4ZGlmTE4xQ2J3MGV4UFlTNHEvVmEr?=
 =?utf-8?B?cTJreDRMMVpRWldEL1dXMGF2Y0JwbWdxODAyTDExYzlZOEkwUVNYUFN5MGpj?=
 =?utf-8?B?SDgyOGpDNXQyZGhWOFhTKzNXcEcwV3BTN2pwUGJWSFB6Qm1rZUt2aUZCZTgx?=
 =?utf-8?B?U0tEelltNXBFRldkb0dkRWsrM3F6UjUwbEFGMTJyNCtIdmtZdm0yanVMdk5D?=
 =?utf-8?B?MnRuS3J4TGxRZUZWMXZDOEdGdkVrdVc3Ymk0NlRXZkZMbUIrcFZkL3pTbGFY?=
 =?utf-8?B?ZmErbU8rTkJFNFpsc3EyeWE4RkQyTkF6VGdVaHJNMDQwVVRtVlRXeE5xQUcw?=
 =?utf-8?B?dFFxVjR0czBhS1VQSHBIYUw3dWdiZEh3NGNaT3Eza1Z0QVUycjVNSDFGUG9S?=
 =?utf-8?B?eUNES05kd0pYZVg2VUduTWZXSUFtVGtwYUsxam10K0xKOVd0cU1rbGduWDlD?=
 =?utf-8?B?OUZkdjFJZlBFSCt4R3F0OGhWdzBMMmZrTTlUbTdCYmhnOVV0TVRsOUNadVVF?=
 =?utf-8?B?RElHVHYxZzFQdm9BRG45YThxa2U3cVU4Q1BIT0oxYjE5NXltYjNwMFR6V3Vs?=
 =?utf-8?B?NGl6cUd0RFYwVFBwbGZreUNodTlmTy9kWjZNL1lDTnpHdFRNTkp5ZVRlK3RB?=
 =?utf-8?B?d29HRmMxeHdTay80dnR5cEtQYkxRUjBLekJqaHViWjhRdEFWNjB6eitZK2lT?=
 =?utf-8?B?bHd0V2xicDVTazZKbU56cW5lYm16Q2NqMnY5a2kwVFpKL3BJZkw4U2QyakhN?=
 =?utf-8?B?THBhQmQrekpDNmc2aUFtR3JUV2FtZVpoYnhnRi83aTYyU0dVRngyYndZWFJG?=
 =?utf-8?B?eDBYTlJZMGxvSDRlcXBYWmFLMHhHRno0TEZWOXA1cWozdUo2MXRqRWU2REtx?=
 =?utf-8?B?QnVjWEplZFVjcXUzSC80RHdOWWJvTHZ6MmpOUHZuaWVpQktvKy9pTStRUkpV?=
 =?utf-8?B?QXJDUXhJTzM3V0lRSEVQV2NqVWU4YmhrREc3NkZkNlp3UVRoNUFqOVRRaUpp?=
 =?utf-8?B?UjRwaXpLZEpWOXpUS2lPRUZULzJyemxzUExWYjd0YTNjNlpyOVJ5U09OcDl4?=
 =?utf-8?B?bzZIV1JpbzJ6M3hZbWRIZGJJaUo2dmhjcFJYdWw4a3dSbVhTTnNyUHU1UVl3?=
 =?utf-8?B?aDYvdmhTNUhwU3N3QS9tUWRQQy8xdTVFaGpLUEt1SGw1MVBhK285VHp5Zklp?=
 =?utf-8?B?dFZmUDNNdlIxTXVZWWQyWWFockNRUE44V1lnUjlmMnRrelFvVWVkY0pKdWRp?=
 =?utf-8?B?ckRMbzd2MWdOajJUTzFMaXZWSG5OWW4vRmJYQzdSd3hEbWJrZXBzRmxiNDVj?=
 =?utf-8?B?MElZdWd1Zk9PdFAyR1h0cHdMVmFiMmJJa2ZyVzlnNCtvQklRREtBekE4WGRE?=
 =?utf-8?B?cEhBRXE2TjNjN2VId0cvdTQ0MmVtQTRJU2tXcEV4c2NIaU84SCtFbEUrQWNs?=
 =?utf-8?B?WFdvUE5qTlI4bGZoUHNVdEEwN3hpaExzM25rMHdFbm8yd0pzZHBqcWpWNThw?=
 =?utf-8?Q?84N4odoVWG4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NUEyMkxzV3ZCS1NvZzJxZHI3VHRXRVRqeGJiRnc0QkFYaTJXVml5THJCazBk?=
 =?utf-8?B?Vkg4L3U0UnZ3WlFvcThpT09DaGV1b1hxVTRSdDY0NTJCRUdXVEphRyt6cGtI?=
 =?utf-8?B?WmRPd1dxeHBLK0ZXRU5pU256RWg0aEZWUksxdGwzYkJvZVlVZWE3enZWSjMv?=
 =?utf-8?B?SExwR25Pam1CRDlweW1XaUZNQ1hDVlBLc0F3RTlPbnp4cUlqbUpTSUNWRnVD?=
 =?utf-8?B?ZzhpczcwUmR3c2U3RWszVzR3a2FObHZBOFNJTUpBdDZ4SDFEN3loS1hGaHpF?=
 =?utf-8?B?WTJnNjZBSjU2T0p4Z2p3V3FsZDdyRjZKM2hibi9zTVpVZzU0ejVlSE1WVHZY?=
 =?utf-8?B?cWN5YzV1QTVPZVdTeEpGSVBobVpDbDZXcHBuZGZGTTJjSXpnRkpMY0R0RHRW?=
 =?utf-8?B?Qmw0U0gzaDNERWk2Wi9tSlkxR2RBQkhaenVxaFJ1ZjZPeXh0VzhKWEJ6VHhs?=
 =?utf-8?B?eFJvRnVlMjZjRUg0Nmlra0xHZ0hmRVBraDNOODRERjdxKzNXYTlTdEF2MkZI?=
 =?utf-8?B?S0NEODNNbm5lcXF1Q3BMdzcvT3JFTkFuRDg3dGxVTmFVRTFucmhhTk0vbEZH?=
 =?utf-8?B?eHdQSzZDSkMrL1JZcFg3aU9jWGZRV1ozcHlCR2dPck9rN3VlWlBYS0x5aVNE?=
 =?utf-8?B?c2NXSlI2RHg1QWNxSStQUFVGZFFwNjY4VjVrUkd6QkRESjJSeXhnY0hJdjgw?=
 =?utf-8?B?M0l4NDZwZE15WEdPTXVCQ3VyTUVMNG1NdUgwWmF3NEFhTVprWktlRmdIV1hk?=
 =?utf-8?B?Z1pNdE5zakRRZm1KSmREZjBMbkc4dHNMY2Jsc0J6bEVIL3R3amlLOW1FTGVZ?=
 =?utf-8?B?S0Z2Tm1leEdrYWwrdnRXeXRtZ2MrWXpPVTg1bG5mandOMDl5WGJGMjlJVkxa?=
 =?utf-8?B?YUF5Y3hQYlFzRy81aVMwaEZiQlp0Rlp6YjFTR0NRUzBBQ0NueUZ2dmJjWldP?=
 =?utf-8?B?Uy9xZTh4LzF3TzJlVTR3N2J4TmZPdnQ5ZFRLZXVPR2xhbDgwT3FRTkZxbDU5?=
 =?utf-8?B?ekp2MFpORDdNeTBGUXBZMktiUm1NZjlQM0ZSaDRtd3NRaTFMQkJmVVA0bS9j?=
 =?utf-8?B?bmE2eUZwNDM2ZnJjWUlQTThHRWZrS1FQTEpmQ3JrNkhGUkJOUFhwY1p1N2po?=
 =?utf-8?B?bTg0czY2RTg4WFRNYjVuMEhKK1lKRWFmRWdqaTBJbG1jYnUrNjMwbUhBd2xr?=
 =?utf-8?B?My9nTnR5dXBoZkttb1BDQUlSOFJXUnBkSGRmR2NCTVJralp4VGZGNEE2TUVk?=
 =?utf-8?B?dTF2RzVQZS81ellCbGhiWXZCN2c2RzA4NThua05RUUFoTWNxaFRFOGROOGtk?=
 =?utf-8?B?Y2lFNHRGeFR1QlZ6dGpHM2lZL1V6d20xcys2ZlEyTG9VNUFCeG83WmlxUXJS?=
 =?utf-8?B?MjU0dEhZd01QQUVleEhYZjVDVnBJbTM0d0MzUURDUGtvRnMzY3VQVlhFMmhl?=
 =?utf-8?B?UlJUQkRkY0oybVhua1JpSzBpc1MrNHFZSkE5VlAxYlk2dzFFdDhkcEdWSUth?=
 =?utf-8?B?c1k3c1JmalU1OFh1VVBOMmFwZGJVNXNHc3I2YUJ3K1dtQU1HekJzSjkyUEJT?=
 =?utf-8?B?SXhvaTQxWTJISU9XNG1Dd0hSZkNRZEQ0NTJKSTdlaFd5RUZCSWxlNUFuQjVO?=
 =?utf-8?B?Vm1kZHJxU2dIY0VUdVZBUWlnZHNIbFhQMUhLMGtPQlJ2Zm5ub25QSE1mQldz?=
 =?utf-8?B?SU9KZWlURFpjdzBFSjltNVgrYjh3UkdXVVBWVzVNYWFENDlyMnpsOWUrUDNZ?=
 =?utf-8?B?N3ZRUGZ0dUZpWkZXRW5iOUlidnkzUjY5aENQZWczSEhIYUJMUXVzTkRNQUZy?=
 =?utf-8?B?M0RNaERwellIT0xyMDJ1YmRJeXpGV0c3QStOL0NZaTBlT3d6Qm1wWTBJaVMz?=
 =?utf-8?B?cUhLQXQvb3hJNlhkUk1oWmVtajdxN2E2Mm85WmovMzVQY3NpUHFUVmlQVE1w?=
 =?utf-8?B?ak56L296YXlVSXBXU2ovekFYcTAyOE1oVVEyQzNtY0ZFQ1JWTmlaamdteDE3?=
 =?utf-8?B?aHpvYVFnYmRRdWlabWNabTNmcGZDYjFDZTlTdzE1aC8vVTZhMHpjOThleTJT?=
 =?utf-8?B?Y2E1SmJZbHNFWk4vSEN1WVNxWlVLS0k3TUpGZU54SmxBb2hucWo4QjhMbzIv?=
 =?utf-8?B?Z09sWEpkbE9IRS96VzdHMGtDOGVZY2NkbjFBcGRONVBVTHkwdEFPWERFVFh4?=
 =?utf-8?B?Y1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cf7f4d2-89d4-41d8-1413-08dd977bf263
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2025 08:54:36.3213 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l+aMNRMIKHJKKs9qNOW/EY69kLfdU9oLVafHz9esj7i//TiDd6u7lzTDUL6rM9cKB6kFT26Elpo+C20w4GP7lRb8e1rYqYJ+F13ZakumdHA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7778
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


On 5/2/2025 2:28 PM, Jouni Högander wrote:
> we need to know if AUXLess ALPM is used when preparing for link
> training. Add new interface for this and use it in existing code where
> possible.
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_alpm.c | 18 ++++++++++++++++--
>   drivers/gpu/drm/i915/display/intel_alpm.h |  2 ++
>   2 files changed, 18 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index 5e5bc91ca7b76..4a8d4b34fa89e 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -26,6 +26,21 @@ bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp)
>   	return intel_dp->alpm_dpcd & DP_ALPM_AUX_LESS_CAP;
>   }
>   
> +/**
> + * intel_alpm_is_alpm_aux_less - Check if AUXLess ALPM is used
> + * @intel_dp: Intel DP
> + * @crtc_state: CRTC status

crtc state


> + *
> + * Check if AUXLess ALPM is used by LOBF (Link Off Between Frames) or by PSR
> + * (Panel Self Refresh)

Similar to comment in previous patch lets use `Return:` in line with 
kernel doc.

Patch LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> + */
> +bool intel_alpm_is_alpm_aux_less(struct intel_dp *intel_dp,
> +				 const struct intel_crtc_state *crtc_state)
> +{
> +	return intel_psr_needs_alpm_aux_less(intel_dp, crtc_state) ||
> +		(crtc_state->has_lobf && intel_alpm_aux_less_wake_supported(intel_dp));
> +}
> +
>   void intel_alpm_init(struct intel_dp *intel_dp)
>   {
>   	u8 dpcd;
> @@ -341,8 +356,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
>   	 * Panel Replay on eDP is always using ALPM aux less. I.e. no need to
>   	 * check panel support at this point.
>   	 */
> -	if ((crtc_state->has_panel_replay && intel_dp_is_edp(intel_dp)) ||
> -	    (crtc_state->has_lobf && intel_alpm_aux_less_wake_supported(intel_dp))) {
> +	if (intel_alpm_is_alpm_aux_less(intel_dp, crtc_state)) {
>   		alpm_ctl = ALPM_CTL_ALPM_ENABLE |
>   			ALPM_CTL_ALPM_AUX_LESS_ENABLE |
>   			ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS |
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
> index d7126d65b60fb..83bbe0b7ff100 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.h
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.h
> @@ -30,6 +30,8 @@ void intel_alpm_post_plane_update(struct intel_atomic_state *state,
>   void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
>   bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp);
>   bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp);
> +bool intel_alpm_is_alpm_aux_less(struct intel_dp *intel_dp,
> +				 const struct intel_crtc_state *crtc_state);
>   void intel_alpm_disable(struct intel_dp *intel_dp);
>   bool intel_alpm_get_error(struct intel_dp *intel_dp);
>   #endif
