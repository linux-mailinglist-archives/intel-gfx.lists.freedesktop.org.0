Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7E42684D6
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 08:27:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD8A16E1B6;
	Mon, 14 Sep 2020 06:27:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E13B6E1B6
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 06:27:31 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id b12so16332065edz.11
 for <intel-gfx@lists.freedesktop.org>; Sun, 13 Sep 2020 23:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=BYsNL4iRNW4lxy/dV46FszXQsS14H9Kwf2YlJh6bqfY=;
 b=EsZD9r+TtseEiTfe/C8xSKQhNEH0DS/Wf+9b6lOpG+CLwoqrLMEjenmheVtfULTi5X
 vn+5aF5ztpQrs30GVX0owxg2gDk9sbn8l8BbQ9zP+3cxlvh/ujLYuHdRyE8IgrNPK6tp
 MS0iGGUgmz5Y2DS4vjlWvFjLr4R5f+2Mdudf0+GaTbTe/K0IIvXI4QRFSLMCBgkFTOUH
 KQrWHcFFGhiZy/kD0KsAlQcnzX3YDqQYT/BtlaVx9FZyqcLvhkM4aQM4Bgfz5W0Sd3Lq
 BPo1ZFib+xs/vtd+Dc7RZQ8RtKZdS/e4f7te7c1NSkqJyBfT0Gm/CA9HeULp5+4zHsJ2
 j9Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=BYsNL4iRNW4lxy/dV46FszXQsS14H9Kwf2YlJh6bqfY=;
 b=enVeSCzV0Sb75NjR90BS+AokfU6ZFjq1gNTphp0J/Ti83YzAOF17X7PBJ4n5+lvvny
 OrvoS+3YayyzPe/WlCUEXSoXcqfgtZXyOfeW2hLUeeosfXBRouuU6AzcKd1tLUb0iKcT
 RMwSMA9rLdXGiprx0b8PSDjqSvn8hmJrz42xjH7zllSkCEotZF7cf+xT18GDYlZpkq/X
 F6UwMNs1sq/azgEf+tUhWDhC0k40sge/c1ulJf1bt3ZJgMpzMj6NOobhVH9M5DJ9zEnF
 uwpumGNL78Oqte8XhmV7LIT1swFKiZk31N7Cp8hWqsLFLnf86ew0v2sSncmMxlD3K0Aw
 LScQ==
X-Gm-Message-State: AOAM530ob6CfJkoUI3Z7fGwMDG2Bvc29tQCb8bzpe96COtIzxv0fJyFl
 kGqrvGnKjggtGyW/XITL9uByVwLmR2X6Omsx6G1fGRKd
X-Google-Smtp-Source: ABdhPJwMU2j6InIit+o0gUYhxdtj64ewJZ0OiaVtla4Sqzsg3lwg/R57GKVHhV7khyG9OW1z7jfSODiceSPwFKA0jDg=
X-Received: by 2002:a05:6402:1219:: with SMTP id
 c25mr15952001edw.220.1600064849366; 
 Sun, 13 Sep 2020 23:27:29 -0700 (PDT)
MIME-Version: 1.0
From: Dave Airlie <airlied@gmail.com>
Date: Mon, 14 Sep 2020 16:27:18 +1000
Message-ID: <CAPM=9txRRjYJAtBRFw5euPtiaoRQCX_57q2v=POsMzB3zBfGPg@mail.gmail.com>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>, 
 Chris Wilson <chris@chris-wilson.co.uk>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] query on gem vma unbinding
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I've been trying to work out what path invalidate the vmas for the
following userspace behaviour, seen with iris/X.org but it's a bit of
a maze.

(address are fictional)
userspace allocates bo 1, assigns it a VMA. 0x1000
userspace allocates bo 2, assigns it a VMA  0x2000

Submits work with these addresses pinned

bo 2 is freed in userspace into the userspace cache
userspace allocates bo 3 in a incompatible VMA space gets 2 from
cache, frees VMA 0x2000, allocates VMA 0x20000
userspace alloates bo 4, assign it VMA 0x2000

When I get to the VMA space for BO 4 in the kernel, the VMA node is
not allocated so it's misplaced, but if you try and allocate a node,
the previous node hasn't been unbound, since the NOEVICT flags is set,
ENOSPC should return, but then does the GEM code then use relocations
and place the buffer somwhere else?

I'm just not seeing a path to i915_vma_unbind for 0x2000 vma, or a
path to evicting it.

Dave.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
