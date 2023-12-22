Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 295BA81C7C5
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Dec 2023 11:03:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D43310E7B6;
	Fri, 22 Dec 2023 10:03:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D327F10E7B8
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Dec 2023 10:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703239420; x=1734775420;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=a3uoTEKijp/2sc6o+lLFWrg292ZRnhidgKArLQJ3w80=;
 b=A5aMAe7ON34rY6zvuf7CIdJ0nvgEY6s0csRcRVjfETQDHn8gpbypjifj
 Hd3FfLVgnLAM9iMngL3CZcDKjAUGpSq0Ace9SioRiEL31rRPqwohR0Qlw
 RmaOicibceNIvhdaTwBw91dDMTZOalBCZQpX3u4bRIJd9TDW9PpIxmJEA
 XRU0lMRkdNo8xC8ujyVdkjieMn8yz4UtEYtzLpKOI69fMefKtbJCONgEs
 4VToDiw4W/j9V1UV6eRjHd2indJsf0twhIFatv697AfUSp/nYexrWLf2y
 tsVTnD/iwjjD2aQwNgZZ8sXx+gjPwh1/Q60A4FuZbbdgGtZSK3V/A1xiQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="376239919"
X-IronPort-AV: E=Sophos;i="6.04,296,1695711600"; d="scan'208";a="376239919"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 02:03:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="842909900"
X-IronPort-AV: E=Sophos;i="6.04,296,1695711600"; d="scan'208";a="842909900"
Received: from yspisare-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.50.156])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 02:03:39 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2 0/4] TC phy check cleanup
In-Reply-To: <DM4PR11MB5971B4917DD49F4C42E8C79C8794A@DM4PR11MB5971.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231220221341.3248508-1-radhakrishna.sripada@intel.com>
 <87y1dnswgo.fsf@intel.com>
 <DM4PR11MB5971B4917DD49F4C42E8C79C8794A@DM4PR11MB5971.namprd11.prod.outlook.com>
Date: Fri, 22 Dec 2023 12:03:35 +0200
Message-ID: <87jzp6sgeg.fsf@intel.com>
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

On Fri, 22 Dec 2023, "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com> wrote:
> Hi Jani,
>
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Thursday, December 21, 2023 2:04 AM
>> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Subject: Re: [PATCH v2 0/4] TC phy check cleanup
>> 
>> On Wed, 20 Dec 2023, Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>> wrote:
>> > We are relying on end-less if-else ladders for a type-c phy
>> > capabilities check. Though it made sense when platforms supported
>> > legacy type-c support, modern platforms rely on the information
>> > passed by vbt. This cleanup restricts the if-else ladder to the
>> > platforms supporting legacy type-c phys and relies on vbt info
>> > for modern client and discrete platforms.
>> 
>> This series is moving the vbt handling in the wrong direction.
>> 
>> We want to *avoid* new lookups. The idea is that you do the lookup
>> *once* when initializing the encoder, and after that you use
>> encoder->devdata.
>> 
>> If you look at the intel_phy_is_tc() call sites, you'll observe that
>> almost all of the places have the encoder (or devdata) already
>> available. They get the port from encoder->port, and the phy from
>> intel_port_to_phy().
>> 
>> So this throws away the information that's already available, and then
>> goes to look it up again in the worst possible way.
>> 
>> You should convert intel_phy_is_tc() to something like
>> intel_encoder_is_tc(), and pass encoder to it instead of phy. Similarly,
>> intel_port_to_tc() should be converted to intel_encoder_to_tc().
>> 
>> There are a couple of special cases that only have devdata or phy. But
>> we can handle the special cases after making the common case
>> straightforward.
> Common case making a tc check out of encoder sure makes lot of sense
> And agreed to you point. The question that arises in the special cases.
> For ex. during vbt_defaults init in intel_bios.c, I can only handle for legacy tc ports.
>
> In other cases where only phy info is available, I may have to iterate over all the
> drm_encoders to obtain port info and compare it with phy info adding lot of lookup
> overhead. Or we may have to use encoder based lookups in all associated lookups like
> icl_port_to_ddc_pin etc.
>
> Thoughts?

Frankly, the way I often handle stuff like this is just start making the
changes for the things that obviously make sense. Such as looking the tc
info up via the encoder. You can add the new function(s) and gradually
switch over. It's mostly mechanical changes and pretty quick to do. I
think it'll even clean up a bunch of local enum port and enum phy
usages.

And often the answer to the rest just presents itself.

Sometimes the answer is, well, to leave an ugly wart in 1% of the cases
while making 99% of the cases pretty. And that's still better than
having 100% poor design.

Sometimes you find out you have to redo some of the stuff you did at
first, but it's because you figure things out along the way. For me at
least, this is how the bright ideas come to mind more often than via up
front design attempts.

HTH,
Jani.


>
> Radhakrishna(RK) Sripada
>> 
>> 
>> BR,
>> Jani.
>> 
>> 
>> >
>> > v2: Move cleanup vbt later to handle safe encoder removal
>> >
>> > Radhakrishna Sripada (4):
>> >   drm/i915: Move intel_bios_driver_remove later
>> >   drm/i915: Rename intel_bios_encoder_data_lookup as a port variant
>> >   drm/i915: Introduce intel_encoder_phy_data_lookup
>> >   drm/i915: Separate tc check for legacy and non legacy tc phys
>> >
>> >  drivers/gpu/drm/i915/display/g4x_dp.c         |  2 +-
>> >  drivers/gpu/drm/i915/display/g4x_hdmi.c       |  2 +-
>> >  drivers/gpu/drm/i915/display/intel_bios.c     | 15 +++++++++-
>> >  drivers/gpu/drm/i915/display/intel_bios.h     |  5 +++-
>> >  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
>> >  drivers/gpu/drm/i915/display/intel_display.c  | 29 ++++++++++++-------
>> >  .../drm/i915/display/intel_display_device.h   |  1 +
>> >  .../drm/i915/display/intel_display_driver.c   |  4 +--
>> >  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>> >  9 files changed, 44 insertions(+), 18 deletions(-)
>> 
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
