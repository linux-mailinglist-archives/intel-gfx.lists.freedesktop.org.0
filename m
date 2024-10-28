Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D03709B33E0
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 15:43:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DD9510E4CC;
	Mon, 28 Oct 2024 14:43:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E4mOEZwu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF82F10E4CC
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2024 14:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730126581; x=1761662581;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=XcbxpceJ3Xj1QKhMFRnaGeFM92Y8sryHshsfQazmFU8=;
 b=E4mOEZwuMpM2Wi3ZmJeH2cUzZVYuCvltp0t1JcJpAU84USreNGNhL04M
 9TSNAR+JFnlrtiUjxBbd8R/bnKWgNmOq2dowRqwW75n3IejLhQQ0V6vOC
 SIC/B8ZkIXmbEKK7qJlJpCuAZYAOlPDpjbDxjyJhsEDact6djVY34VC7+
 AumgM2jwMYeKDEtHGkAOv3fXLKr4+9kjYU4BE5S592F1f8CwLg+hCd1S8
 iFwLP7+1eIMhojHbtXXYHdszkkVA4osafTA8uwp88wNRThZlWLAy51z9T
 6WeU7LX6vvPCypYtBWaNv1Pxqmx/Cs1y+khNAgnlr2+AbrlfnsJRVirBA w==;
X-CSE-ConnectionGUID: m/ad9HsoSfuErQHkQs/RrA==
X-CSE-MsgGUID: upOtrHqeR/i2QG616Xqk6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="33520004"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="33520004"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 07:43:01 -0700
X-CSE-ConnectionGUID: Iikq57s7Rn2MFmZVrWAdRg==
X-CSE-MsgGUID: 99BsdJ8oQdyE2ox5XZkzpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="112446990"
Received: from black.fi.intel.com ([10.237.72.28])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 07:42:59 -0700
Date: Mon, 28 Oct 2024 16:42:56 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/xe3lpd: Power request asserting/deasserting
Message-ID: <Zx-i8JelcUnPZ817@black.fi.intel.com>
References: <20241028125835.78639-1-mika.kahola@intel.com>
 <Zx-ZWj-icaHVlmpB@black.fi.intel.com>
 <173012531967.3514.1295181866845484331@gjsousa-mobl2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <173012531967.3514.1295181866845484331@gjsousa-mobl2>
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

On Mon, Oct 28, 2024 at 11:21:59AM -0300, Gustavo Sousa wrote:
> Quoting Raag Jadav (2024-10-28 11:02:02-03:00)
> >On Mon, Oct 28, 2024 at 02:58:35PM +0200, Mika Kahola wrote:
> >
> >...
> >
> >> +static bool wa_tcss_power_request_assert(struct drm_i915_private *i915,
> >> +                                         bool enable)
> >> +{
> >> +        /*
> >> +         * Limit to PTL only
> >> +         * TODO: Add check for PICA IP and use that instead limiting WA for
> >> +         * platform
> >> +         */
> >> +        if (DISPLAY_VER(i915) != 30)
> >
> >Not sure if hardcoding constants is the best of the approach, but I found
> >similar patterns in other places, so upto you.
> 
> Using version number directly makes it easier to concurrently merge
> independent patches for some display IP without having to wait some
> #define to become available. That comes with the cost of having
> to remember the version numbers (or checking somewhere) though.

Agree. Although usually we have codenames for this, which is easier
to track or grep.

> >
> >> +                return true;
> >> +
> >> +        /* check if mailbox is running busy */
> >> +        if (intel_de_wait_for_clear(i915, TCSS_DISP_MAILBOX_IN_CMD,
> >> +                                    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10)) {
> >> +                drm_dbg_kms(&i915->drm,
> >> +                            "Power request assert WA timeout waiting for TCSS mailbox run/busy bit to clear\n");
> >
> >Is timeout considered a failure? Not sure _dbg is the right helper if it.
> 
> I believe it is okay to have _dbg here, because the returned value is
> checked and a warning is raised.

Which makes the logging redundant...

> Althought we could make this more
> self-contained by jumping an error path inside this function.

... but if we'd still want it I think this will be best.

> 
> >
> >> +                return false;
> >> +        }
> >> +
> >> +        if (enable)
> >> +                intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, 1);
> >> +        else
> >> +                intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, 0);
> >
> >Since enable it already a bool, this can be
> >
> >        intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, enable);
> >
> >> +
> >> +        intel_de_write(i915, TCSS_DISP_MAILBOX_IN_CMD,
> >> +                       TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY |
> >> +                       TCSS_DISP_MAILBOX_IN_CMD_DATA(0x1));
> >> +
> >> +        /* wait to clear mailbox running busy bit before continuing */
> >
> >Any specific reason to do this on exit?
> >I'm assuming anyone trying to use the mailbox further down would be doing
> >this anyway since it's a prerequisite, right?
> 
> This wait is part of the "DE to IOM Mailbox" flow. I believe this is
> necessary and the workaround might even not be effective without it.

My understanding is that the wait is for the availability of mailbox which
is not equivalent to command success, but I could be wrong.

Raag
