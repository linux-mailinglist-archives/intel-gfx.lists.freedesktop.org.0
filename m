Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2255B25B5
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 20:25:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BCAD10EBAE;
	Thu,  8 Sep 2022 18:25:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A42710EBAE
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 18:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662661524; x=1694197524;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=+DFFQojgghIB4Hxzxot1Vb2D444h/YMo7e4sgUYh3uA=;
 b=UF/VXUqB93PioMo5ydXZyaAhnnkp9EVXcD0NRc1dwV7iNon07+7zfAgF
 exeRn6sNZi3Jj3db5bBLHDdVI+JAvdPAL5gipeFeRGC4X2L1ePU1GDBYl
 JPpVWmtNPbwiBYgwUqk9Ysyja0ysvrxUXdh18Dt03RFmBGeTPhzaGQqhE
 SNNSIZsPFN3b97OMM7ajMpAcBTxO9thzakESURCAH8rkyxEX2HY1w/FSw
 VkPXOptoH6wvBZLKeG7lCxXUNU6dGrLYGfbG/oRDlILyg6TpxzkFzLyU+
 ICMyLj1O5keUyZKFHqQzyOeOx2/JT6calg6xJveLQYb/Wr43Idtl8+cCL Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="383581824"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="383581824"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 11:25:20 -0700
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="676818770"
Received: from fproca-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.45.108])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 11:25:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YxotC3pJctVNNjmv@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220908165702.973854-1-jani.nikula@intel.com>
 <YxotC3pJctVNNjmv@intel.com>
Date: Thu, 08 Sep 2022 21:24:59 +0300
Message-ID: <87sfl17mh0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: hide struct intel_dsb better
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

On Thu, 08 Sep 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Sep 08, 2022 at 07:57:02PM +0300, Jani Nikula wrote:
>> struct intel_dsb can be an opaque type, hidden in intel_dsb.c. Make it
>> so. Reduce related includes while at it.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> One thing I was mildly worried about with dsb is the cost
> of creating the batch (updating LUTs involves writing some
> thousands of dwords). So I was pondering whether that should
> be inlined as opposed to being a function call per dword.
> But as it stands it's already a function call, and
> I've not actually measured how fast/slow it really is.
> So can't really argue against this sort of stuff, for the
> moment at least :)

I'm also on a mission to kill useless static inlines. ;)

Anything that requires pulling in additional headers or exposing the
guts of the implementation are suspect and need proper justification.

> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_color.c   |  1 +
>>  drivers/gpu/drm/i915/display/intel_display.c |  1 +
>>  drivers/gpu/drm/i915/display/intel_dsb.c     | 30 ++++++++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_dsb.h     | 28 ------------------
>>  drivers/gpu/drm/i915/i915_drv.h              |  1 -
>>  5 files changed, 32 insertions(+), 29 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/dr=
m/i915/display/intel_color.c
>> index ed98c732b24e..6bda4274eae9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_color.c
>> +++ b/drivers/gpu/drm/i915/display/intel_color.c
>> @@ -26,6 +26,7 @@
>>  #include "intel_de.h"
>>  #include "intel_display_types.h"
>>  #include "intel_dpll.h"
>> +#include "intel_dsb.h"
>>  #include "vlv_dsi_pll.h"
>>=20=20
>>  struct intel_color_funcs {
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/=
drm/i915/display/intel_display.c
>> index 2b6bb5ee7698..296cbcd1352c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -91,6 +91,7 @@
>>  #include "intel_dmc.h"
>>  #include "intel_dp_link_training.h"
>>  #include "intel_dpt.h"
>> +#include "intel_dsb.h"
>>  #include "intel_fbc.h"
>>  #include "intel_fbdev.h"
>>  #include "intel_fdi.h"
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/=
i915/display/intel_dsb.c
>> index c4affcb216fd..fc9c3e41c333 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
>> @@ -9,6 +9,36 @@
>>  #include "i915_drv.h"
>>  #include "intel_de.h"
>>  #include "intel_display_types.h"
>> +#include "intel_dsb.h"
>> +
>> +struct i915_vma;
>> +
>> +enum dsb_id {
>> +	INVALID_DSB =3D -1,
>> +	DSB1,
>> +	DSB2,
>> +	DSB3,
>> +	MAX_DSB_PER_PIPE
>> +};
>> +
>> +struct intel_dsb {
>> +	enum dsb_id id;
>> +	u32 *cmd_buf;
>> +	struct i915_vma *vma;
>> +
>> +	/*
>> +	 * free_pos will point the first free entry position
>> +	 * and help in calculating tail of command buffer.
>> +	 */
>> +	int free_pos;
>> +
>> +	/*
>> +	 * ins_start_offset will help to store start address of the dsb
>> +	 * instuction and help in identifying the batch of auto-increment
>> +	 * register.
>> +	 */
>> +	u32 ins_start_offset;
>> +};
>>=20=20
>>  #define DSB_BUF_SIZE    (2 * PAGE_SIZE)
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/=
i915/display/intel_dsb.h
>> index 6cb9c580cdca..74dd2b3343bb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsb.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dsb.h
>> @@ -11,34 +11,6 @@
>>  #include "i915_reg_defs.h"
>>=20=20
>>  struct intel_crtc_state;
>> -struct i915_vma;
>> -
>> -enum dsb_id {
>> -	INVALID_DSB =3D -1,
>> -	DSB1,
>> -	DSB2,
>> -	DSB3,
>> -	MAX_DSB_PER_PIPE
>> -};
>> -
>> -struct intel_dsb {
>> -	enum dsb_id id;
>> -	u32 *cmd_buf;
>> -	struct i915_vma *vma;
>> -
>> -	/*
>> -	 * free_pos will point the first free entry position
>> -	 * and help in calculating tail of command buffer.
>> -	 */
>> -	int free_pos;
>> -
>> -	/*
>> -	 * ins_start_offset will help to store start address of the dsb
>> -	 * instuction and help in identifying the batch of auto-increment
>> -	 * register.
>> -	 */
>> -	u32 ins_start_offset;
>> -};
>>=20=20
>>  void intel_dsb_prepare(struct intel_crtc_state *crtc_state);
>>  void intel_dsb_cleanup(struct intel_crtc_state *crtc_state);
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915=
_drv.h
>> index 76aad81c014b..be201ba5e9ab 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -38,7 +38,6 @@
>>=20=20
>>  #include "display/intel_display.h"
>>  #include "display/intel_display_core.h"
>> -#include "display/intel_dsb.h"
>>=20=20
>>  #include "gem/i915_gem_context_types.h"
>>  #include "gem/i915_gem_lmem.h"
>> --=20
>> 2.34.1

--=20
Jani Nikula, Intel Open Source Graphics Center
