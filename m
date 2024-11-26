Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDA49D98A0
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2024 14:36:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 733AD10E401;
	Tue, 26 Nov 2024 13:36:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gNTCmz9m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C428E10E401
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2024 13:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732628187; x=1764164187;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=WcUsmqWlvKpz/Rozqh1sLKZnoNhMU16bagj8DPws/jQ=;
 b=gNTCmz9mqcjrGOWOwdBEjkqFVh07tyhSTMm8R5ztWOczTeV5i9Sg8uqn
 PYWwazeeHOqPBxliHhz26fKiCGWSUe/96F9CaoADtFevBypDIPZp1R5y7
 vZZ/592UVdz5onK/Nh2Ei/2Gq1ot8cLxtySEZhWe8AmSLZT38KhhLRP8E
 UFqoUHHK9pnlLfrr4uGpogplitb5qz1pT4M2ieu3EdFjz1eh8aJ/0vp8M
 /Z90J3GVt8YwcCVCI6Gq75iyLxLuT3Bt5K+3l/yoXsNkpGKNcmfqhyj5m
 DZagAW+qPwjbQiP2xLisqqNxQ/ZqOWMaU6bsFpe6NJsGwpL0yVaFUOnOu w==;
X-CSE-ConnectionGUID: W9YpDcwiQdGuxw+NtF81Dg==
X-CSE-MsgGUID: 6n9kYtNZRYuY8g1JVvzu/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="32934684"
X-IronPort-AV: E=Sophos;i="6.12,186,1728975600"; d="scan'208";a="32934684"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 05:36:27 -0800
X-CSE-ConnectionGUID: X1jw2BOrTAWgMmKIaHdM9g==
X-CSE-MsgGUID: 3gs5L1rsQpCjulJiT4smvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,186,1728975600"; d="scan'208";a="91730999"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.49])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 05:36:24 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Jadav, Raag"
 <raag.jadav@intel.com>
Subject: RE: [PATCH v5 1/2] drm/i915/xe3lpd: Power request
 asserting/deasserting
In-Reply-To: <MW4PR11MB7054FB29CF01D5F87524DCBCEF2F2@MW4PR11MB7054.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241105131732.331436-1-mika.kahola@intel.com>
 <20241105131732.331436-2-mika.kahola@intel.com> <877c8qxrzb.fsf@intel.com>
 <MW4PR11MB7054FB29CF01D5F87524DCBCEF2F2@MW4PR11MB7054.namprd11.prod.outlook.com>
Date: Tue, 26 Nov 2024 15:36:21 +0200
Message-ID: <87y116w20a.fsf@intel.com>
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

On Tue, 26 Nov 2024, "Kahola, Mika" <mika.kahola@intel.com> wrote:
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Tuesday, 26 November 2024 11.30
>> To: Kahola, Mika <mika.kahola@intel.com>; intel-gfx@lists.freedesktop.org
>> Cc: Sousa, Gustavo <gustavo.sousa@intel.com>; Jadav, Raag
>> <raag.jadav@intel.com>; Kahola, Mika <mika.kahola@intel.com>
>> Subject: Re: [PATCH v5 1/2] drm/i915/xe3lpd: Power request
>> asserting/deasserting
>> 
>> On Tue, 05 Nov 2024, Mika Kahola <mika.kahola@intel.com> wrote:
>> > diff --git a/drivers/gpu/drm/i915/display/intel_tc.c
>> > b/drivers/gpu/drm/i915/display/intel_tc.c
>> > index b16c4d2d4077..e40d55f4c0c4 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_tc.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_tc.c
>> > @@ -1013,6 +1013,30 @@ xelpdp_tc_phy_wait_for_tcss_power(struct
>> intel_tc_port *tc, bool enabled)
>> >  	return true;
>> >  }
>> >
>> > +static void wa_14020908590(struct intel_display *display, bool
>> > +enable)
>> 
>> Yeah I still don't like functions named wa_14020908590. It's meaningless. What
>> does it do?
> That's a good point. We do have few functions in our driver that have workaround number in its name.
>
> What would be the better way? Add a comment that references to workaround number and have a meaningful function name?

Yes. We have a somewhat standardized format for that.

>
>> 
>> > +{
>> > +	/* check if mailbox is running busy */
>> > +	if (intel_de_wait_for_clear(display, TCSS_DISP_MAILBOX_IN_CMD,
>> > +				    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY,
>> 10)) {
>> > +		drm_dbg_kms(display->drm,
>> > +			    "Timeout waiting for TCSS mailbox run/busy bit to
>> clear\n");
>> > +		return;
>> > +	}
>> > +
>> > +	intel_de_write(display, TCSS_DISP_MAILBOX_IN_DATA, enable);
>> 
>> Not a fan of bool -> u32 implicit conversion here, with the register contents not
>> described.
> Ok. I will modify this to use u32 instead.

Of course, the parameter may still be bool, but would be better to be
more explicit about what's written to the register.

>
>> 
>> > +	intel_de_write(display, TCSS_DISP_MAILBOX_IN_CMD,
>> > +		       TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY |
>> > +		       TCSS_DISP_MAILBOX_IN_CMD_DATA(0x1));
>> > +
>> > +	/* wait to clear mailbox running busy bit before continuing */
>> > +	if (intel_de_wait_for_clear(display, TCSS_DISP_MAILBOX_IN_CMD,
>> > +				    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY,
>> 10)) {
>> > +		drm_dbg_kms(display->drm,
>> > +			    "Timeout after writing data to mailbox. Mailbox
>> run/busy bit did not clear\n");
>> > +		return;
>> > +	}
>> > +}
>> > +
>> >  static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port
>> > *tc, bool enable)  {
>> >  	struct drm_i915_private *i915 = tc_to_i915(tc); @@ -1022,6 +1046,13
>> > @@ static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port
>> > *tc, bool ena
>> >
>> >  	assert_tc_cold_blocked(tc);
>> >
>> > +	/*
>> > +	 * Gfx driver WA 14020908590 for PTL tcss_rxdetect_clkswb_req/ack
>> > +	 * handshake violation when pwwreq= 0->1 during TC7/10 entry
>> > +	 */
>> > +	if (DISPLAY_VER(i915) == 30)
>> > +		wa_14020908590(&i915->display, enable);
>> 
>> You should add
>> 
>> 	struct intel_display *display = &i915->display;
>> 
>> local variable already in this patch, so the next patch doesn't have to modify the
>> above line again. You can do the subsequent conversions in the follow-up.
> Ok. I will make this change
>
> Thanks for the review!
>
> -Mika-
>
>> 
>> BR,
>> Jani.
>> 
>> 
>> > +
>> >  	val = intel_de_read(i915, reg);
>> >  	if (enable)
>> >  		val |= XELPDP_TCSS_POWER_REQUEST;
>> 
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
