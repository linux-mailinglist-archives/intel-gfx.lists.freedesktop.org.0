Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IIcDMhJqGWrGwQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 12:27:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5512600CBB
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 12:27:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19D7C10FCAA;
	Fri, 29 May 2026 10:27:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vd3GEkuw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14FAA10FCA9;
 Fri, 29 May 2026 10:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780050446; x=1811586446;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BmQW/jHGq8n7I7ZeL40cKrx2fMqNnSXoBXom5xxTjJU=;
 b=Vd3GEkuwBJESmQ4SgV1en4oIxd62ASHK7ClfKmC+UDRGb4eNh+DsWqAR
 ULeZh4+Eh8CeOAx92awLFzeVFcORude3tCRSXsIfEEpum0fDG5QdZEBtD
 ccechhTHPsZQbB1ZguvQ3TzP3MG1I9oqxJ3gnKGVQ2lvKasBxH+mMpIxk
 040ZOOXEmXowliPNeW9oE5NJVMfLd0fGiD8ZO0Z5qvf6X5KcOJS7pVt22
 FBbgOuQMSiqebmrB9glidZlB8ITUEBxzACKJMG3U9NcCYcbveGVvUdcig
 x6MvUfxFZa33n6TMwwJXE0kXgJt56mGdRnywtGbWQ9zN6l9EGliPeR2Vh A==;
X-CSE-ConnectionGUID: 5r+MSC7nTqib3xagFaFIbg==
X-CSE-MsgGUID: RWsnYk0gRmankyXhux48ag==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="80047248"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="80047248"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 03:27:25 -0700
X-CSE-ConnectionGUID: BH1m8+8KTuWkxbNKGwExig==
X-CSE-MsgGUID: AVwQo0uBQBqOnW2B1kMSUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="266685713"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 03:27:25 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 03:27:24 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 29 May 2026 03:27:24 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.49) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 03:27:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GQ3rG/t9IaAUHTudoGfES/xEAq7PR5zr5wcteFO5/SaNBTjjPxvwvWwvqlmNQCpaMfXhFMEWU800mexdjWBg6EUhWRaBmYUIkAkffB/hOYxMNfxU8ixCCKcpzdluIpHtDoYVa625GAoXFrxeNcrrp7Sln7D2cZqD/CKYYvyUULGKrXdWHzja94iwFXDFLIN/7qVLklKI4qbDwDIzYqCKpo3dmcKcHBgM6W4WPDT6/36UdRJPoi5/xdkwwOWDbovbYD1YyMhym/KyJlD1j2xxwDsobJD7IlhJvyQUyliJafe9P0M/vOVsipyY7q7XSdvNRtj3AcGYK56kfiSDjGY9Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SZe/kQ4kl40Z4ErDok9/2g9ZZk7mC0z6c5Oe6h5lQO4=;
 b=SgToDcAFSiuWHZ7SwXXuE2LIjPyHiYg+slIihzSJi66vnUCg64cxe+lVGIS2tHnPLteGcJLchDWjFIW/SfF55wgkrac2Zg+l6o5l57yREkqsvAM7GzyQlO93mQEn4WYwrZ2zylYzLlotlauq0/8yVtX+Dd6JTt3t1aezuUJc8si48hi3iy3uo5VgwhIsXpRi3WH9w9JmlcQP1RgkQ2k2ANeCs/mGwYyTQX/pAfMjyKWCJYtqWDPIQHbk8L331+eZ+q7MNwGTY2dQunyXfu0ZrBcQQ/DJSIhMqEb5OArQENB3RRXTi7pK3q296+9a34tL/3McVsAQKC0aeYTdoT/p7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by DM4PR11MB7400.namprd11.prod.outlook.com (2603:10b6:8:100::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Fri, 29 May
 2026 10:27:22 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%5]) with mapi id 15.21.0071.011; Fri, 29 May 2026
 10:27:22 +0000
Message-ID: <c9760a19-116a-4c91-8514-991c8f7b4a22@intel.com>
Date: Fri, 29 May 2026 15:57:15 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 08/15] drm/i915/cmtg: Add a hook to make eDP transcoder
 secondary
To: Animesh Manna <animesh.manna@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <uma.shankar@intel.com>, <ville.syrjala@linux.intel.com>,
 <jani.nikula@intel.com>
References: <20260526133811.2621675-1-animesh.manna@intel.com>
 <20260526133811.2621675-9-animesh.manna@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260526133811.2621675-9-animesh.manna@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0178.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1af::14) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|DM4PR11MB7400:EE_
X-MS-Office365-Filtering-Correlation-Id: 878b306d-603b-40c4-4b9c-08debd6cdea3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|11063799006|4143699003|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: F9+b46hU/hQeRT5iHKnYBg/iyNY0Ki2BEzgz+gqrVm/o4F+5K/pxgfIY1INUMZdvQ7Nehs8ewd/h0kXS0NeGRWqV3A55jyAYMG7zqcWGYPFSfDx4cNyvppeeVcG/f9h8e3lF77OX+TwapLl/9VSRnA3nqr/LaUw6Z5Ssv07yHuCkO5S936WAJdobzVMGbYwXx2ZlIjZlMVs2YCsL8dSykdFLNwOxRjNWz98b/yJXaMh4sApNAurj6dy+TUFZTKLBHD7ukDtsLGYOR6UCdy74zdZMLAMShjFSsPYYRd/QM5qRGNwBpVCYiaPg9ROIAhq5z5W/J0XYwdlJuGPkMi9EeddCrH0Iz0wdTDkn27s/vQ9kZffO6wtZqGor/+WyqpnrMApiFutQZY+rP4NWeenhGAponDDV05G6mcJl9Qp+fYMBT+WhF7/pf4cCtOM4wJXrlCNDEuyMtJBjqkg4v5boooaPx3U6axrLrWhWAfSBto8ySA2HCND3BtoLD9WkwrMDZA2flXxyGTb4ya/rsSrZdU6q8q2Y+2zfi9D5/0KuMuqMAbHt/IdtDBoSFk+9oYjgPAt0sQlqwinqpUvOr26xaeEpgdv6ylhoaJ1tqgnPejSRHYKXx6lDFjyYbj27JAvmLtdTjcYypqXZq1IOyFd6pKyrxcZUKrkznYWPx/eElqMo94q8nvLfa8TyPiR1YHXD
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(11063799006)(4143699003)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UFdpK0FpMFhnSzBSSWQybkQ4Z21QdnlVcG1nbEg5a2t5bnVseFMvNUxpM1FR?=
 =?utf-8?B?aTZQY2wyZHhTQ2QwMSs5Sm1kd1QrYjFQeW4yZS8zVWgwcUNoeHc5c2I2K0Q1?=
 =?utf-8?B?eFJ1a29Sek1EOTJCcGhRV0hTR1A0UmpXN3YyRE5CMWRTWnMxOGZudjhkVWd6?=
 =?utf-8?B?blpPNXFldDRIcUhkUldBaFZLR0tOMmR1OGtVVVk1SXcxYjlIbGdVc25vRUUz?=
 =?utf-8?B?anJEQWdIdnJ2ZGVWaEZXYi9CVEY0RlNNL3RCVm9NWFhqbTErUEtyaWxRLzFS?=
 =?utf-8?B?VGdydzN5S2xLRWh0RkhlUVNEdFgvNS9FaTIrd0d2b21hNS92dXJ1SXlBaEVL?=
 =?utf-8?B?N0U0eWd4VDlML1daVEwyTjg1MGxrMHRYSXB3ekVvZ1BzQ2piZ2JubkdSbU1p?=
 =?utf-8?B?bzZCdS9aR0dRV25wVVhTaDZVY1M3RUgrR0VVcWo2em53bExkODc5TUE0TStG?=
 =?utf-8?B?ZE52Sjl4dFlxUVQvQjlsZjU2UEpYQmwza0h2SERnUDNIMVVzd1VrbmpaZWNB?=
 =?utf-8?B?TXFIWWJHRDRNUXRNQUVmdW02b0lGL2hiM0cwaXRQaC9kMDE5TTZNVXNoR202?=
 =?utf-8?B?NGU3V2dsejZweVpMQStPZzFhTlZGWUxXTlNCYjh2U2Q1Ui9TbjZJeWtqSXdH?=
 =?utf-8?B?Z1pUanZleWpIdW1UQnFZbzBFWVgzZ29RMjBMK3REeVZiYmI3NmVKRUg3a1lv?=
 =?utf-8?B?bitDVEF2RitjU1F5a0FLcy9pRXFHTmE1QkNVRlRaUGhSeWFGZ3NjWkxVM3Av?=
 =?utf-8?B?cmVvTTRQeEg2SVY5N1Q1bU1iQUdPNjBaa2Q0VGhIb3ZHcVlQN04rajhhY3dw?=
 =?utf-8?B?cDd2YTR0UVhkeDc2YWVENnAyd1FJR1BDSEM3STdSYXc2VDRBT3BReC80S28w?=
 =?utf-8?B?LzJHNFZwNFo0U1IrcUMrc1RyMTdvNjVtdUJYMHhwdHkxdklSWFhScENSejc4?=
 =?utf-8?B?Q2F6emMxaHJsQml1OHd4SnBEUGVVM0VsMTFCVXhTdXBUNzZja3lzQ0I4dE0z?=
 =?utf-8?B?NlFmZUI0MU1qVFpWRm52bWpkMCt6M0pybE5jclhvWUxnelc1RWVhemNjVjU2?=
 =?utf-8?B?VUc5MWZTMFVGUTN0OWV4b0FoZ2c2NHFFV25TeXpkSzdGbnNGaHZQdjJoTWk0?=
 =?utf-8?B?bkkzZmFwU2s4WnZwUURvT2I0ZUpRdWN0cGhsM2NGRDFRRmpuRFpxSkRVeWZo?=
 =?utf-8?B?eTR5NmwzTDk0ZjhidXR1aytHcmNQeDBCTEFMM1V5OS95ODVrZG1xRE9UOVpN?=
 =?utf-8?B?MXRlREpUN2RqbEQ0SkhEZE9DdHVVZ1NsVDhRdUJYUFJoUnNON2dTVG5Venc2?=
 =?utf-8?B?enl2akN6b3h2elBJYTBLQ2k1WHVtNDV1dytWVE1mdWNvL1RqdmQ4M25ZTjRi?=
 =?utf-8?B?SUpYb3lLemFRWWxiUlI1K3FYTSt3QkMzMkUzVy83M2R3WkRhUHNWeFAvZFZ5?=
 =?utf-8?B?L0I0alZadmxiZU9wZzdTWVhnUUJQeHJKSEhJOHA4ZVNrRDEySXgyS0pNbEY0?=
 =?utf-8?B?cWJjdzBVY2gzMDdjcXQzcGNKRTBKSTA4K1VWT0FOeWRVOEhCQVlJTVFvZytS?=
 =?utf-8?B?SkJWRjVoeXh3dU95eUFqNHdCQzYxRzFZdVdxLzFadktaUEI4T05BSTlwZTdO?=
 =?utf-8?B?ZnRYN2NXakVtZjBma09pYjFKK2gxYmRPeXZ4REVYTHdJTDV0S25kNmdhTG9L?=
 =?utf-8?B?WnVUSEV3L1NQWHBwRHBJSlU4U2ZzRnhOajYvYWFYNC9vcFFLT2ZEYU0vUEpG?=
 =?utf-8?B?R21RWE1BZ09lWklob3BGVnJZWDlSMHRXdmxXWU8wQTlwTTZLSWw4TkpXY0xM?=
 =?utf-8?B?c3d0L2VHb2RjTUdUTmQyRCt0Y05QSHp3UGdkV3dJelcxdEkrSFEvWUJNMDVI?=
 =?utf-8?B?TW1pRXJCRFRONXMybzJ6ZEJRcmlvdVlGblo0cDROWjhqL2x6S3ZJd3BSYVZW?=
 =?utf-8?B?ZXlIYzVWbVZ6ajhTckRwL3EzV0prbFBtNTNTK2w1dkJ2Y25Rd2dPUmFCcVJQ?=
 =?utf-8?B?dTYvUzRvYlcycGJwb1hZMmQ4QXg4SURIQ2Z3c1JrUWVveXFSM3YwMTVaaVZq?=
 =?utf-8?B?SGFpeFN5aS95RjJjWGR2Sm01eEtzMVQzZUt1aTA2aW5Sbm5ZM28vN3pRRUVw?=
 =?utf-8?B?OVNDVldVRkV6ZHhYMk5SQmtlS3Y0VGtROFBuaFNIUGFqNWZ2b1NDSWFoclJv?=
 =?utf-8?B?RlJiMGdDNW9ZcXRuZzhsMTF3UWlaTEZ5YTBLckNnay9oSE1CR0VFQ2lWcXp6?=
 =?utf-8?B?bnFpcUlKTE9aNXQ0TzYzN3lKMFhGM0Z1NitLL0FxVnV5K2xBNWs0cjN5d2J3?=
 =?utf-8?B?WjdDUFJFVWcvSmdudFdPQmp3MW9ldjI3eEtiTE1PTXhMWDVtVVJqVDJQQVky?=
 =?utf-8?Q?fz9/wAQCOwaI6vaPpIWGsIxfZxalX25I7+JqZ?=
X-Exchange-RoutingPolicyChecked: UGRxF/aCRFFr7ascS3JEUmgHKz9Y61toFfLqENA8aqXfqW5nAKoQfJMlw41PXfE4jEcXOlYVSKrNT34FXhbt/7xLT9pYj/v1bagecJqrolbFm/pcyDCj4h9ztdJQMGP0DGZ6kWGgmSLdAxHjsJu91hT41VtyF9Glyp+D9laBeah/iO/MrzhYfnEYIMqOTfGQ/zlo4w2OtQcihr0hHyhYd9ba5BMfumWOpZGATAERYO4K1r1oE7YPqdScySUSSWgl/YrT1E4P17JzgB8S4+7z3fInjjVn1D6O8uYr3Zr6DJSex8duCqVWwIaWwD8S15imoIkcNwXbQDQ0I9q06kibKQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 878b306d-603b-40c4-4b9c-08debd6cdea3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2026 10:27:22.6217 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ai6ldWb8mEcflw+bCTvg7r0tImV7FRsaV3ND2223ggaK67IPoLlwFUuYvhRA7l06QZvUf/fZdRwFgnDlsIdBOL/FZId3jqoyFgStRVR7/QyVx7LDhv8jBPKoQ/2no1mo
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7400
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C5512600CBB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 26-05-2026 19:08, Animesh Manna wrote:
> Program DDI_FUNC_CTL2 to configure the eDP transcoder as secondary
> to the CMTG transcoder.
>
> v2:
> - Update commit header to be more clear. [Uma]
>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cmtg.c | 13 +++++++++++++
>   drivers/gpu/drm/i915/display/intel_cmtg.h |  1 +
>   2 files changed, 14 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 63e430f7e63b..34715280d65d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -359,3 +359,16 @@ void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state)
>   			 transcoder_name(cpu_transcoder));
>   	}
>   }
> +
> +void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	if (!intel_cmtg_is_allowed(crtc_state))
> +		return;
> +
> +	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, cpu_transcoder), 0, CMTG_SECONDARY_MODE);
> +
> +	drm_dbg_kms(display->drm, "CMTG: %s enabled\n", transcoder_name(cpu_transcoder));
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index 64ff6a19948a..12abbafa7d08 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -11,6 +11,7 @@
>   struct intel_display;
>   struct intel_crtc_state;
>   
> +void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state);
>   void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state);
>   void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state);
>   void intel_cmtg_set_vrr_timings(const struct intel_crtc_state *crtc_state);

Looks good to me.
Reviewed-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>

