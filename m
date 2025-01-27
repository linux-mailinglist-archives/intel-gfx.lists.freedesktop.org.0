Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19968A20151
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2025 00:01:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57ECE10E5DF;
	Mon, 27 Jan 2025 23:01:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IrOG+iyJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBC4E10E5E2;
 Mon, 27 Jan 2025 23:01:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738018897; x=1769554897;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=R5osceqCIDbdiQEckHXh5FSaU1NJj8k00rYL09I3vJs=;
 b=IrOG+iyJo6+DQb9SuWbJe9u03iEENIIPEHYBUE5l+CkHs/YJnCXE/JJV
 OWv9jU2ZvWUcKWpUBTKZt8EXs3tSDvS0rq+1joX+z1rCuIPEDCMTPKiZf
 enHxhkAMzwqcVfnjONn1ukGY4vXJ6DEj1AjlCb6VcG/iZZOlrJPf7xljm
 sFa5yhCbUJEpjpqgROlk2fvPR4k6Ohu/r/YsYbATlmAstOpCVwCB/b1Vz
 QysLBaz3ZHQUADgcSJVnFn5sViw6FE38I7KJa78ruyMi3oT6Qdqc/aIes
 MmENBdRjle3HybR76o0hd23Itia4YxEgQtZIBfXvyqsRuOeAeFw7hPbo1 w==;
X-CSE-ConnectionGUID: piT1hFZiTp+fmidagJub1w==
X-CSE-MsgGUID: S0kQ6dKTROWlYsKAX3zH6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="37748359"
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="37748359"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 15:01:36 -0800
X-CSE-ConnectionGUID: rEieNdxxRsaBZJ5IVexSVg==
X-CSE-MsgGUID: X828YtpQTcWtwJoSquiu9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113200245"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jan 2025 15:01:36 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 27 Jan 2025 15:01:36 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 27 Jan 2025 15:01:36 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 27 Jan 2025 15:00:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bdQgXI/+h6R+BX1yOLQ0uAKo8Jt3rGkS/K5g1LRGCJLBUpBVGQXMdiR7R8v/pq4Cn3pCCov97GTfO4AG0u1jQ88kordR1PXL7j7cFXB07u5r7VVbq58xxI3PWqKPAH+7BT2c/CcrSXptKAz902OkoIaJJePj69qksj4XjPaZxwVYQRkv9XQNLe4Cvqs7DkZn9j0ACUirnig1fSe84nYkq+nUgyq4l90QvxEipiNdRbcYxph/vlpKa42QhPAVoteepl20GUA2AY94J1/WMAIpTVKjbqObW/IzsX3Gk8H5ZPMYuGQCJMX80kHfU+/WCRJxIiElaVe+HIOBbT7rRvA8Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9H7Zt3q8+//twJMaCGETAkOoGFV/gNvUHL9THPOGZtU=;
 b=bOt6+Gk0MU31TubQH1cCgQPSc2AfnLx36H7Wfvx/X5V+NBYkxzA2LP1inCnOymInziEJGB2ItsCSbkVzAudziS/R+yfQ0PUr9AZR947N3dGzqte/Qu/HS4qriwcXH7XpHKIwhxgB7/o6FymczFDRzbYMhsWHGQsJ0sUkVWtO+xCEVn/YGbQ1kkBcvEGGunZtPZBlI4fldllUYzJgOCDLZ3Bei/lNqIHR9kALvYY44Iv/2wsSH/60yv4DuXLUCe2ZNAKKOWmT58H5Y//gKc0EkOONfIu10wTBQ4msB2ul9YeQ3HBmVkukO6rhqv2kEyrmuXbBXk+GxeS0wnq0lPFyIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA2PR11MB4828.namprd11.prod.outlook.com (2603:10b6:806:110::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.22; Mon, 27 Jan
 2025 23:00:46 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.8377.021; Mon, 27 Jan 2025
 23:00:45 +0000
Date: Mon, 27 Jan 2025 17:00:38 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915: Give i915 and xe each their own display
 tracepoints
Message-ID: <2ukwhpnetshr6s5ykyotc4p3wzzzpie2mh42kuqwq7j7kaybek@qoyojl7lwk7x>
References: <20250127213055.640-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250127213055.640-1-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: MW4PR03CA0065.namprd03.prod.outlook.com
 (2603:10b6:303:b6::10) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA2PR11MB4828:EE_
X-MS-Office365-Filtering-Correlation-Id: ca63b9ac-992a-47ab-3821-08dd3f266e97
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?QJr5tCw98gJ96C0jSCY2YTuyXROuQrwr3Qxehf+v20FYdUQ9t6VajWwWp1?=
 =?iso-8859-1?Q?6iEcHRxKiI+t1oSBFWM6xnDav0KPMsT37fOo1nFoBJhv1Vsghuq4HZa/H/?=
 =?iso-8859-1?Q?a/j30NKwPrBPLKagWIRjVFMfYdg/9ON9GzFSKOWq+8ThVYtvAuuyjWNajI?=
 =?iso-8859-1?Q?g5gMkDDw1SPuc4ImGSZfY973xnJTOMStzA+jSfpU/DB1FdJaBatiubXStI?=
 =?iso-8859-1?Q?kXyH09E2AXEIebl3mTU/4Kfq7gVqU4M+gwXiEaITNk9zYqS+ppjF5WLz6T?=
 =?iso-8859-1?Q?mCecXfE2X53wKvsMj5UVHvQIcmxgfCDvA//AmT7Gjwe/0SQl2FunAQ11o/?=
 =?iso-8859-1?Q?0OBBr6Ly84rTfp0LEjYdkgFXEIbMGteH9m7tU6UfpA1k56k/WOsyGicYpI?=
 =?iso-8859-1?Q?SqKqnMAzKdFH6YfIQS2pqVBAoE4gbDVbaml+2fZk6QoozBkAuC/qwP+Li/?=
 =?iso-8859-1?Q?EWeYIyoQ+pnfaOUN3daQs9qO6rdWNADmNJasI8nvzsmGqW2s4P6Hw9vQob?=
 =?iso-8859-1?Q?5/BIyoxq46RaCFQvGMsIcaMi6trruYMep925wNPgahdUtZmXoFfqFilN3S?=
 =?iso-8859-1?Q?/e3hLU3Y8MzPuccTtcSa/yuZVgLsgxh5K5+x5QSpSuqI0CvSoN1GllI/+N?=
 =?iso-8859-1?Q?1naZ+PZIwJyxB/H3ogaPA2QBT+d4Wx2mgxiaepVSyVCpK42jXqbUiW5qta?=
 =?iso-8859-1?Q?d+e6SB5llKLlNfMk7O/XO1Nj55z92BShiJTmwJRbkTp+ge1Jhwx2TAfTkp?=
 =?iso-8859-1?Q?btluApw6A0jRcA26Mvg0xNQZVooY7591Iwg3f/vsDHWWDnPzLi3gw5ZavS?=
 =?iso-8859-1?Q?uq61Wgfsv9kK4sncoMJRn8xPfhAxK/LL6Tm1oJr6xVfMCowb79JvAZ+DQA?=
 =?iso-8859-1?Q?pC901YCaFM/eycHqIPQMXdBYfltynOAgwrOafzEh34eorhi7XRz7cXPChw?=
 =?iso-8859-1?Q?Ri5pO8DCQiYMkoRYHOnmsDX+fuJFBW5RpwbMvHpiNOG9+HPzJIOCNX4Fqh?=
 =?iso-8859-1?Q?diB31+RPaq2Ze8IQx/gVhRjQvFR8GJLJIDy9frJ6zLnodjgfFRtIoy92q5?=
 =?iso-8859-1?Q?efwSfEGRGtqsSML7tqWwCQLdHlEtbNmyVexiAW9lvIYjbejjob5yHdVOai?=
 =?iso-8859-1?Q?es0NbQp0eCgLiat0Rxg1/Zkvju9sRJIBVNn+Sspkb7b6X+I3JpGueH8cqW?=
 =?iso-8859-1?Q?QGPLAdiG/DYyNmumYYjZo16IoKMSev7xpLt9XzecsCi6mz6K+DeNRdQSKU?=
 =?iso-8859-1?Q?0JFda1yC5sXQnuL3HaoF6QyAcei77EHkSumxL2mrVLhO5/f5H1QfUCOeUX?=
 =?iso-8859-1?Q?d/FsWt9jkJkaYzEubr9i5jUfYvk01ZKKOCqcwQxc3bJMH6Q9sU1REcssBU?=
 =?iso-8859-1?Q?CwwUYPrbOByvMaCS0FaGWyIY8D0GYbBakTPqgzgKgA/ic/U0TynN8oOqAY?=
 =?iso-8859-1?Q?Us3MzBjPI8Zy9JLi?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?0ev5WHc5yF2t6fWYEYJ0hhFOnwPc04bP+kY211//e4VRF0qFyoe7RsPzDe?=
 =?iso-8859-1?Q?JxOZtg1PspJl2ng0PNkNG4D4Aaz8PsaBrqvt1quEaLpExCkV06ZEQhnkxX?=
 =?iso-8859-1?Q?utV0klL+KYVKwUbjKrzY0CfX6gz02PjhTUfmhoHzAuPCVmlxLcyYOZazfF?=
 =?iso-8859-1?Q?K4gfESd+P58PV2bcL7wc+A5S3rH52+7O3T6BA2Yzxl3svrB1l9hQiN5Nrh?=
 =?iso-8859-1?Q?FmNxzpSAawWBWiV5GNuzwlmrump3lQHiLfyxkjeyouDHeo0zrpoV/3V7n0?=
 =?iso-8859-1?Q?tt+tuVtBJ/+Os3OLdsqhC98+v0nwOY8CIVV/YfqYeBBWHt6EWNADIECXhO?=
 =?iso-8859-1?Q?uVXDbPP9HmMzCDNDS35LFTSQNBepoZ4KAJRixzbDD5eT+wlbG855pzRBwb?=
 =?iso-8859-1?Q?oe9CB5jvodr6G97HHNVwCCZvpHDKNzzcue437zQxAEQfT+d4GEf1NePSLb?=
 =?iso-8859-1?Q?AEW6wSRHIXxOCuMdjeSEFMwI+RDJyrGwgMP8sbmFLDZb9bEEsR78Kk0sjU?=
 =?iso-8859-1?Q?m6pDP658A/b5zUEeT5Y7A9RdrD4Q3jFVWUixxAGGkvGLLqmoXrsY2XiBfv?=
 =?iso-8859-1?Q?v6J2OJEENZhxuTv11qf7KZvb0/KrzKR3slnXeGGerif3tj8orjggxnEFDJ?=
 =?iso-8859-1?Q?AP5GjkPyJ/LJ/9szvJl8nzPXnm+pMKYDtZYPknXnzgq1sljw7HwIhbTaWD?=
 =?iso-8859-1?Q?kzt3ltCu2tYGO/tANyz7Zen6vAi63ABYStaQqgmT9PNR/dnUzaOyEe3dnH?=
 =?iso-8859-1?Q?IE4TvMEzMoDyCPfuHupwDxMxY4JYeewztGUSiY0QnwNSMHEhyu6W3MLiO0?=
 =?iso-8859-1?Q?Gy9etv+jPw1VXPgRR+wNMZgyWLll+UzNUu0AMiY1NKg7US9nBaIkeukV4v?=
 =?iso-8859-1?Q?x99OqP+ZZrpZGhzcUaUJhPZSmvTpyB+r5e0Q1TEQ5OWeqKCewNLfU2WB2G?=
 =?iso-8859-1?Q?lSy9Gpg3bh3mubKUf66kkXVAYGLMj+6dsFn7RThVs9aYLxwXEXZgxy/FCt?=
 =?iso-8859-1?Q?eFP9MdH6HgJfz0/05kpvm+uWu9eiK+4J3feuLGNO8ONZYvlDA1psJSn5F7?=
 =?iso-8859-1?Q?GrFGeEIbzNrRMyt586XjfsdI0ucOjqzluTE+CHP2Wiz8TUMHuCnzheznLH?=
 =?iso-8859-1?Q?vTgB7AAZ34MEiLWKvBhx4/oQggLQt70zPLuNXlmEL2zl5cjrG/4msRiIpO?=
 =?iso-8859-1?Q?RvH6abwm8q1DgMbUv5ljThoIZ7zjC5X/NlDoCAgpfidafMv0Uk6e9c8wEU?=
 =?iso-8859-1?Q?HiUJKauc81fEfrE965EqKE3emwiZkYN9xJ+qMHODS7ZybI0DURUWSeeEVd?=
 =?iso-8859-1?Q?651Obbow/0cnlTRAkYzLwr2YtERaPu9R/dMOpqbM9LUS2U82VzPSEmvU4S?=
 =?iso-8859-1?Q?q7stkgxTWFIaymks/zX6IyNwjTWT0rEKNX9Dvp6/Pnfbog5DEF+Avd9tJ4?=
 =?iso-8859-1?Q?xmIphhlsEf5ckzdhMGZN1H+P0cBydzU+3MkCNMzCWmzTwXxLN7scv9kQAm?=
 =?iso-8859-1?Q?JDI5Co1b1lwJKQPsw4+JITpImYwKd6VvPJ7dwxzyhGpWj8YCvwlxDLjrXm?=
 =?iso-8859-1?Q?TC+laOBuFbDGSkBK9+kZT7UKoz5iChy/ANRb7RhQvnE9WauZBo3lrdf2Yb?=
 =?iso-8859-1?Q?jQ25W0J9Ls4RowzWCLUz73uUNm02qltF9dlciR4TpMYtmKxQccCQFAXg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ca63b9ac-992a-47ab-3821-08dd3f266e97
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2025 23:00:45.8476 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I9X9L13Ori+HOQxWtbKsXe9sQqIKjQhTfiq8oFO0ePsM/Q1rFWwoOFy+fS/Ot3q44ocH57xhrs0vlJFzPWMY37/2XQt+Ha8V2GR6Ep7u/Mg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4828
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

On Mon, Jan 27, 2025 at 11:30:55PM +0200, Ville Syrjälä wrote:
>From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
>Currently we just define the display tracpoints with
>TRACE_SYSTEM i915. However the code gets included separately
>in i915 and xe, and now both modules are competing for the
>same tracpoints. Apparently whichever module is loaded first
>gets the tracepoints and the other guy is left with nothing.
>
>Give each module its own set of display tracpoints so that
>things work even when both modules are loaded.
>
>This one had me stumped for a bit when after a reboot I lost
>all i915 display tracpoints (on account of the new kernel
>also including xe, and something also ended up loading it
>before I manually loaded i915).
>
>Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>---
> drivers/gpu/drm/i915/display/intel_display_trace.h | 4 ++++
> 1 file changed, 4 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
>index 54a6e2a46b82..0e10c2856058 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
>@@ -4,7 +4,11 @@
>  */
>
> #undef TRACE_SYSTEM
>+#ifdef I915
> #define TRACE_SYSTEM i915
>+#else
>+#define TRACE_SYSTEM xe

looking forward to the day this will be intel_display or i915_display,
but until then

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

is tracpoints above intentional? I'd say it's a typo, but it's repeated
4 times.

Lucas De Marchi

>+#endif
>
> #if !defined(__INTEL_DISPLAY_TRACE_H__) || defined(TRACE_HEADER_MULTI_READ)
> #define __INTEL_DISPLAY_TRACE_H__
>-- 
>2.45.3
>
