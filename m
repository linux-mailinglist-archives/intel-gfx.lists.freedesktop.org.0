Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4124260D9F9
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 05:35:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D543510E2FF;
	Wed, 26 Oct 2022 03:35:31 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com
 [IPv6:2607:f8b0:4864:20::f2c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B2E010E2FF
 for <Intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 03:35:27 +0000 (UTC)
Received: by mail-qv1-xf2c.google.com with SMTP id x15so10524421qvp.1
 for <Intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 20:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=7DgckOTyJpJIDjMI/nPRBiHFx7qx6+cWviU2TzNwknc=;
 b=T8Ap2ZdBeHPwZ8Jz1szixqkojSgx39HAPRF8YbUBA/xxjort3yPcdZEFsyL5/Ltrwf
 lTVeDuDJg00BqI5NV15oddsU+wDdoTHm2Q7NDT+u51qG2BnlQ8Azw+VFCnmoo/JzItS2
 ENbkYxoVJvHKBD4GxXMlRalVD1IfCK22xDi2eyDkUu1cyIsUx6f/Hcaiqf4TUTmQY3HS
 flDV0lyltOUkM15YSRVKlkv7yAckkXV61WHNlXEBogEkdoV5/vXZEQ/IWhM0r0ijEACw
 9OtmkX4+wncxbJ+9gESVrMqRNpD+rr7kTD82Tq+9yMt6JwDhRVemjQhCx9z61tt//Jf+
 kujw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=7DgckOTyJpJIDjMI/nPRBiHFx7qx6+cWviU2TzNwknc=;
 b=yaGcQo3ITPz7Jioztl2unxEexCOmdLkTIFKWwkFqbkffbEiDHqdH34QiczKo9vfwg2
 TSnwJcNS8Ztxg++fFOtEUjgDpoVh9X2f+ra0TPtwbNQXVbcU4NIFN9mm4u2QflRFBKMd
 /DXj2QVMvxKPlKI4zDOLKMQ1C3jlPToegUQaXXXgRRFzhxJDVp7apCeTO1JBiLGzPQ+8
 RFwmA/7Ci1RtMLn7AQz+6nqGI6mE+Tx/tKqiRlnLrWjmDL7c9KokYs6Wr8uRsd3mgotM
 Mhd99JVNytMf9f38OXiRQIogdaDZCiCGqi/X7TvdSGF1xhSIS+8JkKgvIVxbBjzISmEX
 We1g==
X-Gm-Message-State: ACrzQf0X8gnDXuwY3WNodjSm9L/uFt0WupOYN89rEawKWJE/GY/JklI2
 Osan6WkOR9KRy1E6yZNYRTuXuQ==
X-Google-Smtp-Source: AMsMyM4vscqcsEWMwOGgbPvmFyqIESkI95BcMQWno3HlmQusWA4SDzZ/whWd1KM97up9HL2PCXho6g==
X-Received: by 2002:a05:6214:f04:b0:4b1:cb3b:79bd with SMTP id
 gw4-20020a0562140f0400b004b1cb3b79bdmr35117349qvb.22.1666755326390; 
 Tue, 25 Oct 2022 20:35:26 -0700 (PDT)
Received: from ripple.attlocal.net
 (172-10-233-147.lightspeed.sntcca.sbcglobal.net. [172.10.233.147])
 by smtp.gmail.com with ESMTPSA id
 c27-20020a05620a269b00b006ee7923c187sm3242039qkp.42.2022.10.25.20.35.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Oct 2022 20:35:25 -0700 (PDT)
Date: Tue, 25 Oct 2022 20:35:15 -0700 (PDT)
From: Hugh Dickins <hughd@google.com>
X-X-Sender: hugh@ripple.attlocal.net
To: Andrew Morton <akpm@linux-foundation.org>
In-Reply-To: <20221025200417.4657a50e93cf13fb08a87db4@linux-foundation.org>
Message-ID: <3c785c89-e2d1-88bc-cdd6-14e8602c6fb4@google.com>
References: <1596edbb-02ad-6bdf-51b8-15c2d2e08b76@linux.intel.com>
 <20221024142321.f2etddxtqa47bib7@techsingularity.net>
 <8d9517cc-6fba-ede0-a95f-e9b036e75ceb@linux.intel.com>
 <20221025100338.zcvqyji5gwiuj3nj@techsingularity.net>
 <20221025200417.4657a50e93cf13fb08a87db4@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] mm/huge_memory: do not clobber swp_entry_t during
 THP split
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
Cc: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 Hugh Dickins <hughd@google.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Linux MM <linux-mm@kvack.org>, Matthew Auld <matthew.auld@intel.com>,
 Mel Gorman <mgorman@techsingularity.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 25 Oct 2022, Andrew Morton wrote:
> On Tue, 25 Oct 2022 11:03:38 +0100 Mel Gorman <mgorman@techsingularity.net> wrote:
> 
> > > If so I
> > > can temporarily put it in until it arrives via the next rc - assuming that
> > > would be the flow from upstream pov?
> > > 
> > 
> > I expect it to. It's currently in the akpm/mm.git branch
> > mm/mm-hotfixes-unstable where I expect it to flow to mm/mm-hotfixes-stable
> > in due course before sending to Linus. I can't make promises about the
> > timing as that's determined by Andrew.
> 
> This is now in mainline, 71e2d666ef85.

No, that one is Mel's commit, which GregKH already picked up for stable.
But what we're waiting for here is my fix to the warning that brings,
my fix currently lurking in mm-hotfixes-unstable as
45ba9c269874 ("mm: prep_compound_tail() clear page->private")

Hugh
