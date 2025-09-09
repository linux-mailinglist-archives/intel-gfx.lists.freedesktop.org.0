Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 259F8B4FD66
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 15:38:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B139510E741;
	Tue,  9 Sep 2025 13:38:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DH/GZXz7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B438210E741
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Sep 2025 13:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757425086; x=1788961086;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=B+DunnPPNXiQ4tP8Qp/YXtXezziwUOwG43bPWWeWZao=;
 b=DH/GZXz7ncNtLY8/lngzaOSctx1D9y1NZWOMBQ7MCfTTUA1c1OjzCgKO
 jzjSiuInjfiJhuOsn+cFjsEVRDzNRUKJk/xHlzdY096hlBDPtoY+AzTyv
 MeG0/hi8cUmU/GoqDa1T13AdoHzthQ5R6wrULsP5x6PkxUxN7PjlkMHGU
 f+od9gM6WaEBYzL7X0+Z+YmxP0kP1/8TXM8JZ3FsVV6BO1xjZzrQqSUwS
 59YgXGilloDieiwWGvGRnSqkrxZRcOZLdGUDqXNdBEJev9fBepU4/YIBH
 UIfdj1b0EatCPGOHZFCir+NvjMA2qSUtoBp6zJE1Kuyq2kkErIHux77mu w==;
X-CSE-ConnectionGUID: tXQNN1T7ROqsC9gERdZTmA==
X-CSE-MsgGUID: 7ydFKDG7R0i/2V/IecYCSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11548"; a="69962338"
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="69962338"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 06:38:05 -0700
X-CSE-ConnectionGUID: fSmlI8RjTwSxq/bHFh4S9w==
X-CSE-MsgGUID: EVNV52MsTP+nBoLTv+iqww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="172256772"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 06:38:05 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 06:38:04 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 9 Sep 2025 06:38:04 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.50)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 06:38:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NIq1JjGqtoh1TpLggEje/yzzRZxJeH3PzQ4b8WpdaUvbzMaoNzb6nThcHIR1PW9rP/8pQfT9Drm4l3Odsi4CK/V0fdSIfOYfqov/72iYhXm48gY/xnBXeTnkdJQGwB4rHZkpaN9bWUSqT3yZ5wOyf9vBIu6MWdAkc0gvddsmW98yZcGsmWWvSahSpYZwm/fOJcIr5TFOJgqVAsvXfyvFoBsx5NxrJrIBekZlSFUGV011Q1s9txp1iGM85a0Ksdn8CIrBoljkAy/bbkSrNK/N55SBYfSLpQYeNujOJHpG/97jvH2BE8pfkx5oPVP3orY1yAwJ91+DqdXSr9FK4N0g8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dOCn7s11ch8WnZwifFYcGN12iZPDRCREEkDbOnEeIbI=;
 b=ZIv60JdJgr0vWuzIpT1ZuqcEhQ0mkVzFusQeiD8T5FsI2LMoH0p1UwSOt7gQ3HViUe2ECqd9smnFWRcRs/RRgMoZBLX/2OhknftagIVniExSrYTV8IGob92J4bWQ5hQe09lnSML5II+DuGhjp+GurnUbVjE4QAOFasOz+S8N1Asf54K1t8gAGQQxK/jcG6Zb5LTRR7m8bJ6ZkTTi6hb/WtvcmpxwMN7TELE3AO9gvRjBq2bV/HA4YuV2omgpU1g1t/vzOXogBVfr+clp40JHcX1LWyBxyYyGeBvlpwDm15wvIZ6lxXijtPRo0/ChtviS0yU+OV7P/U7n3hw60KDmWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by CH3PR11MB8519.namprd11.prod.outlook.com (2603:10b6:610:1ba::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Tue, 9 Sep
 2025 13:38:02 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.9094.021; Tue, 9 Sep 2025
 13:38:02 +0000
Date: Tue, 9 Sep 2025 09:37:59 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/5] drm/i915: split out i915_ptr_util.h
Message-ID: <aMAtt9WhrmAPoj6a@intel.com>
References: <cover.1757340520.git.jani.nikula@intel.com>
 <ed8f3ef14844bdb1fecb528608f61093a16128cf.1757340520.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ed8f3ef14844bdb1fecb528608f61093a16128cf.1757340520.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0373.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::18) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|CH3PR11MB8519:EE_
X-MS-Office365-Filtering-Correlation-Id: fb674854-bf46-4598-097d-08ddefa61904
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?68bXpcimbT4XEKbpZHnsL0sqtuDPzO5b+wvx6GoTFioa3fCrFQUV+UPuQn?=
 =?iso-8859-1?Q?j7TOZXQ0y+DtmH9ZXGezEGXddIV27aOgBx2akuAbjGprxEPJw1N4dQfJhO?=
 =?iso-8859-1?Q?8iKHKVHksKs97JtU3DOvR2CpXrnncbDOrx8sZjllx55KRAQC77f4/TWd5c?=
 =?iso-8859-1?Q?5qFUyxLg0neow5IUrPEHxAUJjlHkbvjIJEV1BTyJmIKS65MYpwDalYAsLl?=
 =?iso-8859-1?Q?9dwJbqmH89qhjNjvOBFjfCO77bkzUS38/RTJTmKL09TzmUDEAGOUvcs9or?=
 =?iso-8859-1?Q?+DBw2YfP5r7QS3xwN+7llftsOQll4DlJ0OIa/HU1zNFyyiaPo4n8YhSr01?=
 =?iso-8859-1?Q?MSWJUqv6bJlFtPL/xoU6zxk15r2fOf93oZatdvjdrthlkdKO9l79d2/B9x?=
 =?iso-8859-1?Q?efv22sNbz+gkfWCR1tAdQoyJ2ZL9V1kfehiCyFHmvlRiPDO+ERVnDsEncU?=
 =?iso-8859-1?Q?Nna7UK1MTLJ0X76eAb9+V+35WNgsN1CwHQsc9N6cX8c3ApZ99mCXXsX8gI?=
 =?iso-8859-1?Q?GJpNEGnBZysr4i8YLny87IHmE4mRxG4j6cWPEO22QEJPR2LdRMkA2OmkOz?=
 =?iso-8859-1?Q?tQghTLveWV8gqCgX/CngzxLdJRUSeA46p75ksBw1oNlfeWtHVfAlspmsAA?=
 =?iso-8859-1?Q?KdrXVK+ggdxqOUwaVI5p85PL9+JRoPJ8fsU7jB+EV7rU3GyG2f1+a8Bq4g?=
 =?iso-8859-1?Q?CibsUVcn+Q3yK+1VI/uuFWoApMlMmUQtkwOAYCo/OszHbgnQvry6uH7ox4?=
 =?iso-8859-1?Q?AJDtt2dAdIOGcxE3PwPDLEFMMXqLYt1kFjro55vz0rc1uJVVcQ4TDyAdBq?=
 =?iso-8859-1?Q?Qh4hIm/EYF74VPUwvVXP67DCpG1M34E8zj5LaGw6vIm61Qi3aiGCthgDfy?=
 =?iso-8859-1?Q?2Ewf765bsKJ1Uc8JGuG6y+QFVTssNnfUa9fSAfyy6IfnHeSLh7+gMxDxQ8?=
 =?iso-8859-1?Q?mCi9r0GfTzdWUroVIgqdvFWnfdq3nHTvD6jN2kp69thoakjo6uZptfrKYX?=
 =?iso-8859-1?Q?Fq/NQ5PLzat8hesC2pinAm31cYdFKzT36mcPkzqKYZk4HVYrLn1bvUfEuW?=
 =?iso-8859-1?Q?XkctEm3CkcSQ2N3fCocGSDnUIe+dNWrAzDKhEBj6cY5HGhTIqUKh6pawLC?=
 =?iso-8859-1?Q?VkMINUTtR8tBeRINl3qasgeNIqd5nH+tZIu23GNpKEAb2Ll44tFr4cJCvm?=
 =?iso-8859-1?Q?BpJ7xjvb4F/brY3UUb0xjUeQmY/LIa9nXL3hWH+0hAGwctDhl3ydQxFg4Z?=
 =?iso-8859-1?Q?d4/NCek/Lv3VfJGg+yJES66oRsR968xqTRbR73dF8DcDzkvYbW5r99aEX1?=
 =?iso-8859-1?Q?NFH8t1xF82pBA/EkcNRajJOvnv8W94rU4uSf3G53df4khML5poLRZJGziS?=
 =?iso-8859-1?Q?hSufsnwvRy8FwzQan7LIfo2wDKOCEQWu7A7dU4Mm0IUimCLeWCccpAT/T5?=
 =?iso-8859-1?Q?BwACNsiYEdpHnh1O1y0lPt+Xyi0psQSbJeLRX901axQe280dy0K5LlF8TD?=
 =?iso-8859-1?Q?o=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?OnwPAZ6xEKmnXyarB1CABEbDHGY5Vvu4D9Oj/f5BvoT/pIM2/hccoJLtX4?=
 =?iso-8859-1?Q?bh7hnWVNWgLtFQF/roQJsEFRB9/K1YU0h8v9PTq6fXuPNlbkKX4GCkuG7L?=
 =?iso-8859-1?Q?E1t7/A7Yvd1GBtTdBOZKSxQ1U0kGzcC3A9chyWFheSYF9h8vOON59OblXn?=
 =?iso-8859-1?Q?0r4db3OT7HQud5pWfiKRLs/A07s5eDjjJpKP4WEfLH/v6S9OAe/Wiwasdx?=
 =?iso-8859-1?Q?mE/t0RKElUPQFqtHknYf3mg/D75toi+vAyfKouRylYTTVW3z99lZV5/YaC?=
 =?iso-8859-1?Q?N4PTaEMrrzoiY9gF6oyMLjenf+dQLr3MxVrYw93RXSMh3NgAGE6dPQUZRn?=
 =?iso-8859-1?Q?U5jWfmQ1BnlANseBvqz8YoKvAekSByIkLUaL0heodcFEL7e+WgiScXYGkQ?=
 =?iso-8859-1?Q?pb6JKEzOLOOFLQ7YT4kMbH5pir8YwUWx2KHeTJuI7teeKb3fFeTZjD+XUB?=
 =?iso-8859-1?Q?HFzCd8PIl+GCj4I5HTiwizEPjSdYNjszYrMRU/DcuIjAm/9kdOUvYStKWj?=
 =?iso-8859-1?Q?g0jfO9AJ7PBMvo0BcPT1k4M0jOxQ4NYVVMdrWObLR5b/oAIUx7uZ3gB1Iu?=
 =?iso-8859-1?Q?wu+vqV/i6J7KunZVI1KwFiN9rYO80DGJbziVq/S92FBjXyG0+Hv5SBUYuC?=
 =?iso-8859-1?Q?Tl5OgCciOk1HweEdhSJtcKW4kGkFTbZ/n0T6UeFW5z4ZCDt2zm+QlwAwx2?=
 =?iso-8859-1?Q?zl9U0iIWK/15WOHtmP9j4/eV9l77B2MXSI0n3nwcECJvQeN1pukxY2A6xG?=
 =?iso-8859-1?Q?cL+t2O2oMRSBfNzc46KX8BC6HXqbE4jTxPlpDTOxaEeXWHTxLhFvx1JkW2?=
 =?iso-8859-1?Q?JenUO+k0MgMuPoHzdY9HyhXCXP450hzAzSLzAAo55l4PSX8aYFURVEATY2?=
 =?iso-8859-1?Q?RAqJBLhWE0cpV8HPwvVzOpMJzwzgSH/DxJ3V5cu2SWWrCd39GSfy+om0EP?=
 =?iso-8859-1?Q?gIIKRFEM6NcuT6I9JUIp5l74yLBJoxTso7MLNvhkaggvWWQUFAnMOSoat9?=
 =?iso-8859-1?Q?ltFm2605y2o7/7ZC4WFuYNXDZKNwcTtRTaI+yqaemyVXa725lDKQ7Jsg2C?=
 =?iso-8859-1?Q?dTSPqkTSxK3ynMv8Js22d/l/27YZbJnbH8QjhT3Mz1TymG2HTSRWHDZO0/?=
 =?iso-8859-1?Q?98rfOyWmo/yTC5ohA6Wt+n6PeGwI2/hTQHOwlW53vIFajOzh+6uBUQDHHJ?=
 =?iso-8859-1?Q?Pl2elRCvyYB/zJ6ggnAGlyYb22PKIbYnIzOYd2PyAEGzgLQ8HprLN8ZcS7?=
 =?iso-8859-1?Q?9EsZ2TuwyYFzio+k//SebIwZpEImCw6NV3bdIfFuyQEkhjsopIXxWbAtPZ?=
 =?iso-8859-1?Q?XtPPOJl7XtJZ2C8JDnVTfz/IZave/y6Bx2ccCHCROY8UaIZWbwIIz6NWTn?=
 =?iso-8859-1?Q?7oCu97sK3mvAIrL4E37cpXQ0Xc9HV6GAqrvXjBXzgwZfSYkQYl6fS+ttfg?=
 =?iso-8859-1?Q?PBkdT9GMod2m5sLtAGoFCfwwA6SEZ+Eu7hOk+qcIHc3a4nEKBUGTXWXktN?=
 =?iso-8859-1?Q?CxliZM1ebqA+Cs5PFViJVp43/H7QmdgFMMbyIwTk5c0qS+R8cMlL7Qt2PA?=
 =?iso-8859-1?Q?s+ivmUc/qk1AFaGH6G+cjlUdVO7j4yRswXM6MnkGzidUj6/MnE0HJip+Og?=
 =?iso-8859-1?Q?wSlPWzQPoZuLuMpQoLrRdFR3AzBL1GN9JwC6eXcqWZdX2cdX9IBuwMRw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fb674854-bf46-4598-097d-08ddefa61904
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2025 13:38:02.1893 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XT4w3bAKOIObefqtA9ArMra89spjKlWmSt+F56qpqBRJ+Kx5DO2UQwrf7fK93lnj5/DKBVnWLVq+6zT9hQmzoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8519
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

On Mon, Sep 08, 2025 at 05:11:46PM +0300, Jani Nikula wrote:
> Move pointer related utilities from i915_utils.h to a separate new
> i915_ptr_util.h header. Clean up related includes.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

I wonder if we should add some 'i915_' prefix in them
to avoid pretending they are a global kernel thing...

but the spin off is already a good clean-up start point...

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_context_types.h |  1 -
>  drivers/gpu/drm/i915/gt/intel_timeline.h      |  1 +
>  drivers/gpu/drm/i915/i915_ptr_util.h          | 66 +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_request.h           |  5 +-
>  drivers/gpu/drm/i915/i915_utils.h             | 57 ----------------
>  drivers/gpu/drm/i915/i915_vma.h               |  6 +-
>  6 files changed, 73 insertions(+), 63 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/i915_ptr_util.h
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> index 98c7f6052069..10070ee4d74c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> @@ -14,7 +14,6 @@
>  
>  #include "i915_active_types.h"
>  #include "i915_sw_fence.h"
> -#include "i915_utils.h"
>  #include "intel_engine_types.h"
>  #include "intel_sseu.h"
>  #include "intel_wakeref.h"
> diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.h b/drivers/gpu/drm/i915/gt/intel_timeline.h
> index 57308c4d664a..5f8c8f79714e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_timeline.h
> +++ b/drivers/gpu/drm/i915/gt/intel_timeline.h
> @@ -10,6 +10,7 @@
>  
>  #include "i915_active.h"
>  #include "i915_syncmap.h"
> +#include "i915_utils.h"
>  #include "intel_timeline_types.h"
>  
>  struct drm_printer;
> diff --git a/drivers/gpu/drm/i915/i915_ptr_util.h b/drivers/gpu/drm/i915/i915_ptr_util.h
> new file mode 100644
> index 000000000000..9f8931d7d99b
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_ptr_util.h
> @@ -0,0 +1,66 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright © 2025 Intel Corporation */
> +
> +#ifndef __I915_PTR_UTIL_H__
> +#define __I915_PTR_UTIL_H__
> +
> +#include <linux/types.h>
> +
> +#define ptr_mask_bits(ptr, n) ({					\
> +	unsigned long __v = (unsigned long)(ptr);			\
> +	(typeof(ptr))(__v & -BIT(n));					\
> +})
> +
> +#define ptr_unmask_bits(ptr, n) ((unsigned long)(ptr) & (BIT(n) - 1))
> +
> +#define ptr_unpack_bits(ptr, bits, n) ({				\
> +	unsigned long __v = (unsigned long)(ptr);			\
> +	*(bits) = __v & (BIT(n) - 1);					\
> +	(typeof(ptr))(__v & -BIT(n));					\
> +})
> +
> +#define ptr_pack_bits(ptr, bits, n) ({					\
> +	unsigned long __bits = (bits);					\
> +	GEM_BUG_ON(__bits & -BIT(n));					\
> +	((typeof(ptr))((unsigned long)(ptr) | __bits));			\
> +})
> +
> +#define ptr_dec(ptr) ({							\
> +	unsigned long __v = (unsigned long)(ptr);			\
> +	(typeof(ptr))(__v - 1);						\
> +})
> +
> +#define ptr_inc(ptr) ({							\
> +	unsigned long __v = (unsigned long)(ptr);			\
> +	(typeof(ptr))(__v + 1);						\
> +})
> +
> +#define page_mask_bits(ptr) ptr_mask_bits(ptr, PAGE_SHIFT)
> +#define page_unmask_bits(ptr) ptr_unmask_bits(ptr, PAGE_SHIFT)
> +#define page_pack_bits(ptr, bits) ptr_pack_bits(ptr, bits, PAGE_SHIFT)
> +#define page_unpack_bits(ptr, bits) ptr_unpack_bits(ptr, bits, PAGE_SHIFT)
> +
> +static __always_inline ptrdiff_t ptrdiff(const void *a, const void *b)
> +{
> +	return a - b;
> +}
> +
> +#define u64_to_ptr(T, x) ({						\
> +	typecheck(u64, x);						\
> +	(T *)(uintptr_t)(x);						\
> +})
> +
> +/*
> + * container_of_user: Extract the superclass from a pointer to a member.
> + *
> + * Exactly like container_of() with the exception that it plays nicely
> + * with sparse for __user @ptr.
> + */
> +#define container_of_user(ptr, type, member) ({				\
> +	void __user *__mptr = (void __user *)(ptr);			\
> +	BUILD_BUG_ON_MSG(!__same_type(*(ptr), typeof_member(type, member)) && \
> +			 !__same_type(*(ptr), void),			\
> +			 "pointer type mismatch in container_of()");	\
> +	((type __user *)(__mptr - offsetof(type, member))); })
> +
> +#endif /* __I915_PTR_UTIL_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> index 5f7e8138ec14..b09135301f39 100644
> --- a/drivers/gpu/drm/i915/i915_request.h
> +++ b/drivers/gpu/drm/i915/i915_request.h
> @@ -31,19 +31,20 @@
>  #include <linux/llist.h>
>  #include <linux/lockdep.h>
>  
> +#include <uapi/drm/i915_drm.h>
> +
>  #include "gem/i915_gem_context_types.h"
>  #include "gt/intel_context_types.h"
>  #include "gt/intel_engine_types.h"
>  #include "gt/intel_timeline_types.h"
>  
>  #include "i915_gem.h"
> +#include "i915_ptr_util.h"
>  #include "i915_scheduler.h"
>  #include "i915_selftest.h"
>  #include "i915_sw_fence.h"
>  #include "i915_vma_resource.h"
>  
> -#include <uapi/drm/i915_drm.h>
> -
>  struct drm_file;
>  struct drm_i915_gem_object;
>  struct drm_printer;
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index eb4d43c40009..dff02a944a57 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -67,64 +67,12 @@ bool i915_error_injected(void);
>  		drm_err(&(i915)->drm, fmt, ##__VA_ARGS__); \
>  })
>  
> -#define ptr_mask_bits(ptr, n) ({					\
> -	unsigned long __v = (unsigned long)(ptr);			\
> -	(typeof(ptr))(__v & -BIT(n));					\
> -})
> -
> -#define ptr_unmask_bits(ptr, n) ((unsigned long)(ptr) & (BIT(n) - 1))
> -
> -#define ptr_unpack_bits(ptr, bits, n) ({				\
> -	unsigned long __v = (unsigned long)(ptr);			\
> -	*(bits) = __v & (BIT(n) - 1);					\
> -	(typeof(ptr))(__v & -BIT(n));					\
> -})
> -
> -#define ptr_pack_bits(ptr, bits, n) ({					\
> -	unsigned long __bits = (bits);					\
> -	GEM_BUG_ON(__bits & -BIT(n));					\
> -	((typeof(ptr))((unsigned long)(ptr) | __bits));			\
> -})
> -
> -#define ptr_dec(ptr) ({							\
> -	unsigned long __v = (unsigned long)(ptr);			\
> -	(typeof(ptr))(__v - 1);						\
> -})
> -
> -#define ptr_inc(ptr) ({							\
> -	unsigned long __v = (unsigned long)(ptr);			\
> -	(typeof(ptr))(__v + 1);						\
> -})
> -
> -#define page_mask_bits(ptr) ptr_mask_bits(ptr, PAGE_SHIFT)
> -#define page_unmask_bits(ptr) ptr_unmask_bits(ptr, PAGE_SHIFT)
> -#define page_pack_bits(ptr, bits) ptr_pack_bits(ptr, bits, PAGE_SHIFT)
> -#define page_unpack_bits(ptr, bits) ptr_unpack_bits(ptr, bits, PAGE_SHIFT)
> -
>  #define fetch_and_zero(ptr) ({						\
>  	typeof(*ptr) __T = *(ptr);					\
>  	*(ptr) = (typeof(*ptr))0;					\
>  	__T;								\
>  })
>  
> -static __always_inline ptrdiff_t ptrdiff(const void *a, const void *b)
> -{
> -	return a - b;
> -}
> -
> -/*
> - * container_of_user: Extract the superclass from a pointer to a member.
> - *
> - * Exactly like container_of() with the exception that it plays nicely
> - * with sparse for __user @ptr.
> - */
> -#define container_of_user(ptr, type, member) ({				\
> -	void __user *__mptr = (void __user *)(ptr);			\
> -	BUILD_BUG_ON_MSG(!__same_type(*(ptr), typeof_member(type, member)) && \
> -			 !__same_type(*(ptr), void),			\
> -			 "pointer type mismatch in container_of()");	\
> -	((type __user *)(__mptr - offsetof(type, member))); })
> -
>  /*
>   * check_user_mbz: Check that a user value exists and is zero
>   *
> @@ -143,11 +91,6 @@ static __always_inline ptrdiff_t ptrdiff(const void *a, const void *b)
>  	get_user(mbz__, (U)) ? -EFAULT : mbz__ ? -EINVAL : 0;		\
>  })
>  
> -#define u64_to_ptr(T, x) ({						\
> -	typecheck(u64, x);						\
> -	(T *)(uintptr_t)(x);						\
> -})
> -
>  #define __mask_next_bit(mask) ({					\
>  	int __idx = ffs(mask) - 1;					\
>  	mask &= ~BIT(__idx);						\
> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
> index 0f9eee6d18d2..8054047840aa 100644
> --- a/drivers/gpu/drm/i915/i915_vma.h
> +++ b/drivers/gpu/drm/i915/i915_vma.h
> @@ -30,12 +30,12 @@
>  
>  #include <drm/drm_mm.h>
>  
> -#include "gt/intel_ggtt_fencing.h"
>  #include "gem/i915_gem_object.h"
> -
> -#include "i915_gem_gtt.h"
> +#include "gt/intel_ggtt_fencing.h"
>  
>  #include "i915_active.h"
> +#include "i915_gem_gtt.h"
> +#include "i915_ptr_util.h"
>  #include "i915_request.h"
>  #include "i915_vma_resource.h"
>  #include "i915_vma_types.h"
> -- 
> 2.47.3
> 
