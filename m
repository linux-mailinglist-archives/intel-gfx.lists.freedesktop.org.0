Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 199C419DCC6
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 19:29:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C5316EC3D;
	Fri,  3 Apr 2020 17:29:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com
 [IPv6:2607:f8b0:4864:20::a43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 512A36EC3D
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 17:29:53 +0000 (UTC)
Received: by mail-vk1-xa43.google.com with SMTP id p123so2218643vkg.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 10:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Rzyzx1TXNm0F6TVAcN2nkquwDefttdClgpxGgwYnuY4=;
 b=g318A8eaQO51Pacqw83W63DKkbmfZ/U9xtZ0qSI0rMafD8wuIZlL/M6UPTbuY1EshI
 kG9OdWbhVsVHIRM6Zq5SUYbJiy2Ge1vGKHsYtOddxcfitDJS46pjy+1O9+tODbSGraVH
 MBwck+lUtlB/eEyGbs0b9887yessHZKqfkP9LxqG+bFhXgCq2GqNNJ7UyVbQiRr04PkU
 CPgGj1dcu7TlOqZTsuUVHrRyKocbHBLRg6Oxf9gnua06/+7W1JMZiIYDv7YnLnad7AEl
 jOmwzS1baBKNPH9e4phzR81L0pEbnUJhrXHrdOMt0pAZe8bQCIRXlgH1+WBGMhu6DZgl
 N5Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Rzyzx1TXNm0F6TVAcN2nkquwDefttdClgpxGgwYnuY4=;
 b=Xvt+80HWswxSrrvfMBxbcobHIyBIC8vbGSMRH8jvDkS/K+3zJ3dEjk5pDu1xJ8tMiG
 1IIsXPixNXi425HVluvCaS+F6GEI7TU1L7VBWs7pTnA06nRpyJ9s+DWVngTpcXtySKUP
 MaZJCSMJicHZQ+4a4gt8yOM7Rn+tBtgF/08dMV0b8D9eDWStGWzlXu+KR6rpIf+k3HIP
 gvNhxwfGpkBvnTDeIEjAu36wQh+sfj5ODcm2qmN4Hd3vgCTVF3EDyKno63xylFjGnR8s
 Z0lTcJUVXsC/A3XivpSwvL8aLlNT/dwxLMGGPNCXUt11BekPKkFP3Nr7PCYABgjArxos
 uvBA==
X-Gm-Message-State: AGi0PuYrC4Go+8LAPi5n1x/A9Km+Ox+CEfOEHKWmlFSWVZjv2fE3cbU6
 5seejABBndEP0Z5ch3aEc0ACkjkgaBulZ1kI52u4ypJN0Vc=
X-Google-Smtp-Source: APiQypJQkCyt3hjoo4nbX3QyMsMhi2y28f76KQjf1m++3YJ2QVnPShZPfr792M2CO37pTJ3YoIsEOffK/dkJjYwxuvU=
X-Received: by 2002:a1f:93d4:: with SMTP id v203mr7015742vkd.78.1585934992416; 
 Fri, 03 Apr 2020 10:29:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200403160951.8271-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200403160951.8271-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 3 Apr 2020 18:29:25 +0100
Message-ID: <CAM0jSHP-85pcsporrWf1n0+nymsF6+dpR=9zPm=Y=8TipsWnzg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Revoke mmap before fence
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

On Fri, 3 Apr 2020 at 17:10, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Make sure we revoke the user's mmaps of this vma to force them to take a
> pagefault *before* we remove the associated aperture detiling register.
>
> Fixes: 0d86ee35097a ("drm/i915/gt: Make fence revocation unequivocal")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
