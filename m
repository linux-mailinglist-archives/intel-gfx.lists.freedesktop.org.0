Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4718D3515BD
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Apr 2021 16:49:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE4306ECBA;
	Thu,  1 Apr 2021 14:49:47 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com
 [IPv6:2607:f8b0:4864:20::734])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CD896E3DB;
 Thu,  1 Apr 2021 14:49:47 +0000 (UTC)
Received: by mail-qk1-x734.google.com with SMTP id x14so2378649qki.10;
 Thu, 01 Apr 2021 07:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=e5AlVOMQVw05sjjLPNqTC5jdtAqGiVMTRYGYZX8v0k4=;
 b=ZQvSiHAzGCEPUsQY6+5EYq3gBDWMrFC1QmH5lYPmIyIS0YW/Etv9EnIKbrblY2RTIk
 65eB1XeNESnvh+IJ5QyB1gCncU1DpJS4saO9jdsderBhVsS10sWAfgyJ6Wfc3N/PVTkG
 Wu1VKccI5qd8fgFDqG7xREKBPT8AqrMx6sseKASlOcZ0dfe2Taf/a0FgdrJaKQly+y9v
 Mbi8I5Dm/K2Jml0LZaGXpbClNsD+0LC0Pgn0JIWs2MGsvAidi/g1OUGdI7/LXOWnIGMd
 s177dzSYAqpgsu6/kdedpIetsZj8qArErKg+yuDhQPumIMDPS7T0rNHpFOdn6PhUv5Ta
 3o/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e5AlVOMQVw05sjjLPNqTC5jdtAqGiVMTRYGYZX8v0k4=;
 b=TKjF6jJ2nXm8zNgCEYXgWmWyRu8siLSzFGo5tjrZup3+yiYQIAdD/99Rlf8Cn8dJYC
 CvlV5jfd/9lkA0Z7PnsCGsY/97Hp6c/9gSz7sOBUYv3F66occEd8M2WrlsLs20hPLYRB
 l3LPSmGVIET/TRY8NB01nyn3oOIc+fxR9RpdJeCpDUN7I63qgj8eUwyMaTo6bvDrJo+X
 e3NkB86MrNc1ygsFv36sbPmRSn4JwqBL6sBaAvYRCsk/CUPg61KIUXu83ZJjPnC7PHb1
 op38qOfHHfE6CZLkvii4p5XXaJYzqTXywx9R4Etgj0du4GClf0bXkT67ol+fDXv9JBUc
 PGbg==
X-Gm-Message-State: AOAM532VEZF6wi2whzbLBENQUkRtXYj1qBeOwHNx37Viv4xuGHsGRzs5
 Be7gCFZQmSbebqE++LHAh81sPpOVXieA87Ag9ac=
X-Google-Smtp-Source: ABdhPJxAkOc4LZrhyVkHElAWuZ0xhp0jqL3uWuuYPJ+8FM27nfbIjRs7njYMJtn/CLyKa5hNQ67sIO+lWrUNJrJx7wE=
X-Received: by 2002:a37:58c5:: with SMTP id m188mr8460029qkb.327.1617288586322; 
 Thu, 01 Apr 2021 07:49:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210331091241.2566311-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210331091241.2566311-1-tvrtko.ursulin@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 1 Apr 2021 15:49:20 +0100
Message-ID: <CAM0jSHPM+8DEJGo38wA=0zGtEaeN1u1rqeL9S2PjEHrZSai7bg@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] intel_gpu_top: Document how
 to use JSON output
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
Cc: igt-dev@lists.freedesktop.org,
 Intel Graphics Development <Intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 31 Mar 2021 at 10:12, Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
>
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
> Put a note on how to use JSON output into the man page.
>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> References: https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/issues/100
> ---
>  man/intel_gpu_top.rst | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
> index f6d74852558b..94fdc6520fd3 100644
> --- a/man/intel_gpu_top.rst
> +++ b/man/intel_gpu_top.rst
> @@ -81,6 +81,11 @@ Filter types: ::
>      pci      pci:[vendor=%04x/name][,device=%04x][,card=%d]
>               vendor is hex number or vendor name
>
> +JSON OUTPUT
> +===========
> +
> +To parse the JSON as output by the tool the consumer should wrap its entirety into square brackets ([ ]). This will make each sample point an JSON array element and will avoid "Multiple root elements" JSON validation error.
> +

a JSON array element

It could be argued that this should go into LIMITATIONS?

Acked-by: Matthew Auld <matthew.auld@intel.com>

>  LIMITATIONS
>  ===========
>
> --
> 2.27.0
>
> _______________________________________________
> igt-dev mailing list
> igt-dev@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/igt-dev
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
