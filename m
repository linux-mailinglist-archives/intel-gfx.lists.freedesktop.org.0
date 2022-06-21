Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 138A4553037
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 12:54:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 774AB10F375;
	Tue, 21 Jun 2022 10:54:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com
 [IPv6:2607:f8b0:4864:20::f30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A176410F461
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 10:54:26 +0000 (UTC)
Received: by mail-qv1-xf30.google.com with SMTP id i17so13041005qvo.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 03:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4vk9G3CeHtcJIICsiPZEZjx/ezy8v+zcvqp4WHt3WlQ=;
 b=KGiDXGS6od5yymxKFPolHqtc/JmuHo6AC8WG+alagCt4tvdDJpxaY0XtwAGvcDGPx1
 3w/TwcB5pDOb5fFYuXNKJuGKj6Gf1w9rXtcYtXKATxCGdERFPOka4dwjbnmAkU/pCb15
 h68NIQI5kfVLRh9wOJHDS+l5KJORBrKZBnOd7jvaCHjgRqlmxvd7XJY68cHU9fJX781P
 00XaF08xMOSUPxtzaniRCSMe4hlhk8i/frOD2YNQBDzR3s4uF0Q2bnFByWp941GOvo71
 aNQDfKbMAQLI4DUEqtUB5/SJkRt7guIJKFAMqb1jastpP443jg5BSDcP/oKEVm+XKSgu
 uqRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4vk9G3CeHtcJIICsiPZEZjx/ezy8v+zcvqp4WHt3WlQ=;
 b=rCuw2mwWwwr7MpwLqPK+OvJpxZpkrol7afaDykwJKQ9f81uUyqPpltB29LHvPxNdvC
 zuZytlOnUPy1Hed6dgrYUDG/MZo0syAW6vk39B14LscWPd0PlUpgbp03BonofJV+bmY1
 qs/Nlk9F7dNkx4GscY+sanhBEXI6GlYb8YipaBRuhfy0CjwPN5Y5YgY6TLDBZVEwa20L
 D+Gxgw4Le55k8i/5KUlqEGgAFy9Fa5qWAKt0lpsl5JNrTTlki/zPXN7KFkZumERRlyt4
 00GByDGsytEzWoV98V1HcHq0aK562ysItSKgokp+oCYWp0UxPT/BO8cEMupRcI/gqm6v
 nHlQ==
X-Gm-Message-State: AJIora+Q604G+WKBrzwYfw7skHK9kXTfC/GnPVZ2q/iyyIZGQrAm2dSK
 faANJBlO9+JjRH59zsUntx1rneJJEGRlbCP6gs0=
X-Google-Smtp-Source: AGRyM1uhp0MnpoVBCCVkwf+wJGnSz9RP+p6jYnpspGkgZXtB0RlIlxqy+U1JxQz/z7Dnc0DAx/HQDyy8EZ5/MMp/6oM=
X-Received: by 2002:ac8:5cc2:0:b0:304:e740:5c64 with SMTP id
 s2-20020ac85cc2000000b00304e7405c64mr22955850qta.614.1655808865691; Tue, 21
 Jun 2022 03:54:25 -0700 (PDT)
MIME-Version: 1.0
References: <20220610121205.29645-1-juhapekka.heikkila@gmail.com>
 <20220610121205.29645-2-juhapekka.heikkila@gmail.com>
 <CAM0jSHN+eOh_iMGT9wAOGKNCegjnrKA_5Cen8LE5NfBcZhD0CA@mail.gmail.com>
 <CAM0jSHPY8ehnuFe05QZEset1-10wfk_i0+63iYFEWXmwnugtaw@mail.gmail.com>
 <8cbeb646-9052-6f05-201c-ba00f565691b@gmail.com>
In-Reply-To: <8cbeb646-9052-6f05-201c-ba00f565691b@gmail.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 21 Jun 2022 11:53:59 +0100
Message-ID: <CAM0jSHON77u9gFYf_+Y8DpSfUheOWHUYfSob2n7HYDt6sHoz9Q@mail.gmail.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
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

On Mon, 20 Jun 2022 at 10:38, Juha-Pekka Heikkila
<juhapekka.heikkila@gmail.com> wrote:
>
> On 10.6.2022 20.43, Matthew Auld wrote:
> > On Fri, 10 Jun 2022 at 15:53, Matthew Auld
> > <matthew.william.auld@gmail.com> wrote:
> >>
> >> On Fri, 10 Jun 2022 at 13:12, Juha-Pekka Heikkila
> >> <juhapekka.heikkila@gmail.com> wrote:
> >>>
> >>> From: CQ Tang <cq.tang@intel.com>
> >>>
> >>> Display might allocate a smem object and call
> >>> i915_vma_pin_iomap(), the existing code will fail.
> >>>
> >>> This fix was suggested by Chris P Wilson, that we pin
> >>> the smem with i915_gem_object_pin_map_unlocked().
> >>>
> >>> v2 (jheikkil): Change i915_gem_object_pin_map_unlocked to
> >>>                 i915_gem_object_pin_map
> >>>
> >>> Signed-off-by: CQ Tang <cq.tang@intel.com>
> >>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> >>> Cc: Chris Wilson <chris.p.wilson@intel.com>
> >>> Cc: Jari Tahvanainen <jari.tahvanainen@intel.com>
> >> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
> >
> > Although maybe consider putting this as patch 1, and then reword the
> > commit title/message to be more like "drm/i915: extend
> > i915_vma_iomap()" or so, which then becomes a prep patch for
> > supporting the dpt fallback to smem. Otherwise it looks like this
> > patch is basically just fixing the first patch to not trigger the
> > WARN_ON(), which seems iffy IMO. Each patch by itself should ideally
> > be functional.
>
> Probably easiest is to put patch 1 in as last, it's the final customer
> for these two other patches. This way if someone will end up doing
> bisecting there would be nothing interesting to see with these.
>
> I did finally get ci to look all green after last weeks outages. I'd
> guess these patches are ready to be pushed but I don't have commit
> rights to drm-tip. Are you able to help with these or I'll go bother
> Imre or Jani to get them into tip?

Ok, if no objections I will go ahead and push this to
drm-intel-gt-next, with the tweaked patch ordering.

>
> /Juha-Pekka
