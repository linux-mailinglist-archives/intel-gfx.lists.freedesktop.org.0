Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC34F2FBC9D
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 17:38:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CF816E423;
	Tue, 19 Jan 2021 16:38:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com
 [IPv6:2607:f8b0:4864:20::733])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEE666E423
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 16:38:31 +0000 (UTC)
Received: by mail-qk1-x733.google.com with SMTP id 186so22415507qkj.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 08:38:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hSrTW0K2AmyDa3/FHEPEuDsGuQvU/IZ/9DV9Qh4c19M=;
 b=AYysoi+iy2N2oFSLmvhBCqT43mTOegyZ2Rrj3WzbHlWkPPIsv95Wwu42PaP8M172Op
 idal84jgYT5HwQd4qMR4BeL30BGH2/smZOwsVtepXsyrl/mxuLe/OmkurPD7gUlvJhfL
 +NqHreGXSOhIQB5wrZQKFQPXpjfxYAnSpu19y2PGUTRXBsdMexTLw5OQAfEOI/m23KVY
 R0C2bkScxqM1Y79Ub4bp85ZvjDajUOd8gjy7+BcK5Y/kHHV6AZnP6EsQ87zlC0xpo41+
 qZP+2LnCZEsaDMIjx8oUp930PGw4yP/yzxc73H7ptx6V7eZeuto2f/WkoMG2X1h5IQnR
 reiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hSrTW0K2AmyDa3/FHEPEuDsGuQvU/IZ/9DV9Qh4c19M=;
 b=LbHQ0zwAyvlOkhUSipxIpWKcOw3/nhokIXmnupg7HtZKPAMPY9ToAlT0YBlkgM0h7v
 zYQfVZTEAa8JHQ+DPtGgHPHhZW4JvX1LygYepUVQIzaclCuiBA70+c8+ubJLv0t/wdrz
 Nni7DWX+A58dx+4kXpY0EtdoTsu1OIIO82ado7K5QJzneXlLm9rr20icHjpI17DnQdrc
 vJSRJnu6+0WVY77H5Ecl9lriVFTldicpw2zzn649Y8MWBiCOyIF5BtNCNs6Mlmv3RDz4
 JCwOkKvOqTzVkuLGO127SmvvItMpruG1g1YLqfl1ys6JSBlkCZ7jeIvTCqYNdCvqHc/N
 RPiQ==
X-Gm-Message-State: AOAM533Y5EP7OqeTqhbIodGGAxYC2C/Xfz6D8AV1CuSrfRKlP9wXMaUi
 +y5M2GlJpH0AUjuTwvEyJk2dW+9j2YH/kW+Yu51yJNDhcbA=
X-Google-Smtp-Source: ABdhPJzI/qSxmXoVt9PSrxwfSNdYbGp5z1L8dGVe1IESI2kZwbgeBUM+WfVJOMUVDt8e0YPDShGY6pjO7VOm1WLDp1k=
X-Received: by 2002:a37:a8c4:: with SMTP id r187mr5012582qke.481.1611074311070; 
 Tue, 19 Jan 2021 08:38:31 -0800 (PST)
MIME-Version: 1.0
References: <20210119144912.12653-1-chris@chris-wilson.co.uk>
 <20210119144912.12653-6-chris@chris-wilson.co.uk>
In-Reply-To: <20210119144912.12653-6-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 19 Jan 2021 16:38:04 +0000
Message-ID: <CAM0jSHO_bTSEJgkEAzw2_a3=OYvi1tJKQ3Vew9RrJbCZkfUTyQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/gem: Drop lru bumping on
 display unpinning
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

On Tue, 19 Jan 2021 at 14:49, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Simplify the frontbuffer unpin by removing the lock requirement. The LRU
> bumping was primarily to protect the GTT from being evicted and from
> frontbuffers being eagerly shrunk. Now we protect frontbuffers from the
> shrinker, and we avoid accidentally evicting from the GTT, so the
> benefit from bumping LRU is no more, and we can save more time by not.

For the GTT evict case, where/how do we currently try to prevent
accidental eviction for fb?
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
