Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F70397C5CE
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 10:27:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F26F810E2BB;
	Thu, 19 Sep 2024 08:27:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="YvwJvwUs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A671E10E6A2
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2024 08:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1726734457;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=lArsEJUM9CVWI7GJs9U6NCil92cWLLEKF6YZxDN2YT0=;
 b=YvwJvwUspxT2qCy3dB1yESS6IVJJpz4dXrrVkaQZxKpZFBVJuwVVqZSVLqlduguPAeQ/9C
 XqTzcckSiKOTn52cDZ+YcKuEWmYK/FuGOlqeQ8u7wcinqDLgoq+OwHAiRQsgnVUPhs+Gd8
 N9Ju3tzodkZ4I4Cd5SIuGs8rR+DuJBw=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-230-HtKrJI6DNWGbTjdqsLbDrQ-1; Thu, 19 Sep 2024 04:27:36 -0400
X-MC-Unique: HtKrJI6DNWGbTjdqsLbDrQ-1
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-374c90d24e3so399237f8f.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2024 01:27:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726734455; x=1727339255;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=lArsEJUM9CVWI7GJs9U6NCil92cWLLEKF6YZxDN2YT0=;
 b=exbO7NjFoaf7pyBNUOJeo3Y6UH1hL4b95JCAr3CSp+wa55PnPN3oE0+h3FyK+GyYeY
 +MqhUveIBREOzkwaQoc2tznSZLG3qEWZIwMEvPQurTFAPdM4FyN5f0C6IH41fXigpkko
 DSYjSr7zHblnASmB3nYosE2YAwaAYsWQBnZSa1A5r+RrtvbmoUosEk1W7t/WgnvO6gRV
 w5apC34iWkxPoctxt+gRdqwfqG0M17EhKE7IZ6f/rku0j6HDvopPppZV/VzYAh1vDInN
 5SGNu6dLmQkfpLgdKJRqkbxKiLi+OwyQVG+PGBFUoVBxxoFN6G9W5UbKUO7worC8gZ+l
 wr9g==
X-Forwarded-Encrypted: i=1;
 AJvYcCU9aJr+KpYj585gzLCpoa1YL9dhpOU11Az1vxxiYD01LoarEGqE0D7pbL5I3M2LAKWcUD4Ftfv0kTs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxpgv5aAZn4UvyV+9hjkZcHizxvmgYIC+ZhbvvGRNRGr0rJHCge
 GHMEEsPb39R+KU5TJ6PzMYnx6eNmLFXwSZWvX9bYgHGoUrc1ttCxcWXHE3s2+xoKqzTQJSJaEA2
 ZGsKNUXmuplsp+KODVPlDU5YgdnVEfKEzepGXEwrZXeZsSEoUkKqhojYB5i54vaxmxw==
X-Received: by 2002:a5d:6348:0:b0:374:c6b8:50b5 with SMTP id
 ffacd0b85a97d-378d61e26bemr15418157f8f.17.1726734454758; 
 Thu, 19 Sep 2024 01:27:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEmvESs/4+ZH+exTPNQkONx+oj5rCX6nhIeWJM9Ry/Lu9oxFoPa8CRU7XyqEcFx+oZrT/mAWw==
X-Received: by 2002:a5d:6348:0:b0:374:c6b8:50b5 with SMTP id
 ffacd0b85a97d-378d61e26bemr15418133f8f.17.1726734454291; 
 Thu, 19 Sep 2024 01:27:34 -0700 (PDT)
Received: from localhost ([90.167.95.6]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-378e780578csm14623798f8f.109.2024.09.19.01.27.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2024 01:27:33 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Tzung-Bi Shih <tzungbi@kernel.org>
Cc: linux-kernel@vger.kernel.org, Brian Norris <briannorris@chromium.org>,
 dri-devel@lists.freedesktop.org, Borislav Petkov <bp@alien8.de>, Julius
 Werner <jwerner@chromium.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 chrome-platform@lists.linux.dev, intel-gfx@lists.freedesktop.org, Hugues
 Bruant <hugues.bruant@gmail.com>, Alex Deucher
 <alexander.deucher@amd.com>, Dan Carpenter <dan.carpenter@linaro.org>,
 Helge Deller <deller@gmx.de>, Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v4 0/2] firmware: Avoid coreboot and sysfb to register a
 pdev for same framebuffer
In-Reply-To: <ZuvVf5XRMqjD8G9T@google.com>
References: <20240916110040.1688511-1-javierm@redhat.com>
 <ZuvVf5XRMqjD8G9T@google.com>
Date: Thu, 19 Sep 2024 10:27:32 +0200
Message-ID: <878qvojbez.fsf@minerva.mail-host-address-is-not-set>
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

Tzung-Bi Shih <tzungbi@kernel.org> writes:

Hello Tzung-Bi,

> On Mon, Sep 16, 2024 at 01:00:24PM +0200, Javier Martinez Canillas wrote:
>> The patches have only been compiled tested because I don't have access to
>> a coreboot machine. Please let me know if you plan to merge both patches
>> through the chrome-platforms tree or if you prefer to get merged through
>> the drm-misc tree.
>> 
>> [...]
>> Javier Martinez Canillas (2):
>>   firmware: sysfb: Add a sysfb_handles_screen_info() helper function
>>   firmware: coreboot: Don't register a pdev if screen_info data is
>>     present
>
> I'll queue both patches through the chrome-platform tree for v6.13 if there is
> no objections.
>

That works for me. Thanks a lot.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

