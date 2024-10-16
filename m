Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F41239A04F3
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 11:01:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8835010E013;
	Wed, 16 Oct 2024 09:01:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HXZu5DDy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73E5110E013
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 09:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729069282; x=1760605282;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=RuE1gca2g3MQ1WUveMceG+w9/0Yywla/CilHKwozaSY=;
 b=HXZu5DDyGhBQKRii4neJ4QbRGSmjXg2ZtgP56v1Z6OYZNlLTUqvq6kkf
 5EeNdCYCpsb05Q+tUJG1MVbx8+5bGgnthr6O9uzRn6QPuOnZl6IjxIHvZ
 cSovL1gBXVQrOCt9Fra44hO9zLTkcRuJPJdoE19jn4Hj5S5DaypUjt4ta
 LWVVpu2xxlOZ54WBKpL8jcBbKvun+Zscu9jemG51OxeQz7dY90FgIvwjQ
 Np2aihdMakTurL7YxNr1JXBDTpch02n97Jm/vG2YSsvdSk4TDC1AEzAtX
 vJGsvS6KmDYpHMFueVdsXAlNhLWWPnE6rDM9N4KfsDOtob6kiBYWHrVV1 Q==;
X-CSE-ConnectionGUID: emrjaNPsRCu68/8pHUPlYw==
X-CSE-MsgGUID: 1HOHzDTLRHW9EwAw9u9XuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="27977964"
X-IronPort-AV: E=Sophos;i="6.11,207,1725346800"; d="scan'208";a="27977964"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 02:01:19 -0700
X-CSE-ConnectionGUID: 1cnHGJE4THuFwfqXGp39EQ==
X-CSE-MsgGUID: G99iPtckRBWUx0a0tsQs5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,207,1725346800"; d="scan'208";a="78997646"
Received: from black.fi.intel.com ([10.237.72.28])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 02:01:15 -0700
Date: Wed, 16 Oct 2024 12:01:12 +0300
From: Raag Jadav <raag.jadav@intel.com>
To: Riana Tauro <riana.tauro@intel.com>
Cc: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com, intel-gfx@lists.freedesktop.org,
 anshuman.gupta@intel.com, badal.nilawar@intel.com
Subject: Re: [PATCH v2 3/4] drm/i915/wa: Introduce intel_wa_cpu.c for CPU
 specific workarounds
Message-ID: <Zw-A2Ej-5FWaWukj@black.fi.intel.com>
References: <20241011103250.1035316-1-raag.jadav@intel.com>
 <20241011103250.1035316-4-raag.jadav@intel.com>
 <e5b7b830-2c7b-4e64-bf5f-9fa06a61a78b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e5b7b830-2c7b-4e64-bf5f-9fa06a61a78b@intel.com>
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

On Tue, Oct 15, 2024 at 03:56:10PM +0530, Riana Tauro wrote:
> Hi Raag
> 
> On 10/11/2024 4:02 PM, Raag Jadav wrote:
> > Having similar naming convention in intel-family.h and intel_device_info.h
> > results in redefinition of a few platforms. Define CPU IDs in its own file
> > to avoid this.
> > 
> > Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> > ---
> >   drivers/gpu/drm/i915/Makefile               |  1 +
> >   drivers/gpu/drm/i915/gt/intel_wa_cpu.c      | 34 +++++++++++++++++++++
> >   drivers/gpu/drm/i915/gt/intel_workarounds.h |  2 ++
> >   3 files changed, 37 insertions(+)
> >   create mode 100644 drivers/gpu/drm/i915/gt/intel_wa_cpu.c
> > 
> > diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> > index c63fa2133ccb..1f9b503ab976 100644
> > --- a/drivers/gpu/drm/i915/Makefile
> > +++ b/drivers/gpu/drm/i915/Makefile
> > @@ -121,6 +121,7 @@ gt-y += \
> >   	gt/intel_timeline.o \
> >   	gt/intel_tlb.o \
> >   	gt/intel_wopcm.o \
> > +	gt/intel_wa_cpu.o \
> Why is this file under gt/ ? Doesn't seem to be gt specific

The idea is to couple it with intel_workarounds.c
Any other place it'd rather be?

> >   	gt/intel_workarounds.o \
> >   	gt/shmem_utils.o \
> >   	gt/sysfs_engines.o

Raag
