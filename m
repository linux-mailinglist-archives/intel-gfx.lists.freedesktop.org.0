Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4445F38B133
	for <lists+intel-gfx@lfdr.de>; Thu, 20 May 2021 16:11:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F67A6E3A0;
	Thu, 20 May 2021 14:11:13 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39CA46E3AC
 for <Intel-gfx@lists.freedesktop.org>; Thu, 20 May 2021 14:11:11 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id r12so17845430wrp.1
 for <Intel-gfx@lists.freedesktop.org>; Thu, 20 May 2021 07:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=EZn5cTpf04rs7DrIpRGC7VfODM+KW/8ycoUDK6u5orI=;
 b=TNGIEYJgOZq1Eh+4x7qcTaPm3DLJ5jKJa0xHMBdeeXZQmqjxQfOiJL5yZ6EvJwnXRQ
 N4tE9HhrwqlK/2gTw5fJlwXLKNif3wGvPcFne1Ho5UvSY4fdPc0uNRkFvcKuPHGyKFZD
 WrjJYNOxU9/TraKunkElzm75ojxSGj9bWBOeM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=EZn5cTpf04rs7DrIpRGC7VfODM+KW/8ycoUDK6u5orI=;
 b=EjEFeln/PgpF3XAS2qMB2tEs7IcM/8tP7Pu1KQkxW7/xWQ4FL6zujFSKWhr+oMLh5B
 2OYcqStV1g/UGcfPhfE84s5BNR/Wv7RKun3C+cPNn1nvx1Kvh/S7lr6nsUMWrfxlT2Wk
 iYDGOmzFL8uJyR7oeS56pH4YZqQC2GrO+mikXtfQuvmjENWBFDRucKKZcYA8Gdux1Yiu
 cZoomEXjE1FNcC0vNGPsvtS8WBLB0a7umIfnp3XsZiz0zM9qLmVuquQM7CyxpY1NFXQR
 vNeHEpRH+jJMRXDh+iN+E9tNNFlQ6RrMUzobiEJ6KT/aLB3zroNBjmePfBtVoMC2JiBO
 AF3g==
X-Gm-Message-State: AOAM533MHt4w5WdJxKG+ni820FrJ+joIsTNe5Ce4/WycAhApN1npiFtl
 K0KXiNZ/FsKqxC5ywfre6HBrgQ==
X-Google-Smtp-Source: ABdhPJxUVutV30Iv8fYdx28p3MLidEuJpon5vjzJuQ0E0g9jRVACtL0BQV6x9aB0f3YrD/Z52ffWIQ==
X-Received: by 2002:a5d:5388:: with SMTP id d8mr4350021wrv.423.1621519869961; 
 Thu, 20 May 2021 07:11:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f20sm3223893wmh.41.2021.05.20.07.11.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 07:11:09 -0700 (PDT)
Date: Thu, 20 May 2021 16:11:07 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "Nieto, David M" <David.Nieto@amd.com>
Message-ID: <YKZt+x6as7ix6TPy@phenom.ffwll.local>
References: <c85fc53f-d25b-464c-d411-eed4a509a009@linux.intel.com>
 <BYAPR12MB28409E25DEFD3DD620E596ABF42D9@BYAPR12MB2840.namprd12.prod.outlook.com>
 <BYAPR12MB284090FAC1C6E149F0A1A0ECF42D9@BYAPR12MB2840.namprd12.prod.outlook.com>
 <mysJHURIfWxBRBabIlnunj7LZNkkRQ-Knu_o6v7GZI4xCwGMZXn0rvjscl-aTT_d-ttlAQgJOG3gP95DBd_dxCPQNfguTSdrltxPrKt2FGs=@emersion.fr>
 <7f8fc38a-cd25-aa1f-fa2d-5d3334edb3d2@linux.intel.com>
 <CAPj87rOL7SEVXoH1rWH9ypj7idRmVPLXzmEsdVqFdVjsMh5PbA@mail.gmail.com>
 <71428a10-4b2f-dbbf-7678-7487f9eda6a5@linux.intel.com>
 <c22608a4-b84c-a3a4-0df1-448312b1292e@linux.intel.com>
 <CAKMK7uF0fHBoYfiTS+-80RtUeuKFUcYDBpGHtNY6Ma+aJmmkxA@mail.gmail.com>
 <BYAPR12MB28404674622BAB65A9257D1FF42B9@BYAPR12MB2840.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR12MB28404674622BAB65A9257D1FF42B9@BYAPR12MB2840.namprd12.prod.outlook.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
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
Cc: Simon Ser <contact@emersion.fr>,
 "nouveau@lists.freedesktop.org" <nouveau@lists.freedesktop.org>,
 Intel Graphics Development <Intel-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "jhubbard@nvidia.com" <jhubbard@nvidia.com>, "Koenig,
 Christian" <Christian.Koenig@amd.com>,
 "aritger@nvidia.com" <aritger@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 19, 2021 at 11:17:24PM +0000, Nieto, David M wrote:
> [AMD Official Use Only]
> 
> Parsing over 550 processes for fdinfo is taking between 40-100ms single
> threaded in a 2GHz skylake IBRS within a VM using simple string
> comparisons and DIRent parsing. And that is pretty much the worst case
> scenario with some more optimized implementations.

I think this is plenty ok, and if it's not you could probably make this
massively faster with io_uring for all the fs operations and whack a
parser-generator on top for real parsing speed.

So imo we shouldn't worry about algorithmic inefficiency of the fdinfo
approach at all, and focuse more on trying to reasonably (but not too
much, this is still drm render stuff after all) standardize how it works
and how we'll extend it all. I think there's tons of good suggestions in
this thread on this topic already.

/me out
-Daniel

> 
> David
> ________________________________
> From: Daniel Vetter <daniel@ffwll.ch>
> Sent: Wednesday, May 19, 2021 11:23 AM
> To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Daniel Stone <daniel@fooishbar.org>; jhubbard@nvidia.com <jhubbard@nvidia.com>; nouveau@lists.freedesktop.org <nouveau@lists.freedesktop.org>; Intel Graphics Development <Intel-gfx@lists.freedesktop.org>; Maling list - DRI developers <dri-devel@lists.freedesktop.org>; Simon Ser <contact@emersion.fr>; Koenig, Christian <Christian.Koenig@amd.com>; aritger@nvidia.com <aritger@nvidia.com>; Nieto, David M <David.Nieto@amd.com>
> Subject: Re: [Intel-gfx] [PATCH 0/7] Per client engine busyness
> 
> On Wed, May 19, 2021 at 6:16 PM Tvrtko Ursulin
> <tvrtko.ursulin@linux.intel.com> wrote:
> >
> >
> > On 18/05/2021 10:40, Tvrtko Ursulin wrote:
> > >
> > > On 18/05/2021 10:16, Daniel Stone wrote:
> > >> Hi,
> > >>
> > >> On Tue, 18 May 2021 at 10:09, Tvrtko Ursulin
> > >> <tvrtko.ursulin@linux.intel.com> wrote:
> > >>> I was just wondering if stat(2) and a chrdev major check would be a
> > >>> solid criteria to more efficiently (compared to parsing the text
> > >>> content) detect drm files while walking procfs.
> > >>
> > >> Maybe I'm missing something, but is the per-PID walk actually a
> > >> measurable performance issue rather than just a bit unpleasant?
> > >
> > > Per pid and per each open fd.
> > >
> > > As said in the other thread what bothers me a bit in this scheme is that
> > > the cost of obtaining GPU usage scales based on non-GPU criteria.
> > >
> > > For use case of a top-like tool which shows all processes this is a
> > > smaller additional cost, but then for a gpu-top like tool it is somewhat
> > > higher.
> >
> > To further expand, not only cost would scale per pid multiplies per open
> > fd, but to detect which of the fds are DRM I see these three options:
> >
> > 1) Open and parse fdinfo.
> > 2) Name based matching ie /dev/dri/.. something.
> > 3) Stat the symlink target and check for DRM major.
> 
> stat with symlink following should be plenty fast.
> 
> > All sound quite sub-optimal to me.
> >
> > Name based matching is probably the least evil on system resource usage
> > (Keeping the dentry cache too hot? Too many syscalls?), even though
> > fundamentally I don't it is the right approach.
> >
> > What happens with dup(2) is another question.
> 
> We need benchmark numbers showing that on anything remotely realistic
> it's an actual problem. Until we've demonstrated it's a real problem
> we don't need to solve it.
> 
> E.g. top with any sorting enabled also parses way more than it
> displays on every update. It seems to be doing Just Fine (tm).
> 
> > Does anyone have any feedback on the /proc/<pid>/gpu idea at all?
> 
> When we know we have a problem to solve we can take a look at solutions.
> -Daniel
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> https://nam11.safelinks.protection.outlook.com/?url=http%3A%2F%2Fblog.ffwll.ch%2F&amp;data=04%7C01%7CDavid.Nieto%40amd.com%7Cf6aea97532cf41f916de08d91af32cc1%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637570453997158377%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=4CFrY9qWbJREcIcSzeO9KIn2P%2Fw6k%2BYdNlh6rdS%2BEh4%3D&amp;reserved=0

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
