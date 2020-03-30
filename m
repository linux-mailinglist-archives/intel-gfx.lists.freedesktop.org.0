Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D7A198037
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 17:52:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 250886E1A2;
	Mon, 30 Mar 2020 15:52:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com
 [IPv6:2607:f8b0:4864:20::943])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 659BB6E1A2
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 15:52:19 +0000 (UTC)
Received: by mail-ua1-x943.google.com with SMTP id f9so6465413uaq.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 08:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5ftclM61Z/yLZvB8MsAXquH2CGhsXi+REHXREa7IRsM=;
 b=SrQNJ/PWXNC4QL452QfgSZY6udluUC/lvVJEXLvRqBI5xlbJ4smxCG/1VIDQuJAQGw
 l2d5T+9Bi4WGt5C5etDFYCzDP/Tq7xEB/gLGSWSWMZPHsPXFRUUe38cyMaZkNERSojw2
 5FSLm3b/9TEx2IfwytmNpcacAVv7ekUznnZxClp030tGL0MmcctuB/xEe2X7O0skySQB
 Dk7BvJGSjFhpveZU8tDth3497rTfC5/pzytt2fmjdC6C54D9WeVWe6sg5Lg7nYS4sDPT
 pWVnUC+HoYgcFN7hyNXpY7Lim4K8PMs05tx79h1zwWnd/dB3mEjDJplO6YM1xoXS3DCl
 uALg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5ftclM61Z/yLZvB8MsAXquH2CGhsXi+REHXREa7IRsM=;
 b=cbpp1XAXqo8NKFyBx3dxLlurUKUYV2sGumdlu1NcMYBV0O9lhmJZVpeJIt1v0e4dfr
 rchTCZ7eO3rmGv/Ah7WtcLqWJRGPSBtU9W8IR18Vj93GmTQoyzBPc8RS8WGmP4xbZCq/
 aPUDOFCQq5uFC9iXIOGp3B0tpwIXJJYMJM0VLpx2bX5fENiQDnD4Khl6VUwJgS/d9JOI
 WleeHOChfpJGQR/w/+er5bIUqUzazdYRTFr2rbot9Tb2bg1uYpbkF9zI2n5fRZEXsSv7
 FjikTkE7YNxRJ/n9imzBwFEtok/SHA4YWvRZZR9G4USgqq0R2BD3QQB/pI+1rlPaZelt
 Dd2w==
X-Gm-Message-State: AGi0PuZoc/sV7Qyy6dkGqm01m6+WP+sVRRK6vl32Ybc1hhfrlsBo8EAV
 eVOmIw1k5R2pzwpyXOa9U/68wVZN2djkckOk2naJjLGr
X-Google-Smtp-Source: APiQypJiLaUZ1jA4bqYTdMr75bXmVo0+NvQrL+53e8Zh+KzExqSPx/lP40c2aqXUE9hvs3mshrlcj3osRXbmGblad3U=
X-Received: by 2002:ab0:7556:: with SMTP id k22mr8558581uaq.104.1585583538577; 
 Mon, 30 Mar 2020 08:52:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200330113137.24425-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200330113137.24425-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 30 Mar 2020 16:51:52 +0100
Message-ID: <CAM0jSHNwDwUU4jq=Dv-gdp7UhLxLUUPg90WGiqDOuRP+gORfDg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Include priority info
 in trace_ports
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

On Mon, 30 Mar 2020 at 12:32, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Add some extra information into trace_ports to help with reviewing
> correctness.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
