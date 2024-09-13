Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C94DF978A9C
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 23:32:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6E6A10EDB3;
	Fri, 13 Sep 2024 21:32:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TZr0OfXt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DFBE10EDB3
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 21:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726263138; x=1757799138;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=8tg8u7ziE8Yep5kKGdXUcG/RJyLK1xhjfb2ZY1f9lEo=;
 b=TZr0OfXtQNP+zxBE9tYlsS2DK4ognpN3NK64Kz4PQYZrkjWbAJ+QtWjL
 fPbrrMo4s0zfJ62b3E65F6Ab8bwTyJugdSPTxqNTshd1EXV1u25Lzq0LP
 xx9LAkXyJRAknpeeWP1pFQl2W62/qm+p21Ul2i9lrfL9GuxBakCykUthp
 UzYSjgr+uIo0w04HGt6EJ9VuH4aY6aCh0gPNb7NKEPZIg1im3Il1vTiMv
 6sHa8eixQLOAeGTRz1dauUrSNfglHiHom/17bhzO93tPOICdn7/7BhMoV
 bDOrbnxc1Zk3Mm1Q9ZXbzbE5z3AkfcGO9JUvPaZTvA/kgMPuem4ubvlaT g==;
X-CSE-ConnectionGUID: mK8ox3qERPiMNJ2QhLoisw==
X-CSE-MsgGUID: /ncRrld2QTGxxu134nd3zQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11194"; a="50593390"
X-IronPort-AV: E=Sophos;i="6.10,227,1719903600"; d="scan'208";a="50593390"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 14:32:18 -0700
X-CSE-ConnectionGUID: wZq1/cegSpyjaYG/KQum3A==
X-CSE-MsgGUID: Bd0quYDFQBCIb1VKwvcPRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,227,1719903600"; d="scan'208";a="68983426"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.153])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 14:32:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915/display: move enum i9xx_plane_id to
 intel_display_limits.h
In-Reply-To: <ZuSmylwGgvOPi1W7@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1726235647.git.jani.nikula@intel.com>
 <1e8f9768f2d638dfa1fc72f80f0d7391c4a48bbb.1726235647.git.jani.nikula@intel.com>
 <ZuSmylwGgvOPi1W7@intel.com>
Date: Sat, 14 Sep 2024 00:32:13 +0300
Message-ID: <8734m3dyua.fsf@intel.com>
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

On Fri, 13 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Fri, Sep 13, 2024 at 04:54:39PM +0300, Jani Nikula wrote:
>> Move enum i9xx_plane_id from intel_display.h to intel_display_limits.h
>> to be able to reduce dependencies on intel_display.h.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.h        | 10 ----------
>>  drivers/gpu/drm/i915/display/intel_display_limits.h | 10 ++++++++++
>>  drivers/gpu/drm/i915/gvt/cmd_parser.c               |  1 -
>>  3 files changed, 10 insertions(+), 11 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
>> index d10608526eee..4bdb48084cab 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>> @@ -95,16 +95,6 @@ static inline bool transcoder_is_dsi(enum transcoder transcoder)
>>  	return transcoder == TRANSCODER_DSI_A || transcoder == TRANSCODER_DSI_C;
>>  }
>>  
>> -/*
>> - * Global legacy plane identifier. Valid only for primary/sprite
>> - * planes on pre-g4x, and only for primary planes on g4x-bdw.
>> - */
>> -enum i9xx_plane_id {
>> -	PLANE_A,
>> -	PLANE_B,
>> -	PLANE_C,
>> -};
>> -
>>  #define plane_name(p) ((p) + 'A')
>>  
>>  #define for_each_plane_id_on_crtc(__crtc, __p) \
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_limits.h b/drivers/gpu/drm/i915/display/intel_display_limits.h
>> index c4775c99dc83..f0fa27e365ab 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_limits.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_limits.h
>
> why here and not in somewhere like:
> drivers/gpu/drm/i915/display/i9xx_plane.h
> ?

Here it's next to enum plane_id. This entire file exists to provide a
minimal header for the enums.

I'm not sure what the right thing is, but putting this to i9xx_plane.h
means including that file in more places, just for this thing, while
they have no use at all for the interfaces provided by i9xx_plane.h.

BR,
Jani.



>
>> @@ -49,6 +49,16 @@ enum transcoder {
>>  	I915_MAX_TRANSCODERS
>>  };
>>  
>> +/*
>> + * Global legacy plane identifier. Valid only for primary/sprite
>> + * planes on pre-g4x, and only for primary planes on g4x-bdw.
>> + */
>> +enum i9xx_plane_id {
>> +	PLANE_A,
>> +	PLANE_B,
>> +	PLANE_C,
>> +};
>> +
>>  /*
>>   * Per-pipe plane identifier.
>>   * I915_MAX_PLANES in the enum below is the maximum (across all platforms)
>> diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
>> index 2f4c9c66b40b..81d67a46cd9e 100644
>> --- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
>> +++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
>> @@ -50,7 +50,6 @@
>>  #include "trace.h"
>>  
>>  #include "display/i9xx_plane_regs.h"
>> -#include "display/intel_display.h"
>>  #include "display/intel_sprite_regs.h"
>>  #include "gem/i915_gem_context.h"
>>  #include "gem/i915_gem_pm.h"
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
