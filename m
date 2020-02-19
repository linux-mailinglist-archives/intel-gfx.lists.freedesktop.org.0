Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A39B1642B9
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:55:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 453A06E09E;
	Wed, 19 Feb 2020 10:55:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8541F6E14D
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:55:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 02:55:28 -0800
X-IronPort-AV: E=Sophos;i="5.70,459,1574150400"; d="scan'208";a="229076636"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 02:55:26 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <158093792883.17318.129566537664332187@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200205173419.1695-1-pankaj.laxminarayan.bharadiya@intel.com>
 <158093792883.17318.129566537664332187@emeril.freedesktop.org>
Date: Wed, 19 Feb 2020 12:55:24 +0200
Message-ID: <87mu9evobn.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm=3A_Introduce_struct_drm=5Fdevice_based_WARN*_and_use_them_in?=
 =?utf-8?q?_i915_=28rev6=29?=
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

On Wed, 05 Feb 2020, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm: Introduce struct drm_device based WARN* and use them in i915 (rev6)
> URL   : https://patchwork.freedesktop.org/series/72035/
> State : failure
>
> == Summary ==
>
> Applying: drm/i915/display/cdclk: Make WARN* drm specific where drm_priv ptr is available
> Applying: drm/i915/display/ddi: Make WARN* drm specific where drm_device ptr is available
> Applying: drm/i915/display/display: Make WARN* drm specific where drm_device ptr is available
> Using index info to reconstruct a base tree...
> M	drivers/gpu/drm/i915/display/intel_display.c
> Falling back to patching base and 3-way merge...
> Auto-merging drivers/gpu/drm/i915/display/intel_display.c
> Applying: drm/i915/display/power: Make WARN* drm specific where drm_priv ptr is available
> Using index info to reconstruct a base tree...
> M	drivers/gpu/drm/i915/display/intel_display_power.c
> Falling back to patching base and 3-way merge...
> Auto-merging drivers/gpu/drm/i915/display/intel_display_power.c
> CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_display_power.c
> error: Failed to merge in the changes.
> hint: Use 'git am --show-current-patch' to see the failed patch
> Patch failed at 0004 drm/i915/display/power: Make WARN* drm specific where drm_priv ptr is available
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".

Pankaj, please don't expect people to respond to your patches if they
don't apply...

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
