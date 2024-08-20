Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4359B958E9E
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2024 21:31:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D628B10E4CE;
	Tue, 20 Aug 2024 19:31:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aboREMQ2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18BEE10E353;
 Tue, 20 Aug 2024 19:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724182291; x=1755718291;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=REi3JoUzP6p3A8U9F4ogendX3VAsUwHfmY9ZqTsVj7c=;
 b=aboREMQ2DddpKHKd1jgu/8JDnFAhA05jvb7n8sc85rpLBD0YsafMfaua
 5DeZpCJqeSDEixBJsu1S+sqxd0bs1Xd/pNNd8NJJiSKdZ1Gg1y7Ffs8mz
 A8hwf0XhW1Aat6H2R1jZ+vit7Sn0dFieOXH96Pyf0GwQscobju6v2EaO6
 eeZTp9pJ61AhYMEHhC8jKC2CYDLj+vOha0i+prvBwF1+OLfQ2X6Mt7v2N
 TWF90owFqyQSrXdFKvY+NUiiyrNDU8SBcCrkl3FqBTbfdJPhDH3ezg66Q
 9T+ZIWMtNnnYzCezPWm7nDFFAiUyfiVxk0Hz61aipl1SMWcfTP5jvj/NX g==;
X-CSE-ConnectionGUID: IodzvmHxTGaLmMAetUPsDQ==
X-CSE-MsgGUID: tGRBrIAJQHGzERU1VM1s5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="13116836"
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="13116836"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 12:31:31 -0700
X-CSE-ConnectionGUID: Gfsf0Lu8R5GYF/mz9oxfAA==
X-CSE-MsgGUID: W2GAba2vRt+MlZW6GcSGiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="61371334"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Aug 2024 12:31:30 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 12:31:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 12:31:28 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 20 Aug 2024 12:31:28 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 20 Aug 2024 12:31:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L0M4EDpgoxbgFZkVRHc7JQnF9aXd8Sh6ONBzvDx0mplL/PAqKhnDhDyqM5sHfOiNN42I+S5JorHEpZMEp7nzhiIiAoGwSYIeqRSsk3aHJHzYQ7k+RPAkUxDFsrLJeW3F73e7nwTGa5pVoJ/cGJofwtmaYqKogZqkSSCjA8b1H2XdlXS4RqPUxswwKme1mlgZykF8fLYK6wEj8TfZQC+4n/frrBRvF+CpgfLIb89FLRGDsoO6Vcj2UprpANBmpSQFsShGkVW/el/QZDxitKEcfzR8GAfOJbIQBIqqmVVJnn+lLwAffCLiC8UuMcMcNwRXGybijWWoBGgYsxuvPj12yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D2OZOCwYTaGknot1HxoauvfNUkPgxsoRs/finsWMgvA=;
 b=hj2v5t+RZF4qOvsA8vHzZmWD69crFIalljYObWTx0Pdcy0v1bRhta6DeCYaO8dj5J0rNaICYZGIUm7B/+kjUMHMvJ6uT+OCA1C8MZLVLFsZY+gbfX9O6IK26+BTyRk7niNpbcPyRuthtxjGDpdlXq0I3J91817Fx58UmPTuFo9OSvPw4M9flzVUC9djOh4h1HihZnzOmxM8J1SGBcrJbbeFxAnlu6e81D0kAv1i7VmaInAypa+AwmXqZU19LYF79qbYl9KP4gFT9SqSdRg4Ep2fyBDhJtkfm/cvKSxXwr47rQfTX+XR8p55FLfSiCpSQYe8HBrF5AZ2wRbf6zQV5pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ2PR11MB7647.namprd11.prod.outlook.com (2603:10b6:a03:4c3::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Tue, 20 Aug
 2024 19:31:23 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%7]) with mapi id 15.20.7875.023; Tue, 20 Aug 2024
 19:31:23 +0000
Date: Tue, 20 Aug 2024 14:31:20 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <rodrigo.vivi@intel.com>, <matthew.d.roper@intel.com>
Subject: Re: [PATCH 01/10] drm/xe/display: fix compat IS_DISPLAY_STEP() range
 end
Message-ID: <ucvbwa5omt5mu3xihr54727q6245lukivpze7amveoiqtk6uur@vc63sjfruszm>
References: <cover.1724180287.git.jani.nikula@intel.com>
 <fe8743770694e429f6902491cdb306c97bdf701a.1724180287.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <fe8743770694e429f6902491cdb306c97bdf701a.1724180287.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0255.namprd04.prod.outlook.com
 (2603:10b6:303:88::20) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ2PR11MB7647:EE_
X-MS-Office365-Filtering-Correlation-Id: ff75fce8-e96f-4bfb-801d-08dcc14ead05
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ErCkP5Q6ez+t+NaAXbzx8hNE42gvnmeinhQsGjTspLa0mQ8o4wBDC/osX13Z?=
 =?us-ascii?Q?pM26xWxZdLWF9xM7zaayr6eYmgM+OmP3hH/Hw3QW/FDyYz9X6nm4eI7IvfSH?=
 =?us-ascii?Q?xYSIs9Um5Ha/jpVpxbalULNQPGaSwtg3lypIdtBV1B/U0Krphpk1+bqf0vZL?=
 =?us-ascii?Q?HuFxnF6gCuYBPm+Q50KgabZuusQoizlU3y8aHK+9E9EjziEWSaPxS+5THrUr?=
 =?us-ascii?Q?jKd2oNLzxCTrk6jf5sdb4ArIdSico4okeX02u0HRFOZcV7yLrfmThA4AuqTP?=
 =?us-ascii?Q?YaL07I2Z0yqWuUavfQej+4rY4ZVZ02uYBk/jWaCTdfTdRvhXQGv2p1Q2y9K6?=
 =?us-ascii?Q?vJYB+x2r5FOAfh5xPZuD0h8iW5ce7SDD8w1VbaCrtxMZ4JrIARjmh7OpjquC?=
 =?us-ascii?Q?E93aWFfsYUvu+fNtUEd+PTc1KX/BqQ4zZ7g2WqEx0RMKDNVJ4oTFmibTLwxr?=
 =?us-ascii?Q?SuP7MXifz4NIQbyLY/6h2VuZKfDScNpmwgHaTZ33v/vPWbAtreugOwQJy3/R?=
 =?us-ascii?Q?l10F7BEmVgEXfyhJGjeiggPJmYd8Xp9cUdihQCcwiStT80jLGDBjC1B+Rw0B?=
 =?us-ascii?Q?N3ZXbQmDN7x0PKmBXEQAgYFmSEbThaVK3EYQ6cTEbarGjhizqgIdaiG6POY5?=
 =?us-ascii?Q?BRVjqobMPx1BccAX8Isas8MyOkiROgKmRvQcIsOTVBo5+iya0OIgqEWuM9eh?=
 =?us-ascii?Q?09ncH/w/JGb6J4+GuMgwnHcxXkDLYft37PyHZpK+GOxd7d/qyUBbcMB69sA0?=
 =?us-ascii?Q?WyIvVZOcAiKdaKLk0uOuBOnvgxXyFwv8dUmge1fYbksaTj9Ouz5qO+Wk7TcD?=
 =?us-ascii?Q?LwIT0jqn8g1zfcrTGQEC7XxtQiB2o4Pke/ddwKGg4h3Xl5lBkppcP/uQt5ZN?=
 =?us-ascii?Q?aS4DhrXwujUrrEKWAbBGa+gKzTs6G/B7gsY3bfkKrwOM9UKSD5+rOPiaV6AS?=
 =?us-ascii?Q?MqJRRXqu87jRB+4MFufyWn2YN3kPuVYlTyT5ARYtiC4m6bmiPM7IQH6+M7Hg?=
 =?us-ascii?Q?HZ+cEjyMW7zL7u8FVtrb38QPhq66U6Dc3SZM1MwoQezhx3JYPtcTFAoxH1lp?=
 =?us-ascii?Q?+ieHLwnFiyjX6GiiWGNd2nF8p0kI3n/tQ0SuV3VGoqBFrIl/3BIwoBeSPmT0?=
 =?us-ascii?Q?yoscouQ4fO+UiuY7DSJtx2cBPCPK66N/sWqMIz20Nz3IQm1mF+2hz29W/6Er?=
 =?us-ascii?Q?wd0Te2mNBSOHyuHZ677PSLX8fBxfyz3HiLAxUhqB+2owAsX6CByAR4Fflkx8?=
 =?us-ascii?Q?SV3POz/I/6iP9oTHEFVEw4WPBjwuFzQNkzGb1LGBCY0U/cu+uVKLlPKoNLVb?=
 =?us-ascii?Q?Fy3AkXnZN3LHcOz1kRGYzXwiRRvuGhrMWxPo+S5KZpxTOw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GHpgD8dzam6pn6gYvz8wzeJOU+dCeHul0eYyGWJHXROUa/39ti4Vx3ABIugl?=
 =?us-ascii?Q?JT+7uCnMfmCbdCZhHUUz6XFywA2c8zCaX7oRN7exj5319enzR9HhkpqvcSBR?=
 =?us-ascii?Q?Mxwv1u+VeEQDhegxX3JdHpyG18ybciPsA/xqzjXWFj+3p9x2mLRaHlGgyOaZ?=
 =?us-ascii?Q?jOU9O1Rltwi/l7w88BesISCoJFP707myKJnklLnWywP53rTOkvuHZPoFJ+x1?=
 =?us-ascii?Q?Dia0l4aqF25BWRpPywHECg8Y3XUF5vmB52B894IsNGvCT2b4M3KHiwCjl5n8?=
 =?us-ascii?Q?5wWj5zpnjAePVbJnHG75TRuG68wQwIFmJjKX4qEfaPyBh5mnTfU1o/BSMEo8?=
 =?us-ascii?Q?GYQ+HDAOXruzIMVtM+kJKdSmneiEOqGdHGx6QnRlSCaiYVzHtHz6cS0VG432?=
 =?us-ascii?Q?bhbybFi63lmOt2qSnEsC/FzNYL81M24ys2bp8CcqzDjZzFjDRlcHkBmi3IVg?=
 =?us-ascii?Q?KBT6zZZWhDcDcuu4peq/4SjkL7FLiB1gO3b630PfashjSbDUISHzMz9YpGLa?=
 =?us-ascii?Q?ZJzuqhRBCGLJ+BO4Il4cV1UEJ7tNpu4DgCHTtKiiwkoEo36uqxMs7D9PnDTm?=
 =?us-ascii?Q?906evRaEj35nBMVnrIjv3PiBpHJcAeKH9X9IFw0u2fh6UkUOjxz2uOUZiET9?=
 =?us-ascii?Q?75YHS3jLW8dj0QY4CsecHiFVT1GZdlaF4zJFuHW8qeAVDDcOiFqXvIFOf6pf?=
 =?us-ascii?Q?fmAg6oOAByi+lz4xQiAmF5I7Ag+a/VedVUX3nNnpNuDw8UCQ4RuC4MgSOJct?=
 =?us-ascii?Q?7b2nx5/PjIJ/8pZpGdDaTQBMLdcZABA1z8sEx8qLwdG95siaNR4iTHgg+hau?=
 =?us-ascii?Q?1R94E/qW2elP61LT3cuy4RC68q24jv0HlmQJQIpfHxKVlJJ/4Ii+RpkEJ+F4?=
 =?us-ascii?Q?TpFYik1D/2hKG1Sp6HS4lorxUmukMG5YrbNcomx8ZT5f6Gtea6xbcih7gEdI?=
 =?us-ascii?Q?CzW/KHzXRagjFkBkZuxwaD2SCL4cSvqT04JgIi5BnxPxatvj/iu7s9Mcn90L?=
 =?us-ascii?Q?riaSNegZpOz3z/MXAFmfVcD5fNlupdIxs9bVyAytA0tUh1ieiwIhi32AzV7z?=
 =?us-ascii?Q?j5yk9w7RbR9kGk8izShZvvyb9kcg/twio5V0VqmH/WPyWjbw2nV4LKl73meW?=
 =?us-ascii?Q?vdeUgsFh+VUMxtggpe1f9ImoEW/p6BvaL8MYK2N7k29OWv0fIfc99QoBl/2N?=
 =?us-ascii?Q?yCWIdivrBG0j7H5YW9DcGjNyCFUo35WOct6821B/wxIFz1mjtT936URyvil+?=
 =?us-ascii?Q?1d573Bb9jWIcWZkLcN7rp9gL8ztD0C4jL+0u/eFDKsdtCX94uyl8nGrMPibl?=
 =?us-ascii?Q?QQc/NSbTwnrD7Y+CBLjev1RiwV6P9yql5vk3wUz2++CqRBx5aTQ6m/78RbVg?=
 =?us-ascii?Q?XV8+FhIJIWCJmSKKnSuY1Pyd98kehhoXp+1q1Q09+RtRHLfcqz1ayHWT9jNm?=
 =?us-ascii?Q?1Y0m6Rz5cbf7b2rrPP2EJUrvqDCKS6pNOR7BjLFL1YMacM/Pg4azDtEB6O3U?=
 =?us-ascii?Q?gZPB3erjOEGiuHlIkfmxS+3xEqRH7fW1wnHHb9yKK4TZcmS6tQVtl7uQ+iE7?=
 =?us-ascii?Q?rooYFZl4YkVK+vCG7kxH1s3wJux5pBBvhDBsdvh7F+uR/HC8kDqSH0fvfsgo?=
 =?us-ascii?Q?Rw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ff75fce8-e96f-4bfb-801d-08dcc14ead05
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2024 19:31:23.6267 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O5CliYMmBMpA5LVFQNckeLgyc+Uf+q977aoLmpkuhwl6/P/JtJzEQ8L7kesovZo0Eum9CUtRDDsg4tG8YhvqJeWCehjJojMHfkZ0MRAjTaA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7647
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

On Tue, Aug 20, 2024 at 10:00:34PM GMT, Jani Nikula wrote:
>It's supposed to be an open range at the end like in i915. Fingers
>crossed that nobody relies on this definition.

we are checking for step though, so IMO this deserves a

	Fixes: 44e694958b95 ("drm/xe/display: Implement display support")

from a git grep, for the platforms relevants to xe, this mostly affects
ADL-P that is used as a test vehicle.

>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>index 2feedddf1e40..1f1ad4d3ef51 100644
>--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>@@ -83,7 +83,7 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
> #define HAS_GMD_ID(xe) GRAPHICS_VERx100(xe) >= 1270
>
> /* Workarounds not handled yet */

I guess this can be removed already.

>-#define IS_DISPLAY_STEP(xe, first, last) ({u8 __step = (xe)->info.step.display; first <= __step && __step <= last; })
>+#define IS_DISPLAY_STEP(xe, first, last) ({u8 __step = (xe)->info.step.display; first <= __step && __step < last; })

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi


>
> #define IS_LP(xe) (0)
> #define IS_GEN9_LP(xe) (0)
>-- 
>2.39.2
>
