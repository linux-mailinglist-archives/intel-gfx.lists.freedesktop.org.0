Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 270608C78E1
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 17:03:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD50910ED55;
	Thu, 16 May 2024 15:03:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="Fh502zbu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2BD310ED55
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 15:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1715871813;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nKBUSAzkxF9Zs4eRSjZEOq3e8C2Kq3MU7w45eIpOnW4=;
 b=Fh502zbu9QEJe+NchlGN7UpSOKwU0INy1sAxbSpVIfajr1drKCTw2JP1R/qPHoHKp88ai6
 /ve2FWtQTWrFfSeTxhbQT7rq1IoU8PRS1EVILGz/SIgEFZeufUKYXjV1WgAkCshF1bIjZc
 VEgBHFyw5H0UBxyenG5G7LTM//6DLao=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-523-WcjvXOZfPeG-l-s9OAnS_g-1; Thu, 16 May 2024 11:03:28 -0400
X-MC-Unique: WcjvXOZfPeG-l-s9OAnS_g-1
Received: by mail-ed1-f69.google.com with SMTP id
 4fb4d7f45d1cf-572b993d8ffso2288480a12.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 08:03:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715871808; x=1716476608;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=nKBUSAzkxF9Zs4eRSjZEOq3e8C2Kq3MU7w45eIpOnW4=;
 b=VOA1p3HleSULoH1eilTxu4gtEvszXoygPCXJwsjjysSvve4uTbhTUwpbl8Qwe14IXd
 Uixfq1EdN7BnhsCU51F9kqUTM+k0kHrT3viU0+QEfVvgQ0WTJlOy1OdHYDOOduzGMsGm
 1FGwyYopxz1tirWjkeaNiknXnzfJ/Yl0Ju48zJZ2MVChxDfpVGTcZS3LxP0JlIu7oVuY
 2Ux40n8hkyqmp0+URglByv6arrFjB9IngoI1d5NBFNgyEOniO1p2raJbxbeG7UQHlbEr
 h1aULR7BkJCZ400Y94bhYqQB/z4j3E3LU9660V9noKh88Z3njQ5ETHLC6XPPPzA/mv17
 iA/g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVJO/wX+0CwKd33Pe0i9ISkU7e0YIddNsW5JfHROcX0d84eVIhKqzIZ64ZcBlyAPXDLBbko0ZO5uP1B4IITjSHTnu4EqF37s7agGdTdWCFs
X-Gm-Message-State: AOJu0YzQvRpRZCxVR0Xt0SzpJK7Bfj8CFJqHLDweJQ3ulw+9Z0jVerlH
 +O0WH07Vtm9kuELJN9PwPoBz5iIJ2jqp1RuTB/H/oWPYVJC4EDyBAU9Xo7oBhD6MKwoZ27EfuX+
 ot0mlM735QpS1Yjhb1jcaO3mHAtjpRdCl/Z3DjCaYoqnuDIFixt/FfI28QW5OzaD+Qg==
X-Received: by 2002:a50:d583:0:b0:572:637b:c7e1 with SMTP id
 4fb4d7f45d1cf-5734d5f48b1mr19637068a12.21.1715871807842; 
 Thu, 16 May 2024 08:03:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGgvrzhNOwipq4x4p3Hw4REcPng/U01BJKv87Sp+Z20QuaHZ/2tw+/vdsLUK4lIsDrkAAHqdA==
X-Received: by 2002:a50:d583:0:b0:572:637b:c7e1 with SMTP id
 4fb4d7f45d1cf-5734d5f48b1mr19637027a12.21.1715871807208; 
 Thu, 16 May 2024 08:03:27 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-574f6b8b9d7sm2749663a12.82.2024.05.16.08.03.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 May 2024 08:03:26 -0700 (PDT)
Message-ID: <1850b44d-e468-44db-82b7-f57e77fe49ba@redhat.com>
Date: Thu, 16 May 2024 17:03:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ACPI: video: Fix name collision with architecture's
 video.o
To: "Rafael J. Wysocki" <rafael@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>
Cc: lenb@kernel.org, arnd@arndb.de, chaitanya.kumar.borah@intel.com,
 suresh.kumar.kurmi@intel.com, jani.saarinen@intel.com,
 linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-arch@vger.kernel.org,
 linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org
References: <20240516124317.710-1-tzimmermann@suse.de>
 <CAJZ5v0gw620SLfxM66FfVeWMTN=dSZZtpH-=mFT_0HsumT3SsA@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <CAJZ5v0gw620SLfxM66FfVeWMTN=dSZZtpH-=mFT_0HsumT3SsA@mail.gmail.com>
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

On 5/16/24 3:04 PM, Rafael J. Wysocki wrote:
> CC Hans who has been doing the majority of the ACPI video work.
> 
> On Thu, May 16, 2024 at 2:43 PM Thomas Zimmermann <tzimmermann@suse.de> wrote:
>>
>> Commit 2fd001cd3600 ("arch: Rename fbdev header and source files")
>> renames the video source files under arch/ such that they does not
>> refer to fbdev any longer. The new files named video.o conflict with
>> ACPI's video.ko module.
> 
> And surely nobody knew or was unable to check upfront that there was a
> video.ko already in the kernel.

Sorry, but nack for this change. I very deliberately kept the module-name
as video when renaming the actual .c file from video.c to acpi_video.c
because many people pass drivers/video/acpi_video.c module arguments
on the kernel commandline using video.param=val .

Try e.g. doing a duckduckgo search for 1 off:

"video.only_lcd"
"video.allow_duplicates"
"video.brightness_switch_enabled"

And you will find a lot of hits. The last one is even documented as
being "video.brightness_switch_enabled" in the main kernel-parameters.txt
as well as separately:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/admin-guide/kernel-parameters.txt#n39
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/admin-guide/kernel-parameters.txt#n7152
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/firmware-guide/acpi/video_extension.rst#n118

https://wiki.archlinux.org/title/Lenovo_ThinkPad_X1_Carbon#Brightness_control

If you rename this module then peoples config will break for
a whole lot of users.

So lets not do that and lets rename the new module which is causing
the conflict in the first place instead.

Regards,

Hans

