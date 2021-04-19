Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20661364EAF
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Apr 2021 01:36:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA2176E466;
	Mon, 19 Apr 2021 23:36:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com
 [IPv6:2607:f8b0:4864:20::536])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA3306E466
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Apr 2021 23:36:14 +0000 (UTC)
Received: by mail-pg1-x536.google.com with SMTP id p2so9893651pgh.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Apr 2021 16:36:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+AXERFClYZYQUr1IqN7bGc0QBx+E2BeAvwA2SBiAo5U=;
 b=YmK13dmW5qtJCyvdmMQvQkEeNCJafx0yaLZuG+qt1h0kHyE16ZlbvlaKIXMdJuos0q
 oXaLUgrsIoOMW/QfJSmDcXcR6EX6TN/9FfVu/z3XvPw31FD3n4vWRmqF1KhC3Fyl4bE9
 eEG4MsQbmbgtdohUERLAUr/uXceQgL/DsllmU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+AXERFClYZYQUr1IqN7bGc0QBx+E2BeAvwA2SBiAo5U=;
 b=p7SyqJdiDeg869xauwK1Nfe5ONqN6ViuXVXtCO7ezCZe5bTey300ApXkyGKr3x8uxJ
 deyQrvvBpG/J1TWELLj/YMGBZTyjJOmYju6yEdRyM7WRKX6sYCd+UiqGxVhfPoKZr+Wy
 Hg+H+zqny2nrEHIetNZFMYlkq8OveRKeFzUPm6cFrwUSSHnK7PY8B1c0Wntr9KA6l6xp
 bEh9RlOeiWg+9h8usRYpVFUXxA/Jqrav80WNFRbMuVommLyuGEgRKM1xCM4iHd5bFkhk
 syzJuukoY1r8WsEyjkIZwuddEU+M/wf3A1IeoosfLIk4EoL22PdX3+I5d0HKUepdutPo
 nuxw==
X-Gm-Message-State: AOAM532L2rkdPlEkh83z3I2AL5biA21AQ7wnfd18chC8CU4Sy9abtqbn
 Hdw6v0E6O2ZsfUZsmz5KSwuwxw==
X-Google-Smtp-Source: ABdhPJzERC0jwguaNsJ+wSeg55qiPue3mqoTqTb9eYfqXtUH3uNdF0tKTOJIlM21AuWzWAGco92F6A==
X-Received: by 2002:a62:ce42:0:b029:261:ab24:f65f with SMTP id
 y63-20020a62ce420000b0290261ab24f65fmr4572278pfg.18.1618875374515; 
 Mon, 19 Apr 2021 16:36:14 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id o9sm14586976pfh.217.2021.04.19.16.36.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Apr 2021 16:36:13 -0700 (PDT)
Date: Mon, 19 Apr 2021 16:36:12 -0700
From: Kees Cook <keescook@chromium.org>
To: Peter Zijlstra <peterz@infradead.org>
Message-ID: <202104191630.F00A6AAF@keescook>
References: <20210412080012.357146277@infradead.org>
 <20210412080611.769864829@infradead.org>
 <202104121302.57D7EF8@keescook>
 <YHVADhpkETMQGD5X@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YHVADhpkETMQGD5X@hirez.programming.kicks-ass.net>
Subject: Re: [Intel-gfx] [PATCH 4/7] mm: Introduce verify_page_range()
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
Cc: jgross@suse.com, sstabellini@kernel.org, intel-gfx@lists.freedesktop.org,
 x86@kernel.org, linux-kernel@vger.kernel.org, chris@chris-wilson.co.uk,
 linux-mm@kvack.org, boris.ostrovsky@oracle.com, hch@lst.de,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 13, 2021 at 08:54:06AM +0200, Peter Zijlstra wrote:
> On Mon, Apr 12, 2021 at 01:05:09PM -0700, Kees Cook wrote:
> > On Mon, Apr 12, 2021 at 10:00:16AM +0200, Peter Zijlstra wrote:
> > > +struct vpr_data {
> > > +	int (*fn)(pte_t pte, unsigned long addr, void *data);
> > > +	void *data;
> > > +};
> > 
> > Eeerg. This is likely to become an attack target itself. Stored function
> > pointer with stored (3rd) argument.
> 
> You got some further reading on that? How exactly are those exploited?

Sure, see "Executing code" in
https://googleprojectzero.blogspot.com/2017/05/exploiting-linux-kernel-via-packet.html

I killed the entire primitive (for timer_list)
https://outflux.net/blog/archives/2018/02/05/security-things-in-linux-v4-15/#v4.15-timer_list
but that was a lot of work, so I'm trying to avoid seeing more things
like it appear. :) (And I'm trying to get rid of similar APIs, like
tasklet.)

This new code is unlikely to ever be used as widely as timer_list,
but I just cringe when I see the code pattern. I'll understand if there
isn't a solution that doesn't require major refactoring, but I can
dream. :)

-- 
Kees Cook
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
