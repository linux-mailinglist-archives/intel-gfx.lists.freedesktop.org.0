Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 094315FE356
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 22:33:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14F9510E37F;
	Thu, 13 Oct 2022 20:33:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEE4E10E37F
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Oct 2022 20:33:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1665693209;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=4mKieH5GwNMnvwgRs+kFclyzofty9rpxeY92yAwuAjA=;
 b=MDJMVVjkE7IiuoVRTKlXo1MYUueEuMKx+8Js5oZIyI/cHcqhSV+Q4ElLyI/AKCZflIjJ5u
 +5BEVmQi2Um5J3qj7gf9N6v6WrIDYSLNGkOLlSBkGNj9Ovwgra4e4t5BrVzYtvsEMZ0Qve
 Vbysa37bQyeAfFMZ1bdwm8A33FTOvBg=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-186-6mAS15gcP3mPdAa5xjuwGg-1; Thu, 13 Oct 2022 16:33:28 -0400
X-MC-Unique: 6mAS15gcP3mPdAa5xjuwGg-1
Received: by mail-ed1-f69.google.com with SMTP id
 h13-20020a056402280d00b0045cb282161cso2230764ede.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Oct 2022 13:33:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:subject:from:to:content-language
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=4mKieH5GwNMnvwgRs+kFclyzofty9rpxeY92yAwuAjA=;
 b=5/1ipolcYGKzwuM3bB46whxomXP7s/Hg+4ui7Xx8+wJBJXYcndt0DMA+LfTPkddmKG
 TtXXffkb5A88Z2BFk71KBydeIQQTlqq/YW5Hi6pX3jW0ViywSLcrkvBiVl0dK14BVBfW
 WSaQUnNm13e68fxSZgRRbkVQFiuKqPcHGdCY4eFkoKf4x6OQ0iSV/wmaSLEtuCjSkpao
 mRmE1kN6xn9GSa8OIfgHvanJhkZ4RdgAWWSJq8TAZ/q4Z0LYrtC7JyFaxHpEmHAzE+N0
 hJIF9e1xBEtKkoo5eDOXGvoOsa821SyuhLt7JU2J7gMNGWRBxwKDxTb4bkG6pLlqppif
 3P+g==
X-Gm-Message-State: ACrzQf3wBCZaJ2fQ2xsHXbEwYaobdSChsVD9bmuq3DrGTS5xFcROYQey
 0wmNdMHHTQMqnoSr3JvEOwrm3EuhVMOKzdaWy3h2+5axe9Rm7E290xK6QBtI/2bhZ71cQadS5xb
 uu7XXpcn7BdS18LKB4wjz2b/fJ4HC+vBzhNTWWQ3hy2IO0rVe6wbRUYiKl5ntCG+J46TPeVefcX
 OppAXV
X-Received: by 2002:a17:907:2da7:b0:78e:4ea:dbf7 with SMTP id
 gt39-20020a1709072da700b0078e04eadbf7mr1103265ejc.616.1665693205616; 
 Thu, 13 Oct 2022 13:33:25 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM5n6kqWrrQYhfEYMmrV7QHRbWoJZRfPDHPTK4rYETvlI2sUdapgVjFGZHJ32EiRj5vfkkn9qw==
X-Received: by 2002:a17:907:2da7:b0:78e:4ea:dbf7 with SMTP id
 gt39-20020a1709072da700b0078e04eadbf7mr1103249ejc.616.1665693205330; 
 Thu, 13 Oct 2022 13:33:25 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81?
 (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
 by smtp.gmail.com with ESMTPSA id
 ky23-20020a170907779700b0078a86e013c4sm396179ejc.61.2022.10.13.13.33.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 13 Oct 2022 13:33:24 -0700 (PDT)
Message-ID: <355dde1c-91e3-13b5-c8e8-75c9b9779b4f@redhat.com>
Date: Thu, 13 Oct 2022 22:33:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Thorsten Leemhuis (regressions address)" <regressions@leemhuis.info>
From: Hans de Goede <hdegoede@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [Intel-gfx] alderlake crashes (random memory corruption?) with 6.0
 i915 / ucode related
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

Hi All,

Yesterday I got a new Lenovo ThinkPad X1 yoga gen 7 laptop, since I plan
to make this my new day to day laptop I have copied over the entire
rootfs, /home, etc. from my current laptop to avoid having to tweak
everything to my liking again.

This meant I had an initramfs generated for the other laptop. Which should
be fine since both are Intel machines and the old 5.19.y initramfs-es
worked fine. But 6.0.0 crashed with what seems like random memory
corruption (list integrity checks failing) until I regenerated the initrd ...

Comparing the old vs regenerated initrds showed no relevant differences,
which made me think this is a CPU ucode issue (which is pre-fixed
to the initrd for early microcode loading).

After some tests I have the following obeservations with 6.0.0:

1. The least stable is the old initrd (so with the wrong
ucode prefixed) this crashes before ever reaching gdm.
I believe that this is caused by late microcode loading
kicking in in this case (I though that was being removed?)
and doing load microcode loading on the i7-1260P with its
mix of P + E cores seems to seriously mess things up.

2. Slightly more stable, lasting at least a few minutes
before crashing is using dis_ucode_ldr

3. Using nomodeset seems to stabilize things even with
the old initrd with the wrong microcode prefixed

4. 5.19, with an old initrd and with normal modesetting
enabled works fine, so in a way this is a 6.0.0 regression

5. Using 6.0 with the new initrd with the new microcode
seems mostly stable, although sometimes this seems to 
hang very early during boot, esp. if a previous boot
crashed and I have not run this for a long time yet.

6. After crashes it seems to be necessary to powercycle
the machine to get things back in working condition.


With 6.0 the following WARN triggers:
drivers/gpu/drm/i915/display/intel_bios.c:477:

        drm_WARN(&i915->drm, min_size == 0,
                 "Block %d min_size is zero\n", section_id);

Since nomodeset helps this might be quite relevant, in 5.19.13
this does not happen, but I'm not sure if 5.19 has this check
at all.


There is a 2022/10/07 BIOS update which includes a CPU microcode
update available from Lenovo, I have not applied this yet in case
people want to investigate this further first.

Regards,

Hans


