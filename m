Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C2C8922C2
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 18:29:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE8101127F4;
	Fri, 29 Mar 2024 17:29:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A/AT2FbV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ADD61127F4
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 17:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711733366; x=1743269366;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=BE78lL2Did2HaNRVRmEexyAi2/OaSw1zM/iNQDPIMyo=;
 b=A/AT2FbV2GkCSJ1/6InUPIsbKar6zTVRxgjhO8uI6+Nf639O05b12ZAx
 v9L92Pa5NNJFrXFvAO7YyAJLEqMb5M4qCM4/rLuqTly1G4EGoBUkhwXkc
 Vx0Wjp9leh3tvxh7mV87FNM1Gtj8hokOoh6KPvEIK+zf5eQUpgShoCr06
 3WY4wREHumi/gCjIk6labSVJ4yLbLi2iTNBkVVonJGPFjJIXmRQz3gIGJ
 Nwd6tfNfhC5mpxlc0kqt9SyaajfkshoIH1moj7oOqV2VLJCOazH9NFQck
 J2hUASgnqzpmd8qe5vhpBmwbVCBPu7lyDptPs1nxzfBy0dXqTLpWS8hAu Q==;
X-CSE-ConnectionGUID: kgemCW3kTqyqnTsDODfa+g==
X-CSE-MsgGUID: 0UbsNThGQF2YIhB2DLYJmQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11028"; a="7055417"
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; 
   d="scan'208";a="7055417"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 10:29:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11028"; a="827787028"
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; d="scan'208";a="827787028"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 29 Mar 2024 10:29:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Mar 2024 19:29:22 +0200
Date: Fri, 29 Mar 2024 19:29:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: stable@vger.kernel.org, intel-gfx@lists.freedesktop.org
Subject: Re: v6.7+ stable backport request for drm/i915
Message-ID: <Zgb6coxpAvZQBNWf@intel.com>
References: <ZfnpxcS2dXkzlExH@intel.com>
 <2024032904-reformed-pupil-7519@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2024032904-reformed-pupil-7519@gregkh>
X-Patchwork-Hint: comment
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

On Fri, Mar 29, 2024 at 02:15:12PM +0100, Greg KH wrote:
> On Tue, Mar 19, 2024 at 09:38:45PM +0200, Ville Syrjälä wrote:
> > Hi stable team,
> > 
> > Please backport the following the commits to 6.7/6.8 to fix
> > some i915 type-c/thunderbolt PLL issues:
> > commit 92b47c3b8b24 ("drm/i915: Replace a memset() with zero initialization")
> > commit ba407525f824 ("drm/i915: Try to preserve the current shared_dpll for fastset on type-c ports")
> > commit d283ee5662c6 ("drm/i915: Include the PLL name in the debug messages")
> > commit 33c7760226c7 ("drm/i915: Suppress old PLL pipe_mask checks for MG/TC/TBT PLLs")
> > 
> > 6.7 will need two additional dependencies:
> > commit f215038f4133 ("drm/i915: Use named initializers for DPLL info")
> > commit 58046e6cf811 ("drm/i915: Stop printing pipe name as hex")
> 
> All now queued up, thanks.

Thanks.

-- 
Ville Syrjälä
Intel
