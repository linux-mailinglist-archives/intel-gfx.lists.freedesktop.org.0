Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C52D56B0721
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 13:32:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CB9710E11C;
	Wed,  8 Mar 2023 12:32:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E629F10E2CA
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 12:32:18 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id d36so17956883lfv.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Mar 2023 04:32:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1678278737;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=JYCVnd5YdaFCR9H8GFpuIDv5wtoHNnFAfbde7RyXdY0=;
 b=KuRZTVNh++1Nt8ce7WUjamI0nwjZ1pIzbNfdZ/2XCgUtas1hsUeqDSIXbVR43pP40k
 cdtFVTT2SkgUiNlb6lhQf0wGkMilP2Jvc97dgMvINYwmbCUwHf5kO+BeeKefryBRCXZR
 XAXRszm/oHTJOcv+Ziij3SyfrpHwPIbd/PPFnyHuJ76+IhzFxMS78Z56WRelIAE2eQSm
 Myizvn5e1OvwZ66Og518Iea97K5G91NlFZRQdDG2ViRg1z5bgMVFApIt1slketIkKa5h
 Rff7bt3rwkNx3s0dXmLF6ZDy91NWcbedhr52VThrbQmjWBPXT14I0asVzvU7mEJ55FNE
 SREA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678278737;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=JYCVnd5YdaFCR9H8GFpuIDv5wtoHNnFAfbde7RyXdY0=;
 b=oCkxHsM9A7HQNCOScnaN2qFkwYQWTEPscsPLan31/EFvOu35CYu9XrRMQ965zR6kg3
 0ntTUxcfaBnytsElP5IEqh395iMLF4STFt5eox0/QOUAo9no693w3zMMpUSk9eU01k6K
 7caPyTJoI0YGO7ha0+L+Y5Nts9HFEwGuQ94+2I6qG2RyXjgYF5AGv50XTSDiQo7hWIyl
 05VMtiirKORY2HJezfJEflxk80gl6ma0vG4bOsLx1rmtPU04AxaPcJU2rBuG+P6rlLVE
 ibpkY90EuWRhcbgvUjw0qvMgORlW9U8InBmerwQflogqEOsHCJigsHZIrz/mhDD5+dis
 WzzQ==
X-Gm-Message-State: AO0yUKWVnsz9aFuTbVuxzktTWnyGGtAhZUIJ8whzR9BWWgU22PUagxIA
 2iFIevqc9PD3OC6wXuql9/ddbg==
X-Google-Smtp-Source: AK7set9J8lhl9WY2p1nliUzTFep+iO/5QH9qGot2puNZHGZVwNyHDNIGSjdPAu41Hkd/+/0J2wERgg==
X-Received: by 2002:ac2:5486:0:b0:4dc:65c0:c74e with SMTP id
 t6-20020ac25486000000b004dc65c0c74emr4947358lfk.29.1678278737107; 
 Wed, 08 Mar 2023 04:32:17 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5?
 (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
 by smtp.gmail.com with ESMTPSA id
 d21-20020ac25455000000b004dc7fe3a2d3sm2317764lfn.135.2023.03.08.04.32.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Mar 2023 04:32:16 -0800 (PST)
Message-ID: <6bd9b493-01da-0542-2a21-10602dba6a1a@linaro.org>
Date: Wed, 8 Mar 2023 14:32:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-GB
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
References: <20230222053153.3658345-1-suraj.kandpal@intel.com>
 <87ttyvbhuz.fsf@intel.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <87ttyvbhuz.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 0/7] Enable YCbCr420 format for VDSC
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

On 08/03/2023 13:30, Jani Nikula wrote:
> On Wed, 22 Feb 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>> This patch series aims to enable the YCbCr420 format
>> for DSC. Changes are mostly compute params related for
>> hdmi,dp and dsi along with the addition of new rc_tables
>> for native_420 and corresponding changes to macros used to
>> fetch them.
>> There have been discussions prior to this series in which some patches
>> have gotten rb and can be found in the below link
>> https://patchwork.freedesktop.org/series/113729
> 
> I think it would be useful to get [1] from Dmitry merged to
> drm-misc-next first, have that in drm-next, and again backmerged to
> drm-intel-next before this. At least patches 1-5.
> 
> There's not much point in all drivers duplicating the parameters, and we
> need to move towards common code. Dmitry has been helpful in
> contributing this to us.

Note, while I slightly reworked the calculate_rc_params() function, I 
did not touch the intel_qp_tables (mostly since we do not need them for 
drm/msm (at least for now). Our current plan is to use fixed params (at 
least in the short notice). We might have to reconsider it at some point.

However it might be wise to merge them with amdgpu's qp tables. amdgpu 
driver also contains code to calculate RC params. It might be worth 
moving RC calculation to the common helper.

> 
> BR,
> Jani.
> 
> 
> [1] https://patchwork.freedesktop.org/series/114473/
> 
>>
>> Ankit Nautiyal (2):
>>    drm/dp_helper: Add helper to check DSC support with given o/p format
>>    drm/i915/dp: Check if DSC supports the given output_format
>>
>> Suraj Kandpal (4):
>>    drm/i915: Adding the new registers for DSC
>>    drm/i915: Enable YCbCr420 for VDSC
>>    drm/i915/display: Fill in native_420 field
>>    drm/i915/vdsc: Check slice design requirement
>>
>> Swati Sharma (1):
>>    drm/i915/dsc: Add debugfs entry to validate DSC output formats
>>
>>   drivers/gpu/drm/i915/display/icl_dsi.c        |   2 -
>>   .../drm/i915/display/intel_crtc_state_dump.c  |   4 +-
>>   .../drm/i915/display/intel_crtc_state_dump.h  |   2 +
>>   .../drm/i915/display/intel_display_debugfs.c  |  78 ++++++++
>>   .../drm/i915/display/intel_display_types.h    |   1 +
>>   drivers/gpu/drm/i915/display/intel_dp.c       |  39 +++-
>>   .../gpu/drm/i915/display/intel_qp_tables.c    | 187 ++++++++++++++++--
>>   .../gpu/drm/i915/display/intel_qp_tables.h    |   4 +-
>>   drivers/gpu/drm/i915/display/intel_vdsc.c     | 108 +++++++++-
>>   drivers/gpu/drm/i915/i915_reg.h               |  28 +++
>>   include/drm/display/drm_dp_helper.h           |  13 ++
>>   11 files changed, 442 insertions(+), 24 deletions(-)
> 

-- 
With best wishes
Dmitry

