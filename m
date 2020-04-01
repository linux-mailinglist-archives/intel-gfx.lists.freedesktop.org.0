Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2357719B65B
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 21:22:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7AB46E98F;
	Wed,  1 Apr 2020 19:22:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAADB6E98F
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 19:22:33 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id z125so631270vsb.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Apr 2020 12:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NCmx807bB+8LvAejA57DhFdrY5/yDRUGxZNV3PsTGas=;
 b=NbAMTkV8yahcpSPZyQ50b1gIzjA25wWC2qjP0A28B6iqJQrQyNF6JT6xuWRr1T1tm4
 4oZaeSftFpvScP9e03aWBH+jsZeYho4SF6TlgSg6H6GRpMcfRRqKNN5x1DGjMBi09HuG
 JmuEzEd8dCnZ2wvafF77fwD5cNvFJKsr14WTaJK98V4MvSqprSMeeaKj66XZHJCpbiIy
 CEwPfUYtGsxnfC9Ik5oukoMtClUYmPITCBiocC2uxRqRWDTJ6NFxRbOFFyedtm9W9fQQ
 CqPzcRQqLs42fQ119FsIsAM7WRAkuM5O3p8Vs652mhmQB2wY1X1h2AuNGDbMQyP4ke5x
 A6zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NCmx807bB+8LvAejA57DhFdrY5/yDRUGxZNV3PsTGas=;
 b=Z80YBDJO9OKS+qJfdaTIl0zboyDM0ioW0OgdBYD2+xM7v6WLVLcbxr9pW8n/Jo5+Sm
 16GqVS2k5S+VoHFSjBm01d+ANuLTDpFIEb+orSRw5d7rsyHDDnI/xUA1Ao7p1622vMHG
 NgUm4bpnFVUgMJ8Wa6KeEhbHaLHCQq+wCTIIV2zQbMeW8fXZ+/qo/dSzcCvikmkD8s9c
 P5TjhM4jjfdbR+jVr4pNdeuG8JMsxb3ZX24v/dQyTvHLfuxyFrkuwWz3lXXi8oxbxoML
 hib1BD2iSfgHECG3NV7M0BbVmJNxtefldOWSjq9TKVvyGnafLBjbyia5aPonUDaAbiIJ
 7tvQ==
X-Gm-Message-State: AGi0PuaPa3em0MMMowJOr6+aGNOvLilpMieLByDNjdlScyh8OM5Xr9MI
 VsnpKhA35dF6x3bgIgnobI4rWfqObr+CfFFHlvEME9Vw
X-Google-Smtp-Source: APiQypKqFPWfKDjAWwA3qFn1IY7GgZfuMUadaoYKSjid+KqYtsrmOK4+uX205URRg3sYFqD9P5HtcinoYVA/u6+HWY4=
X-Received: by 2002:a67:647:: with SMTP id 68mr16297742vsg.23.1585768952992;
 Wed, 01 Apr 2020 12:22:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200331213108.11340-1-chris@chris-wilson.co.uk>
 <20200331213108.11340-11-chris@chris-wilson.co.uk>
In-Reply-To: <20200331213108.11340-11-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 1 Apr 2020 20:22:06 +0100
Message-ID: <CAM0jSHPRkaqTxAvWCiY_vTh3JHtPK6p4zA5X4Y3ops_LdUMpWQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 11/11] drm/i915/gem: Drop cached
 obj->bind_count
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

On Tue, 31 Mar 2020 at 22:31, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> We cached the number of vma bound to the object in order to speed up
> shrinker decisions. This has been superseded by being more proactive in
> removing objects we cannot shrink from the shrinker lists, and so we can
> drop the clumsy attempt at atomically counting the bind count and
> comparing it to the number of pinned mappings of the object. This will
> only get more clumsier with asynchronous binding and unbinding.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
