Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 219032E0B96
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Dec 2020 15:18:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 815DC6E883;
	Tue, 22 Dec 2020 14:18:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com
 [IPv6:2607:f8b0:4864:20::832])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2882D6E883
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Dec 2020 14:18:16 +0000 (UTC)
Received: by mail-qt1-x832.google.com with SMTP id z3so8977920qtw.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Dec 2020 06:18:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TvJHbhYK2wD+53sns9eo9solxeIONW/nyM31S1It2TQ=;
 b=i+j+/jOYBtgu2m7U8trfYGXyHuEv4jCm9rcSJ0zSxqNr1/EtKYsqKZAzkxOd+bpyNf
 B4itUcNM/CXH+02v1UMhgZES3QMneTpJPhbuP3ZmyzQXx49dVogMHMQH5TiOLp9v+wM5
 6R18R2qXBgxtltmFQzebOzaNygNU4NRouq10eh7CSqiXeh2EXeXygI1IuhFtXtPvLwj4
 VxYnK0W4A81XmGKRUjmMvrxCy3bzchzDtqIGtMMGEQBPX7jylwaH1Dp5YOF2i3wuiM19
 7SBLuHMYWrG/I3wb9e6QKWaB6HqzL9qlNzFibHVw1MQVOb+TzU9UBinWs056T7Xmh+3Q
 8Nuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TvJHbhYK2wD+53sns9eo9solxeIONW/nyM31S1It2TQ=;
 b=ltUOLoYkuziWGWKjjx/N9DOPF3LE9ebK54J1N5SoTwghFN7JeQp2N/qxKr+XnpeDqj
 hdsxhvHujN0u2rlvxVnlgv0Ge0a2j2njS8V9qdcljW8N54lSCaZrkwCFbQrwpouyRfT6
 plejN9jjEn43YOMwUZ/MMHXqv/cez8C0QsbfLAeE10QqpBM0lrMqEbuPrgJq6/4ixUVk
 6V+RkGArV8aEmIYC+EKY5Oej1dCzsqmFfujCeSWseO9X02B60mxGx303+CChVZYdFiED
 Zukj05t6GmOJiyzx15t6xqAMR3/5UczVqLvKoPT63t/sZm+mFbJGLNrBfotRDxhNUoD+
 ayEA==
X-Gm-Message-State: AOAM531d++QbyhIklYoGlkRTDWz59KDdijTonNWmqC8dRv4EhW45UQBc
 IUqV4QYVJBNV3lp5oeAaKnLCwoMUV9LRwy27EpHYSL4p
X-Google-Smtp-Source: ABdhPJxTfiQuEsdX7G8Q1B7B5e4/i3TZuvCOZZD4pa6e/bmwiJ7+ffp9VtLNgboFFYsIxjYgJzarBxU/AioQm7hPY5o=
X-Received: by 2002:ac8:1c6a:: with SMTP id j39mr21398056qtk.341.1608646695316; 
 Tue, 22 Dec 2020 06:18:15 -0800 (PST)
MIME-Version: 1.0
References: <20201222113536.3775-1-chris@chris-wilson.co.uk>
 <20201222113536.3775-3-chris@chris-wilson.co.uk>
In-Reply-To: <20201222113536.3775-3-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 22 Dec 2020 14:17:48 +0000
Message-ID: <CAM0jSHOiysb1jJCOJciJ8BjwYto2u9vbCR3rJ-3yTBddF91Dyw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/selftest: Be paranoid and
 flush the tasklet before checking status
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

On Tue, 22 Dec 2020 at 11:35, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> When waiting for the submit, before checking the status of the request,
> kick the tasklet to make sure we are processing the submission. This
> speeds up submission if we are using any tasklet suppression for
> secondary requests.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
