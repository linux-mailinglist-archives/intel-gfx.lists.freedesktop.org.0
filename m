Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F3A39BFD3
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 20:43:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BF6F6F89D;
	Fri,  4 Jun 2021 18:43:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 234406F89F
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 18:43:07 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id w33so15514103lfu.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Jun 2021 11:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Rio4UFWjElQ5aqOkww6xhIy4YnswqeSYJY+oI4VmrRk=;
 b=kMwRHwDoKIqQlc48bD3hXc3vQ/HnSmAX6KJGrjfrUtwRznGmQ42j8LrTcNqcgDw1M6
 QkaidaE7VIS9ebNK6PslmzYJ6Ule0Y+ilYdpiRWl/ejb5T0zXjnpjz2lNKSBZL5YSuSn
 JHfDKEgrJQJlnnPG3xUd68EI+ZtKHFtAuvoP0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Rio4UFWjElQ5aqOkww6xhIy4YnswqeSYJY+oI4VmrRk=;
 b=kvbwVoPq7RhoP+sQ+NHv62vJyPyBPnvoj+tFnChteSdjqHYT6zj7FkxeX4Z4jTX8fD
 uFIP94g7jbdUOgFIw9vbpwUGXyhKIwa8xPPo5hde9dqpr86xNzt7ojg1Gq95X6dZc56L
 +e8/cs8bqxZgzoSHoIzhb5NaHNn9Qml4JtioUtpqaRoMleraoVmhDldu7FOB5HFzT2zm
 xiSyU+I5DHS4a8iEPGGD64kfj48FVaM6Ghdytk0gMZXGpBiLWYHCuSxBBU9VlhxlZoqH
 zKCvENSRAFa0MWDbr625PJ5TKlE+HqZdLY7wQiovaxevILfEMEjzak2urYJkFgCuzdV8
 KMug==
X-Gm-Message-State: AOAM532gVXMQWT+KWyeLvpcE/hQ7fP8oPcCh8mBPgQKG1N23ELh/vdPV
 DeH5J7vM6SlK6Jb+3XQEbSKEi10DXQbR6iIAotKjYEIcCvbg6mR8
X-Google-Smtp-Source: ABdhPJzvD7LQOwkLaMRjYgUWjhXzCk6sh8INC/BgwTO0ZfCNJHMmuOZOdwoTjn+orld4rNHuvysc7/dMUMgUNiTno3A=
X-Received: by 2002:a05:6512:3f9a:: with SMTP id
 x26mr3874821lfa.75.1622832185581; 
 Fri, 04 Jun 2021 11:43:05 -0700 (PDT)
MIME-Version: 1.0
References: <1622176367-12608-1-git-send-email-vidya.srinivas@intel.com>
In-Reply-To: <1622176367-12608-1-git-send-email-vidya.srinivas@intel.com>
From: Mark Yacoub <markyacoub@chromium.org>
Date: Fri, 4 Jun 2021 14:42:54 -0400
Message-ID: <CAJUqKUovbY4fT8wgeDfU+OoD4S-oBbSG80gn-BdFxGGc1GYo9A@mail.gmail.com>
To: Vidya Srinivas <vidya.srinivas@intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t] [RFC] tests/drm_read: Fix subtest
 invalid-buffer
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 charlton.lin@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 28, 2021 at 12:41 AM Vidya Srinivas
<vidya.srinivas@intel.com> wrote:
>
> Using (void *)-1 directly in read is aborting on chrome systems.
> Following message is seen.
>
> Starting subtest: invalid-buffer
> *** buffer overflow detected ***: terminated
> Received signal SIGABRT.
> Stack trace:
> Aborted (core dumped)
>
> Patch just adds a pointer variable and uses it in read.
>
Tested on ChromeOS on TGL (Delbin) and JSL (Drawlat)
Tested-by: Mark Yacoub <markyacoub@chromium.org>
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>  tests/drm_read.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/tests/drm_read.c b/tests/drm_read.c
> index ccf9d822fd8d..2fdec5be4078 100644
> --- a/tests/drm_read.c
> +++ b/tests/drm_read.c
> @@ -103,10 +103,11 @@ static void teardown(int fd)
>  static void test_invalid_buffer(int in)
>  {
>         int fd = setup(in, 0);
> +       void *add = (void *)-1;
>
>         alarm(1);
>
> -       igt_assert_eq(read(fd, (void *)-1, 4096), -1);
> +       igt_assert_eq(read(fd, add, 4096), -1);
>         igt_assert_eq(errno, EFAULT);
>
>         teardown(fd);
> --
> 2.7.4
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
