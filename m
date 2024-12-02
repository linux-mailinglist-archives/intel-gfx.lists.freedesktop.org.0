Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4EA9E039D
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 14:36:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B07110E74D;
	Mon,  2 Dec 2024 13:36:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="OBDqN1tX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0B3A10E74D
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2024 13:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1733146578;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/NvlyDSLOp9XkCil5zMCD+F+cOvxJLc1axg0rxWLIn0=;
 b=OBDqN1tXEnQQE3OkVpGjzyq+MLG7yKxmez/jvdX/bXeEjYTlszrpC6qRIomkS30S3EoDBl
 V0rWsr26BX9REoHszDxbgRG1gmg6KGCeUIze1DNYADBUI+DWiCZzh2JNp9hfoXv+K6oZVQ
 xLqru940eUMKU7M8X66jYxjl5R2E4FQ=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-663-5ShyGMBoOYusGSBwTQq3wQ-1; Mon, 02 Dec 2024 08:36:17 -0500
X-MC-Unique: 5ShyGMBoOYusGSBwTQq3wQ-1
X-Mimecast-MFC-AGG-ID: 5ShyGMBoOYusGSBwTQq3wQ
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-4349e97bfc4so40548435e9.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Dec 2024 05:36:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733146576; x=1733751376;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/NvlyDSLOp9XkCil5zMCD+F+cOvxJLc1axg0rxWLIn0=;
 b=DvzQGG5KZ1qyyCcxPXOhKVxMxqvHPBakwKqbtHngvovdV6kpILQazL5hUEtTUuaiqj
 3fYOdxzwnVkUX1rxyTTWwAebganNQyu4aiQLJAVPwbbcp7h7ANYHOUYTgum+YWwxnGwj
 r+2L/pAqp51H+sGSiJ8un5YHXv3/tXdo2PXoO9yNjYNhP0TdcXHQv1Y708N4foLMKFf8
 MqPhtv53YIa4tW2UxeIbz/07CviusfM7hQVrBL4v3k1IDQGVslvWU+/ex0O+H2cDwCQV
 oTUnLuu1pcfnOY4+T2j8TYuNA6k6HeAn40B3p9VMRLVX7gS/CZ1mwhA1gK3nWA5X5bhv
 cBTQ==
X-Gm-Message-State: AOJu0Yz6weEh/78aD0qlpZxrHiV8uzzPhn5dMvkwhVTA634QacuDKOq2
 ifLftFMcpDDAM2ricvVI1JXZRSBeMJ30y+QcjW+k0wi0XGJro1QNiE+5OZq8OW6zVY0Ps+x//Dd
 4l6LMivZbapyqtKn1fJvNuCXiKTF46i726vTAmVYvEnuuopXFY1pbRUm6a0yinh8fs3Cj70yumA
 ==
X-Gm-Gg: ASbGncsaLpoP/QQb36YQUPCcEtV1VHkA1Tuo8PMd4xv2mRVJQaRzKvCTNMnUAvWPbiA
 qlvMNXo5p8pWiniIXrmFcdQ4lw3oRUx4CJvmK6fnqnJN9BZVGpX6aytMNHLwvHhUcULTvR+U/7l
 G6mj8E5qMZTipZhGiKw/7xPRN8PitDvFEl+kJX+tl0p5BZHWBAlqBk7tHq4F5x9D+ehVYcWKGJG
 p65ikmr6EpRi5lpLtJLsItv9XCrVrNJIbjRfkjc/V6aSEz+8uS+ALDVrsdWaR1gnNtqyQ+hhteU
 kUxByW6dCmqaoQ==
X-Received: by 2002:a05:600c:314a:b0:434:a684:984 with SMTP id
 5b1f17b1804b1-434a9dbb5f4mr259743695e9.4.1733146576293; 
 Mon, 02 Dec 2024 05:36:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFPPHwYvS4UgwgbBv5WMpPPNFHafTHeG/JGF3tCek5Sc3ioO5n8fDS7PDug5MEpa9Tz7+TkOw==
X-Received: by 2002:a05:600c:314a:b0:434:a684:984 with SMTP id
 5b1f17b1804b1-434a9dbb5f4mr259743425e9.4.1733146575892; 
 Mon, 02 Dec 2024 05:36:15 -0800 (PST)
Received: from ?IPV6:2a01:e0a:c:37e0:ced3:55bd:f454:e722?
 ([2a01:e0a:c:37e0:ced3:55bd:f454:e722])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-385ee2c7559sm4332275f8f.12.2024.12.02.05.36.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Dec 2024 05:36:15 -0800 (PST)
Message-ID: <8fc9b62d-3eff-4048-bbba-1e029f75a219@redhat.com>
Date: Mon, 2 Dec 2024 14:36:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?B?UmU6IOKclyBGaS5DSS5CVUlMRDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6?=
 =?UTF-8?Q?_Add_drm=5Fpanic_support?=
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Patchwork <patchwork@emeril.freedesktop.org>
Cc: intel-gfx@lists.freedesktop.org
References: <20241129162232.7594-1-jfalempe@redhat.com>
 <173289848796.343649.11337293273413208343@b555e5b46a47>
 <87y10y5rsw.fsf@intel.com>
From: Jocelyn Falempe <jfalempe@redhat.com>
In-Reply-To: <87y10y5rsw.fsf@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: h-Qjesoku_DBsnuov--Me4cV-ERV9BT3Whi9T6tiut4_1733146577
X-Mimecast-Originator: redhat.com
Content-Language: en-US, fr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

On 02/12/2024 10:59, Jani Nikula wrote:
> On Fri, 29 Nov 2024, Patchwork <patchwork@emeril.freedesktop.org> wrote:
>> == Series Details ==
>>
>> Series: drm/i915: Add drm_panic support
>> URL   : https://patchwork.freedesktop.org/series/141935/
>> State : failure
>>
>> == Summary ==
>>
>> Error: make failed
>>    CALL    scripts/checksyscalls.sh
>>    DESCEND objtool
>>    INSTALL libsubcmd_headers
>>    CC [M]  drivers/gpu/drm/xe/i915-display/intel_atomic_plane.o
>> drivers/gpu/drm/i915/display/intel_atomic_plane.c:46:10: fatal error: gem/i915_gem_object.h: No such file or directory
>>     46 | #include "gem/i915_gem_object.h"
>>        |          ^~~~~~~~~~~~~~~~~~~~~~~
>> compilation terminated.
> 
> The i915 display code is reused in xe with some Makefile magic. You'll
> need to enable both i915 and xe configs when making changes.
> 
> You can't use gem/i915_gem_object.h from code that gets built for
> xe. See intel_bo.[ch] in both i915 and xe for abstraction.

Ok, thanks. When I got this errors, I stopped building xe while trying 
to make it work on i915. (and forget about it before sending the RFC).

I'm rewriting this part, to have something that works on both.

best regards,

-- 

Jocelyn

> 
> BR,
> Jani.
> 
> 
> 
>> make[6]: *** [drivers/gpu/drm/xe/Makefile:165: drivers/gpu/drm/xe/i915-display/intel_atomic_plane.o] Error 1
>> make[5]: *** [scripts/Makefile.build:478: drivers/gpu/drm/xe] Error 2
>> make[4]: *** [scripts/Makefile.build:478: drivers/gpu/drm] Error 2
>> make[3]: *** [scripts/Makefile.build:478: drivers/gpu] Error 2
>> make[2]: *** [scripts/Makefile.build:478: drivers] Error 2
>> make[1]: *** [/home/kbuild2/kernel/Makefile:1936: .] Error 2
>> make: *** [Makefile:224: __sub-make] Error 2
>> Build failed, no error log produced
>>
>>
> 

