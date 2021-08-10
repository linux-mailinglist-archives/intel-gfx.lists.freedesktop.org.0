Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2903E5977
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Aug 2021 13:51:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AB0D89E0D;
	Tue, 10 Aug 2021 11:51:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE18489E0C;
 Tue, 10 Aug 2021 11:51:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10070"; a="214871368"
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="214871368"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 04:51:38 -0700
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="515767016"
Received: from aktiwary-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.249.40.8])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 04:51:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Daniel Vetter <daniel@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, Thomas
 =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Matthew Auld
 <matthew.auld@intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>
In-Reply-To: <YRJUFIlXtyxT1m/Q@phenom.ffwll.local>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210810084128.17242-1-jani.nikula@intel.com>
 <YRJUFIlXtyxT1m/Q@phenom.ffwll.local>
Date: Tue, 10 Aug 2021 14:51:30 +0300
Message-ID: <87mtppo6v1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem/ttm: prefer kernel types
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

On Tue, 10 Aug 2021, Daniel Vetter <daniel@ffwll.ch> wrote:
> On Tue, Aug 10, 2021 at 11:41:28AM +0300, Jani Nikula wrote:
>> Avoid uintXX_t types in the driver.
>>=20
>> Fixes: 213d50927763 ("drm/i915/ttm: Introduce a TTM i915 gem object back=
end")
>> Cc: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>
>> Cc: Matthew Auld <matthew.auld@intel.com>
>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i=
915/gem/i915_gem_ttm.c
>> index 771eb2963123..ffda88156e32 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>> @@ -168,7 +168,7 @@ i915_ttm_placement_from_obj(const struct drm_i915_ge=
m_object *obj,
>>  }
>>=20=20
>>  static struct ttm_tt *i915_ttm_tt_create(struct ttm_buffer_object *bo,
>> -					 uint32_t page_flags)
>> +					 u32 page_flags)
>
> It's for the ttm_device_funcs ops table, I thinhk we should fix it there
> and across the board?
>
> Otherwise a bit ocd mismatch :-)

Well, the above is the only uintXX_t reference in i915.

BR,
Jani.


> -Daniel
>
>>  {
>>  	struct ttm_resource_manager *man =3D
>>  		ttm_manager_type(bo->bdev, bo->resource->mem_type);
>> --=20
>> 2.20.1
>>=20

--=20
Jani Nikula, Intel Open Source Graphics Center
