Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CPc5JtelGWptyAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 16:42:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CD2603C99
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 16:42:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D96011202A;
	Fri, 29 May 2026 14:42:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QfV47nxg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C558F11202A;
 Fri, 29 May 2026 14:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780065747; x=1811601747;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=w+lxVO+VKo6AR0VOu0nB6G0TJbsAnOA5uZ0zCCeSC0g=;
 b=QfV47nxg8pG/uzzeOIGO9Bul6Y7MD+on2pd8qpUc/B6CgfgaXwmaEgxu
 HaNKVIO1HMs7d/cCsjIVz3skT2P4R8fYn2oW+jjFLG7M1LEwTCqNHUlVI
 7DnJv9yvwFjfui2wup34L3xCRhmQNu3fDJmjId5DIu8OGbmoIgjeQeWlz
 SChyrRQzyQGS+IEh6eNy0HCK1jlQXOgI/3tIspAmSKhUI7OsE01ZJR//e
 QdytFLwZdzH5aY7cjPmJyPpbEjjICuBqCW0iH2s6EdHjI8aYDhXnZG8w6
 jSCYXOYHHdePiCO/mF6kHYB7lEeBkO8OIX32bhlcjbym6rQ0BDvlFE1+c A==;
X-CSE-ConnectionGUID: ZIKPfb/LTLG9QDAQFtflCA==
X-CSE-MsgGUID: bi7TUE2VQCKOEXXTyj63og==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="98492582"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="98492582"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 07:42:27 -0700
X-CSE-ConnectionGUID: 3C3wB2UhS8WX4w8eKh1W3w==
X-CSE-MsgGUID: vwY+or2cRZO0mwXvQow10g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="266491999"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.182])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 07:42:24 -0700
Date: Fri, 29 May 2026 17:42:21 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 imre.deak@intel.com
Subject: Re: [PATCH 20/24] drm/{i915,xe}: move intel_opregion_suspend() to
 intel_display_driver_pm_suspend_late()
Message-ID: <ahmlzZDcd8eLFhfv@intel.com>
References: <cover.1780051905.git.jani.nikula@intel.com>
 <ab953d87a5c4233a713b65aba9e45148bd77dbaa.1780051905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ab953d87a5c4233a713b65aba9e45148bd77dbaa.1780051905.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.40 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: B7CD2603C99
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 29, 2026 at 02:04:04PM +0300, Jani Nikula wrote:
> Try to unify the suspend paths and behaviour by moving the
> intel_opregion_suspend() calls to
> intel_display_driver_pm_suspend_late().
> 
> This is a change in the suspend sequences. The idea behind adding this
> to intel_display_driver_pm_suspend_late() is primarily based on not
> having to pass the s2idle parameter to more functions than that.
> 
> This also changes behaviour for i915 hibernation, going for PCI_D3cold
> instead of PCI_D1 on hibernate. It's probably the correct thing to do
> anyway, I don't think it should matter all that much, but fingers
> crossed.

acpi_target_system_state() should always return S4 for
hibernation. I'm not sure why we even check !hibernation
here... Looks like it's just a pointless thing left over
by commit c7b5abd3e030 ("drm/i915: Remove i915_drm_suspend_mode")

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_driver.c | 2 ++
>  drivers/gpu/drm/i915/i915_driver.c                  | 4 ----
>  drivers/gpu/drm/xe/display/xe_display.c             | 3 ---
>  3 files changed, 2 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 6cac36157bea..1525ff7a1dc2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -770,6 +770,8 @@ void intel_display_driver_pm_suspend_late(struct intel_display *display, bool s2
>  	if (!HAS_DISPLAY(display))
>  		return;
>  
> +	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
> +
>  	intel_display_power_suspend_late(display, s2idle);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 40fc15017486..7d0f98cbf5d9 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1096,7 +1096,6 @@ static int i915_drm_suspend(struct drm_device *dev)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  	struct intel_display *display = dev_priv->display;
> -	pci_power_t opregion_target_state;
>  
>  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
> @@ -1110,9 +1109,6 @@ static int i915_drm_suspend(struct drm_device *dev)
>  
>  	i9xx_display_sr_save(display);
>  
> -	opregion_target_state = suspend_to_idle(dev_priv) ? PCI_D1 : PCI_D3cold;
> -	intel_opregion_suspend(display, opregion_target_state);
> -
>  	dev_priv->suspend_count++;
>  
>  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 9416405667d8..73891b36341b 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -266,14 +266,11 @@ static bool suspend_to_idle(void)
>  void xe_display_pm_suspend(struct xe_device *xe)
>  {
>  	struct intel_display *display = xe->display;
> -	bool s2idle = suspend_to_idle();
>  
>  	if (!xe->info.probe_display)
>  		return;
>  
>  	intel_display_driver_pm_suspend(display);
> -
> -	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
>  }
>  
>  void xe_display_pm_suspend_late(struct xe_device *xe)
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
