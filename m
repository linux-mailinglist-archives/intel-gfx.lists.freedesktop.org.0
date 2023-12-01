Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 020E980062F
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 09:49:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D315B10E81E;
	Fri,  1 Dec 2023 08:49:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 889AF10E821
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Dec 2023 08:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701420588; x=1732956588;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=pEiJEQKufj50keYzJK3/TKLKQdSby2XEUtYlkUVbFbk=;
 b=gf2NpmelB84LRBSsWIhDIwseiFN9W3KqlHWqL5ESAiVb2RMDcIDc5OH9
 aA84023f2mTSpVkhNgZwPOUDuxtFrrYjA1Aw9JvtHWgH5HAX4Z3wCmVdl
 CQxC6+sfOt7URB++vhq9Ddr8Ycniy4KW44PoDS4slb/PP5H8SPt56V9cq
 rlPh/jx/cc0L+QxGD5GbMJZ0Xt2gW3iir4Fpma/RVyIEgvqeYzUcT3/Il
 SJOM4eS5Oi5WzxCwlsqyNDZO5ZnWwFDo2MQZBISsJJKf7/wn7OEB2CNwq
 Vbhkj+qNK37Kb3prtqsQhwJk+uGC9mCUG9wdJY3vj6w8tALKIhVigsx4d w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="392330132"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="392330132"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 00:49:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="719429051"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="719429051"
Received: from vlubart-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.44.207])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 00:49:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <ZWePsA5BLZDsIGDT@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231129173317.1192269-1-jani.nikula@intel.com>
 <ZWePsA5BLZDsIGDT@intel.com>
Date: Fri, 01 Dec 2023 10:49:42 +0200
Message-ID: <87cyvq489l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: use PIPE_CONF_CHECK_BOOL()
 for bool members
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

On Wed, 29 Nov 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Wed, Nov 29, 2023 at 07:33:16PM +0200, Jani Nikula wrote:
>> Don't treat bools as integers.
>> 
>> v2: Rebase
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks for the reviews, pushed to din.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c | 8 ++++----
>>  1 file changed, 4 insertions(+), 4 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 9dc22fc8b3d3..d62cdae7ab6b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -5091,8 +5091,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>  #define PIPE_CONF_QUIRK(quirk) \
>>  	((current_config->quirks | pipe_config->quirks) & (quirk))
>>  
>> -	PIPE_CONF_CHECK_I(hw.enable);
>> -	PIPE_CONF_CHECK_I(hw.active);
>> +	PIPE_CONF_CHECK_BOOL(hw.enable);
>> +	PIPE_CONF_CHECK_BOOL(hw.active);
>>  
>>  	PIPE_CONF_CHECK_I(cpu_transcoder);
>>  	PIPE_CONF_CHECK_I(mst_master_transcoder);
>> @@ -5301,8 +5301,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>  	PIPE_CONF_CHECK_I(dsc.config.second_line_bpg_offset);
>>  	PIPE_CONF_CHECK_I(dsc.config.nsl_bpg_offset);
>>  
>> -	PIPE_CONF_CHECK_I(dsc.compression_enable);
>> -	PIPE_CONF_CHECK_I(dsc.dsc_split);
>> +	PIPE_CONF_CHECK_BOOL(dsc.compression_enable);
>> +	PIPE_CONF_CHECK_BOOL(dsc.dsc_split);
>>  	PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
>>  
>>  	PIPE_CONF_CHECK_BOOL(splitter.enable);
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
