Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6166B9DB233
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 05:34:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0440110EC1A;
	Thu, 28 Nov 2024 04:34:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VZaQV1Uz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DB1710EC1A
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2024 04:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732768477; x=1764304477;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yDf359I2zPr7OCB8IV92Ei6e1caOSwzM8J9N2tchzig=;
 b=VZaQV1Uzq1uHpGYwIxY8FWo4uHiNKk+XpSvVEjeRk9v+KzLe9tsG4wUg
 mj37Ha7BPYKsw11DT4ySkTI7wdNNlAPstTpFxwoeRW8QZGyuAAaquyGCP
 TrVXDnVXuziEe9YnUKkqbdHj+evKzYW1R9o/d13cIY7vXinlYkaAf15yo
 V5FQMom+NVgawQ5EPq+hioaWdUlBdL+siEpzRYYKK6Q126yvBtfCERfGH
 Zm/mFE7qW68DXg8ZOpAJ49Upf4ff7RAhtykFtLJMamped23h0rAVwjUzh
 pyRJKHkDFSYNQ6EC7RkodW16O50MWuW4FMS87J2bWvsCYcC33b3tqIHNa g==;
X-CSE-ConnectionGUID: sDHA/5O9QjikNCqFE9kn4g==
X-CSE-MsgGUID: eH5ZDUXkR0++gf11a8qqEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="50515828"
X-IronPort-AV: E=Sophos;i="6.12,191,1728975600"; d="scan'208";a="50515828"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 20:34:36 -0800
X-CSE-ConnectionGUID: wOKPK5ZqTBmShu12S2pLyg==
X-CSE-MsgGUID: kKRVro01QOW7kVbzYPkUzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,191,1728975600"; d="scan'208";a="96226901"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2024 20:34:36 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 27 Nov 2024 20:34:35 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 27 Nov 2024 20:34:35 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 27 Nov 2024 20:34:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FMkO53fm5jMXTgYKayNk1pdgQ1DU1bxzPh6uV8R6d6yNhGSSJRx4QScAala1ZYv47DjiQ/PuSudcejI+/0c28EXIGZqCt590f/THcjCq0AZZ33pnG+hXcGGsgnt2uYJQawqB9qWJyuoGe5KB2hkNqAANoZdZ2AGM6bEGH27WqEDHVZL+HRpj3dqlBDzZRmq4bmO42DBlrKqvOmoAMZyULpy1nVq3wqOQLgYbLSfjeqOeIaLy4L4X8pALXXHWoPV9h3/s2L6JHRnj+pFufWkWWIy0VkiWSUt9oQQKrH9vI6hzxZsEAJCHqSpGoCUgyA54AVAN7Et7JFKPZVbSzeV6Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fFDxpZBwceDWi7IlJQo1BNC8qGVQWMImOe8snlqzrBQ=;
 b=yCsXtlVUyDI74QE7YwcpqeQR5xnxV6yer6H356DjNoJHoxpztj49JH0dmTOS4sJWSvZPoAah4OQX6AXtNuNFUu0x8g39eNPqEmZVqU3YmV3xKp5UbuJ6/zVNFfejGQ3mPU5/R/jFCrc9MVwoCJIt75O3wL+d2qiGejNgaKiupn1hTavjUQHiDksPno7EKBsAQ1zTFdqU1uSDsOFN3VtUJjYeqdllUFFfcggbWCRW/0iIslAX2hWOX3JyiG75MhOhfjiTi9tFEDovqsbAwO6W2ZuHng8WQOIUcUotPKpXoW4Ko0COpou5s8N/Pgj1gns6b6UTwVw9j4ngCVh88KdOqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV3PR11MB8457.namprd11.prod.outlook.com (2603:10b6:408:1b7::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.14; Thu, 28 Nov
 2024 04:34:33 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8207.010; Thu, 28 Nov 2024
 04:34:33 +0000
Message-ID: <c6c50b98-81d8-47a5-beb5-d50a14d6a502@intel.com>
Date: Thu, 28 Nov 2024 10:04:27 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/5] drm/i915/dp: Compute as_sdp.vtotal based on vrr
 timings
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>, <jani.nikula@intel.com>
References: <20241120084948.1834306-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241120084948.1834306-5-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241120084948.1834306-5-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0037.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:98::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV3PR11MB8457:EE_
X-MS-Office365-Filtering-Correlation-Id: 5292ad55-525d-44d0-e504-08dd0f65f4c6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MnpJMjRDVUxDSUcyZWt3K0NvRGpSejZzck1INzhHOXk3MjIzN1JWeE5nTnhH?=
 =?utf-8?B?QTEwUnQrOUk1bW5XNFY5TVBneXFzRm9YNVJmdlB5bS9ZVy9ZbzR2WHRkWXNB?=
 =?utf-8?B?NG9WR21wU0VTNFpFcGJ4QjUwaGhQTkFxaG1vL2FEcnJZZjkxWnVVSVhjY09R?=
 =?utf-8?B?OGowbWlVS2d6Wm9rY0lMaDBzTG9sZG1XRXR4K3BkRlk1cHRjZzBLYWRrcXdj?=
 =?utf-8?B?eTVKUU5weXJ1cHo3UGRnZUVxU0QzQ2QwVWZNNnpEajN5eEVWT1pvZllmdm80?=
 =?utf-8?B?QTJzZmJpbEJGaU51aThObERrM3FoakdFQmVlK2pKV1NSeUYybE4zSnEwMXJm?=
 =?utf-8?B?amdOWEFIUXhldmFDMVRNWFBBTG54NkRNbWYxNHhqV3JQVXczaFY2Zmd6enJE?=
 =?utf-8?B?T1pKRXd0a09HRUZpZHJ2eEc3NHErdlhSVGdlVmZEbVdTbGhFTCtxckY5enZQ?=
 =?utf-8?B?eHI3UGJtWWFQaDVRaEx2cG5sWjhrbFJMWjFTRjBUbUMrMFBKdmlVQ2h0VFEz?=
 =?utf-8?B?N0VUT2tlbXU0YkZWMU1EZ2htaHFBejN4M3FpYXRKbTJ4bzJicCtHSjZ3OGpR?=
 =?utf-8?B?Y05tWjlNWG1mcG9kWHljczB2aXhydm1qWTJPRlJncGFxVDlxUFB4R1dWK05H?=
 =?utf-8?B?aEx4UVlwYUJGeU00RDRGWlRnWGs1RDlLTEh5dTMwbk9xTVQwekhtTU5GSWVC?=
 =?utf-8?B?Z2w5dnZXMkE2ekh4NDhTRm5vcW82MGdncFU1dkplRUVVZGpoTlBzZ01Vd2dG?=
 =?utf-8?B?Tlg1T2hNNGVmZlNobU50a2Y3WlZ2cW5lU1haeGRlTFR4bW5OSlJIcy9Gajdr?=
 =?utf-8?B?UHNqTkZreGpyN3g2dFltQTUvZjNXckQwY3lUMHV2Q2RvNmdLTlVRQVNyUVhB?=
 =?utf-8?B?UDJZZVk4bWlVTXlHNUhPaWZzNEMvUmkvZklieWxwNE1lTGE3TEREQWlDem5q?=
 =?utf-8?B?U3o4Sm03YzBlbEpoMzdCTTN4MHBhamgwUTJHRm1GQ2l5R3FWeTg2d2NmbE81?=
 =?utf-8?B?eUVmaE1Jb3BsdlBoTjZTSFRZTituY0ZmK3BaYm5DLzRxbmFMNkhHRzErclUy?=
 =?utf-8?B?b3pvRVd1K3pDcDJRSzJqZzlFRXV4Z2UxMkhHN0YrbE5LMDRWemMxZmRvbW5F?=
 =?utf-8?B?OFEyaFdkYzJDV2VYSzVMOC91NXJJQWVpbzdYOGFjM1Ayd1J0cVdTcHJvRita?=
 =?utf-8?B?WHlhNUNIZVA0QTRTeERpUzNtMXdLK2FLc2xsV2JhdnBWMlhkbE9vSXdsV1Bj?=
 =?utf-8?B?TFc1elZpS3FiV09aQUhxaDBKblFzZGxkb3JOa3lRMFZNaU9Ua2NKRERZbjJt?=
 =?utf-8?B?RTJhdlhaeFVrQU5NblIyN0RUSFh5UWJwS0wwTUcyM0JzQy9KekxnNXRjTmNj?=
 =?utf-8?B?U2FuZlNhTDE2Y25qMWhNZ3dCZnZqeDc1MThDTjV6NzNCOFByenlPZzdyWHZP?=
 =?utf-8?B?T0tkcTBOakJRVGU4dktwM0l3NGFyNkVOaUY5SUVwK2hOY1RHUC92NFhsa3Zl?=
 =?utf-8?B?VXpkUVRWRzRmbFVBYVIzOERnS3o5ZEhWQVV6ZnBSVGhtVi9BRCtKM2U2MUlk?=
 =?utf-8?B?dENsTmovVmkrSkZ6ZjRKM3Bna0ZwRXBkMmRFWWxURmtzYjRhU2xxelp4M1FW?=
 =?utf-8?B?YWMrdFJUazlaZDNUYlVkQVF2K3NFMGdNR1FBdXlzcVUvbk1FbmU2dWZhcHlQ?=
 =?utf-8?B?QWR4aU1DSk40ZjMrc3lRK1lMa0dmS3dJYm1XSGdJOGUyVnNtbktocFZOdWFh?=
 =?utf-8?B?YWFsSWNVRkRmU0F4UFk0ZDhpa3JKakVjblJnbTJCNHdJTGpaU2dIUDdyOElR?=
 =?utf-8?B?NGRRdFB0K3ZEM29na1FkUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RGpGb0V2UlgzOUVLM04zUDl4a3NDR1kwL2FYUlN0VHgyVUdGb0xIVVZXZHIr?=
 =?utf-8?B?WTA3ZFlHM3BLcmRLanRFUVpZV0s3dkNXeTdQcVdSdy9PMGc2Rm9yQVo1VndV?=
 =?utf-8?B?UU5RdFZqWlB0cGhMYldib3dTQzRHK2NEUHVBRnlHSldlbXJYZ0o0d2hGcjNI?=
 =?utf-8?B?NkYwbEN3WXR1aVduQUV3QmpuWUlIQTU0cGZxcTVSWjVYdGhZSTBVb2FLbFRl?=
 =?utf-8?B?QzhWVDFzV0lDVnEzMTFmMUI4aDl0NzBjalh0Ymp6THRod3c4OEN5dXRxWU1V?=
 =?utf-8?B?UWk5Wms1VHg3b3R5SHBHWElaUndFa2JDVXZSWjVvUkhzMkpMQ1FVckpXeUxr?=
 =?utf-8?B?ak9YelZIZjl5WTl1aDZORUsrb2laK0VqeEZXMTYvbGRDMnhxaU9rWG9oMEd0?=
 =?utf-8?B?WXlUYjVSSWQwWlB5WGx6VVR1Rld5US82bGhGVERRVk4weTU5WDdvMi9OV0tt?=
 =?utf-8?B?cHRoUTZFWXQ1Q25ISHVxRkQ5RE02VXYvWG9JTXBMRDlLaWJBaGZBaWdONlNu?=
 =?utf-8?B?a243SE85WEVBTis5SnJYcWRCQ2hzR00wMWpsbGtORENEWGJadkdVQ09MZk1K?=
 =?utf-8?B?NEF5UjNVKzIxdEpYQlUvOW5MK2RmMUFkZWU4VkR2LzNzT3hPMTRaL21DdFFO?=
 =?utf-8?B?ZGt4MDVuMDdqUW93bnFham55ZHdoRkFQSTRmOTJ2M0NYTE1kUEtIbUIyUW84?=
 =?utf-8?B?SlNiZ1hjWVBjVXBkUGhNQlI4Y2RGMHUrWmtJeGpyOURqbTlIV1BVRHpabUo4?=
 =?utf-8?B?NlFrQ0dFcXJnSmxnbFdEN1ZuaERuRFlBdXNNeE5hamY1QjlmTG4reThWNGw4?=
 =?utf-8?B?R3FpUlZqVVNOdXRNY2RCTzJoSEg0blhaYVNFTVA5QXRzbTN4dnYwVXVJbHQ1?=
 =?utf-8?B?ZHozd1BDbjhFdG4rN2N1M2tlNkh3czI3VzlYYmdUZHlYaG8wTTVWM0FqTUZp?=
 =?utf-8?B?dGZHNURlZzFKSHNjbEIwZFdrTmFUaDV4MHpVY0tsVVNHL3kyN3NTUDFOemdH?=
 =?utf-8?B?SmtFOHNEbVBMYU1vQ0dqcEdxUi9QY2orc2t2d2RJSXdOenp2QllmbXFYUkg2?=
 =?utf-8?B?ZWd4OCtOZ1Y5d1RsMWtVeXJUU3hiWnpub2g0NXBWZHZIaXJZL2U2MDFsb3N6?=
 =?utf-8?B?VnZUelRycHg0TTRMcWRPUytETWN2SFQrbWxPSHY2U05YMzBWTm9iQ1Q0akhE?=
 =?utf-8?B?MU9WYmUrOWhEa1IwaXBhNGlZVnFRVGhHQ3RuUUgrRlM0ZndSRnNzVWVsVWlH?=
 =?utf-8?B?cEZIY3lyVkFQcUh2SFJRa3ZBZmhjb1EvdW9WSU02eFVRV0Y2QnpJeDREM0xp?=
 =?utf-8?B?VjFNaEh0TTFrenBidkVVcUlZeXdzSTV4a3JlSnprTlZZR0kzS0laTUlNRlhn?=
 =?utf-8?B?QnZZUGlkbFN5M0s3OGtZR1BLNWs4dWZLMUJjdGhaRVE2MjNhUVRIZk50Misw?=
 =?utf-8?B?bXY1cXJvN0dSVFdQV2J2S0lBWUFEdEdFQkdYMDQxM1MrWTNoYmw1STRLU3BD?=
 =?utf-8?B?V29qTDYvWXhHR0grZHE3Ym1zQmtEZm9SWGRYc0habExLeXpHQjRTUStPdEJy?=
 =?utf-8?B?OENVL3BISjl3VEt0MURjSVQzTmxwY0dFVnBjQS9nY2Rxbmp0UXlZTGhFZm1V?=
 =?utf-8?B?WVplK3RWTGhyNm5RMkZLRnA5ZEJkSXJWczdFRlVjRW5yekZiSWVIT3FUTG5m?=
 =?utf-8?B?Q3FERm9ESURxWTNOaERneWZVRnRYVkxYZEx4K1IyQitaY2U4Tk9LcXZ6bjN6?=
 =?utf-8?B?MjhVZ1lvTTE4Mi8vdnN0dlZMamdQeXRqejNja2xzUVFjYW9QSHRSNC93cFhW?=
 =?utf-8?B?Ujd1aXVZMGtBcDZQMGNoek5lUTJ1T2huSXd5R2R1R1c1bzBkMTdFRERudXZI?=
 =?utf-8?B?RWcxd3d5K09iRlIyeTV4UjVOMnBVamRoR2pieWdacml0ZS81di9NaWRvem8z?=
 =?utf-8?B?ekxuYkMzdEhGdnAwaDZKZGFMeGxuZmNPNnRlT1lWSVdKSWwrVFUrcFUrWkdt?=
 =?utf-8?B?cEU5OGlEa2IyRzA0WEU2anhQRnFUb0VDZUlTL3k2YkZienJ0R1EvS1cyNFJh?=
 =?utf-8?B?UzgzNFh0NjZXNFlvazhocDQrVW9kK25ZeGwxblgxRDJTRktkQmRpNDZyU2p4?=
 =?utf-8?B?MW41WTZyQ3BHNlJFMjBxa00yb2h6cUpDUG0zR2hBMEo2UTd5YU5mY3BXdHJM?=
 =?utf-8?B?VUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5292ad55-525d-44d0-e504-08dd0f65f4c6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2024 04:34:33.2940 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kjY30OUY8q+wHVtcIF43Gjtm1nFTDYOSlnZu/RTRUIkLNq998jwI5n+FbiZIWTJLZYuN2xax6pD+cn5ilGM25NVboMfsx/p7RUBLzH/ngBM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8457
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


On 11/20/2024 2:19 PM, Mitul Golani wrote:
> Compute as_sdp.vtotal based on minimum vtotal calculated
> during vrr computation.
>
> --v2:
>   - make a separate patch and update to vmin only [Ankit].
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 306c00cab57e..e39ae59370c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2823,7 +2823,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>   		as_sdp->target_rr_divider = true;
>   	} else {
>   		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
> -		as_sdp->vtotal = adjusted_mode->vtotal;
> +		as_sdp->vtotal = crtc_state->vrr.vmin;

This should be changed for CMRR case also.

Regards,

Ankit

>   		as_sdp->target_rr = 0;
>   	}
>   }
