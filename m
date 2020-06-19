Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB68A201B6E
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2020 21:39:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14E886E8E7;
	Fri, 19 Jun 2020 19:39:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com
 [IPv6:2607:f8b0:4864:20::a44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45C946E8E7
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jun 2020 19:39:31 +0000 (UTC)
Received: by mail-vk1-xa44.google.com with SMTP id d5so2551711vkb.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jun 2020 12:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=et6U1VjwoL64LpTWPUHkqlwiVSuVxWVobG3YQUMELoM=;
 b=l+tk2VrhfB2znwjgUopE90QuvedVfHcgDMygN30BzG1m7wBlRnLS8vl3tCFyTuetXa
 3QOP9flYyvyGZNmokE26alI+X4h16osFesPkQQT+yL8nRQL/VnjUw/sGu6Pbn+t3H9nU
 HOPPKF8ZavhT52eSceuLtBe7qBNSH3ynRlLnQBGnXJo0j6calKMoEYdRw62PTK6ksl5O
 ZL69+WBk9931Twgi9c+L1ITNSX05ENW+tm51WkBa3umiGjX7JG1iWn5aG6CPYHED/N48
 DY28tH/kKY7/FRa4nTLQQzB+16LFN1hoRIqw3Pg9qvlT3d3Fox5Y5GUSYds4mfvR9Nob
 M/mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=et6U1VjwoL64LpTWPUHkqlwiVSuVxWVobG3YQUMELoM=;
 b=D9D+CjAnXPq2nA2cbYa7iXbYg8eFXRTq6pz3zcXcuu/k0CzZZhv9jmuJ+NsLQF2rpC
 mEQ/EwrObv4qYjH6DhBKHmd18FCyo41Opv5xomFQyMLRScxboS63fcQUDCPP4TbqSVmj
 nLqkCe1ExugHZLVseY8cct8kcITs2YfoejjOXAmOUPXJqpa1Jp8g5dR6yvzdxgJ+knlD
 sQaamxaJ6oF+qQXQS9eMwNh08iLg+06qV13tEH+ZoM7fUNLP/lS6bm0mVK3jTXucxEEF
 MXc0ErnYzWPAcYaRQvv29Zl79vT2QENSJ6leQH1RpuZABDGHDaTarwjOQQH1+X1Ipd9L
 x0Gw==
X-Gm-Message-State: AOAM533CkxXuRAHba/M/On5db/jeP8Qi3P9ftEtP7jDxX22cD3b2JKKX
 LPy6Vz+awDzGi7A7Q4Oa9GrGNzG0lgRdMTWaqU7j96d8
X-Google-Smtp-Source: ABdhPJxJJ+HITTLvyVvUH+MSG9Rd38assmvoShxfRXPEF1IrxxQocBCRvKtLs69RRJR4TQQZwMXNoHW0dDO+5fW7HHI=
X-Received: by 2002:a1f:9e8a:: with SMTP id h132mr2043525vke.14.1592595570440; 
 Fri, 19 Jun 2020 12:39:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200619143106.10356-1-chris@chris-wilson.co.uk>
 <20200619143106.10356-3-chris@chris-wilson.co.uk>
In-Reply-To: <20200619143106.10356-3-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 19 Jun 2020 20:39:04 +0100
Message-ID: <CAM0jSHNZSp7zjpcdfEcL8=_hAm39d+oxgyBv8KmUk-+fte9K+g@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gt: Replace manual
 kmap_atomic() with pin_map for renderstate
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

On Fri, 19 Jun 2020 at 15:31, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> We only emit the renderstate once now during module load, it is no
> longer a concern that we are delaying context creation and so do not
> need to so eagerly optimise. Since the last time we have looked at the
> renderstate, we have a pin_map / flush_map facility that supports simple
> single mappings, replacing the open-coded kmap_atomic() and
> prepare_write. As it should be a single page, of which we only write a
> small portion, we stick to a simple WB [kmap] and use clflush on !llc
> platforms, rather than creating a temporary WC vmapping for the single
> page.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
