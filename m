Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2891B596AE6
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 10:08:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15A6F10E640;
	Wed, 17 Aug 2022 08:08:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8836B10E541
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 08:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660723671; x=1692259671;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=xKrsp+yt6HhGG8ZtpKNuklBVnRiYjL9Dkg2d9y6AXUg=;
 b=gxdkSdf7TagydU4ZxWa/60YY//RQ0LmlQ/rnzkSKN29+tUjw/zVBClos
 MmeEftVbEEplJHZtTnnHVJ0upwPdWvkhvy78J+JdxF4vJrm4u5UEmUcgD
 rPqKGYnIzPtTgrKqZrPDBZu8fGM0E7/i73v2pLj0NJGXyu/XDuT9sfG0s
 MBkjNVKShTbNe3kDp3cUnReBqGYXkcg97Rd5yoRUDeGKBMez8dyiKZvla
 3Dd7YvRPlb0afNptmS1HTQNtNIJRy3Mt4xn105PcZl52MhaxQck6+/gBi
 eJBeEQ2pkJ/7aujQFGO17HnfgL8uvHCDmb+fgH1VwJ5nwyLXChv9xgDBr A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="378725477"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="378725477"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 01:07:50 -0700
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="667501320"
Received: from sbammi-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.49.167])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 01:07:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <875yirqsav.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1660230121.git.jani.nikula@intel.com>
 <a5641ef131cf70d404b5344eb8c3cd1688fdaae6.1660230121.git.jani.nikula@intel.com>
 <20220817012322.rm4xuqdt7vxtmtov@ldmartin-desk2.lan>
 <875yirqsav.fsf@intel.com>
Date: Wed, 17 Aug 2022 11:07:46 +0300
Message-ID: <87pmgzpa25.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 01/39] drm/i915: add display sub-struct to
 drm_i915_private
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

On Wed, 17 Aug 2022, Jani Nikula <jani.nikula@intel.com> wrote:
> On Tue, 16 Aug 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> On Thu, Aug 11, 2022 at 06:07:12PM +0300, Jani Nikula wrote:
>>>In another long-overdue cleanup, add a display sub-struct to
>>>drm_i915_private, and start moving display related members there. Start
>>>with display funcs that need a rename anyway to not collide with the new
>>>display member.
>>>
>>>Add a new header under display/ for defining struct intel_display.
>>>
>>>Rename struct drm_i915_display_funcs to intel_display_funcs while at it.

[...]

>>>+struct intel_display_funcs {
>>
>> in the same line as comment above. Maybe we could give this struct a
>> better name? Because it's already inside a intel_display.funcs.crtc
>>
>> display->funcs.crtc->get_pipe_config()
>> display->funcs.crtc->get_initial_plane_nfig()
>> display->funcs.crtc->enable()
>> display->funcs.crtc->disable()
>> display->funcs.crtc->commit_modeset_enables()
>>
>> and then call this `struct intel_crtc_funcs`.
>>
>> This can be done later as this commit itself is basically moving things
>> with the same name inside a substruct.
>
> I guess my question is, are the functions inside "crtc enough" to be
> called intel_crtc_funcs? Though intel_display_funcs is really too
> generic too.
>
> Maybe I'll just go with crtc.

Mmh, except we already have a bunch of struct drm_crtc_funcs with
<platform>_crtc_funcs in intel_crtc.c. Too confusing.

struct intel_random_collection_of_display_funcs. :p

The easy choice *for now* would be to stick with the struct
intel_display_funcs and live with the display->funcs.display tautology.

BR,
Jani.




-- 
Jani Nikula, Intel Open Source Graphics Center
