Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9578427EF17
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 18:26:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBA7789D3E;
	Wed, 30 Sep 2020 16:26:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 274D889CD3
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 16:26:02 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id e23so1258516vsk.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 09:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nBFQDFAOmg+z2cI1aG6+TVTGyX6Ia20sz+ft9vRu58E=;
 b=f+nc7RkMqmF5R6BwldNuu4UwCDZ2cPum6XLnrJIGBuqDFdQCr4/I2uDpoL7EHfhfFe
 IYfMRjwvO3BthKQROSIv4dJqLnGaTrIzPgm8M7gx1iwXjTKdVg6SNsYT/haX3rh7gofI
 8yesw3tQztcuIGAJJUfZ2ZgW7/RLmws8oHgqp56eklaMj3JghummIr6UX1q5OWMooE66
 4VaNVpuX2JbQQzPRb4NNe6bju/C95oPUXTuojSfuL2BuzWnuRXvJp2MvcUV7lguWCa7E
 gGILeDNclDpaiNTpZFpNvoul6f1lhnFOLribZrV/156jW8C6jHmp4Inpth5RbSFJ3Eeo
 9pgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nBFQDFAOmg+z2cI1aG6+TVTGyX6Ia20sz+ft9vRu58E=;
 b=iKar2CG9WW+kKYkcFn3kJkIxmVFOUsHm/N2EC2u6M4eGry/dFLGiC4aLeoi6E/RHGu
 MaxIPaaULuc4OVo12se9+0E3fn6eGPj1/7STToNRc8s91QuDBY2S/2OWHNM2toBDiPTF
 uyABl2rDfrvm7mPeER9nOs2kqkdzyAK7RsXqk1xU9UZca9EhbaJvttuohYe/oK5fvbgz
 s34l5tJGxFZg64tp9KevLnfEU+RsGbchetsEHveoCYKxD+Br4X4JdcX52h6p5UhwEMqE
 QXSmr5bbJDdnBak28DBI/VKqAeBrZ5p5e9qS3GKpjBoJttJHX04zh+JlvcLjYhf7ap6m
 WtjA==
X-Gm-Message-State: AOAM530+bGVL8gvSQj3EZPqvpvyJ2lSUIcL6GKll7/Gj4XoPWb0fZAg8
 b5KrObS+DWwaRYWF/Sgo3ti5RtaqQ9+s+IWoBPHFLVUaEHo=
X-Google-Smtp-Source: ABdhPJxMK+lTKZ1DI9GkI+FBc8IFDqJ/KSUyaVPlfkD5adqTzPSU7KwI56RfXgmQWJd16OLN+OSm6QPRi1M5PSCTt14=
X-Received: by 2002:a67:b645:: with SMTP id e5mr2054584vsm.8.1601483161346;
 Wed, 30 Sep 2020 09:26:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200929082859.26652-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200929082859.26652-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 30 Sep 2020 17:25:35 +0100
Message-ID: <CAM0jSHNwqN=_=mgLpxq0p5O3dS1NSYGJQay6JP=MHGjGRRqPLg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Signal cancelled requests
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 29 Sep 2020 at 09:29, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> After marking the requests on an engine as cancelled upon wedging, send
> any signals for their completions.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Fwiw these were all previously reviewed at:
https://patchwork.freedesktop.org/series/81729/
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
