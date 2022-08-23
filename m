Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A1C59E51E
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 16:32:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3450E10ECB1;
	Tue, 23 Aug 2022 14:32:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2002010ECB1
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 14:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661265102; x=1692801102;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=FfAI5N9/yqpspDpY2JRALvq7HtDFw4ANuc0pK9sZJUU=;
 b=FBFOy1MQTKEDwVbwEZHEOR8fnTq1h7nwEcrgF4vg8wv4sLc7ytyOJGXW
 qGe+jdyJiRI7dsQQ1HtvRN+6M1bvNrqW4AoFcvBLrlMuRuecaIiLGpva3
 0DgcZv1LVR6EZ4G8Bw/M6VEucBbiIDZF7oxzcVMbXsy3qPz84QSXKV7Ro
 +QksDCcFiVUb7hKIq3tzc/1M3ljV2qx3ev5s0tjrDGHYdjvyz8GQz5+KD
 luntzVgdBw4b7VleXDPqedcwWPXPsygFztcng/bq3bH8NKvxy4HQfsOML
 gC2SvyoUOq/PtaG1hwPTiWGezDbi9IHorqKCl0qEt4xFL08LANngfH001 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="355430773"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="355430773"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 07:31:41 -0700
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="638677323"
Received: from obeltran-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.51.100])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 07:31:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220823052050.2249138-1-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220823052050.2249138-1-mitulkumar.ajitkumar.golani@intel.com>
Date: Tue, 23 Aug 2022 17:31:37 +0300
Message-ID: <87tu63jak6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix warning callstack for
 imbalance wakeref
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

On Tue, 23 Aug 2022, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> While executing i915_selftest, wakeref imbalance warning is seen
> with i915_selftest failure.
>
> Currently when Driver is suspended, while doing unregister
> it is taking wakeref without resuming the device.
> This patch is resuming the device, if driver is already suspended
> and doing unregister process. It will check the suspend state and
> if driver is not resumed before taking wakeref then resume before
> it.

Why have you sent the same patch multiple times in the same day?

Please see my earlier reply
https://lore.kernel.org/r/87k06zkyw3.fsf@intel.com

BR,
Jani.



>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index deb8a8b76965..99d6df02dc67 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -948,6 +948,15 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  
>  void i915_driver_remove(struct drm_i915_private *i915)
>  {
> +	int ret;
> +	/*
> +	 * Resuming Device if already suspended to complete driver unregistration
> +	 */
> +	if (i915->runtime_pm.suspended && !atomic_read(&i915->runtime_pm.wakeref_count)) {
> +		ret = pm_runtime_get_sync(i915->runtime_pm.kdev);
> +		drm_WARN_ONCE(&i915->drm, ret < 0, "pm_runtime_get_sync() failed: %d\n", ret);
> +	}
> +
>  	disable_rpm_wakeref_asserts(&i915->runtime_pm);
>  
>  	i915_driver_unregister(i915);

-- 
Jani Nikula, Intel Open Source Graphics Center
