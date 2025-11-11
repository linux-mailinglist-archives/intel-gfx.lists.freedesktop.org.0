Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A07BC4CFDD
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 11:22:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E14D910E13E;
	Tue, 11 Nov 2025 10:22:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h08jpF+Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FAD210E13E;
 Tue, 11 Nov 2025 10:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762856572; x=1794392572;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=zLICLYNBfIEr8lVXQn4Ual1xodA+FY2IetDnZ5IHYUs=;
 b=h08jpF+QZG17gVVc2QZDLWM1vu1KEQ9GICSjf5bT+Gnp4rifm/pJLid7
 bnm0K8hAlHM5+//3xpcOxWdfPH0RalF2t90O9QHO/TlaoP1T2eBORuStr
 exc9KoiMvEjwbIIf63Agk+eyN6psBeC3slEYHSHky3qq+V1QPoiUonCS9
 hEUvhDK6UjlaEg6ndEvtlgtfMEjqoKOqS/c103t6mSe/wZWVcXob/dHjS
 bI9jwDE7KAfPISri6lATOJAmGtq0GVaJHfnMLtQXnMn0nUaRWWcGeimqz
 efxk7qyNOi7XfVsdQlvFVSFpDADLSu27sV4pKowEth7cnKhhDwSr7EMiC A==;
X-CSE-ConnectionGUID: zBIu6hGvSQChhdcV1bVdOw==
X-CSE-MsgGUID: ZINJ5qOrSEyZKpjOTe4tOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="64957411"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="64957411"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 02:22:52 -0800
X-CSE-ConnectionGUID: oQVfN0LLRvCiP4t6vbDAvg==
X-CSE-MsgGUID: TYOyJ7WUR4uZnnvwEBNFrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="188251246"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.239])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 02:22:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, Ravi
 Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v4 06/11] drm/i915/xe3p_lpd: Handle underrun debug bits
In-Reply-To: <176282063211.2999.130715176728761102@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-6-ab3367f65f15@intel.com>
 <cd8a88c0e6f02aa1209abd3f1188e1bacf1ec1c1@intel.com>
 <176282063211.2999.130715176728761102@intel.com>
Date: Tue, 11 Nov 2025 12:22:43 +0200
Message-ID: <10ea7f19994529ae4299e4d810c78e37afea6030@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Mon, 10 Nov 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2025-11-10 08:45:48-03:00)
>>On Fri, 07 Nov 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>> Xe3p_LPD added several bits containing information that can be relevant
>>> to debugging FIFO underruns.  Add the logic necessary to handle them
>>> when reporting underruns.
>>>
>>> This was adapted from the initial patch[1] from Sai Teja Pottumuttu.
>>>
>>> [1] https://lore.kernel.org/all/20251015-xe3p_lpd-basic-enabling-v1-12-=
d2d1e26520aa@intel.com/
>>>
>>> Bspec: 69111, 69561, 74411, 74412
>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>> Cc: Matt Roper <matthew.d.roper@intel.com>
>>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> ---
>>> I tested this by adding a change on top of this series that updates
>>> Xe3p_LPD's CDCLK table to use bad values and I got the following
>>> messages:
>>>
>>>     [  +0.000237] xe 0000:00:02.0: [drm:intel_modeset_verify_crtc [xe]]=
 [CRTC:88:pipe A]
>>>     [  +0.000674] xe 0000:00:02.0: [drm] *ERROR* CPU pipe A FIFO underr=
un
>>>     [  +0.000015] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun i=
nfo: DBUF block not valid on planes: [1]
>>>     [  +0.000001] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun i=
nfo: DDB empty on planes: [1]
>>>     [  +0.000001] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun i=
nfo: DBUF below WM0 on planes: [1]
>>>     [  +0.000004] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun i=
nfo: frame count: 1890, line count: 44
>>> ---
>>>  .../gpu/drm/i915/display/intel_display_device.h    |   1 +
>>>  drivers/gpu/drm/i915/display/intel_display_regs.h  |  16 +++
>>>  drivers/gpu/drm/i915/display/intel_fbc_regs.h      |   2 +
>>>  drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 128 +++++++++++++=
++++++++
>>>  4 files changed, 147 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/driv=
ers/gpu/drm/i915/display/intel_display_device.h
>>> index b559ef43d547..91d8cfac5eff 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>>> @@ -197,6 +197,7 @@ struct intel_display_platforms {
>>>  #define HAS_TRANSCODER(__display, trans)        ((DISPLAY_RUNTIME_INFO=
(__display)->cpu_transcoder_mask & \
>>>                                                    BIT(trans)) !=3D 0)
>>>  #define HAS_UNCOMPRESSED_JOINER(__display)        (DISPLAY_VER(__displ=
ay) >=3D 13)
>>> +#define HAS_UNDERRUN_DBG_INFO(__display)        (DISPLAY_VER(__display=
) >=3D 35)
>>>  #define HAS_ULTRAJOINER(__display)        (((__display)->platform.dgfx=
 && \
>>>                                            DISPLAY_VER(__display) =3D=
=3D 14) && HAS_DSC(__display))
>>>  #define HAS_VRR(__display)                (DISPLAY_VER(__display) >=3D=
 11)
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/driver=
s/gpu/drm/i915/display/intel_display_regs.h
>>> index 9d71e26a4fa2..89ea0156ee06 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
>>> @@ -882,6 +882,21 @@
>>>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK                REG_GENMA=
SK(2, 0) /* tgl+ */
>>>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)        REG_FIELD_PR=
EP(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))
>>>=20=20
>>> +#define _UNDERRUN_DBG1_A                        0x70064
>>> +#define _UNDERRUN_DBG1_B                        0x71064
>>> +#define UNDERRUN_DBG1(pipe)                        _MMIO_PIPE(pipe, _U=
NDERRUN_DBG1_A, _UNDERRUN_DBG1_B)
>>> +#define   UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK        REG_GENMASK(29, 24)
>>> +#define   UNDERRUN_DDB_EMPTY_MASK                REG_GENMASK(21, 16)
>>> +#define   UNDERRUN_DBUF_NOT_FILLED_MASK                REG_GENMASK(13,=
 8)
>>> +#define   UNDERRUN_BELOW_WM0_MASK                REG_GENMASK(5, 0)
>>> +
>>> +#define _UNDERRUN_DBG2_A                        0x70068
>>> +#define _UNDERRUN_DBG2_B                        0x71068
>>> +#define UNDERRUN_DBG2(pipe)                        _MMIO_PIPE(pipe, _U=
NDERRUN_DBG2_A, _UNDERRUN_DBG2_B)
>>> +#define   UNDERRUN_FRAME_LINE_COUNTERS_FROZEN        REG_BIT(31)
>>> +#define   UNDERRUN_PIPE_FRAME_COUNT_MASK        REG_GENMASK(30, 20)
>>> +#define   UNDERRUN_LINE_COUNT_MASK                REG_GENMASK(19, 0)
>>> +
>>>  #define DPINVGTT                                _MMIO(VLV_DISPLAY_BASE=
 + 0x7002c) /* VLV/CHV only */
>>>  #define   DPINVGTT_EN_MASK_CHV                                REG_GENM=
ASK(27, 16)
>>>  #define   DPINVGTT_EN_MASK_VLV                                REG_GENM=
ASK(23, 16)
>>> @@ -1416,6 +1431,7 @@
>>>=20=20
>>>  #define GEN12_DCPR_STATUS_1                                _MMIO(0x464=
40)
>>>  #define  XELPDP_PMDEMAND_INFLIGHT_STATUS                REG_BIT(26)
>>> +#define  XE3P_UNDERRUN_PKGC                                REG_BIT(21)
>>>=20=20
>>>  #define FUSE_STRAP                _MMIO(0x42014)
>>>  #define   ILK_INTERNAL_GRAPHICS_DISABLE        REG_BIT(31)
>>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h b/drivers/gp=
u/drm/i915/display/intel_fbc_regs.h
>>> index b1d0161a3196..77d8321c4fb3 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>>> @@ -88,6 +88,8 @@
>>>  #define DPFC_FENCE_YOFF                        _MMIO(0x3218)
>>>  #define ILK_DPFC_FENCE_YOFF(fbc_id)        _MMIO_PIPE((fbc_id), 0x4321=
8, 0x43258)
>>>  #define DPFC_CHICKEN                        _MMIO(0x3224)
>>> +#define FBC_DEBUG_STATUS(fbc_id)        _MMIO_PIPE((fbc_id), 0x43220, =
0x43260)
>>> +#define   FBC_UNDERRUN_DECMPR                        REG_BIT(27)
>>>  #define ILK_DPFC_CHICKEN(fbc_id)        _MMIO_PIPE((fbc_id), 0x43224, =
0x43264)
>>>  #define   DPFC_HT_MODIFY                        REG_BIT(31) /* pre-ivb=
 */
>>>  #define   DPFC_NUKE_ON_ANY_MODIFICATION                REG_BIT(23) /* =
bdw+ */
>>> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drive=
rs/gpu/drm/i915/display/intel_fifo_underrun.c
>>> index c2ce8461ac9e..8a05b5c5fccd 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>>> @@ -25,6 +25,8 @@
>>>   *
>>>   */
>>>=20=20
>>> +#include <linux/seq_buf.h>
>>> +
>>>  #include <drm/drm_print.h>
>>>=20=20
>>>  #include "i915_reg.h"
>>> @@ -34,6 +36,7 @@
>>>  #include "intel_display_trace.h"
>>>  #include "intel_display_types.h"
>>>  #include "intel_fbc.h"
>>> +#include "intel_fbc_regs.h"
>>>  #include "intel_fifo_underrun.h"
>>>  #include "intel_pch_display.h"
>>>=20=20
>>> @@ -57,6 +60,118 @@
>>>   * The code also supports underrun detection on the PCH transcoder.
>>>   */
>>>=20=20
>>> +#define UNDERRUN_DBG1_NUM_PLANES 6
>>> +
>>> +static void read_underrun_dbg1(struct intel_display *display, enum pip=
e pipe, bool log)
>>> +{
>>> +        u32 val =3D intel_de_read(display, UNDERRUN_DBG1(pipe));
>>
>>Nitpick, I really don't like the style of using "functional" (for want
>>of a better word) initializers. Complicated is fine, like below for
>>masks[], but doing something with the hardware or something that can
>>fail, feels iffy.
>
> Alright.  I'll update this to do as you suggested below.  One little
> annoyance is that we will need to open code REG_FIELD_GET() (as done in
> [1]), because the mask parameter needs to be a constant expression.
>
> [1] https://lore.kernel.org/all/20251021-xe3p_lpd-basic-enabling-v2-11-10=
eae6d655b8@intel.com/
>
>>
>>> +        struct {
>>> +                u32 plane_mask;
>>> +                const char *info;
>>> +        } masks[] =3D {
>>> +                { REG_FIELD_GET(UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK, va=
l), "DBUF block not valid" },
>>> +                { REG_FIELD_GET(UNDERRUN_DDB_EMPTY_MASK, val), "DDB em=
pty" },
>>> +                { REG_FIELD_GET(UNDERRUN_DBUF_NOT_FILLED_MASK, val), "=
DBUF not completely filled" },
>>> +                { REG_FIELD_GET(UNDERRUN_BELOW_WM0_MASK, val), "DBUF b=
elow WM0" },
>>> +        };
>>> +        DECLARE_SEQ_BUF(planes_desc, 32);
>>> +

Mmh, right, I didn't even spot that val was being used in the masks[]
initialization.

Here's a completely different approach that avoids some of the
problems. I'm not sure if it's better or worse, just different. Two
lines shorter than the original.

static void log_underrun_dbg(struct intel_display *display, unsigned long p=
lane_mask,
			     enum pipe pipe, const char *info)
{
	DECLARE_SEQ_BUF(planes_desc, 32);
	unsigned int i;

	if (!plane_mask)
		return;

	for_each_set_bit(i, &plane_mask, UNDERRUN_DBG1_NUM_PLANES) {
		if (i =3D=3D 0)
			seq_buf_puts(&planes_desc, "[C]");
		else
			seq_buf_printf(&planes_desc, "[%d]", i);
	}
=09
	drm_err(display->drm, "Pipe %c FIFO underrun info: %s on planes: %s\n",
		pipe_name(pipe), info, seq_buf_str(&planes_desc));
=09
	drm_WARN_ON(display->drm, seq_buf_has_overflowed(&planes_desc));
}

static void read_underrun_dbg1(struct intel_display *display, enum pipe pip=
e, bool log)
{
	u32 val =3D intel_de_read(display, UNDERRUN_DBG1(pipe));

	if (!val)
		return;

	intel_de_write(display, UNDERRUN_DBG1(pipe), val);

	if (!log)
		return;

	log_underrun_dbg(display, REG_FIELD_GET(UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK=
, val),
			 pipe, "DBUF block not valid");
	log_underrun_dbg(display, REG_FIELD_GET(UNDERRUN_DDB_EMPTY_MASK, val),
			 pipe, "DDB empty");
	log_underrun_dbg(display, REG_FIELD_GET(UNDERRUN_DBUF_NOT_FILLED_MASK, val=
),
			 pipe, "DBUF not completely filled");
	log_underrun_dbg(display, REG_FIELD_GET(UNDERRUN_BELOW_WM0_MASK, val),
			 pipe, "DBUF below WM0");
}

>>IMO there's also a lot more clarity in having the assignment and the
>>check back to back here:
>>
>>        val =3D intel_de_read(display, UNDERRUN_DBG1(pipe));
>>        if (!val)
>>                return;
>>
>>Ditto below.
>
> I'll update those as well.
>
> That said, for curiosity:
>
> Do you prefer to always use the pattern of declaring a variable for
> register values and assigning the result of the reading as separate
> statements?  Or is this a preference for specific cases, like this one?
>
> I did
>
>     git grep -W 'u32\s\+\w\+\s*=3D\s*intel_de_read' -- drivers/gpu/drm/i9=
15/display/
>
> and found cases where the pattern "u32 val =3D intel_de_read(...)" appears
> to make the code a bit more concise IMO.
>
> While here in read_underrun_dbg1() the other variables and initializers
> do get in the way of readability/clarity, I see cases like:
>
>     u32 val =3D intel_de_read(...);
>
>     do_something_with(val);
>
> to be still clear, and each saves up 1 line of editor real estate.

Yeah, I guess it's a bit hard to have hard rules, and in small functions
or blocks it's fine to combine. Let's maybe file this under a knee-jerk
reaction to read_underrun_dbg1() where there's a bunch of declarations,
and the actual code starts with if (!val) and you're like where did that
come from. The other functions appear small enough. Fair?

BR,
Jani.

>
> --
> Gustavo Sousa
>
>>
>>BR,
>>Jani.
>>
>>
>>> +        if (!val)
>>> +                return;
>>> +
>>> +        intel_de_write(display, UNDERRUN_DBG1(pipe), val);
>>> +
>>> +        if (!log)
>>> +                return;
>>> +
>>> +        for (int i =3D 0; i < ARRAY_SIZE(masks); i++) {
>>> +                if (!masks[i].plane_mask)
>>> +                        continue;
>>> +
>>> +                seq_buf_clear(&planes_desc);
>>> +
>>> +                for (int j =3D 0; j < UNDERRUN_DBG1_NUM_PLANES; j++) {
>>> +                        if (!(masks[i].plane_mask & REG_BIT(j)))
>>> +                                continue;
>>> +
>>> +                        if (j =3D=3D 0)
>>> +                                seq_buf_puts(&planes_desc, "[C]");
>>> +                        else
>>> +                                seq_buf_printf(&planes_desc, "[%d]", j=
);
>>> +                }
>>> +
>>> +                drm_err(display->drm,
>>> +                        "Pipe %c FIFO underrun info: %s on planes: %s\=
n",
>>> +                        pipe_name(pipe), masks[i].info, seq_buf_str(&p=
lanes_desc));
>>> +
>>> +                drm_WARN_ON(display->drm, seq_buf_has_overflowed(&plan=
es_desc));
>>> +        }
>>> +}
>>> +
>>> +static void read_underrun_dbg2(struct intel_display *display, enum pip=
e pipe, bool log)
>>> +{
>>> +        u32 val =3D intel_de_read(display, UNDERRUN_DBG2(pipe));
>>> +
>>> +        if (!(val & UNDERRUN_FRAME_LINE_COUNTERS_FROZEN))
>>> +                return;
>>> +
>>> +        intel_de_write(display, UNDERRUN_DBG2(pipe), UNDERRUN_FRAME_LI=
NE_COUNTERS_FROZEN);
>>> +
>>> +        if (log)
>>> +                drm_err(display->drm,
>>> +                        "Pipe %c FIFO underrun info: frame count: %u, =
line count: %u\n",
>>> +                        pipe_name(pipe),
>>> +                        REG_FIELD_GET(UNDERRUN_PIPE_FRAME_COUNT_MASK, =
val),
>>> +                        REG_FIELD_GET(UNDERRUN_LINE_COUNT_MASK, val));
>>> +}
>>> +
>>> +static void read_underrun_dbg_fbc(struct intel_display *display, enum =
pipe pipe, bool log)
>>> +{
>>> +        enum intel_fbc_id fbc_id =3D intel_fbc_id_for_pipe(pipe);
>>> +        u32 val =3D intel_de_read(display, FBC_DEBUG_STATUS(fbc_id));
>>> +
>>> +        if (!(val & FBC_UNDERRUN_DECMPR))
>>> +                return;
>>> +
>>> +        intel_de_write(display, FBC_DEBUG_STATUS(fbc_id), FBC_UNDERRUN=
_DECMPR);
>>> +
>>> +        if (log)
>>> +                drm_err(display->drm,
>>> +                        "Pipe %c FIFO underrun info: FBC decompressing=
\n",
>>> +                        pipe_name(pipe));
>>> +}
>>> +
>>> +static void read_underrun_dbg_pkgc(struct intel_display *display, bool=
 log)
>>> +{
>>> +        u32 val =3D intel_de_read(display, GEN12_DCPR_STATUS_1);
>>> +
>>> +        if (!(val & XE3P_UNDERRUN_PKGC))
>>> +                return;
>>> +
>>> +        /*
>>> +         * Note: If there are multiple pipes enabled, only one of them=
 will see
>>> +         * XE3P_UNDERRUN_PKGC set.
>>> +         */
>>> +        intel_de_write(display, GEN12_DCPR_STATUS_1, XE3P_UNDERRUN_PKG=
C);
>>> +
>>> +        if (log)
>>> +                drm_err(display->drm,
>>> +                        "General FIFO underrun info: Package C-state b=
locking memory\n");
>>> +}
>>> +
>>> +static void read_underrun_dbg_info(struct intel_display *display,
>>> +                                   enum pipe pipe,
>>> +                                   bool log)
>>> +{
>>> +        if (!HAS_UNDERRUN_DBG_INFO(display))
>>> +                return;
>>> +
>>> +        read_underrun_dbg1(display, pipe, log);
>>> +        read_underrun_dbg2(display, pipe, log);
>>> +        read_underrun_dbg_fbc(display, pipe, log);
>>> +        read_underrun_dbg_pkgc(display, log);
>>> +}
>>> +
>>>  static bool ivb_can_enable_err_int(struct intel_display *display)
>>>  {
>>>          struct intel_crtc *crtc;
>>> @@ -262,6 +377,17 @@ static bool __intel_set_cpu_fifo_underrun_reportin=
g(struct intel_display *displa
>>>          old =3D !crtc->cpu_fifo_underrun_disabled;
>>>          crtc->cpu_fifo_underrun_disabled =3D !enable;
>>>=20=20
>>> +        /*
>>> +         * The debug bits get latched at the time of the FIFO underrun=
 ISR bit
>>> +         * getting set.  That means that any existing debug bit that i=
s set when
>>> +         * handling a FIFO underrun interrupt has the potential to bel=
ong to
>>> +         * another underrun event (past or future).  To alleviate this=
 problem,
>>> +         * let's clear existing bits before enabling the interrupt, so=
 that at
>>> +         * least we don't get information that is too out-of-date.
>>> +         */
>>> +        if (enable && !old)
>>> +                read_underrun_dbg_info(display, pipe, false);
>>> +
>>>          if (HAS_GMCH(display))
>>>                  i9xx_set_fifo_underrun_reporting(display, pipe, enable=
, old);
>>>          else if (display->platform.ironlake || display->platform.sandy=
bridge)
>>> @@ -379,6 +505,8 @@ void intel_cpu_fifo_underrun_irq_handler(struct int=
el_display *display,
>>>                  trace_intel_cpu_fifo_underrun(display, pipe);
>>>=20=20
>>>                  drm_err(display->drm, "CPU pipe %c FIFO underrun\n", p=
ipe_name(pipe));
>>> +
>>> +                read_underrun_dbg_info(display, pipe, true);
>>>          }
>>>=20=20
>>>          intel_fbc_handle_fifo_underrun_irq(display);
>>
>>--=20
>>Jani Nikula, Intel

--=20
Jani Nikula, Intel
