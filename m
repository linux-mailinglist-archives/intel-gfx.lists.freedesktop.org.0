Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C08EB32CE86
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Mar 2021 09:33:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 396596E49F;
	Thu,  4 Mar 2021 08:33:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D09716EA01
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Mar 2021 08:33:20 +0000 (UTC)
IronPort-SDR: JlhXF7Z2f6VqTQWqu0ufb70v+obpeg7aSVxoWVw3axq+JAWOIVkaJrSLxEvtWUbXPJXQhEdgWP
 wWXfvCXNI7ag==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="167269245"
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="167269245"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 00:33:19 -0800
IronPort-SDR: ga70ziVcAP0b+oWpVvMVRQ2i9HIEpvxb3w5cEz6TnkrbQhndrVr0LTofzTgeLUtETtvPQ3nkLE
 yUazx1k4qHng==
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="407675510"
Received: from kinzelba-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.44.66])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 00:33:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Shankar\, Uma" <uma.shankar@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <9fc4a8dd74894b9fb18282223193d362@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1614682842.git.jani.nikula@intel.com>
 <95cbe1c9d45edf3e3ec252e49fb49055def98155.1614682842.git.jani.nikula@intel.com>
 <9fc4a8dd74894b9fb18282223193d362@intel.com>
Date: Thu, 04 Mar 2021 10:33:11 +0200
Message-ID: <87r1kvnws8.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 1/4] drm/i915/mso: add splitter state
 readout for platforms that support it
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
Cc: "Varide, Nischal" <nischal.varide@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 03 Mar 2021, "Shankar, Uma" <uma.shankar@intel.com> wrote:
> Looks Good to me.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Thanks for the review, pushed the series.

>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 1a76e1d9de7a..9f1945018712 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1166,6 +1166,13 @@ struct intel_crtc_state {
>>  		u8 pipeline_full;
>>  		u16 flipline, vmin, vmax;
>>  	} vrr;
>> +
>> +	/* Stream Splitter for eDP MSO */
>> +	struct {
>> +		bool enable;
>> +		u8 link_count;
>> +		u8 pixel_overlap;
>> +	} splitter;
>>  };

Due to certain amount of urgency, I decided to push the series with this
naming in crtc state. I think it's accurate now, and workable for legacy
DSI as well. However, I'm not hung up on it, and I'm open to renaming
when the time comes to convert legacy DSI to using crtc state for this
stuff.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
