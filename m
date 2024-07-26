Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 482AE93D286
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2024 13:46:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAA6E10E898;
	Fri, 26 Jul 2024 11:46:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KJm9OAsf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A67AC10E238;
 Fri, 26 Jul 2024 11:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721994383; x=1753530383;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ca0s0oSK1FE9cibXyw4ZLN4bParEUsrugNpgXgFZFd8=;
 b=KJm9OAsfY6Ce+MkemudT98j31es5YoPQjMDkCHlTcPDGq+taaHYfwtec
 cEK/2N3mEMPk9BFO7+XLHL/bvDjydASdURdozMWZQ1ECvXCZYP+AEEXyS
 KD/FMeJ2EfnVNg1z46L3kN7Wc0WLjFCHfThGYGrHy70Pwbi+4kKB65ht8
 natlacBwzkjwG0UzTuoxNi5dxAg7Gzce74/XyotkAwuGLhReJ0XLinfAw
 t+df3b3qSrVXqNhtr4eE7LGjbcEt30RjBdN+w0hCwxi3/OQOySZ7Y3p3y
 EJ6b523BRhTAcrmu3fh75b6ENyEvZCH+dOynCRO+2TCEHxqgCfdJn++xD w==;
X-CSE-ConnectionGUID: Y4gHP/lwTJGmVBkVzidi2g==
X-CSE-MsgGUID: ISua2fZ/QBi6CYJn+QY4pw==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="30381517"
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="30381517"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2024 04:46:23 -0700
X-CSE-ConnectionGUID: pIioGiItTuSJJnwpLqWp+Q==
X-CSE-MsgGUID: cdk0s4xdR36XNA+UnQ7yqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="53179337"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by fmviesa009-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jul 2024 04:46:22 -0700
Date: Fri, 26 Jul 2024 13:46:19 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH i-g-t 1/2] tests/device_reset: Wait for device nodes to
 re-appear
Message-ID: <20240726114619.rv7jqzmlxthhnmkj@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
References: <20240726084022.356654-4-janusz.krzysztofik@linux.intel.com>
 <20240726084022.356654-5-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240726084022.356654-5-janusz.krzysztofik@linux.intel.com>
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

Hi Janusz,
On 2024-07-26 at 10:34:56 +0200, Janusz Krzysztofik wrote:
> CI sporadically reports the following issue:
> 
> (device_reset:1335) DEBUG: rebind the driver to the device
> (device_reset:1335) DEBUG: reopen the device
> (device_reset:1335) drmtest-DEBUG: Looking for devices to open using filter 0: sys:/sys/devices/pci0000:00/0000:00:02.0
> (device_reset:1335) drmtest-DEBUG: Filter matched  | /dev/dri/renderD128
> (device_reset:1335) drmtest-WARNING: No card matches the filter! [sys:/sys/devices/pci0000:00/0000:00:02.0]
> (device_reset:1335) CRITICAL: Test assertion failure function healthcheck, file ../../../usr/src/igt-gpu-tools/tests/device_reset.c:393:
> (device_reset:1335) CRITICAL: Failed assertion: dev->fds.dev >= 0
> (device_reset:1335) CRITICAL: Last errno: 22, Invalid argument
> (device_reset:1335) CRITICAL: file descriptor dev->fds.dev failed
> 
> After rebinding a DRM device driver, we now immediately start looking for
> DRM devices that match our PCI filter established before unbind.  The
> above messages indicate that occasionally not all device nodes are ready
> by the time we are doing that.
> 
> Introduce a delay to give the kernel a chance to re-create in devtmpfs all
> device nodes we are going to scan for.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11626
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

LGTM,
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  tests/device_reset.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/tests/device_reset.c b/tests/device_reset.c
> index a669e1224e..8ed3ef5220 100644
> --- a/tests/device_reset.c
> +++ b/tests/device_reset.c
> @@ -385,6 +385,8 @@ static bool is_i915_wedged(int i915)
>  static void healthcheck(struct device_fds *dev)
>  {
>  	if (dev->fds.dev == -1) {
> +		/* give the kernel a breath for re-creating device nodes in devtmpfs */
> +		sleep(1);
>  		/* refresh device list */
>  		igt_devices_scan(true);
>  		igt_debug("reopen the device\n");
> -- 
> 2.45.2
> 
