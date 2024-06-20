Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27AFF910B6B
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2024 18:10:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60F8210EAD2;
	Thu, 20 Jun 2024 16:09:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HqiERSzH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B506410EAC9;
 Thu, 20 Jun 2024 16:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718899798; x=1750435798;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=L/oiRkve1JH/ciFjOBtUR6R8PrBlA99UNyWo1Xe38+Y=;
 b=HqiERSzHjcXLXWPi3E7AcfnmJ3nJ5kOFBpHkbzThptgCuwwycOHvvSQl
 xXcqfeVj1WAqWQmDHiQJsBYOIw80nibUSwoqrFgIjpKv7C38OleQqiNhQ
 Ex8NSQxEtcFWWUxpeYv5ery4LFUcsdAziKbvD4qrRt103Wpp+B4TXtq7n
 gT6RXj4mckVNWT3Rg7F+9/xjdRiNboK5aJZxeRyoD/w6U5r0FoemcQV4W
 65JY2dGB14Pwxh9qAWNeUzt5f1gTPjaWng1WGEeTfurbyuwEgTHpSdTyx
 exJskHMfyaRyqn9rJ2VCyGsChUT8gpWPKw+0P26yBnd8TV6fqN9r27bke Q==;
X-CSE-ConnectionGUID: c5z0AbYISUS5qxFacRJrWw==
X-CSE-MsgGUID: tE/zMqGiScyhSgXEbkRI6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11109"; a="16124550"
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="16124550"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 09:09:28 -0700
X-CSE-ConnectionGUID: NU0obyvNRAKPtll+7t9P4g==
X-CSE-MsgGUID: kr2U/Y4ZSFOsa7E6kNmrZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="73493826"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jun 2024 09:09:28 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 20 Jun 2024 09:09:27 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 20 Jun 2024 09:09:27 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 20 Jun 2024 09:09:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P17mstfzRVNgf9YAntZy17iYt03I7C46vj1xxOh2it1j9dLYAj1TfkQ5gsrQSGl5oWBDQriHoQZM0IQgga6TQIyq1VWO4NdASbygF2cPcrLUz8pWniRgWWdb4n0W/qdl5NaoZ56lILRC45jX3H2FCdfHOtN/8rWoYXwTdXnAMEqdDo1GMWAsRfcONtNt0j2p81oFj7FrfxTh/PuyXrKLfjIKyp37moT0b9lwHvtVfjBrejMPVtD45dNB+cbj+jN7ZEArEQRbLZsowhOM1Y3ii7btTONMKpFyteMitWDIa3scdg8mMZacP63++gmI3v7JECRpYfk4yQ/U0WNwWC6sKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rdHxnkIFx0+66oNPp92DzQ7D6ChkJop7mlACwCjiYp0=;
 b=Jk35ZGLwkLcfn9ET3hc7bSWfQuym4Jboi7TJfBp5MZVU+5qDnyboTp8ReNWnqAxUrqnTcy1RhTyQpVHbGGpICItq48IBh1cLcnxQS70DE/ZumibnrJhRhoxtpf5MMkRLYjywNV72bUDJkfyTyhl9he+nm63G06KTChTB0krH//bAqWdrzRAwKUBg4+7b2a5sylRhYzTqpI64we/hgjMd/vTzf3wOF9KlrzpLKIYh/+cL7K5uWM0YFMUXH9Fdr9AWHmfqswJLbL//P7S107Ab17VWviFcWEkcujrlUN+Z+crj093mznCRI80W9XckgOlpF7nbabdzqtgN2NQptq7RfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB7572.namprd11.prod.outlook.com (2603:10b6:510:27b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.18; Thu, 20 Jun
 2024 16:09:24 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7677.030; Thu, 20 Jun 2024
 16:09:24 +0000
Date: Thu, 20 Jun 2024 12:09:20 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>, <maarten.lankhorst@linux.intel.com>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 5/6] drm/i915/display: add "is" member to struct
 intel_display
Message-ID: <ZnRUMJXiVaqoSfF5@intel.com>
References: <cover.1718719962.git.jani.nikula@intel.com>
 <450b5883a7783d0967c3da8ce853af0c2da8082f.1718719962.git.jani.nikula@intel.com>
 <ZnMlKgX7Fd4Edtnf@intel.com> <87o77vepcl.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87o77vepcl.fsf@intel.com>
X-ClientProxiedBy: BYAPR11CA0084.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::25) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB7572:EE_
X-MS-Office365-Filtering-Correlation-Id: 99360524-e161-48c6-9fa9-08dc91435a0d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|366013|376011|1800799021;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?TldqevA6tB2afV9AsqwAq6Urs4Ti7CIjpV2MJQuW15IA+HBJfDr3KY0IKwKY?=
 =?us-ascii?Q?EP2vtXyM7/rFNmw3FOv4Q6d12h/dKpdpsAUYyXjrIUMssENKZdwDEbDFd6wE?=
 =?us-ascii?Q?PBgf5mnSH2CAaSncU0X5bojLWOZvLewah4aZGyHYF0QDSbW3WSxvFch9PYhT?=
 =?us-ascii?Q?YqgUId9Vha5z+fyv5JJU98Cx1BLfHCWHIv9Ysfawk4sNtYm5YbN4f3ZIMLjD?=
 =?us-ascii?Q?IcD3ZAseFlqo9mJlxf/eyqh3QP/nu6Jlj1xlVVPCEz4giNo15BPj5rbre9Rg?=
 =?us-ascii?Q?yr5LT53UbWycqPMDvlR5na5MTlwl9EGrGmm4d38cxFOouFj5SJgprARNYnkc?=
 =?us-ascii?Q?/7PL5JQhmspFY9gV12uOe3jJT7WGHHt4H1sM6HG0aiG4SeG4t0lbtOLGm2CK?=
 =?us-ascii?Q?hfLMAI/P3zgCg48zseG7pxQ+lk02Ana5ZRS/Jbn2asmtrgqBq0PS4XLPGAps?=
 =?us-ascii?Q?EYgZ7KtZ9E9K9IDGXNwlYWNbDAkITt0VES9xN0z4zjnfMdAM5/gDBkrelujt?=
 =?us-ascii?Q?gqQ0EyTcjnFxd4tg2qIpOu5AcK0N1aMxJz553F7CjOovtdmT+JBrzHlZtR2O?=
 =?us-ascii?Q?OwCfosYXlvFleNW+0EM1fF1jDe2W/qPT/tXa4Pah6ezIyzL2y4WP8Fg9keBK?=
 =?us-ascii?Q?ua9rPXbI4SthyybvQ4I+NKeTEqDOj1EqEA48g0Kud6tI9SQ5PfDBQHuW6aKL?=
 =?us-ascii?Q?JlM05TyvNCL/cIKAurf4n+mTOwP0fD05iRyfb8ko94kph8z4DJzXDeG612Ug?=
 =?us-ascii?Q?2UUeFt1qjEesU9C+AV4WAXbwOgKknofQ9VAhvvcxGTtQkYqJAR1AtODL3n4g?=
 =?us-ascii?Q?uwLMVJN4CJp3bDTEYPY4hE0LDxjVVR6uICJmizEs4+UBxO/jaRddy8sdeOko?=
 =?us-ascii?Q?4oePXXsvEXMiX6ITNIMScfKnQedNR7TWKJ3iSE9cz8TLRZMKjyc5irs5h9n+?=
 =?us-ascii?Q?WIWTwWIJEQ5fIL6BdrETeNoRffY/lBraLiy7h4RyFIuqRhIjUUZw3tyIcWoE?=
 =?us-ascii?Q?oabuVqTWQ662WzRUSqQs3gJgPNKoy/IxPuC6x9j1HiLBvak65zKDBztmfWCI?=
 =?us-ascii?Q?jcNbwYs6sYVsJu3it3svglNmsAUSe4JAjT3ii4cfoK3ICiExHwzmFpF2YwG5?=
 =?us-ascii?Q?lvaXD8j6PBUcSQ1VRm1xaWFyJa5NP9hqox2oIEEUhUMHwOnDgJso0WJZ0Dhi?=
 =?us-ascii?Q?udrmAnHOje+S6W5sPEWMLgkITjrAxF+k7a8KKH/2Nm7qnhXk0w8p35ra8zMp?=
 =?us-ascii?Q?gbtw/SrnsjgbKU4/sSfujoFBpURB4LfbWVhSX6U22fqY3XfI+9mP+LCj65ok?=
 =?us-ascii?Q?ffFYJDArtk25sJhKTvIjGAUX?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(366013)(376011)(1800799021); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5xpg9ZuQyMmInX87KGc0vsNIv2e2MuTXNXTTXH76Yaae87FZ8k3xPf89lQz4?=
 =?us-ascii?Q?+Kz8N2Smh09xTNC75Chqe61VYkYVGp4ny5v5/wXv7PC3ZZp98vag9aiCTLS8?=
 =?us-ascii?Q?tN0e6LnObkohPrqoSKaWxTHq+Qz3NlIVEN3V3ot2WhPC8ZAfIkhDnR331iH1?=
 =?us-ascii?Q?Wa5WnjLNygXFk+w97eExJBFI07sLyUrx89KHPYE8NnNWYDCNtCq2TtwwGJxy?=
 =?us-ascii?Q?2tjuPUaV4NzDF3vZ66+mRCMQLOQbT9PbqM58qzO7caublXAI9ZyEp89+bZ1q?=
 =?us-ascii?Q?ZFOBgaXdeTT9jJ8/ix103Iuz6EM2ZvvR3eMhOgVnwTPIk+AliBSsY7UqjdZ7?=
 =?us-ascii?Q?7Vc+PVjfIF+BcwXcv6lA+thVpqQCTa5r07FRsVypVvDz+qxPH2F6KmGFgw0W?=
 =?us-ascii?Q?It/tI/jsurVqoO9xA5f8f42tPG9+Y8zXRfe2ssDwsR0TOa1cDrlnSgd/tILS?=
 =?us-ascii?Q?T2500iV69m5oA9sOew7eSii1IQ0//8bwMtZv31whWm/0PoPrkmYaL90lzEJP?=
 =?us-ascii?Q?UIcUjqdhbgrmfpaUyS240/xTEi00osFVUa7TfUwC33LbYz0Yk2adkjdd90JS?=
 =?us-ascii?Q?UfUYTezjgvGA2W1lEYllyVEy2jqHJZRqcw7mqxj38w4vxkua2QODtX6o/6PO?=
 =?us-ascii?Q?Ov27APEEa5hXCXQsJ5hIwZ5E83fo0RTQ8eNlF4rrCQXqbFCwvFGpc9OazuDW?=
 =?us-ascii?Q?GXcF6zKJD5O5nsJxNPnpuOFiiRCVhWkhUCDdY1LLYHPwCddqK4rnMUe4ctGC?=
 =?us-ascii?Q?K9H0l2ckuFlbouNIqFsp20PLqlh9bfWNZjaKMG1zhA9ncpgPJ5/SoPkP9In9?=
 =?us-ascii?Q?Y4I6Migd9u/7P9XRsmtnoaG4NW6FiM22XjTpo35X4nQoFD1C0iwmOqU7jC52?=
 =?us-ascii?Q?NPyraUbj813WVDzfRh8WAUmkw1i0ltoxhHVJpb88ByPvAyl20IeC9FRYUm9Q?=
 =?us-ascii?Q?FJ2uhJGeKhvmjeYIbImn6jDpYLeXKo6C+A5pOBb9NUjLXAI4NfPqS99dKR4N?=
 =?us-ascii?Q?TQ+IPM81yWnyMpA4fSyuhd/1JqbA8SaV3bzCmhGXht/QxuJHqKBvRbfwm/fr?=
 =?us-ascii?Q?y0SvWzT6c8NUJQ4ewymRKsXFYqt8VMer+zf7aJHyeklMLUkt+OzqXiBJ76x6?=
 =?us-ascii?Q?+VJqZot36cKvl3JCTCLomAEFVjD/41WDgf+T85KMWwsh4vaNFLnhH/0jtWnc?=
 =?us-ascii?Q?LHWjXAt+9d+Bv8OXFf4bUjtLXWodPKc8MpSMPgLgPssqsBoRMd9nXmYlNAve?=
 =?us-ascii?Q?74FgNrkU8L0c4GX/JBztJRfPz8hcmHK7f53GaozIVY62EcA+ftiloEnppPxz?=
 =?us-ascii?Q?W/ccSBortovowGwLkCDbPWSRBvfSXl5z8UBhjEiMbCap8xrcO0D+YHuvp4AN?=
 =?us-ascii?Q?TU5kLTztpq4zQmXiIR/vYyvdhQQ2my1MqQUK3f73Dottk7OmGMzSgDQ/mHib?=
 =?us-ascii?Q?tiV6qQ6xDJC399OXsLvkWSpK8BiNKOJtCGZEx459OYJxtuPQL+gfeVP1GtLT?=
 =?us-ascii?Q?LWsm3cVeaWOlMkbAcBpFo27oUKE05/tBXMHmllWdgH22CqMRUzm+et9cEicQ?=
 =?us-ascii?Q?Hkzsgf6R1BJID8jIICdetzm80JsL6awCyv/SqTGI0qq1ikX8bDqWcH5IRHux?=
 =?us-ascii?Q?YQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 99360524-e161-48c6-9fa9-08dc91435a0d
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2024 16:09:24.1682 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q5RzB6pFr2Hv+7c/VejeTZFyy4NLkhu6jH+mS1hCOHhAv89hcON3yM2EbNxTkngBfG9ldF53D2ynzhw4/j9sCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7572
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

On Thu, Jun 20, 2024 at 04:05:46PM +0300, Jani Nikula wrote:
> On Wed, 19 Jun 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Tue, Jun 18, 2024 at 05:22:55PM +0300, Jani Nikula wrote:
> >> Facilitate using display->is.HASWELL etc. for identifying platforms and
> >> subplatforms. Merge platform and subplatform members together.
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  .../gpu/drm/i915/display/intel_display_core.h |  3 +++
> >>  .../drm/i915/display/intel_display_device.c   | 19 +++++++++++++++++++
> >>  2 files changed, 22 insertions(+)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> >> index 7715fc329057..35bea92893af 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> >> @@ -286,6 +286,9 @@ struct intel_display {
> >>  	/* drm device backpointer */
> >>  	struct drm_device *drm;
> >>  
> >> +	/* Platform identification */
> >> +	struct intel_display_is is;
> >> +
> >>  	/* Display functions */
> >>  	struct {
> >>  		/* Top level crtc-ish functions */
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> >> index 0c275d85bd30..954caea38005 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> >> @@ -1269,8 +1269,25 @@ find_subplatform_desc(struct pci_dev *pdev, const struct platform_desc *desc)
> >>  	return NULL;
> >>  }
> >>  
> >> +static void mem_or(void *_dst, const void *_src, size_t size)
> >> +{
> >> +	const u8 *src = _src;
> >> +	u8 *dst = _dst;
> >> +	size_t i;
> >> +
> >> +	for (i = 0; i < size; i++)
> >> +		dst[i] |= src[i];
> >
> > I confess that here I got a bit lost. But I believe it is just a matter of
> > adding a few comments in the code or perhaps adjusting function names...
> >
> > If my coffee is working well still, what we are doing here is ensuring that:
> >
> > is.HASWELL returns true regardless the subplatform this is coming from...
> > like is.HASWELL_ULT or is.HASWELL_ULX.
> >
> > But since you are only doing dst |= src and not doing src |= dst and also
> > not calling this function for different subplatforms, then individually
> > is.HASWELL_ULT is false for ULX platform and vice-versa.
> 
> The subplatform stuff here only ever applies to one subplatform, not
> multiple. The "ULX is also ULT" is not handled yet, and maybe I'd like
> to handle that in some special way, because I like the simplicity of
> only having one subplatform in effect at a time.

fully agree!

> 
> >
> > Perhaps the name 'merge' is not a good one?
> >
> >> +}
> >> +
> >> +static void merge_display_is(struct intel_display_is *dst,
> >> +			     const struct intel_display_is *src)
> >> +{
> >> +	mem_or(dst, src, sizeof(*dst));
> >
> > and/or perhaps we don't need this extra indirection here?
> 
> I added the extra indirection only because "mem_or" is something that
> could exist as a generic thing. "just do bitwise OR from src to dst".

yeap, it makes sense.

I'm not 100% convinced of the the 'merge_display_is name, but I honestly
have no other (better or worse) suggestion, so

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> BR,
> Jani.
> 
> >
> >> +}
> >> +
> >>  void intel_display_device_probe(struct drm_i915_private *i915)
> >>  {
> >> +	struct intel_display *display = &i915->display;
> >>  	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> >>  	const struct intel_display_device_info *info;
> >>  	struct intel_display_ip_ver ip_ver = {};
> >> @@ -1308,11 +1325,13 @@ void intel_display_device_probe(struct drm_i915_private *i915)
> >>  
> >>  	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name);
> >>  	DISPLAY_RUNTIME_INFO(i915)->platform = desc->platform;
> >> +	display->is = desc->is;
> >>  
> >>  	subdesc = find_subplatform_desc(pdev, desc);
> >>  	if (subdesc) {
> >>  		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name);
> >>  		DISPLAY_RUNTIME_INFO(i915)->subplatform = subdesc->subplatform;
> >> +		merge_display_is(&display->is, &subdesc->is);
> >>  	}
> >>  
> >>  	if (ip_ver.ver || ip_ver.rel || ip_ver.step)
> >> -- 
> >> 2.39.2
> >> 
> 
> -- 
> Jani Nikula, Intel
