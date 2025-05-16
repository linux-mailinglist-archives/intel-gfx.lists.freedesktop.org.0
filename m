Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B53AB9E91
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 16:26:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B220710EADF;
	Fri, 16 May 2025 14:25:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PE96FWd1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C01C10EADE;
 Fri, 16 May 2025 14:25:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747405557; x=1778941557;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=/1/BdLBUsI603EhIofs2fgqhAXHNUVbe5356d/dVVQo=;
 b=PE96FWd12r6zsdrFqgubX8Cb3urPjSmFoTHFHPLSVbOh0faR5rj1iKG/
 JX9ZAt3sMMuOz4JuKFhHFkAZfKyaXB2Scf4w0dqsuBDAkiuzq5sTGTv8n
 AqczMc0vhoCbsbq/vHeHdHVOH8LjObM+f9MEqS+oFW8Uj76HkhoBg5TKf
 bxmhYnI0nneSKRVTB2ylFImupFj75WXVL4tkWYNgOnG5NuHLLcX3r9QX1
 AeckHNWPLtCE1Gp2GZAOlDSg37Q5bwFl1GuJM9bXdwqJjRjzr9YokebrV
 +tTAqqyxQqLf1Xs1zpTY1STd6ZPcdXhpb/Uj78bOa70nXBHMUUuxDvLD8 A==;
X-CSE-ConnectionGUID: GJo5BlcgSL2wby9ghM91jg==
X-CSE-MsgGUID: y8m/2TMjRvC483dk1q81tw==
X-IronPort-AV: E=McAfee;i="6700,10204,11435"; a="49485111"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="49485111"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 07:25:57 -0700
X-CSE-ConnectionGUID: qRPZu+RISdCO7Ep+dyH/Cg==
X-CSE-MsgGUID: f9Lqs7cTTjG0bpUDWNr1oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="143672844"
Received: from slindbla-desk.ger.corp.intel.com (HELO [10.245.245.176])
 ([10.245.245.176])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 07:25:56 -0700
Message-ID: <ff4715cc-139b-49a9-bc73-9254dd7715c1@intel.com>
Date: Fri, 16 May 2025 15:25:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/7] drm/xe/display: add notes about how early a few
 functions can be called
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
References: <cover.1747397638.git.jani.nikula@intel.com>
 <937ea1e16e970a6f6944b94c6a9c216d36e728d1.1747397638.git.jani.nikula@intel.com>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <937ea1e16e970a6f6944b94c6a9c216d36e728d1.1747397638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

On 16/05/2025 13:16, Jani Nikula wrote:
> xe_display_driver_probe_defer() and xe_display_driver_set_hooks() get
> called before either struct xe_device or struct intel_display
> exist. Make a note of that.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> ---
>   drivers/gpu/drm/xe/display/xe_display.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index c35444637620..8b2aa7dc6e07 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -48,6 +48,8 @@ static bool has_display(struct xe_device *xe)
>    *				   early on
>    * @pdev: PCI device
>    *
> + * Note: This is called before xe or display device creation.
> + *
>    * Returns: true if probe needs to be deferred, false otherwise
>    */
>   bool xe_display_driver_probe_defer(struct pci_dev *pdev)
> @@ -65,6 +67,8 @@ bool xe_display_driver_probe_defer(struct pci_dev *pdev)
>    * Set features and function hooks in @driver that are needed for driving the
>    * display IP. This sets the driver's capability of driving display, regardless
>    * if the device has it enabled
> + *
> + * Note: This is called before xe or display device creation.
>    */
>   void xe_display_driver_set_hooks(struct drm_driver *driver)
>   {

