Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1889747CE4D
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 09:30:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 435D7112706;
	Wed, 22 Dec 2021 08:30:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86368112706
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Dec 2021 08:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640161814; x=1671697814;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Jb9a8vM2x8ct3lFhCR4qqPjxhNmXf3wMknkb+5x8dok=;
 b=VSBEXWebV21fez+R5e3Ax2DBNecWgxGWLdNpRd7JYcIDiyr8A2VoU5Mj
 ijFenxYaxL+LhNb3iSmnrybQFDMmoStCZ/AWsJrmO1UbLUFbTTFnQI7uz
 VsBVkReUZjz5BO6HLG8cMxcrWX5noSJ4KswBiidnefTDWyznrnqnW4zN6
 TJir2+xEwLv5YT0bDudQFOnjpiN4BS01r8Op6qqY6LqSJgUsbA6D6giz8
 TZ0YQGEVeq6c3SZP7B3zfkPHQ9iJ3p9YqyaW0Y0BChSaiXTAJZRkrZvcS
 xMUY/osr47fjzb6nnMpLhfi7iIQWG7KOie/YH1OHOxEBjeP24t36IXimU g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="220587105"
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="220587105"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 00:30:14 -0800
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="617062694"
Received: from aravind2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.9.217])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 00:30:12 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Harish
 Chegondi <harish.chegondi@intel.com>
In-Reply-To: <Yby2BrDPAE4eUxxX@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211217160255.1300348-1-harish.chegondi@intel.com>
 <Yby2BrDPAE4eUxxX@intel.com>
Date: Wed, 22 Dec 2021 10:30:08 +0200
Message-ID: <87lf0dyrcf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Fix possible NULL pointer
 dereferences in i9xx_update_wm()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 17 Dec 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Dec 17, 2021 at 08:02:55AM -0800, Harish Chegondi wrote:
>> Check return pointer from intel_crtc_for_plane() before dereferencing
>> it, as it can be NULL.
>
> Can't actually bu NULL. But I guess no real harm in having the
> check if it shuts up some static analysis thing.

That's what I figured too, and better have it here than spread around
wherever this is called.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
>>=20
>> v2: Moved the NULL check into intel_crtc_active().
>>=20
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Cc: Caz Yokoyama <caz.yokoyama@intel.com>
>> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>> Signed-off-by: Harish Chegondi <harish.chegondi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/intel_pm.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/inte=
l_pm.c
>> index bdf97a8c9ef3..8b357ec35a4a 100644
>> --- a/drivers/gpu/drm/i915/intel_pm.c
>> +++ b/drivers/gpu/drm/i915/intel_pm.c
>> @@ -877,7 +877,7 @@ static bool intel_crtc_active(struct intel_crtc *crt=
c)
>>  	 * crtc->state->active once we have proper CRTC states wired up
>>  	 * for atomic.
>>  	 */
>> -	return crtc->active && crtc->base.primary->state->fb &&
>> +	return crtc && crtc->active && crtc->base.primary->state->fb &&
>>  		crtc->config->hw.adjusted_mode.crtc_clock;
>>  }
>>=20=20
>> --=20
>> 2.31.1

--=20
Jani Nikula, Intel Open Source Graphics Center
