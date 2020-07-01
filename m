Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 975C92110EC
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 18:43:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43D6A6E955;
	Wed,  1 Jul 2020 16:43:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1447F6E955
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 16:43:11 +0000 (UTC)
IronPort-SDR: 1TtRJPM1xEXW3Rv1/J4J2PRN5fX86CmeDlkIq/2i5tt7o9harfTrshYnnnYB+PKPjzSLcN4ktv
 nTHpOLDtXu8w==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="126261611"
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="126261611"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 09:43:10 -0700
IronPort-SDR: pcEwyt4QuluKZmxpMfLB6O5OgBU4F7szZDSzkCc3oCJ0YpSsBl9sxXX7xcwRKQpstA9dTyzDms
 4jRrbUbbAcxQ==
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="321807965"
Received: from jhillike-mobl2.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.251.5.130])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 09:43:10 -0700
Date: Wed, 1 Jul 2020 09:43:08 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200701164308.fb77bupeggrcgnnq@ldmartin-desk1>
References: <20200625001120.22810-1-lucas.demarchi@intel.com>
 <20200625001120.22810-5-lucas.demarchi@intel.com>
 <87d05fl1t1.fsf@intel.com> <877dvnl0o6.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <877dvnl0o6.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 4/6] drm/i915/display: add phy,
 vbt and ddi indexes
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 01, 2020 at 06:23:05PM +0300, Jani Nikula wrote:
>On Wed, 01 Jul 2020, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>> On Wed, 24 Jun 2020, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>> Identify 3 possible cases in which the index numbers can be different
>>> from the "port" and add them to the description-based ddi initialization
>>> table.  This can be used in place of additional functions mapping from
>>> one to the other.  Right now we already cover part of this by creating kind of
>>> virtual phy numbering, but that comes with downsides:
>>>
>>> a) there's not really a "phy numbering" in the spec, this is purely a
>>> software thing; hardware uses whatever they want thinking mapping from
>>> one to the other arbitrarily is easy in software.
>>>
>>> b) currently the mapping occurs on "leaf" functions, making the decision
>>> based on the platform for each of those functions
>>>
>>> With this new table the approach will be: the port, as defined by the
>>> enum port, is merely a driver convention and won't be used anymore to
>>> define the register offset or register bits. For that we have the other
>>> 3 indexes, identified as being possibly different from the current usage
>>> of register bits: ddi, vbt and phy. The phy type is also added here,
>>> meant to replace the checks for combo vs tc.
>>>
>>> v2: Rebase and add RKL
>>>
>>
>> I guess I'd like to see where the *_idx fields will lead before
>> advocating for this.
>>
>> With them removed,
>
>Ahem, ddi_idx and vbt_idx - obviously phy_idx is used, and I approve of
>the use.
>
>Another comment inline below.
>
>>
>> Acked-by: Jani Nikula <jani.nikula@intel.com>
>>
>> But I'm also not saying you can't have them - until I see where this
>> leads. ;)
>>
>> One comment inline below.
>>
>>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_display.c  | 64 ++++++++++---------
>>>  drivers/gpu/drm/i915/display/intel_display.h  |  8 +++
>>>  .../drm/i915/display/intel_display_types.h    |  4 ++
>>>  3 files changed, 45 insertions(+), 31 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>> index c234b50212b0..d591063502c5 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -16806,57 +16806,59 @@ static void intel_pps_init(struct drm_i915_private *dev_priv)
>>>  }
>>>
>>>  static const struct intel_ddi_port_info rkl_ports[] = {
>>> -	{ .name = "DDI A",   .port = PORT_A },
>>> -	{ .name = "DDI B",   .port = PORT_B },
>>> -	{ .name = "DDI TC1", .port = PORT_D },
>>> -	{ .name = "DDI TC2", .port = PORT_E },
>>> +	{ .name = "DDI A", .port = PORT_A, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0, },
>>> +	{ .name = "DDI B", .port = PORT_B, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1, },
>>> +	/* TODO: use continguous namespace for port once driver is converted */
>>> +	{ .name = "DDI C", .port = PORT_D, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x3, .phy_idx = 0x2, .vbt_idx = 0x2, },
>>> +	{ .name = "DDI D", .port = PORT_E, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x4, .phy_idx = 0x3, .vbt_idx = 0x3, },
>>>  	{ .port = PORT_NONE }
>>>  };
>>>
>>>  static const struct intel_ddi_port_info tgl_ports[] = {
>>> -	{ .name = "DDI A",   .port = PORT_A },
>>> -	{ .name = "DDI B",   .port = PORT_B },
>>> -	{ .name = "DDI TC1", .port = PORT_D },
>>> -	{ .name = "DDI TC2", .port = PORT_E },
>>> -	{ .name = "DDI TC3", .port = PORT_F },
>>> -	{ .name = "DDI TC4", .port = PORT_G },
>>> -	{ .name = "DDI TC5", .port = PORT_H },
>>> -	{ .name = "DDI TC6", .port = PORT_I },
>>> +	{ .name = "DDI A",   .port = PORT_A, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0, },
>>> +	{ .name = "DDI B",   .port = PORT_B, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1, },
>>> +	/* TODO: use continguous namespace for port once driver is converted */
>>> +	{ .name = "DDI TC1", .port = PORT_D, .phy_type = PHY_TYPE_DKL,   .ddi_idx = 0x3, .phy_idx = 0x0, .vbt_idx = 0x2, },
>>> +	{ .name = "DDI TC2", .port = PORT_E, .phy_type = PHY_TYPE_DKL,   .ddi_idx = 0x4, .phy_idx = 0x1, .vbt_idx = 0x3, },
>>> +	{ .name = "DDI TC3", .port = PORT_F, .phy_type = PHY_TYPE_DKL,   .ddi_idx = 0x5, .phy_idx = 0x2, .vbt_idx = 0x4, },
>>> +	{ .name = "DDI TC4", .port = PORT_G, .phy_type = PHY_TYPE_DKL,   .ddi_idx = 0x6, .phy_idx = 0x3, .vbt_idx = 0x5, },
>>> +	{ .name = "DDI TC5", .port = PORT_H, .phy_type = PHY_TYPE_DKL,   .ddi_idx = 0x7, .phy_idx = 0x4, .vbt_idx = 0x6, },
>>> +	{ .name = "DDI TC6", .port = PORT_I, .phy_type = PHY_TYPE_DKL,   .ddi_idx = 0x8, .phy_idx = 0x5, .vbt_idx = 0x7, },
>>>  	{ .port = PORT_NONE }
>>>  };
>>>
>>>  static const struct intel_ddi_port_info ehl_ports[] = {
>>> -	{ .name = "DDI A", .port = PORT_A },
>>> -	{ .name = "DDI B", .port = PORT_B },
>>> -	{ .name = "DDI C", .port = PORT_C },
>>> -	{ .name = "DDI D", .port = PORT_D },
>>> +	{ .name = "DDI A", .port = PORT_A, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0, },
>>> +	{ .name = "DDI B", .port = PORT_B, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1, },
>>> +	{ .name = "DDI C", .port = PORT_C, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x2, .phy_idx = 0x2, .vbt_idx = 0x2, },
>>> +	{ .name = "DDI D", .port = PORT_D, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x3, .phy_idx = 0x0, .vbt_idx = 0x3, },
>>>  	{ .port = PORT_NONE }
>>>  };
>>>
>>>  static const struct intel_ddi_port_info icl_ports[] = {
>>> -	{ .name = "DDI A",   .port = PORT_A },
>>> -	{ .name = "DDI B",   .port = PORT_B },
>>> -	{ .name = "DDI TC1", .port = PORT_C },
>>> -	{ .name = "DDI TC2", .port = PORT_D },
>>> -	{ .name = "DDI TC3", .port = PORT_E },
>>> -	{ .name = "DDI TC4", .port = PORT_F },
>>> +	{ .name = "DDI A",   .port = PORT_A, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0,},
>>> +	{ .name = "DDI B",   .port = PORT_B, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1,},
>>> +	{ .name = "DDI TC1", .port = PORT_C, .phy_type = PHY_TYPE_MG,    .ddi_idx = 0x2, .phy_idx = 0x0, .vbt_idx = 0x2,},
>>> +	{ .name = "DDI TC2", .port = PORT_D, .phy_type = PHY_TYPE_MG,    .ddi_idx = 0x3, .phy_idx = 0x1, .vbt_idx = 0x3,},
>>> +	{ .name = "DDI TC3", .port = PORT_E, .phy_type = PHY_TYPE_MG,    .ddi_idx = 0x4, .phy_idx = 0x2, .vbt_idx = 0x4,},
>>> +	{ .name = "DDI TC4", .port = PORT_F, .phy_type = PHY_TYPE_MG,    .ddi_idx = 0x5, .phy_idx = 0x3, .vbt_idx = 0x5,},
>>>  	{ .port = PORT_NONE }
>>>  };
>>>
>>>  static const struct intel_ddi_port_info gen9lp_ports[] = {
>>> -	{ .name = "DDI A", .port = PORT_A },
>>> -	{ .name = "DDI B", .port = PORT_B },
>>> -	{ .name = "DDI C", .port = PORT_C },
>>> +	{ .name = "DDI A", .port = PORT_A, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0 },
>>> +	{ .name = "DDI B", .port = PORT_B, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1 },
>>> +	{ .name = "DDI C", .port = PORT_C, .ddi_idx = 0x2, .phy_idx = 0x2, .vbt_idx = 0x2 },
>>>  	{ .port = PORT_NONE }
>>>  };
>>>
>>>  static const struct intel_ddi_port_info ddi_ports[] = {
>>> -	{ .name = "DDI A", .port = PORT_A },
>>> -	{ .name = "DDI B", .port = PORT_B },
>>> -	{ .name = "DDI C", .port = PORT_C },
>>> -	{ .name = "DDI D", .port = PORT_D },
>>> -	{ .name = "DDI E", .port = PORT_E },
>>> -	{ .name = "DDI F", .port = PORT_F },
>>> +	{ .name = "DDI A", .port = PORT_A, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0 },
>>> +	{ .name = "DDI B", .port = PORT_B, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1 },
>>> +	{ .name = "DDI C", .port = PORT_C, .ddi_idx = 0x2, .phy_idx = 0x2, .vbt_idx = 0x2 },
>>> +	{ .name = "DDI D", .port = PORT_D, .ddi_idx = 0x3, .phy_idx = 0x3, .vbt_idx = 0x3 },
>>> +	{ .name = "DDI E", .port = PORT_E, .ddi_idx = 0x4, .phy_idx = 0x4, .vbt_idx = 0x4 },
>>> +	{ .name = "DDI F", .port = PORT_F, .ddi_idx = 0x5, .phy_idx = 0x5, .vbt_idx = 0x5 },
>>>  	{ .port = PORT_NONE }
>>>  };
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
>>> index b7a6d56bac5f..22c999a54ff1 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>>> @@ -311,6 +311,14 @@ enum phy {
>>>  	I915_MAX_PHYS
>>>  };
>>>
>>> +enum phy_type {
>>> +	PHY_TYPE_NONE = 0,
>>> +
>>> +	PHY_TYPE_COMBO,
>>> +	PHY_TYPE_MG,
>>> +	PHY_TYPE_DKL,
>>> +};
>>> +
>>>  #define phy_name(a) ((a) + 'A')
>>>
>>>  enum phy_fia {
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>>> index 92cc7fc66bce..df587219c744 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>>> @@ -1436,6 +1436,10 @@ struct intel_dp_mst_encoder {
>>>  struct intel_ddi_port_info {
>>>  	const char *name;
>>>  	enum port port;
>>> +	s8 phy_type;
>>
>> Please make the type enum phy_type.
>>
>>> +	u8 ddi_idx;
>>> +	u8 phy_idx;
>
>I think we should retain enum phy as type for this too. I generally
>think this gives people a better grasp that you shouldn't convert it to
>some other generic integer nilly-willy. Also, if we need to change this
>later on, tooling (cocci, tagging tools, etc.) are more helpful with
>enums.

for phy_type I agree, since we are supposed to really use they
PHY_TYPE_* values. However I don't think we should really spell out the
PHY_* in the code except in very few cases where checking for e.g. PHY_A
in a "leaf function" is more convenient than restructuring the code.

Also, if I do this here I'd increase the size of the struct in at least
3 bytes (considering I move the field up to remove the hole in the
struct). This is used for one table per platform so I think we can't
just ignore it.

Lucas De Marchi


>
>BR,
>Jani.
>
>>> +	u8 vbt_idx;
>>>  };
>>>
>>>  static inline enum dpio_channel
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
