Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 122A141FD4F
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Oct 2021 19:11:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ACF46F4FC;
	Sat,  2 Oct 2021 17:11:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com
 [IPv6:2607:f8b0:4864:20::72a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4169E6F4FC
 for <intel-gfx@lists.freedesktop.org>; Sat,  2 Oct 2021 17:11:01 +0000 (UTC)
Received: by mail-qk1-x72a.google.com with SMTP id d207so1783351qkg.0
 for <intel-gfx@lists.freedesktop.org>; Sat, 02 Oct 2021 10:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=9q20jCB/8sn5bDHr3IGoBfkQutiabiPZ1w2nFE/nDSs=;
 b=kBfN4KYQe3lN2gGnf1sqQi3F8SPDvASfSfkugkvx8qSUwrk4gk1ljDBSYst+w55Mfq
 K2ZI8Eb2C7DxUqfxZpmPMKdtLzPwtEQSErlYUPAZ/tNNcjPYdXMzyVi1WiJUonUNmoMS
 +pgyEUe5f1xt2JhXUfl+TfXJ6WUD+NKqeOSOA2MPj1ZVkoudFYS5zMUopskqYS74+WgY
 sPmxoWNyA7+KW9YVuAbP4uEvVDG2JiAPuKztNc5g+zp+lp+dj7jUdRm6ELD0j43fGdMN
 PakbOTfPt3vGL3bV+VYH2kfKdh99GpKGc6ciD9FmCUO2JUJbAytLct3OUpYw5ln3Uy71
 wCoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=9q20jCB/8sn5bDHr3IGoBfkQutiabiPZ1w2nFE/nDSs=;
 b=p9D6x/XHxtX1Sy5NbAIdEttAcILS08AZeucBOGuKrzWVg5PtZegfAsnY9Qm1K6L9qt
 d1k18pAvyqH0sISHhTibN0nG/uvZlkri+c/uJ0et+/SsZ3zZqF8rQqODrAdybBC5noGR
 1u54EB6vUlv92gmsCY6fDuIVY15nzYbdz1nyPI6hv0VMbygIbPi0Kqkt3hOc/LKk0SaL
 0rBlO45N8z+NlT/wQMg/ev3qlppNvawCqYNhdDZtRq09qhqLJpXPLzTS5tqvBKlr8usJ
 2afJw8G3fM6NcYvbcuqnKWtRWU1o1lLQJcWzHit9eJzTk4sNISaf+o7CsTVH2iAjdgWy
 n4QA==
X-Gm-Message-State: AOAM530nX4f0JsuVlAAN6fUzHtnkprPjit3FEGoocGwHhpZsMwfBpaqj
 xUCaHsHraj0v7FHY23DBBZiowA==
X-Google-Smtp-Source: ABdhPJy7amNgWqMdAVSac+WNJV32kzb9qqOW28zuFX/KmaM07L39PSsfxbOQUeGwqKkk+9hxKNxJUw==
X-Received: by 2002:a37:6d6:: with SMTP id 205mr3226555qkg.466.1633194660126; 
 Sat, 02 Oct 2021 10:11:00 -0700 (PDT)
Received: from ripple.attlocal.net
 (172-10-233-147.lightspeed.sntcca.sbcglobal.net. [172.10.233.147])
 by smtp.gmail.com with ESMTPSA id l7sm5733936qtr.87.2021.10.02.10.10.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Oct 2021 10:10:59 -0700 (PDT)
Date: Sat, 2 Oct 2021 10:10:40 -0700 (PDT)
From: Hugh Dickins <hughd@google.com>
X-X-Sender: hugh@ripple.anvils
To: Linus Torvalds <torvalds@linux-foundation.org>
cc: Steven Rostedt <rostedt@goodmis.org>, Hugh Dickins <hughd@google.com>, 
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, 
 Caz Yokoyama <caz.yokoyama@intel.com>, LKML <linux-kernel@vger.kernel.org>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Matthew Brost <matthew.brost@intel.com>, 
 intel-gfx <intel-gfx@lists.freedesktop.org>, 
 dri-devel <dri-devel@lists.freedesktop.org>
In-Reply-To: <CAHk-=whJsD3RaqpmAMv7yjpnQqrEuXvibXZZDY7f-nzO+PvULg@mail.gmail.com>
Message-ID: <7bad278d-ff81-21aa-48a-b46b9453b2b@google.com>
References: <20211002020257.34a0e882@oasis.local.home>
 <259ff554-76b8-8523-033-9e996f549c70@google.com>
 <20211002081750.7eec92dd@oasis.local.home>
 <CAHk-=whJsD3RaqpmAMv7yjpnQqrEuXvibXZZDY7f-nzO+PvULg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Sat, 2 Oct 2021, Linus Torvalds wrote:
> On Sat, Oct 2, 2021 at 5:17 AM Steven Rostedt <rostedt@goodmis.org> wrote:
> > On Sat, 2 Oct 2021 03:17:29 -0700 (PDT)
> > Hugh Dickins <hughd@google.com> wrote:
> >
> > > Yes (though bisection doesn't work right on this one): the fix
> >
> > Interesting, as it appeared to be very reliable. But I didn't do the
> > "try before / after" on the patch.
> 
> Well, even the before/after might well have worked, since the problem
> depended on how that sw_fence_dummy_notify() function ended up
> aligned. So random unrelated changes could re-align it just by
> mistake.

Yup.

> 
> Patch applied directly.

Great, thanks a lot.

> 
> I'd also like to point out how that BUG_ON() actually made things
> worse, and made this harder to debug. If it had been a WARN_ON_ONCE(),
> this would presumably not even have needed bisecting, it would have
> been obvious.
> 
> BUG_ON() really is pretty much *always* the wrong thing to do. It
> onl;y results in problems being harder to see because you end up with
> a dead machine and the message is often hidden.

Jani made the same point. But I guess they then went off into the weeds
of how to recover when warning, that the fix itself did not progress.

Hugh
