Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 733085A6462
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 15:08:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 684C910E030;
	Tue, 30 Aug 2022 13:08:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E0A010E030
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 13:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661864923; x=1693400923;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=1+dJTmv/dI0NqVZI9Dj/zEgIxigcZbrbi4Ef/bNqHzc=;
 b=nCrW7yHhDwVS3Km66UUpWkxZZfUHkX+f4RA0+oCP7EpeRxqoCqdS//e4
 a+jvqMibhCz2ZPUnkHD53emdO9byPSiyZRlj9JAyqL4PBt4493hje0M73
 qt22e76yI7CHdoUt6atmdHiBowt0msdtB7JdgzhPTO6m1pYm+VfFK75vr
 QlAvvpiyLdvrhZw64atzFBETFN5zN9o1veyPcYJ+0vazCnXqkfWSUYzm1
 SzbH/cR/C0Rfl2EekFB/P4l6OmkTVk5PGe15bAgmsPis0AQh+MuwBWfWj
 8RUqDqU6rS/K18yxK5KwUi/8kOOgAVB80EZmsH9LZ32xQfBGIkwPRu24i g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="296446694"
X-IronPort-AV: E=Sophos;i="5.93,275,1654585200"; d="scan'208";a="296446694"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 06:08:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,275,1654585200"; d="scan'208";a="588595860"
Received: from amrabet-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.211])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 06:08:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Yw4BStP1E4WLwoaR@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1661855191.git.jani.nikula@intel.com>
 <Yw4BStP1E4WLwoaR@intel.com>
Date: Tue, 30 Aug 2022 16:08:33 +0300
Message-ID: <878rn5ev5a.fsf@intel.com>
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

On Tue, 30 Aug 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Aug 30, 2022 at 01:27:56PM +0300, Jani Nikula wrote:
>> The register macros are the last holdout for implicit dev_priv local
>> variable. Try out what it would mean to stop using it, and require
>> passing i915 as parameter to the register macros. Use gmbus as a nicely
>> isolated playing ground.
>>=20
>> Jani Nikula (6):
>>   drm/i915/gmbus: split out gmbus regs in a separate file
>>   drm/i915/gmbus: whitespace cleanup in reg definitions
>>   drm/i915/gmbus: add wrapper for gmbus mmio base
>>   drm/i915/gmbus: stop using implicit dev_priv in register definitions
>>   drm/i915/reg: stop using implicit dev_priv in DSPCLK_GATE_D
>>   drm/i915/gmbus: mass dev_priv -> i915 rename
>
> Looks reasonable enough to me. Just wondering when I'll start
> getting annoyed at not finding something in i915_reg.h :)

That's a risk. :)

The flip side is, I've actually liked to see how few places really need
each of the new *_regs.h files. It's almost an indication the design is
wrong if more than a couple .c files include the same regs file.

> Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks!

Jani.

>
>>=20
>>  .../i915/display/intel_display_power_well.c   |   4 +-
>>  drivers/gpu/drm/i915/display/intel_gmbus.c    | 275 +++++++++---------
>>  .../gpu/drm/i915/display/intel_gmbus_regs.h   |  81 ++++++
>>  drivers/gpu/drm/i915/display/intel_overlay.c  |   4 +-
>>  drivers/gpu/drm/i915/display/vlv_dsi.c        |   8 +-
>>  drivers/gpu/drm/i915/gvt/edid.c               |   3 +-
>>  drivers/gpu/drm/i915/i915_reg.h               |  65 +----
>>  drivers/gpu/drm/i915/intel_pm.c               |   4 +-
>>  8 files changed, 232 insertions(+), 212 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_gmbus_regs.h
>>=20
>> --=20
>> 2.34.1

--=20
Jani Nikula, Intel Open Source Graphics Center
