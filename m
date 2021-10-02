Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD70741FD44
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Oct 2021 18:50:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF9CD6F4F8;
	Sat,  2 Oct 2021 16:50:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E6276F4F6
 for <intel-gfx@lists.freedesktop.org>; Sat,  2 Oct 2021 16:50:03 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id i25so51733222lfg.6
 for <intel-gfx@lists.freedesktop.org>; Sat, 02 Oct 2021 09:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Csv37OXbbDiSxP1I27uaunb1tkkC28qGypuG9vbumlM=;
 b=f7QX1paUZLa6LbxjYrSrbM9jlt9yPMwzqTWrBad1TWIoRDz21l7WZy5J5Le2KzRQYy
 dg3j4YES0SMxOB8VBaDved+Q7R/c8muwjQwl638BnkC6zXtX+ZRK12dyoZgsWvzTnFhg
 wXyg6GfRhS+egEE51QHkoI6kOutXpxzaZGuHE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Csv37OXbbDiSxP1I27uaunb1tkkC28qGypuG9vbumlM=;
 b=BZ2YeAiLzTibuLikeknx+FIifMenj+HJTQC+ktk3Fmfn6BVfodVGJB2QTgr9OqFnOC
 NcZjHJ/2bdlJE4jFAFpnYb6nMughHfa8z5hq+eh7bx8SctdZAPXMoJ3YNN0imgBe4L1y
 GqKS1/BvLcPnjjJSFPIChneZuNLv8oedSHIJvhWWRbesSA83GGe84CMU70uaYr89um75
 kyhmFxwVLzYDUH7dkNX3JkL4AF3OVa3eBt+hB59g1YDABZPYZ77HfUipE2ZEKSkY/PpH
 7LmFpqbZzI6l1YfQ9ig2cTu4xBAEqugo0hT9MQOjb6ezSIsrGPvMd5M8T9AbEdTZweOO
 x5vA==
X-Gm-Message-State: AOAM530n3lRdnS6lfgXmznBZOC5MJhTxq6qGrlLL0+tSVsc8TCEcKhBl
 12Z6jc2wikyoVb6u5EXU39UcF4HPyOG3CxpRH58=
X-Google-Smtp-Source: ABdhPJzNtSyGbd7dddTMFMtRLtwZSJccYyqe91ZkCeqXhmeu7eCcZRaEz77Klf+dBrUMh1MCA8CxpA==
X-Received: by 2002:a2e:85c2:: with SMTP id h2mr4738117ljj.367.1633193400980; 
 Sat, 02 Oct 2021 09:50:00 -0700 (PDT)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com.
 [209.85.167.54])
 by smtp.gmail.com with ESMTPSA id w24sm56760ljj.64.2021.10.02.09.49.57
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 02 Oct 2021 09:49:58 -0700 (PDT)
Received: by mail-lf1-f54.google.com with SMTP id y23so16832731lfj.7
 for <intel-gfx@lists.freedesktop.org>; Sat, 02 Oct 2021 09:49:57 -0700 (PDT)
X-Received: by 2002:a05:6512:3d26:: with SMTP id
 d38mr4500647lfv.474.1633193397167; 
 Sat, 02 Oct 2021 09:49:57 -0700 (PDT)
MIME-Version: 1.0
References: <20211002020257.34a0e882@oasis.local.home>
 <259ff554-76b8-8523-033-9e996f549c70@google.com>
 <20211002081750.7eec92dd@oasis.local.home>
In-Reply-To: <20211002081750.7eec92dd@oasis.local.home>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 2 Oct 2021 09:49:41 -0700
X-Gmail-Original-Message-ID: <CAHk-=whJsD3RaqpmAMv7yjpnQqrEuXvibXZZDY7f-nzO+PvULg@mail.gmail.com>
Message-ID: <CAHk-=whJsD3RaqpmAMv7yjpnQqrEuXvibXZZDY7f-nzO+PvULg@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Hugh Dickins <hughd@google.com>, 
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, 
 Caz Yokoyama <caz.yokoyama@intel.com>, LKML <linux-kernel@vger.kernel.org>, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Matthew Brost <matthew.brost@intel.com>, 
 intel-gfx <intel-gfx@lists.freedesktop.org>, 
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [BUG 5.15-rc3] kernel BUG at
 drivers/gpu/drm/i915/i915_sw_fence.c:245!
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Oct 2, 2021 at 5:17 AM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> On Sat, 2 Oct 2021 03:17:29 -0700 (PDT)
> Hugh Dickins <hughd@google.com> wrote:
>
> > Yes (though bisection doesn't work right on this one): the fix
>
> Interesting, as it appeared to be very reliable. But I didn't do the
> "try before / after" on the patch.

Well, even the before/after might well have worked, since the problem
depended on how that sw_fence_dummy_notify() function ended up
aligned. So random unrelated changes could re-align it just by
mistake.

Patch applied directly.

I'd also like to point out how that BUG_ON() actually made things
worse, and made this harder to debug. If it had been a WARN_ON_ONCE(),
this would presumably not even have needed bisecting, it would have
been obvious.

BUG_ON() really is pretty much *always* the wrong thing to do. It
onl;y results in problems being harder to see because you end up with
a dead machine and the message is often hidden.

                  Linus
