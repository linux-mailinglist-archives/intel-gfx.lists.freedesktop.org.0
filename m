Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D9E14B19F
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 10:16:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0773F6ED3F;
	Tue, 28 Jan 2020 09:16:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 785996ED3F
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 09:16:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 01:16:31 -0800
X-IronPort-AV: E=Sophos;i="5.70,373,1574150400"; d="scan'208";a="222027795"
Received: from vogginge-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.38.155])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 01:16:29 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <158015840134.9687.7990172392824281702@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200127075653.8523-1-pankaj.laxminarayan.bharadiya@intel.com>
 <158015840134.9687.7990172392824281702@emeril.freedesktop.org>
Date: Tue, 28 Jan 2020 11:16:31 +0200
Message-ID: <87o8uo9c0g.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm=3A_Introduce_struct_drm=5Fdevice_based_WARN*_and_use_them_in?=
 =?utf-8?q?_i915_=28rev4=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 27 Jan 2020, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm: Introduce struct drm_device based WARN* and use them in i915 (rev4)
> URL   : https://patchwork.freedesktop.org/series/72035/
> State : failure

I think the repeated attempts with the patches prove that it's really
hard to get patches with such wide impact merged. The driver moves so
fast that things like this probably need to be split up more. For
example per file. It will result in a lot of patches, but at least we
could merge the patches that don't conflict, and keep moving
forward. It's also maybe a bad timing, lots of changes like this going
on atm.

BR,
Jani.


>
> == Summary ==
>
> Applying: drm/i915/display: Make WARN* drm specific where drm_device ptr is available
> Using index info to reconstruct a base tree...
> M	drivers/gpu/drm/i915/display/intel_display.c
> M	drivers/gpu/drm/i915/display/intel_dp.c
> M	drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> M	drivers/gpu/drm/i915/display/intel_hdmi.c
> M	drivers/gpu/drm/i915/display/intel_hotplug.c
> M	drivers/gpu/drm/i915/display/intel_lvds.c
> M	drivers/gpu/drm/i915/display/intel_pipe_crc.c
> M	drivers/gpu/drm/i915/display/intel_sdvo.c
> Falling back to patching base and 3-way merge...
> Auto-merging drivers/gpu/drm/i915/display/intel_sdvo.c
> Auto-merging drivers/gpu/drm/i915/display/intel_pipe_crc.c
> Auto-merging drivers/gpu/drm/i915/display/intel_lvds.c
> Auto-merging drivers/gpu/drm/i915/display/intel_hotplug.c
> Auto-merging drivers/gpu/drm/i915/display/intel_hdmi.c
> CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_hdmi.c
> Auto-merging drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> Auto-merging drivers/gpu/drm/i915/display/intel_dp.c
> Auto-merging drivers/gpu/drm/i915/display/intel_display.c
> CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_display.c
> error: Failed to merge in the changes.
> hint: Use 'git am --show-current-patch' to see the failed patch
> Patch failed at 0001 drm/i915/display: Make WARN* drm specific where drm_device ptr is available
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
