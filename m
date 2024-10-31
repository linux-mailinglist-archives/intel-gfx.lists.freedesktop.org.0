Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A54D9B76C1
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 09:51:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E9CB10E40C;
	Thu, 31 Oct 2024 08:51:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DxPqZuYY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 510B010E3FE
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 08:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730364694; x=1761900694;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=PHfM7SFCs2i6AjRdLmGRYJ4+u8Oq5Ak6QZm/yns+biw=;
 b=DxPqZuYY2Qmx2fG5kjfoWN0IoZ1JM/ba8GzT2trrptVkyySfFv5hYKhQ
 X6BjHTjNQmwyG6xSbTa2nBNePo9bEYbIUGOfmVLjqQL8EUu/lHGd7X1XP
 3xE9cBNZVhFJshfkvCoJZQZ0/lkIhC1+i65oiFHOz9/nT1e0RYglytAFV
 sUVKvdXZ5BxGFv3q2pzgQiTlEhjlgx9RK+WDxeYyCmVQ6cUg91Qh+eE5O
 tMyK2/dGFvxrAPUJZ2vrzBTifjDjUL9agD5IQd4q0E4ByQVDqSy8+Cmw9
 i7WJ0/bweUmviFArciijmAMIRv6vlfr1dY0YLiBJZKTXjPMjVyM7521Ml g==;
X-CSE-ConnectionGUID: SEjyCk1oTdWEGt75VIo4ww==
X-CSE-MsgGUID: R9z/otKJSDynjt86g6jXGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="47567636"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="47567636"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 01:51:34 -0700
X-CSE-ConnectionGUID: fg/x+bGxTf6ocIa6VIGRyQ==
X-CSE-MsgGUID: 59lIHygpRk6BjidDnDQK6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="87115163"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 01:51:31 -0700
Date: Thu, 31 Oct 2024 10:51:28 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com, andi.shyti@linux.intel.com,
 intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com
Subject: Re: [PATCH v3 4/4] drm/i915/dg2: Implement Wa_14022698537
Message-ID: <ZyNFEJxRklBuzFc3@black.fi.intel.com>
References: <20241030143418.410406-1-raag.jadav@intel.com>
 <20241030143418.410406-5-raag.jadav@intel.com>
 <875xp9l9jw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <875xp9l9jw.fsf@intel.com>
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

On Wed, Oct 30, 2024 at 08:39:31PM +0200, Jani Nikula wrote:
> On Wed, 30 Oct 2024, Raag Jadav <raag.jadav@intel.com> wrote:
> > G8 power state entry is disabled due to a limitation on DG2, so we
> > enable it from driver with Wa_14022698537. For now we enable it for
> > all DG2 devices with the exception of a few, for which, we enable
> > only when paired with whitelisted CPU models. This works with Native
> > ASMP and reduces idle power consumption.

...

> > +/* Wa_14022698537:dg2 */
> > +static void i915_enable_g8(struct drm_i915_private *i915)
> > +{
> > +	if (IS_DG2(i915)) {
> > +		if (IS_DG2_D(i915) && !intel_match_g8_cpu())
> > +			return;
> 
> You don't need to check for DG2 twice.

My understanding is that DG2_D is a subset of DG2.

> > +		snb_pcode_write_p(&i915->uncore, PCODE_POWER_SETUP,
> > +				  POWER_SETUP_SUBCOMMAND_G8_ENABLE, 0, 0);
> > +	}
> > +}

Raag
