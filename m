Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 145995A81F4
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 17:42:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 801A910E2B3;
	Wed, 31 Aug 2022 15:42:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6060510E2B3
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Aug 2022 15:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661960567; x=1693496567;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=hMEyQml4SloL9lfF6NdPXZIhHHrXr8Z0oF8iAE2wXJU=;
 b=nN7r2dNoj5Tj+dTaPKBM+mi2o9rRnwt+BGUdk+TUJgSABQ5SpdbStUgz
 0iW89MtXhju/M8W919/zf06v3HUfpC7QiiUxlZNgazxQP2a0vIngr1Niw
 nHVhuvWYUe/64ZprStvwe5aJf1/SKU2jxYmXBAQfDSh7Li3iGJUhmezSm
 nvx7F6DgtMQPeA+HzO0voT+nz3E8qJsgmu2uHoKHXHmPVlcIijMD9BOpu
 Umzjhtmg+pbXqIkwy+Hr4UHMDMIRaXSlHVU9v7wlJAC9MCxjP8+tN7fVq
 7HlSHIBg00TRhooWhIHc+l0bLxzM0YKAo5N+R7DwfD+GKVf3Ua6c4YqoF Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="381773079"
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="381773079"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 08:42:46 -0700
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="641917712"
Received: from nprotaso-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.43.15])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 08:42:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <878rn5ev5a.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1661855191.git.jani.nikula@intel.com>
 <Yw4BStP1E4WLwoaR@intel.com> <878rn5ev5a.fsf@intel.com>
Date: Wed, 31 Aug 2022 18:42:36 +0300
Message-ID: <87h71sctcj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 0/6] drm/i915/gmbus: stop using implicit
 dev_priv
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 30 Aug 2022, Jani Nikula <jani.nikula@intel.com> wrote:
> On Tue, 30 Aug 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.c=
om> wrote:
>> On Tue, Aug 30, 2022 at 01:27:56PM +0300, Jani Nikula wrote:
>>> The register macros are the last holdout for implicit dev_priv local
>>> variable. Try out what it would mean to stop using it, and require
>>> passing i915 as parameter to the register macros. Use gmbus as a nicely
>>> isolated playing ground.
>>>=20
>>> Jani Nikula (6):
>>>   drm/i915/gmbus: split out gmbus regs in a separate file
>>>   drm/i915/gmbus: whitespace cleanup in reg definitions
>>>   drm/i915/gmbus: add wrapper for gmbus mmio base
>>>   drm/i915/gmbus: stop using implicit dev_priv in register definitions
>>>   drm/i915/reg: stop using implicit dev_priv in DSPCLK_GATE_D
>>>   drm/i915/gmbus: mass dev_priv -> i915 rename
>>
>> Looks reasonable enough to me. Just wondering when I'll start
>> getting annoyed at not finding something in i915_reg.h :)
>
> That's a risk. :)
>
> The flip side is, I've actually liked to see how few places really need
> each of the new *_regs.h files. It's almost an indication the design is
> wrong if more than a couple .c files include the same regs file.
>
>> Series is
>> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Thanks!

And pushed to drm-intel-next.

BR,
Jani.

>
> Jani.
>
>>
>>>=20
>>>  .../i915/display/intel_display_power_well.c   |   4 +-
>>>  drivers/gpu/drm/i915/display/intel_gmbus.c    | 275 +++++++++---------
>>>  .../gpu/drm/i915/display/intel_gmbus_regs.h   |  81 ++++++
>>>  drivers/gpu/drm/i915/display/intel_overlay.c  |   4 +-
>>>  drivers/gpu/drm/i915/display/vlv_dsi.c        |   8 +-
>>>  drivers/gpu/drm/i915/gvt/edid.c               |   3 +-
>>>  drivers/gpu/drm/i915/i915_reg.h               |  65 +----
>>>  drivers/gpu/drm/i915/intel_pm.c               |   4 +-
>>>  8 files changed, 232 insertions(+), 212 deletions(-)
>>>  create mode 100644 drivers/gpu/drm/i915/display/intel_gmbus_regs.h
>>>=20
>>> --=20
>>> 2.34.1

--=20
Jani Nikula, Intel Open Source Graphics Center
