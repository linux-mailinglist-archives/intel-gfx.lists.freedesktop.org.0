Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E28F46F683F
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 11:24:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 594BA10E40E;
	Thu,  4 May 2023 09:24:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58C5910E40E
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 09:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683192283; x=1714728283;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=GjBj+HBynFvpsYuUJQUuXPnd3NKrp0rDSLFQ49awUVw=;
 b=PsUsLbPpmYj/G8/zrRVZOHQSGVAJCEGqdWIORGLN+6KQQPaSK6dUlOAR
 awvRhCV3Btod6SmGgKiabE6hqokHch1XrNdPOkwf9E5tNIpo3EXWO8ZmA
 GcubJjdKqO4RfrvSwG9z2SdwwrzV8UqIdi1xD6hlAm0wI9DEWoMttZ83K
 D7jVSArzJgMSKws89vlb/LUjE+XjzWuG8DaPVIXvOT2MzBY5/EImLhdl0
 nN6f9WViqpj09ZWRgL9Nv7JYdkE+o6DY9TTba7Pjt+eAk/dlQxiklkLO0
 fyp6JBfahaJ6x2APmyfXULWi0Y6XQC18DWJbcR3+k383LgoOs07Ahw1l4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="435187862"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="435187862"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 02:24:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="691037061"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="691037061"
Received: from tferlin-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.61.212])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 02:24:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@kernel.org>
In-Reply-To: <ZFJvSWjkxO1j+N21@rdvivi-mobl4>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1683041799.git.jani.nikula@intel.com>
 <77a7f3044f603bf9f18b93aa3d44517670c37d67.1683041799.git.jani.nikula@intel.com>
 <ZFJvSWjkxO1j+N21@rdvivi-mobl4>
Date: Thu, 04 May 2023 12:24:38 +0300
Message-ID: <87cz3gzbxl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 11/24] drm/i915/ttm: fix i915_ttm_to_gem()
 kernel-doc
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

On Wed, 03 May 2023, Rodrigo Vivi <rodrigo.vivi@kernel.org> wrote:
> On Tue, May 02, 2023 at 06:37:28PM +0300, Jani Nikula wrote:
>> drivers/gpu/drm/i915/gem/i915_gem_ttm.h:50: warning: Function parameter or member 'bo' not described in 'i915_ttm_to_gem'
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gem/i915_gem_ttm.h | 1 +
>>  1 file changed, 1 insertion(+)
>> 
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
>> index f8f6bed1b297..70abdc3061a9 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
>> @@ -42,6 +42,7 @@ static inline bool i915_ttm_is_ghost_object(struct ttm_buffer_object *bo)
>>  /**
>>   * i915_ttm_to_gem - Convert a struct ttm_buffer_object to an embedding
>>   * struct drm_i915_gem_object.
>> + * @bo: Pointer to the ttm buffer object
>>   *
>>   * Return: Pointer to the embedding struct ttm_buffer_object.
>
> I understand the goal is to fix the warnings, but while at it,
> would you mind also fixing the Return?
>
> this was likely a bad copy and paste from i915_gem_to_ttm
> and the right one should be something like
>
> Return: Pointer to the embedding struct drm_i915_gem_object.

v2 at https://patchwork.freedesktop.org/patch/msgid/20230504092320.1787627-1-jani.nikula@intel.com

>
>>   */
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
