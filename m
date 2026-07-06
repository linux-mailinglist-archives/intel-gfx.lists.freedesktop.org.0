Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zb11AcdVS2qEPgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 09:14:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6568370D676
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 09:14:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=IRQ4zVky;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBF1C10E7B4;
	Mon,  6 Jul 2026 07:14:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D2C510E7B4;
 Mon,  6 Jul 2026 07:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783322051; x=1814858051;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=f7vo9ld2Z1Fo9HBceFHS6n5Hd72TqiFnyUed8sc30FA=;
 b=IRQ4zVkydneYailYxpT0G1HkTNmRx+jQtkV64gsDb++bADFOc9cLvq1N
 VRKSR88yAQ3HXMUDtY9VnNwT87DrmCjQKSy+Rb1lXT5gYDiQ1RQgvp2zz
 iOzASs3BlQ7fXLGdHiH3dg6iUSZoI1A5SxGqtHOXgqGUtra95JY5zLDxx
 MbBKnK7udpRLfW3uYenrH11MVbk3FPa8yXZyo5DNOxo6owVhQmtyJgUBQ
 6JoEz0B4dhGfzFcq6Obf8x4F040Dp/2tb0fgtOJD+YTH3EJp2iVdDhEmC
 r9ORnM+3EM6Wnuf6jThNrZuKQ49UmsOgBWoERAMCqlIpBNoQXWv5xPtN6 w==;
X-CSE-ConnectionGUID: 6fQYgJH6SbCrn16SDWNQCg==
X-CSE-MsgGUID: O6NSbzjCT0WZ7AbISeu4cw==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="84039073"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="84039073"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 00:14:11 -0700
X-CSE-ConnectionGUID: uCMWsykORl+9PgNoeB79Dg==
X-CSE-MsgGUID: SwLDM/RzSECGQa1xMWsZwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="247236316"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 00:14:11 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 00:14:10 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 00:14:10 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.24)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 00:14:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c/qObIiUGmlFMIORalwgbfYd60Ntt9weQTPlNGc0FzAZu8Lkn8w1pEB66hyV5GvQZtSPTdae35RbntKobEaiH5TW10hsRKwzEOcm7xfzdjTZ80OXwDiCxqNCg6ZsyhSSg+AQtIArqSSqv7uhC1wHt4vdC0d2kCxHIokK87Y3KOeVwgL+WuwkqP8g3NzXe8DtyJ3RwoqxdT7Bf1Nx/ibuz0EUMgOCLXOHHAyAeI+KMwvrCaHiENavvAq7zYAY1cd0UHNCVtaAQYDCTSBxDv3qnyuFSAJwM7+0bWdgvvqbPMF5Cu0VDixQxz/Kmk6l+2seke3DlPb2uV1fV+inaIBktA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M65GSIGduRxkWoEIOm9aiVrs6RwP8TJLWlRNpQhTSkc=;
 b=klBEUaTg1QLzzVOh+8gquruFTojyPKbB1JGEVBjkKgamlKff67wqP+1alxFxXTG5eW2jmYShaPmcCmBqg5gRo5zE+cpEAoEjRUoLhZqtVjaB0SgzuixE/VSwRezdHacai10meqhGO4R6AuOsjRL+korRWmqEtqen/gWn2P/gy02JW+oVJrpJBL9mGsTr7I0FTvnLzNmmWd/I10en9oT6TsusD8+FV+PEOvpIRKy6Mvyjxt5ZTmdPCKk6ar2rKBiSqRBR1XFRGM6Jr175AFet2bHc5FGCrlXVn3uOAoV41yU677biJglwyP8eev5CH9t8hKNOGtlnIDhaL6sw1pz66w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by BL1PR11MB6004.namprd11.prod.outlook.com (2603:10b6:208:390::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Mon, 6 Jul 2026
 07:14:07 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0181.008; Mon, 6 Jul 2026
 07:14:07 +0000
Date: Mon, 6 Jul 2026 10:14:03 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 29/34] drm/xe/kunit: Build DP link display tests
Message-ID: <aktVuz_hliP9N_wd@ideak-desk.lan>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-30-imre.deak@intel.com>
 <b651cf45-e19f-f509-fa21-e17c026f003b@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b651cf45-e19f-f509-fa21-e17c026f003b@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F6EA.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ea) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|BL1PR11MB6004:EE_
X-MS-Office365-Filtering-Correlation-Id: 91f8f1ea-4329-423e-ef53-08dedb2e2b2d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|56012099006|4143699003|11063799006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: FmhofLyynFjbCM8LGDqtkvTSLRHi4CAmDwSSbvHW/pbVKnlwaK8g6m7uiWh7VcM5rB2lZvwt492k3QuajzQIYzVkdfzw24BOMoislF+IJqivKc6ywQ4O/OpGnpoQjnjGgaSPQ5M9zWsi47e1Zz8MpiO4n7x5To8rXad8P3Sg8bCYhtGL4Isj4S92PzDwC3C2Q3Ru2Xp9Vm1BjXlvykQGSS4oN4Yi+QTSZ+kAk1nb9rMHimnqnMPCfN2Qf4Ec3uu55AfaKHwxK9dfpd1yUNV4FYmHAcFIpy1SueHYsluY8MR9Uk/KXH8EtTXk/hLMMSfhhWDUnllZTC1yXdgq/HTT8j4oRiYVgTP5wBxIxwHcZg8yJ3wMPzdF7JwINNEDOj0FS4tEaJF5xaqkoFrewB91Ky/i3aDqFoaS2J+9WV2UkecEnIKbZkQSg/rWs0lZGxIGzmyLim5uayddv5MlbHNziwOfduOCM8aKA84H21mNJTXQ+BVy735THFKuuWDtu+J6vC4C5D6EW6hZfNPZ7cFQUwt6qQZmbG4fE4ZKktaFeUlY3fR+h+n85vWlUx/qGcnqAZCiZJa9Q5lT+5kRUiZ8fU1EAxQurTJs/jerEQkVzw+jPnfp8J4aQUzWZzUr8eGQLfHh2T99/XUfE99Y4UBb0VroOhCKGWsKvICPnd8lr7M=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(56012099006)(4143699003)(11063799006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RThKcDBaempxVjU1Q2VVU3A2MHRzOWZ0NkRNSGtrd3A5YW9pM2xqYVFER1ln?=
 =?utf-8?B?M2FZeWpCVzljZXIrREFoMCtZS0hySGQ1anpMaDI4WGVsRVNIVXdtRWZiUGhW?=
 =?utf-8?B?SHh5cmZ2bHd4RDVlMndBWTZYNlZnaWJEUGJLUTVPcjJCcVVid0RQRTZ2WnVo?=
 =?utf-8?B?WURHcVllbklJV3oyMDltRnFlNzMzVlFGNkFtMURyUUxVUk1OVUZ3VW5wZzBV?=
 =?utf-8?B?S0Q5UjZQeDZyTUh3WVdyN2Nmd29zNUpCK1BhQmxWR01IYkRoR01Sb1RUcjV0?=
 =?utf-8?B?aGNPOFp3bnRmMHY1N0c0Tm1YQkVSc1ZNUjkyRE1MQ084ajErUlJ1bEFLaXF4?=
 =?utf-8?B?UlZUT3JFVEY1VklnRUlRVlUydkhIblBVZTlWK2FmbkM1RGtPTnFPRzhXRG02?=
 =?utf-8?B?S1BIMEhDTmo5TzI5M2N2WnA0ZDU2L0NDc2lIN2ZwZ0tjTXh2TWxxcCtvRjBS?=
 =?utf-8?B?bnMrem04VjJFN3ZqeDdKYUpmc2owNy9hVGgwRTROV0ZJUmU4ZjZEOU9iNmdC?=
 =?utf-8?B?SGNvUzdVOW1mVkpBKzlZcXpvVERSazdqcXpEOXd5T0g4am8yL0JHbThNeXQ2?=
 =?utf-8?B?eWxyT0V4R0IzM04xVTgwVHRWWC8rTE45V0VjczN2SHhDcjNmT0RRaE5CWUhD?=
 =?utf-8?B?ZTVVN0Q5SGpGNFVCKzRFdGNYRVpCYjZ2S1hNK3NhUkNQYWhNeEd6OHZBNHJZ?=
 =?utf-8?B?amZGRUxOTkJheUE0QzlaSm1DYmp5OWNPWEtFeWdqU2U1bTJNTTltbXBJNW9v?=
 =?utf-8?B?RlpBU3VKSThLV1IvZEVpOHlWSXF2cXk5RjJ5a0tnWkY0aDhWbkFsbDJXQytP?=
 =?utf-8?B?dE5sanc5YURuSEVtMkRxQTMzTUE4UWxoN1hrZkRLcWpydXBXTGk0ZEpjdkhS?=
 =?utf-8?B?SUM4SkgzcXYzWFVSd1BsdjFIS0VmRGxITGxLVEZST2ZnRVhSK0tlUjVvT2Jv?=
 =?utf-8?B?bHpma0hLN3RWeTVZb2pvSlY2WEI2ZUY5NE00Y2xOOUZrVTFSbTVnSFgrRmxJ?=
 =?utf-8?B?TFJlbXNiOXdwLzY0YllxSFE3S1p1WGZhQTdQUGl2Q2VoRFRwcDNVdGV1dUVr?=
 =?utf-8?B?UjBvSTdqbzN0ZFQyL2FMaTBIbFo4NXEzMEZRMVJTSmdTVUYyUG1pK2NJcHdD?=
 =?utf-8?B?M0hQTVVBaFNUSGNWQXY2UlhjV1ZKTW1jYWhZampib0I5S1Q3U2orTExtc3k5?=
 =?utf-8?B?aHF2bFZ2dXVmcGErRHpHcGdCSTl2WVFRNzJrYnN4ZGc0ci8wdDR5ZENpMFE3?=
 =?utf-8?B?TEhOZ3FSWXRoc1NDZEdPaDVDOE0xcFA4bDUyQmNKRnFrWWhvcVNmdDBkOC95?=
 =?utf-8?B?eDRoWnBkaTNUR1pCNk9FU25XNExSeGkvN2tqcUNVL1E1UDhlN25kTUpFS2Jr?=
 =?utf-8?B?Q3BZN0cwUXlIUGFBZ3ZHaHJCVWxHN1UwaEtHZEtGOHFyMFpEalh0M2xpS2Fx?=
 =?utf-8?B?S2owV1hSaUpCUUNnbWVjMWVsLzBIQkJCeC9NSWFMOUpwVG5GK2crRVhsVWxM?=
 =?utf-8?B?N0g0S3FxLzJIZUFXc25zZGZERVRpdkdhZ1FNSmVQME9EbGVHTnFkK245bnND?=
 =?utf-8?B?blljM3BCL2NqZksvbGt4Vi9oRlZNYjkwL1BHc2Y2UUwyK1B3Qm5ad0JaVmFB?=
 =?utf-8?B?N3ZZMTY0eVpQRDhGT3BHZW9oMzBlcE11b0J0SHRicC9ROVpxcFlQRGhraEhC?=
 =?utf-8?B?bkVDMHJ1ZnpvRTNNT1FHclAyUS9EZnNET0NUcVcrNzB6dEwrbHhXOFhyckVh?=
 =?utf-8?B?cHVHV3FNU1ZSNFNBd2NKcjRvRFdSUUhjMDlkMTlpSVd0STU0NnN0TU9OZTN0?=
 =?utf-8?B?cllqK09qQlhNbnJkMFdnSjMrOXJGaW9HV3hHT2kxMzZDNEloOEI3K0s4QlVV?=
 =?utf-8?B?bklEcmlMYzJMQ2Z6VXhDVExITWo0Ri94YXpTYnoxYmhhVHd1YlRhNXVFOEFQ?=
 =?utf-8?B?bmpPak40ZEhNNFE2bTIrbU5EWGhack0yTzdrTXNWa21oVWk0VVdRUFVHT3Rl?=
 =?utf-8?B?V1ltUjlpR05ua0VKeUNjRzd2U1FqbDkwSGN4a29hSDZwemVFcFI5TUUyNlM3?=
 =?utf-8?B?dHovUkRWekVDZ2ZlcHhzQXdRL0VMZE0vQ3Y4c1UydmVNS3J4OW42VUpGampw?=
 =?utf-8?B?TloycTQ0SlN2RnZaSTdRZkJlTFd1bFltaXZyeG1vM21EbDVpSktteEZobFFK?=
 =?utf-8?B?Q05SUGtpU083RnFqRzE4SDhVeWFtdDAzVkFCaExDS0RFa2pLM1prbWJLWFo2?=
 =?utf-8?B?MHFIWUtKencxcXZ6cUlrOHcyaE1KYTNkdDNac2J4M2R0d05tcUtnY0RzcUll?=
 =?utf-8?B?VDBvUWc2K2F3aWI2aThwV3hJQkRZRWJTMFZ0b2p3b24xb2hnbTQxdz09?=
X-Exchange-RoutingPolicyChecked: liOtrdq9sg/q1iE7GBMYNl1i16hDIozoP3XllJV1y/kLaEsDIJH5z/NVgwjC1xV+3itBmbShkgt0GSFG6x8VC1g7O6q+5+aSCM4WeqB/YCrI42RkyzId9Vt6dh36Zo6HIIB+vs+cx4zfJy+Dm4fxeS255MKzxIHHqRyE9HZVpbHbBWoqKJg+hKu85Vsue5ExSEQm0U1pfJiA8pK7yaROgyrVOf/CAo9TRcJNIqGsj7oSL8b6rIha6xUfw/l8OzYp4PtSr1ELU/azz4fNckNWXt/jRjR4E9Q8eIfegu9Vf+RzVfy1+13/NeQySEqHQ9SK2AShhssuxqds3XCwfgWU9g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 91f8f1ea-4329-423e-ef53-08dedb2e2b2d
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 07:14:07.4915 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hJeIlvBzugsOKAUQsrrA1eJROANtAc9ClO0EB7OYu9G8EG1uQbSAzv3v9ua8SPaRbvGUPzBZLySozp5whdSDuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6004
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:replyto,intel.com:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6568370D676

On Sat, Jul 04, 2026 at 12:49:49PM +0200, Michał Grzelak wrote:
> On Wed, 1 Jul 2026, Imre Deak wrote:
> > Hook the shared i915 display DP link KUnit tests into the xe display
> > test build.
> > 
> > Build the shared display test source from the i915 display test directory
> > when xe display support is enabled.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> > drivers/gpu/drm/xe/Makefile               |  3 +++
> > drivers/gpu/drm/xe/display/tests/Makefile | 11 +++++++++++
> > 2 files changed, 14 insertions(+)
> > create mode 100644 drivers/gpu/drm/xe/display/tests/Makefile
> > 
> > diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> > index e5a04253e73bf..3ff58186c7678 100644
> > --- a/drivers/gpu/drm/xe/Makefile
> > +++ b/drivers/gpu/drm/xe/Makefile
> > @@ -373,6 +373,9 @@ xe-$(CONFIG_DRM_XE_DP_TUNNEL) += \
> > 
> > obj-$(CONFIG_DRM_XE) += xe.o
> > obj-$(CONFIG_DRM_XE_KUNIT_TEST) += tests/
> > +ifeq ($(CONFIG_DRM_XE_DISPLAY),y)
> > +	obj-$(CONFIG_DRM_XE_KUNIT_TEST) += display/tests/
> > +endif
> > 
> > # header test
> > hdrtest_find_args := -not -path xe_rtp_helpers.h
> > diff --git a/drivers/gpu/drm/xe/display/tests/Makefile b/drivers/gpu/drm/xe/display/tests/Makefile
> > new file mode 100644
> > index 0000000000000..1a582febe17a6
> > --- /dev/null
> > +++ b/drivers/gpu/drm/xe/display/tests/Makefile
> > @@ -0,0 +1,11 @@
> 
> Not sure but I think # SPDX ... boilterplate is missing.

Yes, thanks for catching that, will add it.

> Otherwise or if does not apply:
> 
> Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
> 
> BR,
> Michał
> 
> > +subdir-ccflags-$(CONFIG_DRM_XE_DISPLAY) += \
> > +	-I$(srctree)/drivers/gpu/drm/i915/display/
> > +
> > +# Rule to build display code shared with i915
> > +$(obj)/i915-display/tests/%.o: $(srctree)/drivers/gpu/drm/i915/display/tests/%.c FORCE
> > +	$(call cmd,force_checksrc)
> > +	$(call if_changed_rule,cc_o_c)
> > +
> > +obj-$(CONFIG_DRM_XE_KUNIT_TEST) += xe_display_test.o
> > +xe_display_test-y = \
> > +		i915-display/tests/intel_dp_link_test.o
> > -- 
> > 2.49.1
> > 
> > 

