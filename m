Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD9D997249
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 18:50:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5312F10E795;
	Wed,  9 Oct 2024 16:50:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DCXK2v65";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C18F10E78C
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 16:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728492630; x=1760028630;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=GBSGWuHFdBH2BCmUxT9bFzHiwUKkBYPBQkemK4A7daw=;
 b=DCXK2v65wVQXD1lt61rWKp2t10iZl4M+LtwMH9N/CKFH07/90OcZm0/S
 gcuv3uDOeAvPUUfuvhPXEDNQhUPtBozKCHxKmXIvJMc8yx58SYTY0oIk/
 t4RrtyfdUCD1ZBafaxzq5+M+QQrBzb4bh2CehTLpKFsF1gT8YjnoQlNXA
 NWyQE5gTuua4Tgtld1cNh+VNSmS0MARVc0fl8Yzp8/fcwFJnC3LG4tcgC
 sdmczBn6IxMk4O6tnkOp+yFbLBfvqiCy4iTgpm1u8Qm6mvG6oMTnGKvgt
 N9hPJW3D0D0/n3f7+qdtWXqOTwJlBtYBLKzNNQMazsuqIdIgCj1qBRp7B A==;
X-CSE-ConnectionGUID: EMjJRkk8RGumxw/TpXizag==
X-CSE-MsgGUID: QP7751yXSzyUVz98KkS6og==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="31703477"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="31703477"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 09:50:30 -0700
X-CSE-ConnectionGUID: PU+ukIjWS7auCDwUIuTMXg==
X-CSE-MsgGUID: DHvt6uGFQpKchLsaRPOzwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="81326501"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.80])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 09:50:26 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Raag Jadav <raag.jadav@intel.com>
Cc: joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com, andi.shyti@linux.intel.com,
 intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com
Subject: Re: [PATCH v1] drm/i915/dg2: enable G8 with a workaround
In-Reply-To: <ZwaygLe1WIgkL2uE@black.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241007122424.642796-1-raag.jadav@intel.com>
 <87ttdmbj8l.fsf@intel.com> <ZwZ7ZrcBObuIrPqh@black.fi.intel.com>
 <871q0pa0kv.fsf@intel.com> <ZwaygLe1WIgkL2uE@black.fi.intel.com>
Date: Wed, 09 Oct 2024 19:50:23 +0300
Message-ID: <87a5fd8blc.fsf@intel.com>
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

On Wed, 09 Oct 2024, Raag Jadav <raag.jadav@intel.com> wrote:
> On Wed, Oct 09, 2024 at 04:05:20PM +0300, Jani Nikula wrote:
>> On Wed, 09 Oct 2024, Raag Jadav <raag.jadav@intel.com> wrote:
>> > On Tue, Oct 08, 2024 at 08:24:42PM +0300, Jani Nikula wrote:
>> >> On Mon, 07 Oct 2024, Raag Jadav <raag.jadav@intel.com> wrote:
>> >> > +
>> >> > +/* Wa_14022698589:dg2 */
>> >> > +static void intel_enable_g8(struct intel_uncore *uncore)
>> >> > +{
>> >> > +	if (IS_DG2(uncore->i915)) {
>> >> > +		switch (INTEL_DEVID(uncore->i915)) {
>> >> 
>> >> Even using INTEL_DEVID() is a no-go. There are currently four users, and
>> >> even some of them are too much.
>> >> 
>> >> We try hard to abstract this stuff at a higher level, and there must be
>> >> zero direct PCI ID checks in code other than the table driven device
>> >> identification. Otherwise it's just impossible to figure out where we do
>> >> platform specific stuff for each platform.
>> >
>> > Even if we use pci_match_id(), we'd need an explicit list to match against.
>> 
>> Well, we don't use that for individual workarounds or hacks either. When
>> you think of using something like that, see what git grep says.
>> 
>> > Any better way?
>> 
>> You probably need to turn it into another subplatform, and add it in
>> intel_device_info.c. You're probably going to need to rehash the
>> INTEL_DG2_*_IDS PCI ID macros too. That's how we tell platforms apart at
>> the PCI ID granularity.
>
> Which would be controversial since the ids span across existing subplatforms,
> which we don't want to break.

The i915 subplatform thing supports multiple subplatforms.

> Don't we have quirk mask thing like display?

Please elaborate.

BR,
Jani.





-- 
Jani Nikula, Intel
