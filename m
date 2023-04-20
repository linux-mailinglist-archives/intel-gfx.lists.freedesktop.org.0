Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB546E914B
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 12:58:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 984EF10E0B6;
	Thu, 20 Apr 2023 10:58:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8202E10E062
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Apr 2023 10:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681988312; x=1713524312;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=RqMEN+hYFs7P5hLD65h3sZxBY6nMVujAF77IL+MFAE8=;
 b=kYHkqKVWwO/hl1SMA9o6zcXcmRqNhDXhzsw3TfeUSU+LINk/pvGK0pcD
 xdp6Jn2RK/6oyfSfNBcd+b4XsWv2KCgBCBRtoEVkgkw/eN6EXbzGNxPod
 hUbEntewG7u6bviT41HnxFKjOAlci1qbdccuPj+iP3VDMPrwtm8PPzB7s
 anaQSE7fOw0JE5eDrQOIccB7YC/xwkmTbB87Jc/zJAM/HBaEld7vEUXQ3
 soUe1x05EeDzW6swnQOT00wpqTu72dYpL4zvve7sNmSfGt0P/XXyc5FRn
 EpJzdOo+ZAYUSEF+vMx5rIQL1wkbeRpjZHokI/nJ87git0IRefqZrz1yD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="408615534"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="408615534"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 03:58:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="722332181"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="722332181"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 03:58:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <ZD/ftpzg9AbB3GMn@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230419115449.422214-1-jani.nikula@intel.com>
 <ZD/ftpzg9AbB3GMn@intel.com>
Date: Thu, 20 Apr 2023 13:58:27 +0300
Message-ID: <87ildqx1kc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/wm: remove stale and unused
 ilk_wm_max_level() declaration
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

On Wed, 19 Apr 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Apr 19, 2023 at 02:54:49PM +0300, Jani Nikula wrote:
>> The declaration was removed earlier, but got accidentally resurrected in
>> i915xx_wm.[ch] refactoring. Remove harder.
>
> i9xx_wm

I was going to fix that while pushing, but got distracted and
forgot. *facepalm*.

>
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din, warts and all.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/i9xx_wm.h | 1 -
>>  1 file changed, 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.h b/drivers/gpu/drm/i9=
15/display/i9xx_wm.h
>> index a7875cbcd05a..b87ae369685a 100644
>> --- a/drivers/gpu/drm/i915/display/i9xx_wm.h
>> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.h
>> @@ -12,7 +12,6 @@ struct drm_i915_private;
>>  struct intel_crtc_state;
>>  struct intel_plane_state;
>>=20=20
>> -int ilk_wm_max_level(const struct drm_i915_private *i915);
>>  bool ilk_disable_lp_wm(struct drm_i915_private *i915);
>>  void ilk_wm_sanitize(struct drm_i915_private *i915);
>>  bool intel_set_memory_cxsr(struct drm_i915_private *i915, bool enable);
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel Open Source Graphics Center
