Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eD0dLRcOD2qSEgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 15:52:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA675A6618
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 15:52:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4990610F333;
	Thu, 21 May 2026 13:52:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CJME0NkJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 644A910F333
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2026 13:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779371540; x=1810907540;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=Pg2+CfH3DkeJbA4+e+CQUgMAydqWc1ZSxQns0GnFXeM=;
 b=CJME0NkJGJR3PYhYapu/x9PLhFw/0/3MStOsk6TP3L0lMa4flakXeOCO
 d8FUdJigGdvwIN/I9oytxDK5UFRVCpjPTelHOTMFgXhgpMc3FV+fYCDkb
 DGVJ+6W3X6husS2G7g373BMYdp0v66I77dAB+/4S4DJyn/+xbscLDHo3L
 nWKbIDhoBZPteME8HMJ130EE+sj5meUAE6KXoJ7WYCCDXebZJ5RKq/v2u
 8ZxPazORCnLMg0vTq9EO8VFY3upo7j9hiH1I2uFBFlgeHgGCw4ZLgOGJ7
 ybLzAUx+GWQDXy2S4hHE7K4a0Vgv3EwbTTZ9FnH66VOsYK33IisGJx9sA g==;
X-CSE-ConnectionGUID: EZvHE/IvT9m3xEDvSymRmw==
X-CSE-MsgGUID: cUYvlIqiRai9SDXpsLKPUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11792"; a="97715013"
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="97715013"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 06:52:19 -0700
X-CSE-ConnectionGUID: +1Zug4tnTHSmu1wVXz36HA==
X-CSE-MsgGUID: /C0VrjpzRZqwYcxcDItxbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="264052269"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 06:52:18 -0700
Date: Thu, 21 May 2026 15:52:15 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915: replace drm_driver .release with drmm action
In-Reply-To: <20260521102009.2863402-1-jani.nikula@intel.com>
Message-ID: <ebc2bdb3-aeb7-8b46-5510-57073f315c78@intel.com>
References: <20260521102009.2863402-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-684753703-1779371132=:1769089"
Content-ID: <5e962326-71ef-7a92-11dd-0b3b80b5c19b@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@intel.com,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: DAA675A6618
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-684753703-1779371132=:1769089
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <3252dd84-5d8f-9496-34b3-96e9fc00f75a@intel.com>

On Thu, 21 May 2026, Jani Nikula wrote:
> Replace the struct drm_driver .release hook and manual i915->do_release
> handling with a proper drmm action. Start off with using the old release
> hook as the action, although going forward this should be made more fine
> grained.
>
> There are no intentional functional changes here.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
> drivers/gpu/drm/i915/i915_driver.c | 12 ++++++------
> 1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index f06b2e8cf7d4..02295ee324e4 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -130,6 +130,8 @@
>
> static const struct drm_driver i915_drm_driver;
>
> +static void i915_driver_release(struct drm_device *dev, void *res);

can we s/res/unused/ so that prototype will be same as definition?

Otherwise (or if doesn't apply):
Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

> +
> static int i915_workqueues_init(struct drm_i915_private *dev_priv)
> {
> 	/*
> @@ -914,7 +916,9 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>
> 	i915_welcome_messages(i915);
>
> -	i915->do_release = true;
> +	ret = drmm_add_action_or_reset(&i915->drm, i915_driver_release, NULL);
> +	if (ret)
> +		return ret;
>
> 	return 0;
>
> @@ -984,15 +988,12 @@ void i915_driver_remove(struct drm_i915_private *i915)
> 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> }
>
> -static void i915_driver_release(struct drm_device *dev)
> +static void i915_driver_release(struct drm_device *dev, void *unused)
> {
> 	struct drm_i915_private *dev_priv = to_i915(dev);
> 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
> 	intel_wakeref_t wakeref;
>
> -	if (!dev_priv->do_release)
> -		return;
> -
> 	wakeref = intel_runtime_pm_get(rpm);
>
> 	i915_gem_driver_release(dev_priv);
> @@ -1876,7 +1877,6 @@ static const struct drm_driver i915_drm_driver = {
> 	    DRIVER_GEM |
> 	    DRIVER_RENDER | DRIVER_MODESET | DRIVER_ATOMIC | DRIVER_SYNCOBJ |
> 	    DRIVER_SYNCOBJ_TIMELINE,
> -	.release = i915_driver_release,
> 	.open = i915_driver_open,
> 	.postclose = i915_driver_postclose,
> 	.show_fdinfo = PTR_IF(IS_ENABLED(CONFIG_PROC_FS), i915_drm_client_fdinfo),
> -- 
> 2.47.3
>
>
--8323329-684753703-1779371132=:1769089--
