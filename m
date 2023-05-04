Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 879836F681C
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 11:15:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4FEC10E406;
	Thu,  4 May 2023 09:15:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBC9E10E406
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 09:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683191731; x=1714727731;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=BH/6vtWUoCRoi6dgIOnPgFW4ckBttAUYUVrk/3f8PiE=;
 b=Z0GB5vICMhE8kfRk1FbOFdQGRahUQV1KgEUqqWxrGOFfpF0ZQ2rLBAEx
 PcAcKIJdbDvveR8qIYygLimJ1p0Jev3aE9w6QlmCVftXKV8WYxNWLpcvp
 80t3PzYyNM+0Q65ZrVWpy6Q6wTH96khVbgOoZK+huXm5vyowlRFWRYWv1
 T5jTIeO4ZGTAlOwCA5cuOYu4Q03m6/bYyPOmxe2DcY4EhAs800G2ms5Po
 QowOCtZlalfrLg7Sp4qdyjRpa4oSrmu4/SbvlNVPcWhaEYa8yIHhA8yNg
 LztUOng4HFn43urtfiHC3Aaej2t0OFarFgJjuML5Z/WG1ps+kS09MxUgF A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="338024017"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="338024017"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 02:15:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="699770450"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="699770450"
Received: from tferlin-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.61.212])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 02:15:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@kernel.org>
In-Reply-To: <ZFJqvf38Nzm15JR7@rdvivi-mobl4>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1683041799.git.jani.nikula@intel.com>
 <9213214c9caa296ebd349a5d5b44c2bbb45cdf99.1683041799.git.jani.nikula@intel.com>
 <ZFJqvf38Nzm15JR7@rdvivi-mobl4>
Date: Thu, 04 May 2023 12:15:17 +0300
Message-ID: <87ild8zcd6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 01/24] drm/i915/gvt: fix
 intel_vgpu_alloc_resource() kernel-doc parameter
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
> On Tue, May 02, 2023 at 06:37:18PM +0300, Jani Nikula wrote:
>> drivers/gpu/drm/i915/gvt/aperture_gm.c:344: warning: Function parameter or member 'conf' not described in 'intel_vgpu_alloc_resource'
>> drivers/gpu/drm/i915/gvt/aperture_gm.c:344: warning: Excess function parameter 'param' description in 'intel_vgpu_alloc_resource'
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks for the reviews. Pushed the reviewed ones to drm-intel-gt-next,
and will repost the rest separately as we get clarity on them.

BR,
Jani.


>
>> ---
>>  drivers/gpu/drm/i915/gvt/aperture_gm.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/gvt/aperture_gm.c b/drivers/gpu/drm/i915/gvt/aperture_gm.c
>> index 076c779f776a..eedd1865bb98 100644
>> --- a/drivers/gpu/drm/i915/gvt/aperture_gm.c
>> +++ b/drivers/gpu/drm/i915/gvt/aperture_gm.c
>> @@ -330,7 +330,7 @@ void intel_vgpu_reset_resource(struct intel_vgpu *vgpu)
>>  /**
>>   * intel_vgpu_alloc_resource() - allocate HW resource for a vGPU
>>   * @vgpu: vGPU
>> - * @param: vGPU creation params
>> + * @conf: vGPU creation params
>>   *
>>   * This function is used to allocate HW resource for a vGPU. User specifies
>>   * the resource configuration through the creation params.
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
