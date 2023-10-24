Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A577D4F39
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 13:51:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAB0F10E352;
	Tue, 24 Oct 2023 11:51:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 060CD10E352
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 11:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698148274; x=1729684274;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=F7E+F6M3TVB0476vsTU3PUYBBK1/MaxTVeOi8Ei2VTE=;
 b=EUOiELAiPc/JTh30ZLdIroRP4MFHPoTge2I4h2iJBigWPPjLtE+pU+UN
 OEAry6iQYoA4QzSqmMN+R+2vQKxy2tQA7JITAfpz4TZ0vYnrI9apJkh8E
 MumnMK33JuNIBeTFKf9F42nL+BYhXF4qOWGAC0tIyjh6SzrbSPEnq8np1
 zywd4REpBV5E+JUp6DxCVxGskcSS+YZeBCGjUWf+BYep4CMzIIe0iM11P
 uwHZ7uOOasx746QKVNMsRbk+BuLuXEpVlKI4Vjlqj6ldhyMjH7POR5B8b
 CejzwhiuegXn9GcOS+oB51+pw6VL7WTQU21+cKKMTdEZH57YahoK4Fg7t A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="451268309"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="451268309"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 04:51:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="762075228"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="762075228"
Received: from goepfrim-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.28])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 04:51:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <20231020230446.GF1327160@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1695747484.git.jani.nikula@intel.com>
 <20231020230446.GF1327160@mdroper-desk1.amr.corp.intel.com>
Date: Tue, 24 Oct 2023 14:51:07 +0300
Message-ID: <87pm149r2s.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC 0/3] drm/i915: split display from
 drm_i915_private and i915_drv.h
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
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com,
 rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 20 Oct 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Tue, Sep 26, 2023 at 08:15:40PM +0300, Jani Nikula wrote:
>> We've been gradually separating display code from the rest of the i915
>> driver code over the past few years. We can't get much further than this
>> without some more drastic changes.
>> 
>> One of them is separating struct drm_i915_private and struct
>> intel_display almost completely. The former would remain for core driver
>> code and gem, while the latter would be for display. Long term, i915
>> display code would not include i915_drv.h, and would not have access to
>> struct drm_i915_private definion.
>> 
>> For display code, struct drm_i915_private would be opaque, and for the
>> rest of the driver, struct intel_display would be opaque.
>> 
>> Naturally, such separation helps the upcoming xe driver integration with
>> i915 display code. It's basically a requirement if (and that's still an
>> if) we decide to use aux-bus to have a i915.ko/xe.ko <->
>> intel-display.ko split. Regardless of that, I think this is a big
>> maintainability plus on its own too. The everything-includes-everything
>> model is really a nightmare.
>> 
>> Here are some draft ideas how this could be started. It will be a lot of
>> churn especially in the display code, but I believe the end result will
>> be cleaner.
>
> I'm guessing the plan is also to pass some kind of 'ops' callback
> structure down to intel_display when initializing a new device that it
> can use when it needs general functionality from the base driver
> (runtime PM, lowest-level register access, various memory management
> stuff, etc.)?

The auxiliary bus framework would provide a way to define callbacks in
both directions.

> In general, I'm very much in favor of making intel_display
> self-contained with no direct access to drm_i915_private / xe_device,
> and no direct calls outside of the display code.  I've been hoping we'd
> find the time to start moving in that direction.

It is a *lot* of work and churn in the drivers. There's no question
about it. Although this thread has been dead quiet, I'm sure there are a
lot of strong opinions and arguments against and in favour.

I think the other extreme I've seen suggested is to copy all the display
code from i915 to xe, fork it, axe out the unnecessary stuff, and roll
with two separate display drivers, with the i915 counterpart gradually
falling out of maintenance along with old platforms.

What we currently have in drm-xe-next is the non-committal middle
ground. I think we can live with it for a while, but it doesn't feel
like a permanent solution.

Maybe I should start documenting the alternatives with pros and cons to
support the decision.


BR,
Jani.


>
>
> Matt
>
>> 
>> BR,
>> Jani.
>> 
>> 
>> Jani Nikula (3):
>>   drm/i915: rough ideas for further separating display code from the
>>     rest
>>   drm/i915/hdmi: drafting what struct intel_display usage would look
>>     like
>>   drm/i915: draft what feature test macros would look like
>> 
>>  .../gpu/drm/i915/display/intel_display_core.h    | 16 ++++++++++++++++
>>  .../gpu/drm/i915/display/intel_display_device.c  | 13 +++++++++++++
>>  .../gpu/drm/i915/display/intel_display_device.h  |  4 ++++
>>  drivers/gpu/drm/i915/display/intel_hdmi.c        | 15 ++++++++++-----
>>  drivers/gpu/drm/i915/i915_drv.h                  | 11 ++++++++++-
>>  5 files changed, 53 insertions(+), 6 deletions(-)
>> 
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
