Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B58818B086
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 10:54:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCCF06E9CB;
	Thu, 19 Mar 2020 09:54:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCC0F6E9CC
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 09:54:16 +0000 (UTC)
IronPort-SDR: 0TuT1dfmzDGGVKgCZrzlrjDziupbJ572HcqsqgDJyv8O+qIrexd4eAY05xecL3MlBOxKHZOzlk
 WyieTASf3eSQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 02:54:16 -0700
IronPort-SDR: C9TpdVw6vfphLc/HrrSgG8mgF+ZowJBoDP9Yxr0XSgDECZpx/gw++oE2buJBspGPxlTzQiJh+k
 g3Ok3fHSml1A==
X-IronPort-AV: E=Sophos;i="5.70,571,1574150400"; d="scan'208";a="418288178"
Received: from jnavarro-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.32.36])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 02:54:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Wambui Karuga <wambui.karugax@gmail.com>, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
In-Reply-To: <20200314183344.17603-1-wambui.karugax@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200314183344.17603-1-wambui.karugax@gmail.com>
Date: Thu, 19 Mar 2020 11:54:12 +0200
Message-ID: <874kukekl7.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 0/7] drm/i915/gt: convert to struct
 drm_device based logging macros.
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

On Sat, 14 Mar 2020, Wambui Karuga <wambui.karugax@gmail.com> wrote:
> This patchset continues the conversion of printk based macros to use
> the struct drm_device based drm logging macros focused on the i915/gt
> folder.
> These patches were achieved using both coccinelle and manually.

Pushed the lot, thanks for the patches.

BR,
Jani.

>
> Wambui Karuga (7):
>   drm/i915/ggtt: convert to drm_device based logging macros.
>   drm/i915/lrc: convert to struct drm_device based logging macros.
>   drm/i915/rc6: convert to struct drm_device based logging macros.
>   drm/i915/renderstate: use struct drm_device based logging macros.
>   drm/i915/ring_submission: use drm_device based logging macros.
>   drm/i915/rps: use struct drm_device based logging macros.
>   drm/i915/workarounds: convert to drm_device based logging macros.
>
>  drivers/gpu/drm/i915/gt/intel_ggtt.c          | 38 ++++++----
>  drivers/gpu/drm/i915/gt/intel_lrc.c           | 14 ++--
>  drivers/gpu/drm/i915/gt/intel_rc6.c           | 35 +++++----
>  drivers/gpu/drm/i915/gt/intel_renderstate.c   |  2 +-
>  .../gpu/drm/i915/gt/intel_ring_submission.c   | 33 ++++----
>  drivers/gpu/drm/i915/gt/intel_rps.c           | 75 +++++++++----------
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   |  7 +-
>  7 files changed, 110 insertions(+), 94 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
