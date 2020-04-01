Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FC619B64F
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 21:14:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B5D86E991;
	Wed,  1 Apr 2020 19:14:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com
 [IPv6:2607:f8b0:4864:20::942])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AB206E991
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 19:14:45 +0000 (UTC)
Received: by mail-ua1-x942.google.com with SMTP id r47so219169uad.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Apr 2020 12:14:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VVJ/0chzNDZbtWs1c9hKAL2zzVftipF+AZFmy+87AlQ=;
 b=DWLCruDGeGLyPm336yRdNj9PF0gBD4fCxBQ8Z663h79t6ua8M2UWjdvPiNHu4QoiEe
 XpqY+EergAxxZ9c0LZDgf0hv1n5DJwwksFE5+TldOsarkyh96Hdh4Gn3ll7PCbj3UVLv
 ApfKEIychzVcAByDSXSOac3tCaj9PAmDdS43Z6YD8zF79cs6V4TLEnhyxeBc6dxAYmQ2
 aiXhzclXTCgdn+vNRelOYk13MQYDAMb5GmXS89QRZ6NBG9l7+q7iSqzsOMvIdbSDampQ
 gl+L2KZTQx+NtjoU+t8WAfhHeC0JjU2xV0Wh8ReE7F+lArxLZUraV8fx8pAAicmXrsBJ
 tZcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VVJ/0chzNDZbtWs1c9hKAL2zzVftipF+AZFmy+87AlQ=;
 b=j+PDgE8pPsZHMxZ6p0lwIAmwr3G3Ms/5mEhBB933lKw+jYQyelsF8W9PSU1kILkK/T
 7KcJ1sP03IEzyqEv2bEl7PHqG0Ny2uOjBqFCWP/Y3Q/jr11JFZdCdNpY3uYci0RGntVL
 VnCJ71Iofn/UyfXhO4S0GiQntvq3SXR/ONasqeywzphSm9EAg/H3LubMfeVeXR59Xvh7
 d0LhOJMLE71hziMlTccKvsV/rCL9gOKGvyQ5tHTFgvqyBcB8O/qpYSjyuFlWQaA8xcpF
 CRWLlcCFkWYjBhttaZ8Hf5+R5431TLi9nOUF5eTO8HOUD3XvHk8KFbsFnCnNwOA4JWlS
 sigQ==
X-Gm-Message-State: AGi0Pua2rq6U/dicZWwirn3ZzgKScAZaoXzcxwpdgyj1Uf7sFwEB9dhP
 Lnts8UvwRlu2TYZjeIgemDvJoZSTSDRzq9q6EFM=
X-Google-Smtp-Source: APiQypJtOOnWKrBioYPOn23ix43vqXIYEApn4YkKen48WuE0VBYk6L/CnitXWq4if7noFmyusyhoNkIuvmIv7sO1Drs=
X-Received: by 2002:ab0:2085:: with SMTP id r5mr17719297uak.95.1585768484548; 
 Wed, 01 Apr 2020 12:14:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200331213108.11340-1-chris@chris-wilson.co.uk>
 <20200331213108.11340-10-chris@chris-wilson.co.uk>
In-Reply-To: <20200331213108.11340-10-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 1 Apr 2020 20:14:18 +0100
Message-ID: <CAM0jSHNbbhNGWmHkiOy5XDYpELDEG7mZH1HOJNVt3eQs62yN4A@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 10/11] drm/i915/gt: Make fence revocation
 unequivocal
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

On Tue, 31 Mar 2020 at 22:31, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> If we must revoke the fence because the VMA is no longer present, or
> because the fence no longer applies, ensure that we do and convert it
> into an error if we try but cannot.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
