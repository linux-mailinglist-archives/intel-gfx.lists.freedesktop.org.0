Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87BA486E513
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 17:15:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB6C310E82E;
	Fri,  1 Mar 2024 16:15:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZvIWwsEp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A14AA10E833
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 16:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709309756; x=1740845756;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WyvPK1tA/zs9uJFJHY5pCbIJzG+BSHETSlfr9BACR3o=;
 b=ZvIWwsEpaXJcJ344nUsPIgNy+TIEzKMjS85IEtQSbuF312sbi/t9UlcG
 VVY6Bt5V20H5LPakji+s3D8SV2sKSJAwkAARIHsNtyu6oigG2Q/Hjwnr/
 26Bt4I+ZweV+sdLq8lOK6AZ3NBN0J106g6sDo/3JEZ2r+jQaaMIamzuPI
 AkK2Q0gL0GJ9PqEuicrDDgv8LcBje9zyO2N15kCPGs+rAMINMnB9U1Cmf
 6EziXdheAG3m/XFY7AL1f3pFvFjIdiJzYDIC3JSyu+G/qe3Wus43RAu3G
 jEXIlhwKqvwf5pHmuJyrDrXPEad2pf59RoVTSEHpsJ4OQSAarCkdJs128 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="4024600"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="4024600"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 08:15:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="827772041"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="827772041"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 01 Mar 2024 08:15:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Mar 2024 18:15:51 +0200
Date: Fri, 1 Mar 2024 18:15:51 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Subject: Re: [PATCH 8/8] drm/i915: Handle joined pipes inside
 hsw_crtc_disable()
Message-ID: <ZeH_N1G-_EZXRxAU@intel.com>
References: <20240301143600.1334-1-ville.syrjala@linux.intel.com>
 <20240301143600.1334-9-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240301143600.1334-9-ville.syrjala@linux.intel.com>
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

On Fri, Mar 01, 2024 at 04:36:00PM +0200, Ville Syrjala wrote:
>  	/*
>  	 * We need to disable pipe CRC before disabling the pipe,
>  	 * or we race against vblank off.
>  	 */
> -	intel_crtc_disable_pipe_crc(crtc);
> +	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask)
> +		intel_crtc_disable_pipe_crc(crtc);

Oh, and the pipe crc stuff is one thing we probably should spend some
brain cells on. The pfit/plane CRCs are per-pipe, so we should either
handle it in igt somehow, or we need come up with some kind of scheme
to combine the CRCs from all the joined pipes in the kernel so that
userspace doesn't have to deal with them.

-- 
Ville Syrjälä
Intel
