Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7CC93F2A2
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 12:27:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1123910E095;
	Mon, 29 Jul 2024 10:27:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N6knYdG0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CBC410E095
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2024 10:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722248833; x=1753784833;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=AqTo2C6LL24fjvjRU5+JWVEf5R4wWYYtwk28NQJbDIw=;
 b=N6knYdG08nJcbeQtyir9RMJZ3//XW9hP6qWfXE+x9poBrA/RfHKVfrpf
 AHu8ie1ZCmM3EINJxRGmCttcDZRhgJdaVfEMh0TEJihcj0TvPyrDd+Iir
 qKw9ETTTos26wvOrK0X/WwsfKornFSILpn4jYRGwcAl1oX/5+N50bps5O
 FFTFYdlqaXE6VDoYB8LHG5ZGpzVNEmD8z9w8xmgi8soa3wHsvCR1CXO7N
 wIJZdpzwDcmWTuSHj5PCmv3hfAPXNNPqiG/bUBKkBAm61XcWVQ2+zhcaH
 Pbv6hI2QdWEtQ6YIR2z/bhnAzT09UsRcrVKRsKA4WoILB+Ufmvjx0gI+m w==;
X-CSE-ConnectionGUID: 9CqPpp+sTgKEJuqnY3lyug==
X-CSE-MsgGUID: HrMjKtQYSUmyPxKB7y0NuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11147"; a="37502377"
X-IronPort-AV: E=Sophos;i="6.09,245,1716274800"; d="scan'208";a="37502377"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 03:27:09 -0700
X-CSE-ConnectionGUID: piS8tBs+R5CsSPv4MWxLig==
X-CSE-MsgGUID: sskmbmBNR0iRzJXdbqQ4/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,245,1716274800"; d="scan'208";a="77171417"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 03:27:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/hdcp: Fix HDCP2_STREAM_STATUS macro
In-Reply-To: <SN7PR11MB6750236145E4EFF483D6A593E3B72@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240729040829.3753012-1-suraj.kandpal@intel.com>
 <871q3czfln.fsf@intel.com>
 <SN7PR11MB6750236145E4EFF483D6A593E3B72@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Mon, 29 Jul 2024 13:27:04 +0300
Message-ID: <87sevsxzlz.fsf@intel.com>
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

On Mon, 29 Jul 2024, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Monday, July 29, 2024 3:26 PM
>> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
>> <suraj.kandpal@intel.com>
>> Subject: Re: [PATCH] drm/i915/hdcp: Fix HDCP2_STREAM_STATUS macro
>> 
>> On Mon, 29 Jul 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>> > Fix HDCP2_STREAM_STATUS macro, it called pipe instead of port never
>> > threw a compile error as no one used it.
>> 
>> Fixes: ?
>> 
>
> Anyway to find it,
> Did a git blame but since one of your patches separated intel_hdcp_regs.h from i915_regs.h
> All I can see is your commit which I don't think is the correct commit to add.

Please just dig deeper. git blaming through refactoring is an essential
skill.

BR,
Jani.



>
> Regards,
> Suraj Kandpal
>
>> >
>> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_hdcp_regs.h | 2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
>> > b/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
>> > index a568a457e532..f590d7f48ba7 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
>> > @@ -251,7 +251,7 @@
>> >  #define HDCP2_STREAM_STATUS(dev_priv, trans, port) \
>> >  					(TRANS_HDCP(dev_priv) ? \
>> >
>> TRANS_HDCP2_STREAM_STATUS(trans) : \
>> > -					 PIPE_HDCP2_STREAM_STATUS(pipe))
>> > +					 PIPE_HDCP2_STREAM_STATUS(port))
>> >
>> >  #define _PORTA_HDCP2_AUTH_STREAM		0x66F00
>> >  #define _PORTB_HDCP2_AUTH_STREAM		0x66F04
>> 
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
