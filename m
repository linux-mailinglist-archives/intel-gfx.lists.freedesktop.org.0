Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 767D6977919
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 09:05:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12FFB10EC8F;
	Fri, 13 Sep 2024 07:05:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="i1ESWYNT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58E9C10E084
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 07:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1726211155;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=JUxInk0S7cxq8bV5NiblehkhBP73tYJxMaYlFtxjxPg=;
 b=i1ESWYNTabGVFhmtlWyCjKkUPxMciB0SK5h0uJKHhfYLSatnq2fK02mPXGjtqsUMlAcS1/
 6CnlcGRVVw2Evyen1B4+953TTzuzXjyJUIeS+OsTZt9PFaOJ45hx+TYVSVKfO36lkrQywC
 G6chNd+LxAwMJArrutQlNO4w5MBuppg=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-136-XQMYMWBkNhyfdzcrevW6AA-1; Fri, 13 Sep 2024 03:05:54 -0400
X-MC-Unique: XQMYMWBkNhyfdzcrevW6AA-1
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-42cb5b01c20so4146455e9.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 00:05:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726211153; x=1726815953;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=JUxInk0S7cxq8bV5NiblehkhBP73tYJxMaYlFtxjxPg=;
 b=DhnZJz8JUm4lG9LCcANyLm5GOP075iQlnS3w7ijl89QFkpIEZY+eTpO2vfvB2aERC6
 pTNHtxzM0LRGtmmy7EUIYGMKsPAi0/q21AalFNZIIFl1w13TtXPiUG+fyC/mLvRh6dSK
 OdVGN8eD7gUuFC7/6cI392GzXgaeyenQQtAN3k+oB7ELIIRJfjA2LFa75Ln1rQEWBSxm
 qJE98tzhaHI1TmAWxV90EPvYfr24A6o9YN9v35I1MaqhPxbdP5oQK6SFAQnCj6yVUoSf
 8eQSlcHkaBJzlTjkXbvlptzEMf3Z91nnBYaq3dOZQJnRgNhUZtw+OCftEGWvKn4/vx7d
 mYyw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWuZ2fZYuE5FGl3Ouj9E7JMGTqMJkZ0OPiyktjvq8ooS63+5iEGHMVFJQWr+Mop2IC//lpHnu3G9rQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwNQfdzhLaOQb3RWFmzxDAPXPIy7UG3GdDMfJfZrKSCj+hDfQBP
 fkbBKyJ0QJ8qIGdTiM83pjjpHMo2htnGoQ5Gj88lvtS9RtnBFvcfAPrkOl2QISZsRHC/DSRKzUX
 U6g1WKZRxIa71TAgWuUud1Ko9OX6NYPbcu2yk6M8xg+LOHB0dkgyH2E44EV1ZJolhLA==
X-Received: by 2002:a05:600c:3490:b0:42c:cd88:d0f7 with SMTP id
 5b1f17b1804b1-42d9072211bmr12409435e9.10.1726211152891; 
 Fri, 13 Sep 2024 00:05:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7ixvDig6mKPxUj06bVVHzX7pqCmSzpaF/KDzUc+5ujBIqwcPkJ/QygFJDl0Ehw9m+hB1r+A==
X-Received: by 2002:a05:600c:3490:b0:42c:cd88:d0f7 with SMTP id
 5b1f17b1804b1-42d9072211bmr12409095e9.10.1726211152304; 
 Fri, 13 Sep 2024 00:05:52 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-378956d37a1sm15945167f8f.77.2024.09.13.00.05.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2024 00:05:51 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, Julius Werner
 <jwerner@chromium.org>
Cc: Brian Norris <briannorris@chromium.org>, Borislav Petkov <bp@alien8.de>,
 Hugues Bruant <hugues.bruant@gmail.com>, stable@vger.kernel.org,
 regressions@lists.linux.dev, linux-kernel@vger.kernel.org, Fenghua Yu
 <fenghua.yu@intel.com>, Reinette Chatre <reinette.chatre@intel.com>, Tony
 Luck <tony.luck@intel.com>, Tzung-Bi Shih <tzungbi@kernel.org>,
 chrome-platform@lists.linux.dev, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Subject: Re: [NOT A REGRESSION] firmware: framebuffer-coreboot: duplicate
 device name "simple-framebuffer.0"
In-Reply-To: <6bf656e0-e0b6-4b97-b7a2-ff0bdc86b098@suse.de>
References: <CALvjV29jozswRtmYxDur2TuEQ=1JSDrM+uWVHmghW3hG5Y9F+w@mail.gmail.com>
 <20240909080200.GAZt6reI9c98c9S_Xc@fat_crate.local>
 <ZuCGkjoxKxpnhEh6@google.com>
 <87jzfhayul.fsf@minerva.mail-host-address-is-not-set>
 <CAODwPW8P+jcF0erUph5XyWoyQgLFbZWxEM6Ygi_LFCCTLmH89Q@mail.gmail.com>
 <87mskczv9l.fsf@minerva.mail-host-address-is-not-set>
 <6bf656e0-e0b6-4b97-b7a2-ff0bdc86b098@suse.de>
Date: Fri, 13 Sep 2024 09:05:50 +0200
Message-ID: <87jzfgyqwh.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
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

Thomas Zimmermann <tzimmermann@suse.de> writes:

Hello Thomas,

> Hi Javier,
>
> thanks for the patch.
>

Thanks for your feedback.

> Am 12.09.24 um 18:33 schrieb Javier Martinez Canillas:
>> Julius Werner <jwerner@chromium.org> writes:

[...]

>> ---
>>   drivers/firmware/google/framebuffer-coreboot.c | 16 ++++++++++++++++
>>   1 file changed, 16 insertions(+)
>>
>> diff --git a/drivers/firmware/google/framebuffer-coreboot.c b/drivers/firmware/google/framebuffer-coreboot.c
>> index daadd71d8ddd..4e50da17cd7e 100644
>> --- a/drivers/firmware/google/framebuffer-coreboot.c
>> +++ b/drivers/firmware/google/framebuffer-coreboot.c
>> @@ -15,6 +15,7 @@
>>   #include <linux/module.h>
>>   #include <linux/platform_data/simplefb.h>
>>   #include <linux/platform_device.h>
>> +#include <linux/screen_info.h>
>>   
>>   #include "coreboot_table.h"
>>   
>> @@ -27,6 +28,7 @@ static int framebuffer_probe(struct coreboot_device *dev)
>>   	int i;
>>   	u32 length;
>>   	struct lb_framebuffer *fb = &dev->framebuffer;
>> +	struct screen_info *si = &screen_info;
>
> Probably 'const'.
>

Ok.

>>   	struct platform_device *pdev;
>>   	struct resource res;
>>   	struct simplefb_platform_data pdata = {
>> @@ -36,6 +38,20 @@ static int framebuffer_probe(struct coreboot_device *dev)
>>   		.format = NULL,
>>   	};
>>   
>> +	/*
>> +	 * If the global screen_info data has been filled, the Generic
>> +	 * System Framebuffers (sysfb) will already register a platform
>> +	 * and pass the screen_info as platform_data to a driver that
>> +	 * could scan-out using the system provided framebuffer.
>> +	 *
>> +	 * On Coreboot systems, the advertise LB_TAG_FRAMEBUFFER entry
>> +	 * in the Coreboot table should only be used if the payload did
>> +	 * not set video mode info and passed it to the Linux kernel.
>> +	 */
>> +	if (si->orig_video_isVGA == VIDEO_TYPE_VLFB ||
>> +            si->orig_video_isVGA == VIDEO_TYPE_EFI)
>
> Rather call screen_info_video_type(si) [1] to get the type. If it

Indeed. I missed that helper, I'll change it.

> returns 0, the screen_info is unset and the corebios code can handle the 
> framebuffer. In any other case, the framebuffer went through a 
> bootloader, which might have modified it. This also handles awkward 
> cases, such as if the bootloader programs a VGA text mode.
>
> [1] 
> https://elixir.bootlin.com/linux/v6.10.10/source/include/linux/screen_info.h#L92
>
> With these changes:
>
> Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
>

Thanks. I'll wait for others in this thread to comment and if all agree
with the solution, I'll post a proper patch (addressing your comments).

> Best regards
> Thomas
>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

