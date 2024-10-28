Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDCC9B325F
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 15:02:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6D3810E4BE;
	Mon, 28 Oct 2024 14:02:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ef8dp9+I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B61910E4BE
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2024 14:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730124128; x=1761660128;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=dWAjgyiG+0wIRBvGXJi1s9txuKCYtDbO8JBsJ3Eh5gk=;
 b=ef8dp9+Inf6atAs7Fcn88mcxO+as4BJ70SWyczNcmXuXTGXpaZUzAp/1
 s/cjs5QvWGeYlO0wNq1hsENWlqQg6atA3gL2+Q2Yn7kU7tP5yxRGO+34b
 Cbvgy+qCCf9Laj1tyXq4NhxCh+R6F1ShYvdvCuf8LhuCQbEQPQhGi73G3
 zkAGFSSQ7ClSWQhvOguIAk15BGaVUk1mpTjXhITgGhfEO7EP7N9cPCq7M
 P5aU8el3KVWY7ORntyJK8z76FxkGbByAOnvDr2loYj7frJ3TaxFiEctW+
 p4d5YF10oxvcqqNpPLJrmvB6aUE/EkNMYv7vIgvB/swE6KeG6IvCY9GEZ w==;
X-CSE-ConnectionGUID: m/Fv/MyZRSOXtKWVtyfBvw==
X-CSE-MsgGUID: wtdJNQcARXO25ZI1nt7nGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="33638476"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="33638476"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 07:02:07 -0700
X-CSE-ConnectionGUID: IP5VoVuPQEOKjDc8jukt2Q==
X-CSE-MsgGUID: m9PCtXZiQq+Jb7h245mW0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="86376510"
Received: from black.fi.intel.com ([10.237.72.28])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 07:02:06 -0700
Date: Mon, 28 Oct 2024 16:02:02 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Cc: intel-gfx@lists.freedesktop.org, gustavo.sousa@intel.com
Subject: Re: [PATCH] drm/i915/xe3lpd: Power request asserting/deasserting
Message-ID: <Zx-ZWj-icaHVlmpB@black.fi.intel.com>
References: <20241028125835.78639-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241028125835.78639-1-mika.kahola@intel.com>
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

On Mon, Oct 28, 2024 at 02:58:35PM +0200, Mika Kahola wrote:

...

> +static bool wa_tcss_power_request_assert(struct drm_i915_private *i915,
> +					 bool enable)
> +{
> +	/*
> +	 * Limit to PTL only
> +	 * TODO: Add check for PICA IP and use that instead limiting WA for
> +	 * platform
> +	 */
> +	if (DISPLAY_VER(i915) != 30)

Not sure if hardcoding constants is the best of the approach, but I found
similar patterns in other places, so upto you.

> +		return true;
> +
> +	/* check if mailbox is running busy */
> +	if (intel_de_wait_for_clear(i915, TCSS_DISP_MAILBOX_IN_CMD,
> +				    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10)) {
> +		drm_dbg_kms(&i915->drm,
> +			    "Power request assert WA timeout waiting for TCSS mailbox run/busy bit to clear\n");

Is timeout considered a failure? Not sure _dbg is the right helper if it.

> +		return false;
> +	}
> +
> +	if (enable)
> +		intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, 1);
> +	else
> +		intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, 0);

Since enable it already a bool, this can be

	intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, enable);

> +
> +	intel_de_write(i915, TCSS_DISP_MAILBOX_IN_CMD,
> +		       TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY |
> +		       TCSS_DISP_MAILBOX_IN_CMD_DATA(0x1));
> +
> +	/* wait to clear mailbox running busy bit before continuing */

Any specific reason to do this on exit?
I'm assuming anyone trying to use the mailbox further down would be doing
this anyway since it's a prerequisite, right?

> +	if (intel_de_wait_for_clear(i915, TCSS_DISP_MAILBOX_IN_CMD,
> +				    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10)) {
> +		drm_dbg_kms(&i915->drm,
> +			    "Power request assert WA timeout waiting for TCSS mailbox run/busy bit to clear\n");

Ditto.

> +		return false;
> +	}
> +
> +	return true;
> +}

Raag
