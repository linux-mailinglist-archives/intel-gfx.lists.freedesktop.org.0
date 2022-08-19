Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BED599906
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 11:51:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44D0710E3CB;
	Fri, 19 Aug 2022 09:51:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E33B10E41A
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Aug 2022 09:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660902681; x=1692438681;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=PQcNXCoETf5bnCq6XO7bWbUJAwISazvYUICsDcsyBt8=;
 b=c1iT86bZirZb9lh2RS4sZlB20HFAkbfV94lFPvv5ZS+/ayNX0Qby49fe
 aHvEaGrazfK/tdYYU01GlvNK1zCbZvA9pe8c2Hbk74rg7XgPEozkPgtW5
 rXjAnyIjAkZsIc6StTlIivFy3i9jq+UpW5cm95wChxRh4/xaM/ITFJI4t
 vx7JDwYqVse1KyEeLRvyECnjnsYVoxo5F2mr6IAioE+N7Ahk++6xW4eZN
 VnQGN+QRhPKecfNkwM5aW37XAp1CnpryRhbayxDC0wljZBL4lKxHbVXxJ
 Prpk43byK10ysRc1ndNPQ6xzDTHLXCEUpTdkTePOmxBF1DLqkZ1XJ258S g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="276023155"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="276023155"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 02:51:20 -0700
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="668517453"
Received: from jastrom-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.176])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 02:51:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <MWHPR1101MB2157EFEF10A5D8A4391C4107EF6A9@MWHPR1101MB2157.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220817122624.213889-1-jani.nikula@intel.com>
 <MWHPR1101MB2157EFEF10A5D8A4391C4107EF6A9@MWHPR1101MB2157.namprd11.prod.outlook.com>
Date: Fri, 19 Aug 2022 12:51:10 +0300
Message-ID: <87r11co92p.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Introduce FBC B
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

On Wed, 17 Aug 2022, "Kahola, Mika" <mika.kahola@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Wednesday, August 17, 2022 3:26 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; Ville Syrj=C3=A4l=C3=A4
>> <ville.syrjala@linux.intel.com>; Kahola, Mika <mika.kahola@intel.com>
>> Subject: [PATCH] drm/i915/mtl: Introduce FBC B
>>
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>
>> MTL introduces a second FBC engine. The two FBC engines can operate enti=
rely
>> independently, FBC A serving pipe A and FBC B serving pipe B.
>>
>> The one place where things might go a bit wrong is the CFB allocation fr=
om
>> stolen. We might have to consider some change to the allocation strategy=
 to
>> have a better chance of both engines being able to allocate its CFB. May=
be FBC
>> A should allocate bottom up and FBC B top down, or something? For the
>> moment the allocation strategy is DRM_MM_INSERT_BEST for both.
>>
>> Cc: Mika Kahola <mika.kahola@intel.com>
>> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Mika Kahola <mika.kahola@intel.com>

Thanks for the review, pushed to drm-intel-next.

BR,
Jani.


>
>> ---
>>  drivers/gpu/drm/i915/display/intel_fbc.h | 1 +
>>  drivers/gpu/drm/i915/i915_pci.c          | 3 ++-
>>  2 files changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h
>> b/drivers/gpu/drm/i915/display/intel_fbc.h
>> index db60143295ec..4adb98afe6ff 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc.h
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.h
>> @@ -19,6 +19,7 @@ struct intel_plane_state;
>>
>>  enum intel_fbc_id {
>>       INTEL_FBC_A,
>> +     INTEL_FBC_B,
>>
>>       I915_MAX_FBCS,
>>  };
>> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915=
_pci.c
>> index 9fd788e147a3..d8446bb25d5e 100644
>> --- a/drivers/gpu/drm/i915/i915_pci.c
>> +++ b/drivers/gpu/drm/i915/i915_pci.c
>> @@ -1111,7 +1111,8 @@ static const struct intel_device_info pvc_info =3D=
 {
>>  #define XE_LPDP_FEATURES     \
>>       XE_LPD_FEATURES,        \
>>       .display.ver =3D 14,      \
>> -     .display.has_cdclk_crawl =3D 1
>> +     .display.has_cdclk_crawl =3D 1, \
>> +     .display.fbc_mask =3D BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B)
>>
>>  __maybe_unused
>>  static const struct intel_device_info mtl_info =3D {
>> --
>> 2.34.1
>

--=20
Jani Nikula, Intel Open Source Graphics Center
