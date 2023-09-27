Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3746D7B09EE
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 18:23:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BA2310E567;
	Wed, 27 Sep 2023 16:23:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F258210E567
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Sep 2023 16:23:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695831807; x=1727367807;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=EClRTTZrkGbdhBoUdzZwlXnxul1gtBwS9Wt00/QPwOU=;
 b=YRCAo4MoeOuBSC+WtZT3a3HaTpWVckoxAP9X8/EVUnpWbSiFO1LP5Xrk
 98i5zdbf+tu6ZsEPlLSUcMNqhq5eNFCpCbNiNS6cJTN7xP8r33d2XSqh2
 4XnOXoj2ebqDWpBD3MwrYT6HRoHD/zCplGKzYUZ6TMrQa97kPUC3Iiij7
 xqMdb0qxE6AbylRoeubW69432EHFaDLksi58hEr+3Sly85trcaNPoCXFS
 t37IBTxBjHhDz1/AeO2UNT7/Avs+n/f6HjN9Jw759o+cQPLdD1Wr9IraU
 OlCctToa/BlUFTy/xZNOjZeZX5WKCsTzS7U2Ehbd5dqsD7did6cJnOf/k Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="379142760"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="379142760"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 09:17:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="742765502"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="742765502"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga007.jf.intel.com with SMTP; 27 Sep 2023 09:17:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Sep 2023 19:17:06 +0300
Date: Wed, 27 Sep 2023 19:17:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZRRVgj0L5lRSg1u0@intel.com>
References: <20230922193518.723664-1-animesh.manna@intel.com>
 <87lecumo4z.fsf@intel.com>
 <BL1PR11MB59796856C4C80FE3461F13B9F9C3A@BL1PR11MB5979.namprd11.prod.outlook.com>
 <87v8bxl1lg.fsf@intel.com> <ZRQzKU1ePbiqDtUJ@intel.com>
 <87il7vk6vx.fsf@intel.com> <ZRRFSPuzZmm-pvOa@intel.com>
 <87fs2zk3fe.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87fs2zk3fe.fsf@intel.com>
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

On Wed, Sep 27, 2023 at 07:04:53PM +0300, Jani Nikula wrote:
> On Wed, 27 Sep 2023, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Wed, Sep 27, 2023 at 05:50:10PM +0300, Jani Nikula wrote:
> >> On Wed, 27 Sep 2023, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> >> > On Tue, Sep 26, 2023 at 12:34:35PM +0300, Jani Nikula wrote:
> >> >> On Tue, 26 Sep 2023, "Manna, Animesh" <animesh.manna@intel.com> wrote:
> >> >> >> -----Original Message-----
> >> >> >> From: Jani Nikula <jani.nikula@linux.intel.com>
> >> >> >> Sent: Monday, September 25, 2023 6:00 PM
> >> >> >> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> >> >> >> gfx@lists.freedesktop.org
> >> >> >> Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: DSB code refactoring
> >> >> >> 
> >> >> >> On Sat, 23 Sep 2023, Animesh Manna <animesh.manna@intel.com> wrote:
> >> >> >> > Refactor DSB implementation to be compatible with Xe driver.
> >> >> >> 
> >> >> >> Sad trombone.
> >> >> >> 
> >> >> >> struct intel_dsb should remain an opaque type. I put effort into hiding its
> >> >> >> definition, so its guts wouldn't be accessed nilly-willy all over the place. If it's
> >> >> >> not hidden, it just will get accessed.
> >> >> >
> >> >> > Hi Jani,
> >> >> >
> >> >> > Xe driver need access to intel_dsb structure, so I can create a new header file intel_dsb_ops.h and keep intel_dsb structure in it. Is it ok?
> >> >> 
> >> >> I just think you need to find a different abstraction level that doesn't
> >> >> involve exposing struct intel_dsb.
> >> >
> >> > I hate the fact that we seem to be adding these ad-hoc wrappers all
> >> > over the place. Someone should just fix xe to give us the same API as
> >> > i915, or a single wrapper should do whatever conversion is needed.
> >> 
> >> I think one of the problems is that i915 doesn't really give us a proper
> >> API either, but requires us to fiddle with the objects' guts, and thus
> >> have access to the struct definitions. In i915, with the include
> >> hierarchies, that effectively means including absolutely
> >> everything. Can't have that in xe.
> >
> > obj+vma is a pretty reasonable API IMO. And we're not doing anything
> > weird with their guts IIRC.
> 
> Okay, I'll take your word for it.
> 
> > But apparently xe decided to not give us
> > that, and instead of adding a single wrapper to bridge the gap we
> > now have several different ad-hoc wrappers for whatever reason.
> 
> For this specific thing? Do we really have several? Or do you mean all
> the different things that bridge the gap between xe and i915-display?

I'm just referring to the all the things where we need to give
a piece of memory to the hardware. So far that seems to be normal
fb scanout, fbdev, dsb, fbc, and apparently hdcp also needs
GPU accessible memory. And flip queue will be another case somewhere
down the line.

-- 
Ville Syrjälä
Intel
