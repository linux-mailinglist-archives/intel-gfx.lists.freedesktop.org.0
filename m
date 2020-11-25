Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C4B2C4760
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 19:17:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 233036EA35;
	Wed, 25 Nov 2020 18:16:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4B606E8EB
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 18:16:54 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id l1so2819312wrb.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 10:16:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j5gTn7rnt46vXkbVABsd/nLFo1oDvs2e/sre8ZiKqDQ=;
 b=2RcIEuqtZY++KbyHHJ/8Al35LHvGEMfjFhX1wg6Sx1lnUQGdB99z0SrLom14WDlOHC
 JzFjfP0tNkkwXcu6XzC6NAhOhzQoKp7yho7CnvBk07fTG44rTUd8izJ5QltWtboAdbOs
 aCwthm9Lwh07mqfBhvxEgEy62qR7qdqH+QrYogMcZX0700fvS9sUweRgeTkiom3OxL5l
 QQq2a/7Luu4pPuoc8nmOoPM+g7UUK1JTIHbOZYOZsTOa1alHfkhxBDNUi3/IBmDcpRRF
 G0Vssw/bwybi4EgR5nUVohtKi/g9Eh+ZHJX4b7hFPGkxVT5uexQ6SNfhT0tVKhkKie1I
 gk9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j5gTn7rnt46vXkbVABsd/nLFo1oDvs2e/sre8ZiKqDQ=;
 b=ufj7n4ZvaF1nTEDBy6u040mhjbBdwGgYEIIdJ7uPTan7WuLQBQaK0U6Np3gD2a1Fpr
 RGTI7VSPdwax6FxF5XhrQwxQSHz1t9TM52T27GKlSTfRu4TzvYLs73dJO94tR2X+2vSe
 0+oQ6xi1zuDXxyPSb0EFqTYXD+62g9JBWJGv9ZjJOq8ESZ6jdkoDwwQ6FgRNK388NmC5
 G9MRofSzjZlcUtWo2S/OmmfKQiaOP3l33xjLAy8RytNfoiAxmjqZTmZa8ezWwmb9IgFR
 ekf28Qrq9xkNtG8fWcaBUHDXm7iBG3H+99jd7bNdtjl16pTUlIOxbgtepljftGK08Wsi
 iPZw==
X-Gm-Message-State: AOAM531/BUqljTmwHy4amcaTckA5hEu27guPTEXbcqSkKgTxJALDUeVc
 pcJUVaWX3qzXO50cUxDIguqAFikThwnPd+MhhTzDPw==
X-Google-Smtp-Source: ABdhPJwQ8WelxJodfMPdFHmQdz1O8TGE9MrvKPhhxxXuE5dHnylhfXIpx/XMn0moXpHiTw1HBA2/nw6OzXt+/ScISSw=
X-Received: by 2002:adf:e509:: with SMTP id j9mr5578411wrm.354.1606328213209; 
 Wed, 25 Nov 2020 10:16:53 -0800 (PST)
MIME-Version: 1.0
References: <20201125162532.1299794-1-daniel.vetter@ffwll.ch>
 <20201125162532.1299794-5-daniel.vetter@ffwll.ch>
 <CAKMK7uGXfqaPUtnX=VgA3tFn3S+Gt9GV+kPguakZ6FF_n8LKuA@mail.gmail.com>
 <20201125180606.GQ5487@ziepe.ca>
In-Reply-To: <20201125180606.GQ5487@ziepe.ca>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 25 Nov 2020 18:16:42 +0000
Message-ID: <CAPj87rP-=yXjdPc48WrwiZj8pYVfZsMhzsAqt-1MrrV2LoOPMQ@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [Intel-gfx] [PATCH] drm/ttm: don't set page->mapping
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
Cc: Thomas Hellstrom <thellstrom@vmware.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>, linux-xfs@vger.kernel.org,
 Linux MM <linux-mm@kvack.org>, Huang Rui <ray.huang@amd.com>,
 Brian Paul <brianp@vmware.com>, linux-fsdevel@vger.kernel.org,
 Daniel Vetter <daniel.vetter@intel.com>,
 Christian Koenig <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Wed, 25 Nov 2020 at 18:06, Jason Gunthorpe <jgg@ziepe.ca> wrote:
> On Wed, Nov 25, 2020 at 05:28:32PM +0100, Daniel Vetter wrote:
> > Apologies again, this shouldn't have been included. But at least I
> > have an idea now why this patch somehow was included in the git
> > send-email. Lovely interface :-/
>
> I wrote a bit of a script around this because git send-email just too
> hard to use
>
> The key workflow change I made was to have it prepare all the emails
> to send and open them in an editor for review - exactly as they would
> be sent to the lists.
>
> It uses a empty 'cover-letter' commit and automatically transforms it
> into exactly the right stuff. Keeps track of everything you send in
> git, and there is a little tool to auto-run git range-diff to help
> build change logs..

This sounds a fair bit like patman, which does something similar and
also lets you annotate commit messages with changelogs.

But of course, suggesting different methods of carving patches into
stone tablets to someone who's written their own, is even more of a
windmill tilt than rDMA. ;)

Cheers,
Daniel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
