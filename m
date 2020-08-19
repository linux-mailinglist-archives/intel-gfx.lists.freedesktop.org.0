Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1CB249298
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 03:59:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B123589FC3;
	Wed, 19 Aug 2020 01:59:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com
 [IPv6:2a00:1450:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A85D89FC3
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 01:59:47 +0000 (UTC)
Received: by mail-lj1-x243.google.com with SMTP id f26so23592914ljc.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 18:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9exB8ZTcwLia2sz4SxcTMYrc7X+fUZoixqks6xkGbbw=;
 b=fhXX37S2dWTvZf3nyXGAek5Bh0VxvSnrhtiQ42Ig6uY1fIm1pe5CuLtSHIT3/GqQUa
 qFS8b+fxDiqwWgdHAgskDCpLTsKT0JY7EFGtwJ5rgV34b4dwVX8iUfYOgLUknC19IzWF
 2fMEsc3wskb3M4IdaNpMXE055qvEM3iUQLU+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9exB8ZTcwLia2sz4SxcTMYrc7X+fUZoixqks6xkGbbw=;
 b=IvOLhlFMQHxMyj6WdprNMUXfqnRjV/z284uuLWqQ/jyRM6Ons/NNqvDnstaviIYJgn
 2yIhRKB9byvVB7RfG96hIpdZ9pM9E4MBAUM2WtZzJO/MX6z4hLML+hmoZsoovCc1QA2v
 jvKD0O/zUrsCHyQ9yydK/VrJjindTSZp5G3t/9Z2YhNkE1PIitzRS+28vmX3nQZr0kM7
 tUi+mfeFoRQM6ItNfWKdYJzAJRWg7A4UznS4bnutMFNbz2haiQhv0dhBAkrzNn2+XNK8
 /JX/MUQ1WzSYOhDoNXlZ6Bxfw2kZSD6ekhtTwssE0G5cl0kyaFbOrGFGaToxK6xbEToR
 tkmA==
X-Gm-Message-State: AOAM531Gg0fNZOnpLw/+jMoL0+zy3ZXBvQTMNsqX2RZXYq9hhJcbukzn
 fgGc2eOKVbu1ZLmtQvTE0j4SUulzlqZuZA==
X-Google-Smtp-Source: ABdhPJy2QwmczarPjM/HOTOdBffJNUDz+vU8KjIHRrATXA8v93yqN1fV0UZ0DEA+TkxMfawEM8/7bg==
X-Received: by 2002:a2e:3615:: with SMTP id d21mr11432517lja.333.1597802385080; 
 Tue, 18 Aug 2020 18:59:45 -0700 (PDT)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com.
 [209.85.208.171])
 by smtp.gmail.com with ESMTPSA id o7sm6945041lfa.88.2020.08.18.18.59.43
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Aug 2020 18:59:44 -0700 (PDT)
Received: by mail-lj1-f171.google.com with SMTP id w14so23614717ljj.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 18:59:43 -0700 (PDT)
X-Received: by 2002:a2e:7615:: with SMTP id r21mr10334797ljc.371.1597802383309; 
 Tue, 18 Aug 2020 18:59:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200817161132.GA4711@amd>
 <CAHk-=wh6_eWwvpL=AhOeY0btf_dkpu+0joNzPZWfbBWgAeAhMA@mail.gmail.com>
 <CAPM=9tw8LVWsuA6m_nkUDgm00iz2txYRNZY0b0WWZbyiUVzLEw@mail.gmail.com>
In-Reply-To: <CAPM=9tw8LVWsuA6m_nkUDgm00iz2txYRNZY0b0WWZbyiUVzLEw@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 18 Aug 2020 18:59:27 -0700
X-Gmail-Original-Message-ID: <CAHk-=wg34bw1ude07nC_XCPOJHZ21-v6117p4574d5S7iP4gxw@mail.gmail.com>
Message-ID: <CAHk-=wg34bw1ude07nC_XCPOJHZ21-v6117p4574d5S7iP4gxw@mail.gmail.com>
To: Dave Airlie <airlied@gmail.com>
Subject: Re: [Intel-gfx] 5.9-rc1: graphics regression moved from -next to
 mainline
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 kernel list <linux-kernel@vger.kernel.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Matthew Auld <matthew.auld@intel.com>,
 Pavel Machek <pavel@ucw.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 18, 2020 at 6:13 PM Dave Airlie <airlied@gmail.com> wrote:
>
> I think there's been some discussion about reverting that change for
> other reasons, but it's quite likely the culprit.

Hmm. It reverts cleanly, but the end result doesn't work, because of
other changes.

Reverting all of

   763fedd6a216 ("drm/i915: Remove i915_gem_object_get_dirty_page()")
   7ac2d2536dfa ("drm/i915/gem: Delete unused code")
   9e0f9464e2ab ("drm/i915/gem: Async GPU relocations only")

seems to at least build.

Pavel, does doing those three reverts make things work for you?

               Linus
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
