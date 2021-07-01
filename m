Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2923B9006
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 11:50:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3CF46EACA;
	Thu,  1 Jul 2021 09:49:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com
 [IPv6:2607:f8b0:4864:20::f31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6644B6EACA
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jul 2021 09:49:57 +0000 (UTC)
Received: by mail-qv1-xf31.google.com with SMTP id g15so232567qvi.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 01 Jul 2021 02:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=I9OHqVM+7yGLBAD+/Dic3BLFaE3cCc6wOOs0cgRV/HE=;
 b=FJ22A4NpqAyOH6X0/uCE07ozMojK0xFO1WLrhP4GMgQoGRQwW+YLFowEgcGucvg2BZ
 zYlnlmYKBRWoYZ1htgJnT6fab7Zgo267VTC1+UEP2qmgHxh59Ttft+mjgDtoz5p3fq7N
 N/KeAHlxgZrWuz2fUpZ+Y7YN0tIbE+C8vQqjwr3AWxkB5Z61tw3S/9IxyxCqcC+7TTzw
 8ubU9JAWW+sFpFjY9YGFwTnujByLLSr6BRUHLaJ8HfEBXr4siPMXBRXzOSkOE1HAoihe
 3uZ0imGtoalEcD3KYXUn6UR5EZgp7HnWaQqOMFR68ZvaHMjlYOoWDdjybCf8vsyukSoS
 izCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I9OHqVM+7yGLBAD+/Dic3BLFaE3cCc6wOOs0cgRV/HE=;
 b=dtqnpINldMYk2YeykYimmHjlTL+/ClK8A+GOqJtW6164jE9qKdBs+Foajv8KlpIMZh
 TwllwpRIzPWsJXnEF0fPC0X8ozSdbzzRWR3g2ds0OE6uhQeQieHXS1i7y9yZwELK4Q5e
 jJI2El87vHuxmOGBismN/urzFq6s1YKwvzmyaoIL4WCur+schVm8fcyWEnH6iIH27Wz0
 84w4WybBXv+Q4SPiB/hHWETba2V8snBueIA/XBrQMCd0d9xfo9BD+XpsVXxaDHWZHgvF
 htbgYj03yfoDak9CfmOx6L97gjBLWqeNnjFETQi/2y4nu7j+Al0nkXeg2ixDyhi1ZZk6
 gKgw==
X-Gm-Message-State: AOAM532WO4Rmo+0f0ijov1FlQDlBdm6SMurs6SjmurPE2B0DikQmTS7v
 L5Bk8jhQgxnhmu9wr6xRzm9wYF0D3x1CcjImIKE=
X-Google-Smtp-Source: ABdhPJyBiEQq+Hdv2ifNDHqEFj92SPTPcZVD3x51TeLS27ieXLKVPuvoM7rDosBmUQjsioVAHXU3Tvn2cwJlkJ0w6EA=
X-Received: by 2002:ad4:5bc7:: with SMTP id t7mr41519714qvt.41.1625132996462; 
 Thu, 01 Jul 2021 02:49:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210628143829.22995-1-krishnaiah.bommu@intel.com>
 <20210628143829.22995-2-krishnaiah.bommu@intel.com>
 <CAM0jSHPc3mRcrk2Ezdnk85yAMFL1Kmxck8Ywz6gF+PBbgOJGSg@mail.gmail.com>
In-Reply-To: <CAM0jSHPc3mRcrk2Ezdnk85yAMFL1Kmxck8Ywz6gF+PBbgOJGSg@mail.gmail.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 1 Jul 2021 10:49:30 +0100
Message-ID: <CAM0jSHMKybbAZTDvp2EA733+c7mMWWfVCxtbaVr0iNO8K7mPnw@mail.gmail.com>
To: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/4] Klock work Fix for NULL dereferencing
 in i915_gem_ttm.c
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
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 1 Jul 2021 at 10:39, Matthew Auld
<matthew.william.auld@gmail.com> wrote:
>
> On Mon, 28 Jun 2021 at 15:49, Bommu Krishnaiah
> <krishnaiah.bommu@intel.com> wrote:
> >
> > Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > index c39d982c4fa66..97093a9bfccc2 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > @@ -590,6 +590,7 @@ static unsigned long i915_ttm_io_mem_pfn(struct ttm_buffer_object *bo,
> >         GEM_WARN_ON(bo->ttm);
> >
> >         sg = __i915_gem_object_get_sg(obj, &obj->ttm.get_io_page, page_offset, &ofs, true, true);
> > +       GEM_BUG_ON(!sg);
>
> Is there some analysis for how this could happen? The commit message
> should ideally have something like that. It looks like we already have
> a GEM_BUG_ON(!sg) for the lookup case, and in the event of doing the
> manual walk we already dereference the sg, so not seeing it.

So simply adding GEM_BUG_ON(!sg) here I don't think does anything. But
maybe this tool is trying to point out a potential bug inside
__i915_gem_object_get_sg(), hence needs proper analysis.

>
> >
> >         return ((base + sg_dma_address(sg)) >> PAGE_SHIFT) + ofs;
> >  }
> > --
> > 2.25.1
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
