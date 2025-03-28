Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF42AA74908
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Mar 2025 12:15:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CD3A10E9E5;
	Fri, 28 Mar 2025 11:15:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hse13q5j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0C3010E9F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Mar 2025 11:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743160522; x=1774696522;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=KOW4uO1h7SUchVd/VKLrssJSusl/8RMuM9KLgc8AhtM=;
 b=Hse13q5jGhRsHmCRIhBJhzazQkJYuyg/F2XX8ojmjOhpLWOWzwrwgICJ
 tgVmqvaSPjawU7VVyBnzEmH69egPw7jkLUdp2SPahemrRDxq/2NwkN5Ky
 0vL+hSwmHTUB6O+RsrNS9GtJp+xxGDz9df+54C/j2hgLwL16Lm1j27NEd
 qKHsuU8bMMHcU98ax2whN7Sr/SqsGLbA0vtVYXXE0I70yIwFpscMhNday
 Lc2OF+keDCeH0+6KEQ7F2vQ7BzGvyCJCVp68EV360IEmmTmK96o8A4SRF
 JwqV5Xr7KsEoNj0YhqYHzJWiWQXp3H/mHLFBn+DYLPp0duM8p0dmz2Wlg w==;
X-CSE-ConnectionGUID: 23cvU1TqQnGkA0vF3jzTiQ==
X-CSE-MsgGUID: gfoxYu0lR8u1qHGqJxoDVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44411402"
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="44411402"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 04:15:22 -0700
X-CSE-ConnectionGUID: jthv+ymuReCRUnUBHiqrAg==
X-CSE-MsgGUID: IXCjWhRURoW7AICuDd/FYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="126231528"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 04:15:21 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 28 Mar 2025 04:15:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 28 Mar 2025 04:15:20 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Mar 2025 04:15:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pRCcbLX/hkxWTK0DGGFHkDJpSqMJCGx5hsHoQ1y82NqnsBqHqgXggB069DuZprI4Esw221BUxp7OXIE7kadiJLjT+evnqxTQqfcAZDQENZ5V6iG++n+gzTuwD6QOLHFtgWfXMjD/eiNqP2d42GHMhef3s8MAstirQMZP1708R6pdchx2P2Z06R+WbDwQy0R8Gwv12qYFXlPAB4PXy8AVPnlgArPtsIjziDiv6BNwvWzo0ivX1rb/Zoq7yYRPn6Pt0LcHctfsAjBHx1y2rH2qebcUIYyy0OyeIymS8JvwqwelfurrfEIakLvBI7RcYZLwrwgF5Q8yIkVCqdJzstm9TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KOW4uO1h7SUchVd/VKLrssJSusl/8RMuM9KLgc8AhtM=;
 b=SSm4FpkW89FGhagkAm5h0oPjYmNXD/Xus8wO++ZMfqcPa4xVoKJDY0iJmsq84igTqTV144y66NnO3BL3e9hTRPZrDYtJiuUc1F0TbY0gclalpqg0NNqNB5cGJKO+LnUnn40kpf5v7G4LU+2pTRLbRhfI4ZbRZH3+8YN2j7XN85gSEx4N11uqdPXG/iAQehKlWXZmqEKYIAH/g5BSRZ9eiF350aC6FBiob9hJSSbjDdrkoYmyCyLTbPmaX1u5ZIVZmteVwCJrRC9y+AYOBfO2VkfUgpUcIJzq87co4EUqPZCQRWohUSh64fs1FAOVfXrWmDBp7i9PZcb+jC32ZnK7ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18)
 by MN2PR11MB4677.namprd11.prod.outlook.com (2603:10b6:208:24e::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Fri, 28 Mar
 2025 11:15:18 +0000
Received: from BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b]) by BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b%3]) with mapi id 15.20.8534.043; Fri, 28 Mar 2025
 11:15:18 +0000
Date: Fri, 28 Mar 2025 12:15:14 +0100
From: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/gem: Convert SPDX headers to single-line format
Message-ID: <3jda7f2zd4p77gilfepahqs36xphdkoybs4hemz4i2t4npzklm@gqqjgrbiwabd>
References: <20250327232629.2939-1-andi.shyti@linux.intel.com>
 <nmx7mbxm3anlntj6zys5cody5uhrdx3bou4exxnfldffsaanwu@hwkby5rtqtub>
 <Z-aD_1xO7pGJO-QM@ashyti-mobl2.lan>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z-aD_1xO7pGJO-QM@ashyti-mobl2.lan>
X-ClientProxiedBy: WA2P291CA0018.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::13) To BL3PR11MB6409.namprd11.prod.outlook.com
 (2603:10b6:208:3b8::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6409:EE_|MN2PR11MB4677:EE_
X-MS-Office365-Filtering-Correlation-Id: c30df198-5008-4ca1-a909-08dd6de9d290
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MStleU9nTk5WQWpqOHBKT0RkamNOSkhFYWhneVVrV2JFWlg5VHhFQzZjVGZO?=
 =?utf-8?B?OFRVYmN0eVpDQnYybDhpU0JtckZlVy9jdEd6ZkVmNm1uV0pVM0NKSXp5ZkVF?=
 =?utf-8?B?M21iSUhrQll1clpaMU80clpqMnlsZU9KZ09jUEVrVFhCUUsvZXVKRmY2YjRC?=
 =?utf-8?B?OEw4TkhQWEUvYW91aFZ1Q1ZtREh0ak05Mk05K3U2OGx5RVFxeUVZNm5NNVBi?=
 =?utf-8?B?TWhKQ3BzOWVIV2ZUelQxejczN0FLSTAzZGlPUHdCZnMxZGZMbm0zekRxWmVk?=
 =?utf-8?B?RGI3UnlRbzJWRGl1OW9kR3VGTzJuQS92dFphQU1zcENMNTF2MVU2azNWZ2dZ?=
 =?utf-8?B?M2JBUGJkYzFsRGpkVWZWY1k1MzVydUlOUHlsT3FJWmZ2eWRxQzZ6MVpZUFM1?=
 =?utf-8?B?cmhxQXU0QUdlLzRjK1ZjUHdvalUzYlZjNlBYOHRSVWdqOWdFK2kyeUttYjNV?=
 =?utf-8?B?NVZQUUFhODNMbzNuNGZnNUxrSkNidzVnQzhrb3k2WFlFRkhoYnVSeDBjcm5H?=
 =?utf-8?B?OFRYeUVRS01PbzJNdGZIeDhIZmJHN1NDS01JcStBRDhkc0RENXBSTHRjdUxq?=
 =?utf-8?B?UnBpRXVVaHRjUzRzZzN5VkcrVldQMmJDY1Zlbi9Fa2ZLRzBKZm5hRTJyS3Bx?=
 =?utf-8?B?RjcwcElzVW14bkEweStIZTJqS0NkZ00wZmVwTUFwU0NxcUpmeGM4RHRvcnk3?=
 =?utf-8?B?Y01YOXIrVzROZWtTSlB4U0V1dDY3MHhVRkVqeUJDamZ0eG1pK20wbWJCY01y?=
 =?utf-8?B?NnRqU2NKQkJiQ2JNdUFNQWNDa0sycWVqMW01a1J2VG9hMVdaWGQ5eDhuWEZq?=
 =?utf-8?B?RDhoODVxUzY5d0V0cWhwOE9QUmZLdnJlSFJNcDFObSt2R2owaVYwdmVuUTJE?=
 =?utf-8?B?SnBiZ2FMQ3hNMFRBdUsxTGpzKy9ZZnliWHRWRlZ0aEJ3WHMxdWo3WU9YdDlu?=
 =?utf-8?B?MHBkVmVVdEVxejJYWEVzQlJVUi9qT0t3SFVLeWsxUW5EUTdmbDQxZnU3c2l1?=
 =?utf-8?B?b0o0T3BhNUhXNVc2d0dnRVpoUzJPanRUR1lLK3FPZkVtM0JqdzREMVB5VEMx?=
 =?utf-8?B?NnRYcS9IbHByL1VXR2c3MHVTS2wxNlJiV3pjSGNselc3a094b01wZnV0NFJ5?=
 =?utf-8?B?WTJmdjk5VWNIelJaQ25zc3RBdVJyVFNvMjlIU2lGeU5MdVFMNUJPWFV4T3pM?=
 =?utf-8?B?L21WWVF4OS9Hay83WU5wUGVocFYvUEFGWDByODBuUFNOVno1L2xQRTNxcFpH?=
 =?utf-8?B?emVGUjhmNlplZ2lzR2N2SEcxdUNXb2hxNENNNDhuNDE0YUMvblBWY1pYbUFY?=
 =?utf-8?B?YWV4c0srdnJCQkMrMVFkMkpLRU8rZW9FeTlaVlVSTS9TWGtvOWE0dThWQjky?=
 =?utf-8?B?OEJmV09lMzlvQjJOMDloTFRZM1NtYXh6RTBkaE9FWUV0R0FuK3ZPcGdTL2Rx?=
 =?utf-8?B?R3p2aXlBMGF6bUZMK3VxeVdNQ3RZSHlMOWp0RXB1eEgzZFkya3JGR1kxS3B1?=
 =?utf-8?B?bkZDY1JsM05seWF5VGRyL21wUUZxQ1BNUGFRTi9Mc0RlRkxKRU9BSWFWb0lL?=
 =?utf-8?B?dXREVE94U1NBcnN0cngzZWpkNXkyL01SUzlTUzNsa0g0MHJjUjhIQlZuY0xv?=
 =?utf-8?B?SGlkcmtsYmIvREsrdEsyVmVrblg0WEgvR2h5NmZ2L1RlK29HYzJpVC9CVUNR?=
 =?utf-8?B?cmFMUktUeWRxSmNkMVNkMlAzbXBRb1ljaDU5UUxoMWloaGo5S0pnbXN4UWt3?=
 =?utf-8?B?WDhNTFQvV2w3ZndRSk1IL09Bd0ZHa3ZTeFBNalhWMnkwU0VEcGxNVXZwSXpT?=
 =?utf-8?B?NmVuZGF0VDlEcFhQdjAycVdtNW1zUGdlUzhvSWdKMjhTeDZyUU9xWlJOa3o0?=
 =?utf-8?Q?X8B1tWai+J2D8?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cDBUVVBNWjhBQ0hoQ0czbEhjdCtaMFZwU2VmTHRIT3h6VjVhaSthY0x5QjA5?=
 =?utf-8?B?bFB1azNEU1hBckw2WWV2UFN0VktOVTZVQ0ZhUnZlQXNZMUZDL0x0NUI5UW9m?=
 =?utf-8?B?YXhieS9nT0VxKzFoVFdUamh4VG90c09LSVJlanoyRGxFb0lTUndHUFVpVmtk?=
 =?utf-8?B?N1VBajRXTkpKalRWSGdsY0VzVHhxU1lLZlh3UU8vNm1LbnVzRkljeHFMYVhW?=
 =?utf-8?B?ZFZEQzhMU1FXSmV1aDhYR1pkeVY2OHFnd2hqajBNZ21DL0YxKzBaZXFVSFV6?=
 =?utf-8?B?QTBSK0R3QjhzeDNCVThjOFZEdEpSdXl0RE5tV2w1ZXFMUU45QWFxcmR1M1JZ?=
 =?utf-8?B?eVFRelZROHBFYXRXc0JkYUtscUNtZDZSQnVXQ2lhN0pkS1dMOHFzc2lVdDRv?=
 =?utf-8?B?M1JCOHUvLzRJYkJCMHN3WlZ1VTBUTDNWVDBIMUt3bWd0UXFmSm9Dd1IrdG9Z?=
 =?utf-8?B?U1R0NW1LRFJ0WEVsRnE2MWRsaXl5T1RkdFRiNlJCL3FLbFBzV2xxdHFvMXo0?=
 =?utf-8?B?QktVMHlDMnJhbXc1WTVud3Y3SXRVemlkd2FLajhIcHpnSzc3b3hubVd2VUFK?=
 =?utf-8?B?VzJLc1pIWU1jSE0zZ0pBckJkNHJ4Y1BMQnRyclZJazJaUmpJeW1FMENQV05Z?=
 =?utf-8?B?RlpLRlJ0dHFmNnN6aDhPOEpiSTlDYzFKZTZncHlMVnV2T1M0b29wbkhsWmwr?=
 =?utf-8?B?N3FVU0tITXhnanFFTURSTFV4QTJBMjhVS280aFRtT3pFaW10Zkx1UHhhR3VG?=
 =?utf-8?B?dURTZ2lXQnZKTURDRGg5ZGs5QUMwL0dtM1M5QWVPVkJ0bnFiNnBPc25qTW12?=
 =?utf-8?B?NVQ4dGUyd0l5UkxYdHNCS2pENG4xdzRzMkZucnRkTnY5OFcvczVvdXBlbVR2?=
 =?utf-8?B?VmtURjlVVHpJZUFISUVla3ZVNThiK3ZBd1dMc21ibGdaOXZjTmwyL2R4WUxO?=
 =?utf-8?B?NkNkSURmQ0JicHpjcHd3NXpOajFEdVdnaEpHZzNnT2EwTGFFWHc5L3FYNWhI?=
 =?utf-8?B?aVhmUmt6NHBMSVNJVEVBc3UzaFZEUjdnVTNTaDZ6UFgrT0dNV3VkcS8rOXY0?=
 =?utf-8?B?dzNONE50ZStHY0gvcnJYNkJaRnR5c3BvNEpqNFpTSG5QUVAycWdSRlFtSm5p?=
 =?utf-8?B?VGtURUh5MFVFZVJWdU1kd0wrYVhtdVRZT0pKa2lUQ0p2RWljYTdMMEpMYnd5?=
 =?utf-8?B?SWM1RW91aTl6V0dpSTFWb3BVMTRiRThQNzhmdThDNUtJbGF1TnY3OERlcmtS?=
 =?utf-8?B?TkJydXlkV3RqMVJpNXluMjBYSDFmZlVwRVhiQjQ4NS9YTDdtTHFkSWFrdzJa?=
 =?utf-8?B?Y296dXZHd1ZsTDNoQkZLR2psZXRsT1JzYmtBSHNJZjN6Skd6bDZRNHJndEFi?=
 =?utf-8?B?c1BLZlN1Mi94T1JPUEpkQWtWUVZSdk5uS3lPbysrUEpicER1QnBNMk1mc3dv?=
 =?utf-8?B?LzFuQ1FjNE1BaVBTWmtERXRqR2JCcnduTWRLT2FVK2M1V0NJTGlnT0pWU01i?=
 =?utf-8?B?ZjN3L0w0SldzSUR3YTh3N2h6czRHOFk3aVlFdnBhRFFNY3dSSGVtRmVtZExJ?=
 =?utf-8?B?RFZ0SHVRODB1YWEvNUhDM2RYL0hqQkQ4YWNQK3QxbFVYQWo1alFQanViaUky?=
 =?utf-8?B?bUNRbmd1eUtRK1h5MG1DakhrUHp0azk3S1lWU2UvbWdNMkdmQnhpQUhBbXdz?=
 =?utf-8?B?d1Nad256SGZOSzhLU29hTjNKQlh1a2pLQnZqcFFUWDdxdHNBTUFvRm5qNko2?=
 =?utf-8?B?K2ZMTDVQc1BBaTB2d1d3SE5iWlFvK2o4cXlHdTd4M2V6TmEzZDVJaUxPcnBC?=
 =?utf-8?B?RHVibGZON2wrQldKb3dpb1JTU1g0eU11UVVmTTBLdmNZSllWTW5TcThKdlky?=
 =?utf-8?B?cUpVQ3QwK2k5bEFKZ2pJWitCZlljZkVUVlZGMzlaWTllQWU3aGNacEU2VHI3?=
 =?utf-8?B?Z2d5VkRPZDFhSGtwY2FUbkpENWd5K0Y4Nk9VY2pSdkk0bHMyajN2aVJ2L09D?=
 =?utf-8?B?NDVaU0hkdk05WW40eDVUS254TXNaeHdkd3FHZW11V2t2YmJBOVdJZkgyU0Vm?=
 =?utf-8?B?bkxHU3dQZ1Z2ZUpXQnZiQXp0QThiZ3IraWNXTkJuOFR3alIxTm5wb0VQY2pR?=
 =?utf-8?B?clNTV2w0bHZlM214OHhabTJGVHdiZXJDV09sazBjUWkxWGdaR3JpeENFTlZP?=
 =?utf-8?B?Unc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c30df198-5008-4ca1-a909-08dd6de9d290
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2025 11:15:18.5423 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0tJoGAYy6u14tk95NZq0qdw/NCQRWM+RBG+PtTq0jtr20/cZVnnTE4ZoLnCQ6K759/uRnn/p11YGO8Qog/7AA/4P4X43croyjNDbI/NY8Lo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4677
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

Hi Andi,

Ok! then

Reviewed-by: Mikołaj Wasiak <mikolaj.wasiak@intel.com>

Mikołaj
