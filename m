Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D35451E65B0
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 17:16:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 365F86E598;
	Thu, 28 May 2020 15:16:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe30.google.com (mail-vs1-xe30.google.com
 [IPv6:2607:f8b0:4864:20::e30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FD3D6E598
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 15:16:14 +0000 (UTC)
Received: by mail-vs1-xe30.google.com with SMTP id k3so2939433vsg.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 08:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zEt1Ttz/eKGq76bW5pClGnlxBumDuzQ+R7FYd63ZL68=;
 b=QOXjgJFzmTYC4aly6DyXiO7ZomieoVY40Ixfu3tL0b6jyKcQwybUMu+8mcymFLQrI8
 8RmK6NbNNu5WARzVmWpvxaH30FhXeQfPH2sTIl5Vcc+uyXHR9XyKeTpObahmEQrDniip
 fqZy85WbqTq5BJPiJqtQMKHw/v8GhGpNeuWXxCUUbDb1b/1cEqmSM0KuvzAfNskYr1kB
 5QttwEdtrNTbsopDz8xfqr3AHDQbdVgXEiaqRRbzaJseRO4FFVFU52NkoHeaWcS1otav
 LjoPGRewuA9XZmoIhVOhX9kBEh1/ZK6EpEVZ2hvlplZqZIIH0d5KDhr6RIOkwVojMFfQ
 Ff1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zEt1Ttz/eKGq76bW5pClGnlxBumDuzQ+R7FYd63ZL68=;
 b=TpuSnJkR8Mz4y34JMsO52X5eYAvDKxRJNbmi6lfNfN7mf+FEynTItu/fEXVU2liExr
 hWmvQ+V8nF6HmPJ/RC+iSCa4jzThg7oa/WLd+ZL0X0j58O12VUYjKMIX+sd90pHEvdxt
 yxsNHVDH2uu7BC0CvjCDmtLRfumbV1FCeONKbVqJ6hqZSgrW8jZWWzNfIfjglWl7WDNg
 ODfTdtfaZeX1ERZLXfNSePlLVNiyBxJsW6szL7eatoHImWF+EyYlu75liVquUQg5Zceh
 U6pk7nmiGlQN43vcqhuaAR6Hn8C7BsHyazraBM3LBBcVmRAP2puopTlCxvoyDbGRAOHN
 1O6A==
X-Gm-Message-State: AOAM533QGPsMQU55gtw3lyYzfhXqRnm/QyXhSHoRErebn26enjQuFocO
 zQ5/7HguEjGlxEQLh84B17WNIbRDyk3hq/EnhZVzufaB
X-Google-Smtp-Source: ABdhPJwxmxWLX2QK0lyImxvg6f8dIpZhVNCSG3RTVj95qvPHSDihQarG/ESevwXvP0czkgbfqXr/VWohXJNl5XG30OY=
X-Received: by 2002:a05:6102:109d:: with SMTP id
 s29mr2655445vsr.119.1590678973673; 
 Thu, 28 May 2020 08:16:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200528082427.21402-1-chris@chris-wilson.co.uk>
 <20200528082427.21402-2-chris@chris-wilson.co.uk>
In-Reply-To: <20200528082427.21402-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 28 May 2020 16:15:47 +0100
Message-ID: <CAM0jSHND-Pc5UcS0DR0FD0EEih3JhpY9RTR-86DBvVeNSGNk+A@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Remove local entries from
 GGTT on suspend
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 28 May 2020 at 09:24, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Across suspend/resume, we clear the entire GGTT and rebuild from
> scratch. In particular, we only preserve the global entries for use by
> the HW, and delay reinstating the local binds until required by the
> user. This means that we can evict and recover any local binds in the
> global GTT, saving any time in preserving their state.
>
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/1947
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
