Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABDC963B28B
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 20:50:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FED410E32E;
	Mon, 28 Nov 2022 19:50:57 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com
 [IPv6:2607:f8b0:4864:20::52f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D40B010E32E
 for <Intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 19:50:54 +0000 (UTC)
Received: by mail-pg1-x52f.google.com with SMTP id q1so10876947pgl.11
 for <Intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 11:50:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
 :reply-to; bh=GcEtc6FEdThSJ79tsOLA2O9TxilKdXYytFRNDoxtA04=;
 b=Aw1VZ/t2cZu24hm4yg+tGuPK2iELH1xl3jtew5qH7h9YSqh8iFmCHquLUDH54gKQN4
 0afy7+2/I6ibVLxwN3XVSKTzJ5VDAv9OvhaQADeaGwNZxXa6Pijl1R1Uj3Y2qnn6qRmU
 uj5EshG1kfx+RglivS+2KsjQn+Be/uKUDHdqcfPpf/3QITRA1xPky2V2nfIpZBSs5n1D
 DdI0yI7hyJ6Pub4pQwX5Z1GsGnaot0QNT/CopFyGT4GBwjQ3pq2QJ5MSV3J/N0gjKh+L
 GAxgrtiTXbX7z3RLpRp6qNGiHAICpzqZijAeBzN5/Rd/KtVTHB7aBHWT9OT72ZNZiq3K
 nS3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=GcEtc6FEdThSJ79tsOLA2O9TxilKdXYytFRNDoxtA04=;
 b=VAsuDifgqYPQbfKlkx0xPtMdB5g/98OC7khgoLAfyXdcYQKOgrcR/fuN2nJBAC1I7N
 CYwdBUFqjDYjftoiiFd6c+97VWMUXLM8FZ3rdsVYWk5HgDukeUHWMeaUJm/DGcJVwXEd
 2HDnG/yBshdUgxqH49e40CeBtEOxJghy1dAWa6jJNWJuznUSfrvuEagdDbBr06ntmsUf
 xWeDZtmysqYJDx4Z05lnxrAZs0T+Szn1mdJmpP1sPuFvwoML0NNK4nSslDQDBJ/H2SfZ
 BDYbWJZxeAfpbn/87JsXtEiRQppgDRxyFqdKN61aTdvAZGS5ZKo3+MKLSebr6yde+XTV
 GmJA==
X-Gm-Message-State: ANoB5pm+5/W0QYEeIDC2mePjZP2B16AJzePSs7XE96ZinsuC+mTr+kRZ
 VQffzG2KN1UyWF7WuObBnjc=
X-Google-Smtp-Source: AA0mqf45N0ocNZyTMgbg+xjZ51Tl+QJ726m6JF5QQBG+t6t/xLrzdRdXbrRaujuTH4Z+X5svbZV5Kw==
X-Received: by 2002:a63:f012:0:b0:477:b658:c2ea with SMTP id
 k18-20020a63f012000000b00477b658c2eamr25589559pgh.598.1669665054083; 
 Mon, 28 Nov 2022 11:50:54 -0800 (PST)
Received: from localhost
 (2603-800c-1a02-1bae-a7fa-157f-969a-4cde.res6.spectrum.com.
 [2603:800c:1a02:1bae:a7fa:157f:969a:4cde])
 by smtp.gmail.com with ESMTPSA id
 jc21-20020a17090325d500b00189847cd4acsm3378537plb.237.2022.11.28.11.50.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Nov 2022 11:50:53 -0800 (PST)
Date: Mon, 28 Nov 2022 09:50:52 -1000
From: Tejun Heo <tj@kernel.org>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <Y4URHHISpZaFQmj6@slm.duckdns.org>
References: <20221109161141.2987173-1-tvrtko.ursulin@linux.intel.com>
 <20221109161141.2987173-12-tvrtko.ursulin@linux.intel.com>
 <Y30/MIsLmVAZ7pQi@slm.duckdns.org>
 <30f42096-3f42-594e-8ff1-c09341925518@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <30f42096-3f42-594e-8ff1-c09341925518@linux.intel.com>
Subject: Re: [Intel-gfx] [RFC 11/13] cgroup/drm: Introduce weight based drm
 cgroup control
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
Cc: Rob Clark <robdclark@chromium.org>, Kenny.Ho@amd.com,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Intel-gfx@lists.freedesktop.org,
 Johannes Weiner <hannes@cmpxchg.org>, linux-kernel@vger.kernel.org,
 =?iso-8859-1?Q?St=E9phane?= Marchesin <marcheu@chromium.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Zefan Li <lizefan.x@bytedance.com>, Dave Airlie <airlied@redhat.com>,
 cgroups@vger.kernel.org, "T . J . Mercier" <tjmercier@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello,

On Thu, Nov 24, 2022 at 02:32:25PM +0000, Tvrtko Ursulin wrote:
> > Soft limits is a bit of misnomer and can be confused with best-effort limits
> > such as memory.high. Prolly best to not use the term.
> 
> Are you suggesting "best effort limits" or "best effort <something>"? It
> would sounds good to me if we found the right <something>. Best effort
> budget perhaps?

A more conventional name would be hierarchical weighted distribution.

> Also, when you mention scalability you are concerned about multiple tree
> walks I have per iteration? I wasn't so much worried about that, definitely
> not for the RFC, but even in general due relatively low frequency of
> scanning and a good amount of less trivial cost being outside the actual
> tree walks (drm client walks, GPU utilisation calculations, maybe more). But
> perhaps I don't have the right idea on how big cgroups hierarchies can be
> compared to number of drm clients etc.

It's just a better way doing this kind of weight based scheduling. It's
simpler, more scalable and easier to understand how things are working. The
basic idea is pretty simple - each schedulable entity gets assigned a
timestamp and whenever it consumes the target resource, its time is wound
forward by the consumption amount divided by its absolute share - e.g. if
cgroup A deserves 25% of the entire thing and it ran for 1s, its time is
wound forward by 1s / 0.25 == 4s. There's a rbtree keyed by these timestamps
and anything wanting to consume gets put on that tree and whatever is at the
head of the tree is the next thing to run.

Thanks.

-- 
tejun
