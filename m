Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6B39AEA88
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 17:33:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB5C110E96E;
	Thu, 24 Oct 2024 15:33:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wwwnj0pL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CBC010E969;
 Thu, 24 Oct 2024 15:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729784009; x=1761320009;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CMdGpeRVY+eMdxXYeXzxZT0e/Rm5CaVczyOCOpp6JJI=;
 b=Wwwnj0pLNwJSl9u86DBNwF6BTlEZQkKqgCiF1hW6AnJrbdJgj5gRxDo8
 pmsGAF3E7DpwS/IjNnj32J3lU3Dm2TvCvTlYdNtv0UrM1Es8FH/kSaHzJ
 4VERELVcUzyGRP+Vw10FMZhcjCCBjojrEe7mzgIiLBdau8+Vjn+sEhDpo
 FRvnDaljmZzkb9LwhJ+cIyBKqM5NKACYMnLXvkaWMxuRi/qq4YYixNfUJ
 jSgoZGNQoQCoWNQMy+Avf7sRM1J7LeemEmj3kPmFj7MirDL5FYmuIM57n
 zpOQWiADvmJgy0UgJShcOLd2hbLLiOVt7ab4whRQeIOAIYLx6NYRnt/14 A==;
X-CSE-ConnectionGUID: qFuxG2P9Tvq+L619HdOk4w==
X-CSE-MsgGUID: swBhZM0XR1icZ8RDwvgwuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="17049302"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="17049302"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 08:33:28 -0700
X-CSE-ConnectionGUID: qN/o31ZgRW2yI6R1v7GE0w==
X-CSE-MsgGUID: eqyInTHPTzONwKqOi2mgMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="80804475"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 08:33:28 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 08:33:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 08:33:28 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 08:33:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PRG4H9EqnMbN/QLXFDCsNadyNG71hT94cFCz9DULRUx/QyXAc2ARHWigTcJKlsAsF2nQWVuxwOQT8UqkL1ulxP/O4NYv65BzArYS/OeLOWw4UQ4/FIfxJyk+UIxO1y58XCGsZNb8jVS1OSObwj6xJQ43PXxKdxWq5A2C2hSW7wmMFt8j/KX9v20dLZg3dZT0d3sexxzvyzA8jDiXkLdh/hvOivcoOe/3WRdF2tnP6n2UbMOu7BWOgbbMOn5kdwIhEaiVQlTLVHhYMSCu95mwiVOYffTaocEFsUd4Syhw8RmaZOSBIVPanTF/rDYIb2xvTUgrml0FkcC1PslTmcWPQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GlwGsyloIbJ7GLYV7G0OXpbxRpPTXVbx8XNtaVvL6YE=;
 b=g2vAtLGZmjqXhdmHCJB+tb7HVPK1/SfqINNr73j17+rgUQ6DnvMb+LPfxj3uOVLb+0xgViSb6P6e2vR95rqg+Y85ntF/lyDc4nUSKDPtXOf36OHCKj3jlTQBqRBKdweXdIbtzT+SV9oYQY2Cdr+Jw/t2ffQygtmHXalrF+MU1W8+WMnKhFv9srLYM9HY/WyPQATOzJ0wcvDKFw8T0HTtCmkyw2kHzrMy4R92G5PS0uEZDpcIZg7MVzQIEpRjchFTOF09NzYrjV+Che7A7jNu/LBaf6M7qTu1QJhKO609U9oL5jhhDti0uSNBhb2Rw13AmRdcDuaUDtxRIVnNLNST2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by DS0PR11MB8739.namprd11.prod.outlook.com (2603:10b6:8:1bb::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.20; Thu, 24 Oct
 2024 15:33:24 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50%6]) with mapi id 15.20.8069.027; Thu, 24 Oct 2024
 15:33:24 +0000
Message-ID: <5a48a3f3-bda0-45a2-98e1-068165f8e772@intel.com>
Date: Thu, 24 Oct 2024 08:33:22 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibility
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Himal Prasad Ghimiray
 <himal.prasad.ghimiray@intel.com>
References: <20241022055655.1902-1-suraj.kandpal@intel.com>
 <20241022072920.102033-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20241022072920.102033-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ2PR07CA0019.namprd07.prod.outlook.com
 (2603:10b6:a03:505::21) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|DS0PR11MB8739:EE_
X-MS-Office365-Filtering-Correlation-Id: 693c6862-ed8d-4431-71be-08dcf44132bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RzFUbGRkYjlEeXNNWllqTUl4Y0svRTVZOVdXaHFWT3BzTTJCVndVbFZCZ0cw?=
 =?utf-8?B?bFFNTEp3WVZScGo3NlQxcEpCRHJKbFp1VWVGQndrUU04cUVmaEZ0MmY1cDVP?=
 =?utf-8?B?THpmaEtmaUJYU0kxdGtzOTQyZkk4TkNCd2dGZkFHQmN6ejZEMThTaXVTMTk2?=
 =?utf-8?B?b1RVT0p5N2pOWVlHcTBmWjlFNklvNHlNem1aQTB5QlNYZVorMVRPMG96aFI2?=
 =?utf-8?B?Wmo1NWZTZEJyTGsvUlJDbFhGdlNxSHRpN3R5eE5JOFAzNFU5Vm5TK1V4M0Yr?=
 =?utf-8?B?YmVWSzhubWJnTG9vR3BkeFR6QXdpcVJoMTJBWmwvVnFwMnV6cjQrNnE2U21X?=
 =?utf-8?B?cUIzdS9pQlhjcmV6dzkzWGlaQVRMWnVXNW8yYXNhTVk3NGRqaGpvYjJLbnVs?=
 =?utf-8?B?NEswMDZxMDVwSG0yYk8xTTVaTFdHeTFoWG1wdmtzbEtacEpXblQ4OFQ3a2dr?=
 =?utf-8?B?dDhPV2VQTjVZOTUwak4vajNaM1hBQnNzeS9kU2kvSG1ldE51NjlaQkFmMXMy?=
 =?utf-8?B?ODE0SnFxWkxvMWZ2ZjRsNDZybzFzSlF6T0ZqRGRXSGMzK21YU29wRzdFYU9v?=
 =?utf-8?B?aTFna3U5bzdnUHI0NVJoU2x3QXYxQlRJWldoVXk5YXdVckxtZ3ZyekZnSVBN?=
 =?utf-8?B?OHZUS29FNnN6VTl1OU1QeU5oTVdpNmUyRitWV3Nua3lJWkRqdUphUlhtZ3NY?=
 =?utf-8?B?WUwwNC8vWlJlUWlBODVRTHJkY0ZPV1BGR2c4TDQvMVMra3Rjc2FVUmV5bWxR?=
 =?utf-8?B?MHJQU0g5b0lWVjNmRk1hYlFVUFcrVzhFV3dkWFV5RUp5MFFyUnY5aG1VdWNJ?=
 =?utf-8?B?ckV1YjJ5QVUrUFhIRWNxcFZKbEhWVU1Bb2J2Qm9vcGhEMnBJQlB5b1g0MFZE?=
 =?utf-8?B?SFlHUDlXb3doRU9iM1pVZkVQYURQa1MyUk9YOVNoZ0NkVGlSSThsSzhOTG0r?=
 =?utf-8?B?MGt5eVd1YmdIdVpUb3hoUnRhTzNWdk5sVEtBTGcwSi9XK3JYMzlhLy8vSWtE?=
 =?utf-8?B?MFI0QnJrZ0FwK1k3R0lIUjJxb0ZyV2QvcEhwUmlKeURyVUJqQXpsVFQ2SStG?=
 =?utf-8?B?bTYxOW50Z1I3TDJnM2NCOUNwMU9kUkIyTjk3NmEyNTk0dTAzRVcxT3JPUjc0?=
 =?utf-8?B?UU1mWjd0SHdhTXEweVh3TzdrMytPbFAvLzRacWVvR1cvS3FLZWRWUE81SWZx?=
 =?utf-8?B?STh3b3NHbzhLeEptMkg1RWxERDg3cW96ZGNpRUgvSXNzMzI2c2dvcXhVSW4y?=
 =?utf-8?B?Z1lVeEJteWd4dkVLWkM5cjZnbjFnMVZ0cHM4dTFaMnJoWURCQmRHVEJEcmQ3?=
 =?utf-8?B?Q2dIZnJrNkdyT0JDY0hzWk5IazVRdjdXVzhxZWtROHA4d0ZCNWdhaElRODcx?=
 =?utf-8?B?KzZSb2VQdWJUcy9mN0x5UlpoQWxJYllLNWNZa0t0QlViUjI5NDVRUHZ5ZGl1?=
 =?utf-8?B?N2xBR0E3Uk9GdTJiRXlNY0kxc2VQQ3B6THJmZ2twaHF4SnZTV1FRbllHQ0pT?=
 =?utf-8?B?eFhMSExuLy9ZWm8yaVZwbzd1ZEJEaFJmVHRDcmU5VmZJd2ZyVWpmU1Nwby9D?=
 =?utf-8?B?M3dlY2F5WW1Ieno3WGZVUnRKUzZpM3h3SmlFdkk2VWx6ZTZURDVQT0t4V2Fx?=
 =?utf-8?B?VVplNEo3NnhIbWo1c2Y0ZXJtc2tlblRZUnZjL2hwdUZFTzRzbk0xTkZpL3Qv?=
 =?utf-8?B?ZHBRS3VUZW03RE9CZ1REU0VRTkplT1c5Zzg1L285Q25ET2MzVEQzbDQ0T1dl?=
 =?utf-8?Q?+v4fz2eqjo9rLxqUrRPJQWfAnkYNXs7Tn5PpCdr?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dTBrMWJ6aDNtMkFrb0I3cis4aFlXOU9Ja1d1SElQemJQL2ZVd2FEQkFNSVZQ?=
 =?utf-8?B?bjMxenBKNy9vbHJDYTdTSW9vL2E2dHZOOExRbWxEK3FrTzV5MDVpb29sRWcr?=
 =?utf-8?B?anlrT0s3dkdTemNvbEtRRjVrMEJXcHM2QXNFejc3MzVWV3J5c0w0YUsyWlB5?=
 =?utf-8?B?YnhJNEdSTXZuQ1ZjcVZibmhZMDMxK1MzV0JUN0hVTmhmeC9PUDBobHZqbFlP?=
 =?utf-8?B?SzB6Ym1KbU5iUnRubFFSbWtMcGdqbGpJNmhZc3RXYzV1UUJSMit4Yk4vTTFa?=
 =?utf-8?B?OElvSDhOUVNxWUFRT3JoMnRCWEVBSmlVWUUrcElHQmZXRmlUMlQ5OEN1QTZw?=
 =?utf-8?B?UW1qZTFyV0d4TCtJa0U0T0FtUHJkWVRKUmpBazFPNXJ3NjlkK0hDQjhhVHpx?=
 =?utf-8?B?ME1wbll6dWo1RGZUVngrUDdnUi8zSWdoMDZaaHk4elJHZUtaYVN6SGRnNTNm?=
 =?utf-8?B?ZVJuM3VmVWRFclVoRTNMS0IxaTNudFJhaGJPSXlGTjVMb2tQTHdpZXIzVFdI?=
 =?utf-8?B?VkFNQ1pPTU8zREYzQlFaVDAzMGMwWDdYVXBRQkZmZVRLbjlaU1FkRWYydVZG?=
 =?utf-8?B?SklGOFlWYkhzeWpWM2R4TWkwY1dRMHlmVDBmYmRJbUhvWnlxakpMU1pFNndR?=
 =?utf-8?B?YVpsVElNSCt1NXVoeDQ3ZkxCbjR4MERnYjcrRmwyb0J0UUJBOFpVcEpOeGJs?=
 =?utf-8?B?bi82YTljU0NjREVDWEJwWDliTzBjYUNKWUNLSXZxZ25aeVlQb0pFVFBXc2xM?=
 =?utf-8?B?WXhCbFhFUTVnQmlGODFtUnU3T1lML3JFSEVpM3dmVUdHTCs3Qm43bHNsYlNm?=
 =?utf-8?B?UFh3aTc2b0tMNStDYVltM1BoOTdFRWhJUDlCdkkzTkMzNHdMVWdjTnU3Q3Zh?=
 =?utf-8?B?clZoNnhFaDY5RXZiWHBOSTNEeDQ3MW91V2hwbXl3YUp5WnJ4b2JXN3NsczEz?=
 =?utf-8?B?dUVsY2t0QWJKaE5ZTE92WFZDWm5weE5GSzAyRjFldzUwL0F4OXRUd3lkcnRE?=
 =?utf-8?B?S00xZVNDWlFPRXR5d3BsSHpjM2Z6eFA1QVQraHBra3BQKzVMcWp5aGtRVXNB?=
 =?utf-8?B?YWZOYWYzTVpFMWlCRE1LdkgyekYzWTN0Q05zaVFhY1Vsbng3RDNDTHBpUXBE?=
 =?utf-8?B?a0dBdTRQYVBRTGZ1UXAxVHlTYXFrR29uL0doREZUVFZTZE9uV0hhVEMzdHpk?=
 =?utf-8?B?TmxWN2w3bSthdXQyUUI2VXUxUURwMGNxSWNzVncrMlhTcmN4THJDekhPcVdN?=
 =?utf-8?B?ZnFteExtaTdBWWVsVTlIMjRjUGJrcXpvYmhQZm50aEI3TmFRNUR3S1BJUm1X?=
 =?utf-8?B?WjQwN3BaOC9KL0FYdGw5T0g3MWdPSnhkY20vVmcvYXE0ek9GVnFYUmNXYi9a?=
 =?utf-8?B?WHJpZ1N2L2UzTFNOK2laVFIvMTJDQlh4MTNPdXBZYzRyZ1BJb2ZreUtQRFQ5?=
 =?utf-8?B?SEYxV29qVWxzclZMRmprWTFwa3B6eEwvM1lSa1gxRzV0N2h1cTRObTlkSVNT?=
 =?utf-8?B?bm9jZFRDR1lQMjVCekNmZFMvZDcrSGdpZ0xQNzd4NHVHKzNPS0VtZGRnMDVX?=
 =?utf-8?B?VGNTT3M3b0RSUEhjTlNHWjRJLytYTHJRMFp5bjhUWkR5eHU2anhtZDJmWVFE?=
 =?utf-8?B?UjNGajNUVmdIWmtPeEdOb2lDTWNKNGhva1lDRlh2M1BKRndsQWE1Y2JVTU9V?=
 =?utf-8?B?RmlXOGNBUFJuYXljelhreGxmSGFDWHFLVWxFSldwdDNDUXluY1R1eWNBeWlR?=
 =?utf-8?B?eFVySlpQY2hpN3ZVYWxPaGM0dHU2S0VQK3pJN3BLNzAxTkpvR1ZQZVFkN0t4?=
 =?utf-8?B?a2dMMTBFazlNZGJkaXBneCsrdll6Z0xOaThVdFI0UVpSQUVZQ1VYbVRDanln?=
 =?utf-8?B?NEJmOVpsMXlyTHp2dFVtNGpldCtvblcxMUFFdGJUak9EUDU3Mkt3UmFIKzVZ?=
 =?utf-8?B?THZ2d2tFb0IrZm85VWVST0NMaEJKbzE0dExXOHhOYk5XNFVrOVltVlp6RFg4?=
 =?utf-8?B?ZUdkRUdPL3U5aC9uVVFTSzA4aGlpL01NNXJwT2x6Y2MxMERBejAzdU5obUUr?=
 =?utf-8?B?RDg2M2NuVzZuR2UvWFdQbFZpbE0rQUE4eTZETkw3d2poQlk5ZTJQaU1xQ05N?=
 =?utf-8?B?WlkxUlBkeU9xaU4zSndDTGVsd0thZWY2TGw4N3dEWDhOQUJmWWRUUnV6ZnN1?=
 =?utf-8?Q?dZR712YldPckHlGegtzfy/E=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 693c6862-ed8d-4431-71be-08dcf44132bd
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2024 15:33:24.2792 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GJfh5s4q7A7q3FbqAOLV//0e3AD0n16X3hVv1TKurhQbl0aAG0hKm3GxluCJXXvSlZPMndzDHkuVhs8njXCBFAxzkWe4OuU/0MtGE7OLMho=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8739
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




On 10/22/2024 12:29 AM, Suraj Kandpal wrote:
> Add check to remove HDCP2 compatibility from BMG as it does not
> have GSC which ends up causing warning when we try to get reference
> of GSC FW.
>
> Fixes: 89d030804831 ("drm/xe/hdcp: Fix condition for hdcp gsc cs requirement")
> Fixes: 883631771038 ("drm/i915/mtl: Add HDCP GSC interface")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 3 ++-
>   drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 4 +++-
>   2 files changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 55965844d829..2c1d0ee8cec2 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -21,7 +21,8 @@ struct intel_hdcp_gsc_message {
>   
>   bool intel_hdcp_gsc_cs_required(struct intel_display *display)
>   {
> -	return DISPLAY_VER(display) >= 14;
> +	return DISPLAY_VER(display) >= 14 &&
> +		DISPLAY_VER_FULL(display) != IP_VER(14, 1);
>   }
>   
>   bool intel_hdcp_gsc_check_status(struct intel_display *display)
> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index 231677129a35..efa3441c249c 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -8,6 +8,7 @@
>   #include <linux/delay.h>
>   
>   #include "abi/gsc_command_header_abi.h"
> +#include "i915_drv.h"
>   #include "intel_hdcp_gsc.h"
>   #include "intel_hdcp_gsc_message.h"
>   #include "xe_bo.h"
> @@ -32,7 +33,8 @@ struct intel_hdcp_gsc_message {
>   
>   bool intel_hdcp_gsc_cs_required(struct intel_display *display)
>   {
> -	return DISPLAY_VER(display) >= 14;
> +	return DISPLAY_VER(display) >= 14 &&
> +		DISPLAY_VER_FULL(display) != IP_VER(14, 1);

I don't think this is the correct check or the correct location. BMG 
does require the GSC for HDCP, so intel_hdcp_gsc_cs_required() should 
still return true; it's just that we've decided not to support GSC FW 
loading on the platform, so we can't support HDCP2.x. Also note that the 
this might change and/or it might apply to other platform in the future, 
so any check needs to be done based on GSC support and not 
platform/display ID.

IMO when intel_hdcp_gsc_cs_required() returns true, the caller should 
check if the GSC FW is defined (or if the GSCCS is available) and if it 
is not return that hdcp2 is not supported due to unmet prerequsites and 
fallback to 1.4 without printing any errors.

Daniele

>   }
>   
>   bool intel_hdcp_gsc_check_status(struct intel_display *display)

