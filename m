Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 498E58C4352
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 16:35:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 991DD10E3B6;
	Mon, 13 May 2024 14:35:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MsadfefV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74BEF10E7E6;
 Mon, 13 May 2024 14:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715610931; x=1747146931;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=llm8pR0QaR59QukfvzNlgZWnp/MWc9CU0vELx6pAQaA=;
 b=MsadfefVXXsBrNOryD+YZDdr+on/C9xmGkbzFiy6HOcMfWhduL4l9Kd0
 FgLihvcW52/DnzDYSEEmBTOfU+MaqK5ZAZw2jrRGXgyFUi+kaRvnBeto+
 7/zMrXn11Piw4HbhlZjM5OW76i8Rr8RyBSXNo68NugA6tCYkjtNLW8L0y
 LUAqX+S3TYm6i53UN56N+w+2qc57HU18dvudRJqZYLH7tnNnWo7fVhwXX
 who1VmxHwS+Y1mOBAY445LKHKQkIRwqCE2RdBF0t7JSF0uiHNmsOwzB+X
 JbKIvGoHGglH9dxGZ6c6Fvqb0DwIB3h7LQ0Vl5WSe+2h6x+L5aDg3rIVE w==;
X-CSE-ConnectionGUID: 2oQTcz9FRv2bXvNptDPZUg==
X-CSE-MsgGUID: 9LiB0F8yR2qU8S2D0JIPOA==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="22946815"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="22946815"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 07:35:30 -0700
X-CSE-ConnectionGUID: xr0ipOarT9+2FZRoDlkzYQ==
X-CSE-MsgGUID: vg3L0a9cS3eBk4ENGjOZRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="34774833"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 May 2024 07:35:29 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 13 May 2024 07:35:29 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 13 May 2024 07:35:29 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 13 May 2024 07:35:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q5fTVaFXVcFMR/gXydenRa3WlDK9NGAjJJ6LsBkTC5j0X3+nU0hrNLxvhcu4RUNqnJwo7EYobIoZgMerlPChJyHwCYzqpz/BDQYkBrkV9Sz4qwM20ObeF/ZMriliMz86uMbIgsbuI63x6dSfZDx2Llvh0DmUrgoHzaCKwYHqxvQS1Ld03m8AA/PteO32dva+baFxFZZ+z0AXmJH1vjmYja4tp37yrj7TewzDQGqHFA+LRJsVynyyClT0ZvdYfq8uBfvXf9JkOW2AYDKHyk1zfnfZrtFIECIRO9yLIS21rMb3Chod551d/61Syj1kdJ56i7tqvQYImg1FEcp01s2qOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iQBMwUJnhBPOJY+DHinemvbpWmduXB3zlyg2lbMxrJs=;
 b=oGiGA7TB7trlRK/o56xOEr6g+VJsYgp61XW1yz9y0fCm+kQB72PGH/X5yd8e8Tpcv4vKIRzTMsAJJ+NTVhb3lKPs24yEfG6+5DlK+AccZ+IZnjeGo7mJJeQ5JC3CzL+xklyH92yH8UpqqDExhwMIDHZMr2ribK7OLe7CfFruqaevcqamwN/J7AmNIrTalpT1GLD3MbxSQMtLLFUS49UUrTaRrA/TAfT/sVN9iLcMNlPifN6nzKHNsayZfjDZc/hY0vKIavESqrDH73LnyNpW+Yd37o9cVAuS6sYfPgQWHxnN8LBILOrLDRNyOThhOKXTsJDSCSaUWGCB0n9Q/5nXsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MN0PR11MB6255.namprd11.prod.outlook.com (2603:10b6:208:3c4::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Mon, 13 May
 2024 14:35:26 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%5]) with mapi id 15.20.7544.052; Mon, 13 May 2024
 14:35:26 +0000
Date: Mon, 13 May 2024 09:35:21 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/xe/display: remove unused xe->enabled_irq_mask
Message-ID: <djou7im7ge6emdfqjvev5u24ruhrqwa45a3sxtmbgjp3dra5cz@jtmpz6f3e4fv>
References: <20240510094313.3422982-1-jani.nikula@intel.com>
 <87y18dewui.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <87y18dewui.fsf@intel.com>
X-ClientProxiedBy: MW4PR04CA0304.namprd04.prod.outlook.com
 (2603:10b6:303:82::9) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MN0PR11MB6255:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b546633-290f-43f7-88e7-08dc7359ee12
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zVGQz2OeumBKt2QsYrcVk6wAIw7RQFBkc65GZXWtyC/XseM0ug+RDWOTX4JU?=
 =?us-ascii?Q?oHEJjnyNjYK2IhfQrLQqM1MK9AUmvg4c8cGbowlB58ErODZH+y718jIezN0A?=
 =?us-ascii?Q?I3g5gRnOQhrNEB5XIY4t6pQKQBJu3OBboa6rh6lK3LLm1L5war0s7Tx/R/Xn?=
 =?us-ascii?Q?z1Vwukzy0fEns16cxALKbNO59XXJqw9rvoZu8+xz4c5C+dTWpfXPp9EToLDo?=
 =?us-ascii?Q?tup3LXQ8tg630wyEgyajgVNMvSrhDBFSoSvRBKyTmHl2vZzCNoHZ44CsNwfq?=
 =?us-ascii?Q?83ncCWzDD2g68bbQlX3frsVu2XLp4H5vRhkXC57XUVgEO1+Q8sITdiV4n4gn?=
 =?us-ascii?Q?PwiuF3HV6VKjI4UwgtRNbJPq3yNZL63+/dy4eogPZ8+uGxvlfvVyd2Kjq+VT?=
 =?us-ascii?Q?DLhHVaiqgTfcuhMKQCl1JkP1TcZXF2ddJWJhdQCx4PUfnl2yUa7LJ7zt4aAV?=
 =?us-ascii?Q?g6pHbjyVI5AWJDELl1wnjn1UgXtkl97ARbsMgNoitR99K/pvM8voaCdivrR5?=
 =?us-ascii?Q?of4fTUiZN+2UHD2sl3sPBW/JcbPvKq09h/S6JX+y+uEwiGTvQVu/Pdrl7h2l?=
 =?us-ascii?Q?nCILgGeH98Y7rios0OEHxhDGqnj6oxl+YJnqZBZ2XvBAx02uNVYsEDfGq2jo?=
 =?us-ascii?Q?jOmymZmEVWHVtd3Yh2lkGdiYZ5G+jxPHuWt7VOak1MTz+9OtrZPaE3ZHLeen?=
 =?us-ascii?Q?KquXPBHKP8PlTWCoyxoNkucYeb4Z3hkukdZPsk1To+EypoSZ4GtCP3zZe2Tq?=
 =?us-ascii?Q?AJW+WOmAhu65qHzWKdToxikoKYhWnWtKa0AzQR8FwlCyht9Ap/3Yffmxuyc0?=
 =?us-ascii?Q?Vxj6tPa7+Pn2qQkD3YPEDPgRQ3BllrW3Q1k5iHD2a3ttiYfaDrAO7ccvjFzI?=
 =?us-ascii?Q?jpXikiovQ1SeAuhpD1F6S8/PSam7huegxIeazv+XTUSb+t2dvV5w/mEPnYA+?=
 =?us-ascii?Q?E2zsVQ3gCmeh7MqKiZ/y2RhKR/EPWKF/2BtyHN+1Xam8r8jtFDwmBxMTNk+3?=
 =?us-ascii?Q?JQYxSMi2SIAKnrVingKMcluKqeNGhCRKNylw/csLZv0kiVmlD0aPJHg+/2aS?=
 =?us-ascii?Q?XPq9syvvSv+LM/sAQO/OB0jX/BQCz/ccCDlAbM1Eu2ktGFNLVsUal6GPADxA?=
 =?us-ascii?Q?4KB32EYyBwZCrDdBDxRGS75Yo1BPtk9SarH1+L0L+5FackVLDeua7u4ClzLz?=
 =?us-ascii?Q?4FPoFhEFmy+SEm7T/AoPMsyO0lXb6qxJ/HTKLR/MtjLzw0ScQIgsJRzDTOLW?=
 =?us-ascii?Q?0SMELLbUyhRQmzvrpF+4EWjxZsv7H1xnWYfleBYVyg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ka0Gb4XRYzeXBsKwLiESQpYIf2WDH1YGWjzpDxNB4hsH4MScrpWFgHcyddzd?=
 =?us-ascii?Q?eb2KSTdWOt/RPk56NfpXtxTByhrCPaZ6/zxtkWPXtO2okLLMOy86YgBRZ46x?=
 =?us-ascii?Q?GB6q8veaVL+WJIJw+izJbFuhB6VjMqTdrWXlCFKrkblZKCxALwnTAVz8U4ns?=
 =?us-ascii?Q?oGDskH2yi4zAGFifUjZ7NbVhHDtX64mc7MQljQmjptgxU062xp9zaE4UkMHV?=
 =?us-ascii?Q?RP5GTjrBNgN+rwuNarhrdNK1XumHjIMU3LWgJ6t5D1DkHB1NGL3O0Au17UEe?=
 =?us-ascii?Q?8B/mcHi6xCU+yZBl7HkajG/ZVqKbWdqrpsQByDFX3oWHo7qqWE6BlJ508t0V?=
 =?us-ascii?Q?w8NUGHZDADN0f5wvleG/6oNWn3lH1ymdi0R1jD+fgz5QqwKhDcMv1yDwyCkk?=
 =?us-ascii?Q?kPjsYF8T7UzA64HpLKg6VT8WZPO/QSVr/Px/zRfCpovDTRlMFMsBiVXWKgEp?=
 =?us-ascii?Q?eRMBuLFFmHxv29ZpNFFz6mA+pMovR68G7D0jUgRZ27SLk+H2NS0ms4NEza1Q?=
 =?us-ascii?Q?51momepz4BXT0fq9EZkriyc2n0vjeNlJl9DGlpyEQKnbiG4wkW/pzaH9S/YX?=
 =?us-ascii?Q?mBAt7CONIh2e3Yapn8I2QpDLQRctFlx2v4rdXb/Jdx47Od35mXl0Sb5aSLuZ?=
 =?us-ascii?Q?4kM478bXQo9fImMlHLQf1IOHtpdVnJXhOWuNwkhnkhv5RKRCZeQfwzDOSkHH?=
 =?us-ascii?Q?AlwcxbOnHDsDKGCTHjI3v7GjkoGzBbneWeKk/PwWcUPk4BqlPryMel3DC0B7?=
 =?us-ascii?Q?xxdNGbZohL8fMTayrv1QeT6mVT1p6c6h20tXAGOq0cX31aiXtD7bpy9/glyf?=
 =?us-ascii?Q?6jcHVxVcMHrcowCOaNJYGT4hl17mK9pZ5Wx9G7wQeGnjtKjF+48K29hEJFcf?=
 =?us-ascii?Q?CgQmrqzb3eGL1P/V1gHrVF9g+wSe/rdc9SKrePdUZM/5E12jpvhLn646iu/7?=
 =?us-ascii?Q?XUjVQNeQTKRWtstE7KDDm2o5PoikyPGiDSg5HvMXv5ZI99Sp+LO63b+SwsCW?=
 =?us-ascii?Q?JZ3gyXnr7lrLSzOk+4wFIQwx8ZDqTbOPHCx6JfzczOMK2R5tzgmV1FziAINS?=
 =?us-ascii?Q?T6mJs1wW6mzaMTAHV7AtkopUbzL++zYAoK7C4zG82LIUiO9+x7A0l3etceA+?=
 =?us-ascii?Q?VICq/bE2K2aEDxJ/35b7UjPUmVPTPzbQ5kQUenrt7KdtxRkKWootbl0mXnfM?=
 =?us-ascii?Q?E9mdzOjSViskWzNAkuUg0r+/aTFqF1q8OFXIpMRzi+EvoYnAB3SUILMMNJWZ?=
 =?us-ascii?Q?RO2n5IpmnlVuaK8nwQmMOoyWGNu7L4s0X4FEDSXOeNLOJlwjoWk6mIY5Ervp?=
 =?us-ascii?Q?AzxjYI8Cd56ka4sF40q9yoi8bpcytcdBh2nJy2jRHf+qS0ObZWjLzr9xd3st?=
 =?us-ascii?Q?AFhck7BhOokl+d4JF+dpqT28oGc2c1rRwsghT0ygmc27i7ZszkjnsjiPKv/1?=
 =?us-ascii?Q?SXYgtSLGA4N0C1Zfzgv3pNeYHbCen0NSvp3FaX93L70pD98JF+B7/jwV2eDt?=
 =?us-ascii?Q?oxLnbolWPyTPDThpBjr/2f4bKTRXhn7BJvKI3f0lGakELoekxIT1039/cZuv?=
 =?us-ascii?Q?t2E47f7yTIS7tT8bM9jvBMKYrRt70zqG3vIXgFJbsXkpxMeBnKyH6EiZUYhC?=
 =?us-ascii?Q?DQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b546633-290f-43f7-88e7-08dc7359ee12
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2024 14:35:26.5187 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B9gAsHA7bBBx979JwAEd3PDiYj5u0Jbj05egx6djbNAKjqGQg+LGOysa8/EwcYsQ6SgDgnNyWxg/1fKK66XFrIzt1z+HHQJ2aSZ2sGZmAWY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6255
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

On Mon, May 13, 2024 at 03:10:29PM GMT, Jani Nikula wrote:
>On Fri, 10 May 2024, Jani Nikula <jani.nikula@intel.com> wrote:
>> The xe->enabled_irq_mask member has never been used for anything.
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
>Lucas, ack for merging these two via drm-intel-next? Even though these
>touch struct xe_device, I presume any further cleanups touching the
>surrounding context would have a bigger footprint in drm-intel-next.



Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

for both patches

thanks,
Lucas De Marchi

>
>BR,
>Jani.
>
>> ---
>>  drivers/gpu/drm/xe/display/xe_display.c | 1 -
>>  drivers/gpu/drm/xe/xe_device_types.h    | 2 --
>>  2 files changed, 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
>> index 0de0566e5b39..fbe2c2eddea9 100644
>> --- a/drivers/gpu/drm/xe/display/xe_display.c
>> +++ b/drivers/gpu/drm/xe/display/xe_display.c
>> @@ -97,7 +97,6 @@ int xe_display_create(struct xe_device *xe)
>>  	xe->display.hotplug.dp_wq = alloc_ordered_workqueue("xe-dp", 0);
>>
>>  	drmm_mutex_init(&xe->drm, &xe->sb_lock);
>> -	xe->enabled_irq_mask = ~0;
>>
>>  	return drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
>>  }
>> diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
>> index 906b98fb973b..b78223e3baab 100644
>> --- a/drivers/gpu/drm/xe/xe_device_types.h
>> +++ b/drivers/gpu/drm/xe/xe_device_types.h
>> @@ -517,8 +517,6 @@ struct xe_device {
>>  	/* only to allow build, not used functionally */
>>  	u32 irq_mask;
>>
>> -	u32 enabled_irq_mask;
>> -
>>  	struct intel_uncore {
>>  		spinlock_t lock;
>>  	} uncore;
>
>-- 
>Jani Nikula, Intel
