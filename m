Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B841597A5
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 19:04:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED3A76EE8C;
	Tue, 11 Feb 2020 18:04:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 105A96EE8C
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 18:04:31 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id p17so4766690wma.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 10:04:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=fGwTIEh2Majj0QbNmBAjH8COPE7ch5+j2Lkh8unFTxk=;
 b=TSqwOPtsDnthpWsax9SF30yAXMp/fYkIzajm4bIt3dcuQYNTKeFpvShOCB33ZvRM/p
 AI2olMgBBiWDgM9haBPTuPTO7BkT6t4+LzRoiWZ7o5lN4HNW5C+mu0+d1BAReZUBXxdi
 0Z/EAmHY+dvPbB0AJfTrEop9NLtCpUb5Ru3APLReY/ODAAzy5Wvqznyk7HEx9Z431v+2
 5PPr1RJsLrISJATWDTloxP+5UMrMW8JLILbNWtYDOvSb96WWPUKp/m3pf/fL190GkV1k
 CEgVCWJJZCWAGIP2JdsoY+zvQpcpeMJMAgjMguTQEW7/saqcF+yNMos1/Nm/UCFShzDy
 3bpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=fGwTIEh2Majj0QbNmBAjH8COPE7ch5+j2Lkh8unFTxk=;
 b=dSqcR5yodsMVs5W9Md6e4HM8gQLw1Su2PG8RG/yLiokr2RxJ28HXW+Zh+n+QwJg7Sa
 uXYT3oigr/CFEtsSdgRHvz29UAJG/mCC9TdKLSOKafKFlPtSKztXzOeB02pw+K9B+G9q
 j9+pVvKTVJeBi2eE6QocuAckkEh6GYaSUZjzVTy24U3pWFK2Y4bJbl1pv8aaO/HSziPT
 E8KlCpLoWNtMIYO1Gqhrch3LkHO6uJIuAnjVMkdlRPQSO+ufI+13m6IF6HmEGqCXmCT+
 zCHXGEJ6Ijj8NdAQbXKFwR5rsi1D8kLoWxGaRGV3saPyh/yCgkCfO2We1B369pjc/TJm
 OxDw==
X-Gm-Message-State: APjAAAWntwQ6Cn9AKcoV2be3AFw1wEuneEgMmtYrn1z7x/KoMcCQe5LW
 0vSDIFBbqwERofOCUKmRY5s=
X-Google-Smtp-Source: APXvYqwzne4m/wt9NOmKFI4uG/JrUKnucF8ANWo+0owtq+Ag4VywfmDMygY7GeAq6D0ZnTnhsHDQ3Q==
X-Received: by 2002:a05:600c:228f:: with SMTP id
 15mr7264508wmf.56.1581444269676; 
 Tue, 11 Feb 2020 10:04:29 -0800 (PST)
Received: from wambui.local ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id y185sm5001667wmg.2.2020.02.11.10.04.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 10:04:29 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Tue, 11 Feb 2020 21:04:16 +0300 (EAT)
To: Jani Nikula <jani.nikula@linux.intel.com>
In-Reply-To: <87tv3xz156.fsf@intel.com>
Message-ID: <alpine.LNX.2.21.99999.375.2002112102100.21042@wambui>
References: <20200206080014.13759-1-wambui.karugax@gmail.com>
 <20200206080014.13759-12-wambui.karugax@gmail.com> <87tv3xz156.fsf@intel.com>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 11/12] drm/i915/hdmi: convert to struct
 drm_device based logging macros.
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
Cc: airlied@linux.ie, intel-gfx@lists.freedesktop.org,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On Tue, 11 Feb 2020, Jani Nikula wrote:

> On Thu, 06 Feb 2020, Wambui Karuga <wambui.karugax@gmail.com> wrote:
>> @@ -1364,11 +1372,15 @@ int intel_hdmi_hdcp_write_an_aksv(struct intel_digital_port *intel_dig_port,
>>  static int intel_hdmi_hdcp_read_bksv(struct intel_digital_port *intel_dig_port,
>>  				     u8 *bksv)
>>  {
>> +	struct drm_i915_private *i915 =
>> +		intel_dig_port->base.base.dev->dev_private;
>
> The preferred way to get from intel_digital_port to i915 throughout is
>
> 	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>
> I realize there are some bad examples in the file; I've posted [1] to
> fix them.
>

Okay - I'll change that and resend.

-wambui

> BR,
> Jani.
>
>
> [1] http://patchwork.freedesktop.org/patch/msgid/20200211134427.31605-1-jani.nikula@intel.com
>
> -- 
> Jani Nikula, Intel Open Source Graphics Center
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
