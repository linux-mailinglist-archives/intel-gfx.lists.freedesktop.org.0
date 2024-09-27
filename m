Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F17B198876D
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 16:45:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EAE110EC8F;
	Fri, 27 Sep 2024 14:45:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fua4SDcg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 881B910EC8F
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2024 14:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727448352; x=1758984352;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=J5IT3+OtazxZ4DfvvtsfwzThmkvcrKWMQJtg1TkeGc0=;
 b=fua4SDcgjblPsBFn6QcTqaBp1DKSfE1wnT0dFBpNcKQselzdvNmqFFxU
 /YQRNYjFmUTTW7ooC5CE4uoGhIOn5++Rq9i1rRb0lDElHZLqvyhTp4ef5
 FCJ84QzSC0TVclGdpuij0SWUiwrl0YJnoArYdq6fh2F5JC0jjW7TV8gaE
 YpLhkSc3/2yoEBUhdw1H97fBuEJKF09bvWrqcr7zryhRkYYb2dcfYsB1X
 N+IL4+RBgrKcIKu6uWgVMFvM7bAgUqRFvAQtuUNMMfxGv/QADJK41w01h
 hylBhQXIDBNbnuygudHyTrX+tI2fr6Eqrs90Xrp0ulShZDPKfIIcBvLSz A==;
X-CSE-ConnectionGUID: dxNSafhOT6GJzXg3q6MmqA==
X-CSE-MsgGUID: liU5RsSoTF+zemHN2eI+OA==
X-IronPort-AV: E=McAfee;i="6700,10204,11208"; a="37731242"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="37731242"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 07:45:52 -0700
X-CSE-ConnectionGUID: XPMFm/PhRxmP0wLiCUzrdw==
X-CSE-MsgGUID: dbA9kb7JRHGdKwjFWO+rNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="72714297"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 27 Sep 2024 07:45:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Sep 2024 17:45:48 +0300
Date: Fri, 27 Sep 2024 17:45:48 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 4/4] drm/i915: Switch over to gen3 irq code on gen2
Message-ID: <ZvbFHLCwe3_CPv0f@intel.com>
References: <20240927143545.8665-1-ville.syrjala@linux.intel.com>
 <20240927143545.8665-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240927143545.8665-5-ville.syrjala@linux.intel.com>
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

On Fri, Sep 27, 2024 at 05:35:45PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> The only real reason why we have the gen2 vs. gen3+ split
> in irq handling is that bspec claims that IIR/IMR/IER/ISR
> and EMR are only 16 bits on gen2, as opposed to being 32
> bits on gen3+. That doesn't seem to be a meaningful
> distinction as 32bit access to these registers works
> perfectly fine on gen2
> 
> Interestingly the 16 msbs of IMR are in fact hardcoded
> to 1 on gen2, which to me indicates that 32bit access
> was the plan all along, and perhaps someone just forgot
> to update the spec.
> 
> Nuke the special 16bit gen2 irq code and switch over to
> the gen3 code.
> 
> Gen2 doesn't have the ASLE interrupt, which just needs
> a small tweak in i915_irq_postinstall().
> 
> And so far we've not had a codepath that could enable the
> legacy BLC interrupt on gen2. Now we do, but we'll never
> actually do it since gen2 machines don't have OpRegion.
> (and neither do i915/i945 machines btw). On these older
> platforms the legacy BLC interrupt is meant to be used
> in conjunction with the LBPC backlight stuff, but we
> never actually switch off the legacy/combination mode
> and thus don't use the interrupt either.
> 
> This was quickly smoke tested on all gen2 variants.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Hmm. I guess I should do this to the gt code as well.
But I'll hold off on that for the moment.

-- 
Ville Syrjälä
Intel
