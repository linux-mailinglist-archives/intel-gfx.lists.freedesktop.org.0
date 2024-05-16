Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2188C7922
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 17:17:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A142110E16D;
	Thu, 16 May 2024 15:16:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="LetnUTAp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F17310E16D
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 15:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1715872613;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4iOgbS6qeObzrg8GE2s02mcHzXvs1fEJ62WhOsFVoik=;
 b=LetnUTApS9rOMinRA9PPN1FMqHsQVFOK3UQV1W/gtEN1pacN5tMikYZGHdbDvkpCOTCvm/
 z5WcrdBvVNiUaf1wKWNWw4mg/Uf8qzlmCLr9lHb6NCUgdUFYdvpqX+jj0JGDm2Dul4sAbs
 wKOeBW/oYzi9OQAp9BmAyy4+7D5+laQ=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-588-zKUaOJkXOdSLHcx6CiXoDA-1; Thu, 16 May 2024 11:16:51 -0400
X-MC-Unique: zKUaOJkXOdSLHcx6CiXoDA-1
Received: by mail-lj1-f199.google.com with SMTP id
 38308e7fff4ca-2e2c59a053cso61258211fa.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 08:16:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715872610; x=1716477410;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=4iOgbS6qeObzrg8GE2s02mcHzXvs1fEJ62WhOsFVoik=;
 b=GHAc3x+zPmSnKCq3T8jz9BJ2mrqcm8/kNPGAfART9223K8vZwJ/fx898h+JUg+qcHP
 mNNvOXPCW6tVkSvu07VFFaAgQV5aavzTq0BZqLGb25BSIcsZ1VaJlnMiSHez1POVEPQZ
 Mkiye56fPE24ZFHH2wDgYbpwSIAlqgDLGzBRG3KPA6Csw6rrmF7luUCGdEmjcEjVEuFh
 vrGcgaW04od9LGN6dfrzeLUEZTvfZGsKfoLAdZzDiFbuoqsw+zsciBquM0Nd4Ia3G77T
 uxNZW6MkjGNF8j0mFJSwtC1sl3RG07S61ZuZxx6gW09gwzFCJqkpTb1j9L+ODbEuTrZG
 H5ww==
X-Forwarded-Encrypted: i=1;
 AJvYcCVDpWwUi5lPX1e6PNM3ysCK39zn1B/sa+GnMCwuRZCzGxzfFOq9TBVDaYyOMA056HBHTq5/Hw6Ix57Tnpot2VE9cd932xsgaGs3AHpjSJrB
X-Gm-Message-State: AOJu0YytL/q7uqswa+muaNmZWy0REmqBatAkIHKqyBLqAmZvcJgptKSq
 bE0hIYZoAD4hRqMWOGq3k2Bx1K82HLXREb7Z+9qi7fl2MgUSjfWYPuhymEEq5fi2mUkmFCGx5hp
 qY1+GYS7kxlVkQfYqsWwdj0zEQofuDCGSdMQ+QdfHMFSDu4BBB5GvXGyv+X8a5oqEGQ==
X-Received: by 2002:a05:6512:444:b0:51f:3e0c:ace3 with SMTP id
 2adb3069b0e04-5220fd7c6bdmr16656963e87.16.1715872609954; 
 Thu, 16 May 2024 08:16:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGn+FVB1tK34ViV8+agUiDomeCaRnMnSEIgSm4pt/ya2IBcjeS4X3/vaKP4GVA4MVD2ub1n+A==
X-Received: by 2002:a05:6512:444:b0:51f:3e0c:ace3 with SMTP id
 2adb3069b0e04-5220fd7c6bdmr16656944e87.16.1715872609565; 
 Thu, 16 May 2024 08:16:49 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a5a60eabd3csm596814866b.108.2024.05.16.08.16.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 May 2024 08:16:49 -0700 (PDT)
Message-ID: <b9a5068c-8760-4f92-8a1b-bd276532109d@redhat.com>
Date: Thu, 16 May 2024 17:16:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ACPI: video: Fix name collision with architecture's
 video.o
To: Thomas Zimmermann <tzimmermann@suse.de>,
 "Rafael J. Wysocki" <rafael@kernel.org>
Cc: lenb@kernel.org, arnd@arndb.de, chaitanya.kumar.borah@intel.com,
 suresh.kumar.kurmi@intel.com, jani.saarinen@intel.com,
 linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-arch@vger.kernel.org,
 linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org
References: <20240516124317.710-1-tzimmermann@suse.de>
 <CAJZ5v0gw620SLfxM66FfVeWMTN=dSZZtpH-=mFT_0HsumT3SsA@mail.gmail.com>
 <1850b44d-e468-44db-82b7-f57e77fe49ba@redhat.com>
 <82731e7d-e34f-46c4-8f54-c5d7d3d60b5a@suse.de>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <82731e7d-e34f-46c4-8f54-c5d7d3d60b5a@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

On 5/16/24 5:11 PM, Thomas Zimmermann wrote:
> Hi
> 
> Am 16.05.24 um 17:03 schrieb Hans de Goede:
>> Hi,
>>
>> On 5/16/24 3:04 PM, Rafael J. Wysocki wrote:
>>> CC Hans who has been doing the majority of the ACPI video work.
>>>
>>> On Thu, May 16, 2024 at 2:43 PM Thomas Zimmermann <tzimmermann@suse.de> wrote:
>>>> Commit 2fd001cd3600 ("arch: Rename fbdev header and source files")
>>>> renames the video source files under arch/ such that they does not
>>>> refer to fbdev any longer. The new files named video.o conflict with
>>>> ACPI's video.ko module.
>>> And surely nobody knew or was unable to check upfront that there was a
>>> video.ko already in the kernel.
>> Sorry, but nack for this change. I very deliberately kept the module-name
>> as video when renaming the actual .c file from video.c to acpi_video.c
>> because many people pass drivers/video/acpi_video.c module arguments
>> on the kernel commandline using video.param=val .
>>
>> Try e.g. doing a duckduckgo search for 1 off:
>>
>> "video.only_lcd"
>> "video.allow_duplicates"
>> "video.brightness_switch_enabled"
> 
> Ok, that makes sense. I'll rename the other files.

Great, thank you.

Regards,

Hans


