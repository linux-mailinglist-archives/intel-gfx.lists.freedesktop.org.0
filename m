Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA42163240
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 21:09:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51EF66E3EC;
	Tue, 18 Feb 2020 20:09:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe36.google.com (mail-vs1-xe36.google.com
 [IPv6:2607:f8b0:4864:20::e36])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B35556E3EC
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 20:09:16 +0000 (UTC)
Received: by mail-vs1-xe36.google.com with SMTP id k188so13548066vsc.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 12:09:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0ur0ECKTEMo1cKjbE+UaHL2PSNKrJRYc8uvlzlvvsGU=;
 b=cdUlci/hvGGs2n/prNFLZj+HbcrHQpPb7RWfCbCp1q/4qKcD1Vr5uG2UsvP5u603j+
 Dcpx/d+feUSpV80EnCgpd/FQ8SN5hMdpw0yOqpO5iZm8VptWz00/1Ut3LK1/cAahBB9s
 Brt5Y56yyUJxbMwTHRkdYoX8IZHnJA+aHkBpxKenKWl41C1NpPrtJ3jMN7Q8/ZRRdXNL
 ex1gy9X0SKISeLHzYMiwb9Ixi2e7iFyJlkbpsEQ8hMNsIBRHBg8pmWWcaaeurFJsyJNM
 uBknP+klnMyeAl30FvxqUGIPx92MUuOESGZdM8HvmYePPx6K333keR8jbuqs1BGlxAXl
 XirQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0ur0ECKTEMo1cKjbE+UaHL2PSNKrJRYc8uvlzlvvsGU=;
 b=cXnRh5T+vwGpteOWAgZaPqQgB0pLNlV4q5xehAKLb5UPDvVdWPcRoiZwn3xG9r6R7Q
 zYySzh/9hJqKQIV1T2Hj7jUJdVkkqQqpDDJIql5/KwsGmsZiZgeftuV1ugcokU5YdVze
 Spg1cgS+Zf4WH1C3nkaX5SqNSbxUpUovn/3mDmSvDL4L5oEm3Xzbha4sdQWqgTJ7ehkg
 BvI42Ng8x6jZ74+wUcUWXP7cjIQUFqEhdQS1Z1QIGzHuT8NcI6cDrder3hvuj5Sv5Bsf
 blogtdgwSt3HbXEvSpcoXtOPw4xYf091i+a/gvOm0iOzfCI8K4WORzn4kqJ0W+gMo8oD
 76TA==
X-Gm-Message-State: APjAAAVnWwEU8oZ4eE5JECOJZUGLBZRJcmyCGW3XwZs6sBOTDdQ08kf6
 YYWJwjnwOkzw4kBOmvxt2rPPmWaPOforZjI7KT4=
X-Google-Smtp-Source: APXvYqwcVZ0YRV7TBH/WgKeXng0k09Rsbc3jMhV7BsVSNud0xMtgLYBDWc20Xx0J9GZt56RzxrI0TBGGqMZizKvMOM0=
X-Received: by 2002:a67:f591:: with SMTP id i17mr12010943vso.34.1582056555720; 
 Tue, 18 Feb 2020 12:09:15 -0800 (PST)
MIME-Version: 1.0
References: <20200218162150.1300405-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200218162150.1300405-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 18 Feb 2020 20:08:49 +0000
Message-ID: <CAM0jSHObg5xFHbpE4YA4WXv25DDhH084TmUkdHj7TWhH-kTZhg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 01/12] drm/i915/selftests: Check for any
 sign of request starting in wait_for_submit()
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 18 Feb 2020 at 16:22, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> We only want to wait until the request has been submitted at least once;
> that is it is either in flight, or has been.
>
> References: fcf7df7aae24 ("drm/i915/selftests: Check for the error interrupt before we wait!")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
