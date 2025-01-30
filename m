Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A61A22CE5
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 13:24:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC1AA10E339;
	Thu, 30 Jan 2025 12:24:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YGkU0PJB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49F4410E19E;
 Thu, 30 Jan 2025 12:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738239879; x=1769775879;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=11utWuGo4jGx/SL0NEOKaLuCVxP/k/pCafvvLP9N+g8=;
 b=YGkU0PJBZmxKYJzjgx8+rPZz/hgxL4MOzUp6lKGiXIJsbHBgIa5N+X7a
 GEpEimyLsvomWIKx+FCC6mg/R5p7GTxG7bRs757yoO05VKREcFdwDPMCF
 PNwi+47YotCdATBfDYRa76CbeXicdki1GVKRab2grmeqkuE68eap/ZYqg
 Kc4J56zVwUMWOdPy6UUPtvX9sMpPx7G8vYc4A7ueGLILZw3a3lrvEGUko
 JSy+jyDG3+jwhNq6eudchuuwYqprinqPq4FL5jpLGtg5YBaFk1q8jBJHN
 M5j80QXbPMKtf9fv1EGmtGrFMZJ7qh5/+34TBqKqeWakTdclORTHcg6zU Q==;
X-CSE-ConnectionGUID: 5/Svo38NTMSwbkNNRMdVRQ==
X-CSE-MsgGUID: O025zGxMShibIbpCrqHTNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="42435637"
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="42435637"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 04:24:39 -0800
X-CSE-ConnectionGUID: IEICawqWRoO7mbsZjejBAg==
X-CSE-MsgGUID: 6sOXshjpR/+u4RWZBsJOgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="140195875"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2025 04:24:38 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 30 Jan 2025 04:24:38 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 30 Jan 2025 04:24:38 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 30 Jan 2025 04:24:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I/QaaDag8jElOArHz7d8Y5FaRGezpIRhYAHiLeBNafb+GICmYWUAUrTNT2MRk0KPhmsST1v6HsG/yq8FiFzLca7bKL7Z1hqoeZ9Fk7HdeAyHru+lqVkNzLH+6Z/VjJimUh8i8dPDBmkZURFzshOO136dEF+jrRSQV3EdDUuunLrieTnM0twE6uckuprkH4lhksyytoRUYpGbEGjOUEh2BeE1ydgOeJYRLbHjcY7ZE/h7f4Ff/yO8XmSjdma1RM6DSdGMCoMsiUUr7Te85R8RYG/zlzGiEUrlUoN5T+BRaG0HGyzGw3BGq+mAreSxXKigDP97WmXjbdw9lzEkttPWgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0r26djwkJFQVjTwTGRhXvDkedBCLPkBJGs+fviNN2sg=;
 b=Bi1iWf0BRvP2XQyt8efWxhEB0Sjdj7x/wmGplN3JXYWzb3jLPbnO7jeINrDvcOayAQXYfKcYEBBlKsBlqXmO1p6/2uKgoz9DWf421dTwueKoSYSyFJmgXo0aCK5hBc8zBsHHcfjz3Q49mMp8EOK1T517gdiQZhwQ/gBA5otAZYX3bze/eENLuClPGn4MfiX70c0QDqN0Ivy1/EpHtscRKyE9wtIv4+vovMpBRci3mmoJHn0pivrmbbJgggDRYJza/AQ+cTlzgyUpOPr2Y9SeZ1aPyqVdbFt01WA7yr4y3/IGQPAXtpgDWf9b3wemEXDPczD8FkzwWoSRs6H89kX2oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by CH0PR11MB5218.namprd11.prod.outlook.com (2603:10b6:610:e1::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.18; Thu, 30 Jan
 2025 12:23:53 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%4]) with mapi id 15.20.8398.018; Thu, 30 Jan 2025
 12:23:53 +0000
Date: Thu, 30 Jan 2025 12:23:45 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <I915-ci-infra@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZv?= =?utf-8?Q?r?=
 drm/i915/selftests: avoid using uninitialized context (rev3)
Message-ID: <lqjzu6uigoihbvk45wztwh4k67so64zd3jt5ytwstzhjbjanbi@gh2jgbetis75>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <iuaonpjc3rywmvhna6umjlvzilocn2uqsrxfxfob24e2taocbi@lkaivvfp4777>
 <173823400465.2815826.2611967640478376490@b555e5b46a47>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <173823400465.2815826.2611967640478376490@b555e5b46a47>
X-ClientProxiedBy: DUZPR01CA0081.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:46a::6) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|CH0PR11MB5218:EE_
X-MS-Office365-Filtering-Correlation-Id: d0fc91a6-2489-43ad-6b98-08dd4128f585
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aUxlRHUrL1Z5S3kzdjNHemo5NWViZmp5cFhQVG5PMmNhVXNDMlF2anZERkJK?=
 =?utf-8?B?NzZwS1h2eDdGZ2JTY3F3Vm5ZVjBidDlReGZ4Uk1nNGxaN3pDd083bGVxaG1h?=
 =?utf-8?B?L0NucE5QOWowWHJrNnlKTEZ3SDJzMVFsWW93Z3hIOHVhdVNId2Y0MlpyMmZF?=
 =?utf-8?B?R3pianBYaitnV1l4WEtNOGFJNzB3RzJnRWNVVGZNT1o3Mlh5cHF2ZjFtUU9j?=
 =?utf-8?B?ZHY2U1o2Q1oyazd6VUROY2M1M3ByYlNLT3VEc3VXbFZQVlhpMituSkYvQlRD?=
 =?utf-8?B?cDROdW1tTHgrTlA5amIvdjlYTThReU5PVlBDWGVHN2g3T2lNOEI1UEVldDVs?=
 =?utf-8?B?UC9FU041Tk9SSGdQazJGK2FZNjFuNTF0RndxbzdmTUZlLy96NGZSakk5K2xy?=
 =?utf-8?B?S25QN2ZYcUVkSXN4NzBxT3EyRmFzbElzMEY2RjN6VHlHQU9KK2FYaVp0WmZG?=
 =?utf-8?B?YU1GTUFseUNLVTM4Wi9TeWdrN01heFdIUW10ejM2UkxiM1ZFM0xvVU9nSVFF?=
 =?utf-8?B?a3E0TUpCQXNPQWVnR0JmNmZuRmp1VDNVMEp6K0hTZXRLTk93RkptM2lQYmVp?=
 =?utf-8?B?TDVHaVFPMG5QNVVEbUZKWGRXbk45SFhXcHNjVUttd2hocVlBL2RzSGdEeSta?=
 =?utf-8?B?Nkk3c1NTWkRBUURjRlR3czMwcENjNnVEeGVMWlV3SGRWZ3l1dTZQU2ZuakNw?=
 =?utf-8?B?eWFSNGl0ZW43WGliQjF5TVBwc3VRNUhFVVNadGpJWlRlSEdSMWVwMG5YSzE3?=
 =?utf-8?B?aG5kaUNYUmd1TmJUZ1NWODMzWmVwcjA3Zk9lemFiSzk4amNhem05amJ5eVFn?=
 =?utf-8?B?aU5sdm4vUGl5cnlmc3ZtcTcwQmhIWUpnM2hHbTg1cWxFbVVLS2lyc3dBbmZw?=
 =?utf-8?B?S2pjcDBDRGJyMlQrYzRGVEtNTG1sbk1TM3Nvbmp2VmFOcUMrMmdod1JUM2Fh?=
 =?utf-8?B?aDlCZlpxdGRxcnNHTEk4c2VJbjQxRUxBRTF6QTNtYnZCcGxJQTVjbDJPWGtX?=
 =?utf-8?B?bDdvQnNvaHFUMHZqWDdEZ1RQNStESnFCcXpwRisvWGM2L05vMnIrQVpXSXJB?=
 =?utf-8?B?ZkdNU0lZWTJvcS9iSmNuc1padDQxNnFNOUljVWh5Vy8rS0diL0hOaC9YWFVi?=
 =?utf-8?B?Q0I5YXlzNXZTcVB4UWRrd1diWWp5d1VZSXV2R3orWVVsK2JkaCtLNzZOM2Zw?=
 =?utf-8?B?WHFhc1RiUEUrNnRCY0dBUlI3WHNnd0tRZmJXbHNoVUVHeEcwTFczWk5OYmpV?=
 =?utf-8?B?NE9xMTFXRmhhSC9MVitIWGYzOEdya2pCYVJCamRob0o5ZEdXTjkyNmQ2Smdx?=
 =?utf-8?B?aUQzZlZLTEJBMHoycFZaTHo4dUE4WmZQTDZSUHNRSjFTYTZNT2dWNm02S1dJ?=
 =?utf-8?B?OW9mbXN0NFRCb0NpRWowdzZIK1VTSmRzYXdGeXNIWVhWb3B1aVJodjVwMkNI?=
 =?utf-8?B?aWFPcjA3dms5ck0rb25XQy8rbk01azhYbmlrMDZtQ0dxdllLTG0wNWtHcXNN?=
 =?utf-8?B?TVYvM3Y4bENyMEx2ZXZkVWR5VEFkbWxhcFZYZlFFK1ZqRk56WlNWUlMxZFFv?=
 =?utf-8?B?ZVBmeEVWL0F3bHg2V2xadHoxUHRuSTc4TzVFaGxMdy9oR1ZveC92aVFzcWRG?=
 =?utf-8?B?N29YQkgrMGlQUTJydU1PdGZYNE9YVmZlTmRwTHpITEdSZEpBKzZPWHZJUE1y?=
 =?utf-8?B?S0EwZmNZV2diRTk5M2FBellldEdSVWFiL3FlZnBySXdKUGNyZi9lbHp1QTN3?=
 =?utf-8?B?OFNsMVlOZzJSay9qWEc1RXpxMXN2cTdJVXpUNDNwaFpSQmkvS2NoTW5kL1pj?=
 =?utf-8?B?dWpWbEZiUkZnVmpqb1FKUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NEw5aVBxK1RhTmluK0xEWkpMc3F1cEVYakNVLy81QW42akFoREhHcHVLc1pi?=
 =?utf-8?B?bzdNYnFuazBmaDdHaXlPMFBnc0pVa0Q4VjRvb1IxMndUU2dvMDVvbzltbUtz?=
 =?utf-8?B?K2JzSzRnV2M0UlV2RHZEU3BHKzB2M0VLNms2bmt3RC9JK0VoYzlkMHkrNkJE?=
 =?utf-8?B?V1pNamJEMUVGYUJLOWFrVGJXR2RPUE5CeHMzNGtoQStoblliNlB6cm9LNG1P?=
 =?utf-8?B?d3E1Wm9IbDRUdmJoL1diSXc4T1FsNVBSUU5TR0tJL2F5Um9IUWhOSlZkWngw?=
 =?utf-8?B?U1VSQThBdHU2SCtSOG1sRWd3a3pETlVOaUpCaU9uYy9vQmxKeWZ2Wk5Kc3Rz?=
 =?utf-8?B?QTZYVDF4emU0by9DZXlkWDc4cEQ0STBIQTI1NmFZbjBOaXB6Y0g1Qlk5NmhU?=
 =?utf-8?B?SUgvRUhrejYza08waXJaZHRoRWdidmdkd2ZUMXowMjEwbnBIRjZicng1U2FC?=
 =?utf-8?B?L1orRWlhYmR4cVZvOEpWZ1VpbUprdmNkTHhTek93ampka2V4TjlpUmRTNTEv?=
 =?utf-8?B?Tm9WYkJMZ1QybzQ3R204ZWl0UGtVZFZuZTNzb1NRSE5ibDN5YjA4aVN4Nkpi?=
 =?utf-8?B?MEpJVUZQNCsxYVE2YVVKSE9zN3lvZkhFU0RJL2R4V244ZnE1aUxrbjI1ZGhp?=
 =?utf-8?B?cml0bU5pZ2JUS09PT1hHcU1rQjZ4YU5Tdmc2bzd0QVZVOFZoM1Q0YUJpWUcx?=
 =?utf-8?B?RkxKZG9wRVN3Wjh3SE5UV2JlamowZForWHl6NGR0blhQUk9NRUtQako1OElF?=
 =?utf-8?B?c1d1OUZmRGF5K2tza0FJUnY0UTZ1SW1Hcm03L1dVWEZNR0pEeEtiVkhzSkNy?=
 =?utf-8?B?ZkRweVdqVE9xOHJXTHhzdGJxN0FnUlREa2JsVjBMTWdSTGxjd3dUNis5d3I2?=
 =?utf-8?B?UCs4dDlHd2hBaDREOVdBQWVrdVNNbE9ONWFRVGZmM3MwaVlUVTd3TXQwUXFX?=
 =?utf-8?B?SXZjQTdyVGtiR01iNjRXN29LQ21SUmdweGpPZGJwdHUvRjNlOTBlYnI0UTdM?=
 =?utf-8?B?aUJLVldpMk9RejRGT21TTHVPU0IwRDNTay96dHBqUDUzOTBlS0RvWURvVjBm?=
 =?utf-8?B?NGRVOXcyaUZOa2VpK2p6cmNrNTFQSy82U3hHRDVhcmNnWlpnWWZ5QUZpTVZV?=
 =?utf-8?B?TGl3SnkvU2FzTmNScGRiNTY3TW9lK1NxZTM4bjViWUxzRzNZYUdIcHJjZzZu?=
 =?utf-8?B?ZS9PamVhMHZtaCt4dG40ZWthSnhIMmUzSGxpWGUrNUxGRWVFS2Yzc1ZNeVpZ?=
 =?utf-8?B?NERGSE43b1d1Wk1oZ1BsOHhRSkFiNmhMSVJUVkVtS0hiR005eXpMbEUrTTEw?=
 =?utf-8?B?U3pBYzYxa3V0TkxXejN2R2ZFcHV5Z0Zua3FOZVE3VVdRWG01eDdoK2tHQlln?=
 =?utf-8?B?NmwxYjJpUDJhNjhVYTZHRTVvUEdqTkFKY1MvUHdyK21XakZJcFdrS3ZkVTkv?=
 =?utf-8?B?Vjg0c2dNNXVscy9saXhrQWpUS2s4MDVOallWNUNYai90S1FaR1VEYVZWMk1C?=
 =?utf-8?B?RDZzb0ROZHhSVlRKRkd4M1RFUXEwSGhYT2NDc2hIQlVhME9ERTVvcUVwcWdJ?=
 =?utf-8?B?di9zVE1tWnEwUzhMbEVtYUFHaFVwNXdBRlZrV2wwMkNYQlFOYmRkLzNZODhO?=
 =?utf-8?B?ZEtpNDFOVHlleHFkaDMyN1hBL3FCYmZtV2tTZG9tRnJScXZTMis0S2tReWE2?=
 =?utf-8?B?S212ZzVScTdlRXJFWjUvSVhJS2VvQ1Q2cXVBbUZUdXJrRUlPbzlDUWsrR2du?=
 =?utf-8?B?SnJtZCtkV2duR2tNc3hPYlBIK1Z2aG03WXc1WmwxR1c0YkFqY0h6WThMc0pM?=
 =?utf-8?B?aCtiWFdGODBwTk45a2MxMjQzbVhGTWZpWnd0N1o1SjB1OG1OTStybThDOFh0?=
 =?utf-8?B?eUxaR1BRMFFkRnp2SDFmY2ZEaU9sZlo5U0ZDK203RWxNYVg4MDVPWWpEenhs?=
 =?utf-8?B?eGRkcHJwTkxLQjhQbUwyVnRzcDBWZ1N2NHRoWWRTbHBtcGhaemRWSDlNNFRT?=
 =?utf-8?B?RG1tQkVHbnJQMnBMS1FjRHhZdE5ZYm1CZG1KczdKUGFURXpUeVZkQlhmbVND?=
 =?utf-8?B?TVpETUxYOEhweUgxbmY3UTJTdU1YeDdvNEFjdXhQVTBTdFY1QzBkTHpTL3JF?=
 =?utf-8?B?M3RONWdvWlNCZFpiWk1IMS9NdVl1WDhlY2NmbGtVSHRmWmI2UVcyZG5nczU4?=
 =?utf-8?B?eEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d0fc91a6-2489-43ad-6b98-08dd4128f585
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2025 12:23:53.1652 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E+lhjsOX8nCsaZTz7d0YT3EzmZEbaS3Og0JqFgWTelylxMFePVh/gcqiRMQDCQydrxBb0mx5nqpOTNRsyH/R+Dq7LXWOZJk0XknfYE3zrNg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5218
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

Hi CI team,

below failures are not related to my patch. Could you re-report?

Krzysztof

> Series: drm/i915/selftests: avoid using uninitialized context (rev3)
> URL   : https://patchwork.freedesktop.org/series/143990/
> State : failure
> 
...
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_143990v3:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:
>     - fi-cfl-8109u:       [PASS][1] -> [DMESG-WARN][2] +2 other tests dmesg-warn
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v3/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html
> 
