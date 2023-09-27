Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5077B07A8
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 17:08:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD9C810E06C;
	Wed, 27 Sep 2023 15:07:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D01210E1D8
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Sep 2023 15:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695827276; x=1727363276;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=JbkpjSYQcMq8L70Tx15Ul8x/rfCJ/5ccQk1Iy4CcClQ=;
 b=LpDDYrkVecxvXnuw8s0Mq7nQZDOBCF6xfR886feVj83adrs+0lzj2ev1
 F4sPrN2U5wuH94O8bcPSOLuA8mv/sk490q5GVLXGX35OftooyS8Cfu6Pf
 KvhjZsNd/qs0VOlB3fpJtTmJpFyq5oeLk8ZIAnwnCCNVCjUgMbWVPrMdO
 ga8OZOOz5liGiNkXE+PbQ52P7hzmfzOKieMa97AgPkvAc+17y/QUR3RqH
 VkZDSI4M2i77UkYNDbiptbk9xHsAfpkpUXHbYuP6jkpod3YGkGri9VDKk
 HZoVGZADmp8cb592Pvzp4KmjK/8HFWlyQN/M+lbJZTE4Syw8MWlNHvqOT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="412757018"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="412757018"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 08:07:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="996178547"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="996178547"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga006.fm.intel.com with SMTP; 27 Sep 2023 08:07:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Sep 2023 18:07:52 +0300
Date: Wed, 27 Sep 2023 18:07:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZRRFSPuzZmm-pvOa@intel.com>
References: <20230922193518.723664-1-animesh.manna@intel.com>
 <87lecumo4z.fsf@intel.com>
 <BL1PR11MB59796856C4C80FE3461F13B9F9C3A@BL1PR11MB5979.namprd11.prod.outlook.com>
 <87v8bxl1lg.fsf@intel.com> <ZRQzKU1ePbiqDtUJ@intel.com>
 <87il7vk6vx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87il7vk6vx.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: DSB code refactoring
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 27, 2023 at 05:50:10PM +0300, Jani Nikula wrote:
> On Wed, 27 Sep 2023, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Tue, Sep 26, 2023 at 12:34:35PM +0300, Jani Nikula wrote:
> >> On Tue, 26 Sep 2023, "Manna, Animesh" <animesh.manna@intel.com> wrote:
> >> >> -----Original Message-----
> >> >> From: Jani Nikula <jani.nikula@linux.intel.com>
> >> >> Sent: Monday, September 25, 2023 6:00 PM
> >> >> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> >> >> gfx@lists.freedesktop.org
> >> >> Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: DSB code refactoring
> >> >> 
> >> >> On Sat, 23 Sep 2023, Animesh Manna <animesh.manna@intel.com> wrote:
> >> >> > Refactor DSB implementation to be compatible with Xe driver.
> >> >> 
> >> >> Sad trombone.
> >> >> 
> >> >> struct intel_dsb should remain an opaque type. I put effort into hiding its
> >> >> definition, so its guts wouldn't be accessed nilly-willy all over the place. If it's
> >> >> not hidden, it just will get accessed.
> >> >
> >> > Hi Jani,
> >> >
> >> > Xe driver need access to intel_dsb structure, so I can create a new header file intel_dsb_ops.h and keep intel_dsb structure in it. Is it ok?
> >> 
> >> I just think you need to find a different abstraction level that doesn't
> >> involve exposing struct intel_dsb.
> >
> > I hate the fact that we seem to be adding these ad-hoc wrappers all
> > over the place. Someone should just fix xe to give us the same API as
> > i915, or a single wrapper should do whatever conversion is needed.
> 
> I think one of the problems is that i915 doesn't really give us a proper
> API either, but requires us to fiddle with the objects' guts, and thus
> have access to the struct definitions. In i915, with the include
> hierarchies, that effectively means including absolutely
> everything. Can't have that in xe.

obj+vma is a pretty reasonable API IMO. And we're not doing anything
weird with their guts IIRC. But apparently xe decided to not give us
that, and instead of adding a single wrapper to bridge the gap we
now have several different ad-hoc wrappers for whatever reason.

> 
> Having the same API for both i915 and xe requires turning it into an
> actual API that doesn't depend on either i915 or xe specific types. But
> that's kind of tough before xe is upstream. Catch-22.

Nothing preventing anyone from coming up with the single wrapper and
upstreaming the i915 side (assuming we even want some kind of extra
wrapper for i915 given it already uses a reasonable approach).

> 
> Part of the reason we have these ad-hoc wrappers is that they also serve
> as the todo list of stuff to fix properly.

Feels more like we are trying to polish these to the point where
they are supposed to be permanent solutions.

-- 
Ville Syrjälä
Intel
