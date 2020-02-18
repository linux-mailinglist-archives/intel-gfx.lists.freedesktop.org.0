Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9BC1632FE
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 21:22:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D16286E3E3;
	Tue, 18 Feb 2020 20:22:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com
 [IPv6:2607:f8b0:4864:20::a43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3E2E6E3E3
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 20:22:55 +0000 (UTC)
Received: by mail-vk1-xa43.google.com with SMTP id m195so5925669vkh.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 12:22:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2rGVI7sArX0rAGRBP4x86R2CEhdfwR8XC/1Jm/vlXC8=;
 b=nmEzO+1EGfquUFXXwGDqduImBEmOwhHJL9u1enZCMSd3JIhVn2ueatTIJHuT4yh4u5
 oVfgSw78Qc/o3GUBtsh7hbYFOdswiFxYOQrBP+EE9/YVYO6aG947B27DOJv8xpKET6Ln
 SnlO3KX+RI5Hfaja4WW0imgbyYMshjXuA2xIzdNXc8GUosE0Ct6esT+xLjFNJcwlg257
 FwXmbpA1StQZBx4Ifd0aYjZvpx+X6JKMdyBHWcWtntMBixQ5UdnfJmD5yn6T1w5WC3O+
 wtihAiP91r9Xbk5Y/kFwdcJ4IA7XoF5lA87UT+NNSS3NuZkjFRO8fZ1LHBQRzhKzOQi9
 81QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2rGVI7sArX0rAGRBP4x86R2CEhdfwR8XC/1Jm/vlXC8=;
 b=H6R0Gow8NYa3qDMQQxZR2O3wuDuXKb7csnKFbdx/C68HW0Jep3mhiHOufVbvi1BJVt
 wIzwVtQLdqibTDTqFQmAtG0x5it+BiIPwR9/bHFzae4/H6dB4upLpuU8LOdwr9w4TriY
 lU9kZO2bluGo0GoY7AA2zmS7fV/kUiWO34MEgaojYkujWPHCdK+D8zEVTTpbAnkGor95
 Eut7EYV7SL/vYh0r9xOS7LnggZwqCHvsbAV41loMijooloNOkD+cYfZHHJ0QLK1zNQLh
 1LexRLQv1PNxTQX3EPwmGpuz7aYFswWLxmnHTcF00o1sR/R8GTB/S0g+xdQcEHEYR3Oj
 c7Dg==
X-Gm-Message-State: APjAAAXhAmg4q5qDoakYny2pIOvYvhuMqVEyAHtT5xG5eg+hW06qK1LS
 jbX/fugD9uUqA53/8ieg0My74l0Y5kePN4DtA9OSO0ls
X-Google-Smtp-Source: APXvYqwpuQdh4flisIk4UkijF+ShyaOlTpAc2apQ50rmVTfZP0LHy1+/fYsEx32nQQwIHOQnnj0Sh085cw9f4hHZHgg=
X-Received: by 2002:a05:6122:1065:: with SMTP id
 k5mr9455364vko.14.1582057375076; 
 Tue, 18 Feb 2020 12:22:55 -0800 (PST)
MIME-Version: 1.0
References: <20200218162150.1300405-1-chris@chris-wilson.co.uk>
 <20200218162150.1300405-5-chris@chris-wilson.co.uk>
In-Reply-To: <20200218162150.1300405-5-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 18 Feb 2020 20:22:28 +0000
Message-ID: <CAM0jSHMP73Kefoix-ToBFdC4yvW_qn+9EVADX1WY9SYTO6fGgg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 05/12] drm/i915/gt: Prevent allocation on a
 banned context
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

On Tue, 18 Feb 2020 at 16:22, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> If a context is banned even before we submit our first request to it,
> report the failure before we attempt to allocate any resources for the
> context.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
