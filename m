Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6291F4899CE
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 14:24:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D823D10FB42;
	Mon, 10 Jan 2022 13:24:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C9FE10FBAD
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Dec 2021 07:47:58 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id s1so3112267wrg.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Dec 2021 23:47:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=f9IoHpTdU4hn8/VqrgcBZySrATwg7Us2omhUYvDJbjs=;
 b=XidapGpHhgr3RhaFb7ce5Hw2biz05P/Zajdv4toYTj0p8Bxqxr9EKdBaNbJLdrnYon
 hytKvHWK6jPtb9d0Bc/4JIzwOOjerdnXS1REjObYn/Pv0v4tqX5kfDzX9aD5MmQUgR1m
 qVMfBGwDC3t5xUPP5uSwVTwvnZPWnKPsB3Pr4WT2UzEyrSZHfa99yS9OND+TfcTPcsnp
 9vU+zd0P1BHi80M0dkK8U2DP7Ame9Edp5WHwuDelY9M48TV3jm15p2GyKE/QKqC6if+z
 KZZ/SBRmVncXZI2VdRpsRVAiYIQu0QorB26YBLHzuLV+2kb+grPgc4a/Hvmhk5A2NWMR
 s9Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=f9IoHpTdU4hn8/VqrgcBZySrATwg7Us2omhUYvDJbjs=;
 b=cwxT3vy2/Wq5s3klNEtix+vQg2tRXBaBwsXCWdX/CO0/INYSRWUEIvNjxJ44IOP/53
 Mct0krR944tI7eLa5U3YniyDwQqU7k2I12MBsKBSazidZmLv1nSTi1w2lwQNhqTRxbC8
 P0t5Iq0SUgLqGqKvU5U2kuYqJDCfQ0F47aUjfNZe3GWz7JYyIzTxqY4flu9seoUThk8v
 AuSSG5GMN3cpdTlNDFu11TJ+peeiclHQMDZZaQ2nvkLkm2kQzmsyj/JogTDoFfb+oXRf
 CE44YfZwFd1sCyGmCVPXsS2filLWh7+kyXb2PaOLgm0wlXLwhjgg+qFyKIZ86kum6AMZ
 PRCQ==
X-Gm-Message-State: AOAM530oBy0C0Uq5+NlNEEGgOVJN2wqkWFL9yHdAKaZaVjvCpVSmCB5z
 9ttSUX43jJXwUROZvH76oNFRGv+QhDQ=
X-Google-Smtp-Source: ABdhPJw/pujxhzX2X0mZW7tV5xUrAnDQleqBIoLZUoOzzpeF9WvxtB6+DWIyq1YD6GSNKGgW5UpOag==
X-Received: by 2002:a5d:4d91:: with SMTP id b17mr1255140wru.214.1640159276927; 
 Tue, 21 Dec 2021 23:47:56 -0800 (PST)
Received: from [192.168.178.21] (p57b0bff8.dip0.t-ipconnect.de.
 [87.176.191.248])
 by smtp.gmail.com with ESMTPSA id p18sm7389788wmq.0.2021.12.21.23.47.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Dec 2021 23:47:56 -0800 (PST)
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 daniel@ffwll.ch, intel-gfx@lists.freedesktop.org
References: <20211221140713.367218-1-christian.koenig@amd.com>
 <a78c405c05b7e2f2c0536c8d31a4ca1d586ba4c9.camel@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <501085a8-91e1-8d51-3046-339014ed94df@gmail.com>
Date: Wed, 22 Dec 2021 08:47:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <a78c405c05b7e2f2c0536c8d31a4ca1d586ba4c9.camel@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-Mailman-Approved-At: Mon, 10 Jan 2022 13:24:14 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: remove questionable fence
 optimization during copy
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

Am 21.12.21 um 16:47 schrieb Thomas Hellström:
> Hi, Christian,
>
> On Tue, 2021-12-21 at 15:07 +0100, Christian König wrote:
>> First of all as discussed multiple times now kernel copies *must*
>> always wait
>> for all fences in a BO before actually doing the copy. This is
>> mandatory.
> This patch looks ok to me.
>
> Regarding the discussion I was just awaiting  Daniel's reply from
> yesterday:
>
> https://lists.freedesktop.org/archives/intel-gfx/2021-December/285717.html
>
> since his earlier reply
>
> https://lists.freedesktop.org/archives/intel-gfx/2021-December/285717.html
>
> contradicted your previous reply
>
> https://lists.freedesktop.org/archives/intel-gfx/2021-December/284467.html
>
> That confirmed all writes had to add an exclusive fence, and confirmed
> that starting the blit early was ok.
>
> So I was left a bit confused as to what the rules really were.
>
> So now if I understand both of you correctly, writers that want to opt
> out of implicit syncing do *not* need to add an exclusive fence. Is
> that correct?

Yes, that's a good summary of the problem.

>> Additional to that drop the handling when there can't be a shared
>> slot
>> allocated on the source BO and just properly return an error code.
>> Otherwise
>> this code path would only be tested under out of memory conditions.
> Good point.
>
>> Signed-off-by: Christian König <christian.koenig@amd.com>
> Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>
> Ok if I add this to drm-intel-gt-next?

Please go ahead.

Thanks,
Christian.

>
> /Thomas
>
>

