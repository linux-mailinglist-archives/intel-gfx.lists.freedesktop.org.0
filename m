Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B38F26008B8
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 10:32:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 757A310ECEC;
	Mon, 17 Oct 2022 08:32:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CC1A10E85F
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 08:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1665995530;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0KNWIHzpfETNzO8vvu/OBgkc6l21+ViC5ZaicSgrrSY=;
 b=bZkx3hMZLZ+mjOEZeqY+ri0V9HVd9n2kZPqrvU9fFQZp9YgKSydfRUqt9b5PVx2SoGjDmO
 ZwlE+KgntGx4xi4pAy6rEXuGIJsmsUbpkiWMG9UfzcOkSOF+YMMq6ATirbpU8zbWTrS4Cl
 atuZkksHfr52ARHWZZ1D9q7DbrW1q4c=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-554-aUF_n4KCP76lwinL5-NrEg-1; Mon, 17 Oct 2022 04:32:09 -0400
X-MC-Unique: aUF_n4KCP76lwinL5-NrEg-1
Received: by mail-ed1-f70.google.com with SMTP id
 s8-20020a056402520800b0045cab560d5eso8941303edd.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 01:32:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=0KNWIHzpfETNzO8vvu/OBgkc6l21+ViC5ZaicSgrrSY=;
 b=gKeH/FhkgtkRjJu8sQsuoCyLgnrReT5shOJG+D8CbVP1Y9qZprZj8z8N8C0cdACLcj
 dHSYJj4+UvDOy7fX4qOSM1D7qcuKiPPqEnQDHgxOQ2lkKrPVzcw2b8BcyELS+128cTS/
 BWGP6s3CnUlLuwaNDSj5gDQOnzzRhSzakE2hLAYMyaFqRVNy47H9ijirLHaqMjKBUBOJ
 DXrlahARk5yPQrnaGYt/T2ojEmdsWypY1/FvxlpyGxySTHIe8NVsIWMSnwbbFw43Pqvj
 JhRdyrGOTHbkbyLqH/1MFLN4QTQJROkF9Jxcjry7cTUaameDE4hgvA/vp/NPqxMYD/my
 ryoQ==
X-Gm-Message-State: ACrzQf2VzlmzVQ66PG7RFaDSa0aS1RKE/otax03aftyIY34ciO7exhqj
 X3lnQcQWH+8Nbecr1Yi8VN/lObHmw0xo/rUF0fyNF9xV9WtGiz7VvYDx26TyfcM7Mgnd/neZBHh
 M6U6P0Z7LFxhyhcWwucSEj3xxST4v
X-Received: by 2002:a05:6402:b5a:b0:458:f4c6:8039 with SMTP id
 bx26-20020a0564020b5a00b00458f4c68039mr9369391edb.349.1665995528001; 
 Mon, 17 Oct 2022 01:32:08 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM7QuvGwAFxw2yDVIsfRtapjZUWFuS2M3QCz8GxWrTpVGgtbyBqCpFgd+txoTDoqfvdNlZAcgg==
X-Received: by 2002:a05:6402:b5a:b0:458:f4c6:8039 with SMTP id
 bx26-20020a0564020b5a00b00458f4c68039mr9369385edb.349.1665995527837; 
 Mon, 17 Oct 2022 01:32:07 -0700 (PDT)
Received: from [10.40.98.142] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 i8-20020a1709061e4800b0078d4c72e2cesm5746763ejj.44.2022.10.17.01.32.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Oct 2022 01:32:07 -0700 (PDT)
Message-ID: <05660cbc-3c66-2bcf-f3ed-d2232b92f7ba@redhat.com>
Date: Mon, 17 Oct 2022 10:32:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Jani Nikula <jani.nikula@linux.intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Thorsten Leemhuis (regressions address)" <regressions@leemhuis.info>
References: <355dde1c-91e3-13b5-c8e8-75c9b9779b4f@redhat.com>
 <87a65usvgq.fsf@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <87a65usvgq.fsf@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] alderlake crashes (random memory corruption?) with
 6.0 i915 / ucode related
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

Hi,

On 10/17/22 10:30, Jani Nikula wrote:
> On Thu, 13 Oct 2022, Hans de Goede <hdegoede@redhat.com> wrote:
>> With 6.0 the following WARN triggers:
>> drivers/gpu/drm/i915/display/intel_bios.c:477:
>>
>>         drm_WARN(&i915->drm, min_size == 0,
>>                  "Block %d min_size is zero\n", section_id);
> 
> What's the value of section_id that gets printed?

It is 42.

Regards,

Hans

