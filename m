Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA6D2535D7
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 19:15:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC2296E27C;
	Wed, 26 Aug 2020 17:15:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BBF86E27C
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 17:15:43 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id r7so1349284vsq.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 10:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=REaTehmhboYnMbL2bdtp9dndQp3r5vWDjV7Xywab6cM=;
 b=KNr6AlaDZVO8I/wc2PZbtqQHi7L8sme+Y1QtNgDSEnMYj7NQYl+yOpnRvNJRuue5Fn
 lT2R1NDXdxcybZgBtJ5j3KsZ7xlCqq6biWlAT+VkUkc9YwGcNpXJbvJQ8N/HbRwUM8VY
 GNjhzyKskC5Nzk9E8dOeVtWr4ICG0crnFOd6iNeLJxDJjYYbGR2U970ca0yA1mi8neIk
 elkjLDadGEnbqOoMpWC4zM1SiLENQYp2M3gSEPFwuGE757uXdSzLVQ+kd2+HPFoe0CrI
 koJg/wXzzYdORz9Ndq2nJACa8rQO0ZyPpJzSDmNi6tJZ82vO1L2vy4p7Nx08dYqFZUhS
 3pHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=REaTehmhboYnMbL2bdtp9dndQp3r5vWDjV7Xywab6cM=;
 b=exDCduwAxFRiZOwIN5vfEfImtpYecTL0f2TqXoY402IyFPUzDnNhzM/fq9pjrzkXYg
 bDPNZaEAx/RJeum+Os7n3iotAJ+W8Pb3Ayg/Tkh4lhPyBR7zrhB0hCLyqM/4wKVpPyyP
 ELwwCNOsCgoZR8qdZZB6ETnzZu9gCDhXmblPS5gCXwRMdGM29iMWO/4dd+kA/Keb6ZB9
 LsIugmWY/H8DLtdELmige4dMrpM8wX/fRYOp35mfhA5BqiHLVfhgb/VA83c0z/BDqnS9
 lm9hiP7vptyevNabYTyKZJKzFwWaJ/BhO/CHUAViBYP8s/KjnNE+Atg9s0eRhj+wtnZw
 JWfA==
X-Gm-Message-State: AOAM531Nn5I3GR7IQh5pb1mZGqTRIsdzla0BpFF/CiS+mnl8z7RWgKPR
 Diw9VYzuoyPMsHr3AXSNsG8rfEn7/z4jtoyBijC/dQNdTyk=
X-Google-Smtp-Source: ABdhPJzZQ6bTXEAzdinurERiwH4HDbA8aeoTC36BsF+yfJCj4BwRwcLjc6xVi9L13tbGiOd8dXJkhMv3+Fb/fG7TCPA=
X-Received: by 2002:a67:1702:: with SMTP id 2mr4962720vsx.6.1598462142265;
 Wed, 26 Aug 2020 10:15:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200826132811.17577-1-chris@chris-wilson.co.uk>
 <20200826132811.17577-4-chris@chris-wilson.co.uk>
In-Reply-To: <20200826132811.17577-4-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 26 Aug 2020 18:15:16 +0100
Message-ID: <CAM0jSHPaUFND-XbQcaOzTfLg+BeZmBZc=jGXui+x6U66Wqe7Kg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 04/39] drm/i915/gt: Clear the buffer pool
 age before use
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

On Wed, 26 Aug 2020 at 14:28, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> If we create a new node, it is possible for the slab allocator to return
> us a recently freed node. If that node was just retired, it will retain
> the current jiffy as its node->age. There is then a miniscule window,
> where as that node is retired, it will appear on the free list with an
> incorrect age and be eligible for reuse by one thread, and then by a
> second thread as the correct node->age is written.
>
> Fixes: 8080ffd81600 ("drm/i915/gt: Delay taking the spinlock for grabbing from the buffer pool")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
