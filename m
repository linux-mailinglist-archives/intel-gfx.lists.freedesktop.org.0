Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 499045FFA85
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Oct 2022 16:25:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B3EB10E4D2;
	Sat, 15 Oct 2022 14:25:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDE1110E4D2
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Oct 2022 14:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1665843904;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ME5s8prwombT/Lo7EIJUE8W2dMyQx6j/AxSLPiS4UuA=;
 b=HBKmABlgO91fY1IhFsThx2WeHIF9f2KEo2n16aGO0QOB4hUd9cM859pgYliHgN8QC4SbuW
 gHGvTaPD2drNCGRlNy9bNT2tSfhM4/s67vOWJT+JVgzGL4904TdHx5w6y/6I2AWkTBW6rK
 n/cNx4SStCr+WJrfdlRXZdmPYS6BLmg=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-434-CnECha-COXWGwI89-Ztumw-1; Sat, 15 Oct 2022 10:25:03 -0400
X-MC-Unique: CnECha-COXWGwI89-Ztumw-1
Received: by mail-ed1-f70.google.com with SMTP id
 b13-20020a056402350d00b0045d0fe2004eso4304156edd.18
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Oct 2022 07:25:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:references:to:from
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ME5s8prwombT/Lo7EIJUE8W2dMyQx6j/AxSLPiS4UuA=;
 b=X0SdXcJ270KR+r99DXSj/yKIrzoLBX6Ite+ZWDdfTm+Jp+GyT3ChEZC2MW0XOLKsIx
 niWhf2RyZW1+Fd1s9VPf7kLjI/bMLtsQZF/yXx7EXwU2ldKvkdxYpxmTN82xqFtipO7e
 TSGgiCR36gkd3Nhmh0o7tN8xPI4TvufDR1VCuRZ1BAw1FlQooE0WY1/MCBQUNv0nC1/Z
 4X5RH+la1W5jw8IIcrto4Irf21ywihQDRxUZucvVhwFxrZZR16Z91gdL+PELlQyIL9+C
 hQY2jMjU36bzYsZvz9Eu1jCmqQ8ddp0eLQ39hdE/p8F6Wlr7He8yLaEUWqhCBRyt3MGs
 paZA==
X-Gm-Message-State: ACrzQf2zO8k4nSUk5YtAhtHGTgwY1mbSorqEUnao1ohl1ONRMODP11yF
 hScxtoY0VtEM9kr7lKav1JZp5aDJU2SmQGn+Yo+r7OdDjO7NN1L8ktUYRFXUZqQt3goSvW6YwmM
 tHA4IKraATOgEoHMzDG9nfn1Aaiygxm+0FOTf61QxnEkVPzKqzIcW+p0cOWn8czeGSP6HHcyMxf
 dhtc7R
X-Received: by 2002:a17:906:cc4d:b0:78d:fb86:3979 with SMTP id
 mm13-20020a170906cc4d00b0078dfb863979mr2226156ejb.421.1665843901626; 
 Sat, 15 Oct 2022 07:25:01 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM6O0AU5hfqmWbu/hk//FRl4CjyZipzMGuFT1qoXBlaOZeDAnHmq9e4UUbGYBLMQj/xleCZyHQ==
X-Received: by 2002:a17:906:cc4d:b0:78d:fb86:3979 with SMTP id
 mm13-20020a170906cc4d00b0078dfb863979mr2226143ejb.421.1665843901393; 
 Sat, 15 Oct 2022 07:25:01 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81?
 (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
 by smtp.gmail.com with ESMTPSA id
 u1-20020a1709061da100b0073bdf71995dsm3163651ejh.139.2022.10.15.07.25.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 15 Oct 2022 07:25:00 -0700 (PDT)
Message-ID: <e4f7b16e-5b6f-1b2c-5f88-fc4a129ae28f@redhat.com>
Date: Sat, 15 Oct 2022 16:25:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
From: Hans de Goede <hdegoede@redhat.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Thorsten Leemhuis (regressions address)" <regressions@leemhuis.info>
References: <355dde1c-91e3-13b5-c8e8-75c9b9779b4f@redhat.com>
In-Reply-To: <355dde1c-91e3-13b5-c8e8-75c9b9779b4f@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
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

On 10/13/22 22:33, Hans de Goede wrote:
> Hi All,
> 
> Yesterday I got a new Lenovo ThinkPad X1 yoga gen 7 laptop, since I plan
> to make this my new day to day laptop I have copied over the entire
> rootfs, /home, etc. from my current laptop to avoid having to tweak
> everything to my liking again.
> 
> This meant I had an initramfs generated for the other laptop. Which should
> be fine since both are Intel machines and the old 5.19.y initramfs-es
> worked fine. But 6.0.0 crashed with what seems like random memory
> corruption (list integrity checks failing) until I regenerated the initrd ...
> 
> Comparing the old vs regenerated initrds showed no relevant differences,
> which made me think this is a CPU ucode issue (which is pre-fixed
> to the initrd for early microcode loading).
> 
> After some tests I have the following obeservations with 6.0.0:
> 
> 1. The least stable is the old initrd (so with the wrong
> ucode prefixed) this crashes before ever reaching gdm.
> I believe that this is caused by late microcode loading
> kicking in in this case (I though that was being removed?)
> and doing load microcode loading on the i7-1260P with its
> mix of P + E cores seems to seriously mess things up.
> 
> 2. Slightly more stable, lasting at least a few minutes
> before crashing is using dis_ucode_ldr
> 
> 3. Using nomodeset seems to stabilize things even with
> the old initrd with the wrong microcode prefixed
> 
> 4. 5.19, with an old initrd and with normal modesetting
> enabled works fine, so in a way this is a 6.0.0 regression
> 
> 5. Using 6.0 with the new initrd with the new microcode
> seems mostly stable, although sometimes this seems to 
> hang very early during boot, esp. if a previous boot
> crashed and I have not run this for a long time yet.
> 
> 6. After crashes it seems to be necessary to powercycle
> the machine to get things back in working condition.
> 
> 
> With 6.0 the following WARN triggers:
> drivers/gpu/drm/i915/display/intel_bios.c:477:
> 
>         drm_WARN(&i915->drm, min_size == 0,
>                  "Block %d min_size is zero\n", section_id);
> 
> Since nomodeset helps this might be quite relevant, in 5.19.13
> this does not happen, but I'm not sure if 5.19 has this check
> at all.
> 
> 
> There is a 2022/10/07 BIOS update which includes a CPU microcode
> update available from Lenovo, I have not applied this yet in case
> people want to investigate this further first.

A quick update on this, the microcode being in the initrd or not
seems to be a bit of a red herring. Yesterday the machine crashed
twice at boot with 6.0.0 with an initrd which did correctly have
the alderlake microcode cpio archive prefixed.

Where as with 5.19 it boots correctly everytime. I will try to
make some time to git bisect this sometime next week. I expect
this is an i915 issue though since 6.0.0 with nomodeset on
the cmdline does seem to boot successfully every time.

Regards,

Hans

