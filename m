Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF5338953B
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 20:23:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87B346EE46;
	Wed, 19 May 2021 18:23:20 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com
 [IPv6:2607:f8b0:4864:20::32c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48DC589C6C
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 18:23:18 +0000 (UTC)
Received: by mail-ot1-x32c.google.com with SMTP id
 d25-20020a0568300459b02902f886f7dd43so12599494otc.6
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 11:23:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lU1aEp1/fTDg1MRFhbbvBQJlurTqZag3+kwKZCaFfEA=;
 b=BJw5L3BrtVFBrlK/Uqaiei75sqgQvSftM6vbSEuAeMCnAOJSgXijp70aaA796HngQq
 7Dz0QD4n2CB/dAa7pcIsA+Lj68SO0UcRPLCC9/vCA47p62qUZrSxVcXjWL/xpXr7KPNm
 mX8/aOaR7tz62Y55+iGjltsTTXjfpkkq6aC2M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lU1aEp1/fTDg1MRFhbbvBQJlurTqZag3+kwKZCaFfEA=;
 b=eVYXzNqA3GaNy9kkkFQRIPB08rX9KKAAZwaoKyKET2Aheh4rhrSAw1Gd7USkRTYeGJ
 AL8kxsywcFCHOf53L3AbWyLGwiMh3BWvcL5p0qHGl/YC0exZIKnVdduzbhKcFlvL92HK
 3Z3nONcjFCrNfNZh8YL2gywZu6vske5f58dVkATGkOwzfN46nk31uB1g84HgcatwTaeq
 iTSoF5RRiTqemOcq42QVSzNATBxOqrNfn2qSs8Xo8H16rb3gSa9EKFIMMvkdi3sBUxC9
 x4i/12A6CntG3UrNiNJ0AUAbVS7gM+cx0yqKhMQJ4ErcN6Z9QzxRnVAl0ETjib7sWtFe
 MiTQ==
X-Gm-Message-State: AOAM530YyPVj9CRe4w9HJz+8Th7EpKs2QgUtZ1bT1uN2cmtYbPRYlHWq
 jzOmuOaIdes+iO13p9MTTgnJqKH8LZUTeToXc3EzOg==
X-Google-Smtp-Source: ABdhPJyU9K6L5sHxQhmxWQ79rVoGsktJYOokpWHkHDpmUhbMtFnKZa/uvMA9fJL0vSohClns0xfEnyFTtv5rJekj8aA=
X-Received: by 2002:a05:6830:1155:: with SMTP id
 x21mr598773otq.303.1621448597285; 
 Wed, 19 May 2021 11:23:17 -0700 (PDT)
MIME-Version: 1.0
References: <c6c61179-5b4b-4e0b-6e57-ec4839ca3268@linux.intel.com>
 <b2203d34-2de3-7c58-de2f-bf6fafc3f67c@amd.com>
 <6cf2f14a-6a16-5ea3-d307-004faad4cc79@linux.intel.com>
 <a2b03603-eb3e-7bef-a799-c15cfb1a8e0b@amd.com>
 <YKJ+F4KqEiQQYkRz@phenom.ffwll.local>
 <BYAPR12MB2840C633CF05C1F29263F5BCF42D9@BYAPR12MB2840.namprd12.prod.outlook.com>
 <c85fc53f-d25b-464c-d411-eed4a509a009@linux.intel.com>
 <BYAPR12MB28409E25DEFD3DD620E596ABF42D9@BYAPR12MB2840.namprd12.prod.outlook.com>
 <BYAPR12MB284090FAC1C6E149F0A1A0ECF42D9@BYAPR12MB2840.namprd12.prod.outlook.com>
 <mysJHURIfWxBRBabIlnunj7LZNkkRQ-Knu_o6v7GZI4xCwGMZXn0rvjscl-aTT_d-ttlAQgJOG3gP95DBd_dxCPQNfguTSdrltxPrKt2FGs=@emersion.fr>
 <7f8fc38a-cd25-aa1f-fa2d-5d3334edb3d2@linux.intel.com>
 <CAPj87rOL7SEVXoH1rWH9ypj7idRmVPLXzmEsdVqFdVjsMh5PbA@mail.gmail.com>
 <71428a10-4b2f-dbbf-7678-7487f9eda6a5@linux.intel.com>
 <c22608a4-b84c-a3a4-0df1-448312b1292e@linux.intel.com>
In-Reply-To: <c22608a4-b84c-a3a4-0df1-448312b1292e@linux.intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 19 May 2021 20:23:05 +0200
Message-ID: <CAKMK7uF0fHBoYfiTS+-80RtUeuKFUcYDBpGHtNY6Ma+aJmmkxA@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/7] Per client engine busyness
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
Cc: "jhubbard@nvidia.com" <jhubbard@nvidia.com>,
 Intel Graphics Development <Intel-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Simon Ser <contact@emersion.fr>,
 "nouveau@lists.freedesktop.org" <nouveau@lists.freedesktop.org>, "Koenig,
 Christian" <Christian.Koenig@amd.com>,
 "aritger@nvidia.com" <aritger@nvidia.com>, "Nieto,
 David M" <David.Nieto@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 19, 2021 at 6:16 PM Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
>
>
> On 18/05/2021 10:40, Tvrtko Ursulin wrote:
> >
> > On 18/05/2021 10:16, Daniel Stone wrote:
> >> Hi,
> >>
> >> On Tue, 18 May 2021 at 10:09, Tvrtko Ursulin
> >> <tvrtko.ursulin@linux.intel.com> wrote:
> >>> I was just wondering if stat(2) and a chrdev major check would be a
> >>> solid criteria to more efficiently (compared to parsing the text
> >>> content) detect drm files while walking procfs.
> >>
> >> Maybe I'm missing something, but is the per-PID walk actually a
> >> measurable performance issue rather than just a bit unpleasant?
> >
> > Per pid and per each open fd.
> >
> > As said in the other thread what bothers me a bit in this scheme is that
> > the cost of obtaining GPU usage scales based on non-GPU criteria.
> >
> > For use case of a top-like tool which shows all processes this is a
> > smaller additional cost, but then for a gpu-top like tool it is somewhat
> > higher.
>
> To further expand, not only cost would scale per pid multiplies per open
> fd, but to detect which of the fds are DRM I see these three options:
>
> 1) Open and parse fdinfo.
> 2) Name based matching ie /dev/dri/.. something.
> 3) Stat the symlink target and check for DRM major.

stat with symlink following should be plenty fast.

> All sound quite sub-optimal to me.
>
> Name based matching is probably the least evil on system resource usage
> (Keeping the dentry cache too hot? Too many syscalls?), even though
> fundamentally I don't it is the right approach.
>
> What happens with dup(2) is another question.

We need benchmark numbers showing that on anything remotely realistic
it's an actual problem. Until we've demonstrated it's a real problem
we don't need to solve it.

E.g. top with any sorting enabled also parses way more than it
displays on every update. It seems to be doing Just Fine (tm).

> Does anyone have any feedback on the /proc/<pid>/gpu idea at all?

When we know we have a problem to solve we can take a look at solutions.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
