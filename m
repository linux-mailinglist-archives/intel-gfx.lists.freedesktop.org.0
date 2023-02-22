Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3736069FBB5
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 20:08:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A17F710E2DE;
	Wed, 22 Feb 2023 19:08:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFC4C10E2DE
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 19:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677092908; x=1708628908;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=1VDQjpNiOkKZE0aAWA9GumrjiBMIQOFhqxqcjYw0BzQ=;
 b=CHCRJqye9pghG6DXXPT4ChULxLkn0OhV8GRxF3/eCXOwv6AEWVk1YpEk
 uAvkEF10hC/PCF7BDhD5V4LLsBkhlBbTHpzXhrYY8XDjck+vLQUpqk/vv
 kTGaL0/ifHCGFNZFAfDgqpasoDG2j9XxINiQav28Z5phjm0gczIdG7vpr
 aSmuJvo+M+WhhoigCSZKPo11opTfrhM3CsWhfvhoK4bX3KjgRxKiHW93U
 tigB1q1qatwNX8AQ09Kkz4SlIp/v+qYCcTXJMNyuojav1idQU9lyRUfoV
 P0EYkdAEjIS1MaNKdaDiQwEggpsgvq2wqAMsLt+mvchpu9DErU9naVKNX g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="397708484"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="397708484"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 11:07:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="1001103103"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="1001103103"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 22 Feb 2023 11:07:33 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 22 Feb 2023 11:07:32 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 22 Feb 2023 11:07:32 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 22 Feb 2023 11:07:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NTRSBHvWsKyCD3LKpFLY+tqxBr3PasmimsRKderXrH7z5Y0rCJISbOmaR+j69lDB6JWUGhqMnDM8jjHqXZ9JJi2ne5ZD4dC0pedfHXqdEBt2F13muLxNWD3OK8zBt8fKKi8XnTxi+CFi1FYr8ncjzfclQSSFv+53VgIl5ZsXPk/AKAVWrx9EtbdR5Gti7m7Cdczp6IQo/NVwiP/VJUNgFDYiMEhX0nOPH0zm93yCxpiMz6AD09CeBgS7tLoLMtu3Z3PqSFR1XBlSXEuERjvwOKyRnGpee0WdDFyasyUvMPif8qpvKWGMdP6LUcZ7RmbEdR3ic4lrGqXryKImg2MK/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VrcW4RMlQMWZ0UVkcGbtVo9CylVxCb9NhO9LZro0Bmg=;
 b=oVjTFipkzHyuSJjavdiDTziZ2wXg7112EoDNSUqiy8TzXSwqj4/XJfCr01K7kXx26wIvml8VspVj3niAjijawHBoLvX73yrfKIAyLTZEljvIMmgqEJ6SWD6EFpOLJ7PSSuBrPRam6Z6UB+qq9jJs1wj+SMF/sdIMe+vYl5JeZddrrvS94T6NbjX8as6E9NbdvoOXPW9foclH0NVtnk5FYODzipcrA0srgJbo7T9uxhS114r5/cF/iD8+LEi/K7sjSWB0pck/VqXVvJRjV8OBpdj2KLQbYaUudy/XiJ6iVLdAT+5evQWcTW/lFRtddjv06to8vYp+Vn/jOsz5IeUfUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 IA1PR11MB6347.namprd11.prod.outlook.com (2603:10b6:208:388::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6111.21; Wed, 22 Feb 2023 19:07:30 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%5]) with mapi id 15.20.6111.021; Wed, 22 Feb 2023
 19:07:30 +0000
Date: Wed, 22 Feb 2023 11:07:27 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <Y/Zn78OVzn3wfxF+@mdroper-desk1.amr.corp.intel.com>
References: <20230222073507.788705-1-radhakrishna.sripada@intel.com>
 <20230222073507.788705-5-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230222073507.788705-5-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0PR03CA0060.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::35) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|IA1PR11MB6347:EE_
X-MS-Office365-Filtering-Correlation-Id: 167d9a71-51c8-4c92-7b74-08db15080b6b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: joNZ3Y72ouzGEj14BJywBR//ZYtX+Y4OYoeipzu3hJpwQDSvDpfQ/6200zUUJGAhZJZ0pQuE7QTwrGjb99KAOlrBr9/PQt1hA5KdRohgGEt4BVYAAPZnWK7wmVjjG3pKLqKc26pI4X70HTnQFVWxtoUEaRAOI4jyyg1gKGiTQU9HRUxo+AYf4uPGj1CXRMhgm0yAIi6ZBlKTQ+Pusbs0Y1Xp1dmjVJOsd8/ykTeWhyINLmuKNY57RC/6HB8z2XO7UxjcdZdAzWrLbOQH8yEjCHMSyPU0HXyBxgZbfas/rNTd2WQAqvSRHM+lRavWQX9qjc+7AlEW9s4y/sqAcoKDtUllL+zwS4awIBngVfnzlZdb3kGlVJf/DTXVDtt4cA+dzkPcALVtGcVOiXVa8vEa4JsoQhBRjIAqdq6ZjWBq66azV+5AhoXzaY9IyiIs+lI/m4iAWnID7jLcd3nNfBIa86YEMzZk2KTh7miK0VtJxRICbbJJay0NptPNGYhgotzdxp/FkzXmWSXNYzwUNirt23DyLfFu7leK/TpIvvGo8V8EL0s5Uyrof9t51tJlkkVt87u1zpq6t1lLOKFglzX7NUyukxX6w1E9wxdIsh89P/bHBmPCKDZXNWVwZJhrUh307ynrb3qYfjQftMsURukCug==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(376002)(396003)(346002)(366004)(136003)(451199018)(83380400001)(186003)(41300700001)(6636002)(6512007)(26005)(316002)(6506007)(86362001)(6486002)(478600001)(6666004)(8676002)(66476007)(4326008)(66946007)(66556008)(2906002)(82960400001)(38100700002)(5660300002)(6862004)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PjmaS8NPfsLFRBYOMfVIcZ2FL3NlkQA98e/cycSKlZpy17m/4bzhE247Je3U?=
 =?us-ascii?Q?1mB8XE532fFsbnjVGNsx9u6sm9D8CWh+/bw7WWsjPSvDQqXI6MI7EHKrcPpn?=
 =?us-ascii?Q?R2MyQrripv0OYoGh31znxBNaLc4z8toTDb4sOFELnemDASlPsRh00fiyCqPl?=
 =?us-ascii?Q?nZpgPG0GTFfUDGueGzuc09/01f7NOlUUN/3twYi7/x90FcIMtfxQ3oHNk3CT?=
 =?us-ascii?Q?bOp7JP6Fmk69/+2mvV9f2tu+6VMq9U+7K0sLBxexfCG+E3pqJOO2ciKhdaKA?=
 =?us-ascii?Q?834XO+g1dlD+ZFe7AehoCXuW5EicX88FSMRWL+8ia41ETOJpXVBHrJKPgcW0?=
 =?us-ascii?Q?rcXjrRI4bABR8eYZUUKWc8upDCJrRJpxUMAI+wAYjZEsKJTD07ZMiDCm9Wkc?=
 =?us-ascii?Q?KpYKRJNTnZjYp+X3nQzOvs3yaYJHzX4nCfLqgm28uvOheqAseoE2quZbXiec?=
 =?us-ascii?Q?SSAmCkzTPmxcsFp4KsG6DdkVKcxJOQCrEXRZZrgSzhnOsGTV4ddcRjGhq4u1?=
 =?us-ascii?Q?jxIIyBPz8xeGFEvJ0xXEw4pYiBCd9kGrophp97fYtRFjEv0qKN9/PCFoE3cn?=
 =?us-ascii?Q?2JSMH/Liy6hJHeoEhh/CKPMXaYsKNnBuWzrD2wTq8N7vP7ue4n5X80YL2rBW?=
 =?us-ascii?Q?epX3aXAfzv8Q5TixSO4hzYoIz+DPUTHWVI/tlynKnQqJLFuFYYLFz/fZM2ge?=
 =?us-ascii?Q?QZdl0JDMHmkl20p+BJ0Crxz8Zrpd6xPsZu8uIRahxb6OSCzgnn37FNzP2i1V?=
 =?us-ascii?Q?KJAnMHq7bxG+2nacB53t4UGGsISrV8KlOcjZqA75dzYlKfSxSP6U5J3NzoYd?=
 =?us-ascii?Q?SjSLpljkPlZHJe7YxbS+1mHKkrHMf6V5TsDeCHK3hwUqFsYS0nsEtOz9LHfX?=
 =?us-ascii?Q?vnucebKdt/vQ5FB2wNvnejClrQOmVlHv61eBEqDCEVI9S0IfA+l1HOOs8n7M?=
 =?us-ascii?Q?7y6iSHrb5q3ykNgxpyHQkLMHoayo0r7rEckmIdRiTZYtCN1A00o/diWn5r5b?=
 =?us-ascii?Q?Bomb3U3VhaDKPd2gOT/0g3wfH8UxIS/SzDP+D17jBC8VFqeI4oF4nS3Q+0lf?=
 =?us-ascii?Q?u4IWzu9vmtCqvsX4+C194Ht1NvkqkFAK7CJI2+OddRTF/8+ddIb8o1B+Onv9?=
 =?us-ascii?Q?Uxmg6qx9jpRYmxz+hgtSZ5lTbSmDc1xk+YsaptEHdaue7r3nP8it722hGY4y?=
 =?us-ascii?Q?Ybo1ovR9r3CCcRCr/0Z0lU+V5VYOoNB5Ow33wmTrNPM3SnnTqTNujeR4HfVo?=
 =?us-ascii?Q?HAoOpS5dRtlRFRz6UT4EhR1hLjwaD1PBXBA40FC7pIQzbG95mY84o/d+CSye?=
 =?us-ascii?Q?byV9IoDL1B1SqLGf+7U7CBQO31GV1IXfpnpSD47hu6H6U+HBUoAEZOG18Gwl?=
 =?us-ascii?Q?xLzw551PHWwlLEy4ai00fsMC6v7T/Pml4AonvOyoCoYe1RzxNxuuxHe1wrd2?=
 =?us-ascii?Q?LMQuljM/zDORoBjLclWooXQ5WvutzNaepCV3/6aFstASy3FEHgk3jhiBYgSk?=
 =?us-ascii?Q?tXTJgLmP2bc19JzH8IyxluHEA+rMB6xyMgx15n9SPFJqIOB0H6OqJbJl+wUU?=
 =?us-ascii?Q?d6x7Fvn7G+PIQ6k2k4GbFks8XglCphu0yblCczSlbrt2QzwvOP69IpnFmbCj?=
 =?us-ascii?Q?Lg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 167d9a71-51c8-4c92-7b74-08db15080b6b
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2023 19:07:29.9990 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LTW7c7mChryaxah2Swa9Or+c2fQDDLBrySeOkZnt0b4ZrDiUQntwhbYlDCGvfv4b9xD+Z0J4mPsydcuO3xyooJs+boyy8T9p1Nns2xS2d/U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6347
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 4/9] drm/i915/fbdev: lock the fbdev obj
 before vma pin
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 21, 2023 at 11:35:02PM -0800, Radhakrishna Sripada wrote:
> From: Tejas Upadhyay <tejas.upadhyay@intel.com>
> 
> lock the fbdev obj before calling into
> i915_vma_pin_iomap(). This helps to solve below :
> 
> <7>[   93.563308] i915 0000:00:02.0: [drm:intelfb_create [i915]] no BIOS fb, allocating a new one
> <4>[   93.581844] ------------[ cut here ]------------
> <4>[   93.581855] WARNING: CPU: 12 PID: 625 at drivers/gpu/drm/i915/gem/i915_gem_pages.c:424 i915_gem_object_pin_map+0x152/0x1c0 [i915]
> 
> Fixes: b473df22760f9 ("backport "drm/i915: Add ww context to intel_dpt_pin, v2.")

This Fixes line isn't correct.  I think you wanted:

Fixes: f0b6b01b3efe ("drm/i915: Add ww context to intel_dpt_pin, v2.")
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

BTW, your git-sendemail configuration seems to be incorrect; even though
there are Cc's in the body of several of your patches, they're not being
picked up to send copies to the necessary people.


Matt

> Cc: Chris Wilson <chris.p.wilson@intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c | 24 ++++++++++++++++------
>  1 file changed, 18 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 3659350061a7..2766d7ef0128 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -210,6 +210,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
>  	bool prealloc = false;
>  	void __iomem *vaddr;
>  	struct drm_i915_gem_object *obj;
> +	struct i915_gem_ww_ctx ww;
>  	int ret;
>  
>  	mutex_lock(&ifbdev->hpd_lock);
> @@ -283,13 +284,24 @@ static int intelfb_create(struct drm_fb_helper *helper,
>  		info->fix.smem_len = vma->size;
>  	}
>  
> -	vaddr = i915_vma_pin_iomap(vma);
> -	if (IS_ERR(vaddr)) {
> -		drm_err(&dev_priv->drm,
> -			"Failed to remap framebuffer into virtual memory (%pe)\n", vaddr);
> -		ret = PTR_ERR(vaddr);
> -		goto out_unpin;
> +	for_i915_gem_ww(&ww, ret, false) {
> +		ret = i915_gem_object_lock(vma->obj, &ww);
> +
> +		if (ret)
> +			continue;
> +
> +		vaddr = i915_vma_pin_iomap(vma);
> +		if (IS_ERR(vaddr)) {
> +			drm_err(&dev_priv->drm,
> +					"Failed to remap framebuffer into virtual memory (%pe)\n", vaddr);
> +			ret = PTR_ERR(vaddr);
> +			continue;
> +		}
>  	}
> +
> +	if (ret)
> +		goto out_unpin;
> +
>  	info->screen_base = vaddr;
>  	info->screen_size = vma->size;
>  
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
