Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71929A4F901
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 09:41:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15F9510E70A;
	Wed,  5 Mar 2025 08:41:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c38eZ+28";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E85D10E704;
 Wed,  5 Mar 2025 08:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741164097; x=1772700097;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WDqdbOoHM15Q1KxYQj/QrSgOlJbXiZun24F5qnsPEiM=;
 b=c38eZ+28rmbkWDlnnYqs63tZJchK4VL2lH/uy4IXTYAosf5H7jh7aGR7
 dSDm7W2h5lYG/8gR/WQH0EQ4sqDHJBaZ0tvmkDv1Ik7tktteDPkhda+GZ
 a+xM9rRTgKNXtrQ766sTeclAibfF+cL1gDMyLuwFyHbfp7WNu9T0QRbnK
 Vz2YCm1Va8Y04/nA/glmC17NONo8cLJAr40EJQ8V6pZSZCytbxVvoiPK4
 gC5z/3I34vOphnySEQdWfiKrhxBaXMDkQiW5BnltlpHbiApM5WNQSllS3
 a6k41ZcsWDCQ6rgoWqPxWJn6CzY0QIkoC3KI8y7grl1TqDPToAa09fLLi w==;
X-CSE-ConnectionGUID: F77G9GIbQgeVdc7/AduO/w==
X-CSE-MsgGUID: kopzCqE6Q/2imaaL9PU3lg==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="41293177"
X-IronPort-AV: E=Sophos;i="6.14,222,1736841600"; d="scan'208";a="41293177"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 00:41:36 -0800
X-CSE-ConnectionGUID: k/VLiipiStOxDFio2LmnfA==
X-CSE-MsgGUID: XLxvks1vRuKsXuu7B5DNpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,222,1736841600"; d="scan'208";a="118645747"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Mar 2025 00:41:35 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Mar 2025 00:41:34 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 5 Mar 2025 00:41:34 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 00:41:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RNTI+VzYDF46GwIxf9kiW1TLnPg4YVHJM2jS/CVny45aYOQdr/75HMv0lYrJJr3XduVwCNkts54gXkkqnMz3V11vencurquKuYzMCsAmeiFREs+ADeXWmlr8m3L23p4nr1qNXcRyxaAEjiPH0ArDespVSMUNo4RvBZ2JBQ5Wy8cK0BvPFX6gZGRq01+zHVMpgO3fj126gYnSLUkzp96a3EIT3ztJYcK5atfu216u9dg7b6TZWhmcD9TC2lUpKLuhsa5LF44KSTj/Wo8Ql5nBRBJ6Zs02N4PtE/fC0Nxkp6zCstpdqbiWWDmZ+TktuW87ZmBlbS/GmmY5+WTnBbtwgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TMtW0/wBMrAlawoqZ9HH+1viXcJil9y6mKQSnbPaZHc=;
 b=eUHbI6y1cMGDAhMIj1DVYzHAcC99kZ8EJz5ZBP/qxlPT3ffEWpOZU2vIAS7bW3sPmT6lt7AuLmK3tOqaIYOKwk28kg0V8TP/xfeOTJK7Hp6e7+OqMjs2JCnW2rGxXureWvFfXbhrJ/SCGUo3MW9nsvCjQLsOpnz8C7BtEPxPCYq1OmCEWNf/JDHz5MrlbU29bYRcGs5LdT1cKLYGSlMbkmGbDzC2Zi7VhSyzSXIVot8icwvTGw2oTCUOHEKUgWJyAfbYHFJt2V8/fA8bF7MlT+zTh3QMV8+t6+vpLi9O9Ok5iGUbqOMmPxG9Z18U6MM6no7DWRPVmnyK2FjZMLPm2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB7047.namprd11.prod.outlook.com (2603:10b6:510:215::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Wed, 5 Mar
 2025 08:41:29 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.025; Wed, 5 Mar 2025
 08:41:28 +0000
Message-ID: <5f674c8e-3ac5-4e8d-9e9b-19e59d28a96b@intel.com>
Date: Wed, 5 Mar 2025 14:11:21 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/22] drm/i915/display: Use fixed_rr timings in modeset
 sequence
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
 <20250304081948.3177034-16-ankit.k.nautiyal@intel.com>
 <Z8dLXSTwoOFdOm7a@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z8dLXSTwoOFdOm7a@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0028.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB7047:EE_
X-MS-Office365-Filtering-Correlation-Id: 127d1051-7cdc-43b4-197d-08dd5bc1857d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d3FBZ2xVWE94Yit2NFNnVmN1Qy92aXJlbnoyWDhra0FYaUc5UGppS2lUWmlL?=
 =?utf-8?B?TGI5SFBrNVAvajk5cWZzWEhIcWx2KzJFRElkRm10Mm5JM0s1d3MyZmxrdG50?=
 =?utf-8?B?cGxLU0xzMmNTdE5XTUEwVXB3M2tWRFptV0pSeXU5L01PTXd3ZEY1a2h0eFBN?=
 =?utf-8?B?MUMwQUNsVWZRQU9mOUNvNlRDaVNiUWt2eHB3U1ZrSElNQk4zN0ZIaXpFZnEw?=
 =?utf-8?B?bnU4cGlkYkhrMzVlVVAyajliZmlLNTd6dU5RaVByS0ZZMjVIQmNIcm5aNjFt?=
 =?utf-8?B?VUtGVlFQVmo2Y1V6Y2ZMSnFGdzF1bTVTT0FxVFdQaStudkRMNFlsbkloR0JU?=
 =?utf-8?B?Tkt3WXdWNE9weWZyU05Cakw2aElNWElEUjVjSTJhSG0wRlJCUG5WeENKRTVk?=
 =?utf-8?B?YlBIVlUrbWhnSnM3UDN3Mkt4VG15ajVsbHR3eW5peGI2QnRMV0VUQXdPVW1t?=
 =?utf-8?B?aThMY1ZZYkF3ZW0yZUZvRUEzeExYVFVVQkJSbEJtT3B3ZTNtN0lldzhiRkdL?=
 =?utf-8?B?RDhDMFZMM0Z6RkhjY3BPSGpOcHNiSVJLaS9BZ2U1OVpESnV3VlZpU2ttTDJq?=
 =?utf-8?B?WndzajhGcHpKMFNtQU93aDVZNk5sdjgvT014d1QyM2hBNVo4T2diMnoyL21Y?=
 =?utf-8?B?NzI1VGVnaVRtREoydmRpbWx3VW4xakdtbkxvVGloRU1xVG1ZZFNXNGlXRGVu?=
 =?utf-8?B?VldndnVMK3psdEt3MzE2WFVqZEp2VmtlZmEwYmdvbXd0blN2MGhqallGdFJI?=
 =?utf-8?B?eTdVMUNIQzdQTGpKN3JvMVV5ZXpmckdPMVpVUUN5VUV3dURpY2hLcWdTemxN?=
 =?utf-8?B?U29FQVluVFE5M2tuZmR5SkN0N0NQRy9sdjJDeUx0ZUpUYlN1TlBXMExqblVo?=
 =?utf-8?B?UUkvNEZKSUg4MW1zZ0xOYjQwZ3lKUWxVNjZiSzJheDBNOUpsdUwzN0N0WVB6?=
 =?utf-8?B?bTd6WEZzQUNTcm1zak1WYTJUeGQzck5HWkpHUHFBVWdjMlVrdUhZa3l6M3VQ?=
 =?utf-8?B?UjIyMFdpU2o4aVlUMklBMWVsUkJQdDJTaHFQSnFJMEw5d2Z3WkxuMmJUMnBx?=
 =?utf-8?B?akJmL3oxcnF1NnErNDY2V0Y0V3VtSUd2VUh4V3pOSTBRanNWRENzQkJOLzRK?=
 =?utf-8?B?OUFUVGNxb3c3RDBSRHl0bDdxQ2FseGhKb3RmRE1XQ0lsRW9vZDZseFJkQ2Ix?=
 =?utf-8?B?L2QxRzR4QTNRUGVxalZpWDhRVllrVjN6M3UwUHVhRXllQjJyaks0ZHYzWWxa?=
 =?utf-8?B?Q2RzTkt2ZW5waExjaENOUFUyeExMS2xkbXJvY3JCTitRQXNDdm1xNHEvUU51?=
 =?utf-8?B?YjJjdTEvaXc4RlhzOUlPMElJakpmakxoVHg4WjN0eWhtMlNBaUJJbWdTd0dO?=
 =?utf-8?B?RU90UjhsZmNZMGJlZUIrdUtOVzR6YlFLdmdjcGpmZVRtTXZlbFM0dlBrQU44?=
 =?utf-8?B?dG56SXRkZkhDY29DamFoNS9zRWQyeE9PK3JWay9SZ2IxQ243bEFoM0prdGUw?=
 =?utf-8?B?bWllSE1EZWg4WmZ5V21WbG9PK0JHLzVpTGRSalZoM1VTOFZ2REFzbCsweWlR?=
 =?utf-8?B?WXdOdW1ac3lvaXo1VFpMd1ZqUkRnMnZlUWRrckhJVWoydFkrVkZ6aHVXd0lO?=
 =?utf-8?B?ck0zMTQrTG9XTVpZWGZiQmYzTW05bXU3K3RvL3o0TEpiMituY1F2d2tXZSt2?=
 =?utf-8?B?WTBmOWpwbkMxMG5nNlAyTEVlbEpzTlBQcmpVdDB4aWFTeUN4V3VSUzV0OUZm?=
 =?utf-8?B?V2NyTUs5ajdvWlNPRTFvR2xmdDBwdGVJWjUxSWFFT0ZMN01XWisrVkhXUkMr?=
 =?utf-8?B?anU1WG1mUmtKSG14OUtUMUdsK1pzNjkzTnVBWGtONmErdkR3Y0dGSWR4VWxw?=
 =?utf-8?Q?ee0Xw9JlE6jf9?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TzRpbHQ3SjhJcDlnd2QrYjRFanBadXJHSW51TWZxM2hrL1E2T1I1K0x2Rmlz?=
 =?utf-8?B?eUdleUxCK055dzVndHJpSStFTHNQd0g4RDBZMmpwU2VPUEtaTHgyVmoxam0w?=
 =?utf-8?B?SElDVWQ0Y3diaXo2dDBRQ1lvbkwybTZSWUdGSUtmektIMmFHTmF0YkxLd2RQ?=
 =?utf-8?B?YytTOEpPT0trQjROMVVTRmNQQWZJNkFVeXl3OXB2cVIwNVpka0t6bGlJSjRO?=
 =?utf-8?B?cDNFcm0vYlMxdXRucUg5M3Iwb3dRZVhnOHY3QzJzMVY2QUMrcEJQd05INnN4?=
 =?utf-8?B?UlNlMVRkQXQ0ZFI0bzE5WDZudG9NUk9zNU85M1VxQnFQZjh4WFM5TVNDWTlN?=
 =?utf-8?B?YlNsT1RPeXdtUks1OEhCcTB5Rzc1ZnlnSDhER09FVUU1RFRxbk1vYUg5eEd6?=
 =?utf-8?B?SjZuUkV1NDlpOTd6SlFjSnFXM0lSdGc4YTFlM0thZ0NvQnp2Y2tEOUZ2UWVw?=
 =?utf-8?B?dk5oTktTMURvNjhxa081VG9RUEZMRXFHbVltYXYyNjdVeXZ0LzVDS2xzMm52?=
 =?utf-8?B?V3hGK2xReHBwSU4zR2tDQUFQbVloTHFLMmJ5Si8rK1YySlFYVTJ0SHM3M2xJ?=
 =?utf-8?B?cXFMK0xlZ1JTTllRajVWa0VwS0NQRVVHTmJzeHpIWHRQM1k1TXZZRnFRTmhU?=
 =?utf-8?B?dENBS1hnS1BUZGp6ZEhGTHlPcVJTMWpwczJ3OVBDS2ljcVB3ellRdHpPdFFC?=
 =?utf-8?B?RXoyb2R3aGFqWkZNa0dYaEJKcGVhbC9tb056M3AzM3FaMnllWWltTUthMnBk?=
 =?utf-8?B?K3k0WEQ3allKVU0wQkNHTjZVVnFjSFdBMlNPcXpEVlBGeWhVYXhsaVpnUUV0?=
 =?utf-8?B?eW00R0NnRVN2YzBJcWlDekEydTIzM01zVEo3VUlFbHVidlg1RVc1c0N5S2tk?=
 =?utf-8?B?cndWSm1PZDMwTkViWkVHTDFIQ1RyV1dkSjVRN2J0VEpMMkJ3NEFXK25QQS9p?=
 =?utf-8?B?dTNnZFVHTFlGZXlwYmpQSUNUSWl4NGtJdTczTWxEMlNVYkZJL1pXcmQ3bGow?=
 =?utf-8?B?QlJnMm40RDh2WFNGTFFuQzcxWTh1WjBxa1JNa0RqMzlUU2NhajBTQlNxY08y?=
 =?utf-8?B?eU9nWjdxV3lmOTNiSDNtY0pUZEtIcTBOM3Q3T09Ra0N4czBiM01iNHBZRFNN?=
 =?utf-8?B?MUxsQU4rSk54d2hwcVQ5TEdnYmdmZS82WVdaNmlGb3FiTFJpMFlxRUFLaUV0?=
 =?utf-8?B?YTZYTnZVT01xMUJrUy93dVVjWi90N3ZFNWJTZ2FZWTlxRVFtODM1OUFtRmFr?=
 =?utf-8?B?dDRlQ0lXOEVWYVZXSWFyUFhlU0FjUkcwM1l1MGhQMERvQm1RcVNvOWNYMjVr?=
 =?utf-8?B?Z2REKzVPQ2FXWXI3QzVVNmNBWGRZTDBSWXF2ZGhvbzRaRzhYVGhGUnZEMFhS?=
 =?utf-8?B?MG9GTVBpNklwMXhoRG9VN1FIMGpad0ZPWjE0cEVPTHRRRzBvcXF5WmVoS1pR?=
 =?utf-8?B?UHQvcVRPbzNhV1BzSmhwUkdnTE81MWtjelcwcGFHMWlROW1GT2pjRDhNS01R?=
 =?utf-8?B?emhPYkdCNWpFYUJsN0wvRmQ1d0V1aVZwbldycStLNEJieldPenhlY0s0MFRn?=
 =?utf-8?B?cUgvekFhbXFNNkJxYTlDRTR4T1VBQ210WUMrVis5VVVNRnlxMkdjNkh3WWN1?=
 =?utf-8?B?ZFFrUCs1QmR6OTR5MXhNMlRzblExR0c1N042VWN5SDBBMEZ3bXNhZ3lPZ2Vu?=
 =?utf-8?B?NEt6emVaRWNtbWpQUXpGb3NXSnVFRk43NEh1QnBrK0dMQ1hJS2tJWUgwbmN4?=
 =?utf-8?B?TTJVVnB0ajBncXhpUUlVOGhDMmFEZi9ucnFlcjFjZzFSVTN0NVZCbjJISGxT?=
 =?utf-8?B?NFh0TkFueFFVUFlMbDVPa1pjYXFIR0w0MktqMTI0K0VMOTk3Z0tYcTdXaXhP?=
 =?utf-8?B?Tnc1QWNWckUvS1RnUG8yNFR3NGJsNEFtSnNPeXVicUlKeDVaV1hpVGZEcnZJ?=
 =?utf-8?B?dm1jNDJFYTNqdkozSTR1Snd1T3NBWVZQMm5hUlcrMzltazhjSUpKOVdud1Jh?=
 =?utf-8?B?eS96S0VRZ09ET2RjTU5CZTY2YU1uVVZ4aEtQeU5zbS8rUWpmMU5KN3R0ODJH?=
 =?utf-8?B?d2pNWDVML1BiWVlEejR1dnYrU3E5b1g2TVJwY3ZvUWxaL2tjNUJ4eDRoZ3gz?=
 =?utf-8?B?M2NJVWpZK1NnUzdodVkzditQakc4bGVTc0UyNktCTkYwaEVwUW9GWDhuRm1u?=
 =?utf-8?B?eXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 127d1051-7cdc-43b4-197d-08dd5bc1857d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2025 08:41:28.6648 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FJg+bwluYwk/B4C4UA3reJe0YhEEpcYa0eWi+fx34GbnnJt7xJnc7IaMZZxCjiLdP4s+Pf5TbMQ6M+9EbZLY/gZXDbH7UAV/a/cVzcH1ztk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7047
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


On 3/5/2025 12:20 AM, Ville Syrjälä wrote:
> On Tue, Mar 04, 2025 at 01:49:41PM +0530, Ankit Nautiyal wrote:
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
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_ddi.c    |  5 ++
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 ++
>>   drivers/gpu/drm/i915/display/intel_vrr.c    | 59 ++++++++++++++++-----
>>   drivers/gpu/drm/i915/display/intel_vrr.h    |  3 ++
>>   4 files changed, 57 insertions(+), 14 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index 20fc258a4d6d..6f083c28c455 100644
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
>> @@ -3273,6 +3274,8 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
>>   				   const struct intel_crtc_state *old_crtc_state,
>>   				   const struct drm_connector_state *old_conn_state)
>>   {
>> +	intel_vrr_transcoder_disable(old_crtc_state);
>> +
> This isn't symmetric with the enable. If we do the enable just after
> intel_ddi_enable_transcoder_func() then I would like to see the disable
> done just before intel_ddi_disable_transcoder_func().

Yes you are right. But as per bspec it seems enable and disable 
sequences are different.
For enable the sequence is: TRANS_DDI_FUNC_CTL -> VRR_CTL ->TRANS_CONF

But as per bspec: 49190, and 68849for Disable it is: VRR_CTL -> 
TRANS_CONF -> TRANS_DDI_FUNC_CTL

Though I am following the spec, I am getting issues in the disabling 
part. Specifically WARN : pipe_off wait timed out for some platforms as 
flagged by the CI BAT failures.

I can try the change you mentioned to see if it helps.


>
>>   	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST))
>>   		intel_ddi_post_disable_hdmi_or_sst(state, encoder, old_crtc_state,
>>   						   old_conn_state);
>> @@ -3521,6 +3524,8 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
>>   
>>   	intel_ddi_enable_transcoder_func(encoder, crtc_state);
>>   
>> +	intel_vrr_transcoder_enable(crtc_state);
>> +
>>   	/* Enable/Disable DP2.0 SDP split config before transcoder */
>>   	intel_audio_sdp_split_update(crtc_state);
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index bd47cf127b4c..7dbc9b3bdbe4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -1049,6 +1049,8 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
>>   		intel_crtc_vblank_off(old_pipe_crtc_state);
>>   	}
>>   
>> +	intel_vrr_transcoder_disable(old_crtc_state);
>> +
> Same here.
>
>>   	intel_disable_transcoder(old_crtc_state);
>>   
>>   	drm_dp_remove_payload_part1(&intel_dp->mst.mgr, new_mst_state, new_payload);
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
>> index c1387d3f60b2..97040ab9ed86 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -456,12 +456,6 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>   		intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder),
>>   			     0, PIPE_VBLANK_WITH_DELAY);
>>   
>> -	if (!intel_vrr_possible(crtc_state)) {
>> -		intel_de_write(display,
>> -			       TRANS_VRR_CTL(display, cpu_transcoder), 0);
>> -		return;
>> -	}
>> -
>>   	if (crtc_state->cmrr.enable) {
>>   		intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder),
>>   			       upper_32_bits(crtc_state->cmrr.cmrr_m));
>> @@ -473,14 +467,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
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
>> @@ -614,6 +601,50 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
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
>> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>> +		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>> +
>> +	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>> +		       TRANS_PUSH_EN);
> IIRC push should generally be set before the VRR_CTL enable.
> Perhaps doesn't matter here, since the transcoder is still
> not enabled, but would be nice to be consistent with intel_vrr_enable().

You are right will change this.


>
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
>> +	if (!intel_vrr_always_use_vrr_tg(display)) {
>> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>> +			       trans_vrr_ctl(crtc_state));
>> +		return;
>> +	}
>> +
>> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), 0);
> Should probably clear the push enable for good measure too.

Will clear the push enable, while disabling.


PS: I had tried both with and without clearing the PUSH enable after 
disabling VRR, but the "pipe_off wait timed out" persisted.


>
>> +}
>> +
>>   static
>>   bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
>>   {
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
>> index 514822577e8a..c81f98f83b58 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>> @@ -12,6 +12,7 @@ struct drm_connector_state;
>>   struct intel_atomic_state;
>>   struct intel_connector;
>>   struct intel_crtc_state;
>> +struct intel_display;
> Leftover from some other change?

Sorry about this , it was indeed leftover from other patch.


Regards,

Ankit

>
>>   struct intel_dsb;
>>   
>>   bool intel_vrr_is_capable(struct intel_connector *connector);
>> @@ -35,5 +36,7 @@ int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
>>   int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
>>   int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
>>   int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
>> +void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
>> +void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
>>   
>>   #endif /* __INTEL_VRR_H__ */
>> -- 
>> 2.45.2
