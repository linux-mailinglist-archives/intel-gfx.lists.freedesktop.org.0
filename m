Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F07182897
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 06:53:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A206F6E048;
	Thu, 12 Mar 2020 05:53:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9C1A6E048
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 05:53:38 +0000 (UTC)
Received: by mail-lj1-x22f.google.com with SMTP id d23so4930087ljg.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 22:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=Q7m+u4v4CT3nTJpKm8duia045y4V+iyX0N/q0MCaz6c=;
 b=TROflaY709C1r2Q3JsSZE5VII4OBcaJB2Mob5x0WDRMbRtnkQ1SdtNJIrN0CIN1dVH
 0oXqXafmSChM0DTlo8LkGrmjlxUZVTWCuZ3Z8O4SLTs4LbSACtYEc+DI9pdy6W4i8Mz6
 laH34nf1zjG4NJ7ANagQSxrrsSmR2+2G0u1xpdn8KKWW1+skUdQ/XZ8MDYnbhlYykXQQ
 +I0ryM9Xulrgs4rc1UmmT4verrBPfkEzmrtxBIJ1iLu0xs6UXoPTB29T3DziPVmIpWvR
 VhV7VeaWC6w669g9PjpOTHyGmW49uy/U51mwMs4KPQKPGb3dPD/+uKK3YPQrhFQFA8lG
 VbVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=Q7m+u4v4CT3nTJpKm8duia045y4V+iyX0N/q0MCaz6c=;
 b=bTSNCvfPMnhHzxp1+dgxCp6vq5QENYlfZel+eYy9S7NT54PWMr3bUKOGxMAVwQt1nz
 yORXrzqRYrzQ+mJjT3A+J7E2Y1Hy8Uw0oagGfKRi6uQzL0fT/2BlWvUAigNi6I1HV0GQ
 mdf7UXEXVbPeW9luEK/Ze1Mw7JMfRHKaTbiK/esJPERNgJic066iTiPHPfyEVeP8qwg0
 AjmCgtgleSdL26f81dllFxlyXL2goltAQqkAn/JWUmkMwHcJ/cagjTAo3Yzghidpc2mH
 lloZfAubcK4YX9yWHlc2h3nwKMja6lf7kjTJKukwK7EHuILJ1Thu8dixaZWZxAG0o4cJ
 Du7Q==
X-Gm-Message-State: ANhLgQ0TQjPwsusGp2ldr9eDZKwB8256PAPEq3/IUIjLoy/PEJ2oJ0So
 84DK1ngkbrtSFrBTLbW1ATm2HihS1BpRmQv16rPqEXCgvpw=
X-Google-Smtp-Source: ADFU+vtfoNIC0xx3qSkLTf0aotsNjbIpzOd/dNWM3LwmzllLbnSEU7W7b/poY5Orbx7gGoSwknrGW1Ylvxk6lio7HFk=
X-Received: by 2002:a2e:b24a:: with SMTP id n10mr4213642ljm.174.1583992416581; 
 Wed, 11 Mar 2020 22:53:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200312005722.48803-1-rajatja@google.com>
 <158398586172.4949.4893042689188971265@emeril.freedesktop.org>
In-Reply-To: <158398586172.4949.4893042689188971265@emeril.freedesktop.org>
From: Rajat Jain <rajatja@google.com>
Date: Wed, 11 Mar 2020 22:52:58 -0700
Message-ID: <CACK8Z6Fs2Y2Fki4-gmi9LAqFithsHx5i5+fFuCa70ctrasHx2A@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
	=?utf-8?q?rm/i915=3A_Support_for_integrated_privacy_screens?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

Can some one please let me know on which branch does this script try
to apply the patches so that I can fix the error?

Currently I had sent my patchset rebased on top of drm-intel-next-queued.

Thanks,

Rajat

On Wed, Mar 11, 2020 at 9:04 PM Patchwork
<patchwork@emeril.freedesktop.org> wrote:
>
> == Series Details ==
>
> Series: drm/i915: Support for integrated privacy screens
> URL   : https://patchwork.freedesktop.org/series/74607/
> State : failure
>
> == Summary ==
>
> Applying: intel_acpi: Rename drm_dev local variable to dev
> Applying: drm/connector: Add support for privacy-screen property
> Using index info to reconstruct a base tree...
> M       drivers/gpu/drm/drm_connector.c
> M       include/drm/drm_connector.h
> Falling back to patching base and 3-way merge...
> Auto-merging include/drm/drm_connector.h
> CONFLICT (content): Merge conflict in include/drm/drm_connector.h
> Auto-merging drivers/gpu/drm/drm_connector.c
> error: Failed to merge in the changes.
> hint: Use 'git am --show-current-patch' to see the failed patch
> Patch failed at 0002 drm/connector: Add support for privacy-screen property
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
