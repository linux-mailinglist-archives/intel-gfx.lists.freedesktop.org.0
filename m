Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D339546898
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 16:43:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5FEF11343E;
	Fri, 10 Jun 2022 14:43:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com
 [IPv6:2607:f8b0:4864:20::733])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AFFB11343E
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 14:43:04 +0000 (UTC)
Received: by mail-qk1-x733.google.com with SMTP id n197so12955470qke.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 07:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=boTNt2Xw8jjN8T8+yRUGLTe+U/l79yWjFLi+7ePBJIc=;
 b=SoisKUBCJM+MlWwSlyXjD/gRWEhet5eRcKrSZcNf190jhyJmrzqTl+R8t+0v7zZIiV
 rh5q7pbTLDoBFhpPYyR5d5vkjY2Q3NcEvMR+BWsvBqy8FqtmWoJmL5Hbzkt/klvRgSX2
 9eO8vnN6C0eYfdTOLxfaRDRBDWrOeZ+c70NocPmIyfh/DppGpx/Rhvparm0Q8DHyw839
 1hSqaYiDRxEBafqyQpzG6IhMQoL9kphC4p/V6RqOVDSnAa9UY8qwQYtoEsbe7nNXXjoR
 eyxWr65d6ziXswLYQf4smogS8cmg1m9sW6SxzrU9jGW3lEXl0fm2p2NlI6do9o6+zrO0
 ZDwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=boTNt2Xw8jjN8T8+yRUGLTe+U/l79yWjFLi+7ePBJIc=;
 b=ONzWGo1mtkic7JHAoc7PTTN1op7h7CUtFJ1s54CPLWJzBYM5cKn46GrlZX/9ciHJZg
 EmJ5Ioea5gVCW78BBUyRUKsxg+pry7sq4aNZYxC8BTAAAJ0Datva9WVLxe1LaMH1sHyz
 ku525sjMLV5xi63yIcU2JBxMCr2+Zl9J2k4o1+a9505DSBQvBLPkiNYyG+SFMNi2NvIA
 AyKxfG+d1gZ5A3XAeUz6WCTCVnxNkDEejWHCA5jnIi61VXIV2FVDkJGw+6Q80DNc1QEm
 QWz8FPLPpFw4NWGsI1lilq4bKq+yiigovSCe7gEzNfxU+1LUvjMb+VyHhua9CV8i5F4x
 s21Q==
X-Gm-Message-State: AOAM532I2TKvaCqaEZQO0gH34/6rkgCSKMRf01YlqR4mn059zF5YrGCp
 zLUtr3MlxYkaw7ey1mhIVxCECTUjHAvvnWovYCo=
X-Google-Smtp-Source: ABdhPJwiTbgeBgO+hPn9Odw20K6YOXxbi9PxNeU3Wdgfz2Hw9LITNqE3f/5GkRHI42VYsNUz5ZePZFdoFpeS2zo/Pqw=
X-Received: by 2002:a05:620a:884:b0:6a7:347:386 with SMTP id
 b4-20020a05620a088400b006a703470386mr9312828qka.7.1654872183496; Fri, 10 Jun
 2022 07:43:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220610121205.29645-1-juhapekka.heikkila@gmail.com>
 <20220610121205.29645-3-juhapekka.heikkila@gmail.com>
In-Reply-To: <20220610121205.29645-3-juhapekka.heikkila@gmail.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 10 Jun 2022 15:42:37 +0100
Message-ID: <CAM0jSHP4s8z3rgMRMfsnUSXCfZ0g8uNYvzTh1hpfgcoQGFsn3A@mail.gmail.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: don't leak lmem mapping in
 vma_evict
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 10 Jun 2022 at 13:12, Juha-Pekka Heikkila
<juhapekka.heikkila@gmail.com> wrote:
>
> Don't leak lmem mapping in vma_evict, move __i915_vma_iounmap outside
> i915_vma_is_map_and_fenceable
>
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
