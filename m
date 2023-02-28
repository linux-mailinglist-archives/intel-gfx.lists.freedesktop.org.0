Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85CEE6A5CD7
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Feb 2023 17:10:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC6E010E4EB;
	Tue, 28 Feb 2023 16:10:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ED0B10E4D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Feb 2023 16:10:19 +0000 (UTC)
Received: by mail-lj1-x22f.google.com with SMTP id a4so7522672ljr.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Feb 2023 08:10:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=3YUO3r3VwceUe+XOEO9OMAzwcaxuU4Go+SNtW4yN8hg=;
 b=QeRy94GjvOMF+XKm4toZomw7EOYgv6l5rOS6+nNGDT9IjnQzzsddk4bGAT9jJQScva
 rpr5xQWgsk0PK7uBIuxTRwyhh7ofDAx7cE+esrtT3h48no3wwiuYuhmen+d6GBFXW4eI
 j/tMy5mMkrESPsYJRs4ib7MQQM/dZboD17X4AGcIQ3upbd5vrBFjTHPfP8GB3PzfPchU
 74MKe0yArBeKI0R2DFDhuxjXclcsbnPSuVzfmQ9w6iIgX9mbDAlKEH7l6QsIT4U2yKtu
 gO4r1YSdxAiHojzaWtbLIO3jW/QAUrKa2ZKDes9MPxbjfv2WEjCSrZ3t5esMCiPlUnQb
 NCEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=3YUO3r3VwceUe+XOEO9OMAzwcaxuU4Go+SNtW4yN8hg=;
 b=m8rcU+GGzDybsnVfTQF0D4q4vQrzuMIEsZP1DqPi3DcgQDy/NUpuTLgMmE09lxIZkn
 4Ewl+AOpI6ZtzGhq6MlRmHCzLAidCw2fMlb4HTTUm1EjyABKdMVdEnPx8dtgogShnDwJ
 Hp8CrZWyskeE+VJ1dkUmCNFq/W5Suu+QFHB99i9Sm9N9acp+N4NC9W+OKzMt2u1ZOzVA
 nognbTc5SH45oC7/d1jDY13j480kmUhCc3+82C+h3098Ag7GfDUkkQN3AELzgkzkCbW7
 IAlycViNa6kPyovylQhHjsfN6U+PcZHIu4nbq6TnG9/SDlTKUoGNwK3RUMjnaAFn3nNw
 XAdA==
X-Gm-Message-State: AO0yUKXZnoZZvnGp8rcmS1ZGpsJk3iw6DsFT3MA564/IRDo2/EBNW+0Z
 4IXq6gZeA+9ytygURdJ/X0d+Hg==
X-Google-Smtp-Source: AK7set+8TsFGhQqD0+dy2rUenh8yRG/xO3TIWO/vWm8Bvp8SqZS561ULaoIYfLod4QAW157GmXn5uw==
X-Received: by 2002:a2e:9e14:0:b0:295:a317:3ac0 with SMTP id
 e20-20020a2e9e14000000b00295a3173ac0mr969978ljk.21.1677600617477; 
 Tue, 28 Feb 2023 08:10:17 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5?
 (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
 by smtp.gmail.com with ESMTPSA id
 z17-20020ac24191000000b004db44babad7sm1389391lfh.260.2023.02.28.08.10.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Feb 2023 08:10:17 -0800 (PST)
Message-ID: <f0e85efb-299f-e82a-4473-5770f4d593dc@linaro.org>
Date: Tue, 28 Feb 2023 18:10:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-GB
To: Jani Nikula <jani.nikula@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>
References: <20230228113342.2051425-1-dmitry.baryshkov@linaro.org>
 <20230228113342.2051425-2-dmitry.baryshkov@linaro.org>
 <874jr5zsu7.fsf@intel.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <874jr5zsu7.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915/dsc: change DSC param tables
 to follow the DSC model
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
Cc: linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 28/02/2023 17:56, Jani Nikula wrote:
> On Tue, 28 Feb 2023, Dmitry Baryshkov <dmitry.baryshkov@linaro.org> wrote:
>> After cross-checking DSC models (20150914, 20161212, 20210623) change
>> values in rc_parameters tables to follow config files present inside
>> the DSC model. Handle two places, where i915 tables diverged from the
>> model, by patching the rc values in the code.
>>
>> Note: I left one case uncorrected, 8bpp/10bpc/range_max_qp[0], because
>> the table in the VESA DSC 1.1 sets it to 4.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vdsc.c | 18 ++++++++++++++++--
>>   1 file changed, 16 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> index 207b2a648d32..d080741fd0b3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> @@ -86,7 +86,7 @@ static const struct rc_parameters rc_parameters[][MAX_COLUMN_INDEX] = {
>>   		}
>>   	},
>>   	/* 6BPP/14BPC */
>> -	{ 768, 15, 6144, 15, 25, 23, 27, {
>> +	{ 768, 15, 6144, 15, 25, 23, 23, {
>>   		{ 0, 16, 0 }, { 7, 18, -2 }, { 15, 20, -2 }, { 16, 20, -4 },
>>   		{ 17, 21, -6 }, { 17, 21, -6 }, { 18, 21, -6 }, { 18, 22, -8 },
>>   		{ 19, 23, -8 }, { 20, 24, -10 }, { 21, 24, -10 },
>> @@ -115,6 +115,10 @@ static const struct rc_parameters rc_parameters[][MAX_COLUMN_INDEX] = {
>>   	},
>>   	/* 8BPP/10BPC */
>>   	{ 512, 12, 6144, 7, 16, 15, 15, {
>> +		/*
>> +		 * DSC model/pre-SCR-cfg has 8 for range_max_qp[0], however
>> +		 * VESA DSC 1.1 Table E-5 sets it to 4.
>> +		 */
>>   		{ 0, 4, 2 }, { 4, 8, 0 }, { 5, 9, 0 }, { 5, 10, -2 },
>>   		{ 7, 11, -4 }, { 7, 11, -6 }, { 7, 11, -8 }, { 7, 12, -8 },
>>   		{ 7, 13, -8 }, { 7, 14, -10 }, { 9, 15, -10 }, { 9, 16, -12 },
>> @@ -132,7 +136,7 @@ static const struct rc_parameters rc_parameters[][MAX_COLUMN_INDEX] = {
>>   	},
>>   	/* 8BPP/14BPC */
>>   	{ 512, 12, 6144, 15, 24, 23, 23, {
>> -		{ 0, 12, 0 }, { 5, 13, 0 }, { 11, 15, 0 }, { 12, 17, -2 },
>> +		{ 0, 12, 2 }, { 5, 13, 0 }, { 11, 15, 0 }, { 12, 17, -2 },
>>   		{ 15, 19, -4 }, { 15, 19, -6 }, { 15, 19, -8 }, { 15, 20, -8 },
>>   		{ 15, 21, -8 }, { 15, 22, -10 }, { 17, 22, -10 },
>>   		{ 17, 23, -12 }, { 17, 23, -12 }, { 21, 24, -12 },
>> @@ -529,6 +533,16 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
>>   			DSC_RANGE_BPG_OFFSET_MASK;
>>   	}
>>   
>> +	if (DISPLAY_VER(dev_priv) < 13) {
>> +		if (compressed_bpp == 6 &&
>> +		    vdsc_cfg->bits_per_component == 8)
>> +			vdsc_cfg->rc_quant_incr_limit1 = 23;
>> +
>> +		if (compressed_bpp == 8 &&
>> +		    vdsc_cfg->bits_per_component == 14)
>> +			vdsc_cfg->rc_range_params[0].range_bpg_offset = 0;
>> +	}
>> +
> 
> I wonder if we shouldn't just use the updated values...

I also wondered about this, so I wanted to get a double check from 
somebody having better knowledge of this part, if it is a typo in the 
original patch or a typo in the cfg files.

E.g. the pre_scr_cfg_files_for_reference/rc_10bpc_8bpp.cfg has 8 as 
RX_MAXQP[0], which (for me) looks like a typo in the CFG file itself, 
rather than being a typo in the driver.

On the other hand, these two issues belong to the 'current' CFG files, 
so they, most probably, received more attention from anybody working 
with the standard and with the model.

I can change this patch to become a fix for the tables (dropping the if 
clause), if you can confirm that these values are typos in the driver.

> 
> Maybe add a FIXME comment above the block to consider removing it?
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
>>   	/*
>>   	 * BitsPerComponent value determines mux_word_size:
>>   	 * When BitsPerComponent is less than or 10bpc, muxWordSize will be equal to
> 

-- 
With best wishes
Dmitry

