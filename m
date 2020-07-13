Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC0A21CE9B
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2020 07:09:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EA456E15D;
	Mon, 13 Jul 2020 05:09:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D400D6E15D
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jul 2020 05:09:42 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id by13so11476310edb.11
 for <intel-gfx@lists.freedesktop.org>; Sun, 12 Jul 2020 22:09:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=W0Y7OJ6KqrxW0gvaOWgV55wnrxD3ggPV6UI7xm1qaqc=;
 b=rYoUwxo+TA31nmg0fWYqH7mQE4Rw0ZcsIh7eH4rY+aW5VKm40Z/TyXoW4hSjfVMJYW
 GurAgk7yJhQt/4bCxZMusES+1eHzxo15ZWu4UxdIh7zVSd/kclXcsI5oGa2ErEX7NnxO
 s7XnInvcgRFk9j9U+jNwA2o863iuqGY1fyEQj4rxBfxV/omxrR56AveQH9/UIP4/5ekm
 pQwfUjTYvjrr4NyWC+rVYgNJSR5ihMbNcgOPkJm7GtGbaM0148Dg3Uk9gQogHGSbc5I0
 MhO+JlibOwoRmgCHq+IAu/hL4iydhVi3vJq/fL0J4lQxDRJxht6i81V/NqV+gjqNVoeD
 jf6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W0Y7OJ6KqrxW0gvaOWgV55wnrxD3ggPV6UI7xm1qaqc=;
 b=CJqEd0it0xcO+KwbXQy7E0yCO9M58T1VaekusaXX5X/HWv/WoWSq+2cmOxuwetQNTd
 qavWSvyRaUUuCMMjK0yUVbL5bpYkv/Ouwjg2sPRkSZBRovc8vdHxIvZlrJQAIEmC0Rqw
 tWudkPSOFCNCXLaIi6eKa/d4DgLDZROUKJXJ0R1NTkSy3YeJyaLeKsVhYU4aJdetkeoH
 Ger4jp9dvgswTY3T+stXZXMpvX+dTNhL6b9lkGjrQhhA6tNkOioA4IvOFFBtBHiRyiws
 n0YNhc+Cf7jgNC2n34dFKrykkTYQnjFyKAjhownWFSDB190cvBZ68kMRVmAjLuDgNF94
 b4Vg==
X-Gm-Message-State: AOAM531U/2Zp0vcaTu6s2xgfKtbmhYEWXQHkXZeqrkCRyjGi8jynY73x
 TEf9iygmcwDjb1Z8yQhS2mt0TxhRvO79SoBMTQI=
X-Google-Smtp-Source: ABdhPJydWL7NiULiV2Eaa8mc0TcHmHiFAjRDwhKbgbZ70S9FIrFezEnSe0OhJVejep7z+36pShDyqr/2h6a1sqpRbdw=
X-Received: by 2002:a50:e883:: with SMTP id f3mr91176324edn.220.1594616981444; 
 Sun, 12 Jul 2020 22:09:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200710115757.290984-1-matthew.auld@intel.com>
 <20200710115757.290984-34-matthew.auld@intel.com>
In-Reply-To: <20200710115757.290984-34-matthew.auld@intel.com>
From: Dave Airlie <airlied@gmail.com>
Date: Mon, 13 Jul 2020 15:09:30 +1000
Message-ID: <CAPM=9tzvetxhBJBOC60ydOVcTN9ujtHLCODFNwGtONTDzuzwZA@mail.gmail.com>
To: Matthew Auld <matthew.auld@intel.com>
Subject: Re: [Intel-gfx] [RFC 33/60] drm/i915/lmem: support pwrite
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 10 Jul 2020 at 22:00, Matthew Auld <matthew.auld@intel.com> wrote:
>
> We need to add support for pwrite'ing an LMEM object.

why? DG1 is a discrete GPU, these interfaces we already gross and
overly hacky for integrated, I'd prefer not to drag them across into
discrete land.

same goes for pread.

You have no legacy userspace here, userspace needs change to support
LMEM, it can be fixed to avoid legacy ioctls paths.

Dave.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
