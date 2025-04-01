Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C99A781AB
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Apr 2025 19:50:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D09EA10E06D;
	Tue,  1 Apr 2025 17:50:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BUsu23yy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B95F10E63E
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Apr 2025 17:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743529850; x=1775065850;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pn9TC+0VtTDCfOS49JIjo04AVqs+OWCEk8H3qFPWgIU=;
 b=BUsu23yyQ4qyBEWN6ilPsoBDh/E472NnwaRNHZ33T4EkBDOnDXbvWGxk
 yESU6wn76q9RiQf8uOefIYMnlZdDBowadLKm5pURJPrT27fdeDWemSfIc
 D+Gv+L+dFgK9U3FZlikOFozofFTg+tKmX7aNlp7a3AP9e5C69ZNysrX0C
 crTx+yY/ejurI2i5rhxEiaIAVpdm9NiBpPRaELJexs/iC/OfcuVyNqqCv
 i2hV6kTa6IvFYNirDgQwrhnj/PAJD7x0DsHBSy+wzZgZJwARg1SF8p8tH
 16v++MtTjY/tEkw3ysiao6UtZIY7vBMF0OdxQHAZp/cyXhmjD/j9t/f+7 g==;
X-CSE-ConnectionGUID: PcNR8ERgS5qUM33Yhq4SmQ==
X-CSE-MsgGUID: nNeCcqBLSomrFn4XRV3exw==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="48534255"
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="48534255"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 10:50:49 -0700
X-CSE-ConnectionGUID: 4AHHUBbfRs2e1rLqttcjuw==
X-CSE-MsgGUID: M2EBa5JTSZOzrre7lE1ghw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="131659252"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 01 Apr 2025 10:50:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Apr 2025 20:50:45 +0300
Date: Tue, 1 Apr 2025 20:50:45 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org,
 Matthew Auld <matthew.auld@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: [PATCH 3/4] drm/i915/gem: Allow EXEC_CAPTURE on recoverable
 contexts on DG1
Message-ID: <Z-wndcsylr5eK0F8@intel.com>
References: <20250401163752.6412-1-ville.syrjala@linux.intel.com>
 <20250401163752.6412-4-ville.syrjala@linux.intel.com>
 <Z-wjk-9ZVEpBVw0G@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z-wjk-9ZVEpBVw0G@ashyti-mobl2.lan>
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

On Tue, Apr 01, 2025 at 07:34:11PM +0200, Andi Shyti wrote:
> Hi Ville,
> 
> On Tue, Apr 01, 2025 at 07:37:51PM +0300, Ville Syrjala wrote:
> > The intel-media-driver is currently broken on DG1 because
> > it uses EXEC_CAPTURE with recovarable contexts. Relax the
> > check to allow that.
> > 
> > I've also submitted a fix for the intel-media-driver:
> > https://github.com/intel/media-driver/pull/1920
> 
> ...
> 
> >  		if (i915_gem_context_is_recoverable(eb->gem_context) &&
> > -		    (IS_DGFX(eb->i915) || GRAPHICS_VER_FULL(eb->i915) > IP_VER(12, 0)))
> > +		    GRAPHICS_VER_FULL(eb->i915) > IP_VER(12, 10))
> 
> How is this is more relaxed than the old version?

It doesn't trip on DG1 (ip ver == 12.10)

-- 
Ville Syrjälä
Intel
