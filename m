Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 483D0219FBA
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 14:11:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9591A6E0B8;
	Thu,  9 Jul 2020 12:11:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD2226EA4D
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 12:11:24 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id w3so1543526wmi.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Jul 2020 05:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=76Pr5Imry6Y6+NQUV46pzWGDfBUpjBEUH8MLbXYDtq8=;
 b=PoAXES+V23Wh8eM1RMa1gjv7mPdB9CHvXYOhFE06xOw/lMwbG/HZ53PABoY8YaxIgs
 /ROsDCtb7CcSWl99Acc2lIZyw7vhas2ZIGL3Ki1AJDgM2rGMRUCDI/AexHfuV+OrjnL9
 topSv19nW8QIm2JsuBwLzSSpnHvj8hrxQXpLFQxSMcLqXF+fDV3ORupMLNE5TMh+r0OA
 Trg8XRN/fVokthVccXXppm7BJJEK3Jz9QMSYfIc/fW3D04yKmMZTU52iAFdp/4EmW3zi
 HGAW53jITOccHxT8InC62n+akeJnp3riy7+EacBJAzuqWSCYVf+xDufoR7bXUJg6y/oD
 z3vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=76Pr5Imry6Y6+NQUV46pzWGDfBUpjBEUH8MLbXYDtq8=;
 b=AOR41x7+iejvecO3+Nx18O+gm24v07+to2WQRMdm75TdcFhrTmEqJD+37T9js4eLW0
 Cfl8JySosAiKWq9D6hdG2Rz93/1KYVZiJkc6Mgkdy+7deHTYmDJ17b193iOFMLvgzTi3
 f/qpOn/Mlz9NdY0hsN4ZyNHS5z0dpXzJTEY9uQkwYw+uv+098j7KFZaBw8/g0hVHwKOw
 hXdde9yXMj1JZ6eMAV8ZesA6q3u+zy7ILeBR4IGettNV7i84gMo6gDwwcSV042wnXUT5
 fs66Bw3zdOD0B1kgwisQO8sYt80s26Sw8thojnGb2yOaYYzaG2HPhYA6DV/dRDXy2kKU
 AbdA==
X-Gm-Message-State: AOAM5317Nt03EbYHxmGkman/Ld5tyumOqdTnkledKFR8Nh3lQgzo2oRF
 HyYmWXiui2EZHSy6XVJxKFexFPmyMeumsos70ErYpw==
X-Google-Smtp-Source: ABdhPJxv2bOOBtwBiOGYgL5OIERVoKiGIkkOEtt5HovOBMNjbTSQatsMIYv39pPFy2HfkEl1IbeCaLvATVq/PpV25+k=
X-Received: by 2002:a1c:bdc3:: with SMTP id n186mr13815672wmf.84.1594296683336; 
 Thu, 09 Jul 2020 05:11:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
 <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <CAPj87rO4mm-+sQbP07cgM8-=b6Q8Jbh5G0FsV8rwYx2hnEzPkA@mail.gmail.com>
 <20200709080458.GO3278063@phenom.ffwll.local>
In-Reply-To: <20200709080458.GO3278063@phenom.ffwll.local>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 9 Jul 2020 13:11:12 +0100
Message-ID: <CAPj87rPtD04099=sBzL2jKN6NNFNnM-hH3qfOLL10nPoF==VbA@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
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
Cc: Felix Kuehling <Felix.Kuehling@amd.com>,
 linux-rdma <linux-rdma@vger.kernel.org>,
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
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 9 Jul 2020 at 09:05, Daniel Vetter <daniel@ffwll.ch> wrote:
> On Thu, Jul 09, 2020 at 08:36:43AM +0100, Daniel Stone wrote:
> > On Tue, 7 Jul 2020 at 21:13, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> > > Comes up every few years, gets somewhat tedious to discuss, let's
> > > write this down once and for all.
> >
> > Thanks for writing this up! I wonder if any of the notes from my reply
> > to the previous-version thread would be helpful to more explicitly
> > encode the carrot of dma-fence's positive guarantees, rather than just
> > the stick of 'don't do this'. ;) Either way, this is:
>
> I think the carrot should go into the intro section for dma-fence, this
> section here is very much just the "don't do this" part. The previous
> patches have an attempt at encoding this a bit, maybe see whether there's
> a place for your reply (or parts of it) to fit?

Sounds good to me.

> > Acked-by: Daniel Stone <daniels@collabora.com>
> >
> > > What I'm not sure about is whether the text should be more explicit in
> > > flat out mandating the amdkfd eviction fences for long running compute
> > > workloads or workloads where userspace fencing is allowed.
> >
> > ... or whether we just say that you can never use dma-fence in
> > conjunction with userptr.
>
> Uh userptr is entirely different thing. That one is ok. It's userpsace
> fences or gpu futexes or future fences or whatever we want to call them.
> Or is there some other confusion here?.

I mean generating a dma_fence from a batch which will try to page in
userptr. Given that userptr could be backed by absolutely anything at
all, it doesn't seem smart to allow fences to rely on a pointer to an
mmap'ed NFS file. So it seems like batches should be mutually
exclusive between arbitrary SVM userptr and generating a dma-fence?

Speaking of entirely different things ... the virtio-gpu bit really
doesn't belong in this patch.

Cheers,
Daniel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
