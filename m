Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 226271D5BD7
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 23:49:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F0C26ED58;
	Fri, 15 May 2020 21:49:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 581866ED58
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 May 2020 21:49:33 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id e10so2122776vsp.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 May 2020 14:49:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X1wrtYo8AoO0W8BXFHlVbcj1o6muuhVCDZ0tUsPbMw4=;
 b=tQLJ37BQJXlela2cJiRSjFUL919Jv6hu/0+4FCNezquZPF3L+6Q29czEa8hNYBUbra
 SEOJQDowSh//8vvVe77sVOIFqovr6LhNpFePpaP90RcNVoVSUiv7ejP44GNHRMHFw1X2
 9inmz7aq6CTPdRpnnkNb9P7CXFof17DlR0AYwxxO5AH1uxdwj75CbbMS1KIlfWNWdxDD
 V4l/krl8C6jrSU4sz/yWm9U2bHtDJQAnVPTsLeaiu+uDH/zGzncNyBnSzGoopqHBf+dp
 qgLig30cYWa4gZLk2CPxWq9ECjs6mDqD5Xt/80bK9kASSvB7nANgBrxBaC1JY4/EO+wF
 NdnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X1wrtYo8AoO0W8BXFHlVbcj1o6muuhVCDZ0tUsPbMw4=;
 b=B/o/fyMUrsqmwJvsK2nvUHKOUSCrkLH6rdk7i4tPW2JI5/Off8nC+80oHU8b2FrZAX
 6dABiECPxEJSVjJwxmLZrcylyoSxMYkeC9jhRbt/6NQtBtwDLTk3iTl5auA3PUduJ7Dn
 BCER4x0GZ8nlnnOzFUQ7QB5uSQxupI7XyQz2u0ATFPtAgNbcLeLtIJ0N512WzVe6BBS6
 zYb4sI/M+DwtGKCQoR6+xJ0LF8KSkL+vMUraxceI8MbnYNP1Xt/MoX3a7BiNYb/syD7D
 mKpkWlwrlq6DxxOHm0Hp7TnVSNlN1muuTM9VM7QW3DSatddqDiuwxPuINrYZ6aZysuDX
 r8aA==
X-Gm-Message-State: AOAM533DJs/VMjaYA2QZaEzFAMFW0RQmOmIfOpZXrMMnn2tz+Nh6pCz3
 fdkgh5oiMbnb00oRsSpjlZ5K33Ne3zoJ/pW6Prg=
X-Google-Smtp-Source: ABdhPJwZHxbbk4tQKkeryE4MdP5uqcte6z7j2mN0z2dWJchxjkM1SdqYhcHLkkFjrvTyfwPm60/xc6f+Hvc5KDkakus=
X-Received: by 2002:a67:f1c3:: with SMTP id v3mr4709857vsm.119.1589579372425; 
 Fri, 15 May 2020 14:49:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200515200031.12034-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200515200031.12034-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 15 May 2020 22:49:06 +0100
Message-ID: <CAM0jSHOtYKqjKep_Q735O7XnfHJyDd-ScrXAaW2XqTYFu7pDNQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Retry faulthandlers on ENOSPC
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

On Fri, 15 May 2020 at 21:01, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> As we no longer use the shmemfs allocation directly, we do not expect to
> receive -ENOSPC from a backing store allocation. The potential sources
> for -ENOSPC are then our own internal eviction code, so the choice is
> either to kill the potential application with SIGBUS or to retry the
> faulthandler.
>
> In this patch we retry the fault handler, but since this is a should
> never happen condition, it is arguable that we gather up copious debug
> and kill the application.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
