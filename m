Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C96EC6AD991
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 09:51:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C057A10E38C;
	Tue,  7 Mar 2023 08:50:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72E7910E387
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 08:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678179055; x=1709715055;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=3BDFnWuwigrlrB79i5JyDflVlMFC1BNnpMPjSYUe9D4=;
 b=dKlA++EnqTJNCwVKMyXzwApayQmjjWULsiRx1VYMLpssHJ7w+BT5ew7P
 9jsJcu5BHxnd7Mg4ICQvf+6XnFGYuZe6V5cVag8K2vprFDZwkObqwk19l
 WMN36xpzeatSQmez2mhZ2HZh6LUe/TyDkFK1yD7AL7IcdlO8XVGgnBFP1
 WwF6m5WEL4mwC9DLqjO3qL37TSRk/OVCmpq9QVu+5zzuAunViTISOHH7o
 HCUXLHSkJo4YqBu1FuP+5X05uAxeptZO4YQtb9h6Pu//rEDEa23+uzwsE
 0XMmkgfsonXlrR2EB6B0EDwzerWdQadKnTDnwHeqSuzQyqxtHAeEh9G2I g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="335820418"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="335820418"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 00:50:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="745388684"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="745388684"
Received: from sbarnes-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.58.236])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 00:50:52 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230221125737.1813187-4-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230221125737.1813187-1-imre.deak@intel.com>
 <20230221125737.1813187-4-imre.deak@intel.com>
Date: Tue, 07 Mar 2023 10:50:49 +0200
Message-ID: <87ttyxrlli.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/opregion: Register/unregister
 opregion on platforms without display
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

On Tue, 21 Feb 2023, Imre Deak <imre.deak@intel.com> wrote:
> Call the opregion register/unregister functions during driver
> loading/unloading on !HAS_DISPLAY platforms. These functions will send
> the opregion adapter power state notifications which is required on all
> platforms (similarly how this is sent during runtime and system
> suspend/resume). Skip registering the ACPI video notifier callback on
> !HAS_DISPLAY, where the corresponding video extensions are not
> supported.

I think the direction should be towards better separation of display
code, and this patch is counter productive. Basically we shouldn't
require calling display functions on !HAS_DISPLAY, and the early return
is what we should do.

This, in turn, means we probably need to handle opregion differently. :(

Dunno, maybe we need to move opregion under soc/ and have parts called
by high level driver code, and some other parts from display code.

BR,
Jani.


>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 11 +++++++----
>  drivers/gpu/drm/i915/display/intel_opregion.c |  2 +-
>  2 files changed, 8 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 7827ef3e2d1e6..467f6e2376057 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8882,11 +8882,12 @@ bool intel_modeset_probe_defer(struct pci_dev *pdev)
>  
>  void intel_display_driver_register(struct drm_i915_private *i915)
>  {
> -	if (!HAS_DISPLAY(i915))
> -		return;
> -
>  	/* Must be done after probing outputs */
>  	intel_opregion_register(i915);
> +
> +	if (!HAS_DISPLAY(i915))
> +		return;
> +
>  	intel_acpi_video_register(i915);
>  
>  	intel_audio_init(i915);
> @@ -8914,7 +8915,7 @@ void intel_display_driver_register(struct drm_i915_private *i915)
>  void intel_display_driver_unregister(struct drm_i915_private *i915)
>  {
>  	if (!HAS_DISPLAY(i915))
> -		return;
> +		goto unregister_opregion;
>  
>  	intel_fbdev_unregister(i915);
>  	intel_audio_deinit(i915);
> @@ -8928,6 +8929,8 @@ void intel_display_driver_unregister(struct drm_i915_private *i915)
>  	drm_atomic_helper_shutdown(&i915->drm);
>  
>  	acpi_video_unregister();
> +
> +unregister_opregion:
>  	intel_opregion_unregister(i915);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index b7973a05d022d..37098e7f607e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -1150,7 +1150,7 @@ void intel_opregion_register(struct drm_i915_private *i915)
>  	if (!opregion->header)
>  		return;
>  
> -	if (opregion->acpi) {
> +	if (HAS_DISPLAY(i915) && opregion->acpi) {
>  		opregion->acpi_notifier.notifier_call =
>  			intel_opregion_video_event;
>  		register_acpi_notifier(&opregion->acpi_notifier);

-- 
Jani Nikula, Intel Open Source Graphics Center
