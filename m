Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2583BE3C0
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 09:39:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C83336E82E;
	Wed,  7 Jul 2021 07:39:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com
 [IPv6:2607:f8b0:4864:20::231])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E91489781
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jul 2021 07:39:15 +0000 (UTC)
Received: by mail-oi1-x231.google.com with SMTP id z3so1530245oib.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 07 Jul 2021 00:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o/RIK2p6R5352EJr0jlKhZexi003NVTCfgbrullBtoE=;
 b=IcQGnTkr+wH8LDPGV6YK0A30oNYbgCRAomP6Xzpbidmfyqf8uhJbVN7hXaGXZGAmYi
 l3ijM7sKZYsZ5n78VpgUyeNV22hGpeQIDuL8AuW3eKhq+fyJo+G1sB7QNZuJrwaHXcIo
 SNpebown6kdK35lhDHlJb8Ju9E78qJYgIBghs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o/RIK2p6R5352EJr0jlKhZexi003NVTCfgbrullBtoE=;
 b=KudeBiHpHlKaDGGMOHfeXQ5PldF90nIUUCrbRM+yeMKnZGa/BMCs8T1joa+uiHZ1ew
 2lZrw6K3EJjNAB0isUXuBZ4dL0ohIwVhwMsWNFpVDxRqeVj1HOEdAXvXFghQ2yyEzUCS
 3DjejiuVqCNC6ojed65Ok9zRn36/vnKH7SeT9mbDc1TrYNYR71m7y11QTi92InaFrGBD
 bg5aPP9xqDw0CUPUFt6zfqgzV4KgSPh4QuJpTL0jRenayd9oQzWeg6EhQ8ZrmbxasOHs
 7Thy712896EJRbOJC6sivFKCAsJGeRlPSdG6ogYo9FepGwQlyfs/j5dRjY2Sf4KTqtiJ
 1v7g==
X-Gm-Message-State: AOAM531aOEcW5JLcbNODZzsQgkxahYN9NSDX5d1XFbUfRCRR9uwlqY4A
 LIKrn5BaWANSTfVsQFSaNJ5fCrsm7Hzv3Fj5/xwqQQ==
X-Google-Smtp-Source: ABdhPJxRlaE0d/9QXM6ywPq/tw0nIik2U0Mg3kIwLw9XFCFu0phUxnZRoKHx8rqHzAAlqcefYZinDjx9we3gc0x2wQM=
X-Received: by 2002:aca:eb43:: with SMTP id j64mr3811242oih.101.1625643554548; 
 Wed, 07 Jul 2021 00:39:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210701202427.1547543-1-matthew.d.roper@intel.com>
 <20210701202427.1547543-4-matthew.d.roper@intel.com>
 <CAKMK7uH4+WgjJ12uYd+3Jb+0fcUtPDhy3R2HLsMQhYF1uHcMow@mail.gmail.com>
 <20210706224827.lv6sjchfl735vzkf@ldmartin-desk2>
In-Reply-To: <20210706224827.lv6sjchfl735vzkf@ldmartin-desk2>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 7 Jul 2021 09:39:03 +0200
Message-ID: <CAKMK7uEEkhDzTP=AWYqM1Do_qkmS_vUiefRqPkUnuFspWD=e_g@mail.gmail.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH 03/53] drm/i915: Fork DG1 interrupt handler
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Paulo Zanoni <paulo.r.zanoni@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 7, 2021 at 12:48 AM Lucas De Marchi
<lucas.demarchi@intel.com> wrote:
> On Fri, Jul 02, 2021 at 11:21:10AM +0200, Daniel Vetter wrote:
> >On Thu, Jul 1, 2021 at 10:26 PM Matt Roper <matthew.d.roper@intel.com> wrote:
> >>
> >> From: Paulo Zanoni <paulo.r.zanoni@intel.com>
> >>
> >> The current interrupt handler is getting increasingly complicated and
> >> Xe_HP changes will bring even more complexity.  Let's split off a new
> >> interrupt handler starting with DG1 (i.e., when the master tile
> >> interrupt register was added to the design) and use that as the basis
> >> for the new Xe_HP changes.
> >>
> >> Now that we track the hardware IP's release number as well as the
> >> version number, we can also properly define DG1 has version "12.10" and
> >> replace the has_master_unit_irq feature flag with an IP version test.
> >>
> >> Bspec: 50875
> >> Cc: Daniele Spurio Ceraolo <daniele.ceraolospurio@intel.com>
> >> Cc: Stuart Summers <stuart.summers@intel.com>
> >> Signed-off-by: Paulo Zanoni <paulo.r.zanoni@intel.com>
> >> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> >> Signed-off-by: Tomasz Lis <tomasz.lis@intel.com>
> >> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> >
> >So I know DG1 upstream is decidedly non-smooth, but basic
> >infrastructure we've had since forever ...
> >
> >Why was this prep work not upstreamed earlier with some benign commit
> >message that doesn't mention DG2? There's zero DG2 stuff in here, this
> >could have landed months/years ago even. Bringing this up since right
> >this moment we have an internal chat about trees diverging a bit much.
>
> history isn't linear and this commit, the way it is now, didn't exist 1
> month ago, so your timescale is misleading. has_master_unit_irq was what
> we thought we would need to share as much code as possible.
>
> The biggest reason to fork the irq handler is actually not DG1 nor DG2,
> but XEHPSDV and without those changes it would basically be a 95% copy
> of the gen11 handler... for someone not looking to what is in the
> pipeline, it can be a perfect argument to "consolidate these into a
> single handler".

At least in the past we've done tons of upstream refactor prep for
exactly just these "prep for future platform" reasons. Everyone
understand that's necessary and generally trusts us we're not just
moving code for fun. But then 1-2 years ago we just kinda stopped
pushing prep work to upstream because everyone got way too busy with
other things, and now we're paying the price.

I mean even if the reason to fork it is a platform we can't even talk
about, the fork patch should go upstream way ahead so that there's
less patches in internal. Ideally platform enabling is zero code
shuffling, 100% just plugging code into existing neat places.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
