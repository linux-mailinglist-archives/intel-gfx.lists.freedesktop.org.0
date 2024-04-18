Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 476458AA42D
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 22:40:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADF91113FCE;
	Thu, 18 Apr 2024 20:40:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O7a7ETsD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03361113FCE;
 Thu, 18 Apr 2024 20:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713472815; x=1745008815;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=lN9lK7I1Lwv5SzmuUM2QZVrZ254PJxACdZWCO64Pzjk=;
 b=O7a7ETsD8FYPZrooKGOQuMVMX9mEv8NJkwG3Ly88tuNx7dmHVb5H2w90
 UcBYop4MzlfsllO1teHsQmA2xC01oWnue/bMVbE96otHcQDsB7CeTzo7i
 fNxYtVh+oUFBqZL1YRywbA6xko9aJP8YUGuojb1UnOw5etUVvbkisqRAu
 adOpJZTob8KbIFRGYJ/CqR35mflTj4dcpbDklu0F0aHANe+8butFTjy5Y
 0B7kNF7AtuJjIMCnhfK6Pb6cTEsn4W0O6g9zRt+tBf/jFKKChIVoWp8he
 kprW2H+trqcpuiGf2vDsoEm2VyfWRjqUuGdID/iReEBzjnedAx3WWU2ZV g==;
X-CSE-ConnectionGUID: ARjaZjbsTwC/2MC2q/KyzA==
X-CSE-MsgGUID: 8i6bM9lsQ4qZh6cL1ttwvg==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="20473186"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="20473186"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 13:40:14 -0700
X-CSE-ConnectionGUID: zqaBqa+CQKGCbLOQbhbzlQ==
X-CSE-MsgGUID: NFoi+lc0S6Sg8lufVfDjkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="23085985"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Apr 2024 13:40:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 13:40:13 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Apr 2024 13:40:13 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Apr 2024 13:40:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PCCmTSPTiLKxqlqRHzr9ngyZ+uOo3kcYZSSKfMcaORgFREPqCMNwtdkD7KyOxoZ4P/yP/hEs6Zvw8/cSJtCi3B3aH99QzOsS/zvvAHAhoB3nGE8iupZ5YHgKKMsMBpdHiF2LIWYp+7F6DDXnTubm+vBfTv9qTJlmAVOa9VBXwFFjUwSYi7emAOxpN4I6p1iLBxdxyH4pUxSMVEY7L3kurzFFUu1xWTh2d8bsKGHiTMDYMUcEiySPH2vF1gJczJDbbVhGW355MIbtAQ8HSC3IxSrlmS7oEvVO8uSGKi2zwJ72qpD/Ot22DRThlVy2GgcnnKZrTw3JFuKPL1+Vy6Otjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vDOKy6fYI5oTXnoP10hP7Y51VKIHxhEyGMp176Xqg6U=;
 b=OeUEgdyaO1PsjhU2wxP0cxOjPDw4OS01zRnjjkjDDtlRjNjLRvYoL8QzF7pCSkbSg0tXxetq6Hs/ffn1O09KGesXXSQzx3vUlClI6pE4Z0q/cfkEZ+A7yxpwj34IIsmO/16QxinEVfdcOU4u1Qgs3wXlZZXOG5Jj9o9mKyEYcosDCOPgCBJKdpT12c+lKx6dcs/uGRQhRox/TeGGlqvTdSsDsUaiyw7qJPtka2i+UUjs5gGUjLp+0Bnpa77AnDP0KOPZmlrtEmnl6JB0Y+obSV6WCWcaY1oFar7oW2+Z9HA2iLUKQk5ol2LCI7sA635OZxJgKs4gK4MOpLkdlKDQgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MW5PR11MB5883.namprd11.prod.outlook.com (2603:10b6:303:19f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.37; Thu, 18 Apr
 2024 20:40:11 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1%4]) with mapi id 15.20.7519.010; Thu, 18 Apr 2024
 20:40:11 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87il0ewi9h.fsf@intel.com>
References: <cover.1713450693.git.jani.nikula@intel.com>
 <08137052f324f47f9ca9aadfc5bdf915a17bfd06.1713450693.git.jani.nikula@intel.com>
 <171346641545.2007.10117149787974036842@gjsousa-mobl2>
 <87il0ewi9h.fsf@intel.com>
Subject: Re: [PATCH 2/5] drm/i915/dmc: improve firmware parse failure
 propagation
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <lucas.demarchi@intel.com>, <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 18 Apr 2024 17:40:02 -0300
Message-ID: <171347280214.2007.1588623666281493939@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0204.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::29) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MW5PR11MB5883:EE_
X-MS-Office365-Filtering-Correlation-Id: cbc3acf3-5f16-4473-f6cc-08dc5fe7be10
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4awn0PqG3vmsuOpQ1xpizXzQnX66sb+f/7g0XQz/AWQKtU1cPnquhemZL3hiv7m6XlRKTyHaAReLrfjbRN4L9+Z2FpbcEQgwwtQjSg0Pq4aKYaDxiv1lwT7tyNTxp7DXhNd0WvDSWJA68oCzm+e7owD5FHnQS4posqm8oNijpUD2O7MNoYfckrRrQGxIRQ/gYSx/9HnAxH23bhYRGjzlpX8xL4L5rebeKviDD63mlFTyVqTpPn32spyRitXma01TA1Qqfxl7jLSlphAPLRV6VW+/AobttYJG1oGLF1MYpKtJV3h7yvYdbwfUGNKumagjWEYty7M1yPmVJHyj9CwPTJODo2wMxM+G/5ADUgRtitpJW/B+xWDRwsKM4AJNl5lWBzHBS87sv90pfMY9oQYiiqhJBz/ULTCbqXQwq3JqTNEr6qBYgul8EWfbtMW0CJccc7WB6pCM7tZPuB+KSXbaQ7mKtT38dvCmVA9RvTtPH1Y1aX/wUy+0TW54adNlot2f9gU51G+4hmIv9MUsPmAejwvoytsykP0WR/tRctPQJIkMzeZBQRKI83KIZ7tG7wf/D0zjc57rRPZwA/3lXp5yWAhL4q9FFYGi9zvM0fDz6fGzqDlcmluz8J2VUZFXn2Cth9Ii21se/SCFC66EtMH84497jFlYk1BXqdhy839xc1M=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U2FYTWRidms5alZiTjVEczRkUllzK1VLc2NTQUZDZFBhMHY4NVN2VE1rK0FR?=
 =?utf-8?B?M3BjTlEwVWQwejdBOUJqV2ZhRW8yYmk4Nk5wdm5ycDNRb0pPanFseUpTUHU5?=
 =?utf-8?B?cWlvSXIrcnlPS1Q4SHYyYStDS0UxVlVmeTM3bGhYQXV2MFFPU3VCSldQOFR5?=
 =?utf-8?B?M3lzM056c0xid1BCQmx5bzJVRmJJUDhaeHVNdTZ5WjVCYTFtWlZmM3VpNklX?=
 =?utf-8?B?YUt3VlF5c3NvcTZ0NHZ3ZVJVTE1LK3RFUytiVDU0TnN0YWgvdzRjZS8xbmNG?=
 =?utf-8?B?bzBPS1BiTThNS3hXblYwcnZ0RFF0bG53dkJtb2ttSEhvZEVxcVp5dFk2blli?=
 =?utf-8?B?TW1UaUhsbXErNUJ4RWtvYy8xMW52NjZTYlFra29RU3pOZXBkRzJ5UDVzY285?=
 =?utf-8?B?VnVhRTc0bVpWazFMSTJVS2UwSUtLYXJpbXpoU3hYSDdZQ2NiVDA2dDN0V0tm?=
 =?utf-8?B?WngxbllMUjVwUUd2WkdqTHU5WXpYeDR5WFpXMkQzUHFIb0c5LzlTa3hFZVVL?=
 =?utf-8?B?WDQvSW5yeFo5eGRQb0JwR3FySnp5dDJLWmNsQ3oyTlRmOURxMFZnR0swM2lu?=
 =?utf-8?B?aksrTStZSEdwVkI0U01YbWVRdlNzQ0d4dzh3Q2QxOFA3dWp5TzYrWGFVTnBP?=
 =?utf-8?B?WTA0b3hpai9YUE9LU1pjNEtvZC9uNVBZSGU1ZWhZK3lhNWRxa1JaTy9xRlBz?=
 =?utf-8?B?WnBEbW9kTDZYSXZXVW12V1VIbStFMWptTGVLN0NKR2RQZ0FNSHUvQ3FsTEFY?=
 =?utf-8?B?NkJtVnpCb0RSdXIrYnBYN243c0N0QnNOOHVRVkk2QkRXOFVUTUdoMUFDZ3dK?=
 =?utf-8?B?MmkwZXRpbXJEMk8zclFBSTRRclBBWXU5MmNWUmRVbjVEVFMrWmVHZlI0R1Vs?=
 =?utf-8?B?ZGRUdEVTY3M3MWRWODlqRVREL21WT3Z1V2JYRzdOdDFGdkVnK2hrWE9BTDJn?=
 =?utf-8?B?ekZuNElIRXVLdmZ5RFpqODhMTU5RaWc4VWxLbHdFbm9EbUxPL0F3eERONDc2?=
 =?utf-8?B?WjFNdjhaWDBEUVovQkpSeTM2dlJ6anNqRDVMM0cralVWUlArU3dZUVVpME1O?=
 =?utf-8?B?bk5MUEh5V09oS1FkY1l0ekRyemtvdWVDR2hQeWxvbW9BMHRpVmtCbGRuNjR5?=
 =?utf-8?B?NjJodk5HN0lvWndlODFzNWhyQWNTdUZWNEtNMW5Ra0NGTmMxdTJ2S09SeURt?=
 =?utf-8?B?QTZLUGtaU29YeUtab2dDMTJJL29LTmpGc0s4WkZwem8vcWZyc1g0R24xRUhB?=
 =?utf-8?B?WHAwM0tGMStRYVMrNElOVXJjcmxyNjlxRnNQY1ZMeXp2bnBONjVaUFgwQ2Vq?=
 =?utf-8?B?M2t3MmE2N29wZEJuczVDYzB5QzRSM0RPVGdyUTBOcmRGZkFYYWhsVTVZaFFR?=
 =?utf-8?B?WkFGZk93TkhKV04yaWdTUjlWTU9xM0tMKy9KcEk4a3VIZFEwZmg0Q1hHelo2?=
 =?utf-8?B?M1dDbWJQQnA5Y2hYY1J0L2NsMzk2Vm5relFtZXQrN2FCaDY1Q0ZoSGFIbElk?=
 =?utf-8?B?VnZaTmhtakN1V3Z1RlVKWDhkTW9QdGdoSmhtVGRBWGVvb0ZqSnZQR1dvZkFY?=
 =?utf-8?B?b2JCOVNpdWRQWUhTam9aTThDTUtxdzVBYzNZR1lNd3dyVjRKM0JuRkQ4aWhT?=
 =?utf-8?B?aHZseUZZNm1Wek5xanhXVEIwMzZjc3BObDNIdWQ0dmIyREM2RElsNTVCcFFQ?=
 =?utf-8?B?L05YaTN2RWJlTzFWbDM4WlQ1TzBaeUYzY0ZXbXAvTWJEenhmWkNnS01MRlVZ?=
 =?utf-8?B?N0ZkanJZdFNmbUZZWFZEeEl3UlZqV2lVcVRCMThRbDBmeUVJQ0dydys4anB4?=
 =?utf-8?B?UEVPa28zajAwclhIblZWN3pSSVJ3amRUK3VrSjZFWUxHWlpXNU51eTk4SVYr?=
 =?utf-8?B?NnNlSEEyZWpwcGFTaXdOTVVMdGNVMytMQUMydUlaeGwyVUJySmZCdEtxbXQz?=
 =?utf-8?B?QUUrSjN5UnJBenllanZJQTVHQ2RzK21JNDVWSWdNWWlmVUZ1UUM1VTJjMnFp?=
 =?utf-8?B?c0ZyTEZydTNMNkVaOFpYQXBwNXNFSkhzL2kwWlQ1YW9KVmErN09ta292MHVQ?=
 =?utf-8?B?RlFIOVRKSFpibFpPNTVENUNad0FGZ1ZQeXBhNWZhdmFpdXJBUFY4U2VrOVY5?=
 =?utf-8?B?aGdTWHVVWCtyRVV0YTU4OTVvaitqK2tUYU9Fd0IrZkJVSVp4MnluK1AvMmtN?=
 =?utf-8?B?YXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cbc3acf3-5f16-4473-f6cc-08dc5fe7be10
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 20:40:11.3611 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UEWXza9Xoo++k5SBCprTB92zCYm9TrS+41zMVH9nlg3BCRfMfDBfoPGG5ZoeD+GFDN+bMn743Rqz2YPozOl2sA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5883
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

Quoting Jani Nikula (2024-04-18 17:03:22-03:00)
>On Thu, 18 Apr 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Quoting Jani Nikula (2024-04-18 11:39:51-03:00)
>>>Return failures from parse_dmc_fw() instead of relying on
>>>intel_dmc_has_payload(). Handle and error report them slightly better.
>>>
>>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>---
>>> drivers/gpu/drm/i915/display/intel_dmc.c | 39 +++++++++++++-----------
>>> 1 file changed, 22 insertions(+), 17 deletions(-)
>>>
>>>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/=
i915/display/intel_dmc.c
>>>index 65880dea9c15..ee5db1aafd50 100644
>>>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>>>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>>>@@ -853,7 +853,7 @@ static u32 parse_dmc_fw_css(struct intel_dmc *dmc,
>>>         return sizeof(struct intel_css_header);
>>> }
>>>=20
>>>-static void parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *=
fw)
>>>+static int parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *f=
w)
>>> {
>>>         struct drm_i915_private *i915 =3D dmc->i915;
>>>         struct intel_css_header *css_header;
>>>@@ -866,13 +866,13 @@ static void parse_dmc_fw(struct intel_dmc *dmc, co=
nst struct firmware *fw)
>>>         u32 r, offset;
>>>=20
>>>         if (!fw)
>>>-                return;
>>>+                return -EINVAL;
>>>=20
>>>         /* Extract CSS Header information */
>>>         css_header =3D (struct intel_css_header *)fw->data;
>>>         r =3D parse_dmc_fw_css(dmc, css_header, fw->size);
>>>         if (!r)
>>>-                return;
>>>+                return -EINVAL;
>>>=20
>>>         readcount +=3D r;
>>>=20
>>>@@ -880,7 +880,7 @@ static void parse_dmc_fw(struct intel_dmc *dmc, cons=
t struct firmware *fw)
>>>         package_header =3D (struct intel_package_header *)&fw->data[rea=
dcount];
>>>         r =3D parse_dmc_fw_package(dmc, package_header, si, fw->size - =
readcount);
>>>         if (!r)
>>>-                return;
>>>+                return -EINVAL;
>>>=20
>>>         readcount +=3D r;
>>>=20
>>>@@ -897,6 +897,11 @@ static void parse_dmc_fw(struct intel_dmc *dmc, con=
st struct firmware *fw)
>>>                 dmc_header =3D (struct intel_dmc_header_base *)&fw->dat=
a[offset];
>>>                 parse_dmc_fw_header(dmc, dmc_header, fw->size - offset,=
 dmc_id);
>>>         }
>>>+
>>>+        if (!intel_dmc_has_payload(i915))
>>>+                return -ENOENT;
>>
>> This function and also the parsing helpers (parse_dmc_fw_*) already have
>> the pattern of providing error messages for issues found. We could maybe
>> have parse_dmc_fw() simply returning -1 for errors here.
>
>I've become increasingly opposed to the magic -1 error return in the
>kernel. Basically all negative error codes have a meaning, and -1 is
>-EPERM. (I even have a branch converting a bunch of "return -1" to
>something more meaningful.)

Oh! I didn't realize that. I've always seen -1 as some generic error
indication (i.e. just something !=3D 0). Thanks!

Well, -EINVAL indeed seems more appropriate then.

>
>But I guess -1 wasn't really the main point about your comment anyway.

Correct.

>
>> For this specific condition (!intel_dmc_has_payload(i915)), we could
>> complain that there the main DMC program was not found before returning.
>
>Agreed.
>
>> I think ENOENT might confuse users.
>
>So would you rather just skip printing the error code returned by
>parse_dmc_fw()? I take it this was really the main point?

Yep, that was my point initially. Specific messages are already printed
during the parsing. So, I thought just a generic message at the end
would suffice (i.e. just removing the " (%pe)" portion of it).

And I was worried that ENOENT would confuse users. However, now I
realize that "%pe" actually simply shows the symbolic error name (e.g.
"ENOENT") instead of the "traditional" phrases for the error (e.g. "No
such file or directory"). I should've checked that earlier... So, I take
this part back now. Sorry for the noise.

With only the addition of the specific error message for
(!intel_dmc_has_payload(i915)):

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>
>BR,
>Jani.
>
>
>>
>> --
>> Gustavo Sousa
>>
>>>+
>>>+        return 0;
>>> }
>>>=20
>>> static void intel_dmc_runtime_pm_get(struct drm_i915_private *i915)
>>>@@ -951,22 +956,22 @@ static void dmc_load_work_fn(struct work_struct *w=
ork)
>>>                 return;
>>>         }
>>>=20
>>>-        parse_dmc_fw(dmc, fw);
>>>-
>>>-        if (intel_dmc_has_payload(i915)) {
>>>-                intel_dmc_load_program(i915);
>>>-                intel_dmc_runtime_pm_put(i915);
>>>-
>>>-                drm_info(&i915->drm, "Finished loading DMC firmware %s =
(v%u.%u)\n",
>>>-                         dmc->fw_path, DMC_VERSION_MAJOR(dmc->version),
>>>-                         DMC_VERSION_MINOR(dmc->version));
>>>-        } else {
>>>+        err =3D parse_dmc_fw(dmc, fw);
>>>+        if (err) {
>>>                 drm_notice(&i915->drm,
>>>-                           "Failed to load DMC firmware %s."
>>>-                           " Disabling runtime power management.\n",
>>>-                           dmc->fw_path);
>>>+                           "Failed to parse DMC firmware %s (%pe). Disa=
bling runtime power management.\n",
>>>+                           dmc->fw_path, ERR_PTR(err));
>>>+                goto out;
>>>         }
>>>=20
>>>+        intel_dmc_load_program(i915);
>>>+        intel_dmc_runtime_pm_put(i915);
>>>+
>>>+        drm_info(&i915->drm, "Finished loading DMC firmware %s (v%u.%u)=
\n",
>>>+                 dmc->fw_path, DMC_VERSION_MAJOR(dmc->version),
>>>+                 DMC_VERSION_MINOR(dmc->version));
>>>+
>>>+out:
>>>         release_firmware(fw);
>>> }
>>>=20
>>>--=20
>>>2.39.2
>>>
>
>--=20
>Jani Nikula, Intel
