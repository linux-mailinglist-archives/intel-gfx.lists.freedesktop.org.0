Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 344712476D1
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Aug 2020 21:44:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 061E689ECD;
	Mon, 17 Aug 2020 19:44:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com
 [IPv6:2607:f8b0:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 287A689EEB
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Aug 2020 19:44:39 +0000 (UTC)
Received: by mail-pg1-x541.google.com with SMTP id i10so3064555pgk.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Aug 2020 12:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=RbvZkl+VFld3/SGn1wsxs528WtxH0u9kRcCVuGkaSCQ=;
 b=eDQAepLdsvf97NBV5qq+WRJIVRJOwcaBUEQzU1Umr707qRYx4QRlzqc9mvYICR5qcE
 Z80/4jpH1yQKaDx3y9tFLp0rKDCe3FRG43PteBr3FE3YUZWfrJNvo2A07Qed+3UcCsN9
 s5CQ7VZkr+RU13eLsg7JqtGvKfQe5/QbQEDhtIQ/fQRAevUnbKDsU8sT+8Oir7osRYfi
 OOsn0xCbEKjXVC3GhIKiF3HeFg0qdLk9pHusk8bhReZ06DWjOPvxxBuB+mi4tP7KMeob
 tjizXIrZys9cTA8SqeNNSyIdKevoj4mE09Mdo+ZLYql+H9fjqeZUU2UTeTozMQghU4RV
 02oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RbvZkl+VFld3/SGn1wsxs528WtxH0u9kRcCVuGkaSCQ=;
 b=UgdF5kv8ZKDliRg8LWCd3yz5BPHIju6IlxLivsUVCOLb5TBT0fvieJO91TwvNnFBKa
 zZwTfzH/KKPswhmBmE2sy7cZ2Lc+g5fw3ck3jBv0D4anvH4jI0K7tFa0g7dd3vnanmDu
 27UKhaBDlIlCg2XhBgeqS8SVE4GLDepaYNE7QSxPbyQ1Wvpv33iw8S6Ix6ejftSAgB/K
 IvFVsyHojT+Q7EEkfpuA7Ac2jvV00dUYHTBL5NHDBYzzgjQEPiLTUQaDvhYmDal/rOci
 hBuDJ2GIcYPN2ruL+VEn8+FyPzHtN055DC2qd3pgBbURnEJp1z/WgOZ+tBIISNFXV2SW
 1mPA==
X-Gm-Message-State: AOAM532EcyKEYHNRf6p1YdrNwgaLAfjoq0kgmQR9T+31J2PlKCaLUtp8
 uWiB9DGlsVgjPoatf8EFw9V8wA==
X-Google-Smtp-Source: ABdhPJzFEoQnnFd028Ohjr70q+LK0HAhTgnBlIVjwMDee7dOwAHF3XJdqTZIG2jx09EV04eBp8JK3g==
X-Received: by 2002:aa7:9833:: with SMTP id q19mr5334525pfl.240.1597693478569; 
 Mon, 17 Aug 2020 12:44:38 -0700 (PDT)
Received: from ?IPv6:2605:e000:100e:8c61:bd62:5cef:d7f8:5bff?
 ([2605:e000:100e:8c61:bd62:5cef:d7f8:5bff])
 by smtp.gmail.com with ESMTPSA id y128sm21118788pfy.74.2020.08.17.12.44.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Aug 2020 12:44:37 -0700 (PDT)
To: Kees Cook <keescook@chromium.org>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com>
 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
Date: Mon, 17 Aug 2020 12:44:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <202008171228.29E6B3BB@keescook>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] block: convert tasklets to use new
 tasklet_setup() API
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
Cc: ulf.hansson@linaro.org, linux-atm-general@lists.sourceforge.net,
 manohar.vanga@gmail.com, airlied@linux.ie, Allen Pais <allen.lkml@gmail.com>,
 linux-hyperv@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, James.Bottomley@HansenPartnership.com,
 kys@microsoft.com, anton.ivanov@cambridgegreys.com, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
 jassisinghbrar@gmail.com, 3chas3@gmail.com, intel-gfx@lists.freedesktop.org,
 kuba@kernel.org, mporter@kernel.crashing.org, jdike@addtoit.com,
 oakad@yahoo.com, s.hauer@pengutronix.de, linux-input@vger.kernel.org,
 linux-um@lists.infradead.org, linux-block@vger.kernel.org, broonie@kernel.org,
 openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, martyn@welchs.me.uk, dmitry.torokhov@gmail.com,
 linux-mmc@vger.kernel.org, sre@kernel.org, linux-spi@vger.kernel.org,
 alex.bou9@gmail.com, Allen Pais <allen.cryptic@gmail.com>,
 stefanr@s5r6.in-berlin.de, linux-ntb@googlegroups.com,
 Romain Perier <romain.perier@gmail.com>, shawnguo@kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 8/17/20 12:29 PM, Kees Cook wrote:
> On Mon, Aug 17, 2020 at 06:56:47AM -0700, Jens Axboe wrote:
>> On 8/17/20 2:15 AM, Allen Pais wrote:
>>> From: Allen Pais <allen.lkml@gmail.com>
>>>
>>> In preparation for unconditionally passing the
>>> struct tasklet_struct pointer to all tasklet
>>> callbacks, switch to using the new tasklet_setup()
>>> and from_tasklet() to pass the tasklet pointer explicitly.
>>
>> Who came up with the idea to add a macro 'from_tasklet' that is just
>> container_of? container_of in the code would be _much_ more readable,
>> and not leave anyone guessing wtf from_tasklet is doing.
>>
>> I'd fix that up now before everything else goes in...
> 
> As I mentioned in the other thread, I think this makes things much more
> readable. It's the same thing that the timer_struct conversion did
> (added a container_of wrapper) to avoid the ever-repeating use of
> typeof(), long lines, etc.

But then it should use a generic name, instead of each sub-system using
some random name that makes people look up exactly what it does. I'm not
huge fan of the container_of() redundancy, but adding private variants
of this doesn't seem like the best way forward. Let's have a generic
helper that does this, and use it everywhere.

-- 
Jens Axboe

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
