Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B62975A02CD
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 22:33:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57E6CC1DC3;
	Wed, 24 Aug 2022 20:33:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1989E11A27F
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 14:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661263399; x=1692799399;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=nS85ln4Ai92SEiiskmaXrqrch04/7gbRK+rzCBEypxk=;
 b=jXaErFj4aoPzhlVam3U+UObSCq6p/tvBexf03M8Fotawk4BrgUHp6p/L
 XTsLPCh3wRaLdfDmyGgppPa9SGAXE7akFk42eb/8fIJJ9NS1rIfPE298u
 xA9FnjDlGVGxqstexH7TSF73EUes4B9lVrv4W+JiXQ4VB5TVRAb/t6qIs
 xDCNE6/yXxP0tw9tXS7VdcOKxWLan0GJl5qFz7AresVfHn9axKlQqNMTg
 1xC3vTrAGsw6nMA9OuVtAjivQGQlDah4KsZFj9UH4lR8fuyLH9iFju9sR
 DKTrh9b+dV5hJLXvijP0U5C4Iiz3iidK31r8wQcjc2IeI7Ox582VQkBMC g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="273446418"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="273446418"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 07:03:17 -0700
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="638665345"
Received: from obeltran-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.51.100])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 07:03:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
In-Reply-To: <CAM0jSHMb48D58NhZ_S8T2k69Pi2DKaeYAQr7D0_06Uqg+xWUFg@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220815080907.3229449-1-jani.nikula@intel.com>
 <CAM0jSHMb48D58NhZ_S8T2k69Pi2DKaeYAQr7D0_06Uqg+xWUFg@mail.gmail.com>
Date: Tue, 23 Aug 2022 17:03:14 +0300
Message-ID: <87zgfvjbvh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/utils: remove unused
 KBps/MBps/GBps macros
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 23 Aug 2022, Matthew Auld <matthew.william.auld@gmail.com> wrote:
> On Mon, 15 Aug 2022 at 09:09, Jani Nikula <jani.nikula@intel.com> wrote:
>>
>> Remove unused macros. If needed again, such macros belong in
>> <linux/units.h>.
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/i915_utils.h | 4 ----
>>  1 file changed, 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
>> index c10d68cdc3ca..6c14d13364bf 100644
>> --- a/drivers/gpu/drm/i915/i915_utils.h
>> +++ b/drivers/gpu/drm/i915/i915_utils.h
>> @@ -360,10 +360,6 @@ wait_remaining_ms_from_jiffies(unsigned long timestamp_jiffies, int to_wait_ms)
>>  #define KHz(x) (1000 * (x))
>>  #define MHz(x) KHz(1000 * (x))
>>
>> -#define KBps(x) (1000 * (x))
>> -#define MBps(x) KBps(1000 * (x))
>> -#define GBps(x) ((u64)1000 * MBps((x)))
>> -
>>  void add_taint_for_CI(struct drm_i915_private *i915, unsigned int taint);
>>  static inline void __add_taint_for_CI(unsigned int taint)
>>  {
>> --
>> 2.34.1
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
