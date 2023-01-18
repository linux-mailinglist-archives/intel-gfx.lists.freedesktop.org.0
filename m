Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8769F67298A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 21:38:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DB4C10E029;
	Wed, 18 Jan 2023 20:38:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D672810E83A
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 20:38:07 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id q64so252430pjq.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 12:38:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=SEbbH/UMi7mhLJTxAtXYqm1kXgdPVoWLCPyhz4xcgtg=;
 b=XXLBV70FnhGmEwNbUGoC/dELIFJuniWmQrNckfgER3vBIIcsqqkROzZ1SZja/A0sxA
 vva9xiPmBSsS/ZCln6Ax13OUJFuAswSHAMhYspSe37Pn+FHpt8JOx1sKqZWqIUWYkNsg
 gOjDlFzmjFQJMp25hQkAXagOMjjHnURTCbBTU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=SEbbH/UMi7mhLJTxAtXYqm1kXgdPVoWLCPyhz4xcgtg=;
 b=i6A8RK3zKOKn8prsjFitaDj0UBb4FEXJUPIBVho8R4mrfac3naSWdohrKViVsDQjua
 Tff60nmQjvFqSOccBIVXs7OXamUxZpDlePV56fO0Pb78Kxt9F1WkVhNk8wm0XJK+YDb9
 d1+FEK4Pa9Sg7iul8akb0pNNMlb+iNOTsbPJENAZiwsqEYYA28zYgtSdr8474zmsHXCR
 Uaz7weCPqYZunccbw/QMC6G+LUTrdAT0VaOxYQ/EjE9DDAosSp8O6ZwHaVbs1Jyeg8lP
 EsW27PhlKA9yGREK+1d0AL6HaTZ5Zaaz4w0kBKLMl6qanqBsjJdBr7oUQrpJczvVc9i6
 rXDQ==
X-Gm-Message-State: AFqh2kor+reOZ71LVr5Hn3llB78Hdw3kXoIbtgSjGfq5yxzY58i/GNej
 ddDfnPd9HRrBWXhEUFC93Q4yGg==
X-Google-Smtp-Source: AMrXdXvTGd1Ph6IwQQ/i88zipRB2EfVxpj1z81G8vbnBbc8jB1as+U2VQXgEr++hrfN80BwOfwBKKw==
X-Received: by 2002:a17:902:bd4c:b0:194:bb2a:c8ce with SMTP id
 b12-20020a170902bd4c00b00194bb2ac8cemr3043341plx.16.1674074287337; 
 Wed, 18 Jan 2023 12:38:07 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 s7-20020a170902988700b0017ec1b1bf9fsm23423229plp.217.2023.01.18.12.38.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Jan 2023 12:38:06 -0800 (PST)
Date: Wed, 18 Jan 2023 12:38:05 -0800
From: Kees Cook <keescook@chromium.org>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Message-ID: <202301181237.061950D0D5@keescook>
References: <20230117150212.3d8ee843@canb.auug.org.au>
 <CACO55ttvqwnmGS=4gig-AOy+67bDesdj2S9HDJ3hS=uyN0NGOQ@mail.gmail.com>
 <20230118075620.60250ca2@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230118075620.60250ca2@canb.auug.org.au>
Subject: Re: [Intel-gfx] linux-next: duplicate patch in the kspp tree
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
Cc: Karol Herbst <kherbst@redhat.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 18, 2023 at 07:56:20AM +1100, Stephen Rothwell wrote:
> Hi Karol,
> 
> On Tue, 17 Jan 2023 14:52:12 +0100 Karol Herbst <kherbst@redhat.com> wrote:
> >
> > On Tue, Jan 17, 2023 at 5:02 AM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> > >
> > > The following commit is also in the drm-misc tree as a different commit
> > > (but the same patch):
> > >
> > >   06b19f46455c ("drm/nouveau/fb/ga102: Replace zero-length array of trailing structs with flex-array")
> > >  
> > 
> > which branch? Because I just fetched the remote and don't have this
> > commit in my local repo
> 
> That was from
> git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git (branch
> for-next/kspp) yesterday.  It was the top commit in that branch.  It is
> still there today (I am not saying it should not be).

I've dropped my instance of the patch. Thanks!

-- 
Kees Cook
