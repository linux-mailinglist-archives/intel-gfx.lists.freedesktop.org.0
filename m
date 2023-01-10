Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0547E6645A8
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 17:11:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2503710E004;
	Tue, 10 Jan 2023 16:11:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52BE110E112
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 16:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673367096; x=1704903096;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=A2SVbWGJU3T86BP7UOftRr64VcZgJZsQa7dE75hNOzk=;
 b=nqRGzvRuDrqiRDHbI/7mzmv8B3fZL/YmawAJLExXAMEFXKVcsGQROyV8
 b4FG0otjoa7yM1F3fP5m67Dcnb7fYNlB1Ox1LIuQANYlKC/ZjfRkVu8kK
 XYy8YcuwIO3/qYBj6XzaqbmJ+N4YVAx2EWZfE4GAEZ8vgQp/al0YaTKtq
 mELU+U3vmg6tNgifv55ygrxFGAe/jJygw+XMsRyaqLA/27kcntn6/UPpO
 XaLbK/b8N14EXD2WhNIZbVfHsGIxszEjjewlRCRnd3aoSzdL6Bcp+LuMZ
 VBG+bRPxhrsVDqTRKkyyNW67hDe7NEjYHFBuyOc75pojNu2mBvWE5ZZcW g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="302885282"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="302885282"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 08:10:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="985829352"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="985829352"
Received: from drooney-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.11.80])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 08:10:50 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <Y72GF2CgEVDElPwD@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230107053643.1984045-1-chaitanya.kumar.borah@intel.com>
 <20230107053643.1984045-3-chaitanya.kumar.borah@intel.com>
 <875yde21yx.fsf@intel.com>
 <Y72GF2CgEVDElPwD@mdroper-desk1.amr.corp.intel.com>
Date: Tue, 10 Jan 2023 18:10:48 +0200
Message-ID: <87o7r6id4n.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC 2/2] drm/i915/display: Add 480 MHz CDCLK steps
 for RPL-U
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
Cc: ville.syrjala@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 10 Jan 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Tue, Jan 10, 2023 at 11:06:14AM +0200, Jani Nikula wrote:
>> On Sat, 07 Jan 2023, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
>> > @@ -3353,6 +3374,8 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
>> >  		/* Wa_22011320316:adl-p[a0] */
>> >  		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>> >  			dev_priv->display.cdclk.table = adlp_a_step_cdclk_table;
>> 
>> Are RPL-U A0-B0 going to enter this branch? Is this the right thing to
>> do?
>
> There's no such thing as a RPL A0/B0.  RPL continues the stepping
> progression from ADL, and all RPL parts have E0 or newer display
> steppings (bspec 55376).

Ok, thanks.


-- 
Jani Nikula, Intel Open Source Graphics Center
