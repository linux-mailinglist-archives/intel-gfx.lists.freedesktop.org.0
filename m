Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2DtRHUUJ1mlnAwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 09:52:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A523B895A
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 09:52:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B672910E569;
	Wed,  8 Apr 2026 07:52:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MDKDixWF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E4E210E575
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2026 07:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775634753; x=1807170753;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=MjUgFOWcQJydRgQa41WrTPBSOsbHzZOiUJdtZzKyAn8=;
 b=MDKDixWFPrc/tA4l8ILTu5oaja0e1d8nY18P88a99XMXLnw3jMmQNeP+
 o0eEhcMbsEWuFfs2QtvtPtjWH0+bdIXKZFQ07evKG3VzhQDFeNWS1EBe0
 r4wEhQ+0ozfDG8KpZAlg98Y1b90neogd/080bv4ivQMqA34PQMaS9+lqU
 Nj0sw1crH1aRDWAP/OT6NpqrKMBv+50SaGu1jmyJIrwvMO07YAhI5RXHp
 TRvHgBh3kIMcNnzwyGkl3T09xNxWm3ACNWQbSGjua9I7IIx358zEjI8hX
 d4TpofTFV2u47aqN6Usuz3QReyOd8DfJSEdptcc78A3080gUcRisgmp7n Q==;
X-CSE-ConnectionGUID: KacRl1ayTy6pEmQTtdHYHA==
X-CSE-MsgGUID: HnZwRcM9TISg+wq6xUkQRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="76622689"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="76622689"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 00:52:33 -0700
X-CSE-ConnectionGUID: UaJOUAyaSMW8sxeMtO5v9w==
X-CSE-MsgGUID: XoAinwENRc+StCSB/f1juQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228655988"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 00:52:33 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 00:52:32 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 00:52:32 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.67) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 00:52:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NG0p3BTnMx2q6DH8clrfc2vRRci8S5fW/r21uQQHmQIFQc+75di7WwJdVkEcoszCRwAtKV1zMFb6jn0N0ABpF7dsEYui4W4BB6xu4/6xdL73Lpve3tnO5wK3nME4KaFhK88nPzbs4Qz6oxfeADyCeUiVro+/2EdoZBVm96F2BiNdZBINzaidh8j5AX4XVtjwkpkulZQti8+FLszzbwjF0m9MfonZWUx5Wq7m7Iebjawi+s0JI3R6bIrubFREJ3X1r5L4QfP6kw1QW+ncqmf3XdT7c+5H2bA8Kn5bm45gJDoR4kS7FEfqQiw5GEaFWfCq8IaLI28LAaQyLC5ybBmQyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n/CMvw3bm5rge3nllPEpEGidEwGnlVbsQ9719+fK9QE=;
 b=bgMCKHyoClzwRfaUXAoAnt+1JRSp4LA3na3fCc3ASLDigVGtmtHRqrpKhQCXp+ogjSdMAvNa+CCXWlhAEuVxYbUXiLK59dhafXahKeo372URah7VMrhdPEJ8vFD1hobeaR8j6p754jY5SMChtOBpwHOwf55I0OGOgKMAAEaQjogL2uqPgIslLPWQEUWKiUo/uGEbVRXMZkUGStCEkCqsfTkY+6m89h33eEtXvB6Y67X3K3uO0/pTl723SPBa6mAuxeDh2fOy96sJtfTayIMMV980NaiDTbYyGCCd0YHCTb3pLgBDKUod9K3ZlepZ/3MsyI4LJM60MQQr6a+AtC8+9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SJ5PPFE5BD61D44.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::85a) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Wed, 8 Apr
 2026 07:52:29 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9769.018; Wed, 8 Apr 2026
 07:52:29 +0000
Date: Wed, 8 Apr 2026 07:52:18 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Subject: Re: [RFC v3 2/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
Message-ID: <fgvppgc4hlkhbez2pqfho2oqde66h6lwuq6zufqo4yoju3rtf4@tck7ivti63hk>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260403090019.1933036-1-krzysztof.karas@intel.com>
 <20260403090019.1933036-3-krzysztof.karas@intel.com>
 <73fc2e43910f2295374e7f2ce55c73d59f0fd763.camel@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <73fc2e43910f2295374e7f2ce55c73d59f0fd763.camel@linux.intel.com>
X-ClientProxiedBy: TL0P290CA0004.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::17) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SJ5PPFE5BD61D44:EE_
X-MS-Office365-Filtering-Correlation-Id: ebb36602-4af8-412d-e90d-08de9543c858
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: PqcgpBLg41pilKgZb54T93c9Uf364+jNc05RCvnZ8slDJY/rfbb677Ba1g6+5rXHRyD0BeS1X3UuuzXdSzizi/HNv4xQhAEVTXJL5Uh4scJoLY0NG7EVnc94uRcXJy9D8uEkIUnwTOELHAm/Xa/NTU3bUQjvqClPigFnW60LkFDF7D/DJiDUQDsqud67yRgCgOudzs7PR9cmeJXfJBRX/NnULjLaK7VUKq8vEjSYMFh4eq2S1OVCqtzs97CIH8xXUtN4b/d1hf0EBdM0zRZVAerN7/uKic3i0LLVdz7OZWm/zPAvgbxbZA/FNCgiP3mZzxcBvlKqdZktai7vBov4mSI70DWZTLy7bSm0mjaxE+zyjg4N2rk5xs5MV9zYOvkrpuHrBVRLe2FtD7X2rtb1qxofBDFJ6G+e6KwpVHiGyEBWD9AsCkK6X+2FhZt8VzJam+eC6qr3ooS6KLQQQ/ovxEPl5zJf4TuZEPoN5LJck9WuUOLrzmam1zrBHuhJJ1JK4dfsZdEN4SCtLefwz6s83nJaJQhFWeDp0eiYHu6L4d6W6Q5RwIrcl4Wz56LpC3EEa1VOb6RP2xsjx4RdlLxnszNvNxHC8SsrkZpebAQEQnk+SVTguTrEpWA1Ci55ZQXlPj1GGslN5yAl/zFHoQcxpILpi9McMs5US6dDNG6GqplfYbrugqUHPZ9kYkYBe3gx6W8meHAVKYaepAvLGWZ8DSMLPSNYV3IOGiN6bu5kI+8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cDB2dmVKWkVSOUs0bE84dTN3TkhyUjBjSmNDVG5kT2UwQnEzb3dqRmhCZ09D?=
 =?utf-8?B?bWgwVk91SmVGV1FxamxxdmhuYzZzWGY0ZUQ0SFFDTCtCNlJHcDRhZng0VFVo?=
 =?utf-8?B?WXNLbWl5UE12dmEvQ0NLdXBZUnVYN09rQnZqUDJDV2ZUS1B6WUdsNytreWh1?=
 =?utf-8?B?RlNTMmprNUpWbUN5SU1aZzZDODBFeVVUbjZSc0N2NjljUys2QjVYTmFGblp3?=
 =?utf-8?B?ZzRlV3dNK1lHRkZjeVVKSEloMGNQNzVVSnB1VnNUREJKcFU3TWVnZHBWT25w?=
 =?utf-8?B?SWI1UDBqUS9hSWRhWUVaZUR1ak5vVXluN2d1Zm8zaWhjNkhCMUNXckJUb0x0?=
 =?utf-8?B?YkRtajBYQ243SzRVOFhiVG1BUytYWXFkcFZMSHVvOVd0SnovR05uZnc0M0ZG?=
 =?utf-8?B?aXRWQk5nWEtBMGowZjcxRGlrTmdicHJlRk1WYUJsQ1RHdHVrZTkxUFNLUzAr?=
 =?utf-8?B?WmNKQlJWbjdtNEZFQnJlaXlYRzl2UEd0Qk5KN0FnSy80N2J1eUpRRjJaNDk4?=
 =?utf-8?B?OE9UckN5R3dqLzZVS3NIU1Q0TXJmRGMwempzSVlzRWVscTVxTnprRGFwVm1T?=
 =?utf-8?B?YURxWEwrTndXUTA5TnlPWVFZd2M4dlpiS1lvL2xPZ3h6ZndxcjBHQmJvc2JF?=
 =?utf-8?B?QTdhZlBnUGMra25NYjAyL0ZIS0pLK1hRMEhuaFVlZ3ZxOXFQdWZhamw4UlFO?=
 =?utf-8?B?VTl4dWVUQlVsNWY5ZmdCTE50emMvNkljOEZ6RDZHMUpORS9vUEp1T21ETDAz?=
 =?utf-8?B?eU1ISWd3a29ub1NCVVZIeHZxVmtwOHZ2YTVEZFAyb0pTUHlIMzZkdmNRczJB?=
 =?utf-8?B?cW1WNWZEcjhzY2g1Nk5WUG10aXIxbFk5RWFIZThyY3l4eW5Pb3F0eVZiOFB5?=
 =?utf-8?B?OHlXRkd2ekJIbHFBMWVQSE5EeldCQXlJMlJ6ZnVDTlM3aWY2MlgyLy92ZzEv?=
 =?utf-8?B?Tk4xcENFQXBaS3lROWVYMEZlYW1pSmlxdk9ENDhrWUs0Wk5Ib3pqQ3VERE5q?=
 =?utf-8?B?Z21pV2tzUlcxMGx2UGdZSUIzdG00MHFpdk1DdmlBdUdOVzl6NE82WmM1L29i?=
 =?utf-8?B?WmFQeTB4ekNYR0tvZlJOT3ZxOWFMSmMwSVpoeTEwS2FLRmhleEtJNGd2MXpW?=
 =?utf-8?B?MlNPbTdrVU8xbnRiekxieEZDKzBvbEFtOXJGVUs1bEc4NEZJdnptQUpwWWlM?=
 =?utf-8?B?ZkNFK3k3cXl5QmxNdnNLUm05R0QvMXlreXAxZUFsM29MMFAvMm43dndldGNF?=
 =?utf-8?B?ZEY5THJuRVZRSzJlTEtkNTM1VmIvUnpHV0dpNVdEdmJXRDYvS29wdDNkN3I2?=
 =?utf-8?B?NnMwVXlKajFRakhGcExmbkUxaStMcTdGTmF3YWZNVE00aXFOK0ZyNVZ5NWwy?=
 =?utf-8?B?SnJGdFhNM0krSnlKZHNaNVBTc3Jta29iT3FsRXF2cEF3ZDhPR2lPSHVObmk2?=
 =?utf-8?B?cG12bnpyT2M5Q1Rud1UzV0grRWhRTjRBTWMwQ3dhc2lRVkJsVWZzTEJtV2wx?=
 =?utf-8?B?eDVBaU5sd3Q1cXpzb01lOWQxVDFRYmRpSHhkVzNDTkc2eXJkSXVWVk93Mlgy?=
 =?utf-8?B?SlphWGRSb20raHpHYUpJWUNML2hHTWpIcklORlNkekJkR0pjejhQRkVVT1VL?=
 =?utf-8?B?WUxUTitCWHovVURrTGVucldOdVVaU1pCSVdpS0tTLytvb1ZOUlo1Smw0UHlN?=
 =?utf-8?B?RjN0clA4d1A1cnpJem55Ukl5MllId1BhU1JFanU3d0lkVnAweEVEeWJhOXQz?=
 =?utf-8?B?MmRHM2o4NmJaRWlGdE1Xd0JCUVdVeFVQRDNMMWk5bXlQWnhEK1Q1VS82aEor?=
 =?utf-8?B?cDVwUVZ6SXNaODU5Y1JFT3pnaTFsQnlNTEFrZ01YNGlJbGUwQ3hhcDk0Wmh6?=
 =?utf-8?B?M09ldGtMMTJDb2s5d2pUb2F4dmRWeWlBOGhNU2VWeVJaalNNRWlWcGplWTcx?=
 =?utf-8?B?dG05dDhNamQ3V0NGWU5uaDc1VCtEZFByVjdXSHFMZDR4clI2RW9ucjFKQ3lT?=
 =?utf-8?B?ejZERlpXU0V4dG1uQVhDUGMzcHQ0a1FsZjhmSkNWOGw1Q2F6RmhXSUo1UXRw?=
 =?utf-8?B?cmUyam5ZMG8zYVpGaWZuTEQybGp2YVlNeWdpeU1XSkk0cHFjdWhUWks4NzBX?=
 =?utf-8?B?VDZFSnVUd2JoUDZwc2hWVHlGTk8zdU5qbU92ZW1jUU1QTmFwODNkYmNwejJW?=
 =?utf-8?B?RFkxZ1pDZktCZDFET1NIWFBiMHNCMWZrd0lRVXhLUTdKcjFUVm5XR2o1T2NW?=
 =?utf-8?B?amlaOTFGU1Q4YWxjL25VU3dpbElQejVERE41QVRWdi9Jd2hFNFVDQzRzZ2ts?=
 =?utf-8?B?UlhGNTBvR3A5eHJPUWZ3TTNlazBHcFlTd3EyVXdNVUVtK3BBZ3hlTUNBeFNN?=
 =?utf-8?Q?IJ8XvL+Ji5lUg1ks=3D?=
X-Exchange-RoutingPolicyChecked: OG/IUHbVo155QoYWqKX29tKW42b/xajuiH9FqrKZobt8xG3TgqqTpBFJgjTckk4I7Nt0SEpID3CJKLXbhdh5TaPbO2jbiu+jNixF2DbwdsEoSgYdmcoT+jCjqEzBZyI1f+zmgDURw0ftmAFAc8a3LSxFP4ZJ5xa/hQn+hu/9/qr3xTeJk3cqod+sDVwZ4T4h8fotIZ5yUGwv6M2cGstC6l7C4bDnY3B77d/gyehh80UdP9rkoc9I1ARecyl/PU4qSYmZYl/ydcQiqfl7OfL+aDVUsX+Cqr9zap6Wu/fCoUNbY0sLmfhkx+3nzDXA7ZDHQfmQDGMIB3O+1143MBOQTg==
X-MS-Exchange-CrossTenant-Network-Message-Id: ebb36602-4af8-412d-e90d-08de9543c858
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 07:52:29.1310 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ilqxqepvYsdhX/gRd2K6tnC9mEKI7MX/Vbd03t1A8ZlN10vU06KtfrtgyKR5OJNDX8QHQnvSl3gPpmQVvfPJtBEZy9dfILbroTbduymwUBI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFE5BD61D44
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:janusz.krzysztofik@linux.intel.com,m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D0A523B895A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Janusz,

thanks for review.

[...]

> >  	pr_info(DRIVER_NAME ": Performing %s selftests with st_random_seed=0x%x st_timeout=%u\n",
> >  		name, i915_selftest.random_seed, i915_selftest.timeout_ms);
> >  
> > +	/**
> > +	 * If the user passed a valid PID of a userspace task, then we may borrow
> > +	 * its address space to prepare a safe environment for the mmap selftests.
> > +	 */
> > +	if (u_pid_nr) {
> 
> In your previous version, you entered that section only if current->mm was 
> missing and there was a user provided PID.  I think that was more correct. 
> What happens if you then call kthread_use_mm(mm) with a valid current->mm?
Yeah, I'll revert that check.
> 
> Besides, a warning on missing PID when current environment needs it would 
> work as a verbose validation of user provided module options. 
> Please consider moving the u_pid_nr check into the if body, with such 
> warning added.
Sure, I can do that.

> 
> > +		struct pid *u_pid = find_get_pid(u_pid_nr);
> > +		struct task_struct *task;
> > +
> > +		if (!u_pid) {
> > +			pr_warn("Could not find PID: %d\n", u_pid_nr);
> > +			goto run_tests;
> > +		}
> > +
> > +		task = get_pid_task(u_pid, PIDTYPE_PID);
> > +		put_pid(u_pid);
> > +		if (!task) {
> > +			pr_warn("Could not find userspace task for PID: %d\n", u_pid_nr);
> > +			goto run_tests;
> > +		}
> > +
> > +		mm = get_task_mm(task);
> > +		put_task_struct(task);
> > +		if (!mm) {
> > +			pr_warn("Could not find address space of task with PID: %d\n", u_pid_nr);
> > +			goto run_tests;
> > +		}
> > +
> > +		kthread_use_mm(mm);
> > +	}
> > +
> > +run_tests:
> >  	/* Tests are listed in order in i915_*_selftests.h */
> >  	for (; count--; st++) {
> >  		if (!st->enabled)
> > @@ -226,6 +259,11 @@ static int __run_selftests(const char *name,
> >  		 st->name, err))
> >  		err = -1;
> >  
> > +	if (mm) {
> > +		mmput_async(mm);
> > +		kthread_unuse_mm(mm);
> 
> Please make sure whether kthread_use_mm takes a reference to mm or not.
> If it likely does then we might be more clear if we put our reference to 
> mm taken with get_task_mm() right after kthread_use_mm() above.  If it 
> unlikely didn't then mmput_async(mm) would have to follow 
> kthread_unuse_mm().
I'll move mmput_async() after kthread_use_mm() call, because it
should be sufficient for our purpose here, and I agree that it
may be more clear.
Hopefully, this won't break anything ;)

> 
> Thanks,
> Janusz
> 
> > +	}
> > +
> >  	return err;
> >  }
> >  

-- 
Best Regards,
Krzysztof
