Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7DA120362
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 12:11:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CDF26E4C5;
	Mon, 16 Dec 2019 11:11:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0335F6E4C5
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 11:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576494695;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WjOUTFpOi6Gu4d+B9mMstxxsH+1mt4QNI2pngEePaBo=;
 b=P/jCrwoVUgSuRPZ0wEoMSKFN5dladWd8opE3ZpD/VNx9IDHniBn6Wa1Elw8EDWwTofUa+s
 tUneswKjaVOVeq/I85dTNWALicBxwZG8A6FDzH3YEHIOzAKs7aPZjs4ULe6ufAtWc71WBp
 uD/jURIiFCDT/thlQEsqetCCLDjm1UY=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-150-m4xKM2YVNDKBV8gS5v8PkA-1; Mon, 16 Dec 2019 06:11:34 -0500
Received: by mail-wm1-f69.google.com with SMTP id v12so300029wmj.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 03:11:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WjOUTFpOi6Gu4d+B9mMstxxsH+1mt4QNI2pngEePaBo=;
 b=mCs0T7QMFyM5Dv+QhV7xBGv8aUNdwyhqVwMTQFX7u9/9zCZ7CianZ6ytxOOPufd0fO
 yZPiL/Qyw6JQhCGhLqi++QpEg53yKulZz+YK5yyeciH5EP+HPtrvA1gay6jPEBUkFSjl
 r0EHJnnqhY4uxxhava7VEO0nwwI7tVwc+NGC/L6Ti304C6m1xlfv6VH6Y0dqRq2Qg6BZ
 GCoqvIhJr6JaYeMtiEovBsRBiIHdWGQnPZNdxVjg2V8iXQVPhfjWODsJYQTQ8rlb8lM7
 TUTGJZEnYl6DHyToW9p2eLGwDlAbeYtBYTSa9lRU/MixnHhXtn08bq39xJTisViky2ho
 HY7w==
X-Gm-Message-State: APjAAAVnQlnGHNWSGn/bzl3DaAb2fy4M/0jW0lFVbsqaqA9OR/FiDwxk
 20IEhvnIL8Tpr7eo0t0TR9mjViN9OrJPFp2lj5qTNWNEylpNUaDxDPgW5Pi946ym6SXLrSOfY/R
 usEZlNLFMulEWraEv/Sfgi5zhYUT7
X-Received: by 2002:a1c:7dc4:: with SMTP id
 y187mr28955309wmc.161.1576494693445; 
 Mon, 16 Dec 2019 03:11:33 -0800 (PST)
X-Google-Smtp-Source: APXvYqz95JVS+9hzCpx2tUeBC+2E8wF70N/Kg5EXyntvwnCxuCB6OinaKV46tDHhavo+POTw6isKJw==
X-Received: by 2002:a1c:7dc4:: with SMTP id
 y187mr28955289wmc.161.1576494693250; 
 Mon, 16 Dec 2019 03:11:33 -0800 (PST)
Received: from shalem.localdomain
 (2001-1c00-0c0c-fe00-7e79-4dac-39d0-9c14.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:7e79:4dac:39d0:9c14])
 by smtp.gmail.com with ESMTPSA id x18sm20950368wrr.75.2019.12.16.03.11.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Dec 2019 03:11:32 -0800 (PST)
To: Linus Walleij <linus.walleij@linaro.org>
References: <20191215163810.52356-1-hdegoede@redhat.com>
 <CACRpkdarJ5chDfgc5F=ntzG1pw7kchtzp0Upp+OH9CH6WLnvXw@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <1474a983-3e22-d59b-255a-edd3a41f0967@redhat.com>
Date: Mon, 16 Dec 2019 12:11:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CACRpkdarJ5chDfgc5F=ntzG1pw7kchtzp0Upp+OH9CH6WLnvXw@mail.gmail.com>
Content-Language: en-US
X-MC-Unique: m4xKM2YVNDKBV8gS5v8PkA-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Intel-gfx] [PATCH 0/5] drm/i915/dsi: Control panel and
 backlight enable GPIOs from VBT
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Lee Jones <lee.jones@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 16-12-2019 11:26, Linus Walleij wrote:
> On Sun, Dec 15, 2019 at 5:38 PM Hans de Goede <hdegoede@redhat.com> wrote:
> 
>> Linus, this series starts with the already discussed pinctrl change to
>> export the function to unregister a pinctrl-map. We can either merge this
>> through drm-intel, or you could pick it up and then provide an immutable
>> branch with it for merging into drm-intel-next. Which option do you prefer?
> 
> I have created an immutable branch with these changes and pulled it
> to my "devel" branch for v5.6:
> https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git/log/?h=ib-pinctrl-unreg-mappings

Ugh, taking one last look at the "pinctrl: Export pinctrl_unregister_mappings"
patch it is no good, sorry.

I just realized that if the mapping has been dupped, the if (maps_node->maps == map)
check will never be true, because maps_node->maps is the return value from kmemdup
and map is the map originally passed in while registering.

Linus, can you please drop this from your -next ?

So I see 2 options:
1) Add an orig_map member to maps_node and use that in the comparison,
this is IMHO somewhat ugly

2) Add a new pinctrl_register_mappings_no_dup helper and document in
pinctrl_unregister_mappings kdoc that it can only be used together
with the no_dup variant.

I believe that 2 is by far the best option. Linus do you agree or
do you have any other suggestions?

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
