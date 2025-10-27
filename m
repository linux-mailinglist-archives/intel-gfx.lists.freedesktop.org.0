Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4A4C0D0E3
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 12:07:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF29C10E43F;
	Mon, 27 Oct 2025 11:07:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mFCzNkAL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B89C810E077;
 Mon, 27 Oct 2025 11:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761563236; x=1793099236;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ytd2bRuAuCmi6bQ/kSeQsbLkk+2COTMxKm4l/XnWWdk=;
 b=mFCzNkAL2NpQs4tzS2xA7DoSt9t/G5BLwvgCskU1Spz/mogfHqiru2im
 Rzuw+3tHKMIHhA/lOwgLSVWp0oRojLhZi07oPJxnrp8JOqO8yMEq6MW+4
 uOz25Xhty6BEMLacfM0JZlN7uhdwBaEjm2KdOtKuCLopQcyWOF/Vp2Ql8
 4ZbjtaCB9IlUZEfbIlz3kQYXHj8tNRYzfb8UUwZyDZkH/wXUw1rpmpuAm
 AoC/x9+IMq+OfjEKRtTf/6fVhmNYeHxSrTaLrMoQCuX/DHyV+SPYhYcdB
 219SD2IcfbJTxFwKp3BRLeopYL21INr0lZcXhpr4GWmL3wSpefFyFAuuy w==;
X-CSE-ConnectionGUID: DmwR7GqmRXS0PpG0Q9r9GQ==
X-CSE-MsgGUID: crnf/K+zSBe5kBOstEdXTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="67503673"
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="67503673"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 04:07:16 -0700
X-CSE-ConnectionGUID: t8GEn7TjRvi3gadEEGQORQ==
X-CSE-MsgGUID: /ZiLcwIQSJClu2IdWJqvNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="222226227"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 04:07:16 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 04:07:15 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 27 Oct 2025 04:07:15 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.31) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 04:07:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lrU1rUYS4eCj1O9bA295HW8FQW4MuYz5vpj+Xm8MzvOUhaCrHjXN1q8CIhTHYX1u1t9WiAd/uzqUtMjTvZiIYQp+FiroBSnOoIJOFy29E1APg2HEvzTVAWjXu0pWRj/YSkmIYDN+liFUUEN2MCVDOzvbOEIz3diarKXsAyOzHDKszMllu0gndZw5WE5YY7+o5Bdu0he61SLxEeni4T8GvyNwbB/mOUaxnqJyGeb9KQS3FWUNyG8xV+RQNkhr9eCZDR7KTFI9TV+cKG4mEy6tZDz1WVNl64RLLh4YAxmbsG2ML0OPf9eeXIaHu0Bxu7Lpp8ehhTahsCLapoW2xI8rNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c8zibzKsWK/tdgVHTI/IMvzDYaXwVKww+eabz2wUdQc=;
 b=W6GdeMux+Eh8USdTUVWReHz0YPsEb+6HduFt2H7LJi7PP1eSYsJIpjHN80Xh+G9Y0A9CRgjC98qy5kCOi5oYMOuW1l3EWX4AIN1F1Z451w/j6jHTkz5zXB0QDPUZ2NqFHLRpGqi73sSTmGyME1I8hsPnUzdSwnswisUAjtDe0jtjYZOLJtyP0nnWT+kvy8ZiikpyksINv/zgWOP3AG4BWOBcGeAXnM3h+oVfzUPX29+oR/93qWNqOOD5R6bJyIabJg20NeVRVI1jSEinKfY/5oPJquhVOKgCQjVd3DLjc25hokfN+WaThkrDbsx7KCT5EWdnRUOjJmId3iijB1rhPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5183.namprd11.prod.outlook.com (2603:10b6:a03:2d9::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.16; Mon, 27 Oct
 2025 11:07:13 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.013; Mon, 27 Oct 2025
 11:07:13 +0000
Message-ID: <5cee964e-7994-4d10-a433-b6e492103eed@intel.com>
Date: Mon, 27 Oct 2025 16:37:07 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/vrr: Fix transmission line for Adaptive Sync SDP
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jouni.hogander@intel.com>
References: <20251023081614.2645242-1-ankit.k.nautiyal@intel.com>
 <aPoZ05jth8oGvoGk@intel.com> <b7971dfc-2c75-4a33-ba91-5a2d30339b35@intel.com>
 <aPo-STwN09z7qnFB@intel.com> <aPpE_z3rVxfv5x0r@intel.com>
 <aPtzjSIXxRMMjR42@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aPtzjSIXxRMMjR42@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0055.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d3::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5183:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e8f58df-eb75-4116-46ea-08de1548fb9b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V2hmSndNQ0F0cGF5aFFWaWNjWU8vVzdsbzVYTmFqaSs1UkZNTDFEaUtDbnd6?=
 =?utf-8?B?enFhYm9kSStmRE1ZMmdHTGpKUWRSVU83RTBueXRrdm5wK1BjNFBkRncxcWZp?=
 =?utf-8?B?anJoMVNMYW5kV2tmRHlSM2pvTWE4OEI5eENSRlRXcjlscm1ETmRScmRFTHla?=
 =?utf-8?B?aXlkUFVBdlJ5R015MVBkakE1cXcrS1hlQUllSysxTmVVVTVnNHVEUHI2U0RS?=
 =?utf-8?B?Y0puZkJjMCtqK0RuOXRUcFdCQVpWVndaRnNxY2pRR3RiZUxtYlNFY2tzRitn?=
 =?utf-8?B?YndjU1dDVEgwYmhya05Db3c3ejF3YWw2S0RMNFpzbk5RZ1kxNnBzY1hGOWNJ?=
 =?utf-8?B?Qys4Y29nWVJWQlRzQWtpSEd5clRSd2VyaG9yOGxlZ0hKYmdZRS9xZzRabEdQ?=
 =?utf-8?B?QytFL1NEZTVCalNmMTUzenp1NjdPOS9HMFUwSnBZN2ViajRCb2NpSUtnRDJC?=
 =?utf-8?B?cGZhR1pZaldqT2dyb0MxTFN0M2JvcWU0bzhPUjhyQk5FMjJRbEZXVkJsQXMv?=
 =?utf-8?B?bHRvSVc0VXMrSllCVXh3anM4bHp2a1huU3pGK3ZQbFVEcmlyRlArbktoNm4z?=
 =?utf-8?B?UWkxVTN2VzVHSTYwWVBnVVMwb091T0FxMW5HdjVrZEdKNkFvVEZlMHhITlE5?=
 =?utf-8?B?R3NqcmlXdE1BOXVYcGYzZFZ6RldKY0N2NHVjYW9UTGNaank2WC9qUnhvZkhW?=
 =?utf-8?B?UXJ3MS9KbVdRV2JmSzFhandkUjl6TlYyRXl6cGpJMTlzUk5nSnVmaDZtaFg1?=
 =?utf-8?B?ZmJ6QnJ2TG1Ka0dtWEF2SUVyZTVqSkJaV2NoYi8wT1IyWEZ6Q0tIWmdVTllu?=
 =?utf-8?B?ckwxWE93cXpjdlVyalVqQUdienNybWVVakJmaWxlZWZXYVRybGplTzVSSTJw?=
 =?utf-8?B?UURPemZ0b2tMOWVrM1NmUmJzSnVQUEdZQjI5bnM3bEVaZW9IVlM1RzkzOCty?=
 =?utf-8?B?VGJZVXc2OHZoTjdZQnRmUFNrTjRnYiswbktwVXF3QlU2SUU4L2dtNndTTXo0?=
 =?utf-8?B?VWk4VVZiYVY0bWhWNWVyVWxsSkVCZXhBTnRCa3EwaUJMVE50NUhXc3kwcWRO?=
 =?utf-8?B?S25wN29yYVBUeGMzUlJvOXZBQVkybVNxV21ncXI4TUZ5UUZFYk94WTZnOS9T?=
 =?utf-8?B?YjV2ODl3UWZkMWQ1RDZiRnQwaEprVXNmQloyZ0tHbVJmKzM2Z0QxYkMxRXFJ?=
 =?utf-8?B?RElkcjFPaDNVRkU3RXVjSWFPaU5OTjBycnh5VURZWWZtak9Ga0tyRXpObHJO?=
 =?utf-8?B?VERicXpqVUZPeE5pSkg5aHY0WUkxamlUOGFxaXlFbHp4dWprd1Y0Nk1ZQVB3?=
 =?utf-8?B?ZStuT0xaMVJFckR0aGQxVVRMQjZZeGdwY08wVDNZYmR3dGJ2VEtQNzNBcCto?=
 =?utf-8?B?elRndUJTUGpuNU1MYUhKdWRUN0tDUE0zRk00MU1zWG5nMFJqNC8xU0N5NWtN?=
 =?utf-8?B?VUhXSDN1OG5PZlNJZDA3cVlNQ0NlditabFI5ZUFnbE43UFVwSzRiS0tVVFhr?=
 =?utf-8?B?LzFnQjB0Umw3WW5OK2d3R1RKUzVmN0lwN3p0S0hLUEpuaTZyemFBT3ZTZW5Y?=
 =?utf-8?B?eGpDak5vTjNIdi9ITmZmNjZUTm80L2Y4TFoxc0NtWk54a2IrSFlIblE5dnlu?=
 =?utf-8?B?WEZVRzVhV1Vpb2tFMHZUMGliSXJyOHJsRTcxTldjSmJJOHkycUVQRFEycEV3?=
 =?utf-8?B?a0s3UzhvdVFucG5obkh5Z0YxenVoWVJUcHQvQ0ZtaEFkMGMxQVZNZzhGeUQr?=
 =?utf-8?B?T2htd3JnVGI1UkJzNy9UTWRiNU9Ub1lpdENHTm9VVEpsWDgvNkRYTllKVFJZ?=
 =?utf-8?B?NSt6UDdwQmtwZzFjUWVJOUIzMnJqZW9iRDhKa3RJNTlFSldBYk1TckQ3UG5i?=
 =?utf-8?B?Zzk2QlBsL2JZRlRuR3ovVWFDMUpQczhGbm1VWUJ4YThXOXc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dWFvTkJ5Wlg3VUlJTU9SdDhSWU13UVdBREZvZGtsdzh0V2dEL05SVjRvZEFq?=
 =?utf-8?B?emg1Q1hDWklPdWl2SFJMVml5UDhuZXFGb1A2WU5qSjFKK2NWR3Q2M1AwN3pQ?=
 =?utf-8?B?L3Q0eml0eG9nZXByVjR0aExXMHpSSlY5MnZsQ0ovVW9UamozZ1dzeDMwUm0x?=
 =?utf-8?B?TFJWdEpSMVNCTzlLbWZYcnpsbUtmYksxTitrSE5ITFBXMGY2YzdONTJ6K3Rq?=
 =?utf-8?B?bENvbHJnOElzMWpacDJvT25IVWVqMDI2UjB0RzVCTEcvUU9VVUNQTEtsTmUx?=
 =?utf-8?B?MktXTmN2bmRONEdTeG5jV3FubzZzV3JIR3cvdmdBN1Uyd1lVRUc4Z0NuZFhF?=
 =?utf-8?B?NU1JcDBkWDhHMGRWVzJEWWlqRkREakdkb0E3SEJEWGVFaE5PUXRFR3ZyUUJT?=
 =?utf-8?B?cHZxMWQ0d1dYa2MwWjUxMGZDN3hMSlZEZU5PWW9XNUIzWG5XeTRtY2pEbHBz?=
 =?utf-8?B?Wm9IbnF2ek5Zb3JNdkI2MXdTekZsMXppTW4vV2MxazEzeFR2L3Q0ZXd4eUhu?=
 =?utf-8?B?aVhXQTVjRWdPMXhDcjhyV3BtQXhKZmptVkgyR0xqUXpOWnBFZDFYeU95Yyta?=
 =?utf-8?B?aWVqSXlOKzlKWmp6cW5WOWJSbTkvSXBBS0hOdWh3TTlZMEd2OWdSak9yWUpt?=
 =?utf-8?B?SmZyWXFPbFgxWmpTck43YVZPZ3p1dExjdXNCOTVtcmt5YjdqMDlxQU9KeDNL?=
 =?utf-8?B?dzAxT2JsNDJxMzY3a0V0UlpPNlpGWm9iUjNYMmlPVWFyZFZ3d0pLSE9pbUNN?=
 =?utf-8?B?Vzg2RDlGY09sOFA1U3NKbllDc1ZzTzR6dnU2VFdHOVpCb2hpZWhNbEpoSURz?=
 =?utf-8?B?Z1kwZHF2Z0NzakRvZFYvTHlHdE92dFhrdjNBNUJBVVJocWRURUo5YVBnVGhF?=
 =?utf-8?B?SnVleC9QMk5SNW9XL2ZnZFVZUDdSN25PU2RHY3dqeXFxb2wzdG1EMGVoQWdy?=
 =?utf-8?B?aUcyRUlobnkxN1UzaTNrVWc1ejZQRGFCNmtoRDNMK3daU1l1MWhMK2tDQnFp?=
 =?utf-8?B?M3I3MjJDWXd1N1hablEyLytkVzdFN2cxVkl6TmhiNjZVM3RlK3VpQVYrQlEr?=
 =?utf-8?B?ZUFVOC9MNlRBekREZjhpZC9TRDFTY3N3d0pMRGw3b1p3MklRMEw1b2ZoaVRV?=
 =?utf-8?B?SGJxamMzQTUzeHlNa1JlZ05TT0xXUk5TVmtPbG9EaHhuSm1IaDNLT2hXUzEw?=
 =?utf-8?B?bWh0S2tkK2lxVCs2bXVwN3llc2tnTlo1TzYxNkRUMG50akJKcXNPL0xGRk1N?=
 =?utf-8?B?eUJ6VURCVVIwYi9jQ3BPZnZrbFkyZWo0R1Fqb2kyNFljU3pjaXR3dkpHRys1?=
 =?utf-8?B?MEtrdmJrM1hUNVcyK3JJK0p0OEhLVU9zVitHbXMzQlVQMHA0cEptU1ZVRmRu?=
 =?utf-8?B?L1ZIOHB0M1FRZWd2V3N6K3o3cHV3OEd4MkdlcDlQdjJMWDBsNUltY0l0TnlU?=
 =?utf-8?B?ck43QXc3SW1Jam9lWXNHR1l3eFlxTFRtYVBQZUM3K1FCNVQzWklXdGlRN1JL?=
 =?utf-8?B?bTEyeVl4cHB0dnFaSVIwd1VlUVV0Rysxekl1YXp3V3pHR0s1TU9WVXptNkpZ?=
 =?utf-8?B?TnhjcDRUNC9BZU1wN1ZRZWk5TFNVOURYTzN3UDhzUFBZYkwxaHB6SUlET0Va?=
 =?utf-8?B?TjROUzF4Qkxocys3WWpHMHFiV24xWDBTTmk3RnZYTlI1WVYyeDlCbFJQcVhk?=
 =?utf-8?B?QjBLakoxZ0pQWEl0ZFhXa2hBSkx2WkNUSlFZVWlFVHZybWUzazhQWnV5WEQ3?=
 =?utf-8?B?Nm02SmJFZEFiSTB2VkN4alkzWWd5LyswUkY0YU5XVWpvMXUyZitENGZUdU4r?=
 =?utf-8?B?VWF4WVBOaTFsSXNOMUpnMlg0YnRybWFyMktTb2VmZ3hLU3ZvdFRnMzVZcDNV?=
 =?utf-8?B?ampTZWRCRnZrWFdIN2JReFpxdG9ySmJoL3VYcWtIRkpFR1RxOXpMV3paVHBs?=
 =?utf-8?B?ZXBmOWxnVzRWMWFWU2Rnc1J5TUZyS0lNZmlsOFI1ajk3SXd5dUUxSTJzWG1V?=
 =?utf-8?B?MGQxMjhjOWVIbUgzSVdyRzBxa2tEZlVCZHd6T2tvUDE2WXFlYXZUbGpUTkgz?=
 =?utf-8?B?OG1DRTVQTW50cVhhbGJWS1FyWXhLVFBqaWZqYlNHR3NHeHUvTThiLzNWMEdS?=
 =?utf-8?B?WGlHRXRMMGtXQytYR0lrL0JRdnlPSmk0STNUeEZzYlVFelFnbk1qS2tTQWxT?=
 =?utf-8?B?RHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e8f58df-eb75-4116-46ea-08de1548fb9b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2025 11:07:13.7684 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3Jvk5Pt5tJWWr5DrHO5gvrrXLKSZvR82E2uJkAixmrnWjiAgJjetHBi5d0dLxazkEEYBuBFlvKC9hU1zHGA55CyeNyEdpLukIhz3zH1WfBg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5183
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


On 10/24/2025 6:09 PM, Ville Syrjälä wrote:
> On Thu, Oct 23, 2025 at 06:08:47PM +0300, Ville Syrjälä wrote:
>> On Thu, Oct 23, 2025 at 05:40:09PM +0300, Ville Syrjälä wrote:
>>> On Thu, Oct 23, 2025 at 05:57:02PM +0530, Nautiyal, Ankit K wrote:
>>>> On 10/23/2025 5:34 PM, Ville Syrjälä wrote:
>>>>> On Thu, Oct 23, 2025 at 01:46:14PM +0530, Ankit Nautiyal wrote:
>>>>>> Currently the EMP_AS_SDP_TL is set to vrr.vsync_start which is
>>>>>> incorrect.
>>>>>>
>>>>>> As per Bspec:71197 the transmission line must be within the SCL +
>>>>>> guardband region. Before guardband optimization, guradband was same as
>>>>>> vblank length so EMP_AS_SDP_TL set with vrr.sync_start was falling in
>>>>>> this region and it was not giving an issue.
>>>>>>
>>>>>> Now with optimized guardband, this is falling outside the SCL +
>>>>>> guardband region and since the same transmission line is used by VSC SDP
>>>>>> also, this results in PSR timeout issues.
>>>>>>
>>>>>> Further restrictions on the position of the transmission line:
>>>>>> For DP/eDP, if there is a set context latency (SCL) window, then it
>>>>>> cannot be the first line of SCL
>>>>>> For DP/eDP, if there is no SCL window, then it cannot be the first line of
>>>>>> the Delayed V. Blank
>>>>>>
>>>>>> Fix the EMP_AS_SDP_TL to VTOTAL - (delayed vblank_start - SCL + 1)
>>>>>> Internally the HW computes the value as VTOTAL - EMP_AS_SDP_TL.
>>>>>>
>>>>>> Fixes: e1123e617e51 ("drm/i915/vrr: Program EMP_AS_SDP_TL for DP AS SDP")
>>>>>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>>> Cc: Jouni Högander <jouni.hogander@intel.com>
>>>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>>> ---
>>>>>>    drivers/gpu/drm/i915/display/intel_vrr.c | 12 +++++++++---
>>>>>>    1 file changed, 9 insertions(+), 3 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>>>>>> index 92fb72b56f16..dd81d2133aba 100644
>>>>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>>>>>> @@ -655,18 +655,24 @@ void intel_vrr_set_db_point_and_transmission_line(const struct intel_crtc_state
>>>>>>    {
>>>>>>    	struct intel_display *display = to_intel_display(crtc_state);
>>>>>>    	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>>>>> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>>>>>> +	int transmission_line;
>>>>>>    
>>>>>>    	/*
>>>>>>    	 * For BMG and LNL+ onwards the EMP_AS_SDP_TL is used for programming
>>>>>>    	 * double buffering point and transmission line for VRR packets for
>>>>>>    	 * HDMI2.1/DP/eDP/DP->HDMI2.1 PCON.
>>>>>>    	 * Since currently we support VRR only for DP/eDP, so this is programmed
>>>>>> -	 * to for Adaptive Sync SDP to Vsync start.
>>>>>> +	 * for Adaptive Sync SDP.
>>>>>>    	 */
>>>>>> -	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20)
>>>>>> +	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20) {
>>>>>> +		transmission_line = adjusted_mode->crtc_vtotal - (adjusted_mode->crtc_vblank_start -
>>>>>> +								  crtc_state->set_context_latency +
>>>>>> +								  1);
>>>>>>    		intel_de_write(display,
>>>>>>    			       EMP_AS_SDP_TL(display, cpu_transcoder),
>>>>>> -			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
>>>>>> +			       EMP_AS_SDP_DB_TL(transmission_line));
>>>>>> +	}
>>>>> Pretty sure we are expected to send it at vsync_start.
>>>> Hmm.. then do we need to move vsync_start too similar to vblank_start
>>>> for optimized guardband?
>>> The vsync pulse location is dictated by the timings.
>>>
>>>> If we do not move vsync_start, and set the transmission line to
>>>> vsync_start, it will never fall in the region SCL + guardband with a
>>>> reduced guardband.
>>> Only if the vsync pulse is early in the vblank. That's up to the
>>> display.
>> Oh and I think we should get rid of that 'assume_all_enabled' stuff
>> for the AS SDP, and account for it only when actually needed.
>> Which I *think* means PCON or panel replay with AUX-less ALPM.
>>
>> There's also that t1 vs. t2 setup time thing for the panel replay,
>> which seems to be telling me that we could sometimes transmit the
>> AS SDP later. But if I'm reading that right we have to switch to the
>> t1 (vsync) transmission line whenever we switch to live frame mode,
>> which I presume can happen basically at any time. So maybe we can't
>> actually use that t2 transmission line.
> Ah, apparently we have to always put t1 into EMP_AS_SDP_TL, and
> there's some other logic for panel replay to use t2 when possible.
> But since it's all dynamic we have to use t1 when calculating the
> guardband/SCL.

Yeah t2 will be taken up by HW based on PR_ALPM_CTL adaptive sync SDP 
position (to have either t1/t2 or t1 always or t2 always) and also what 
we send in AS SDP payload wrt to Fixed Vtotal, Fixed AVG VTotal mode.

I agree with your suggestion above. For PCON, VRR support still needs 
work so perhaps we can skip that. Makes sense to always enable AS  SDP 
when Panel replay with Auxless-ALPM is supported.

With that we can use Jouni's patch to increase the guardband such that 
Vsync falls in the required region [1], effectively 
`crtc_state->vrr.vsync_start + 1`.

I was trying with the above changes suggested, sent also to trybot [2].

But now I see that we have a problem with LRR on such panels.

When switching to lower mode with LRR, the `vsync_start` changes, which 
results in guardband being changed.

So seamless switch to the required lower mode cannot take place. :-(


[1] https://patchwork.freedesktop.org/patch/682984/?series=156341&rev=2

[2] https://patchwork.freedesktop.org/series/156569/


Regards,

Ankit

>
