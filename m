Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C20B878C86F
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 17:18:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97E1A10E112;
	Tue, 29 Aug 2023 15:18:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B39010E112
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Aug 2023 15:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693322304; x=1724858304;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=tkurUB7OSVA7gHbH6VOx8WdNFFYFvRtTfXIylbceaQs=;
 b=jXvbwmVUYxC83mV4A12tQldbEE6BWp5OkCTVAWZvT7CIV2vnivbUzlGS
 CA8FPcRqHrd68gmUn8007syoJ8oIXRQTF4b7uZ4vu2CnKxGDYr0Yq6nwf
 WPGcQsF6Mj2XwkcHOmD1MWJ/jUbzgrIvmWXldh4ZXQBCYopHd+ui2QgqJ
 6svtBZHEF3XujXvBNVQ5RchnLEUNd64aRufygGPVrACdNtfsEvR2bdmlP
 aJdrK2wL2M4HJJfzvBfRYrSz1cAm8eCBN8m+egHB0qlLsPfjmfXmpdNj2
 uCXgF9icadrdl0osfquhhuA+ZIwYxQhND35aJFMLV5p5gX7sfpSLd9OWv g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="441756576"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="441756576"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 08:12:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="688543840"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="688543840"
Received: from mnefedov-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.32.206])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 08:12:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, "Sripada, Radhakrishna"
 <radhakrishna.sripada@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <169325913612.6737.8521384979789302140@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230828173405.59812-1-gustavo.sousa@intel.com>
 <DM4PR11MB597193DFDCC38D7E92C9CFC187E0A@DM4PR11MB5971.namprd11.prod.outlook.com>
 <169325913612.6737.8521384979789302140@gjsousa-mobl2>
Date: Tue, 29 Aug 2023 18:12:19 +0300
Message-ID: <87sf81288c.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cx0: Check and increase msgbus
 timeout threshold
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

On Mon, 28 Aug 2023, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>> +#define INTEL_CX0_MSGBUS_TIMER_VAL_MAX        0x200

Either make this 0x200U (for unsigned)...

>>> +
>>>  bool intel_is_c10phy(struct drm_i915_private *i915, enum phy phy)
>>>  {
>>>          if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 0) && phy < PHY_C)
>>> @@ -119,6 +122,43 @@ static void intel_cx0_bus_reset(struct drm_i915_pr=
ivate
>>> *i915, enum port port, i
>>>          intel_clear_response_ready_flag(i915, port, lane);
>>>  }
>>>=20
>>> +/*
>>> + * Check if there was a timeout detected by the hardware in the messag=
e bus
>>> + * and bump the threshold if so.
>>> + */
>>> +static void intel_cx0_bus_check_and_bump_timer(struct drm_i915_private
>>> *i915,
>>> +                                               enum port port, int lan=
e)
>>> +{
>>> +        enum phy phy =3D intel_port_to_phy(i915, port);
>>> +        i915_reg_t reg;
>>> +        u32 val;
>>> +        u32 timer_val;
>>> +
>>> +        reg =3D XELPDP_PORT_MSGBUS_TIMER(port, lane);
>>> +        val =3D intel_de_read(i915, reg);
>>> +
>>> +        if (!(val & XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT)) {
>>> +                drm_warn(&i915->drm,
>>> +                         "PHY %c lane %d: hardware did not detect a
>>> timeout\n",
>>> +                         phy_name(phy), lane);
>>> +                return;
>>> +        }
>>> +
>>> +        timer_val =3D
>>> REG_FIELD_GET(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK, val);
>>> +
>>> +        if (timer_val =3D=3D INTEL_CX0_MSGBUS_TIMER_VAL_MAX)
>>> +                return;
>>> +
>>> +        timer_val =3D min(2 * timer_val,
>>> (u32)INTEL_CX0_MSGBUS_TIMER_VAL_MAX);
>>     ^ is this cast necessary?
>
> Yes. I remember getting a warning without it. Let me remove it to remembe=
r...

...or use min_t() instead of adding the cast here.

BR,
Jani.


>
> ...done! I think it complains because the arguments are of different type=
s:
>
>     In file included from drivers/gpu/drm/i915/display/intel_cx0_phy.c:8:
>     drivers/gpu/drm/i915/display/intel_cx0_phy.c: In function =E2=80=98in=
tel_cx0_bus_check_and_bump_timer=E2=80=99:
>     ./include/linux/minmax.h:20:35: error: comparison of distinct pointer=
 types lacks a cast [-Werror]
>        20 |         (!!(sizeof((typeof(x) *)1 =3D=3D (typeof(y) *)1)))
>           |                                   ^~
>     ./include/linux/minmax.h:26:18: note: in expansion of macro =E2=80=98=
__typecheck=E2=80=99
>        26 |                 (__typecheck(x, y) && __no_side_effects(x, y))
>           |                  ^~~~~~~~~~~
>     ./include/linux/minmax.h:36:31: note: in expansion of macro =E2=80=98=
__safe_cmp=E2=80=99
>        36 |         __builtin_choose_expr(__safe_cmp(x, y), \
>           |                               ^~~~~~~~~~
>     ./include/linux/minmax.h:67:25: note: in expansion of macro =E2=80=98=
__careful_cmp=E2=80=99
>        67 | #define min(x, y)       __careful_cmp(x, y, <)
>           |                         ^~~~~~~~~~~~~
>     drivers/gpu/drm/i915/display/intel_cx0_phy.c:152:21: note: in expansi=
on of macro =E2=80=98min=E2=80=99
>       152 |         timer_val =3D min(2 * timer_val, INTEL_CX0_MSGBUS_TIM=
ER_VAL_MAX);
>           |
>
>>
>>> +        val &=3D ~XELPDP_PORT_MSGBUS_TIMER_VAL_MASK;
>>> +        val |=3D REG_FIELD_PREP(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK,
>>> timer_val);
>>We do not use REG_FIELD_PREP in the function. Instead we use it in
>>register definition in intel_cx0_phy_regs.h.
>
> I think it makes sense have definitions using REG_FIELD_PREP() in header =
files
> and use those definitions in .c files for fields whose values are are
> enumerated.
>
> Now, for fields without enumeration, like this one in discussion, I think=
 it is
> fine to use REG_FIELD_PREP() directly. The MASK is already exposed anyway=
...
>
> Besides, it seems we already have lines of code in *.c files using the pa=
ttern
> above:
>
>     git grep REG_FIELD_PREP drm-tip/drm-tip -- ':/drivers/gpu/drm/i915/**=
/*.c'
>
> Let me know what you think. I could add a XELPDP_PORT_MSGBUS_TIMER_VAL() =
macro
> if you think it is necessary. My personal take is that using REG_FIELD_PR=
EP()
> for this case is fine.
>
> --
> Gustavo Sousa
>
>>
>>Thanks,
>>Radhakrishna Sripada
>>
>>> +
>>> +        drm_dbg_kms(&i915->drm,
>>> +                    "PHY %c lane %d: increasing msgbus timer threshold=
 to
>>> %#x\n",
>>> +                    phy_name(phy), lane, timer_val);
>>> +        intel_de_write(i915, reg, val);
>>> +}
>>> +
>>>  static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum =
port port,
>>>                                    int command, int lane, u32 *val)
>>>  {
>>> @@ -132,6 +172,7 @@ static int intel_cx0_wait_for_ack(struct
>>> drm_i915_private *i915, enum port port,
>>>                                           XELPDP_MSGBUS_TIMEOUT_SLOW,
>>> val)) {
>>>                  drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for
>>> message ACK. Status: 0x%x\n",
>>>                              phy_name(phy), *val);
>>> +                intel_cx0_bus_check_and_bump_timer(i915, port, lane);
>>>                  intel_cx0_bus_reset(i915, port, lane);
>>>                  return -ETIMEDOUT;
>>>          }
>>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>>> b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>>> index cb5d1be2ba19..17cc3385aabb 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>>> @@ -110,6 +110,18 @@
>>>  #define   CX0_P4PG_STATE_DISABLE                        0xC
>>>  #define   CX0_P2_STATE_RESET                                0x2
>>>=20
>>> +#define _XELPDP_PORT_MSGBUS_TIMER_LN0_A
>>>         0x640d8
>>> +#define _XELPDP_PORT_MSGBUS_TIMER_LN0_B
>>>         0x641d8
>>> +#define _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC1                0x16f258
>>> +#define _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC2                0x16f458
>>> +#define XELPDP_PORT_MSGBUS_TIMER(port, lane)
>>>         _MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
>>> +
>>>          _XELPDP_PORT_MSGBUS_TIMER_LN0_A, \
>>> +
>>>          _XELPDP_PORT_MSGBUS_TIMER_LN0_B, \
>>> +
>>>          _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC1, \
>>> +
>>>          _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC2) + (lane) * 4)
>>> +#define   XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT                REG_BIT(31)
>>> +#define   XELPDP_PORT_MSGBUS_TIMER_VAL_MASK
>>>         REG_GENMASK(23, 0)
>>> +
>>>  #define _XELPDP_PORT_CLOCK_CTL_A                        0x640E0
>>>  #define _XELPDP_PORT_CLOCK_CTL_B                        0x641E0
>>>  #define _XELPDP_PORT_CLOCK_CTL_USBC1                        0x16F260
>>> --
>>> 2.41.0
>>

--=20
Jani Nikula, Intel Open Source Graphics Center
