Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B061233845
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jul 2020 20:17:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5C656E944;
	Thu, 30 Jul 2020 18:17:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEAB46E944
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jul 2020 18:17:32 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id 1so9786197vsl.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jul 2020 11:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ukLnV1evoadrd7TNI70HHysxDvwsZPh0DenIYedovbQ=;
 b=BMOXNma0qguoFRI7oX4nyWaPxGlLeAgjT91+QBQTCL6YPv8d/nBbQ//nBwuQiNgwAZ
 C6p4WICith3yEy5+r5mu4Ui4K+yGX3dNR9f0pGQwiBXA+hrThZV7CEykNIF6VyNntiir
 fh9gJ6O4vay+SMz53Qaq/3VhdnfieaUfPKSl7+1fOb5swZn9qXWQzzaOw0dTuEhO4DQZ
 GLxCZe1J0eVfqka26uBwrE+g+4ujxN4akrOxzlYqlLelPEBI/FjN6L/XZEbmUaXJDzV2
 6ecAIeNYojTxAFngQWNpa+hzKhhNAcxjwdNSpP5Nq4qLfD3PVmkzlFqQqHxmcKW7l85b
 /XPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ukLnV1evoadrd7TNI70HHysxDvwsZPh0DenIYedovbQ=;
 b=CEcN/7HqJBb4ohqmPVY5sm4Oj89+nhncsxczlmwZDiS3pAtjEiYpdxtSj7x7HeM/WV
 tfDbM2GCO8TaQDZTA62LL/KdCaQaMYU56S2nzM8BOuOj7gZyOnXP0jZvhAft8pCESrdJ
 xzjaU0OR5YQhj3PwStCERdVLvegEwE3MtiSNP/mo9GTgzuGJIjrRRjz9SuT4dSsH6NBR
 UVlpjJ+UC1UBwrUu6Qz3rFRUtOWdDmJt+FIIad90qG4vUi4E2tGZhhLclAuL6g+QBsUu
 REd8H3skQamfSotwB67SHhq7kK/3VLrjZ2Az38Dq8koOCgPdu5eVtSNk6k6RCKgdwcWJ
 7eSQ==
X-Gm-Message-State: AOAM533ZZXPJ7BW2oU9UQdbb4zVpv2LakaffaJVee5M4jq+M5EEZi8nK
 jlea/Exf+YCpcD+DyGRPWAEt+68RSaOq9YfVBp0=
X-Google-Smtp-Source: ABdhPJybV4EqdG38w4KX4gzOwC2V5hhWRg8gVMj6Zrnx/LdTQ01yxzMY5K3shsqUT502hS/AyxT3bC74En8RPH9RvPU=
X-Received: by 2002:a67:7d81:: with SMTP id y123mr571264vsc.178.1596133051815; 
 Thu, 30 Jul 2020 11:17:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200730164757.25979-1-chris@chris-wilson.co.uk>
 <20200730165231.545-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200730165231.545-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 30 Jul 2020 19:17:05 +0100
Message-ID: <CAM0jSHM6emOUzCVOKfx2byxTg9Z6r3690DomXPgqvq-S_R-AHQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Support multiple pinned
 timelines
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

On Thu, 30 Jul 2020 at 17:52, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> We may need to allocate more than one pinned context/timeline for each
> engine which can utilise the per-engine HWSP, so we need to give each
> a different offset within it.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
