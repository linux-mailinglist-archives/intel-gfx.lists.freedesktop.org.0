Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BA9976E5B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 18:03:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A2EE10E009;
	Thu, 12 Sep 2024 16:03:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="WtmoiKHh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A02010E110
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 16:03:52 +0000 (UTC)
Received: by mail-qt1-f181.google.com with SMTP id
 d75a77b69052e-4582b71df40so273741cf.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 09:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1726157031; x=1726761831;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=CrCjW0ic6Db+J3kjsTPKwgfDJbBARSVIXo7Ekp4qkxU=;
 b=WtmoiKHhWZ9/PBOMtX2YXXtphtapd5yEufcXZc9KK6hRFPZX9x1JmIXHTzB/xrCN0W
 536mJWf7aAC0oZRRB6Tb+fkLrgRkihyGCEiKnBgAXN3m+CU/Gt+bt+s/ujKJPgYVHDYU
 oSkah7QcB9KlYFrS+Qas/Qg+VNePDMLCUEZ9I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726157031; x=1726761831;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=CrCjW0ic6Db+J3kjsTPKwgfDJbBARSVIXo7Ekp4qkxU=;
 b=TT3lSsvgM9UwiNJytlMK3guHm6mS0XIqZNr6yE4yq4ITLZ6exp0x6NxOrEEkHurd7/
 2aZMB11p3i6sJLbqs+F43VDlLvWW38Lmi83nIhgrOGRqUaG76MVZA8Ldc3jUwwUg4Awe
 LHwlwQMQqNIpqWEKLn/gCSxD20BXUHINpTXDOCSHUBCpmdbrt+Gk5su1IFPAx2/E/tM1
 TmMx0wkbu07xSbj0JJfpA9FCkZYcMSdrlI+6fiIGlhPCOQtiWUBDRjW3JFyJNiqMSBBQ
 C75sIoUpO2PLUA0dTImYzQXXyksfqu9CJJ0GJAk8xcwrn2KUcnHHhnYxq5v1VIkxCS/p
 DhYA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUmR6gqfgI3dWH4iaxQuv2D/3Y0eYI2V0NvVlWLPxJzTImnUO6g5GQ24J30AkK6540jqu8GnpDuDII=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy5nMydc5UxM01oMl3vgTyum3obioj7vtS7u/SA10PiWQUyAHJp
 GdOZB0EjvhBOHmSe82avCW71LJ5hDNZt5muVWfJRKmSXQeMCTa9evK0oFF4VEzUabTKc/Z5SaYH
 4VuvE/sAQicPMsKhNNe0wSMbj2lD4KMdX72Zd
X-Google-Smtp-Source: AGHT+IFQu3yAL5DEk7oQCeXw0JvR4PFs6pcDDf5vf1OMase0DRLjYTPZIp+SdT/fDhzrb2YiYvR+LjfvMad1ROIciKA=
X-Received: by 2002:ac8:5845:0:b0:453:5f2f:d5d2 with SMTP id
 d75a77b69052e-45864403792mr2236481cf.1.1726157030402; Thu, 12 Sep 2024
 09:03:50 -0700 (PDT)
MIME-Version: 1.0
References: <CALvjV29jozswRtmYxDur2TuEQ=1JSDrM+uWVHmghW3hG5Y9F+w@mail.gmail.com>
 <20240909080200.GAZt6reI9c98c9S_Xc@fat_crate.local>
 <ZuCGkjoxKxpnhEh6@google.com>
 <87jzfhayul.fsf@minerva.mail-host-address-is-not-set>
In-Reply-To: <87jzfhayul.fsf@minerva.mail-host-address-is-not-set>
From: Julius Werner <jwerner@chromium.org>
Date: Thu, 12 Sep 2024 09:03:34 -0700
Message-ID: <CAODwPW8P+jcF0erUph5XyWoyQgLFbZWxEM6Ygi_LFCCTLmH89Q@mail.gmail.com>
Subject: Re: [NOT A REGRESSION] firmware: framebuffer-coreboot: duplicate
 device name "simple-framebuffer.0"
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: Brian Norris <briannorris@chromium.org>, Borislav Petkov <bp@alien8.de>, 
 Hugues Bruant <hugues.bruant@gmail.com>, stable@vger.kernel.org, 
 regressions@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Fenghua Yu <fenghua.yu@intel.com>, Reinette Chatre <reinette.chatre@intel.com>,
 Tony Luck <tony.luck@intel.com>, Tzung-Bi Shih <tzungbi@kernel.org>, 
 Julius Werner <jwerner@chromium.org>, chrome-platform@lists.linux.dev, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
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

> On Coreboot platforms, a system framebuffer may be provided to the Linux
> kernel by filling a LB_TAG_FRAMEBUFFER entry in the Coreboot table. But
> it seems SeaBIOS payload can also provide a VGA mode in the boot params.
>
> [...]
>
> To prevent the issue, make the framebuffer_core driver to disable sysfb
> if there is system framebuffer data in the Coreboot table. That way only
> this driver will register a device and sysfb would not attempt to do it
> (or remove its registered device if was already executed before).

I wonder if the priority should be the other way around? coreboot's
framebuffer is generally only valid when coreboot exits to the payload
(e.g. SeaBIOS). Only if the payload doesn't touch the display
controller or if there is no payload and coreboot directly hands off
to a kernel does the kernel driver for LB_TAG_FRAMEBUFFER make sense.
But if there is some other framebuffer information passed to the
kernel from a firmware component running after coreboot, most likely
that one is more up to date and the framebuffer described by the
coreboot table doesn't work anymore (because the payload usually
doesn't modify the coreboot tables again, even if it changes hardware
state). So if there are two drivers fighting over which firmware
framebuffer description is the correct one, the coreboot driver should
probably give way.
