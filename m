Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC29F88F03F
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 21:37:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18F4C10E18A;
	Wed, 27 Mar 2024 20:37:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bA27qrmb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44ED810FFF0
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 20:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711571841; x=1743107841;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=pl4LQSvxJdeR/8pByjaoLRbo39A2PL+HqbmJnsIxzGg=;
 b=bA27qrmb/OdvA5LS3vgKkPuV+gYeGQk31r0WHo2XC2sy+bqAnCaMTjju
 wq6k+IxzjYWsnEM37qHvhjkGNWiaQuUzYcCBZEsstnQNVOyzlf3L5K1uA
 lRqH7/80Ds1WRQtdo4L+s+fh+mG4Yxf/8QGOgIlG8xKxdngB+sVRBlhG5
 nY9PgDYjtPTBuxtPzo943vvcxSJMobSZpWjRQVmvWkQre5EyGkBsOzKrf
 nWIo1g5JV0Ird4cxeGjmjm923lBclv92S7Esk2OxeWt4+18v7J+rEQLg+
 FbXrXoaIGw8P4+6TNyck+Q1Hy+plNevhbgffgzj1LFCRHdnxwPSRkelbA g==;
X-CSE-ConnectionGUID: ySDN2HRZTeKKvYA4ssaCyg==
X-CSE-MsgGUID: 2r1DN54nTNycSnBe4Su99g==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6817491"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6817491"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 13:37:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="16439322"
Received: from orsosgc001.jf.intel.com (HELO orsosgc001.intel.com)
 ([10.165.21.138])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 13:37:20 -0700
Date: Wed, 27 Mar 2024 13:37:19 -0700
Message-ID: <85frwb5s3k.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: "Krzysztofik, Janusz" <janusz.krzysztofik@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nilawar, Badal" <badal.nilawar@intel.com>, "Gupta,
 Anshuman" <anshuman.gupta@intel.com>, 
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Roper,\
 Matthew D" <matthew.d.roper@intel.com>
Subject: Re: [PATCH] drm/i915/hwmon: Remove i915_hwmon_unregister() during
 driver unbind
In-Reply-To: <5934737.MhkbZ0Pkbq@jkrzyszt-mobl2.ger.corp.intel.com>
References: <20240326124838.3049215-1-badal.nilawar@intel.com>	<3291198.aeNJFYEL58@jkrzyszt-mobl2.ger.corp.intel.com>	<b132ded3-bf0c-48b1-a4ef-29e22c9ca81f@intel.com>	<5934737.MhkbZ0Pkbq@jkrzyszt-mobl2.ger.corp.intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.2 (x86_64-redhat-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
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

On Wed, 27 Mar 2024 02:15:27 -0700, Krzysztofik, Janusz wrote:
>

Hi Janusz,

> For me, that still doesn't explain why you think that i915->hwmon reset to
> NULL on i915 driver unregister can be the root cause of the reported UAF in
> hwmon sysfs and this patch is going to fix that UAF issue.  I can see no
> references to i915->hwmon in that code, and even then, that's not NULL what is
> reported here as non-canonical address.  The code is using a no longer valid
> pointer to an already freed (and poisoned) memory.

Correct, I said basically the same thing in my reply to the patch. That the
patch doesn't explain that ddat seems to have been freed and poisoned.

> > > I think that instead of dropping i915_hwmon_unregister() we have to actually
> > > unregister hwmon in the body of that function, which is called from
> > > i915_driver_unregister() intended for closing user interfaces, then called
> > > relatively early during driver unbind, so hwmon sysfs entries disappear before
> > > i915 structures, especially uncore used by hwmon code, are freed.
> >
> > You mean uncore are freed before hwmon get unregistered, I don't think
> > so. uncore is also drm device managed resource so in sequence I think it
> > should be freed after i915 dev managed resources freed.
>
> If both uncore and hwmon are managed resources of i915 device then how can you
> predict which of them is released first?

Look at __hwmon_device_register. Here we see:

	hdev->parent = dev

So the hwmon device is a child device of the drm device (against which ddat
is devm_kzalloc'd). Since a child device holds a reference against the
parent (device_add() has get_device(dev->parent)), I would expect the hwmon
device to disappear before the parent drm device. And I am assuming hwmon
sysfs is linked to the hwmon device, so sysfs should disappear before ddat
getting freed. But apparently this is not what is happening, so there's
still something we are missing.

Thanks.
--
Ashutosh
