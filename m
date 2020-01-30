Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E5F14E0A0
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 19:13:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 743BC6FA15;
	Thu, 30 Jan 2020 18:13:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com
 [IPv6:2607:f8b0:4864:20::942])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 592656FA15
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 18:13:50 +0000 (UTC)
Received: by mail-ua1-x942.google.com with SMTP id y3so1527106uae.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 10:13:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fGynNbMUv3V2OxmIBHlMrtSGt8/RQyByv4FxtKL0xSk=;
 b=Uui9+iB9rHSqrGihKMngnOszFdBhtdjLLthgpLfm5y3TtOdQymug5JiSnRh56G9+hj
 okv3B8QVk640WlV88WNdv3ONrUeLyyLPkP6whr0y6thoGF9NzZaToPdk3/M3YgKN6Zir
 fw47MgzuruImd7EdFGBTOKsjqCYGK5fEX4BkLjkCxmCPh2PPW+Ea7a+ZKLGBeUGFfIKt
 69vf/XxfZtrqy/+9ZtcrANd31MgaxwwWbp4Ojejn3NV72OgXqiZIAGU2W6A19CBLmx75
 LQx6UsBI0BilW53uVmHbo/g6YMMmBQ/bNBQk1riUCGloatQHBHvI4kIkxTI5k0IPekt0
 /Vrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fGynNbMUv3V2OxmIBHlMrtSGt8/RQyByv4FxtKL0xSk=;
 b=EXsv/jRNnM6ZL02dHAbgjbO72Rwg0hRcb9zfWQE5WRnGPITZzHEtK0V41a8CB2qvD9
 0wEzP3Nk7Ji9vdYSHSyVeum6/EbiPaRB+Vqp/gUYp4gIR3Az+KyqvZtDvyWYZmS4P5QG
 AX82PjmWByOtnRUacVZPpkCF9NjLQuXtNKC6pHI7UYpBnb1u5JUu0YuwubdjMYizfInl
 OnKobHqWAh9ECjug4UxBdyXr/VZwx6kJcFDrG7zzEhATjoZ4IV0Az+VfVai7tny1bntf
 pqr3+flE8EOLLcBlrK2etfXNC9dSuqmT/oyzoEzdPVZ4mzGzFeMFYITl2O/G+gJDt+UA
 o0Hw==
X-Gm-Message-State: APjAAAWg3laxuk+ySL6c23Zo9FzQuFWVUATUGNhqkF0WfyK5pnyPWcNY
 tbik5/M18iih+QYqxKrH7iYiSwXSYZ5CgfTtLkg=
X-Google-Smtp-Source: APXvYqwnkdRJ66jEGAMCuOdge115JOImZoVOe42n4dvbmeKYmwrt49Y15A7ZYfpfH5VIxUDgPleXvNRl7laYBxj+WlA=
X-Received: by 2002:ab0:1c0e:: with SMTP id a14mr3191193uaj.141.1580408029512; 
 Thu, 30 Jan 2020 10:13:49 -0800 (PST)
MIME-Version: 1.0
References: <20200130171710.1996964-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200130171710.1996964-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 30 Jan 2020 18:13:22 +0000
Message-ID: <CAM0jSHM3vPi2Ka8BDJSzrE4MuZ_Btj9EXh6Eh18=z7ZD2eSODA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Rename
 i915_gem_restore_ggtt_mappings() for its new placement
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

On Thu, 30 Jan 2020 at 17:17, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> The i915_ggtt now sits beneath gt/ outside of the auspices of gem/ and
> should be given a fresh name to reflect that. We also want to give it a
> name that reflects its role in the system suspend/resume, with the
> intention of pulling together all the GGTT operations (e.g. restoring
> the fence registers once they are pulled under gt/intel_ggtt_detiler.c)
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
