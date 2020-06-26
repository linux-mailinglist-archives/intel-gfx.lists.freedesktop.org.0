Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B2620ACDA
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 09:15:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E86FA6E3FC;
	Fri, 26 Jun 2020 07:15:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 917666E3FC
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 07:15:00 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id f7so5414392wrw.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 00:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=q6w2UM/+vgXyg5okkmzCqiiDI37cTPLSO3u9ow/w0U4=;
 b=akLhmu/kEPfwj2VNwREraHna+swgndirITEQOG8Jm7h8YwNxjpUA3KtjfYOYaS68Qi
 BsUx/uKH+HESmlYOIArFEZ0FjdYb+wtRfZJtJy/5m+NztoWvTTigLjhWp9mH8WSQMWp/
 zClcpwrlG/RmYIQ6UPdzFPot2esdhMrxoBRAE8vJlPMpLCBeEGI5irUKlXTeK07yF6Hk
 Vy2rulJyay8oSsvRGavTMfpsnOxk3sjfxgtqP4dAE/1UoT8YAY8Z0Xh5MucwMbAKXAW7
 dIt0VObK9AP7gBaP4GX7M3I4ZEvRXKXBKLBsTfO47f86VH0VZuqX5Rl/RPNYi75bNcBt
 KGWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q6w2UM/+vgXyg5okkmzCqiiDI37cTPLSO3u9ow/w0U4=;
 b=b/VOdyMb022LHur7vmAFNeIQvfmabgHmjvz1/OdYB1j3/X/0wrygpFd4E4u2lBZ0kX
 Q+0lXigkliGrE8Y4+vftCNo2NujIXMqKkxvA5cYUloX3ZMEZyAIWahCDJA3kvCCOgt3I
 IzEQSzc2kaAogUACP+wzjpYGvNPDUYUAsfipdGUmRCgfUCnxetU9Yd19ttnjmJIm5dXv
 9xYK2NyhiJjWx82be05dnPq22QvFIaW2KqYdMKJOIZEyjfc4HqYy2cQuBwtVRfHuspM8
 nFsw0IKyEt2RMvhigzPG+hIlel3ojeLuAKcCyZuc5vJUGYO1jAusONyZCVz8Unc2sWag
 F1rA==
X-Gm-Message-State: AOAM533EswBjS0HWF2Vd0Z0d2UvoDAQdasDqft7VsLw17gyZdR3v4Cok
 oZS1suwUdwn+p8uYUsQeUxK7iMAFWkvG+j7rl3E=
X-Google-Smtp-Source: ABdhPJzbaFcoKrLM2TJ43EYX86irHEkrTzfvflSiGSKTo92VxSyc9WX+AiNHTzLqcC8lIkyHhX9C9syaZ1Axql3cZsA=
X-Received: by 2002:a05:6000:128e:: with SMTP id
 f14mr2354969wrx.276.1593155699241; 
 Fri, 26 Jun 2020 00:14:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAPM=9tyx209haPSokJhA_qOi1PRhoVNPX3MTyNHsq68b=Y5W2A@mail.gmail.com>
In-Reply-To: <CAPM=9tyx209haPSokJhA_qOi1PRhoVNPX3MTyNHsq68b=Y5W2A@mail.gmail.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Fri, 26 Jun 2020 00:14:47 -0700
Message-ID: <CAKi4VA+3oEPXnH-EKgKkxohf=7+jrDPy-fNfX6QvGBj7QsNYLw@mail.gmail.com>
To: Dave Airlie <airlied@gmail.com>
Subject: Re: [Intel-gfx] DG1 VRAM question
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
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cc Matt and Daniele

On Thu, Jun 25, 2020 at 9:38 PM Dave Airlie <airlied@gmail.com> wrote:
>
> I can't figure this out easily so I'd thought I'd just ask, but does
> DG1 have VRAM > PCIE aperture, I'm not sure I've see any mention of

We'd need to go via lmem since there's no mappable aperture. There are
a few patches in tree for that
(see e.g. 54b512cd7a6d ("drm/i915: do not map aperture if it is not
available.")) but more missing.

Lucas De Marchi

> mappable VRAM vs non-mappable in patches, is it planned to just thrash
> the aperture if userspace ever ties to map too much of it.
>
> Are pagetables stored in the visible RAM space?
>
> Dave.
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx



-- 
Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
