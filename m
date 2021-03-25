Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95363348C95
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 10:17:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F2426ECE3;
	Thu, 25 Mar 2021 09:17:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com
 [IPv6:2607:f8b0:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D646E6ECE3
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 09:17:30 +0000 (UTC)
Received: by mail-ot1-x329.google.com with SMTP id
 y19-20020a0568301d93b02901b9f88a238eso1265759oti.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 02:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uqM5RcWv3gBYUBIUqTALfbCuCfO15MflsU9/Ih/+77U=;
 b=exMhvdi51JJfL0WwdDY/iGvy93AIqM5lqR30A5hqVqPpEu9JiaEYA9Fc2fjaMTqW9h
 GJS251BNbfKI9jfrY27TbvMCCZ4UrwhPBHXJEWsZMTTsLsx32HnXFKAqeDbpAwLktHdL
 nyF+p0gdJN+16JqoOjKga4MTNjQhsKv/VSa1A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uqM5RcWv3gBYUBIUqTALfbCuCfO15MflsU9/Ih/+77U=;
 b=Qrh1Svq1du3cQCdBr3cbdCyVGZ+b8uJ22AwpeyvRr1jb/vDf3qBdUyp2Lj5nvxqTxP
 6U/qJ77QXnDpSyYJVph7jANlYDNP7yxVga2LRBn5WxRxq7JrIhDI60kq/KbKOM3swf7W
 Z9wHgLm72E2luXgm+GCyZ/j9Uvp1gvfhItold7hy5g/1RmxDafMaW5KqpEPpCC4Jr4z1
 KJxB+lRV6X2plOtkv2argZxAo1cWpV1rmzm1WQflbDTxfczJcNgjac6R8dBsoBcHKfar
 z+eYNGMclZQCPqSbkeu5n6Kpdv9ztPVCJwwm3Gns2qPQVrw1STxPEmlKlhyPZDFoFu4T
 AlLw==
X-Gm-Message-State: AOAM530V2Fz62Q0nAsoMY1d70g2nIaDz3x9zHvVybe3GfXGIB1bjAvs5
 hwQ/FHer6xTI8/5gr1Sltxxi6y9TYBR/A1RpyFs9gg==
X-Google-Smtp-Source: ABdhPJzxosUobAkCRanfuumhIpmwrz2UKbk/+SKrKxaAeLbZO6W98ypBkOm4iC+skJq/qXE0Kgbbbycfm2nGuw8H68Q=
X-Received: by 2002:a9d:7b4e:: with SMTP id f14mr6886200oto.281.1616663850211; 
 Thu, 25 Mar 2021 02:17:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210325194807.38ec3c55@canb.auug.org.au>
In-Reply-To: <20210325194807.38ec3c55@canb.auug.org.au>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 25 Mar 2021 10:17:19 +0100
Message-ID: <CAKMK7uFq=AN3vUrkFEYi3oinShR3fXE76pNwq-2=6nxw_WtQOw@mail.gmail.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [Intel-gfx] linux-next: please do not base your tree on
 v5.12-rc1-dontuse
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 DRI <dri-devel@lists.freedesktop.org>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 25, 2021 at 9:48 AM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
> Hi all,
>
> The latest version of the drm-misc tree consists of just 2 commits on
> top of Linus' v5.12-rc1-dontuse tag.

Yeah committer pushed patches to the wrong tree, which meant you get
the wrong tree. We'll fix for tomorrow.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
