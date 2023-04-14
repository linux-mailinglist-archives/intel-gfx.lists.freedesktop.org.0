Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D646E1F71
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 11:40:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4947610E0D5;
	Fri, 14 Apr 2023 09:40:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF7CA10E0D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 09:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681465202; x=1713001202;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=fTG6kU0XoIhlrNbQoSVW4ePfOiLGeIxuOcfTuywqxTY=;
 b=W8TnU7+BBSY1qAHLxRmExKd2dAlWWy82MFDMKCR59SL3EVp4AKlG5Ya0
 OLizFFnTwD1F7IF5A4bOuwdt98q542wMgzEOJtnckXh3h08WGvUkSjeub
 hiY0QE6fA+XXfL0VDIlYDbVp+7fJTqzVfOiBmr+OPL9UeroWUj3X+FwPY
 YZvE0jfVVaB1TthSYdLINoGG7vHT0BSI3Ry9qg2dA7mJ4a1H4KOxgXUZl
 gxjwoPg8c9O7jkOX8oR3i85J9f93aXkiRh1G0TNrltIFWrMa5VrBrMSAc
 6lkxbvS6FksBsA6yiu2RJp3pG23dcqU2WKBR0uTvpmiDf57ZGDSWcfwb3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="324053960"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="324053960"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:40:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="754397140"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="754397140"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.117])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:40:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <87r0smg68w.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230413200602.6037-1-ville.syrjala@linux.intel.com>
 <20230413200602.6037-2-ville.syrjala@linux.intel.com>
 <87r0smg68w.fsf@intel.com>
Date: Fri, 14 Apr 2023 12:39:59 +0300
Message-ID: <87jzyeg5u8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Make
 intel_get_crtc_new_encoder() less oopsy
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

On Fri, 14 Apr 2023, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Thu, 13 Apr 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>
>> The point of the WARN was to print something, not oops
>> straight up. Currently that is precisely what happens
>> if we can't find the connector for the crtc in the atomic
>> state. Get the dev pointer from the atomic state instead
>> of the potentially NULL encoder to avoid that.
>
> Fixes: ?

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
>>
>> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/=
drm/i915/display/intel_display.c
>> index 0334565cec82..5208b07505b2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -959,7 +959,7 @@ intel_get_crtc_new_encoder(const struct intel_atomic=
_state *state,
>>  		num_encoders++;
>>  	}
>>=20=20
>> -	drm_WARN(encoder->base.dev, num_encoders !=3D 1,
>> +	drm_WARN(state->base.dev, num_encoders !=3D 1,
>>  		 "%d encoders for pipe %c\n",
>>  		 num_encoders, pipe_name(master_crtc->pipe));

--=20
Jani Nikula, Intel Open Source Graphics Center
