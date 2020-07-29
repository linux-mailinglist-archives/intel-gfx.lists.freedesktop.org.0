Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 420E623253C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jul 2020 21:19:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B8FD6E7D0;
	Wed, 29 Jul 2020 19:19:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com
 [IPv6:2607:f8b0:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 896986E7D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jul 2020 19:19:38 +0000 (UTC)
Received: by mail-pf1-x444.google.com with SMTP id f193so3066649pfa.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jul 2020 12:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=In/D8z7gXollo69UOvFLAqKOH13VGluD7VCN2My2HlQ=;
 b=LNxPwbmWGNwoKFWOhWj+aic4gew6jbzuSQoWMCIW9H3Bu4L9ERufl8BuSoq4xKURew
 6YtlzSH4znGguD72XRJPXxpiJSwjSTx2PFtdX0hVaxffUFlSxmk66dN5xrMOTr36xF13
 vCZFLASN9sUauLJWKZr72/6Tj3uGsr8VyvPbg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=In/D8z7gXollo69UOvFLAqKOH13VGluD7VCN2My2HlQ=;
 b=JLPhlD/QgOl/qbyrmDXtVujWWUIJ5jKNv15Z95/RU+nvOEO5Wy+WoAqwmhv4PjTfPw
 hnaB6UA6RbTK7Hnv+TWeJoHRehUNTrMPDTfOH8Qfnz6Hagvj2pDBFSr3WUbmuJv7/lzy
 S4NzGnC7OWAY65yC6R7FGtjvdmpI5/lArWvQoPjNiRJ18C2/VJlc5Zg69iEvnTRHULgO
 BFdfs3U/ze2NgSD6UpYU1hCuAw/YF2sr01BAq6DOtWdXNYVhIUqV3lAWtT6P5Gbmn+d7
 JINWCuswCmPjEXzZkeDsi2KFTIuzxCT/kFmo3POx514jiRiz3EV1Fn93XdCIOJUqrrCI
 CnGQ==
X-Gm-Message-State: AOAM533t4Y8cxgSSCeTAGhCWMcpHU7QiEHLjPGnOQOmsoIYhTYJYktTJ
 5XKM9JZfc8BJimrdZ8aVkNmITg==
X-Google-Smtp-Source: ABdhPJzqnH4uuQ8Tg6K+0tUON2W91DHVjKrpN7yvvLhVnzAdDTcIF8VPsDlQt2A3jI4YlO70HoOINg==
X-Received: by 2002:a63:f254:: with SMTP id d20mr31037862pgk.119.1596050378022; 
 Wed, 29 Jul 2020 12:19:38 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id g8sm3197436pgr.70.2020.07.29.12.19.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jul 2020 12:19:37 -0700 (PDT)
Date: Wed, 29 Jul 2020 12:19:35 -0700
From: Kees Cook <keescook@chromium.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <202007291218.E129CEE@keescook>
References: <20200708131751.334457-1-lionel.g.landwerlin@intel.com>
 <20200708131751.334457-3-lionel.g.landwerlin@intel.com>
 <CAKMK7uFkMKiwyTFMRASk5L=1NdFqeuKfCh_FHRLg4FxzHpXpfw@mail.gmail.com>
 <CAHk-=wjD-6phO85fvLMt7rvk5ZwaJ1Q5Zor4urYps6C8vG_Txg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wjD-6phO85fvLMt7rvk5ZwaJ1Q5Zor4urYps6C8vG_Txg@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH v12 2/3] drm/i915: add syncobj timeline
 support
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 29, 2020 at 10:51:23AM -0700, Linus Torvalds wrote:
> On Wed, Jul 29, 2020 at 5:24 AM Daniel Vetter <daniel@ffwll.ch> wrote:
> >
> > Do we have a access_ok_array or so? Instead of duplicating overflow checks
> > everywhere and getting it all wrong ...
> 
> I really really think you should get away from access_ok() entirely.
> 
> Please just get rid of it, and use "copy_from_user()" instead.

Yes please. :) It also makes code SO much easier to audit (both
automatically and manually).

-- 
Kees Cook
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
