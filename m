Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9871F003F
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 21:05:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86C7A6E96E;
	Fri,  5 Jun 2020 19:05:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com
 [IPv6:2607:f8b0:4864:20::941])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6863E6E96E
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2020 19:05:30 +0000 (UTC)
Received: by mail-ua1-x941.google.com with SMTP id b10so2502217uaf.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Jun 2020 12:05:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eLnWCJr1Or9xAomH4rXtINBP/naKmvdB33d5c6U3bj8=;
 b=bs7v0J7l2SBlXcQob6o02Opglc9AUTVhZuLyPr6P0arK5g0J/yx8Sxs+aXYPvFpE/g
 Xp8FzZ6Fd4zuqjUpE6wWGq5smHpvg51/NZOZRzaPgWnOO2GFpZspYNsAx6TCgJt/FXoc
 hJ8h5Mp7w0KG9bewscbhz4/Ve1TDIgVZc4YClrEei91td7A2+YY9ASroZRwQ2IlBPvWp
 gG8g58F3HTzT/Xl6L8e757osh195gt1a4Y9tMe64o5+HuU8nYYue4CqL/A7Ysx2zv+Zi
 VsMpdjrnr4wn1Dy5IomhGthR9q/L39wyIieoBbebE86cJX3wPHKM/Su8ImT68xJTi3Kt
 LlxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eLnWCJr1Or9xAomH4rXtINBP/naKmvdB33d5c6U3bj8=;
 b=l7d/o/8B9sx31HZwX/fb7L9VmZXfyu3QMBEujJi9ISTPyaTJsEW+uFFj3mkDO03XSA
 5BZ7Wucy4wRBnIb4E7U3BwzM0idksTOC8CNZ1toT007yG3/fTW0mhg9cNOMSeKRDLnNz
 Ho3IsC7CJRwdSuImIRujN63rN/bqZYsedIvjf+hOFnuVlOPsdcXNy4jAeEENAFakORot
 TTV8pfUg438RrGNkyvxfL8keJSNoSdw+z0NPLyKEH42vXbE7h+4Q8H+cUvZLVku65NOy
 jyXoz6cNP4YnvcQIbXZFigle0OzcG11wSka8SrshbjKaZ4hQRNsbvN7jcDYBGtbbA24N
 ECxg==
X-Gm-Message-State: AOAM531GF8/13l4T6t5aQ8EfUHA9R1mzXsiCwVMsFaqBb4vuyp1Z3VnW
 sP5SkscZ+rmNo4pB+hRsikpUiZNbh9rZljeUzv4=
X-Google-Smtp-Source: ABdhPJweRWup2Uzh2nBFQs1VHSJmB7V4R36Qf7JVxqX51RqqyL5kcNz+DPJwtSx7kgxkX/TJifLA+Vqm9mPH88xOqaU=
X-Received: by 2002:ab0:186d:: with SMTP id j45mr8951754uag.104.1591383929612; 
 Fri, 05 Jun 2020 12:05:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200605184844.24644-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200605184844.24644-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 5 Jun 2020 20:05:03 +0100
Message-ID: <CAM0jSHMk1PxtXcXkqZknTtw24tBP+Xv2LCMaZc1teKYAj9ehxg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Correct discard i915_vma_compare
 assertion
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

On Fri, 5 Jun 2020 at 19:49, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> As a last minute addition, I added an assertion to make sure that the
> new i915_vma view would be equal to the discard. However, the positive
> encouragement from CI only goes to show that we rarely take this path,
> and it wasn't until the post-merge run did we hit the assert.
>
> Fixes: 9bdcaa5e3a2f ("drm/i915: Discard a misplaced GGTT vma")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
