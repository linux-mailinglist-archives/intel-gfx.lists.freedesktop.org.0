Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C496816A60F
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 13:22:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87D8F6E2F8;
	Mon, 24 Feb 2020 12:22:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D93F66E2F8
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 12:22:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 04:22:36 -0800
X-IronPort-AV: E=Sophos;i="5.70,480,1574150400"; d="scan'208";a="230633134"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 04:22:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Randy Dunlap <rdunlap@infradead.org>, intel-gfx@lists.freedesktop.org
In-Reply-To: <3d2e87f0-f42f-5217-bef3-7b07c02b3eec@infradead.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200221105414.14358-1-jani.nikula@intel.com>
 <3d2e87f0-f42f-5217-bef3-7b07c02b3eec@infradead.org>
Date: Mon, 24 Feb 2020 14:22:32 +0200
Message-ID: <87k14ctbsn.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix header test with GCOV
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
Cc: Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 21 Feb 2020, Randy Dunlap <rdunlap@infradead.org> wrote:
> On 2/21/20 2:54 AM, Jani Nikula wrote:
>> $(CC) with $(CFLAGS_GCOV) assumes the output filename with .gcno suffix
>> appended is writable. This is not the case when the output filename is
>> /dev/null:
>> 
>>   HDRTEST drivers/gpu/drm/i915/display/intel_frontbuffer.h
>> /dev/null:1:0: error: cannot open /dev/null.gcno
>>   HDRTEST drivers/gpu/drm/i915/display/intel_ddi.h
>> /dev/null:1:0: error: cannot open /dev/null.gcno
>> make[5]: *** [../drivers/gpu/drm/i915/Makefile:307:
>> drivers/gpu/drm/i915/display/intel_ddi.hdrtest] Error 1
>> make[5]: *** Waiting for unfinished jobs....
>> make[5]: *** [../drivers/gpu/drm/i915/Makefile:307:
>> drivers/gpu/drm/i915/display/intel_frontbuffer.hdrtest] Error 1
>> 
>> Filter out $(CFLAGS_GVOC) from the header test $(c_flags) as they don't
>> make sense here anyway.
>> 
>> References: http://lore.kernel.org/r/d8112767-4089-4c58-d7d3-2ce03139858a@infradead.org
>> Reported-by: Randy Dunlap <rdunlap@infradead.org>
>> Fixes: c6d4a099a240 ("drm/i915: reimplement header test feature")
>> Cc: Masahiro Yamada <masahiroy@kernel.org>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Acked-by: Randy Dunlap <rdunlap@infradead.org> # build-tested

And pushed, thanks for the ack.

BR,
Jani.

>
> Thanks.
>
>> ---
>>  drivers/gpu/drm/i915/Makefile | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>> index b314d44ded5e..bc28c31c4f78 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -301,7 +301,7 @@ extra-$(CONFIG_DRM_I915_WERROR) += \
>>  		$(shell cd $(srctree)/$(src) && find * -name '*.h')))
>>  
>>  quiet_cmd_hdrtest = HDRTEST $(patsubst %.hdrtest,%.h,$@)
>> -      cmd_hdrtest = $(CC) $(c_flags) -S -o /dev/null -x c /dev/null -include $<; touch $@
>> +      cmd_hdrtest = $(CC) $(filter-out $(CFLAGS_GCOV), $(c_flags)) -S -o /dev/null -x c /dev/null -include $<; touch $@
>>  
>>  $(obj)/%.hdrtest: $(src)/%.h FORCE
>>  	$(call if_changed_dep,hdrtest)
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
