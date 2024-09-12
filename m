Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF7C978A4F
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 23:01:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE5D710ED95;
	Fri, 13 Sep 2024 21:01:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="avRiTdrc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
 [209.85.128.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1C6510E8C7
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 12:14:13 +0000 (UTC)
Received: by mail-wm1-f54.google.com with SMTP id
 5b1f17b1804b1-42cae6bb895so8273005e9.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 05:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1726143252; x=1726748052;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=bORY3HlP0kOQCmx0LKjYAH7NpqjR028coTgUAD9TUQA=;
 b=avRiTdrcqNpS8zTcSOLKtYjBHcXNdnyBJD1EP23r+x61c6V0q13wRw5kVHUqff2oAQ
 u4EWb9+1vlO8k5RXF5zdX1NYiZ8gwrYJYNKYHg7KN7A9WYndfX+qAbYpoj8eXBFgX8Vu
 6IiU910A/+LAeoRKIWvpEWjtq9DiVLvkIGsXN2/w3w+PXuHguNZGoHJfTyq5UabumeXB
 WxDb2ZNGntaeMI2J/WcGsbQsnbhurIK8r9/eBr0KwYpP11PVEPFvI/h3oC5aSI98v/v/
 9P8f4L9MgHasN23MsCpNB0qwwlnQwVfJOM2BtPxcvXp9buPx93c3V3dasyaLvazS/NiV
 BTcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726143252; x=1726748052;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=bORY3HlP0kOQCmx0LKjYAH7NpqjR028coTgUAD9TUQA=;
 b=G2BR9g7wsnwuPHDl5JPJghHVZ5R65L085N3wMaRUd9UdyvSR22peRTW3YZ1pigte38
 AGnV6LR7DYdgOhRFVosJkA2GrNqC9ecESQmVJAxar5paWUlYA23EquuM8fhzt4sOvx5Y
 LrSCU0bGjIMwKtdhTz+mUYk6LwZ3PtOk1U3EOwKeyfe7J1XkV08xWi2YoJVUYlWQZI8s
 aU1A5dZLfN18Op5ynHP2voAt8+YDpA2fsARtxBNVApuWScAsSL4oZPL6GDvNAfO0/+P2
 kMvkNfGbs7W+5oic399X9FsTuAH5qC1G4wS8uSZznqo12d1v7wglN2Z3HnmI2tCx75qR
 2q7w==
X-Forwarded-Encrypted: i=1;
 AJvYcCUMb6SFS4fcbURT6w+6yesTuIDdf28uUba+7k7fbO1sNDD1o1oa0vcs7C0OZWlapGqidh9OKhtvrFw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxvCc2AscTVEGUNYQh/tWZlfzG2lqqOyScmL+37rLf4W7t31IBf
 gC/BCvPLF9ati6Lfhv74PXNpQAETj6Dqr+Bn3h+IRMTw6nR6+GatyuZh3KgcCPw=
X-Google-Smtp-Source: AGHT+IHEBljsXZHgMq2X1DZ+waGkIVs7/2emM2n8fTffmGwuJ7pI0ZvONKQFZiDu5gqGP2V4v0tYJw==
X-Received: by 2002:adf:f3ce:0:b0:374:c621:62a6 with SMTP id
 ffacd0b85a97d-378c2d5b297mr1483853f8f.47.1726143251095; 
 Thu, 12 Sep 2024 05:14:11 -0700 (PDT)
Received: from [192.168.108.50] (freebox.vlq16.iliad.fr. [213.36.7.13])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42cb2a08a1dsm152643165e9.1.2024.09.12.05.14.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Sep 2024 05:14:10 -0700 (PDT)
Message-ID: <c2ed3380-82c3-43a3-9c01-534b08333f95@freebox.fr>
Date: Thu, 12 Sep 2024 14:14:10 +0200
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
 <9028f858-8c6d-4292-a6aa-27eedff3ac8b@freebox.fr> <87ed5pgm2i.fsf@intel.com>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <87ed5pgm2i.fsf@intel.com>
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

On 12/09/2024 13:15, Jani Nikula wrote:
> On Thu, 12 Sep 2024, Marc Gonzalez wrote:
>> On 11/09/2024 12:23, Jani Nikula wrote:
>>> On Tue, 10 Sep 2024, Marc Gonzalez wrote:
>>>> On 10/09/2024 16:51, Dmitry Baryshkov wrote:
>>>>> On Tue, Sep 10, 2024 at 01:03:43PM GMT, Jani Nikula wrote:
>>>>>> See also commit 6863f5643dd7 ("kbuild: allow Clang to find unused static
>>>>>> inline functions for W=1 build").
> 
> [snip]
> 
>>> GCC doesn't catch unused static inlines, while Clang does.
>>
>> It makes no sense to me that adding "inline" would prevent
>> GCC from diagnosing the issue... GCC should simply ignore
>> the "inline" keyword when definition is not in a header file
>> (maybe they don't store "origin").
> 
> Please just read the commit message for the commit I reference above for
> details. There's not much more I could say about it.

OK, I read 6863f5643dd7.

My remark still stands.

GCC's decision to not warn for unused static inline functions
in source files (not headers) is questionable at best.

(For the record, I think clang is the devil's spawn.)

Regards

