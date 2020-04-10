Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B18721A4B18
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2020 22:26:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2729C6ED46;
	Fri, 10 Apr 2020 20:26:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com
 [IPv6:2a00:1450:4864:20::143])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E5EF6ED46
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Apr 2020 20:26:07 +0000 (UTC)
Received: by mail-lf1-x143.google.com with SMTP id 198so2160873lfo.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Apr 2020 13:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VL5G+feLpx+wDhm+cmewwW7uP4NJGohhURRIHJyNA5g=;
 b=aIMiwRDsWaUzyY5lHMTHg1j4RJqrDex4FJ60YJcBuy+jRWovody2HZlxK+o2RIqO1S
 80/xhFpE6dAHEbmgGjIsTUsOachersAnIL8wwBbnEbFh9iwbx60G20XadHndczVNkHr7
 x3daGlDhxgT25W5BJwOrK6PI6Ue2SzcK/l8kA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VL5G+feLpx+wDhm+cmewwW7uP4NJGohhURRIHJyNA5g=;
 b=BYjxZ35OXm6ROjbglEgrFft0uZaWgE7tJPmKJfszMcLHLMv0i8FRLDhqGGJsGobhZS
 0sffU8H4y8sJHY3R0lUp3VF5TTQxgnGl5mhSUrZ6ut6wauWiO3Lo3l4SRKNPnwNsan9I
 RAckbDv97xaYmfD6iUFFPEdryvYlj4Q2jjfOnXZQzLft+dXVAyd/AnIyxY2Ey7Ybz+XU
 4K1iaxWqjmtiTuLypukZthQqeTz9sCxGgQJ6Zj1lgoTrVhJeILQ+pCHkMYfjghr66In3
 AyvFNVg4itbU0jfzZG19+0LozQ3gCpjZ3BU2LR+uD+5Fns9V1azI02lW1GDZn8LHKKiS
 4/nQ==
X-Gm-Message-State: AGi0PuZFqa1aNRx81Bi8zbHD6T0b7n0Q9B2xQeiJho7ipiaiBtVWHWdj
 ghjO9CASFm+geDwge8xFhiCFcoUzBGc=
X-Google-Smtp-Source: APiQypJhEcXhsyOGYzvnUjCmv423EwK83DXtYKBLX3JVX3+BBAS1+Ep0iaWP+ieSAz3HYDEo9mCIVg==
X-Received: by 2002:ac2:483a:: with SMTP id 26mr3504041lft.5.1586550365233;
 Fri, 10 Apr 2020 13:26:05 -0700 (PDT)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com.
 [209.85.167.42])
 by smtp.gmail.com with ESMTPSA id 23sm1739779ljr.32.2020.04.10.13.26.03
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Apr 2020 13:26:03 -0700 (PDT)
Received: by mail-lf1-f42.google.com with SMTP id l11so2169393lfc.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Apr 2020 13:26:03 -0700 (PDT)
X-Received: by 2002:a05:6512:14a:: with SMTP id
 m10mr3550865lfo.152.1586550363330; 
 Fri, 10 Apr 2020 13:26:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200407072047.GA18532@amd.ucw.cz>
 <158624426770.4794.6070200474948860768@build.alporthouse.com>
 <20200407074841.GB18673@amd.ucw.cz>
In-Reply-To: <20200407074841.GB18673@amd.ucw.cz>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 10 Apr 2020 13:25:47 -0700
X-Gmail-Original-Message-ID: <CAHk-=wixvbCie+EQ-vTPdyrzmdopM_BQc=uetneuSSa7PtCt2g@mail.gmail.com>
Message-ID: <CAHk-=wixvbCie+EQ-vTPdyrzmdopM_BQc=uetneuSSa7PtCt2g@mail.gmail.com>
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: [Intel-gfx] Linus,
 please revert 7dc8f11437: regression in 5.7-rc0,
 hangs while attempting to run X
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
Cc: Peter Anvin <hpa@zytor.com>, intel-gfx@lists.freedesktop.org,
 kernel list <linux-kernel@vger.kernel.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, matthew.auld@intel.com,
 Dave Airlie <airlied@redhat.com>, Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 7, 2020 at 12:48 AM Pavel Machek <pavel@ucw.cz> wrote:
>
> >
> > Beyond the fix already submitted?
>
> I did not get that one, can I have a pointer?

What's the status of this one?

I'm assuming the fix is commit 721017cf4bd8 ("drm/i915/gem: Ignore
readonly failures when updating relics"), but didn't see a reply to
the query or a confirmation of things working..

Btw, Chris, that __put_user() not testing the error should at least
have a comment. We don't have a working "__must_check" for those
things (because they are subtle macros, not functions), but if we did,
we'd get a compiler warning for not checking the error value.

            Linus
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
