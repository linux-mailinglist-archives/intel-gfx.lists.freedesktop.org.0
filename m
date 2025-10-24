Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B95DC06A01
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 16:10:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E58C210EAA0;
	Fri, 24 Oct 2025 14:10:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fy23cmu2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AD4F10EAA0;
 Fri, 24 Oct 2025 14:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761315048; x=1792851048;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=q7lVeia6A3iOZAalkRs7ntwGCbublLCwHaK9tclWgFg=;
 b=Fy23cmu2CPhPwnw6rX2lD5pCM4ln+qFoBWs3g77w48wnVsn7Q47HkflL
 an0B+lcQVyVdsX/6eQWqgvP/60oiTPx5vEJZ/bSJBzu4p3kqGPvQdbqL4
 rde5dQ9YwWajX23Pwd1bo2fvPEnM281PL9pJfpIbnXAju2degrbxgZdri
 cEB8kxYES+EQGOz29xKJuE7hOhmNp/QjLCCLVWjX2gk8FtUlAQrJ4utOp
 4mNZ6HZUxzE1w3nmJgtXL/btfrrqgjy9u4KF2qQQ1F8Bldp17TA9hjqD+
 RMAFWV8FX/jDleLGuJ7iJC8/iBC2miOnPf/bI0cSURDyo8tZP+dDXUOTN w==;
X-CSE-ConnectionGUID: Ic2KZk1sTj2ICjUqSOs3eQ==
X-CSE-MsgGUID: GRO5EgOKTEuswWyoHLz6kA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62526087"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="62526087"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 07:10:48 -0700
X-CSE-ConnectionGUID: UfM6tXn0TcmriOHdWFAJDw==
X-CSE-MsgGUID: XYwt9k61Q86hHZnpAfjwxQ==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 07:10:48 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 07:10:47 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 07:10:47 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.7) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 07:10:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x4ajN1EjQ7PvHryRa8lh/t6K34A6c9U1yuyR+EmdPwtttHwthgF4k7tX/FxUIQdIuCq9OagX6eMxBmUjZI2MqvIlolqwpCrdZhSV1avp1poHnbed2rH4EX1mqvs+faHd9Ddz/mrURJGAWAnOKOf4BRkEvxrjTszuVk7vobkr+r5rQu0po0umbAzPwQ2dxxp8rwsXf5A5+Rj3Lo1kkJirqLH417U8WdRxfRX76lbQEAi3Fv80WSKSqMSevaMNXUY/eeAGelo4iI7JTBEU6DTYQE6jIzXeeuMGyhLsrTn5VCO9kdn8YqBUfog8cFB8D0Rlxs8E+5SfYU+bXc86OaTAiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9PWxMM9j/L4mRgxYabFXIHnsvfzW3M59azgYiyXTwQs=;
 b=DksqVOmjsx9bY3SPza6YwJzp6w05BrezVfFBol55M+TbqRsx5BAoNXduq7KoCSqChIhGzTUgwjGVRF9GOLv2BToeFidD+o9u+VqvolfeuaaoZf3z6Bggs/8pPsDPhfk9RCxqfFsiJli+cOJC6Pdi0vVvFRaVagjg9YZPxdo1zRwtZILRg1TMFi64b9wQ5DUHBjR2JteFQUzzTAccnI/DgG2wOsbjNhhxp2U2GjmV6ahjuFvFVYppDYRgAB/E/5ApB1IsFm8+CvFwIn6H9r+ZHiLOxd4+z88esoH9w2zZkYhj8w1HNuglIlWE/UZkvBOT8WtwThlYJ8DietXwtctCyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW3PR11MB4651.namprd11.prod.outlook.com (2603:10b6:303:2c::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 14:10:40 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 14:10:40 +0000
Message-ID: <6315fe34-7080-4edb-acbd-942c6816fb68@intel.com>
Date: Fri, 24 Oct 2025 19:40:33 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/22] drm/i915/vrr: Disable VRR TG in
 intel_vrr_transcoder_disable() only on always use_vrr_tg() platforms
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
 <20251020185038.4272-15-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251020185038.4272-15-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0172.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW3PR11MB4651:EE_
X-MS-Office365-Filtering-Correlation-Id: be9b9ecd-5e5f-46be-277d-08de13071c9f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QmJ3eDlkbVVUTUVtTnBqUTdHNkpoRWw2b1Z0dTBVQUREUzcwWTIxQTc0Z2tJ?=
 =?utf-8?B?ZXFvWjhVdU5yb1dXMGJhaGxLQ2hsa1RTZHlGTDQycmZESER6SGZ5L3poSDhL?=
 =?utf-8?B?Ykk3K2wwbVBldHpaQVBFL3h3bEM5R01HY0RhaFg5bXZBZGFjbjF4d3NHVkxs?=
 =?utf-8?B?eSs5eHU3dnlNVWxWR1R6aUh6UjNrS3pNRHc3Y21kME9RUUgyZ01GanlFdmJN?=
 =?utf-8?B?RUJNd2tFVDJEOHUxYnp6ZWdqL1lJTnhBU2R4YXBhU1BTZU5SR2NkZzBtajZJ?=
 =?utf-8?B?V0FlUVIxd291WjBwbHVGRXUvRFRkc2V1ck1nNWJkZTZFNFRwWXI1cUdBOXR1?=
 =?utf-8?B?Z20rMFlRcjI4LzYxbVJvR0VRd1dKSmlCUUZNMTJkKytEMUFGekRlMnk3clpS?=
 =?utf-8?B?OWNObXdLMmZHbGJUOWRidVIyMXFyc1FCNlM1RUxmRnc3M3NVbWw0MW1DME9Y?=
 =?utf-8?B?ZVQxanorK2dWdnhROHZzaFpzOFVaakNoRlNPSGo0Z2tKTFhCYmplNnJuVmt1?=
 =?utf-8?B?SWhUSGd5cHppSmJtSnZKRUxValhHQ0F2bjVyUTRzRzNha3VUTW9JeDVlZ2la?=
 =?utf-8?B?TzhSNVdZNFhVK2wycVk3RnN0cmRURmQrWktOTGNKUmpWd2JITmJFSVRaTWdZ?=
 =?utf-8?B?OUhGYkFWb2xaQ3BhSXhQQ2ZKVDc5NHdIWWtmNWhhU3ptR2ZuY0EzUXBaMzNJ?=
 =?utf-8?B?aGswZW52M2NKZWVVaE9qV3E4cnVQcFUrakd0K0oyTy9HOERRc25DMldCQW4y?=
 =?utf-8?B?Q2U2ekVwUzFLVmpWck54L203N1M3S3N2dVVZdzJNeG14bGdjUnNMWklqUVZw?=
 =?utf-8?B?eFZZYlZ4UVYvUHFuU251MFJxc3NkdG9NNjY5Y1FyR1A4Zm1kcGxtTzY0RVNS?=
 =?utf-8?B?VDZUc3gwRjRrcjV4SDJzV0doWEdiWHZDaUNmU1l2UWcva1FEWEhPTDlhWlFW?=
 =?utf-8?B?akZVa2lnV3Z3cmZ4UTYzQVQxMXlQNVh2ODViYlRlVGx2OSs1UFRNb2NUNThN?=
 =?utf-8?B?TVBQb2FjRjhKNExCbGRqS28wZW53T01sdENOYUx1UHVpcDQxV2VHait3TnVm?=
 =?utf-8?B?VFljeHJvbldOVjBmT2xVZ0ZCaFRWY1R2UmF3a1VUaitzYm5pWW5TODE3NTk5?=
 =?utf-8?B?OWdCUVlEZXFhT1ViNzJaQWV0Y3o5dEl6cWVGdmI0dXFidzhhbVRLR0ZSNlJm?=
 =?utf-8?B?MnRZRGpuMEMzb2ZHbEtpZ1NveDZuZ2pLaXNaVzRTV2o2Zm5pUlEwRjBQNHlk?=
 =?utf-8?B?UnFLa0ZsaVl4bWVFZndXZmZFSkwraEdMR2prNFhaeDd3aWs2SWR5OTNZRCsx?=
 =?utf-8?B?QWxqWVE4NU41OHM3UEZDRUZWQjRQMmpONHh2WHVidExEYWRZb2FIK010VVhD?=
 =?utf-8?B?R2pUS3lMUWRNU3EvSnVFaEVKT2xIV1YvY1o3eGtHVW53WTdtKzdGaDFsQWdU?=
 =?utf-8?B?YStlcTkwandtZzBCY2FPSHVjd0dyZ01NZGZNUXpzZ0ExMW9zVys2Z2tqU2ZZ?=
 =?utf-8?B?ODJESmo5Ty9LQmFweVJscVBXME9sakxmaWxzZENUeFp5Yk1LRVdDNVhESDkz?=
 =?utf-8?B?NlJuVU9TekNEZGlMY1Vpb01hbnpkeTIyeWJ0ckYzTktDNnQvR1pXSHZiMHV5?=
 =?utf-8?B?dng3L3dPbjlSaWhLTjZPY0ZEK0FhdTdKV1hqUU9heHgyQzhDemlqRGYyeVhI?=
 =?utf-8?B?dTNpNVlXOHlycjJtVXErTTVTK3luRGdaMEo1U2g1RGJyQ0xJc3ZrRlMwMVR4?=
 =?utf-8?B?V29nU2Q1UnplcS9MTU9ySWdTL1IvNTBJZU1xYk9yWUlzMkJVSVdmMEVJOGQv?=
 =?utf-8?B?RTlVK1hUbHdpb3ZLY0haNEZvMWVqRW1Oc3ljbEVYRHVLb20wZVFQM2I0d1B0?=
 =?utf-8?B?UXpkUkl6ODlWY0k5VmEveDl6emExNDVEdDRYeHpwck8yYnVEV29rdW9qSGhX?=
 =?utf-8?Q?87pTBj8uwHFode/4dytGKucZ5Aki2aww?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WEVNZVZPTVVSNTVWbVBqMGRMS2M3UlhIODg2K2RlcDg0SEl6dzBaUlE1cHBq?=
 =?utf-8?B?KzgxT3ArcnRBaWZKekRXUWRQYzdoZTczZVNpQktkbTg0blZxRE5QQW43S2tI?=
 =?utf-8?B?a1YzZStXaFNxbi9rZWFaZ3ZtQW1UYnVjUDBWR1JuNHA0S1NNd1d5RExxQVNU?=
 =?utf-8?B?RUIwSEFZdXdWcFQ2N2FoQzNzUEpqZEREdERXRHhYc3pXdU42dldGb0QxVG9a?=
 =?utf-8?B?MXdjMUtORkFtS24zbzRPOGVnTnh4Mm93YTd4cTRhZmRWRU5MV29IK2FJUmJN?=
 =?utf-8?B?cXpxWVpFZis4NXpyTFFaS0FVU1VNMXl5amYrdjRRaVpEUkdCZm00TVRhRmFQ?=
 =?utf-8?B?c3A0aFdEdWRyTk4yYmRxS2dWaDRlVXhZYlk3TDYxRU5FLzNaWjR0MjUzZmFZ?=
 =?utf-8?B?WkxEd3h6dDlXYUxHRXhWeXBndHQxaURnQnd0SFRVM1h5dUxxb2JxVWFmS056?=
 =?utf-8?B?R2F5SEhDZDMzSS9KcXpMQnNPZGJySHM1Rm1LNHNXa0FkOHpmRzl3QWlUU21N?=
 =?utf-8?B?WFdtMTNzZXRFRGFzdWQwMTZyMnNtUDVLcU9Cc2lhMjBwN1hMc3AvU0ZLdExP?=
 =?utf-8?B?RnZGRkw4THBsMFVFZ0l1bEF5cTRVTjd6SkQ5VU9Na3kvR0JTWkthVE8xMTNT?=
 =?utf-8?B?eW9ycXpMbklJY2pTOThzY0xjeTFLeDdKcVgvcXdDcDBFbEVYWGQwaVpNcVNh?=
 =?utf-8?B?bkM2dWFyR2RUS2xUZzF2VFJHcE1UK1dIYURSM01nakM3WVBVaFVLZUVzbkVH?=
 =?utf-8?B?VytxOFZrTnlBMk41Q1NTb3dndDh2VHZZSW9KSVlFcDhFL1BFanVZYzNCU1A2?=
 =?utf-8?B?T1pTdDJOdDlCY05aUkZjNGlaOFlQaHl1Z1M1V2YzeGpXQ3B5Z1NLckZmUnNX?=
 =?utf-8?B?Z2M0WklQWWp2c0lFa1lmUFRGak1LNmp6dThDY3E5M0tJbFI4QnBEdCtpZHZI?=
 =?utf-8?B?NGw4WlAyNitvdkdIZE1iRzJxTVJUdHN6eUZtb2dzaUttU2xka3ZlOFFzSUht?=
 =?utf-8?B?cEN4b1NOY0hocEdUR1ZNZEtRZXdHZ3BwU29aMTJieFBHcXVZZWV3R2hEYmdy?=
 =?utf-8?B?Z1ZoTVQ0cHlQQ1pQdkp5Z1hBaUhkOFJ2OElXak0yTU5uRFk0bDFaczdlaWg1?=
 =?utf-8?B?UXBpcTZaYkNBeDF0TjdBeVg4eVlFeE5hRE9YenFKWlJHSnk4blhrekVveDUr?=
 =?utf-8?B?Wk1KSlJpODh4TXR2emFMUXhsV0Z1R29NcnF6bmNlc0VhREJoVldrdkovS3ZF?=
 =?utf-8?B?eHFCbVBDbWpYb0t6cURsaldHNlpZQkN5T2o5UlVDdGJsYmw4U0hvY1NDLy96?=
 =?utf-8?B?Q2RMTXdYOTJ5UzdjaElINmtJZDQvUVBmM0VFU2hSM2MwZWVpN3pGVUJ6SVNr?=
 =?utf-8?B?WTlHN1Q3WFVId2NEV3NieWc4THdoUEo5cDIzSzFqSi8vRFFJdGdPYnNGS01O?=
 =?utf-8?B?ck4yaGJHSjBqbmFjWkMvdEJZQ0hmQXNNMWVya3ZYYXBjWk5sUlJyZnA4QUxy?=
 =?utf-8?B?RFRXZE1kd1F2eWZZQlpZekpBTjlBdk5OZzNhM3dyVkRuWkFWSFArSU1IM2hL?=
 =?utf-8?B?aXJMODNNcXc5bU1PK3RoTkZPYk12R3I2ZjFiTjZjbHV6M1BkMWR3em1hTitZ?=
 =?utf-8?B?bHVJSFlqVlg2dXZNeTZRQVRza3hka0pKaVdsQkJ1YWZjaGZOSjU2eVNFOGJW?=
 =?utf-8?B?QzMyQmsrVnMzVkg5aXhqT3Y1dndVOHlEQXZ6eTJONjBxbDRrT3lVdTZnRWpW?=
 =?utf-8?B?NmtmRjFZUlFnaDBjazFHN1JQVHRUZjJGdEprTW4rdGpjZW52N0RvS1NOckZ2?=
 =?utf-8?B?K2FyaHQ2U3ZxRVpNejlTNHp3ais3UnAzOTBEc0NtQWN3QkNNazdTeXJJbk5Q?=
 =?utf-8?B?amtjbXlnc0F6eGtWOUR1L2Z5MzBWL1JKVnVVTGxUa3RETXZPSUNjY3NkQ1Jx?=
 =?utf-8?B?R1JoM21TOHZXSmY2Uks2Qk1BWWNlMENjSldGd1RwK3BsVFZjd2VkVnpScTJp?=
 =?utf-8?B?MC9wZnhLbDNBTUdKdlJ0elR3LzVXS0hpTXpONkRqSUd3UUpyWG5vVU0yWDNw?=
 =?utf-8?B?N1hMQjJVOUkzcFBPOCt5eFdVUXVMSzJKaHhqZW10SkF6NTZMbHl1MUZjZUgr?=
 =?utf-8?B?dkh4eVh1OGN2TnFZNFZGMWtlTGVzVU0waWNyRElQVWlJbEJXWW8yaEcvaTJk?=
 =?utf-8?B?dUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: be9b9ecd-5e5f-46be-277d-08de13071c9f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 14:10:40.2362 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Nr4cXquob9PDIiVDfoe8A6UMEJES6LDs0yCOALdhHvzn/ZNwlMj5OKnGwjPQJBtPIQrIeVqYiiAaTwt5E1YkljcrJM+92k7qiRalwXBzDz8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4651
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


On 10/21/2025 12:20 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Currently we always disable the VRR timing generator in
> intel_vrr_transcoder_disable(). But doing so on !always_use_vrr_tg()
> platforms is redundant since we've alreayd disabled the VRR timing
> generator earlier in intel_vrr_disable(). Do the disable in
> intel_vrr_transcoder_disable() only on always_on_vrr_tg() platforms.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index b49121b2676c..d8fbbef1ae23 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -786,7 +786,8 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
>   	if (!intel_vrr_possible(crtc_state))
>   		return;
>   
> -	intel_vrr_tg_disable(crtc_state);
> +	if (intel_vrr_always_use_vrr_tg(display))
> +		intel_vrr_tg_disable(crtc_state);
>   }
>   
>   bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
