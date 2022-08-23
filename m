Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9882359DACA
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 13:01:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D4FA112F91;
	Tue, 23 Aug 2022 11:01:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ECB310E21B
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 11:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661252449; x=1692788449;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=7JoVcycdmRLCbs3ajsX7Irs0p9R3AqzYVPyJRAcsDhM=;
 b=PjGMsuWCfFbFfEstGJjuaWjV1VTbU3mux++4148FLSO+hBk7NgwKmH2s
 IRkwUrI/8ZPxf6DCG5buFypUO8ypCxmKzLWFBGadzo96oXjiJZ+E3+tCJ
 9LAYJvSPIxkXJGfUAmr7y7ezdiOibqIauSb+n439ZWLO1rvkQ+MMazWO6
 cC8KlxuCXWuAjpVc71yAgzU2z6Q7msrsyHm6zONfY1cuYzv/UWX1Mq1OY
 +67ACNqNWsqGQIEREXnkE2F9m+sFq7LukBac1XNpGRa3/3ZW7wrzK6Jn/
 2Gt9DXLE3G4k/+TK5a2J0pK02JYXhlLvaJfGI/nFv7UnDpVEscpdEGkFl w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="276683881"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="276683881"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 04:00:48 -0700
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="560119188"
Received: from obeltran-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.51.100])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 04:00:47 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220823023546.2150989-1-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220823023546.2150989-1-mitulkumar.ajitkumar.golani@intel.com>
Date: Tue, 23 Aug 2022 14:00:44 +0300
Message-ID: <87k06zkyw3.fsf@intel.com>
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
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index deb8a8b76965..b3741bd49e2c 100644
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
> +		ret = pm_runtime_get_sync(rpm->kdev);
> +		drm_WARN_ONCE(&i915->drm, ret < 0, "pm_runtime_get_sync() failed: %d\n", ret);
> +	}
> +

I don't know what the right fix is, but under no circumstances are we
adding detailed low level code into high level function like
i915_driver_remove().

BR,
Jani.

>  	disable_rpm_wakeref_asserts(&i915->runtime_pm);
>  
>  	i915_driver_unregister(i915);

-- 
Jani Nikula, Intel Open Source Graphics Center
