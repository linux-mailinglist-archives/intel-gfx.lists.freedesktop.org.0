Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 510A6327A80
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 10:13:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFD3B89EA9;
	Mon,  1 Mar 2021 09:13:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 963A06E508
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 09:13:39 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id e10so15033758wro.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Mar 2021 01:13:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=NPjwpZ6sTPXfzbPqKlytJpOLiHJ+o3pn8Az2kzYKdjE=;
 b=RuSfFjrzDMwPNYqwsExNKCb3u8PPEBGzZTMyo+2URUf8+B0upE1Vi6bnJUN5RNNBC3
 hZlImYKkTHrh1TJHjIl1liVt/davm7ffGIYHSCL+w1KclwfRBsfCkt3J/KxRHZPzz3AX
 wvNkzJ4ANdaQex2g/rWj2y1csg3I86nTFWbsI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=NPjwpZ6sTPXfzbPqKlytJpOLiHJ+o3pn8Az2kzYKdjE=;
 b=FkbPjuStSqwH7CEq+0KKPWdtt1LcoUuNeZSV7r+ztxMn/DaU7gzjyz/hr2g/5FrSy+
 ShKOgIWQjFR6GrTBMZV+PfH3/8EsKnUuH71X71kpszcNwrfMteTAmubWkLtl8jX5csJ2
 rY2rDpXs6lnpLjjLVMtA/DQ2vd9v1Xt7JmXIdjoG4Kff4M6N7v4P2V+GsMFZDkdicuuV
 lip0lihY+n+tePfxwATSLUH+RcFekAYpRJa4r5sM8qtT2ELBBnpNb0s5HiaKw4BUfGNn
 7Oz/haaTKhbCWItXefBK4OJYWP7/uCagl9j5jqFEsknonZ8F5KRLl563yQwARW5VHwgm
 3t+A==
X-Gm-Message-State: AOAM532mmC/jN2BmXun9pEJseDPmoOyoFR1flgX7TUfyKHSf3hsg90ag
 X9OJp2FNLaOtORAAnetxzVmPevcOPVjK2w==
X-Google-Smtp-Source: ABdhPJyIDq6APti4odApBwjd0FqggzDEsWRE10sraGJ2do8b9SnSk/H/q3RntG9g/p9ltOYtr48RLw==
X-Received: by 2002:a5d:5411:: with SMTP id g17mr10694262wrv.194.1614590018380; 
 Mon, 01 Mar 2021 01:13:38 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a21sm24505938wmb.5.2021.03.01.01.13.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Mar 2021 01:13:37 -0800 (PST)
Date: Mon, 1 Mar 2021 10:13:36 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <YDywQBl/Lw5OTKE2@phenom.ffwll.local>
Mail-Followup-To: Christoph Hellwig <hch@lst.de>,
 Andrew Morton <akpm@linux-foundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Peter Zijlstra <peterz@infradead.org>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org
References: <20210301083320.943079-1-hch@lst.de>
 <YDypXb3M1uVBxcyH@phenom.ffwll.local>
 <20210301084559.GA29133@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210301084559.GA29133@lst.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] add remap_pfn_range_notrack instead of reinventing
 it in i915
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
Cc: Peter Zijlstra <peterz@infradead.org>, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, linux-mm@kvack.org,
 dri-devel@lists.freedesktop.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 01, 2021 at 09:45:59AM +0100, Christoph Hellwig wrote:
> On Mon, Mar 01, 2021 at 09:44:13AM +0100, Daniel Vetter wrote:
> > On Mon, Mar 01, 2021 at 09:33:18AM +0100, Christoph Hellwig wrote:
> > > Hi all,
> > > 
> > > i915 has some reason to want to avoid the track_pfn_remap overhead in
> > > remap_pfn_range.  Add a function to the core VM to do just that rather
> > > than reinventing the functionality poorly in the driver.
> > 
> > It's not _notrack it's "rely on the tracking established by the struct
> > io_mapping". Exporting a _notrack version to drivers sounds like not
> > something we want to ever do. So I think you want a helper which takes the
> > io_mapping, and not something that encourages drivers to go full stupid.
> 
> As far as I can tell there is no struct io_mapping anywhere near
> remap_io_sg.

Yeah that looks like real bad taste, but it is how this stuff is (or at
least was, been years I've followed this closely) meant to work. Comment
in the code still claims it's the way:

	/* We rely on prevalidation of the io-mapping to skip track_pfn(). */

If that's a lie and there's no iomapping for that range, then ugh.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
