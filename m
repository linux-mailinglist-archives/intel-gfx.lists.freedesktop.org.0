Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F70B5468D9
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 16:53:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44E9010F54F;
	Fri, 10 Jun 2022 14:53:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com
 [IPv6:2607:f8b0:4864:20::72a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1358F10F54F
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 14:53:49 +0000 (UTC)
Received: by mail-qk1-x72a.google.com with SMTP id p63so2866251qkd.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 07:53:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=upknv2K3QmwDNPAZYxFarNiZBHKC7K0IKFPMx8jfco0=;
 b=RN1iJY2gf8oJLp0ClziPoexlKUqU8NB71PVHy/pkElxEbvOHaKHmotnXG0WGTy31Kr
 NkjXpjHr0QqBg9R9ch3SInBm4hOYzriM08TWDY8gCQ9W3TzF47uCW457jz/CBv5YkE47
 rTCcJxCIEQic9aLloHAvb+rE/N+vnjO5m5SycOvKyfcIxI3sAhItoofKWHkDMSDqiApz
 SdTypQmq9bRkyzwL5JdjQHujUeqKYDuwTg5wRdSmCuX0k/szIySvUigj9VGMgt0EnG5i
 NnH+UGf5TdYmET8nDH3Juy+Lr/RdimlohntyEP8HGuim2HAtSuqOudIXCvavfxb8X0dp
 KOYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=upknv2K3QmwDNPAZYxFarNiZBHKC7K0IKFPMx8jfco0=;
 b=3XIog5fxNLbc68b6L4UAbepI12SWk0uIwtL/rIIndkIDkM7uphMm/QlJuFh53gUttS
 d7AyFOzKiyqSKadJmkupOM5lBTUk2NT3aEa8SKF97tvA3fiKY/m7R2eJKZSmU2+it3J+
 GFUvLdYM8drAxTmV3mwQsGwppZd2rtCaUQVHOQuCDB7xEJXfh8YBStjTuA4AhGJf0Wxd
 9aBKRzSwaxym/ri2KenmZb2o9D3y/aI66wd+nYP7OE/XPHlBkkfuIfayLGUpvuJlRDBj
 R/FLOLSUxPSgEXieDzFMrB54N+9sbsIc9QFHgHZxuskX+iQBbLu2FosbstmrC3pRlJrW
 RkuA==
X-Gm-Message-State: AOAM530iV+LqiAkR54vVVrNa+0orrRF5waqvXyR/r+zl5O1RezE3X1DA
 LJu81gwwHEBRldSlebo49riQgRE4YcIaQv7I4WbdalqvO/U=
X-Google-Smtp-Source: ABdhPJzjjZ/KOwpOf7b6wEcTEzgsOd9RKyZZnwgKMQ5mzq5N4mtoEo2+dtAGi4gloRNYT/QTDPuGbKaVAmA/Kfz+inA=
X-Received: by 2002:a05:620a:2a13:b0:6a7:3e08:abdc with SMTP id
 o19-20020a05620a2a1300b006a73e08abdcmr4064865qkp.593.1654872828140; Fri, 10
 Jun 2022 07:53:48 -0700 (PDT)
MIME-Version: 1.0
References: <20220610121205.29645-1-juhapekka.heikkila@gmail.com>
 <20220610121205.29645-2-juhapekka.heikkila@gmail.com>
In-Reply-To: <20220610121205.29645-2-juhapekka.heikkila@gmail.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 10 Jun 2022 15:53:21 +0100
Message-ID: <CAM0jSHN+eOh_iMGT9wAOGKNCegjnrKA_5Cen8LE5NfBcZhD0CA@mail.gmail.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Fix i915_vma_pin_iomap()
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
> From: CQ Tang <cq.tang@intel.com>
>
> Display might allocate a smem object and call
> i915_vma_pin_iomap(), the existing code will fail.
>
> This fix was suggested by Chris P Wilson, that we pin
> the smem with i915_gem_object_pin_map_unlocked().
>
> v2 (jheikkil): Change i915_gem_object_pin_map_unlocked to
>                i915_gem_object_pin_map
>
> Signed-off-by: CQ Tang <cq.tang@intel.com>
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> Cc: Chris Wilson <chris.p.wilson@intel.com>
> Cc: Jari Tahvanainen <jari.tahvanainen@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
