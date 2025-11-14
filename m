Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6BEC5F160
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 20:47:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A12310EAEE;
	Fri, 14 Nov 2025 19:47:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CPxQWUhB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A1DD10E25E;
 Fri, 14 Nov 2025 19:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763149631; x=1794685631;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=+38gm8lThVF+N5h1G3KfRI4/1KV68qzJhmdu/IakU9s=;
 b=CPxQWUhB92K4+Gh8mp44x3FZ/Zwu3sEPodZJlLRAlfdv+TwKjMYHAWh7
 en6Gv/iVbI3UU1GPUFfWl92j1XqKxVruVAgRLpi1xfRpTeT58wQCRCZK1
 dXSWbbZPEFG+ezd+4+1i7bTCVHj0+2SPgBgErAt3aK7Ni5vjWOHlRZ+m6
 ZdDqLxPlN9i3eHZCK3a7FLFIdIjskRdVrcp+VsCv2yegqXxl3e40cH0Sd
 vKAdlzYlrltTVHeK92EmCQrIsdWYMd1xYeWsSFsn/iGRm907SMhP/9r6s
 efGMMuSraKNyumMQXvFYUwN3+vpoErN/W7GUHz5SXUUoCZ5VdqXOQ0H5G Q==;
X-CSE-ConnectionGUID: m20zgVt6TduR1KmzULRLqw==
X-CSE-MsgGUID: HTkHShVGSmS3eA1TDdAgVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11613"; a="75851685"
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="75851685"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 11:47:11 -0800
X-CSE-ConnectionGUID: ZHX6oh9XRXCtpm+isZJKLg==
X-CSE-MsgGUID: n4Zb9lD+TOiFJS8DOPjtDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="190287566"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 11:47:11 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 14 Nov 2025 11:47:10 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 14 Nov 2025 11:47:10 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.12) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 14 Nov 2025 11:47:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EmilisilDDqXI1sbj1CB096wRFQ2Z9hAkV5Kxk5tHVjhhCOc2dst4l8nKQJ6z9cqlRzyTJpHIRV3NvnHKdJg8ECIx3AB0Cey6/Obq5fpwym1cczT0CxviMotg91i4P9lXPvE96T4VwZp1jSIfSiKqPQpzaQv6oKyryFyd0fzxkvmFmJyO2jig3CS0asXNaF9jwJpPufnuujcb1AH9vUITOyItOD0erbwBTbpTy4GfNrYxVoCSHVWrz9E0Du8hsbLHmm5gPuahZkuOattNQE/ry23n7x9N7PuimBefWHnhkZHFGV3vUSRtBXzch3N4VFSQF0X1Hs1SEKyAlR0CtzCUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W/eKiW1ZwCMhM2wGqddTY3H1N+t1BSYScdM+chIqqek=;
 b=tN0UUflUgKuJTI5M9abBAqYzCMs3afVPrOiIGWK773v3zIZ/3eJRgf1zm6UffueFfxjeaN7pdCkDwpzcnF/+nhO4ATXxlofQ2ViANSu4uGwszNAQVPQGCV+HuSqBoXDLLFdkFdUHyAzwCP5V3kUI0bJdBkhFUHgN6d6uHV1G3Yg/n2l84wHCcJuY2yTfIqU27BxGyXyz5WqBzbCYHj1Fn0bCtBxeXu+4VLp6LnI0GLVMGEkYyoxsAXKgWlPkgeHDNYlRPCbWOxZKVaALml173we8Pycp0Gc1YO0i3+E3FAhcR2Mu6uQdLgkAEVRh4Hy3Dfok0dcvc2nMVDUy2FS75A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ0PR11MB4925.namprd11.prod.outlook.com (2603:10b6:a03:2df::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Fri, 14 Nov
 2025 19:47:02 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9320.018; Fri, 14 Nov 2025
 19:47:01 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <aRTJq2h7ic7EcpL6@ideak-desk>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-7-ab3367f65f15@intel.com>
 <aRTJq2h7ic7EcpL6@ideak-desk>
Subject: Re: [PATCH v4 07/11] drm/i915/xe3p_lpd: Extend Type-C flow for static
 DDI allocation
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
To: Imre Deak <imre.deak@intel.com>
Date: Fri, 14 Nov 2025 16:46:29 -0300
Message-ID: <176314958906.3698.11640605946760436324@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR05CA0105.namprd05.prod.outlook.com
 (2603:10b6:a03:334::20) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ0PR11MB4925:EE_
X-MS-Office365-Filtering-Correlation-Id: 2400d158-5f66-4389-986f-08de23b69449
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cEYwZW1YemtLMUNjdDk3TGpNSytjMk5sSkd3enVSSTJzYmNVc3Y4NkJjc29D?=
 =?utf-8?B?RHhocGRrd3JWSFVDSmJhZ0xWQW9nRE9RaHY1RHZ0MGkxL1RDbVQ1SjROVWdO?=
 =?utf-8?B?WnNRSFNBOEhjS0lReGVWdVQxVVRKeTJycmF2ek1yakNEWjZwTFkzNTNhb3px?=
 =?utf-8?B?Q3lxY1RteU8rRVJWN2Jkb3ZEOVNzQWlpSnNhTU83OGxlREFmaW9BMTBrZldW?=
 =?utf-8?B?T0pNWWttbXBZbm01VmpwTEh1cGJPV29ndTJLY1d4ZFg5WkIrZG9QZHdpTmN4?=
 =?utf-8?B?RWlCaWxlN3JwZ0M2UnJXZkZQWEx2MStIdzhXRWtMMDlhdHFhcVVhRS9OR0Uy?=
 =?utf-8?B?Uk1SY29Eb2d6ellkRE5LVy93RGdoNzhHTDZFQ2Q4MElxQStJdnFmU1YxUTFD?=
 =?utf-8?B?em1rMmdObkUyWVdaMXgzTTVCWnFDdUo0QllIcCs3cUpMOHQvT2Q1ang2Zk5U?=
 =?utf-8?B?T1FmWGdLZUoyOHJGMzJ3eXRlNFBCcDlZZEtZQnI4eTJWU2NmMjZacnBCZHdK?=
 =?utf-8?B?cmJHak02OG5zcW1UZUtVbGdrb2M1b2I0OVRWRnlEMS9TMkdxZkI5R3RxUHBk?=
 =?utf-8?B?bVh3UEdwWFNNdG1nblhJSk9zWWpTcHNMUk83UFpGcVZZVnEzVDJiTk1kd2pu?=
 =?utf-8?B?WHNFMmpzWXFIam95V1R3ck9iWFltbzM3TjBqWmowaWZhcnZTVTZpV1FNMCt5?=
 =?utf-8?B?M0QyTkIwdytNRnhDbmhUNkxSdFRLcjh2bHF1NE9GSHJtc3ZyTEJubFpzczYx?=
 =?utf-8?B?N2ROTGQ4NDBUOTFKRXBqMithWnFrRlA2TXdEUStBQjkwVUFlNUxlMXJsb3Vh?=
 =?utf-8?B?YjhXV0tLc3orVjRnWXkvWXRQR3phdTR4T3JCM3lLNjJoV2szQTlUZnliM3Vh?=
 =?utf-8?B?QUpiSU0zY2x2QkR1aGY3QjRWdWtvdjJwRzdLSndrOVloaWZHR213UDJtUVlk?=
 =?utf-8?B?R3pPMkp1ZEkzQTc1L0FkUUJnZkErV0lVN1lBUm4xdFdjVGR1UWdVTUFjNWVU?=
 =?utf-8?B?WTIzTVlqSEpuanIvUUhaanpMYjJkbGxrY0ljRTMvVzZtbDEzSEdYcFpQQXV4?=
 =?utf-8?B?MWVMOWdXL0d0Y2J2V1Nhc20ydCtMYTdoN3p2SmgvVWx3SUdjNTRBclhkZzNN?=
 =?utf-8?B?RGwzSC9WdkNBSVNobjJOZERnM016cVpsVzZFcG1BOU1kdkprUm5MUVZwRy92?=
 =?utf-8?B?QVdIai9SRlp1ZnBoZW1lYmhaQnlObm82K21qQkxZdmYwTGllZDhra2U3blpE?=
 =?utf-8?B?bHc5QXBlNnFPckNmLzFDSkN6TldMNFEwVnF1U3h6ZEtQRGhkK253am15UHo5?=
 =?utf-8?B?QmszTjBOaUNjU3dkT09xNTJ0akdQOTAzL1NQVlV1NlZwYnM3WHlDVnRVUmRX?=
 =?utf-8?B?S29Yck1JOGc0V05IOUJHZ1I0dDREOGNtMC9nMjV2aFJiNVhmSDF0QlYyMkM0?=
 =?utf-8?B?azRDSit1dno1UkdKRHBzbE9IVUlZekMwbXcxVEJZTTV6L2hNUlgrZzdDZUlI?=
 =?utf-8?B?M3FFM1NmbktFMnhUVERySFU5NVVQRVIrTVBSRUd0c1haS3haY3hsSEw4WTZ3?=
 =?utf-8?B?cXBmcXNMT1ZPZE9reHhVQWdpRFM4ZWJkaU9YZ29uWWxxUnZtOUNTZ2I3dU9t?=
 =?utf-8?B?UHVhVTZQeVVrQ1NZVytDSnV0amdhc3dMbGhXVDFKcVBCN29HKzZlNjNCZlRh?=
 =?utf-8?B?bm45aWY1aXZlVHFyR0NUaUpkby8ycndld1lDeExHanVLc2l2Q0lpNzN5Vy94?=
 =?utf-8?B?NEdjUUVsL0VMWWFxbjdPRXY3a0RxdUJ5bUMzLytOQlZweHZvNjF4TndFTjVO?=
 =?utf-8?B?TzM1S0RLWmJxa2FseWoyNmZYcXBadjVQQ2M1WGEwWnFZRDVtOWZDQXNNSEQ2?=
 =?utf-8?B?djZHOGZ2bXBZRjdkK2VNcFd5VTM2SnRvNnA1bXpmSjQ4RExlRlpJY1FOWTEw?=
 =?utf-8?Q?BD8cCBboQy1ahJlDmYeQCh5oJuOMSzWk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WkRjaUpMQTlFTUJONFZ2NEZQTEx1aFRkYllseFk1MWRCYU9YM1ZCZThpUUM0?=
 =?utf-8?B?R2R1ajR1anB6dDIvWlRwUXdWOG5tODlaQ0pMdWhZUkNZS3pKNTdKcHV6NllR?=
 =?utf-8?B?OE8yaEExaTVxb2tXbEczMzFLVGNweVFVTHN2TlQyMUdRRmNEQjhGdGFkOUts?=
 =?utf-8?B?WElmVnBsNFBOVjlnUmIwRW50OVVUc1loVkxZRjVEWm5maE1XYUk3ZDBMN2dm?=
 =?utf-8?B?TDRNS0RicVdOYXUwTk5seHhReXA4T0xKRlJKQUxYak4xU1E3S0tRQmhzSFZt?=
 =?utf-8?B?U1B6d2hXNkRFUVFzMUV6K3BaRDdHSjVhVTIvYzgzTThkUlp2Q3RydnNaazBk?=
 =?utf-8?B?Rko2ajNZY0dsWXp0MzRtbjhUS0lwd2JEdFhlQ1VZQzRDRGNzMXpselBURWpm?=
 =?utf-8?B?cDJHWDNkWE1TUFRWK1FpdmpWZXVGNXg5eVNPUUkyZmxZc2VrUkpRMHBhYXp4?=
 =?utf-8?B?R2xlK1pyR3lQckgyaHIwSVluQjZiS1cxMFZIQ3ZDQzJiUzNXd0FPREM1Y21l?=
 =?utf-8?B?dkZ6aVhldGYvRXh3NnlmVGNCaUNqMlZ1cE1wZHMvVEE4VU56YUQ2VGpwWHRD?=
 =?utf-8?B?S292MDA5Z3kvUjVERGpaMTRUYTNFd3hVV2RmVWQzVUd3OTQ1YVFrMzNoc3dj?=
 =?utf-8?B?UzlxZ3dpSTBKRS96SzFEcnBzN1N6UVprRjRySHdSYnVMRHdVWEJiYWlLUHI3?=
 =?utf-8?B?UmpkMUJoUDJBMTRjc0E1c1cvVDYxQWc3SWNPN1BXaFJiSW1HQy8rbmJRKzRI?=
 =?utf-8?B?eTNaU1pMZ3ZNRXc1LzZIQlpYVUY3WVNVazExNnpwbUt0dVhESzArVi9GbFAv?=
 =?utf-8?B?dTBXTWZUQTlPaDVFTEs2QmRuQWtyZHorTXVMYzhicnAwc3laL2ZLY2xyclZM?=
 =?utf-8?B?b05PQ2o4Njl1SlZUU0I3K3ptOHg2NGZBMTFwRkE3VFBQbEpvU2hGblBiMWpp?=
 =?utf-8?B?OEtqbmRITGhKRkNiRUprbjB2RGk3TjJmUzAwNjQwZDdORHZ0c2xjRURtbGQ1?=
 =?utf-8?B?NHJXckw1eVhjZXdITGlHdVRXV3JJcGdTN1VXSWh3SVAySTJEeGxUZ3ZlRlZm?=
 =?utf-8?B?cCszMmJoNnBWYlhkWjZQN1NHN3djcVNhZkM3NVNpRlZ5bzRjYnhtaWpLd0lv?=
 =?utf-8?B?ZVc3dmtJRXFzanpyelhNWG1SdHBuZkVOSTU1d2ViS1dkZ0dOcGl3Y2NuWkhj?=
 =?utf-8?B?U3hDeFZkelJEWUdhTHk1Q1k4Z2w3WXdINUIxRklOajk5ZjlaV2hVYTNOMFln?=
 =?utf-8?B?OTR6WmFUQWVwRFZYQk5vVG5ZQzd0THMwa2d2Qlk5dUdleEhDdnhzaGpHdTJB?=
 =?utf-8?B?UHhiZHNTYVYxcCs3Y0hib0tXWTVHQmVneDNFM3EvcmlJK3dOL0dhNzFLYi9u?=
 =?utf-8?B?M0h3bnJrdTlEWFVMb0RJcFV1ZVNXRVJsZTRrczB1Y3d3OU1OVlZ0cnFXakhj?=
 =?utf-8?B?dW9LMDRGWjgyRWZPcDBWM01DcjZqZkV1aTByQ2h4Sys3ZEI0QS9RL2FkZ3pv?=
 =?utf-8?B?TzZtZHA5ZlJueE9YaDRsSHBZZzNtSm5iSUMxMElualJoSkFXMUtVa1dDM3ov?=
 =?utf-8?B?U1pFVFRvbjdhNE5DeUkrZ1g0Y1MxRHN6S0RDbFd6UU0xYit5UHBkV3l2em5o?=
 =?utf-8?B?OXhuR09kd1FZVEEwUW1mRUtCaWFzNmxqUUJDRFV6aW9rM0J4VjlpdGI2RCs0?=
 =?utf-8?B?Z3ZJdkw0SnZiTjVKcXpvUWhzbVdmQUZOL1pVNkVhNkp0M1U1aWtEc2gvZmli?=
 =?utf-8?B?bjVpdVdYbTlKZ21ZOTNQa3RPUXZNOWg2UnRmUXZtdjAwQWtZalh3aGVOcnB0?=
 =?utf-8?B?blduYVF3bk9Pb09uTTRvMGpvMDBMY2lWZWhjSVhZNzU5REMvbnJEbFphYm5x?=
 =?utf-8?B?bEJ6dVI0QTdEYXlsWlJxSmN6cnFTdmFwZHNRY2pJcmlGT1RieXc5WmFNVzFJ?=
 =?utf-8?B?aDdOT09KUW83VG5lS0ZHaDczRjdJcEpHTnk3SmFtMXpycFNDOFFnTjU4OVFZ?=
 =?utf-8?B?bE1TVlkrK3JxTzdEeWpSL2dnNEtrYXIvQ3lUN0dYK2N6cjA2R24zdllCM09v?=
 =?utf-8?B?UE9zNW1aS2QyYzIyd1RXSXA0RGM3RktCN1ArOXR2Rk9uMTR5c2NVbGRudDJj?=
 =?utf-8?B?STgwckJUdnVlcU9mT0ZTS3BaLzdXR0NCRnVhK1ZrR1F5dytrQ0N3L2JiQmdp?=
 =?utf-8?B?RlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2400d158-5f66-4389-986f-08de23b69449
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2025 19:47:01.5033 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q4CkVq8Wyi0FCq9JNOWyJBm7J8t3lIYUAXS9Jajq5Ux3AXdIJtU1udd39lozedOZAGZr1fOaYrOcpRTqAaiAEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4925
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

Quoting Imre Deak (2025-11-12 14:53:47-03:00)
>On Fri, Nov 07, 2025 at 09:05:40PM -0300, Gustavo Sousa wrote:
>> Xe3p_LPD has a new feature that allows the driver to allocate at runtime
>> the DDI (TC ones) port to drive a legacy connection on the Type-C
>> subsystem.  This allows better resource utilization, because now there
>> is no need to statically reserve ports for legacy connectors on the
>> Type-C subsystem.
>>=20
>> That said, our driver is not yet ready for the dynamic allocation.
>> Thus, as an incremental step, let's add the logic containing the
>> required programming sequence for the allocation, but, instead of
>> selecting the first available port, we try so use the 1:1 mapping
>> expected by the driver today.
>>=20
>> Bspec: 68954
>> Co-developed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>=20
>> NOTE: This patch is still a WIP. There are some opens to resolve here.
>> Nevertheless, I'm sending it here for early feedback.
>>=20
>> For the HIP-index stuff, I have a local refactor started and need to
>> finish it up and send it.
>>=20
>> The other open is about concurrent calls to iom_dp_resource_lock().  It
>> is likely that we need to have a software lock to prevent concurrent
>> access to IOM_DP_HW_RESOURCE_SEMAPHORE from our driver.
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_regs.h |  20 ++-
>>  drivers/gpu/drm/i915/display/intel_tc.c           | 151 +++++++++++++++=
++++++-
>>  2 files changed, 169 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers=
/gpu/drm/i915/display/intel_display_regs.h
>> index 89ea0156ee06..0cf7d43ce210 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
>> @@ -2908,6 +2908,25 @@ enum skl_power_gate {
>>  #define   DP_PIN_ASSIGNMENT(idx, x)                ((x) << ((idx) * 4))
>>  /* See enum intel_tc_pin_assignment for the pin assignment field values=
. */
>> =20
>> +/*
>> + * FIXME: There is also a definition for this register in intel_dkl_phy=
_regs.h.
>> + * We need to consolidate the definitions.
>> + */
>> +#define HIP_INDEX_REG0                                _MMIO(0x1010a0)
>> +#define   HIP_168_INDEX_MASK                        REG_GENMASK(3, 0)
>> +#define   HIP_168_IOM_RES_MGMT                        REG_FIELD_PREP(HI=
P_168_INDEX_MASK, 0x1)
>> +
>> +#define IOM_DP_HW_RESOURCE_SEMAPHORE                _MMIO(0x168038)
>> +#define   IOM_DP_HW_SEMLOCK                        REG_BIT(31)
>> +#define   IOM_REQUESTOR_ID_MASK                        REG_GENMASK(3, 0=
)
>> +#define   IOM_REQUESTOR_ID_DISPLAY_ENGINE        REG_FIELD_PREP(IOM_REQ=
UESTOR_ID_MASK, 0x4)
>> +
>> +#define IOM_DP_RESOURCE_MNG                        _MMIO(0x16802c)
>> +#define   IOM_DDI_CONSUMER_SHIFT(tc_port)        ((tc_port) * 4)
>> +#define   IOM_DDI_CONSUMER_MASK(tc_port)        (0xf << IOM_DDI_CONSUME=
R_SHIFT(tc_port))
>> +#define   IOM_DDI_CONSUMER(tc_port, x)                ((x) << IOM_DDI_C=
ONSUMER_SHIFT(tc_port))
>> +#define   IOM_DDI_CONSUMER_STATIC_TC(tc_port)        IOM_DDI_CONSUMER(t=
c_port, 0x8 + (tc_port))
>
>It would be simpler to define the above without the shift, i.e. as 8 +
>tc_port.

You mean something like this?

#define   IOM_DDI_CONSUMER_STATIC_TC(tc_port)        (0x8 + (tc_port))

?

Yeah... Looking at the code, we wouldn't need to shift back when
defining expected_consumer.

>
>> +
>>  #define _TCSS_DDI_STATUS_1                        0x161500
>>  #define _TCSS_DDI_STATUS_2                        0x161504
>>  #define TCSS_DDI_STATUS(tc)                        _MMIO(_PICK_EVEN(tc,=
 \
>> @@ -2946,5 +2965,4 @@ enum skl_power_gate {
>>  #define   MTL_TRDPRE_MASK                REG_GENMASK(7, 0)
>> =20
>> =20
>> -
>>  #endif /* __INTEL_DISPLAY_REGS_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i=
915/display/intel_tc.c
>> index 7e17ca018748..3c333999bbe4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_tc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
>> @@ -9,6 +9,7 @@
>> =20
>>  #include "i915_reg.h"
>>  #include "intel_atomic.h"
>> +#include "intel_bios.h"
>>  #include "intel_cx0_phy_regs.h"
>>  #include "intel_ddi.h"
>>  #include "intel_de.h"
>> @@ -25,6 +26,9 @@
>>  #include "intel_modeset_lock.h"
>>  #include "intel_tc.h"
>> =20
>> +#define IOM_DP_RES_SEMAPHORE_LOCK_TIMEOUT_US        10
>> +#define IOM_DP_RES_SEMAPHORE_RETRY_TIMEOUT_US        10000
>
>The above param names should make it clear how poll_timeout_us() uses
>them (i.e. stg like sleep vs. timeout instead of lock_timeout vs.
>retry_timeout), but probably even clearer to just drop the defines and
>inline the values in the call.

Ack.  I going with the latter.

>
>> +
>>  enum tc_port_mode {
>>          TC_PORT_DISCONNECTED,
>>          TC_PORT_TBT_ALT,
>> @@ -1200,6 +1204,143 @@ static void xelpdp_tc_phy_get_hw_state(struct in=
tel_tc_port *tc)
>>          __tc_cold_unblock(tc, domain, tc_cold_wref);
>>  }
>> =20
>> +static void iom_res_mgmt_prepare_reg_access(struct intel_display *displ=
ay)
>> +{
>> +        /*
>> +         * IOM resource management registers live in the 2nd 4KB page o=
f IOM
>> +         * address space. So we need to configure HIP_INDEX_REG0 with t=
he
>> +         * correct index.
>> +         *
>> +         * FIXME: We need to have this and dekel PHY implementation usi=
ng a
>> +         * common abstraction to access registers on the HIP-indexed ra=
nges, and
>> +         * this function would then be dropped.
>> +         */
>> +        intel_de_rmw(display, HIP_INDEX_REG0,
>> +                     HIP_168_INDEX_MASK, HIP_168_IOM_RES_MGMT);
>
>This matches what intel_dkl_phy.c does, that one also taking the
>required lock around the access. At one point the intel_dkl_phy
>file/interface could be renamed to intel_tc_reg or similar accordingly.

I have already started a local series that introduces the "HIP-index
based registers" abstraction.  I need to go back to finish it up.

The basic idea is that both intel_dkl_phy.c and this IOM stuff would use
functions specific to accessing registers behind the HIP-based ranges.

To give an idea, here is a copy/paste of the kerneldoc I currently have
in that WIP series:

  | diff --git a/drivers/gpu/drm/i915/display/intel_hip_idx.c b/drivers/gpu=
/drm/i915/display/intel_hip_idx.c
  | new file mode 100644
  | index 000000000000..ff2492b8275d
  | --- /dev/null
  | +++ b/drivers/gpu/drm/i915/display/intel_hip_idx.c
  | @@ -0,0 +1,110 @@
  | +// SPDX-License-Identifier: MIT
  | +/*
  | + * Copyright (C) 2025 Intel Corporation
  | + */
  | +
  | +/**
  | + * DOC: Display HIP-indexed register access
  | + *
  | + * Display MMIO mapping for offsets in [0x168000,0x16ffff] are governe=
d by
  | + * configurations in the HIP_INDEX registers provided by the hardware.
  | + *
  | + * Usually each of the valid 4KB range in that space will be mapped to=
 some IP
  | + * block, providing access to registers of that IP. The HIP_INDEX regi=
sters
  | + * expose an 8-bit index value for each 4KB range. Those indices provi=
de a way
  | + * to access data that is beyond the initial 4KB block provided by the=
 target
  | + * IP.
  | + *
  | + * As an example, say that the range [0x16a000,0x16afff] is mapped to =
some
  | + * sub-IP that contains a 8KB register file. To access the initial 4KB=
 of that
  | + * register file, we would need to set the index respective to
  | + * [0x16a000,0x16afff] in HIP_INDEX to 0; to access data in the second=
 4KB
  | + * window, we would need to set the index to 1.
  | + *
  | + * For simple read, write or rmw operations on a single register, the
  | + * functions intel_hip_idx_reg_read(), intel_hip_idx_reg_write() and
  | + * intel_hip_idx_reg_rmw() can be used, which will call intel_hip_idx_=
lock()
  | + * and intel_hip_idx_unlock() internally.
  | + *
  | + * For other scenarios, then it is necessary to wrap the register acce=
sses
  | + * with explicit calls to intel_hip_idx_lock() and intel_hip_idx_unloc=
k(), and
  | + * use the MMIO functions provided by intel_de.h. For the latter, the =
function
  | + * intel_hip_idx_reg_to_i915_reg() needs to be used in order to provid=
e the
  | + * correct reg argument to those functions.
  | + */
  | (...)

>
>> +}
>> +
>> +/*
>> + * FIXME: This function also needs to avoid concurrent accesses from th=
e driver
>> + * itself, possibly via a software lock.
>> + */
>> +static int iom_dp_resource_lock(struct intel_tc_port *tc)
>> +{
>> +        struct intel_display *display =3D to_intel_display(tc->dig_port=
);
>> +        u32 val =3D IOM_DP_HW_SEMLOCK | IOM_REQUESTOR_ID_DISPLAY_ENGINE=
;
>> +        int ret;
>> +
>> +        iom_res_mgmt_prepare_reg_access(display);
>> +        ret =3D poll_timeout_us(intel_de_write(display, IOM_DP_HW_RESOU=
RCE_SEMAPHORE, val),
>> +                              (intel_de_read(display, IOM_DP_HW_RESOURC=
E_SEMAPHORE) & val) =3D=3D val,
>
>This happens to work, but it's more future proof/bspec conformant to
>properly mask the requestor ID field when reading it back.

Agreed.

>
>> +                              IOM_DP_RES_SEMAPHORE_LOCK_TIMEOUT_US,
>> +                              IOM_DP_RES_SEMAPHORE_RETRY_TIMEOUT_US, fa=
lse);
>> +
>> +        if (ret)
>> +                drm_err(display->drm, "Port %s: timeout trying to lock =
IOM semaphore\n",
>> +                        tc->port_name);
>> +
>> +        return ret;
>> +}
>> +
>> +static void iom_dp_resource_unlock(struct intel_tc_port *tc)
>> +{
>> +        struct intel_display *display =3D to_intel_display(tc->dig_port=
);
>> +
>> +        iom_res_mgmt_prepare_reg_access(display);
>> +        intel_de_write(display, IOM_DP_HW_RESOURCE_SEMAPHORE, IOM_REQUE=
STOR_ID_DISPLAY_ENGINE);
>> +}
>> +
>> +static bool xe3p_tc_iom_allocate_ddi(struct intel_tc_port *tc, bool all=
ocate)
>> +{
>> +        struct intel_display *display =3D to_intel_display(tc->dig_port=
);
>> +        struct intel_digital_port *dig_port =3D tc->dig_port;
>> +        enum tc_port tc_port =3D intel_encoder_to_tc(&dig_port->base);
>> +        u32 val;
>> +        u32 consumer;
>> +        u32 expected_consumer;
>> +        bool ret;
>> +
>> +        if (DISPLAY_VER(display) < 35)
>> +                return true;
>> +
>> +        if (tc->mode !=3D TC_PORT_LEGACY)
>> +                return true;
>> +
>> +        if (!intel_bios_encoder_supports_dyn_port_over_tc(dig_port->bas=
e.devdata))
>
>dedicated_external is stored separately in dig_port, why the "related"
>dyn_port_over_tc flag isn't?

The only reason dedicated_external is stored is because VBT data is
already freed by the time intel_encoder_is_tc() is called in the driver
unbind path.  In the future we should fix the VBT lifetime issue in
order to be able to drop the dedicated_external member of dig_port.

>
>> +                return true;
>> +
>> +        if (iom_dp_resource_lock(tc))
>> +                return false;
>> +
>> +        val =3D intel_de_read(display, IOM_DP_RESOURCE_MNG);
>> +
>> +        consumer =3D val & IOM_DDI_CONSUMER_MASK(tc_port);
>> +        consumer >>=3D IOM_DDI_CONSUMER_SHIFT(tc_port);
>> +
>> +        /*
>> +         * Bspec instructs to select first available DDI, but our drive=
r is not
>> +         * ready for such dynamic allocation yet. For now, we force a "=
static"
>> +         * allocation: map the physical port (where HPD happens) to the
>> +         * encoder's DDI (logical TC port, represented by tc_port).
>> +         */
>> +        expected_consumer =3D IOM_DDI_CONSUMER_STATIC_TC(tc_port);
>> +        expected_consumer >>=3D IOM_DDI_CONSUMER_SHIFT(tc_port);
>> +
>> +        if (allocate) {
>> +                struct intel_encoder *other_encoder;
>> +
>> +                /*
>> +                 * Check if this encoder's DDI is already allocated for=
 another
>> +                 * physical port, which could have happened prior to th=
e driver
>> +                 * taking over (e.g. GOP).
>> +                 */
>> +                for_each_intel_encoder(display->drm, other_encoder) {
>> +                        enum tc_port other_tc_port =3D intel_encoder_to=
_tc(other_encoder);
>> +                        u32 other_consumer;
>> +
>> +                        if (tc_port =3D=3D TC_PORT_NONE || other_tc_por=
t =3D=3D tc_port)
>> +                                continue;
>> +
>> +                        other_consumer =3D val & IOM_DDI_CONSUMER_MASK(=
other_tc_port);
>> +                        other_consumer >>=3D IOM_DDI_CONSUMER_SHIFT(oth=
er_tc_port);
>> +                        if (other_consumer =3D=3D expected_consumer) {
>> +                                drm_err(display->drm, "Port %s: expecte=
d consumer %u already allocated another DDI; IOM_DP_RESOURCE_MNG=3D0x%08x\n=
",
>> +                                        tc->port_name, expected_consume=
r, val);
>> +                                ret =3D false;
>> +                                goto out_resource_unlock;
>> +                        }
>> +                }
>> +
>> +                if (consumer =3D=3D 0) {
>> +                        /* DDI is free to use, let's allocate it. */
>> +                        val &=3D ~IOM_DDI_CONSUMER_MASK(tc_port);
>> +                        val |=3D IOM_DDI_CONSUMER(tc_port, expected_con=
sumer);
>> +                        intel_de_write(display, IOM_DP_RESOURCE_MNG, va=
l);
>> +                        ret =3D true;
>> +                } else if (consumer =3D=3D expected_consumer) {
>> +                        /*
>> +                         * Nothing to do, as the expected "static" DDI =
allocation is
>> +                         * already in place.
>> +                         */
>> +                        ret =3D true;
>> +                } else {
>> +                        drm_err(display->drm, "Port %s: DDI already all=
ocated for consumer %u; IOM_DP_RESOURCE_MNG=3D0x%08x\n",
>> +                                tc->port_name, consumer, val);
>> +                        ret =3D false;
>> +                }
>> +        } else {
>> +                drm_WARN_ON(display->drm, consumer !=3D expected_consum=
er);
>> +                val &=3D ~IOM_DDI_CONSUMER_MASK(tc_port);
>> +                intel_de_write(display, IOM_DP_RESOURCE_MNG, val);
>> +                ret =3D true;
>> +        }
>> +
>> +out_resource_unlock:
>> +        iom_dp_resource_unlock(tc);
>> +
>> +        return ret;
>> +}
>> +
>>  static bool xelpdp_tc_phy_connect(struct intel_tc_port *tc, int require=
d_lanes)
>>  {
>>          tc->lock_wakeref =3D tc_cold_block(tc);
>> @@ -1210,9 +1351,12 @@ static bool xelpdp_tc_phy_connect(struct intel_tc=
_port *tc, int required_lanes)
>>                  return true;
>>          }
>> =20
>> -        if (!xelpdp_tc_phy_enable_tcss_power(tc, true))
>> +        if (!xe3p_tc_iom_allocate_ddi(tc, true))
>
>This doesn't work. A connector registered to userspace must be always
>functional (except for MST connectors which are dynamically registered).
>So the DDI allocation and with that connecting the PHY cannot fail here
>for a legacy connector/PHY. Instead of this the allocation could be
>moved to happen already in intel_tc_phy_ops::init for now, allocating a
>DDI for a legacy PHY (intel_tc_port::legacy_port =3D=3D true) and if that
>fails also fail the corresponding connector/encoder registration in
>intel_ddi_init(). The DDI would need to be released by
>intel_tc_port_cleanup().

Ah, I see.  Well, I guess for legacy connections, doing your suggestion
seems fine.

Is there any power management aspect that we should be aware here? Like,
some power well being disabled and causing the allocation to be "lost"
somehow.  Since this thing is in the TCSS, I think no display power
wells could cause that, right?

By the way, I wonder how we would handle things in the future when/if we
enable the dynamic DDI allocation thing.

--
Gustavo Sousa

>
>>                  goto out_unblock_tccold;
>> =20
>> +        if (!xelpdp_tc_phy_enable_tcss_power(tc, true))
>> +                goto out_deallocate_ddi;
>> +
>>          xelpdp_tc_phy_take_ownership(tc, true);
>> =20
>>          read_pin_configuration(tc);
>> @@ -1226,6 +1370,9 @@ static bool xelpdp_tc_phy_connect(struct intel_tc_=
port *tc, int required_lanes)
>>          xelpdp_tc_phy_take_ownership(tc, false);
>>          xelpdp_tc_phy_wait_for_tcss_power(tc, false);
>> =20
>> +out_deallocate_ddi:
>> +        xe3p_tc_iom_allocate_ddi(tc, false);
>> +
>>  out_unblock_tccold:
>>          tc_cold_unblock(tc, fetch_and_zero(&tc->lock_wakeref));
>> =20
>> @@ -1236,6 +1383,8 @@ static void xelpdp_tc_phy_disconnect(struct intel_=
tc_port *tc)
>>  {
>>          switch (tc->mode) {
>>          case TC_PORT_LEGACY:
>> +                xe3p_tc_iom_allocate_ddi(tc, false);
>> +                fallthrough;
>>          case TC_PORT_DP_ALT:
>>                  xelpdp_tc_phy_take_ownership(tc, false);
>>                  xelpdp_tc_phy_enable_tcss_power(tc, false);
>>=20
>> --=20
>> 2.51.0
>>
