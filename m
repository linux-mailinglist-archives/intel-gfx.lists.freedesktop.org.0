Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B1D181BD5
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 15:56:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F3B16E200;
	Wed, 11 Mar 2020 14:56:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DADAF6E200
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 14:56:15 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id 25so2432850wmk.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 07:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=wavRJHYhMMCBXKaJ62HZw5ybAEeT0WG2IqTMDNRMcbk=;
 b=SyfkqIumXMK21empxSHwd7PdiNbWIgbUTWGzpRt0N//qwt0fIh7D7mvv/U8xHrPdT7
 CRX9yPegofgYaX3TuhJYuWpco+oDhOsZgePkT08Kn6ScZQVlfVu3jQ+FlAq8ORrpZB0J
 OKRsCF9/eVxza3MbtcPA38THHP3fcCs+GTV59ZDMVokNFmYqX5LEISdtqou3M4znUBLy
 WdidwU88/M61X1iqEuP/J37ysqfZjDa9JlFg1hsTu8k5LGyGjTApPc6tS0wi/wCXeC5t
 r4Z5t/5hAKw6Lhr+2E1nA+xLuUuk6p2dz8Ztd8WGo1pHeGa5YMADvDpseSfH4AEj6lHu
 oTrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=wavRJHYhMMCBXKaJ62HZw5ybAEeT0WG2IqTMDNRMcbk=;
 b=rjkqEQxnGXH7giZWx+VXp5TiF++l5S7qeSo+DQKf0lQ4vB8mnuuBidfGRZPjsB8/AO
 lKZ5I74XmIdDuazHjZa0tuBSoJVUjuFj7u5voOBQ0EPlAmiMOjAOSAmMRpk+7O4PpIZC
 qz5rko+a3d44Wx+g6an90EC5Np4KSi+MLwbNmvhycISelidgUqzjv+yMVRg3hAhPPwKF
 cDKXLLPyxdzcMq4hVbuu61t7K3qLkI3jcBeuGb7fPN5meLvYf3TD5VynIJxE2cWeTh6k
 4FSruad3FpI//HToxEvXVIMPplzKwzqvGK5jpwrZg5wagTCRQ03E5ksrCqr1HEFXNXPU
 PTow==
X-Gm-Message-State: ANhLgQ3IBgR5/0qWzu5mc8xPL6QVz06qspL8zsvmftoTnaeGvOE/TBrM
 PnpSo0G+fa3yxBXeWd3k4UzpTRB1I7EvKw==
X-Google-Smtp-Source: ADFU+vvYhe81FJjz193ws0Bgz+w0C0qMsjyAIIbvwncOY+B3A1fJRJm9y5uBtVldgLhfQk/WQOnwtw==
X-Received: by 2002:a1c:ac8a:: with SMTP id v132mr3973145wme.64.1583938574554; 
 Wed, 11 Mar 2020 07:56:14 -0700 (PDT)
Received: from wambui.local ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id m21sm8506404wmi.27.2020.03.11.07.56.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 07:56:13 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Wed, 11 Mar 2020 17:56:09 +0300 (EAT)
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <87o8t3kvw9.fsf@intel.com>
Message-ID: <alpine.LNX.2.21.99999.375.2003111755340.14786@wambui>
References: <cover.1583766715.git.jani.nikula@intel.com>
 <87blp5o8yx.fsf@intel.com> <87o8t3kvw9.fsf@intel.com>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 00/10] drm/i915/display: conversion to
 drm_device based logging macros
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
Cc: intel-gfx@lists.freedesktop.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On Wed, 11 Mar 2020, Jani Nikula wrote:

> On Mon, 09 Mar 2020, Jani Nikula <jani.nikula@intel.com> wrote:
>> Please ignore this, I seem to have some smtp trouble which fails some of
>> tha patches. This will be incomplete.
>>
>> Wambui, I'll resend this later.
>
> Okay, I sent them with the same message-ids, so the patches amended this
> beginning of the series.
>
> I pushed all the patches that I didn't change. Please double check the
> below patches that I adjusted, so I can push them.
>
>>>   drm/i915/fbc: convert to drm_device based logging macros.
>>>   drm/i915/fbdev: convert to drm_device based logging.
>>>   drm/i915/hdcp: convert to struct drm_device based logging.
>

Will do, thanks!
wambui karuga
> Thanks,
> Jani.
>
> -- 
> Jani Nikula, Intel Open Source Graphics Center
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
