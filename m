Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9C5918E9F
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 20:33:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADCD810E158;
	Wed, 26 Jun 2024 18:33:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bGRvj7mX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6C0E10E0A2;
 Wed, 26 Jun 2024 18:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719426830; x=1750962830;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=BQF14uez0/AFqQ40yfO7lJFSMkWbuQKk2NLanjLP/Bc=;
 b=bGRvj7mXISfauIrRZPi4LxD36N1pBweQ/a/VxHs9Pv/dTZg0vCPTVGUQ
 XHQE8BQHa2Gplrjydjj8AntglE7Ka4WzEDTyiHT/oL32u1Sq8T5hnU8Xd
 bt3BAb7mQVoParo+5pDLk0uH7Jz5qPtknjIG9AqsNmg/QQP3Q9OkdBYW+
 fSiymhAvI6eh6lVX8Hnom71dkIkt77Z+CZUr+b9DnityTaFaOstXCFBKG
 86ptQog9JjYlQ0uMZumOTw+yz1luy3YauWqE+1c7bJBkg8GGu2eMdrqTX
 v3V0GpxGWUbUP5uRntQ1yP0U2k3amkNxJhRHCmJTwV+lAzn2ZoJ11wOxv w==;
X-CSE-ConnectionGUID: Pj0+snA5R1WkmRJoN70OpA==
X-CSE-MsgGUID: +CipG/MhTCmEGvaNI7Ryug==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="19408948"
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="19408948"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 11:33:49 -0700
X-CSE-ConnectionGUID: coLeZJpUQHq38kv/jx6RDA==
X-CSE-MsgGUID: 0JLlUAqpSo2zyyReVk40zA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="67312034"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 11:33:47 -0700
Date: Wed, 26 Jun 2024 21:33:58 +0300
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: Skip programming FIA link enable bits for MTL+
Message-ID: <ZnxfFpm7t8xEhF/c@ideak-desk.fi.intel.com>
References: <20240625202652.315936-1-gustavo.sousa@intel.com>
 <ZnxAuOVN+ioKxtIR@ideak-desk.fi.intel.com>
 <171942310960.2026.11307370502317050527@gjsousa-mobl2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <171942310960.2026.11307370502317050527@gjsousa-mobl2>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 26, 2024 at 02:31:49PM -0300, Gustavo Sousa wrote:
> Quoting Imre Deak (2024-06-26 13:24:24-03:00)
> >On Tue, Jun 25, 2024 at 05:26:52PM -0300, Gustavo Sousa wrote:
> >> Starting with Xe_LPDP, support for Type-C connections is provided by
> >> PICA and programming PORT_TX_DFLEXDPMLE1(*) registers is not applicable
> >> anymore. Those registers don't even exist in recent display IPs. As
> >> such, skip programming them.
> >> 
> >> Bspec: 65750, 65448
> >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >
> >MTL still has a FIA mux and the DP-alt pin configuration is read out
> 
> Yep. Maybe I could rephrase the commit message like below?
> 
>   Starting with Xe_LPDP, although FIA is still used to readout Type-C
>   pin assignment, part of Type-C support is moved to PICA and
>   programming PORT_TX_DFLEXDPMLE1(*) registers is not applicable
>   anymore.

Ok, maybe worth mentioning how things changed.

> >from that, but programming DPMLE1 accordingly doesn't seem to be
> >required indeed (the register still exists but programming it doesn't
> >make a difference based on my test):
> 
> Well, yes, one of the base offsets (0x16f8c0) does exist on MTL, but it
> maps to a completely different register (according to the register
> database).

0x16f8c0 is in the third FIA instance, which afaics wouldn't be used on
MTL/ARL with the max 4 TC ports on those. I still assume that the
registers in the first two FIA instances exist the same way on MTL as on
earlier platforms, just the DPMLE1 value is not used there.

> >Reviewed-by: Imre Deak <imre.deak@intel.com>
> 
> Thanks!
> 
> Gustavo Sousa
> 
> >
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_tc.c | 3 +++
> >>  1 file changed, 3 insertions(+)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> >> index 9887967b2ca5..6f2ee7dbc43b 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> >> @@ -393,6 +393,9 @@ void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
> >>          bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
> >>          u32 val;
> >>  
> >> +        if (DISPLAY_VER(i915) >= 14)
> >> +                return;
> >> +
> >>          drm_WARN_ON(&i915->drm,
> >>                      lane_reversal && tc->mode != TC_PORT_LEGACY);
> >>  
> >> -- 
> >> 2.45.2
> >>
