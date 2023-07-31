Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 653AD769A8F
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 17:14:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D91E10E2B2;
	Mon, 31 Jul 2023 15:14:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD47E10E2B2
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 15:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690816487; x=1722352487;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=YFFP3zdDJCmGRIj7a+ApRQyQiog+TuvSAsk4gzVmzZI=;
 b=MRcyVDfTsikpMxTDxU2/krxt+6uV8TNOyKEukmAj16tQ+XQyLxbSoc/h
 lvFOIZz7zN9YIURG9vTMJPYowc1V1yaDp3koQG7zO705M11sg5PtHL8Ei
 FZtJXq3zgNtyjsxdExdP0a8c/zglIpF/Yy1CRzW2879BFf2dHLI58jO4T
 P80RZ2Hrx4D8Qy7Fyt6Z8E4U7Bn0iTA7//rfK/lc0xlmzTglDhr5DHzip
 8ZjQi2JbWZT7ihZ9Ph6qFOY/+t5KNgP67QlpgBPWCrwnIh69sXClIhjsq
 IHPKOVy94aM2cF+Lioua1XB3NUCMj0NiXzxV9H2i+dsNG2zYwlGXyTG5V Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="353969579"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="353969579"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 08:14:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="902177415"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="902177415"
Received: from naikshri-mobl7.ger.corp.intel.com (HELO localhost)
 ([10.252.36.230])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 08:14:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <169080830770.140656.12479044792983753457@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230725212716.3060259-1-gustavo.sousa@intel.com>
 <20230725212716.3060259-3-gustavo.sousa@intel.com>
 <877cqgxryr.fsf@intel.com>
 <169080830770.140656.12479044792983753457@gjsousa-mobl2>
Date: Mon, 31 Jul 2023 18:14:42 +0300
Message-ID: <87y1iww1st.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Simplify
 intel_cx0_program_phy_lane() with loop
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

On Mon, 31 Jul 2023, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2023-07-31 08:04:12-03:00)
>>On Tue, 25 Jul 2023, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>> It is possible to generalize the "disable" value for the transmitters to
>>> be a bit mask based on the port width and the port reversal boolean,
>>> with a small exception for DP-alt mode with "x1" port width.
>>>
>>> Simplify the code by using such a mask and a for-loop instead of using
>>> switch-case statements.
>>>
>>> BSpec: 64539
>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 79 +++++---------------
>>>  1 file changed, 20 insertions(+), 59 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>> index b903ceb0b56a..f10ebdfd696a 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>> @@ -2604,7 +2604,8 @@ static void intel_cx0_program_phy_lane(struct drm_i915_private *i915,
>>>                                         struct intel_encoder *encoder, int lane_count,
>>>                                         bool lane_reversal)
>>>  {
>>> -        u8 l0t1, l0t2, l1t1, l1t2;
>>> +        int i;
>>> +        u8 disables;
>>>          bool dp_alt_mode = intel_tc_port_in_dp_alt_mode(enc_to_dig_port(encoder));
>>>          enum port port = encoder->port;
>>>  
>>> @@ -2614,66 +2615,26 @@ static void intel_cx0_program_phy_lane(struct drm_i915_private *i915,
>>>                                C10_VDR_CTRL_MSGBUS_ACCESS,
>>>                                MB_WRITE_COMMITTED);
>>>  
>>> -        /* TODO: DP-alt MFD case where only one PHY lane should be programmed. */
>>> -        l0t1 = intel_cx0_read(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(1, 2));
>>> -        l0t2 = intel_cx0_read(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(2, 2));
>>> -        l1t1 = intel_cx0_read(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(1, 2));
>>> -        l1t2 = intel_cx0_read(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(2, 2));
>>> -
>>> -        l0t1 |= CONTROL2_DISABLE_SINGLE_TX;
>>> -        l0t2 |= CONTROL2_DISABLE_SINGLE_TX;
>>> -        l1t1 |= CONTROL2_DISABLE_SINGLE_TX;
>>> -        l1t2 |= CONTROL2_DISABLE_SINGLE_TX;
>>> -
>>> -        if (lane_reversal) {
>>> -                switch (lane_count) {
>>> -                case 4:
>>> -                        l0t1 &= ~CONTROL2_DISABLE_SINGLE_TX;
>>> -                        fallthrough;
>>> -                case 3:
>>> -                        l0t2 &= ~CONTROL2_DISABLE_SINGLE_TX;
>>> -                        fallthrough;
>>> -                case 2:
>>> -                        l1t1 &= ~CONTROL2_DISABLE_SINGLE_TX;
>>> -                        fallthrough;
>>> -                case 1:
>>> -                        l1t2 &= ~CONTROL2_DISABLE_SINGLE_TX;
>>> -                        break;
>>> -                default:
>>> -                        MISSING_CASE(lane_count);
>>> -                }
>>> -        } else {
>>> -                switch (lane_count) {
>>> -                case 4:
>>> -                        l1t2 &= ~CONTROL2_DISABLE_SINGLE_TX;
>>> -                        fallthrough;
>>> -                case 3:
>>> -                        l1t1 &= ~CONTROL2_DISABLE_SINGLE_TX;
>>> -                        fallthrough;
>>> -                case 2:
>>> -                        l0t2 &= ~CONTROL2_DISABLE_SINGLE_TX;
>>> -                        l0t1 &= ~CONTROL2_DISABLE_SINGLE_TX;
>>> -                        break;
>>> -                case 1:
>>> -                        if (dp_alt_mode)
>>> -                                l0t2 &= ~CONTROL2_DISABLE_SINGLE_TX;
>>> -                        else
>>> -                                l0t1 &= ~CONTROL2_DISABLE_SINGLE_TX;
>>> -                        break;
>>> -                default:
>>> -                        MISSING_CASE(lane_count);
>>> -                }
>>> +        if (lane_reversal)
>>> +                disables = REG_GENMASK8(3, 0) >> lane_count;
>>> +        else
>>> +                disables = REG_GENMASK8(3, 0) << lane_count;
>>> +
>>> +        if (dp_alt_mode && lane_count == 1) {
>>> +                disables &= ~REG_GENMASK8(1, 0);
>>> +                disables |= REG_FIELD_PREP8(REG_GENMASK8(1, 0), 0x1);
>>>          }
>>>  
>>> -        /* disable MLs */
>>> -        intel_cx0_write(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(1, 2),
>>> -                        l0t1, MB_WRITE_COMMITTED);
>>> -        intel_cx0_write(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(2, 2),
>>> -                        l0t2, MB_WRITE_COMMITTED);
>>> -        intel_cx0_write(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(1, 2),
>>> -                        l1t1, MB_WRITE_COMMITTED);
>>> -        intel_cx0_write(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(2, 2),
>>> -                        l1t2, MB_WRITE_COMMITTED);
>>> +        /* TODO: DP-alt MFD case where only one PHY lane should be programmed. */
>>> +        for (i = 0; i < 4; i++) {
>>> +                int tx = i % 2 + 1;
>>> +                u8 lane_mask = i / 2 == 0 ? INTEL_CX0_LANE0 : INTEL_CX0_LANE1;
>>
>>I'm just catching up on mails and quickly eyeballing stuff, but
>>
>>        i / 2 == 0
>>
>>looks suspect.
>
> i / 2 == 0 should give us the correct selection of lane_mask: the first two
> iterations are for the first PHY lane and the last two are for the last PHY
> lane.

I think the most obvious way to express that is i < 2.

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
>>> +
>>> +                intel_cx0_rmw(i915, port, lane_mask, PHY_CX0_TX_CONTROL(tx, 2),
>>> +                              CONTROL2_DISABLE_SINGLE_TX,
>>> +                              disables & BIT(i) ? CONTROL2_DISABLE_SINGLE_TX : 0,
>>> +                              MB_WRITE_COMMITTED);
>>> +        }
>>>  
>>>          if (intel_is_c10phy(i915, intel_port_to_phy(i915, port)))
>>>                  intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES,
>>
>>-- 
>>Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
