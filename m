Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 808293E472C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Aug 2021 16:06:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96E3489BFC;
	Mon,  9 Aug 2021 14:06:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4018D89BFC
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Aug 2021 14:06:03 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 q11-20020a7bce8b0000b02902e6880d0accso2922364wmj.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Aug 2021 07:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=lNSeB72xwfEDG7NSCSN7DcWJa7Xwkv52vfkg5maE5iQ=;
 b=OpRfMH6izgVEDg7K2VDH5oaZAsJl/S1Sah7pHgP0QqMr5GYj5pgsGeQ8HjJSp28jaT
 QKKRbUXb6QbfFhJdVKKMZaWQ2Z2jUgVw3f5wv5DQEW+1pBgDJ2ALKUW+Zc1d/qRSQjg/
 kO38gj/jrcNyIzqgQLQuIsKIgc/tUt89Uu5AY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=lNSeB72xwfEDG7NSCSN7DcWJa7Xwkv52vfkg5maE5iQ=;
 b=VYm9LBTUFsDCsJlGiB/q0jaHMhBFhJXzCk249XTVXIP+9v8w6Sjxa+1/lq9ReSdQPc
 iBhT6CCcWadNAWbEibSkhfuWzRmZXobPD0A5pCwh8IKt9dFgwQyVaV9H1vglJ15zne4e
 uXJQ6NSnqd59NSLQhdDvC9XAmm2+/jUgTTqHJ1nkuKrkLRwnuY/GlxYWcBe3bcE6TxXg
 CQhl45wthdnn90n4Ft+CyrKMh3KYkl94kXOl8+Ba4N9zEc2+P715Z9D29niAJf2MRKTb
 PA7Y/LsWf+z1LBnXsYkCErbif5odmIpqQiFnxcbgLqof90zo4rWPjSXwObYmdHWejADc
 rGlQ==
X-Gm-Message-State: AOAM5326M6bA3JXcled4cCZjGphWM8tT8h4NThFSYisADnIvl3BPIvw2
 ICLqspqsTgt6P6BEnRzyJOwEOA==
X-Google-Smtp-Source: ABdhPJxtN7hvGNB1+/RtoxcA9RAkOM8/syk57Da6EYadLpJdvS+VEMTr6VCyqxOUp3pKgRGhV2cUyw==
X-Received: by 2002:a1c:43c1:: with SMTP id
 q184mr33027913wma.173.1628517961710; 
 Mon, 09 Aug 2021 07:06:01 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id e25sm6423516wra.90.2021.08.09.07.06.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Aug 2021 07:06:01 -0700 (PDT)
Date: Mon, 9 Aug 2021 16:05:59 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: DRI <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Matt Roper <matthew.d.roper@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
Message-ID: <YRE2RwQ6XlUqbgmn@phenom.ffwll.local>
Mail-Followup-To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 DRI <dri-devel@lists.freedesktop.org>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Matt Roper <matthew.d.roper@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
References: <20210715141854.1ad4a956@canb.auug.org.au>
 <162823181614.15830.10618174106053255881@jlahtine-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <162823181614.15830.10618174106053255881@jlahtine-mobl.ger.corp.intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] linux-next: Signed-off-by missing for commit in the
 drm-intel tree
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Aug 06, 2021 at 09:36:56AM +0300, Joonas Lahtinen wrote:
> Hi Matt,
> 
> Always use the dim tooling when applying patches, it will do the right
> thing with regards to adding the S-o-b.

fd.o server rejects any pushes that haven't been done by dim, so how did
this get through? Matt, can you pls figure out and type up the patch to
plug that hole?

Thanks, Daniel

> 
> Regards, Joonas
> 
> Quoting Stephen Rothwell (2021-07-15 07:18:54)
> > Hi all,
> > 
> > Commit
> > 
> >   db47fe727e1f ("drm/i915/step: s/<platform>_revid_tbl/<platform>_revids")
> > 
> > is missing a Signed-off-by from its committer.
> > 
> > -- 
> > Cheers,
> > Stephen Rothwell

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
