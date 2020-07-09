Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DD2219A6D
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 10:05:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB9246E9FA;
	Thu,  9 Jul 2020 08:05:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92AA96E9F3
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 08:05:02 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id r12so1280793wrj.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Jul 2020 01:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=AanOntssHVq3a/hYYgiJ/Jv7xDYr/XO47TZ8dJKYOfg=;
 b=QyjKYLKao++0SSyM8aZCwczNT2pFyNkKc2p4ZpEv62WkcG5eiz8JDGaPiwT0/ggzaJ
 IR6p/K6ncIihYsmMMWOKwTm0qCVQDwj5lpl4+j+HohoTFt1N0thAtJPAhqzP1GKvD0DT
 mDeEZ/WxXGFFx6EGFzPhTWq2CTko4+6fvnpQY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AanOntssHVq3a/hYYgiJ/Jv7xDYr/XO47TZ8dJKYOfg=;
 b=N52EuIG3oKBGRNfsyIw9IGM/OYXIcqJd+vB3B1pN+cgWSkDVYnF87RddgRLxWmhJOj
 T8MaMik+Kz+MEkXaroHG9F4LbsBYH1D5lyrBjWT4vt3BKVtg+wyZNUZ2GhHqGGNvWj8h
 MoABXyG5nwyLThjfb88UZM1yrOmaPQA8w27dtMln+fPrkDcGGsjQFcAClJiLSW9l7uWm
 dCpKJjQpkM2Fw6/o6oPXERXX3cxBzwe6BB+izZIfKw6b9xzuGBxgfPQs+QTTBpV12FIU
 ILm7MWId0/5Qx/blgbZQsUbbztb7Tz2w+Aijm4izUxsGB45PPsfLznk+R1SOxyKaC9Mm
 xAhA==
X-Gm-Message-State: AOAM531SPkfSRVWUxVmHM7q8WpCu60bLZK3frx7DVXTuVUiFafsnPUIw
 33ZixAKAn8S7+qTtZHcj7zyarA==
X-Google-Smtp-Source: ABdhPJxO7RoS+ijbjhDgz9IHsX93bEVBPBQ5YAnvnMKF0T6MTWfNzI57IiCMoHlxMz1reth22NnRpA==
X-Received: by 2002:a5d:610a:: with SMTP id v10mr61603577wrt.108.1594281901314; 
 Thu, 09 Jul 2020 01:05:01 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id v12sm4179709wrt.31.2020.07.09.01.05.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jul 2020 01:05:00 -0700 (PDT)
Date: Thu, 9 Jul 2020 10:04:58 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Daniel Stone <daniel@fooishbar.org>
Message-ID: <20200709080458.GO3278063@phenom.ffwll.local>
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
 <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <CAPj87rO4mm-+sQbP07cgM8-=b6Q8Jbh5G0FsV8rwYx2hnEzPkA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPj87rO4mm-+sQbP07cgM8-=b6Q8Jbh5G0FsV8rwYx2hnEzPkA@mail.gmail.com>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 03/25] dma-buf.rst: Document why idenfinite
 fences are a bad idea
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
Cc: Felix Kuehling <Felix.Kuehling@amd.com>, linux-rdma@vger.kernel.org,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 amd-gfx mailing list <amd-gfx@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Steve Pronovost <spronovo@microsoft.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Jesse Natalie <jenatali@microsoft.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 09, 2020 at 08:36:43AM +0100, Daniel Stone wrote:
> Hi,
> 
> On Tue, 7 Jul 2020 at 21:13, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> > Comes up every few years, gets somewhat tedious to discuss, let's
> > write this down once and for all.
> 
> Thanks for writing this up! I wonder if any of the notes from my reply
> to the previous-version thread would be helpful to more explicitly
> encode the carrot of dma-fence's positive guarantees, rather than just
> the stick of 'don't do this'. ;) Either way, this is:

I think the carrot should go into the intro section for dma-fence, this
section here is very much just the "don't do this" part. The previous
patches have an attempt at encoding this a bit, maybe see whether there's
a place for your reply (or parts of it) to fit?

> Acked-by: Daniel Stone <daniels@collabora.com>
> 
> > What I'm not sure about is whether the text should be more explicit in
> > flat out mandating the amdkfd eviction fences for long running compute
> > workloads or workloads where userspace fencing is allowed.
> 
> ... or whether we just say that you can never use dma-fence in
> conjunction with userptr.

Uh userptr is entirely different thing. That one is ok. It's userpsace
fences or gpu futexes or future fences or whatever we want to call them.
Or is there some other confusion here?.
-Daniel


> 
> Cheers,
> Daniel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
