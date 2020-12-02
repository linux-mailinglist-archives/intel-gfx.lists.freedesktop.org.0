Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA032CC27E
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 17:38:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFDBF6EA49;
	Wed,  2 Dec 2020 16:38:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6737D6EA49
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Dec 2020 16:38:48 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id z1so4534711ljn.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Dec 2020 08:38:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/r2tFZbkOg1h7uEfvk4g4tAOPJdrv/SffdWblASl1E8=;
 b=hZtHl0YkuNjpIjVDvRmc6ocPXGpgLwxEuyKxrW52CMhQZVsBEEmiegH8gztlDdP/IS
 l4k0nb0h2zYQa/p+s14nsx2n5jN0TtsmbE2Uy84vZhRPmcFG3euY1iotiW3CVzzD7j1O
 FMG1ZBmeFEfUli/JuoepZm8tlF263/kx0I3m9rkn89KZ8iryzYdht8sdPWiK2kXi70Q5
 xhY8fXth7NqSEe938k4poFGNNebtDq69U0wQB5YuZzRdXTVKO2Nk6iJv6W/gKHSWBf83
 RMpqYXE3UG5+fUNAl4phkjfCswqJEW96c+EzAX58FZyV6ZHN/WF2PQYupOQVY2DMxT+I
 CLew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/r2tFZbkOg1h7uEfvk4g4tAOPJdrv/SffdWblASl1E8=;
 b=adxoAWHAsYlZ/y0fdEIpsmoEkrEHtYxtwZ5yMEq22zOHfQ3DQbQuffA8dImVTgBg2j
 kb3wX3Vhfc4hYVed4AVghTUWTDKM1wC4dS9A82NjfrYyHsBIWl3Dq08jyJJmC2bhm5f1
 omvUnjQvEKbaWlRKU9PiqKuVaFaNDMCLnbJ49hVOgBWjCQepDVMeRpT0AnjRd2r3hiG/
 3avMhrQrytjL70/o9B6+Vj/d0bR+2BeKchQtdUcqcass9h2WNPQxi/jHogku+6spTlSN
 CYJCod1QlppDtXL5MmvgU+s3j92eUGlLhBqKd8dguuN7B9n61mBYTqfq5clKcEW8e87u
 I2oA==
X-Gm-Message-State: AOAM532gwJWDSntd8Y2oA46EorVWosD2h9UGJp1VhmQI9zhOVKX7HEnh
 grs8hW8YouwXAh8Lr8xcreLa0erxIfcAGML/O6zZhVt3pBo=
X-Google-Smtp-Source: ABdhPJz6c9QLgGH/cjRuV/cUm8xUoRtDyWyYLZqvTGXXKyYP6o92SsLAUTuYTfD2rxhXGdH1khcV2msJm1ZcCaNCdNo=
X-Received: by 2002:a17:906:d930:: with SMTP id
 rn16mr582876ejb.412.1606926574983; 
 Wed, 02 Dec 2020 08:29:34 -0800 (PST)
MIME-Version: 1.0
References: <20201202155139.15143-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201202155139.15143-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 2 Dec 2020 16:29:08 +0000
Message-ID: <CAM0jSHN2Da9FujYbY5H=TvXBBtO1RqMOcofPOOPfxaVGTYziNw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/gem: Limit lmem scatterlist
 elements to UINT_MAX
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

On Wed, 2 Dec 2020 at 15:51, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Adhere to the i915_sg_max_segment() limit on the lengths of individual
> scatterlist elements, and in doing so split up very large chunks of lmem
> into managable pieces for the dma-mapping backend.
>
> Reported-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
> Suggested-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
