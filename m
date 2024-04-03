Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2125A89740E
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 17:33:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C947112260;
	Wed,  3 Apr 2024 15:33:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k9ydZJES";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 560CA1120EC;
 Wed,  3 Apr 2024 15:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712158378; x=1743694378;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=d9PJi6tfitp9ehg213tb/68v/xmsn2oV0wMPGPYVwE4=;
 b=k9ydZJESrFGkn+O75GNIWxtzFjuQF15eA+mu42CNmflZG8Azxd9cMRrb
 g3NSmcRSleiLRKAE7bexsb3Dz8ZGbWC7WX++2ONg2RDRTXrGncPDofH4o
 RTQM4z73SlvMLfYhlw7ftBdzVmHDRawjNfwvSgdmuUyouj/0GVmJdmDbF
 ju6sHkACi8F+OruZ0h1/yg2vOStZwqmfd8JiFExFVh00kWlbWmk2rS1xo
 Ro4ryxqWFJkQjAHQH4487qP/kYp3a/X5KLgVnQy35y7KQ9ebO5RPsXj4V
 xwuTGlmEFrvzQMsqYfJu0WwdM8Y7Qr7RARXymoAlWOYp5rG3wVZRV6TjU A==;
X-CSE-ConnectionGUID: Kn77vDNcRaS2T/AHWqGtHg==
X-CSE-MsgGUID: zR3+srikQ2aCozlBdMPlQg==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="7256042"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7256042"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 08:32:58 -0700
X-CSE-ConnectionGUID: pw2bFAziQXm/+GgSYzBytg==
X-CSE-MsgGUID: 0wsLiQ4qS2CE3dnnNYTdnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18531778"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 08:32:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 08:32:57 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 08:32:56 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 08:32:56 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 08:32:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gaGz/xQFe71lnRUoH/985yC2spbthAnratrl6ZhpNro1BOFvDlqhp3uxqvA6FF0Nv1DPAYVwAdkxfP5o3bgk+XW+Gzx0G+yUZBoxfw/frjoXehOj4vbUPtej4gMcFmFMvaWKY2CdSbRsT13KRgQKUYxumL9l8m3QoFXt1t+iHRvLJMZs4l5iEMrY9blZczIeoV2t7jB4DxdBMEM0H+7gqMbqmfUVI2rfip3fU6x5Wz8H/vQkG8DM/ZqtGweealmiyKMpRO2vs2wMWDE4c7fpUpHM4UHwJ2EQoW8yKjBEFjweJXpsj/BmlDMMLr/V5+4eqfXgECqI7LJ7tSGtX6lFqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Qui8igMlKKLwdFvNTGM73oeUKWla0siKEPo00APLFs=;
 b=bAZHvKE+HBbRhaSI3IvrLV8nmZ1bfArxb/Ikecsvv2X6YvtRinvhkcQwulkTiG6MjbWbjo6h4kdY4OgjsHlo6joFvd1VCG8pESgK68AV3PvZdkUyRVm7/rDWHJzUe12qZLDWDa5MQ9XCRPx4wmKQPI9upWBNGZzHziUoTEXseG9t2BLNIQlMe+S3GOQ7ejTR796EckNaIPpqm/hjJF8ZWv2Xap5RfCXs2DNXBhQD9yD1g+u05lhac+4PkgXuQPw0tIMswSmyYsRMgBxS2WCVHbl8kkwV3IuqaDWm4HwIv7yrmmRonCi2q0RWOPvS7rfZFI8PXM1zpl/JLmQqsmKctg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA1PR11MB7698.namprd11.prod.outlook.com (2603:10b6:806:332::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Wed, 3 Apr
 2024 15:32:49 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 15:32:49 +0000
Date: Wed, 3 Apr 2024 10:32:50 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Arun R Murthy
 <arun.r.murthy@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCHv2] drm/xe/display: check for error on drmm_mutex_init
Message-ID: <buobxdew2jnbfblawfvnzwntexvhxkslqstsgp3xsxpexdtdem@gwnlli47tdkc>
References: <20240328080005.410961-1-arun.r.murthy@intel.com>
 <ZgUq47D313cr2VYp@ashyti-mobl2.lan> <87r0fufxy2.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <87r0fufxy2.fsf@intel.com>
X-ClientProxiedBy: SJ0P220CA0013.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::20) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA1PR11MB7698:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OW4QtWpB/Cix/3aJPx17NYN+5jn6ZKLmJfSum/K0f6gXC+oFE+piPs+QVxkzfDBhcwo6SMpMXg1+SF7idF8nEmhPgq1DjVQj61I4o5m1e4SBW9d397t5BhmDCa/C14sp/hG8GZrV523tne0lHRIQqr3rjDegX6YzpWhKFmlISUX1ecLbZRXnqDce/CPgyOzvM1+DTvVQhz3643Od2MYJNhgJ/4Hu2IjnOKiMYmdvl0buHDnegmbFCtq+hRZQBP76PaJWfdjhhV0Bpt2h+y2uGiK88hPatLhS/oglLUwwAW3IH3oLiDvCVh0H5OytLM+A4BuMf7xh3vBixK4Zo0kOLIYcsQIKfJPbMMjZ6h6deWpIvL7nXcpPClTlabcQiO4Xp7SObwRHPtuSUf9R7PxNx/8EXBkgXr5i2L/vFE03Jbo50BPL3/qMtRj0AoVOFtMZycc5A8nta8mDiyxqsCyeSbYJXN+E4ZUx6CYUCmvkkZMcPrHIAAngaCAmdUPq2ZKPPHD+pAEQigVJwzPwCbyT0c/xD+IIYG+8eKcgYUQtxUJByUfC4TFh3sQUneo00Ft//X3c03cB17h24zwbMfgjApm3PXYtNCiL8fWHURhQGwo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?S/t5qWdyFyzNHJQH1TXB2frS1mmWIGyWweOfXloTM3aw3a7YBUVwRgCVazST?=
 =?us-ascii?Q?vd3mZVnvYqEaMIwvL0Sk3pTpHXzvQ7jwq0HZKOpyuhO7VUCj86ZjiRKJ1Ufz?=
 =?us-ascii?Q?n4DDf8eWgQteNyKE9FO5N2GMifQZEwLX2Tlka84fwpO5YM2mS0Yq48y0uf1L?=
 =?us-ascii?Q?JGsx53a1GVXdy0xAy8WKExNSgK8XFhWaqfCnFzeHR2nltOCpfTSO1+ls6JLJ?=
 =?us-ascii?Q?al3RkrOYcdvoBhLJhCp5LTEs0DcfJBsUzK/CDo0SGnjG5yoFLM23M5lZwfHP?=
 =?us-ascii?Q?LRF6dJNlP9q401PVPne6LBnomT80hxlMSXX+qcV9x5e/xGpdakPrlfH+fh07?=
 =?us-ascii?Q?vIQYVRVcjVSsD2K+xpx6KonQAqh7xIw8MjJBwTZymvYNAgfM5TXR0Qf4I9Rn?=
 =?us-ascii?Q?mGS3304aFkMW2RQm4ag3YIWxxXeyalsfWtG3RcGc3vNNyCyjDLUippC1N2r5?=
 =?us-ascii?Q?Qfp5uYkrsnfqx9buENqEB86Cf537RsjDJJ7U1V+gZ0QpMUmqK0j4P+hO9oRM?=
 =?us-ascii?Q?GkfFj7Ov3FnlTpRtDmRLj32VkLI6T8QYc1xjfMdjBWTc2cx8ZLzuM5+KeZeN?=
 =?us-ascii?Q?A8ecJH3bvuPzoWUx5OCOdVlmIyj7x3UlMtM/X4e0/q1Z1IDvmdrCSykkkKlO?=
 =?us-ascii?Q?tKkGqdSzacnydHfjWoeQ8X6OU19Zn5FJzZiP0e3Mp3E6uh3QZvxO7YdLlUSX?=
 =?us-ascii?Q?ynUp/5BUIpZX2vbxc+SzqJcmB8YitiFNc6dS3/P/9KXFoCNROE0hOq4/2Atp?=
 =?us-ascii?Q?G4kmv9f+WkQTEQh4ulrq1+FuHCSi+zvHHrjEtOG1ZfMOwTGRIxtS2QReO+5B?=
 =?us-ascii?Q?uRSgyQw/E03TWpzYnq9YUGcvzfYO5OWACkqzl/a+DwTUvMrXY5O/u1TxJNOq?=
 =?us-ascii?Q?KrV7GIqziLdxRfJ/+8WaaZuS51UwGgS7q2tJM6bYozeYvMCkDksILyLZfAkT?=
 =?us-ascii?Q?+6oB5qaCTneJMz/EMD0zy+nXwGXEk9oFJ2I/g7nkXXy94giN4BiG14y1fpTP?=
 =?us-ascii?Q?FFKb3ph0ooZuHqIKN+YogDaJfOadFBgmb58kBs2jnl1M6Qtly9Zyn1SLyERT?=
 =?us-ascii?Q?xPeFQCG72kY2OzwUwPRoXro8CGKA9BkZ4BRHQXlGkOo0zHrb1m01t9CO+orB?=
 =?us-ascii?Q?3XubAahOpxPwAUC8HSD+52Zk9U+Wfo3tp1Am7NqM6S+F5WMC8e5+cJQH9X2C?=
 =?us-ascii?Q?+7iLkeEBnUa8thm8rpHlvXvHjPIbNqlpbdNr3h+m7GKnU3POM1nz5FETj+HK?=
 =?us-ascii?Q?zWqLQlusDRz4LGwuwGG9QR4waFCx2zowB0vvEkPuiCZt7zycIW0bUUoHZ/le?=
 =?us-ascii?Q?uNsqZTOit60Bmk1QDo/d3ezFsY2skdmS7RjyY7xhcHpyR2jR0iaTBuxDRgy7?=
 =?us-ascii?Q?yJqrW/4cy7vjEjec9/epBfqhRjU8csSeuWi6Xz2DROB5+wANSzcl8od2YsI7?=
 =?us-ascii?Q?bfNqjEkXAQC99tUEVrR/QOKM8O9m1eLZOJR2GsGOwgvfPrXnw+RTGNk3xgS5?=
 =?us-ascii?Q?5NNfoz3rTxHwp033IK23pN1PHnkQT8UKk3CZR5OkuzXWMaTh1KUzvCqGegOq?=
 =?us-ascii?Q?86TJ4HLZ6sOzmzyI1KgfMD917C5XOFcVzDbzzMED7y10udDuqT5Ks1e2dOK3?=
 =?us-ascii?Q?qQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f441b04-75c1-4fbd-9a4a-08dc53f35193
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 15:32:49.3138 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kyybdDrTbVx2x4i7UvnngTkEsUrwUFl/JjtuB6Q4tC2p+8oTTRlAmK9ncHT3TGtnurskm//23AXyT8RwKHwzahkq2Lef6RzrLK3naoNTWb8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7698
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

On Thu, Mar 28, 2024 at 12:33:09PM +0200, Jani Nikula wrote:
>On Thu, 28 Mar 2024, Andi Shyti <andi.shyti@linux.intel.com> wrote:
>> Hi Arun,
>>
>> ...
>>
>>> -	drmm_mutex_init(&xe->drm, &xe->sb_lock);
>>> -	drmm_mutex_init(&xe->drm, &xe->display.backlight.lock);
>>> -	drmm_mutex_init(&xe->drm, &xe->display.audio.mutex);
>>> -	drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex);
>>> -	drmm_mutex_init(&xe->drm, &xe->display.pps.mutex);
>>> -	drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex);
>>> +	if (drmm_mutex_init(&xe->drm, &xe->sb_lock) ||
>>> +	    drmm_mutex_init(&xe->drm, &xe->display.backlight.lock) ||
>>> +	    drmm_mutex_init(&xe->drm, &xe->display.audio.mutex) ||
>>> +	    drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex) ||
>>> +	    drmm_mutex_init(&xe->drm, &xe->display.pps.mutex) ||
>>> +	    drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex))
>>> +		return -ENOMEM;

My suggestion from v1 was to assign and check the return value, not to
hardcode the return like done here. Now we have a v3 going back to v1
and we never had what was suggested. Why? Let me be explicit and type
it:

	if ((err = drmm_mutex_init(&xe->drm, &xe->sb_lock)) ||
	    (err = drmm_mutex_init(&xe->drm, &xe->display.backlight.lock)) ||
	    (err = drmm_mutex_init(&xe->drm, &xe->display.audio.mutex)) ||
	    (err = drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex)) ||
	    (err = drmm_mutex_init(&xe->drm, &xe->display.pps.mutex)) ||
	    (err = drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex)))
		return err;

I also said I usually don't like assign + check in the same statement,
but all the alternatives I've seen here are worse.

However it turns out all of these display mutex initializations are
actually wrong after commit 3fef3e6ff86a ("drm/i915: move display mutex
inits to display code"), which predates xe in the tree.

	drivers/gpu/drm/i915/i915_driver.c:     intel_display_driver_early_probe(dev_priv);
	drivers/gpu/drm/xe/display/xe_display.c:        intel_display_driver_early_probe(xe);

So intel_display_driver_early_probe() is actually called from xe, which
does the mutex_init() (and misses the mutex_destroy()). Am I missing
anything?

>> why not extract the value from drmm_mutex_init()? it would make
>> the code a bit more complex, but better than forcing a -ENOMEM
>> return.
>>
>> 	err = drmm_mutex_init(...)
>> 	if (err)
>> 		return err;
>>
>> 	err = drmm_mutex_init(...)
>> 	if (err)
>> 		return err;
>>
>> 	err = drmm_mutex_init(...)
>> 	if (err)
>> 		return err;
>> 	
>> 	...
>>
>> On the other hand drmm_mutex_init(), as of now returns only
>> -ENOMEM, but it's a bad practice to assume it will always do. I'd
>> rather prefer not to check the error value at all.
>
>And round and round we go. This is exactly what v1 was [1], but it's not
>clear because the patch doesn't have a changelog.
>
>This is all utterly ridiculous compared to *why* we even have or use
>drmm_mutex_init(). Managed initialization causes more trouble here than
>it gains us. Gah.

I think managed initialization make sense to keep the teardown/unwind
part sane (which is often not tested). However drmm_mutex_init() maybe
is overkill indeed. We started using it because people often forget the
mutex_destroy() and drm/  as whole started using it. Compare:

	git grep mutex_init -- drivers/gpu/drm/i915/
	git grep mutex_destroy -- drivers/gpu/drm/i915/

This is only an issue when mutex_init does more than init, which is the
case with CONFIG_PREEMPT_RT + CONFIG_DEBUG_MUTEXES, which most people
don't have set so they don't see it, CI doesn't see it, but it causes
problems for people who have that set. Maybe what we could have would be
a drmm_mutex_vinit(mutex, ...) so we can do:

	err = drmm_mutex_vinit(&xe->drm,
			       &xe->sb_lock,
			       &xe->display.backlight.lock,
			       ...,
			       NULL);
	if (err)
		return err;

or... just stop using drmm_mutex_init and add the destroy.  No need for
unwind as mutex_init() can't fail. We still need to keep the destroy
explicit, but I think that would be fine (and doesn't cause 1 allocation
per mutex).

Lucas De Marchi

>
>BR,
>Jani.
>
>
>[1] https://lore.kernel.org/r/ki4ynsl4nmhavf63vzdlt2xkedjo7p7iouzvcksvki3okgz6ak@twlznnlo3g22
>
>
>>
>> Andi
>>
>>>  	xe->enabled_irq_mask = ~0;
>>>
>>>  	err = drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
>>> --
>>> 2.25.1
>
>-- 
>Jani Nikula, Intel
