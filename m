Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 418B96344DC
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 20:50:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B33F10E45F;
	Tue, 22 Nov 2022 19:50:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAF8510E455
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 19:50:35 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id z18so22082629edb.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 11:50:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=IK8SDZ/jZDyLJEsuxR9xFz2htJfz3q3gT5kjSS+oWR4=;
 b=Ikboz0C29tilFV0hIGZnqAFHVvjMHxJd7InyRfuuUNzPVIQJVPxl+VrH7NhH/ytm4G
 RWtJ1mNRaTbK+4nxOJGwbeGTQd2rBQaylYCLcPR4p+roHyKFHeGySiCf7z6+9reUN/KE
 Z35zUt6yUcHWUuMbzpCmLZk16iNI+2Px8gy2A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=IK8SDZ/jZDyLJEsuxR9xFz2htJfz3q3gT5kjSS+oWR4=;
 b=yOuwayuE7osWT/LLqig+FOJEnfQzIo662leL3V6uLMQaXTvU5gIM/6UN47MtaPE9Pq
 RT1s5vx5yjmrGZZKdAYE0X3z8N7lenkYpJci14SSkW/BY2TcK4EP1M9wxE9lgo+dRjFt
 m3YZ/26BH6Z5nSSEt4wikUTI85UXatquxTo0CLN+b75LSJ6aUVbySjp8jbYsp9iRGJY/
 Se2PsrxmUGrmAYnxXABAXLPHwC2GrQLB0jTrtQtuXwuez52FGRjxdJXCsWWZ0IbeGU+p
 Ukw4qGfvfcvw4Wv0RLwsmNjcUfnIlQN8w+Je/bXwWGuFZmOc3ABTRJc6BRE2TFB7qRXM
 U2+w==
X-Gm-Message-State: ANoB5pk1Ib8sDoQ2253ffpyqSv8NdOopwUm/SS0OhFT7J3eDmJv3vzJn
 ik/s53zqAuF91sMFmhBBLD31AFErWEZUzKtyHQvqFQ==
X-Google-Smtp-Source: AA0mqf7XUsswVblhhNThn/Wsg7nr0LQvlQk2QY03yhXme2ouSPPWSkV9vt2apDAQVVRdw98Fl27y+13qz8Y7qsxsG1Q=
X-Received: by 2002:a05:6402:28a9:b0:461:f5ce:a478 with SMTP id
 eg41-20020a05640228a900b00461f5cea478mr22342384edb.304.1669146634381; Tue, 22
 Nov 2022 11:50:34 -0800 (PST)
MIME-Version: 1.0
References: <20221122170801.842766-1-daniel.vetter@ffwll.ch>
 <Y30PDdsvHIJo5YHR@ziepe.ca>
 <CAKMK7uEccwYTNwDYQazmZvTfBFQOikZt5A6BmegweyO-inKYbQ@mail.gmail.com>
 <Y30Z4VxT7Wdoc1Lc@ziepe.ca>
 <CAKMK7uE=8eqyh9BKg_+7B1jjMi6K4wrmPyi9xeLVvVYFxBgF9g@mail.gmail.com>
 <Y30kK6dsssSLJVgp@ziepe.ca>
In-Reply-To: <Y30kK6dsssSLJVgp@ziepe.ca>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 22 Nov 2022 20:50:23 +0100
Message-ID: <CAKMK7uFQQkG82PzuSTGQTnN3ZNps5N_4TjR5NRWo0LaJkEaNew@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] dma-buf: Require VM_PFNMAP vma for mmap
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Wilcox <willy@infradead.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 linaro-mm-sig@lists.linaro.org, John Stultz <john.stultz@linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 22 Nov 2022 at 20:34, Jason Gunthorpe <jgg@ziepe.ca> wrote:
> On Tue, Nov 22, 2022 at 08:29:05PM +0100, Daniel Vetter wrote:
> > You nuke all the ptes. Drivers that move have slightly more than a
> > bare struct file, they also have a struct address_space so that
> > invalidate_mapping_range() works.
>
> Okay, this is one of the ways that this can be made to work correctly,
> as long as you never allow GUP/GUP_fast to succeed on the PTEs. (this
> was the DAX mistake)

Hence this patch, to enforce that no dma-buf exporter gets this wrong.
Which some did, and then blamed bug reporters for the resulting splats
:-) One of the things we've reverted was the ttm huge pte support,
since that doesn't have the pmd_special flag (yet) and so would let
gup_fast through.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
