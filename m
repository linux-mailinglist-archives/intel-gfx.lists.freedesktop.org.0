Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 072E59B776F
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 10:27:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C39710E841;
	Thu, 31 Oct 2024 09:27:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GXMHQMQT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9A4A10E841
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 09:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730366833; x=1761902833;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=xdZXmwC9Oee2cmZNP0qjsGpdwka2qhQToNvvWdJJxxk=;
 b=GXMHQMQTbg2DAA4e1dw3uRbfJ14Am7EwEAPgIWoW4nVqa8pf21s4oGNP
 Wdg39HgglEmAvDYGKf92KLsSo9MSL8dL8PcRlt1Xf/s1KKw+CmSXuMwjx
 O1k+/72FNJmHwMd5HEQwTYzmBmnTLyRKvUcId7cV12kPtg3Ss4BdThTh2
 Fm4JfRNwpWdFxdwnmgxEcwdXx3BbWrS60zMJ51JJphODmYipRWnNWUb4F
 RLUSTtl86FsPODdu0Vqryd0WjgxvdH+10QUzdf/YPatYNLg7biYgYRbk3
 wFcUXPyfayxa69TXE8Je9XU+Y64B3ESzieJAkRlvnguJCu//lWzuW/bHo Q==;
X-CSE-ConnectionGUID: J3KjJHV4S2O97Hhw0ne0UQ==
X-CSE-MsgGUID: EUyJKxzfSlmyhniX7Uxx8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="40672215"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="40672215"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 02:27:12 -0700
X-CSE-ConnectionGUID: Q19JyteASSSU6YgrYcv+WQ==
X-CSE-MsgGUID: 4Da8ixDQTv6wP9coVvnkLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="87716193"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.183])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 02:27:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Raag Jadav <raag.jadav@intel.com>
Cc: joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com, andi.shyti@linux.intel.com,
 intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com
Subject: Re: [PATCH v3 4/4] drm/i915/dg2: Implement Wa_14022698537
In-Reply-To: <ZyNFEJxRklBuzFc3@black.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241030143418.410406-1-raag.jadav@intel.com>
 <20241030143418.410406-5-raag.jadav@intel.com> <875xp9l9jw.fsf@intel.com>
 <ZyNFEJxRklBuzFc3@black.fi.intel.com>
Date: Thu, 31 Oct 2024 11:27:05 +0200
Message-ID: <871pzwlj12.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 31 Oct 2024, Raag Jadav <raag.jadav@intel.com> wrote:
> On Wed, Oct 30, 2024 at 08:39:31PM +0200, Jani Nikula wrote:
>> On Wed, 30 Oct 2024, Raag Jadav <raag.jadav@intel.com> wrote:
>> > G8 power state entry is disabled due to a limitation on DG2, so we
>> > enable it from driver with Wa_14022698537. For now we enable it for
>> > all DG2 devices with the exception of a few, for which, we enable
>> > only when paired with whitelisted CPU models. This works with Native
>> > ASMP and reduces idle power consumption.
>
> ...
>
>> > +/* Wa_14022698537:dg2 */
>> > +static void i915_enable_g8(struct drm_i915_private *i915)
>> > +{
>> > +	if (IS_DG2(i915)) {
>> > +		if (IS_DG2_D(i915) && !intel_match_g8_cpu())
>> > +			return;
>> 
>> You don't need to check for DG2 twice.
>
> My understanding is that DG2_D is a subset of DG2.

Sorry, I misread the code. *facepalm*.

BR,
Jani.

>
>> > +		snb_pcode_write_p(&i915->uncore, PCODE_POWER_SETUP,
>> > +				  POWER_SETUP_SUBCOMMAND_G8_ENABLE, 0, 0);
>> > +	}
>> > +}
>
> Raag

-- 
Jani Nikula, Intel
