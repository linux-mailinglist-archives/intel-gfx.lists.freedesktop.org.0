Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F804978A4E
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 23:01:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 678E910ED92;
	Fri, 13 Sep 2024 21:01:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="GYnPQS/V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19E9010E215
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 10:56:07 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id
 ffacd0b85a97d-374c326c638so585534f8f.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 03:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1726138566; x=1726743366;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Nt9opV20XXsOa5z/RzMwdzRNoh6hR/E6GTyAUXLI6Is=;
 b=GYnPQS/V5PSvitV3+TJ99AI9CBqKMeRDHsRwjGsS9YTAv0/iUoHjM8cy+Uf4puYcid
 z4E+yT79sReHbXkFs9/EsmBN0TpKIof6vbKjkhgrEy01ZDFRsktDY4MotAMEvfoLzuzu
 dYBZS0+66KWLm4XQ7j1njQ3C0xJlMD5F0fFhxBXPWqJ52ONk3JxJjCW6T+fvwLSxUbzg
 GiE90JPbYkY5A6foTB/fu35Ig/TD+Zha8eIQdjMtsLsfVEsUVa8BOQS1m/Lxv62mJON3
 N8GbRTXvNv5Ds8I2Q/lZS717QP96o9ZKFP/VYO4+Ur2uESkg71cp1ehwA1Hc8uXTmeAc
 q8hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726138566; x=1726743366;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Nt9opV20XXsOa5z/RzMwdzRNoh6hR/E6GTyAUXLI6Is=;
 b=tOTwHarTfkqI15cDyTG6ooDRmw04Qj0ev4yGmqzqr8HbEpfWMeO19vIS9TqyxtKdPl
 lsx1AEKIDsPg0IR16L6h3dm3QrbMWiw7BD5l1d1YNuLRqyB2LsjqfFOu2AkDlUxBwTi2
 DAZH5hLg6wkoXOhHfi4Ht8wRk50fLDBWNFVKOJQstcbpDaa/rWwZs8ACy6foS5d0CFSG
 ENEgN60t2GJs0VfotTp6Oml8NkppYhvo8rC5+wYe1AK+UDIK32UYRirEGis1CLLaAR4R
 7QPOJOiamD/qtssMW7SEF187riQ0Bm3iQM9hDQwaOTnCEewpV+34l1ai5SQ9vpyIpSie
 t7cA==
X-Forwarded-Encrypted: i=1;
 AJvYcCViXSuBShqAgFcOj/5lOwOdwYVBJ2z6oMEVsmAZu0aaGtU3WfsLQNY10NBu09JLO9JVuq5XzUSb0KQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxShJtKxSkq45UfTJZ+LggMchfdUxpV8gbOYEIwS4f+N3po2IUQ
 w4Jas8jEGqF2e/HEvt/ikZTWO8MitK/X1QZVpA77/UV/7Yt+npQZHpqgZLqFTDU=
X-Google-Smtp-Source: AGHT+IE9+wQX/1J2KsVADvG1QVUpPXoig/hsO7v0VZ7xjkRspuEnpc2g7y3vNOnUaSl7AMnmsynS5Q==
X-Received: by 2002:adf:ef4a:0:b0:368:31c7:19dd with SMTP id
 ffacd0b85a97d-378c2cd3ae1mr1221292f8f.5.1726138565430; 
 Thu, 12 Sep 2024 03:56:05 -0700 (PDT)
Received: from [192.168.108.50] (freebox.vlq16.iliad.fr. [213.36.7.13])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-378956e8a98sm14084691f8f.117.2024.09.12.03.56.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Sep 2024 03:56:04 -0700 (PDT)
Message-ID: <9028f858-8c6d-4292-a6aa-27eedff3ac8b@freebox.fr>
Date: Thu, 12 Sep 2024 12:56:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] drm/msmi: annotate pll_cmp_to_fdata() with
 __maybe_unused
To: Jani Nikula <jani.nikula@intel.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Arnaud Vrac <avrac@freebox.fr>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, Nathan Chancellor <nathan@kernel.org>,
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org
References: <cover.1725962479.git.jani.nikula@intel.com>
 <3553b1db35665e6ff08592e35eb438a574d1ad65.1725962479.git.jani.nikula@intel.com>
 <4ag2efwiizn5bnskauekqwfhgl4gioafcvetpvsmbdgg37bdja@3g6tt4rlfwcb>
 <19ac4e25-7609-4d92-8687-585c6ea00c79@freebox.fr> <878qvyjxpg.fsf@intel.com>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <878qvyjxpg.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Fri, 13 Sep 2024 21:01:54 +0000
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

On 11/09/2024 12:23, Jani Nikula wrote:
> On Tue, 10 Sep 2024, Marc Gonzalez <mgonzalez@freebox.fr> wrote:
>> On 10/09/2024 16:51, Dmitry Baryshkov wrote:
>>> On Tue, Sep 10, 2024 at 01:03:43PM GMT, Jani Nikula wrote:
>>>
>>>> Building with clang and and W=1 leads to warning about unused
>>>> pll_cmp_to_fdata(). Fix by annotating it with __maybe_unused.
>>>>
>>>> See also commit 6863f5643dd7 ("kbuild: allow Clang to find unused static
>>>> inline functions for W=1 build").
>>>>
>>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>
>>> I think this function can be dropped. Marc, your call, as an author of
>>> the patch?
>>
>> ( Why is the patch prefixed "drm/msmi", is "msmi" a typo? )
> 
> Whoops, a typo.
> 
>>> For the record, Arnaud is the driver's author.
>>
>> pll_cmp_to_fdata() was used in hdmi_8998_pll_recalc_rate()
>> in a commented code block which was later removed.
>>
>> Thus, yes, it is safe to completely delete the unused function.
>> I'm surprised gcc didn't catch that...
> 
> Thanks, I'll change this to drop the function.
> 
> GCC doesn't catch unused static inlines, while Clang does.

It makes no sense to me that adding "inline" would prevent
GCC from diagnosing the issue... GCC should simply ignore
the "inline" keyword when definition is not in a header file
(maybe they don't store "origin").

Regards

