Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE97A5E1EB
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 17:41:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1831810E7AA;
	Wed, 12 Mar 2025 16:41:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NH8FamAp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B215810E2A2;
 Wed, 12 Mar 2025 16:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741797684; x=1773333684;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=6HK+QNq5K6TWn1QyUFyt9/I78+pt60ZJGNt2uBs89DM=;
 b=NH8FamApcR8t34MnUS0vw6kGoQGjaoleMT4vvfNXzc7j0O1qykXeyxQD
 DLZ78iuJIXYVIp0YG/tj1vVuJgrqXLOjGDRVkyZPX25o+aKSPcELpxCDZ
 5bO6cDD0JKqMBDZtZonjvI64Ze3keNjwA3u6bS9+9y8o2iGtoC1LfWgVM
 V7+CFVx+znvvOlwxpN8Ms1YXfzX1UdSnL66Kf4ZEhFKLlmxAPDR9MMxJP
 UYtkigphbqWsehH04Ec0UjQm1wM/s5CKmgd1L55lmk64pNwFTew7pKf52
 6CidJhevTdBd0X/JcnHRFQfjobeizU/HsYIkSBOw1zrhVscsQiFCJzQvQ A==;
X-CSE-ConnectionGUID: RXSEfjaHSECAYO+TGM+sIw==
X-CSE-MsgGUID: dqd0JLhYQZmVdbQkOPtp2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="46537819"
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="46537819"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 09:41:24 -0700
X-CSE-ConnectionGUID: ZpRcmwWXSmaUPA5cMuZdLQ==
X-CSE-MsgGUID: s2v/JTS5S7ucF/kQu0Resw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="121194391"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Mar 2025 09:41:24 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Mar 2025 09:41:23 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Mar 2025 09:41:23 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Mar 2025 09:41:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZEPe8joDfVd1zkRGuIM6WEKYMtUXeFR4PtcRHVsn9VHBOXzCTE3sOKUWk20ynVUjNRFMfLb2WloGOitMPz4kHZsnnlrxVXEoQawIZD53JDh7Q8uRGSIqrwddj5qVfx0wpEZamuRf6u15U0amQzBtggUeG3bsAsv99TxOjL8f/YwC0wo/Y4lkKbxetUlnWri9L/OjdEhQLvfZ/QAxa6bUA2ICF3MxvgxMpmpHO3S+X0C56RvUf15RJlhcEr/SsZM13/x14OS1D4hy75378eKyC/w7m1ANUilWcfweiHp9u8Ze7+GaEoP2Rm5gWzq5KwLMK8e54L9cHE0i3TNUvXKCig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=biZ+/zJEzZwN1j3WoCzkspDyJR0AyDZWdYzR7BUxNlY=;
 b=sFdMFBFylMndUGsdYfqfhAPbutIJ4KJDSm2oaYPl6YjXNt7MYmnVhmIUQ8tAADtsDCtr2FIn7Ut1B7iuNHIN7cAg225+Es3OtBX9n4CwOy0E/mv/DzctZfTyzN8ULEs99N+kkJMOxvoGVTMAboxYblDb37Mwze4/dya5JXjMugboEjYzSyfy+KHtX7J9b817AR3X1plTqL+agEy0LDYsSUGdjAGKk4YQ4/IM109NHzA/AauOYIMhYVwEAWmq/e56TZmsL7soXPKKhpCj7K/sMQJvqsOpDklFJRJ/rBUgQUcQK69lbINVCDAT8cLi0ZdxtVfLTu3g4oC0G2hnzD2pCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by IA0PR11MB8420.namprd11.prod.outlook.com (2603:10b6:208:482::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.29; Wed, 12 Mar
 2025 16:41:21 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%3]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 16:41:20 +0000
Date: Wed, 12 Mar 2025 11:41:17 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <mitulkumar.ajitkumar.golani@intel.com>
Subject: Re: [PATCH] drm/i915/display: Maintain alphabetical order for
 HAS_AS_SDP and HAS_CMRR
Message-ID: <25e755gf6zwtp62ewxilqa5mg4zxq4innl5cdndm72gx3hg6vh@l35e4yaqgdnk>
References: <20250311135925.1523852-1-ankit.k.nautiyal@intel.com>
 <87wmcvfnin.fsf@intel.com>
 <3e96d168-77c9-4726-a127-3f105b26f6ae@intel.com>
 <87jz8ufq3b.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <87jz8ufq3b.fsf@intel.com>
X-ClientProxiedBy: MW4PR03CA0245.namprd03.prod.outlook.com
 (2603:10b6:303:b4::10) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|IA0PR11MB8420:EE_
X-MS-Office365-Filtering-Correlation-Id: ac2a98d7-fe88-4fbb-7ec0-08dd6184b7c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?fyy3WB3FwhY1HKnFOESXnYDFLN0JXdg82rwY5hMuqRbSJ90igEouTUh7sc+3?=
 =?us-ascii?Q?34M2I1NO0HWo1w7R0+tABZNzfBO54eDXBiQwPhsA7IupnOP8aJVNw2Gbo1xv?=
 =?us-ascii?Q?V/nrs1FLiQEtqpeah+aQ/AqY/zm9hFkXvqM9BZjZEb+1ilg7JU3KmbrX/Gtn?=
 =?us-ascii?Q?AIibiLtcY/knrH2ZlQlv1zz6OrQRY33Fsek7aPfuBG+dTYwQZhWTnXtE8VSv?=
 =?us-ascii?Q?dB7HD06Nazgjtl6+/Iij0ktbLEuzCk4Gv2NrEZ0RApa5qM9CJM+R1DANDIBk?=
 =?us-ascii?Q?7FqmeBYuQG4SBve2EEbk2kevT7LsHxlmWmhCPBuKJNcUTaqdTI3QHZhOhqDF?=
 =?us-ascii?Q?mO08ynQXRDccDEFbjukHsf/+MDIN9H7s2zCu7kPCXvOkQ177MsJwcRT8Ilb9?=
 =?us-ascii?Q?qI0s+m0jsFX3wXy351nzb8229T3eZa8J8l+P61jRHWnza7YNpgcz9DnSGBhk?=
 =?us-ascii?Q?ck2CI6oyk1w1YZdVHInM0ICGbpUU6L03cbcv2WlIgLYI6LTBWkfjqNPx4Iau?=
 =?us-ascii?Q?olYokhifzwywMaOH9fVeeyvd367KjVBFZbZBhLFeVEqKVr4LO0QK0lTJexry?=
 =?us-ascii?Q?Wez02TPevNLLIhuBQNvtEg8heMdjTNtJ+Cr0ubI2BXLu8lQomYMpX9x8KVrv?=
 =?us-ascii?Q?9bg6/H9kZDLofyuUwN0fwT+K2KfmjMIMEEXdaeetTQE2kOcZTl5GBdqqlbka?=
 =?us-ascii?Q?k+Sz5FuJcSTwJvMdiU07hWOH9wtoW0lx+gXrHrpaCoqP+2PB/QgpBH2nW0Xa?=
 =?us-ascii?Q?JhRvygTlIgj96Mxx005eSYNJNNCvCy/KRrYpt3VYokcYTZmA+j7sM6snQoYs?=
 =?us-ascii?Q?hO0E1yF2HxJt+fg4YW0x8GSC4xqotyXT7P18GpW1ftAGayJKyyz3PhBJYUXe?=
 =?us-ascii?Q?CjOTQcO+w7EEmHHSdwPc+hsLCFDCgvwY5abOASn5K8Zax5xjm3/+KQKlUOCP?=
 =?us-ascii?Q?YeDkwZLkDyJTTGMgnagd8QX+v2ibRgwyoRrGm+KMT6xmiJfqM/a2gRb/vCPO?=
 =?us-ascii?Q?oV31UJXE+gGz6J5hml9/VvPoSVieoHOTAmGnCukWhVd3jED+hGDewfQ2V2of?=
 =?us-ascii?Q?majUiOqbZY2aL3Nm1Xh17g7G5eNDdwHZ9ZfJIvwFcHfTKefPRRrqMeNkhoNq?=
 =?us-ascii?Q?XdswR7fvDW0K7WGA2G8PPaibi1JtZaUDYWUywnNekJ4fZ3ZxCyoP0+D0X5up?=
 =?us-ascii?Q?a2qBDW3EhsBw4otBZNdf4nNMvRV1Uqyr+Ajug1yMT7NFK1kXMZufT2krzKjf?=
 =?us-ascii?Q?sgSRtjdF4m2ger1eoAhD19qYbqfscLiTTf8kASM1hOofiJnwnUQ0ezLeSR5u?=
 =?us-ascii?Q?Sr/lVhDt5NU44qhiegtm9uK5eLL4Aym2cksfkybnvC8CBDrZ6KgCrRSX2+sw?=
 =?us-ascii?Q?/woFIIe5KXZsf70wI1Y6UyFwkRpG?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Df3eJ7VvyHIWtMGHdEggr0IKPsYwBtaYZCNRBwJ9HB4MReJtLIhKPTwJq+Q+?=
 =?us-ascii?Q?DD8OHFf04w371TSnRdLO6vj47AgdsY8gqbo1H5PVp+HSjui/6duwYX+izUaj?=
 =?us-ascii?Q?0N5k0OKiH+8mOBTYN/8FrzAB8CICPXkfTzvkCPPp8mGq+l8zjhRO1h4wJXOQ?=
 =?us-ascii?Q?aXDw5Ddus8x8pG1HfDxHjJLcUs4gVpmDOJ4CWqCxocZUJOP6SR4xFwLAPPdj?=
 =?us-ascii?Q?yHjUNd4wV3GTPNilTwJRQH07dvyUZoKqXRfPRRBD1taJDyF4QkYJRb06WYAF?=
 =?us-ascii?Q?6kUgRb6n8R8LAjMqDFZbKmtQraE9L6GDc3TNNWqx70IFD+gXvMiOFmaVhWTq?=
 =?us-ascii?Q?9LZDtBGue3zDphdLwzS4SZ/xhNHNNCEfzusa5J001ZHNNevyqZVaveP3yy+d?=
 =?us-ascii?Q?86QQ6+syJIL0uw8NoB4FaC1QdWUsSitrs3WyGFWMh/vxHo3bGZSoRFkfWEjm?=
 =?us-ascii?Q?C0ixIllqWMZo/6/eoynC/oAJPpL4RKCgGm7eVpjj7mB9bMlEPYa8fHiGNn8a?=
 =?us-ascii?Q?qbFajZRPrZPOK4+ddL1NPt1miHwSWDxqRUHKTFdlPbg4fTw/uG9tZykJiWeo?=
 =?us-ascii?Q?gDd/tLVGNX0+8T8++fb1NigR3b3fovc2v3jZIXLnfPhyurChApipbtJSu21z?=
 =?us-ascii?Q?uJsj2QcynE7m7o5X5EwYlx39MnyN1of7Vd41UvWJzvzHeHjdYwdNLXSiOION?=
 =?us-ascii?Q?xifdrWVwpDiJpNZJhAF1oKeRo1fpsTmZW6bJULeScENaJeuFkMvYW3nh33O7?=
 =?us-ascii?Q?Ye9dRL8OuveaPMRPC+mUOea80x+n0S7BK62XJGi4UGhYslw6EK0P8kKA6fSG?=
 =?us-ascii?Q?PF25pRbP2azBRRriVaVnx1o8E1iuxRGJ7SybeFjQpXu0uOnYJTlwvf73ojqT?=
 =?us-ascii?Q?YoA0vHdmuQV5FTxscxmURUmr8CA2MLPSqM//F7SY5fuPwA6yIvUwWcxmgQ2O?=
 =?us-ascii?Q?SNRVjXLRHKg5AtMTwbdU9jJoEPnZC9JJ4hRe03AhVQknv8xP934nRKvQuBaU?=
 =?us-ascii?Q?cCms9+Qu5bpWV4JxBs6ToEJ/19DS7mySyjGQgIwve6mMVwuK1P4ptmmiVLFh?=
 =?us-ascii?Q?9aoudNaQTMEkhULhrPDnzJwC8lUKrDRcVSmaxzf0r7bCVNdFPHDW9Y/UoEQq?=
 =?us-ascii?Q?06YbufoeeFHT/+pySceZuZCU5urVC8BSQ7UHvRvfxnEz4a+J0kreWuNoJZvy?=
 =?us-ascii?Q?HingeTCmfDtIV+oE9BHaeIUHsfzpDu5b1pnLvHdBJeSi0Shik2lNpf5WO+So?=
 =?us-ascii?Q?sUvNVQA5bodofNvE/Jd8P8HxBPD6pI+EzA5dOl/WvkNTLh2/PaWoiDyGc954?=
 =?us-ascii?Q?rdc+a8/SuTPC4Ax3klDw3nHd1UIoDyoXN6vaNbtUMTHFPx4x2x1en2RGaN8w?=
 =?us-ascii?Q?7TPSMU13IXwp6y8ziJ+/o7uj/0/PIxs2CRoXSgH6cEVNG8uIfOvEPMvZmXXl?=
 =?us-ascii?Q?M+pmw+bFt13uxVSzqLfRFy8QJywrzWrjThdN9cLnHIiJQJWiPJ6M2J5WRZEa?=
 =?us-ascii?Q?73Vj3m7O4ieG6Um0dSMzo9y4J016KEEhjhHyVTj9bRG5QXtRae1Xq1delhFn?=
 =?us-ascii?Q?2eR18jBHGiLp234Cuq2uoADt/7uD64DPjyA/9iBGv15dxNcKDlWbkHDM84w9?=
 =?us-ascii?Q?PQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ac2a98d7-fe88-4fbb-7ec0-08dd6184b7c9
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2025 16:41:20.5939 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yNSeJx59g1+9gMuuj1ESrcTU8+7yxaFEN92BvPQqbONoqtT9OsHuUDm1B6OggS5C1njvXevLUrwN9Ga19hZGODyi0+Yancc1nl+hqoHqWL8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8420
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

On Wed, Mar 12, 2025 at 01:25:28PM +0200, Jani Nikula wrote:
>On Wed, 12 Mar 2025, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
>> On 3/11/2025 11:38 PM, Jani Nikula wrote:
>>> On Tue, 11 Mar 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>>> Reorder the macros HAS_AS_SDP and HAS_CMRR as per alphabetical order.
>>>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>   drivers/gpu/drm/i915/display/intel_display_device.h | 4 ++--
>>>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>>>> index 717286981687..332647c4ca81 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>>>> @@ -142,10 +142,12 @@ struct intel_display_platforms {
>>>>   	func(supports_tv);
>>>>
>>>>   #define HAS_4TILE(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
>>>> +#define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >= 13)
>>>>   #define HAS_ASYNC_FLIPS(__display)	(DISPLAY_VER(__display) >= 5)
>>> Y comes before _ in asciibetical order.
>>
>> Thanks for pointing this out. I had a misconception that we use _ as
>> delimiter and sort the words in alphabetical order.
>
>Emacs M-x sort-lines is the definition for me. ;)

`LANG=C sort -u` and it works in vim and anywhere else :).  -u because
we also don't want duplicate lines.

Lucas De Marchi
