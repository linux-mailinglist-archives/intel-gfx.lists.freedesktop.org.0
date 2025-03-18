Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC8CA671E5
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Mar 2025 11:56:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A82B10E202;
	Tue, 18 Mar 2025 10:55:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GmdXNLpY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72C7210E202
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Mar 2025 10:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742295358; x=1773831358;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=fAw3oeSBAciEB7JaM1jrnR2x+JCq0ILzvp5JjPHtp8w=;
 b=GmdXNLpYvTMzrffbI9JNlZMoXogaVEtNsCPDE5jA56G2l2ZQR6C1YKN5
 42DT4BW2jFUxSHYtGxYJJ9Ikr8jnF76oxKe/V1OVxlGaXTlqkFS/bpKob
 qOs6CdpIoj0S3y2LpFyCGWrznjKlVDB9nTGsfvD3clrZOD6qaC08agGNz
 4LDGp4mxN1K4GYINWjwyv/hAU4UK8C0n7F1AUMvUtqEwKDhjG25JCTLGi
 7OVbR/FGJHqXT2UBxb6v2lEdl99XAqfXWvG7cPSXV0MaXow9U/E9cSBsH
 bLdkik+LwjSGHar9amCGa7xfS7haexx8idNzOJAxJCcQSeHQvdsWS784u Q==;
X-CSE-ConnectionGUID: 0JnoftNtSm2bz4+ZEhFrIg==
X-CSE-MsgGUID: +g21e8YOTLKa634m0jgw0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11376"; a="43618908"
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="43618908"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 03:55:56 -0700
X-CSE-ConnectionGUID: g+mZRZ2TT4OgQor3ixLOnw==
X-CSE-MsgGUID: 2dSjKXTySMm3N4XFUuKp+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="122245673"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Mar 2025 03:55:55 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 18 Mar 2025 03:55:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 18 Mar 2025 03:55:54 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 18 Mar 2025 03:55:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YMClkfw4yxwoLVMSdqy4yY+EXx1ui8DbFb/B9FWiqkdJXT1gY+eF4Mimo/vHOwI8STW0EwLPFdSd4j59qggHcNOSHNevewUqfUQI7dHIU9+HlRWxHmdnhBR8jurUWC8OvCOAZHatMOX/VvRdulZiKdpXw9vU3XA1UhvICG6CofjYzVgJHwsrS3B4uP20MzyQ14Xxy6ODG8dezqyyiT/In/lAXgtbETe3nlj0XdTG/UAeZNK2HepsvHz+tG7O1NP3/VJZX8PKMGlBSdzbKDM8JmJa42E2tXpBoz9nr1DS5dXI9+zbWYh7qLali3Dwh7OiQksLoCg5+nMIzoR9yS6OgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fAw3oeSBAciEB7JaM1jrnR2x+JCq0ILzvp5JjPHtp8w=;
 b=HW/XBgAobZkohgSdRmO8RRw9gFsQf8SGsWmNz0C06UG3JnE2kLVBb1fkxbE8fTDgULXEIKW/hN5ybz/FFpewRED/efWryr73fJ+3r4nNJj4Ffqrlvd1HSenAhrtZ112rFqZcJpMfnYCVsgzNpE9yqmflGh/wHkDx2mfrqHeU/zBV4CuNha6/DjxopESCHjRvVo1AlKqy3ujtp/tTIlJX6E1lwWGV+mD9i9NsF/Gj22aKkc9efLDbRRNkvlGg8CgS5kglXdjWwNlwIdjsg6LVdorciOrZTr8hfiki0ZiltcZQryV0iQrqC7uXGaJz/m+fxfOMqRN3LGaCffqsnlRkCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MW3PR11MB4651.namprd11.prod.outlook.com (2603:10b6:303:2c::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Tue, 18 Mar
 2025 10:55:11 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%3]) with mapi id 15.20.8534.031; Tue, 18 Mar 2025
 10:55:11 +0000
Date: Tue, 18 Mar 2025 10:55:03 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
CC: intel-gfx <intel-gfx@lists.freedesktop.org>, Andi Shyti
 <andi.shyti@kernel.org>
Subject: Re: [PATCH 2/4] drm/i915/gt: Fix SPDX license format
Message-ID: <luoyuhjv5ibwv4omqvg5s432mvix4txrzrbuevou5llt5axkl7@dhrwqme3fbkt>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20250314021225.11813-1-andi.shyti@linux.intel.com>
 <20250314021225.11813-3-andi.shyti@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250314021225.11813-3-andi.shyti@linux.intel.com>
X-ClientProxiedBy: ZR0P278CA0048.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1d::17) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MW3PR11MB4651:EE_
X-MS-Office365-Filtering-Correlation-Id: 23a14768-1e87-490b-8aa7-08dd660b5af9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WUdRV1dQTnYrYWJoSWVQbW1mTEx4ZnB1QkxHTEFadDdTU2V5eG5FbDhHMXhL?=
 =?utf-8?B?cGhtMWJCM0VsbUxBNVRKYTRHMVpmMlowNGlScXdsQkNXaTZ6K20valJvOUl4?=
 =?utf-8?B?TGY5U2xKRE82VkNKMmVCTEpMS0UrTCtSRTZCSlF4OGNIQkZMVm1wOGp0KzlM?=
 =?utf-8?B?RGZqRlpMamRuZ01nZlZMbHpDUXEwaE0ya3d6NHpTMmkrQmtWQU9GNjB5ZUlw?=
 =?utf-8?B?K0RZUzhQRGptRXc1ZWh0TVdYNzRLY0w1WnIwYk9nOFdsY3o2UDFQTjN3cUhh?=
 =?utf-8?B?QWkrVkRpcndhajNPOTJ2REZ6dHAzbEJsVldyN01oQlprM25oWWk1RjU4OTMx?=
 =?utf-8?B?OXlIMHJmcmk5ak14VytRRjZnRkV6NG1HS3JUQ25uUWdGQ09IbVQybm1vYVRZ?=
 =?utf-8?B?ZWppUjlGUXBnaUFqYkNLWHJPb096Rmh3dEJ3YmFSTlN4U3l5ZkhUd0tsTWVQ?=
 =?utf-8?B?Q1kyd2RiQTFqWnVCNUFnZTdKQTdsTlBIVW93dVBhdXFjdUM2OENtR1ZRbXov?=
 =?utf-8?B?RmlBakNQZGZzVDdBb2x0M3pvRVB0eHRZMWxGTHZnZytTLzEwUjZORW5nRWVn?=
 =?utf-8?B?RkJSL2YxdzdzNTFQMjRLUE1BbnpubWRTcVVvc3RJMllHZHFMajFpcEI2dWlD?=
 =?utf-8?B?R2dPZTVzK1ZYZXU0RWRqaHBtK2d1dkNkV3h0L0VNTndTdVpqTksxQzBPajB2?=
 =?utf-8?B?aDlYbDJRVWU4S0s2bUVvZzRGcnQwUi9QNm9WUlBnT2QvWG1UdDRYSG5xRFcw?=
 =?utf-8?B?aTk4bkJsTXhQT0loeUp5ck1veTNQWVBCaXBqL0ZlTEV6UHRzditZWUhMSnF5?=
 =?utf-8?B?ZU81VWRlWnp1RGpmTXNVMTYyR2NnbG5RZitCdUxVRDdoMWxvZlh6bCtUZ2R1?=
 =?utf-8?B?amFld0YyNTVvMzIzQzR3ZmtrRmFod3hmMzdzR2hmd0M5OGFIaEh2N2phMnI3?=
 =?utf-8?B?TnJGMGFWcEhEeVBPMCtXbmdKbDZvVGw3N1BWaXREU2Q2Z3lLWWhkM2FhNlVt?=
 =?utf-8?B?SDJsbjZuTnZ0c2MrUi9yTXdUb0VuN0wvV3lnZEdkcEFFZWVIa2p1c1NTMDVN?=
 =?utf-8?B?QjFrbFJZWnVyS0dlOU1XanE1SWxSZzNNRTFrUVRUbE5mSlc4NGVLQXhZd2Zk?=
 =?utf-8?B?VnpJbGM4Y014KzJweXdvZ0dUcU9laFc1cVJpWmVIcmRYeDFvaTJpbXZvaHNO?=
 =?utf-8?B?WTU1WkZBN01iTnVNQjlFNTB1eGNQcm9kcmkvaEUrcDRHNDdFSWVPYkJsby9B?=
 =?utf-8?B?cHRxYjhQMXF6aE83UlA5Yk9tSHFjMGEyY3luOUtSY0Jzb2gzcHVubjRhbVY3?=
 =?utf-8?B?NllCNmtMK2dWa0dpbno2Wkg4b1VVaHVXcXh2cEJTL3dGcXBISURqVVBtZmR6?=
 =?utf-8?B?Y2VoQjNnZ2UrRS9haGNQQU80MWVPMmFYd2F3ZHV3dldWSkQ3YXppTWdnVnpU?=
 =?utf-8?B?dDgzQm9VaWYxMGVjbGFycjQ0M080UTJtTHdKWmpLMkdPRjc4dXMyWGlSRnFz?=
 =?utf-8?B?SU5rUnRmOTJDNUgxcHcrc3NtaFRHMTdzQ3dLTG1FbXVzUFN6TWlLdm5CTUwz?=
 =?utf-8?B?Q2FGVFNwcjB2eHdjaFY5bHBNbVJtb3dlTEFySTgwNVRJd0JUeGsxaFJ3dnMy?=
 =?utf-8?B?ZzQwM1lnN0xxZERKYzVtMkd1OFpyZ0Y5akNsblVNTCtuZm1Ec21hTUt0ak9m?=
 =?utf-8?B?R2hRQ1pGM3RJUU5CbGcwUnRyZDU1TkdKWi9mSHdQQUdieUtmNXJsL2JHNGtP?=
 =?utf-8?B?bW1USHJjK1FkTG9WNVNwVjBHN1JpWnh1NmxGZVo2SU9JVzk3aVNETk9EMUl0?=
 =?utf-8?B?a2M3dlkzTG1HN2RlSDBxU1dyWUFUaCtDU2IyUEFiS1ZzSythR3lvUlM1NHdO?=
 =?utf-8?Q?eHLUZ/vwV/5zA?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cXJTMGF3MUp0bXVaSDRmcGMzeHB1blMyTkcvTWxzR2U5RTBqNHZNZU94SWNP?=
 =?utf-8?B?dDFpcm9RWDlTYkhXVkxRTmZiRFJXWnlzYk8zQVBNTW5zQzFzb3hKakZWZkRp?=
 =?utf-8?B?VFBRSUZLSG9PZFY5VGVkL0l5RlI0ZEhyV0drTUVYZTZpY2NhVEtrWTVodEZH?=
 =?utf-8?B?REJrUDZheFZ1RXZzc2Jib3hiejFURUtXV1dIbUZQcWNvTDViYStyZjJYbHBE?=
 =?utf-8?B?NXpvdFhHMW5Yb3VGNXhEYy9oR2lYUTRNemd3NHVnbWRyQXBmNnpqMnYydjhR?=
 =?utf-8?B?ZGowS0xxUWR4MVo0UGdBZElwYzh2K291QkwzRlJnNE9xQWlINjAwVWt4ZGx4?=
 =?utf-8?B?MGJORUtYbFdkekVuUU92b2pBUUVGOTdCRkQ3ejNFZGE4d2hPTEkzUWxMeWox?=
 =?utf-8?B?SE1BbG9uR1JSN3Q0aVI1dk1aUFFDaXZZWVVLVnB2N0xTOVZvVWFQMW5idlZV?=
 =?utf-8?B?dzI2emsyMkVzM3BWVmN0TGc3Ny9SOEJ3dnhRS1VyU2ZlaEFpNEo3WmNJRnBt?=
 =?utf-8?B?dkxVVzJzQnNSU1VVcTB6Z3NrSXR2bU1FdDNwQm13VitkTm94TUhyT2lrVjBW?=
 =?utf-8?B?N2hzdHpQUDMrdVgrdTlSN28xVkZaeHRPS3Z1aHpVdXk4Zk9BKzJuRGFmaXpx?=
 =?utf-8?B?cHl0U3N0UFVQMWNONU9Ic1ZOS0NEQ29oQWhpVG42RmxwZXdZNytNK0V5UkFX?=
 =?utf-8?B?REVNcG5sUHlQN0p5VGlTblFhRE9JR0JGK2tvNWhSdmQ5cEVKK2xaaU5LMnRy?=
 =?utf-8?B?RFZadzdNM3dMM2Y4RDQ3dko2UXdOcXJvblRVTThJcGxocVNhT3BwSEZYYTNu?=
 =?utf-8?B?bUZFdkhObFVjM2xES0poMXFDcWZYYmhCbnovcGVBdnprdlBRREdoQWZOTWg5?=
 =?utf-8?B?MG5FQTgyZWFudjcwTFh0VGVUS1dDK3FzVTNjUExIZUtWTlF2SDRmR0tCVTNN?=
 =?utf-8?B?S29uUTBDZmE0UDdBclBJY3JBMzRDaWNmZkZ3cWp6NzVjUWNOdFF3VmJXNTdI?=
 =?utf-8?B?N0s2ZHJZOE1PV3NwOVNRWjhLQ2lScGdTbm81NlhRNHVOMmhtdkRoelo4a0RK?=
 =?utf-8?B?eHRRNlB6ZWhSRjcrakRyOGVIWVFOTVljY3BMUHZkdGhCeDhVVzhXdnhUS3cx?=
 =?utf-8?B?NzhyZklRYlZld1FaVmd0UFcxNlNUVnQzSzlMRDMrNGRPdVllcndiQjljbmVC?=
 =?utf-8?B?aXE5cFRKQXlXV2NiTVVXc2NMeUQ3WmpHTEhsT0Z6ODFqNjV2dTJaYmp1VERI?=
 =?utf-8?B?bllYZjZEVHlrWm1mM2NQSWFRd1NiZDBTYUxTa3pZWVd6M1lVcDZYb3VrZmRI?=
 =?utf-8?B?NHZDZzlXTG5RTjlITElPclVnb0hGK1NTcnpFb09obGMxM3lZUjZhbmc0K2VK?=
 =?utf-8?B?Y1FobEJUdCtHMnc0Q2Y5c3ZqdzIyd0l6d3g1TEFMOVN0STR5cTdOaEdlMm01?=
 =?utf-8?B?d1JEOUFUaC96NklsUDFjT1RCa3l0Q3gvcTBqdWgrSTFXWk5TWS9qODI4Nmdr?=
 =?utf-8?B?QWNTSDBJSXo3NHFSVzByUkJmcjZycVMwQXUrVUNTMUxhMXFNbFQyWnE3K3Z0?=
 =?utf-8?B?Q1AwbEZSK1RYUFFtcUZLelRJSkI2U2lIc3JLcEh1Yi9LZ3RXczhoRW90Rm1j?=
 =?utf-8?B?bGQwcnJwQXZERzg5dzhMSVV0MXZXbVR1Y1UyRXdtNGgyNjFyRU0yVHFnRDJZ?=
 =?utf-8?B?RlZiREpMK3RVT3ZVR0s5bHRlL0hIbUxZK1c3WkVZeHZ2WnZsREE5YnlNbzNs?=
 =?utf-8?B?UDBPMGdEL2RucmFJWmpydGhuSWxPR1pkSUhZTmhQai9wTDhhVzc4Y1AybkhR?=
 =?utf-8?B?MkhxaFpEd2VLd2xxczY1YTYrWGtORk9CU0pBQ1ZYa0k2aURhZThBNUZzS2JI?=
 =?utf-8?B?TFBkcnVFNjRhSktEamh3MVJCYTFjT0lEaFpMWXQrN0JLdmxqVzd4TDNqYk5W?=
 =?utf-8?B?RHZjeE81VkFzVWI3Tm15YTEvOEIrWWhDTXhFRFRjM2prY1NNY0xQTUZMSVp6?=
 =?utf-8?B?M0lIU1gxUHkrdWhZS3hTUDM2TENzbTJ1NFN5dCtTMFR3Qnpzcmpmbmh3SnpV?=
 =?utf-8?B?SU1nNnJ5Y3I1MkVPMmJNSisvVzM1ZmZpdjdHZGc1dVdDYTJZQjRzNUxPOHdN?=
 =?utf-8?B?dGd1SmtUNnhhbGFzbDBDN1NPRFBKc0RQaTB1dU1OZ0J4WGEvcDEzUlpmd3JI?=
 =?utf-8?B?MlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 23a14768-1e87-490b-8aa7-08dd660b5af9
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2025 10:55:11.4980 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +Jv3inUmuhdRttnMsFxnwdnQ+vrSb1/MkL8XDqBKZvi1/Pm1ATqDedla9RGnFjsAiPFKEDGcnJ7l4dvKJyn7wxgH/BSgP9xcVXTuIwkA1DE=
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

Hi Andi

> Header files need to declare the SPDX under /* ... */ style
All files modified in this patch series start with:
// SPDX-License-Identifier: MIT
rather than:
/* SPDX-License-Identifier: MIT */

As a note:
:~/linux/drm-tip/drivers/gpu/drm/i915$ rg "// SPDX-License-Identifier: " | wc -l
242
:~/linux/drm-tip/drivers/gpu/drm/i915$ rg "/* SPDX-License-Identifier: " | wc -l
696

are those styles interchangable or is one preferred over the
other? I am just curious seeing both are being used.

Best Regards,
Krzysztof
