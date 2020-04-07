Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FFE1A0DF3
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 14:48:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F6276E869;
	Tue,  7 Apr 2020 12:48:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 030946E869
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 12:48:30 +0000 (UTC)
IronPort-SDR: kt1Skeg2RKNFrxkEFzgK7zsffPj7b/XFxlGK498qROxVip8F4FOIxRStgbfCxiib/iFMwzMgN6
 HfLEosu78vJA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 05:48:30 -0700
IronPort-SDR: uibc/nIRQTqLp2l2R9LMbRAVbUFlqBPGHEtvKz1wwDxAQz5yy/4+edYGvpga47jZVuo8aeWutw
 zVknn6X4eIuQ==
X-IronPort-AV: E=Sophos;i="5.72,354,1580803200"; d="scan'208";a="424736171"
Received: from vogtstef-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.40.153])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 05:48:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Shankar\, Uma" <uma.shankar@intel.com>, "Anand\,
 Vipin" <vipin.anand@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F8243D514@BGSMSX104.gar.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200327073140.11568-1-vipin.anand@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8243D514@BGSMSX104.gar.corp.intel.com>
Date: Tue, 07 Apr 2020 15:48:25 +0300
Message-ID: <87zhbnihra.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 0/7] Enable HDR on Gen9 devices with
 lspcon hdr capability
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 27 Mar 2020, "Shankar, Uma" <uma.shankar@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Vipin Anand
>> Sent: Friday, March 27, 2020 1:02 PM
>> To: intel-gfx@lists.freedesktop.org
>> Subject: [Intel-gfx] [PATCH v3 0/7] Enable HDR on Gen9 devices with lspcon hdr
>> capability
>
> There is the series https://patchwork.freedesktop.org/series/68081/
> already there on list.

Ugh, confusing.

>  We are waiting for DP state checker patches to get merge. That series
> is almost ready, once that is merge will rebase and resend the
> series. Lets track that one only for future development instead of
> spawning a new one.

I ended up replying to the series at [1], which has a bunch of your
patches as well. Please incorporate the feedback when you respin.

BR,
Jani.


[1] http://lore.kernel.org/r/20200327052357.22269-1-vipin.anand@intel.com



>
> Regards,
> Uma Shankar
>
>> Added missing signoff
>> 
>> Uma Shankar (6):
>>   drm/i915/display: Add HDR Capability detection for LSPCON
>>   drm/i915/display: Enable HDR on gen9 devices with MCA Lspcon
>>   drm/i915/display: Attach HDR property for capable Gen9 devices
>>   drm/i915/display: Set HDR Infoframe for HDR capable LSPCON devices
>>   drm/i915/display: Enable BT2020 for HDR on LSPCON devices
>>   drm/i915/display: Reduce blanking to support 4k60@10bpp for LSPCON
>> 
>> Vipin Anand (1):
>>   drm:i915:display: add checks for Gen9 devices with hdr capability
>> 
>>  drivers/gpu/drm/drm_atomic_state_helper.c     |  1 +
>>  drivers/gpu/drm/drm_atomic_uapi.c             |  1 +
>>  .../drm/i915/display/intel_display_types.h    |  1 +
>>  drivers/gpu/drm/i915/display/intel_dp.c       | 16 ++++
>>  drivers/gpu/drm/i915/display/intel_hdmi.c     | 27 +++++-
>>  drivers/gpu/drm/i915/display/intel_lspcon.c   | 95 +++++++++++++++++--
>>  drivers/gpu/drm/i915/display/intel_lspcon.h   |  4 +
>>  include/drm/drm_connector.h                   |  1 +
>>  8 files changed, 132 insertions(+), 14 deletions(-)
>> 
>> --
>> 2.26.0
>> 
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
