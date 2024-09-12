Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D32A976FBC
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 19:45:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D30AA10EC0A;
	Thu, 12 Sep 2024 17:45:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XluhC9rX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FC2910EC02
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 17:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726163142; x=1757699142;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=vD3dsU0+o6FnE9wGXDDlNUmh/O3uDvhr76srXOdEaY0=;
 b=XluhC9rXXoLcMGVB7Dsc1dNUsQJDP8Mr9lj9VouISUe4424MGyWCi3nT
 3H8NT3OLN77ynebpXLilCErIKwB7DGR46dnDHtvvAroXZ1iuFBKRN/Qa2
 Bj90T9iPXVgMr/k0b7GLO/vaIZ1Dl1ALXZYcsrCJG/8Vvf2qAlxLLZzDu
 ZcKUKmoqPkLcbSN2kTgIUKvQJHaWb2HDnv8fzjUwjHtOcz/b02Y0jTrzx
 JyVrphh/0/A3cqMpQYGQHNe2HCOmBciRt6CVd4Y6MUfyUpovXic8iJmA5
 n0z4X2e4PIVh+YJYUpvpaCaJuvlujfvAFi0RiiE5Fzz/dAFqjJ8GAqD/p A==;
X-CSE-ConnectionGUID: 3MSlDJ+2Sc68OfMQEraqTQ==
X-CSE-MsgGUID: Tg7pwTvnREKasvz3NNJB7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="35609311"
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="35609311"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 10:45:42 -0700
X-CSE-ConnectionGUID: cZquPA4vTeW/r+o0QePgag==
X-CSE-MsgGUID: qT5OkI1kQaC/STUIyhQGBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="67720144"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 10:45:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 10:45:41 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 10:45:41 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 10:45:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FsgUKYPzWJvhceGcn9Vm4k3sDPwK6Cigoxe/pvmMqtUAvKu7SVgN7G9yNN/ClpAr3GUXmDRb3LNS/7Pm66NNS0TKh4erL2LKsmmoxxklD9BAvVSqfjW42I6VSDxovLtU7O2NkxgcmbQDOYfaq0vqjY6FG+aK+cWeT6PjzakWdMm4rS30nDYUhC5o919i9Akg9NLwTPy3N1hoHCitbEuufcS0uCQle7alUSZayodJX1/pKouJxMS0FLr3z30/3EaVFrcafp80p3oknG8J3vV5I17UR4djoGziEyzUSiPWS6klDnFUtybkI6UaMDIKAkx6teP3lFZxT4fRAiKd2+/l9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fSmW9jQ4+jR6RXue8uVBuvbDQRr8kq0SgRDR2aBN64A=;
 b=o8lPgabZVwAps2aXK+h17JhgSb0ZYM6Xl/fZdoYp9xxBEOY5GyhiQ/Vwjqa2gFnaCuZa4iL4Ysh+4MynHuT/CNEa3a1KY9ot2USej3gYi6wxWxhgsDkahgr/3NlFgeSu+ZPqiCSk6NcLJCWLjjZuiK2XKUbO3rHOUCPKRF12UcvHA0UExD3JM4HgcuA7sTmr3VPTGa0Vq+gFm9c8VcGL7gNEcoXjxquwi3kR5fVGQWzXLzISC3/r7XJctDDHK9r95SHfKfkovbVKrWkGtNxj0kXHOoi+33rUT7sXY+1kDpWS8IGtDsoO/688aQLKtHAJwRd6YKhel9VAQgS6DVBHiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by IA0PR11MB7791.namprd11.prod.outlook.com (2603:10b6:208:401::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.24; Thu, 12 Sep
 2024 17:45:38 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Thu, 12 Sep 2024
 17:45:38 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jesse Barnes
 <jbarnes@virtuousgeek.org>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH] drm/i915/display: Convert i915_suspend into i9xx_display_sr
Date: Thu, 12 Sep 2024 13:45:34 -0400
Message-ID: <20240912174534.425015-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0254.namprd03.prod.outlook.com
 (2603:10b6:303:b4::19) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|IA0PR11MB7791:EE_
X-MS-Office365-Filtering-Correlation-Id: 5722e933-8950-437a-cd5e-08dcd352b68b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dHEzOE9UQ1M3bjUydzh5anJIZnpMZzlBdGt6eG1Oa24yWUtjOG96QWdLTlNx?=
 =?utf-8?B?NjNKOWJhbURYb1Z2NERNK3k0eXNqL2J2bHFESm9Gc2JPSW9rU2dkenZGVFJS?=
 =?utf-8?B?WXN2U1UzZllhMTh1ZElJUXhYRCs4MUV2alRjVi9TV2w3UUVnUzdua1BSbFdP?=
 =?utf-8?B?Y3lpNHNFMzB6OVdDNlJIOWJQSGE0VlNZUkovQ1lTUExJbHRRalNCVnNZQjdu?=
 =?utf-8?B?S1g0WW1OQ2l1OHR0ZVFSYis5MUdCSUliKytyRDREZ0NMNjVBbFlVSmU5akFl?=
 =?utf-8?B?bmdlbjgzWlN5cktqODVKaTVvZHVvazh4NFZobGZwaHFFSGM3WFROLzQrR2k0?=
 =?utf-8?B?TVNMcG5rMHdQcUxlQkxOQ09WWCtETWtlWUtLZzhLd2lvWFYyRUswUGRyTzl6?=
 =?utf-8?B?OS8xOEVKTTViVytPdE1yWTdjNlFrQkZGODdPSFFybk5yTEdwaDJ4RlZPR1Zi?=
 =?utf-8?B?SS90TXZTUmtjWkxjUlo0em85VlRtZDIrV1JxR0NTQ3V3MjBwdDBIQUIzYTQz?=
 =?utf-8?B?NVFraHEwb2ZvS3JPTUR1ZTJ3eHA0bE5lYXNtdGhMRXFhN0ZDUXRweUsrUURR?=
 =?utf-8?B?dVJjZzNzaFB5UnRLWWxaSUJNQVFrYlByQjZWYlU3YlBSZ0M0c21wN3JQN284?=
 =?utf-8?B?MitZZmZTRkZXa3ZNYURVV1VVODFGNnVMWVhwOGV3c3lwTzBIYUxtN3pBbjB3?=
 =?utf-8?B?blJHeVljUW1EOFpCekh0UEdLNDNQamd3TEhZa0ZtUmt2V0xqajVncmpoN0ZV?=
 =?utf-8?B?TzZkdXRmZi9oRkpyMWY2UHNxbTAxMjZYYkJvWHFBTlBYYlVSOWliZ1MxK05q?=
 =?utf-8?B?b2gzOG9UL2pTYVllRWVFR2Z0UlpKTFhmTlFuUU56SnhHUUtiRHVXc3R0aG5W?=
 =?utf-8?B?UWxhZUVzakJvQXJNc2UxUVNhMS9WZFhTZGhvVGkrbVlpRUNXYjV4K2tNSVpm?=
 =?utf-8?B?VklxOGRSV2VvZ2U0THlTMzlpOW9JT1RJN2xFYXdXZVpXMHlUWStLUGE1TEtI?=
 =?utf-8?B?dGUwTmpkRHRaa05SbFM1QkJBN3RIQWNZZXpia2pMRVJmT3JnYzYwNHA5L2RS?=
 =?utf-8?B?eE01YXdTbXc0NVR4NzhNYllMRXYxOEpGRHNNV25wVDA0ZjZpRlBha2dyUnE2?=
 =?utf-8?B?NEQ5YWdaU3lVYU1xWTVMTUI3a0VvZERnTU1mWjYwS0VjWTRDTFdMY1orQXJM?=
 =?utf-8?B?bEpxOWZOd3BlUkJtb1RUTTMzc2lYTko3TDFobG8rZ0ErYWVrTndLcWNGMDBZ?=
 =?utf-8?B?djZCYllpWHMvY1kvTmxodjhUQlpjUFFXVFc2cmw2ZHB6U2l5VldQWllTWnI1?=
 =?utf-8?B?b2JBdUxZQy9XRVkxQjZSelBZYitNTVBwT0g1SmlOUUFxRndqcm9ianF6VXFI?=
 =?utf-8?B?T2d2dGZZRUZ3WCtFOVZlZ1A2bjBWMTJSU1NzU252eWVOb01ldG5UVDlJQ0Q0?=
 =?utf-8?B?WHBMb1BlRFBMakt2dVJqQ2lGemNtL2JYYjBBbUVFRWEwOGV4clFDN2p5SUI3?=
 =?utf-8?B?cytZb3pFS2VjclNZa1dPazJWU0U3ZFZxbzRqeUJwTkkyVjVSNFZnSVlsZExh?=
 =?utf-8?B?Ynh4OW5UeGNnaGJPdmhqeDdNN0k0TDduSERlcndKWW14ak5KSWlqY0g0M0Yw?=
 =?utf-8?B?bm54U2tVVEN4L1FyVDVUcG1NZVplMzRKRWFoMmlXTFFRT1ZBaUxDTzJNRHV5?=
 =?utf-8?B?R1dJOWVRZ0kzTGN6bnJ6RFlCNnlma0t0SjZUR0xNUGlUbVdKZ255YUdKeVl0?=
 =?utf-8?B?TWViU2FGaTU0Y3NCSnpQTVBRU2VkY1F4SHJIWjBHM3ZFMnZUWFJuUGJIMEdy?=
 =?utf-8?B?UmVJa2tRUTdHSDB6YWtoQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K05qVTFsUGErRkJyanpEOFN1VGdhd1NRMEU1TWcyTFkreFNSSXBWbTJnL1k2?=
 =?utf-8?B?YTB4NGNrZzlURVpldk5sZDh6eDE1NGxybDJEa29mSTFuTHcwMlR4d3pMSkdI?=
 =?utf-8?B?TlgwSHdnaU41WHhaZ3MyZllHR3FJUGt0RkxpNFZkVFZQc0JBYndYQ1VOUkc2?=
 =?utf-8?B?Qjg5aEk1alU0YjVyOFZ0RkVjdllTVjVpUEVUVVlSNVFCVURKYVBCQ2xGZmVx?=
 =?utf-8?B?Q2NENnFhYTNVRC9NS1NnVDJZeitSdFppNDB2YmZaRWo4c3V0Rjl2enhPYTFO?=
 =?utf-8?B?Mk1wcmYzcFJwdytobWo1QnhjSXZhMGh1dFdvS2Z4YVhsMUI0WWMzRk1ZRnk0?=
 =?utf-8?B?ejVqUVFBU1ZCaGdnTW5OSXBreWszSWVoTjhDOU81RlV1SnZaRXhzQ2pra0sx?=
 =?utf-8?B?OWxmakxXbFpFMkx1UGx3MnZGam8yQ3ZpbmhIK1FMa0QwaGNWUnJPTU1BeElT?=
 =?utf-8?B?WSsvQU9xaUMxQm1lZkFvQUp0U3d0dGlFNHFNMXJoR0gzbFZGUlpwS2NvTWkz?=
 =?utf-8?B?RGtXK05wcXJ6UG5EeWRGcVFSaG05THVnajRvQUd2dmtodENBd29FdGpPeU42?=
 =?utf-8?B?Nzg0dDQxZy9mcE16WGI3N3gwL0VRbVl1d3Jla0k5MnlkbDVtbmZFSkIrTExC?=
 =?utf-8?B?L2hKdzV3WVh1MWxKSDhnazUwS3BGTVRXbW0ybHBKUGVzbVAxV3I5RWdZT1Q3?=
 =?utf-8?B?ZGluR1I1RitmeE5Eams5YVJkYU5PMTNoRTgwVmphQWk2R0VhQTR3SFU1NmZT?=
 =?utf-8?B?RFBkMXNhdXRKRjBURkl0VnRHTlIrQUdlNVBsTU4xRTdiQmM3Q2ViV0hTUEtP?=
 =?utf-8?B?YUg5L1lSU3NOM2s4dnR4dm1EQW9CR0VxM1Rib1YvWnhmQU53SENweDFtVFEx?=
 =?utf-8?B?dmdUdy9vRit1Y3V5ZmpkUVIrT1F0ZmQ2QS9tSHFQc0lnKy9PNzlYWmRkQVBu?=
 =?utf-8?B?YzZIUnBTRmFJRjJSZ21SUWVGYkR4cDRkOEFLU3VlOEx3ZGYrMktQYVBKbnJt?=
 =?utf-8?B?K3Q5d29rdnBxOXMrajd2Y0hLQUFWekZ3M2RtamgxSHBPR2RzYVY4RFBDNkpZ?=
 =?utf-8?B?VXZuMWVmaDJra1ZmbWxRSzlqNEZXTUJXL002N0IrTW5jeEdTdUlmQ1RRTldD?=
 =?utf-8?B?MFBWRWswVHdTd2ZMWE12QnJ4bENLRitBdXI1dHBsNWQ4S3YyZmx0NVN4Y2gv?=
 =?utf-8?B?c2o2TW1vcmVWZ3pjK2QzaS95ZnM5Nzgzb1JSbWJ0RWpRY2xJV00vZVFCemIw?=
 =?utf-8?B?Q2pxcm5nbkFxZTY4UklFUzJKV0RqNmxHNGx2elk1WDhvM2IwSUtwYTZrNVBv?=
 =?utf-8?B?OEczaUxhTk1ZRjNRdHBtZjV6aWlCMXh2SWNXcGl4THA1VVRyYTRCMStyNVNE?=
 =?utf-8?B?cElNS1FqdUtWQjQxQ25lR2wwWmM3REc2aUM1N1paczd3THZrTzZSTVVxRXhk?=
 =?utf-8?B?cWYwZm9rOUNLSE9WVHJxNTZWVytobElBN1QzVFc1THdXbUIxNThKcTFPalRx?=
 =?utf-8?B?SnlYT1ZHckpmd2Rmb21JTFJBc3JvcGFmN3NYVWFKVkppYXVJekNLa25CTzY5?=
 =?utf-8?B?OUx1aVN5L09GT3F3M29kLzRqTzdycDJhS0plMGlUU1lwaWw5ekJCMEdCMXMy?=
 =?utf-8?B?MnhxbStoUmxneUNRVzNDQ2w3RzFYNmxVZkFYcjZuZHNXeGtVY0FDaWR6RWFp?=
 =?utf-8?B?bHU1WWMrdGRwVEJFMmNHbGZ3b0FhdkJUUWd0eS9SU1ZxUlNqcU8vdGNtcko5?=
 =?utf-8?B?ZFlRSGUxT0l2UVI2Mm8vU2pXK2F3SUEwbWNaem05S2F2TW81Mk1lWEw5UEtV?=
 =?utf-8?B?YmxmZVcwdkkvY1JyblNSRUFIY1J4d3U2ZFZiSms0UzhXbDQrbmN0eGQwNWNK?=
 =?utf-8?B?elJxTG1jTW5Va052c2NmallWSlBRL0RjNUtaK2MySmZ3ZGpRV0FOOW5XVjBi?=
 =?utf-8?B?dzlzR0lWN2F2OWZQNWdKeHdsazBydEFqM3RJeUlLT0UzTE8wbGw1WEVNR001?=
 =?utf-8?B?bnBGcFdtZXQ3U01vbmVibTlwVHJsdkxZWVdERWQ1L1dOdW9EQTRxelJjV29R?=
 =?utf-8?B?S2c3QXNTckMvempDN1RwTldIckpaV2hsNG1IUlhWdHdqV3BDd3RnSGFtcUph?=
 =?utf-8?B?V29pQkdRWVJFTHVqelZpRUF0SGZEVHQwTlNQQ0x6dUZ4SlVXYVhpYjlUQk9a?=
 =?utf-8?B?R1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5722e933-8950-437a-cd5e-08dcd352b68b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2024 17:45:38.6240 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pSd+9DbVkgJ0WOmSt7h8J8TLQF7Wru+kDtbhx+RFOSoBRGxm88V+PMnZZDo/J2QzMtDV+nlrvhJHDsjO07uE8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7791
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

These save & restore functions inside i915_suspend are old display
functions to save and restore a bunch of display related registers.

Move it under display and rename accordantly. Just don't move it
entirely towards intel_display struct yet because it depends
on drm_i915_private for the IS_MOBILE.

While doing this conversion also update the MIT header using
the new SPDX ones.

Cc: Jesse Barnes <jbarnes@virtuousgeek.org>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   2 +-
 .../gpu/drm/i915/display/i9xx_display_sr.c    | 119 +++++++++++++++
 .../gpu/drm/i915/display/i9xx_display_sr.h    |  14 ++
 drivers/gpu/drm/i915/i915_driver.c            |   6 +-
 drivers/gpu/drm/i915/i915_suspend.c           | 141 ------------------
 drivers/gpu/drm/i915/i915_suspend.h           |  14 --
 6 files changed, 137 insertions(+), 159 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/i9xx_display_sr.c
 create mode 100644 drivers/gpu/drm/i915/display/i9xx_display_sr.h
 delete mode 100644 drivers/gpu/drm/i915/i915_suspend.c
 delete mode 100644 drivers/gpu/drm/i915/i915_suspend.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index c63fa2133ccb..89f04bdbc27f 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -30,7 +30,6 @@ i915-y += \
 	i915_params.o \
 	i915_pci.o \
 	i915_scatterlist.o \
-	i915_suspend.o \
 	i915_switcheroo.o \
 	i915_sysfs.o \
 	i915_utils.o \
@@ -219,6 +218,7 @@ i915-$(CONFIG_HWMON) += \
 i915-y += \
 	display/hsw_ips.o \
 	display/i9xx_plane.o \
+	display/i9xx_suspend.o \
 	display/i9xx_wm.o \
 	display/intel_alpm.o \
 	display/intel_atomic.o \
diff --git a/drivers/gpu/drm/i915/display/i9xx_display_sr.c b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
new file mode 100644
index 000000000000..211cf41119ad
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
@@ -0,0 +1,119 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#include "i915_drv.h"
+#include "i915_reg.h"
+#include "i9xx_suspend.h"
+#include "intel_de.h"
+#include "intel_gmbus.h"
+#include "intel_vga.h"
+#include "intel_pci_config.h"
+
+static void intel_save_swf(struct drm_i915_private *i915)
+{
+	int i;
+
+	/* Scratch space */
+	if (DISPLAY_VER(i915) == 2 && IS_MOBILE(i915)) {
+		for (i = 0; i < 7; i++) {
+			i915->regfile.saveSWF0[i] = intel_de_read(i915,
+								      SWF0(i915, i));
+			i915->regfile.saveSWF1[i] = intel_de_read(i915,
+								      SWF1(i915, i));
+		}
+		for (i = 0; i < 3; i++)
+			i915->regfile.saveSWF3[i] = intel_de_read(i915,
+								      SWF3(i915, i));
+	} else if (DISPLAY_VER(i915) == 2) {
+		for (i = 0; i < 7; i++)
+			i915->regfile.saveSWF1[i] = intel_de_read(i915,
+								      SWF1(i915, i));
+	} else if (HAS_GMCH(i915)) {
+		for (i = 0; i < 16; i++) {
+			i915->regfile.saveSWF0[i] = intel_de_read(i915,
+								      SWF0(i915, i));
+			i915->regfile.saveSWF1[i] = intel_de_read(i915,
+								      SWF1(i915, i));
+		}
+		for (i = 0; i < 3; i++)
+			i915->regfile.saveSWF3[i] = intel_de_read(i915,
+								      SWF3(i915, i));
+	}
+}
+
+static void intel_restore_swf(struct drm_i915_private *i915)
+{
+	int i;
+
+	/* Scratch space */
+	if (DISPLAY_VER(i915) == 2 && IS_MOBILE(i915)) {
+		for (i = 0; i < 7; i++) {
+			intel_de_write(i915, SWF0(i915, i),
+				       i915->regfile.saveSWF0[i]);
+			intel_de_write(i915, SWF1(i915, i),
+				       i915->regfile.saveSWF1[i]);
+		}
+		for (i = 0; i < 3; i++)
+			intel_de_write(i915, SWF3(i915, i),
+				       i915->regfile.saveSWF3[i]);
+	} else if (DISPLAY_VER(i915) == 2) {
+		for (i = 0; i < 7; i++)
+			intel_de_write(i915, SWF1(i915, i),
+				       i915->regfile.saveSWF1[i]);
+	} else if (HAS_GMCH(i915)) {
+		for (i = 0; i < 16; i++) {
+			intel_de_write(i915, SWF0(i915, i),
+				       i915->regfile.saveSWF0[i]);
+			intel_de_write(i915, SWF1(i915, i),
+				       i915->regfile.saveSWF1[i]);
+		}
+		for (i = 0; i < 3; i++)
+			intel_de_write(i915, SWF3(i915, i),
+				       i915->regfile.saveSWF3[i]);
+	}
+}
+
+void i9xx_display_sr_save(struct drm_i915_private *i915)
+{
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+
+	if (!HAS_DISPLAY(i915))
+		return;
+
+	/* Display arbitration control */
+	if (DISPLAY_VER(i915) <= 4)
+		i915->regfile.saveDSPARB = intel_de_read(i915,
+							     DSPARB(i915));
+
+	if (DISPLAY_VER(i915) == 4)
+		pci_read_config_word(pdev, GCDGMBUS,
+				     &i915->regfile.saveGCDGMBUS);
+
+	intel_save_swf(i915);
+}
+
+void i9xx_display_sr_restore(struct drm_i915_private *i915)
+{
+	struct intel_display *display = &i915->display;
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+
+	if (!HAS_DISPLAY(i915))
+		return;
+
+	intel_restore_swf(i915);
+
+	if (DISPLAY_VER(i915) == 4)
+		pci_write_config_word(pdev, GCDGMBUS,
+				      i915->regfile.saveGCDGMBUS);
+
+	/* Display arbitration */
+	if (DISPLAY_VER(i915) <= 4)
+		intel_de_write(i915, DSPARB(i915),
+			       i915->regfile.saveDSPARB);
+
+	intel_vga_redisable(display);
+
+	intel_gmbus_reset(i915);
+}
diff --git a/drivers/gpu/drm/i915/display/i9xx_display_sr.h b/drivers/gpu/drm/i915/display/i9xx_display_sr.h
new file mode 100644
index 000000000000..d3598c729137
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/i9xx_display_sr.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2014 Intel Corporation
+ */
+
+#ifndef __I9XX_DISPLAY_SR_H__
+#define __I9XX_DISPLAY_SR_H__
+
+struct drm_i915_private;
+
+void i9xx_display_sr_save(struct drm_i915_private *i915);
+void i9xx_display_sr_restore(struct drm_i915_private *i915);
+
+#endif
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index f82aa313f854..e15bf3aa44f9 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -45,6 +45,7 @@
 #include <drm/drm_managed.h>
 #include <drm/drm_probe_helper.h>
 
+#include "display/i9xx_display_sr.h"
 #include "display/intel_acpi.h"
 #include "display/intel_bw.h"
 #include "display/intel_cdclk.h"
@@ -93,7 +94,6 @@
 #include "i915_memcpy.h"
 #include "i915_perf.h"
 #include "i915_query.h"
-#include "i915_suspend.h"
 #include "i915_switcheroo.h"
 #include "i915_sysfs.h"
 #include "i915_utils.h"
@@ -1047,7 +1047,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 	intel_dpt_suspend(dev_priv);
 	i915_ggtt_suspend(to_gt(dev_priv)->ggtt);
 
-	i915_save_display(dev_priv);
+	i9xx_display_sr_save(dev_priv);
 
 	opregion_target_state = suspend_to_idle(dev_priv) ? PCI_D1 : PCI_D3cold;
 	intel_opregion_suspend(display, opregion_target_state);
@@ -1166,7 +1166,7 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	intel_dmc_resume(display);
 
-	i915_restore_display(dev_priv);
+	i9xx_display_sr_restore(dev_priv);
 	intel_pps_unlock_regs_wa(display);
 
 	intel_init_pch_refclk(dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
deleted file mode 100644
index 9d3d9b983032..000000000000
--- a/drivers/gpu/drm/i915/i915_suspend.c
+++ /dev/null
@@ -1,141 +0,0 @@
-/*
- *
- * Copyright 2008 (c) Intel Corporation
- *   Jesse Barnes <jbarnes@virtuousgeek.org>
- *
- * Permission is hereby granted, free of charge, to any person obtaining a
- * copy of this software and associated documentation files (the
- * "Software"), to deal in the Software without restriction, including
- * without limitation the rights to use, copy, modify, merge, publish,
- * distribute, sub license, and/or sell copies of the Software, and to
- * permit persons to whom the Software is furnished to do so, subject to
- * the following conditions:
- *
- * The above copyright notice and this permission notice (including the
- * next paragraph) shall be included in all copies or substantial portions
- * of the Software.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
- * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT.
- * IN NO EVENT SHALL TUNGSTEN GRAPHICS AND/OR ITS SUPPLIERS BE LIABLE FOR
- * ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
- * TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
- * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
- */
-
-#include "display/intel_de.h"
-#include "display/intel_gmbus.h"
-#include "display/intel_vga.h"
-
-#include "i915_drv.h"
-#include "i915_reg.h"
-#include "i915_suspend.h"
-#include "intel_pci_config.h"
-
-static void intel_save_swf(struct drm_i915_private *dev_priv)
-{
-	int i;
-
-	/* Scratch space */
-	if (GRAPHICS_VER(dev_priv) == 2 && IS_MOBILE(dev_priv)) {
-		for (i = 0; i < 7; i++) {
-			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv,
-								      SWF0(dev_priv, i));
-			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv,
-								      SWF1(dev_priv, i));
-		}
-		for (i = 0; i < 3; i++)
-			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv,
-								      SWF3(dev_priv, i));
-	} else if (GRAPHICS_VER(dev_priv) == 2) {
-		for (i = 0; i < 7; i++)
-			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv,
-								      SWF1(dev_priv, i));
-	} else if (HAS_GMCH(dev_priv)) {
-		for (i = 0; i < 16; i++) {
-			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv,
-								      SWF0(dev_priv, i));
-			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv,
-								      SWF1(dev_priv, i));
-		}
-		for (i = 0; i < 3; i++)
-			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv,
-								      SWF3(dev_priv, i));
-	}
-}
-
-static void intel_restore_swf(struct drm_i915_private *dev_priv)
-{
-	int i;
-
-	/* Scratch space */
-	if (GRAPHICS_VER(dev_priv) == 2 && IS_MOBILE(dev_priv)) {
-		for (i = 0; i < 7; i++) {
-			intel_de_write(dev_priv, SWF0(dev_priv, i),
-				       dev_priv->regfile.saveSWF0[i]);
-			intel_de_write(dev_priv, SWF1(dev_priv, i),
-				       dev_priv->regfile.saveSWF1[i]);
-		}
-		for (i = 0; i < 3; i++)
-			intel_de_write(dev_priv, SWF3(dev_priv, i),
-				       dev_priv->regfile.saveSWF3[i]);
-	} else if (GRAPHICS_VER(dev_priv) == 2) {
-		for (i = 0; i < 7; i++)
-			intel_de_write(dev_priv, SWF1(dev_priv, i),
-				       dev_priv->regfile.saveSWF1[i]);
-	} else if (HAS_GMCH(dev_priv)) {
-		for (i = 0; i < 16; i++) {
-			intel_de_write(dev_priv, SWF0(dev_priv, i),
-				       dev_priv->regfile.saveSWF0[i]);
-			intel_de_write(dev_priv, SWF1(dev_priv, i),
-				       dev_priv->regfile.saveSWF1[i]);
-		}
-		for (i = 0; i < 3; i++)
-			intel_de_write(dev_priv, SWF3(dev_priv, i),
-				       dev_priv->regfile.saveSWF3[i]);
-	}
-}
-
-void i915_save_display(struct drm_i915_private *dev_priv)
-{
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
-
-	if (!HAS_DISPLAY(dev_priv))
-		return;
-
-	/* Display arbitration control */
-	if (GRAPHICS_VER(dev_priv) <= 4)
-		dev_priv->regfile.saveDSPARB = intel_de_read(dev_priv,
-							     DSPARB(dev_priv));
-
-	if (GRAPHICS_VER(dev_priv) == 4)
-		pci_read_config_word(pdev, GCDGMBUS,
-				     &dev_priv->regfile.saveGCDGMBUS);
-
-	intel_save_swf(dev_priv);
-}
-
-void i915_restore_display(struct drm_i915_private *dev_priv)
-{
-	struct intel_display *display = &dev_priv->display;
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
-
-	if (!HAS_DISPLAY(dev_priv))
-		return;
-
-	intel_restore_swf(dev_priv);
-
-	if (GRAPHICS_VER(dev_priv) == 4)
-		pci_write_config_word(pdev, GCDGMBUS,
-				      dev_priv->regfile.saveGCDGMBUS);
-
-	/* Display arbitration */
-	if (GRAPHICS_VER(dev_priv) <= 4)
-		intel_de_write(dev_priv, DSPARB(dev_priv),
-			       dev_priv->regfile.saveDSPARB);
-
-	intel_vga_redisable(display);
-
-	intel_gmbus_reset(dev_priv);
-}
diff --git a/drivers/gpu/drm/i915/i915_suspend.h b/drivers/gpu/drm/i915/i915_suspend.h
deleted file mode 100644
index e5a611ee3d15..000000000000
--- a/drivers/gpu/drm/i915/i915_suspend.h
+++ /dev/null
@@ -1,14 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2019 Intel Corporation
- */
-
-#ifndef __I915_SUSPEND_H__
-#define __I915_SUSPEND_H__
-
-struct drm_i915_private;
-
-void i915_save_display(struct drm_i915_private *i915);
-void i915_restore_display(struct drm_i915_private *i915);
-
-#endif /* __I915_SUSPEND_H__ */
-- 
2.46.0

