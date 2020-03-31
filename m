Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F25F199935
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 17:07:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F55F6E83E;
	Tue, 31 Mar 2020 15:07:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com
 [IPv6:2607:f8b0:4864:20::942])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8F256E83E
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 15:07:49 +0000 (UTC)
Received: by mail-ua1-x942.google.com with SMTP id l18so7794697uak.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 08:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VEnIRN7gs5winkgBmG4qJkOevSACutGdIkW1fdG63F8=;
 b=at0tpdqyNOMKLLAgdbB721uamkoaTjrVaOtlLjFfCFpU6/eJ3EwNFb2dYeWDbvgAyP
 ERsJXqZtpvKqpoyEWKoItRKTohB8NwYPOdu9ATwKiOWcCpxFQlkKDy4j56bXm5xuxw4I
 3S6f4xEMXBlPuomTDSquQ7pco1n0xXPkvn0cezogPBkhZ0uGbgtCpVvizGlNgYp+zEYo
 mAnUCNKN6VRhDbqDojBXYczPt5SlI6DcxjTK53vP7PI+L30owlq6aZmveV+sUJhZYRdq
 D89w+IXm76aAIOf/JZH0bu0RHJMD+Gixh+oQroTuukO+LjJYgLb0c6syR26TLOn1zSLJ
 9RVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VEnIRN7gs5winkgBmG4qJkOevSACutGdIkW1fdG63F8=;
 b=icWe/YAvCLkq/2z5d0RU5yEfxHuMcW9NKXJKJzGTyp4k2eu90RGBoIokdYIY/WdmVO
 qUvzDd8AIZGiAUDCSsAe91bBcNzwaDxQSupu41M9pV8YL9FiYVUSbN8Y3uj9Ss5yrF3N
 24CNy8ERBTUm8YTVjGbBXQ99TLBbPeXxV3dwFPVTGwbU8vYGp+JleEabb5/D5b4tbzfg
 Pc7mzkl/rxo6UNClY4j/BJdhdnpnpZb06mlQj9UWcH21Thjn8GQhSyLxLKbNcdawGUSW
 o+4LFagbaBWugB8hWqueSKkSZAK8R6CI4Gj5vkODDcxeqMGxUnm85clLFJTJ4tVUQ1Vj
 s4kQ==
X-Gm-Message-State: AGi0PuYw49JAGUekJHCVxerl1x1S4Nv/1vLWLZPguJbdMC4h8xWCRZR5
 NAReTLrx4X9YTMoXdXIWPFa3kEZK9DoseWSkJCo=
X-Google-Smtp-Source: APiQypLIBkM7sUv/g3FHK9Oj6OA0PuadczzwZDyh5gsNmWlTHJ3APUj0tNFmtEb3FoYLBjHDquAEVL7zpJUkXi6Dymo=
X-Received: by 2002:ab0:2085:: with SMTP id r5mr12497147uak.95.1585667269071; 
 Tue, 31 Mar 2020 08:07:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200331124202.4497-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200331124202.4497-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 31 Mar 2020 16:07:21 +0100
Message-ID: <CAM0jSHPOY4So442J1O0zW75cBwM4rCPm1CN0YVOMLMJhU=uhfw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Fill all the unused space in
 the GGTT
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
 Matthew Auld <matthew.auld@intel.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 31 Mar 2020 at 13:42, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> When we allocate space in the GGTT we may have to allocate a larger
> region than will be populated by the object to accommodate fencing. Make
> sure that this space beyond the end of the buffer points safely into
> scratch space, in case the HW tries to access it anyway (e.g. fenced
> access to the last tile row).
>
> Reported-by: Imre Deak <imre.deak@intel.com>
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/1554
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: stable@vger.kernel.org

Do we not need similar treatment for gen6? It seems to also play
tricks with the nop clear range, or did we disable gen7 ppgtt in the
end?

Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
