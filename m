Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF66437BE0
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 19:29:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E65C26EDD3;
	Fri, 22 Oct 2021 17:29:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2E116EDD4
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 17:29:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10145"; a="315552373"
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="315552373"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 10:29:30 -0700
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="720359716"
Received: from ptoro-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.254.47.175])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 10:29:30 -0700
Date: Fri, 22 Oct 2021 10:29:27 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, airlied@gmail.com, daniel@ffwll.ch,
 ville.syrjala@linux.intel.com
Message-ID: <20211022172927.f3e5tz6xwvntuzgp@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <cover.1634918767.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <cover.1634918767.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/4] drm/i915: split out audio private from
 dev_priv
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

On Fri, Oct 22, 2021 at 07:27:54PM +0300, Jani Nikula wrote:
>I'll first make the argument that drm_i915_private should not have a
>single member that is not a named sub-struct defined separately. It's
>just too big to have individual members like, say, framestart_delay. All
>of these need context that is created using C constructs, not comments.
>
>Ideas have been thrown around about splitting display data more, perhaps
>to a separate "display private" struct. I'll also make the argument that
>it is not fine-grained enough. Here, I'm taking the audio parts and
>shoving them under intel_audio_private struct. It's still defined in
>i915_drv.h, but it could be trivially turned into a completely opaque
>type defined and allocated in intel_audio.c.
>
>I think the driver is big enough to start requiring this kind of
>abstractions, even at the cost of dynamic allocations and pointer
>chasing that opaque types require. It's just too easy to poke at
>drm_i915_private from wherever, breaking all abstractions.
>
>Sure, it's no coincidence that I chose audio, it's fairly well isolated
>already. Not all parts are going to be that easy. But I'm not sure I
>like the thought of doing a massive display private struct refactoring
>and not take one step further. Or, indeed, take this step *first*.

I like it, thanks.

I only have a small comment on first patch about commit message. Also
about intel_audio_private vs intel_audio I had the same thought as
Ville, but I get your point too. And I don't have any better name
suggestion. So this is 


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi

>
>BR,
>Jani.
>
>
>Jani Nikula (4):
>  drm/i915/audio: group audio under anonymous struct in drm_i915_private
>  drm/i915/audio: name the audio sub-struct in drm_i915_private
>  drm/i915/audio: define the audio struct separately from
>    drm_i915_private
>  drm/i915/audio: move intel_audio_funcs internal to intel_audio.c
>
> drivers/gpu/drm/i915/display/intel_audio.c    | 99 ++++++++++---------
> .../gpu/drm/i915/display/intel_lpe_audio.c    | 42 ++++----
> drivers/gpu/drm/i915/i915_drv.c               |  2 +-
> drivers/gpu/drm/i915/i915_drv.h               | 56 +++++------
> 4 files changed, 101 insertions(+), 98 deletions(-)
>
>-- 
>2.30.2
>
