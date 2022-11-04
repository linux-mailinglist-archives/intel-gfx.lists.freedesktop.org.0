Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 602D761A406
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Nov 2022 23:23:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 641E610E031;
	Fri,  4 Nov 2022 22:23:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BB3410E031
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Nov 2022 22:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667600627; x=1699136627;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=jyyE3UFh52oFOY3mzA8Q7BVvcDMLwn6B9acrscYPruM=;
 b=e+tS58DV8asIsOxc5lRYTbeG3UTSMSrHth5rCmfAKVhX/7MljS9Vnjlm
 GQQvkyDi/XBa4iiFzuDQds9XFbp+170YMsSF4FD9CsHz+ohNe+min7+o2
 zjKzrzFDW2rCUPMFuNcQhalcrV77qri5DySqX3lUsAEzG3tiFIy37cXu9
 yFRffkmcXCFHJ/2hpKo5469HtSPqZZBnCSleO+3/ZkypvigT3DhKxYjAY
 bQvVmazzdpEcKTGr+udpZ0W62mLawWWxMMCy61ga2McBv5XgeowLBg2zE
 fMSOZhbpwztnoxESrmZkXKOU3cyM3Iy276/q7OPqY3LXrIgaqX4TP0WOd g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="396387599"
X-IronPort-AV: E=Sophos;i="5.96,138,1665471600"; d="scan'208";a="396387599"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 15:23:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="613223490"
X-IronPort-AV: E=Sophos;i="5.96,138,1665471600"; d="scan'208";a="613223490"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 04 Nov 2022 15:23:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 05 Nov 2022 00:23:40 +0200
Date: Sat, 5 Nov 2022 00:23:40 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Naoya Horiguchi <naoya.horiguchi@linux.dev>
Message-ID: <Y2WQ7I4LXh8iUIRd@intel.com>
References: <Y2LYXItKQyaJTv8j@intel.com>
 <20221104155930.GA527246@ik1-406-35019.vs.sakura.ne.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221104155930.GA527246@ik1-406-35019.vs.sakura.ne.jp>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [mm-unstable PATCH v7 2/8] mm/hugetlb: make
 pud_huge() and follow_huge_pud() aware of non-present pud entry
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
Cc: Miaohe Lin <linmiaohe@huawei.com>, regressions@lists.linux.dev,
 David Hildenbrand <david@redhat.com>, Yang Shi <shy828301@gmail.com>,
 naoya.horiguchi@nec.com, linux-kernel@vger.kernel.org,
 Liu Shixin <liushixin2@huawei.com>, linux-mm@kvack.org,
 Muchun Song <songmuchun@bytedance.com>,
 Andrew Morton <akpm@linux-foundation.org>, Oscar Salvador <osalvador@suse.de>,
 intel-gfx@lists.freedesktop.org, Mike Kravetz <mike.kravetz@oracle.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Nov 05, 2022 at 12:59:30AM +0900, Naoya Horiguchi wrote:
> On Wed, Nov 02, 2022 at 10:51:40PM +0200, Ville Syrj�l� wrote:
> > On Thu, Jul 14, 2022 at 01:24:14PM +0900, Naoya Horiguchi wrote:
> > > +/*
> > > + * pud_huge() returns 1 if @pud is hugetlb related entry, that is normal
> > > + * hugetlb entry or non-present (migration or hwpoisoned) hugetlb entry.
> > > + * Otherwise, returns 0.
> > > + */
> > >  int pud_huge(pud_t pud)
> > >  {
> > > -	return !!(pud_val(pud) & _PAGE_PSE);
> > > +	return !pud_none(pud) &&
> > > +		(pud_val(pud) & (_PAGE_PRESENT|_PAGE_PSE)) != _PAGE_PRESENT;
> > >  }
> > 
> > Hi,
> > 
> > This causes i915 to trip a BUG_ON() on x86-32 when I start X.
> 
> Hello,
> 
> Thank you for finding and reporting the issue.
> 
> x86-32 does not enable CONFIG_ARCH_HAS_GIGANTIC_PAGE, so pud_huge() is
> supposed to be false on x86-32.  Doing like below looks to me a fix
> (reverting to the original behavior for x86-32):
> diff --git a/arch/x86/mm/hugetlbpage.c b/arch/x86/mm/hugetlbpage.c
> index 6b3033845c6d..bf73f25aaa32 100644
> --- a/arch/x86/mm/hugetlbpage.c
> +++ b/arch/x86/mm/hugetlbpage.c
> @@ -37,8 +37,12 @@ int pmd_huge(pmd_t pmd)
>   */
>  int pud_huge(pud_t pud)
>  {
> +#ifdef CONFIG_ARCH_HAS_GIGANTIC_PAGE
>         return !pud_none(pud) &&
>                 (pud_val(pud) & (_PAGE_PRESENT|_PAGE_PSE)) != _PAGE_PRESENT;
> +#else
> +       return !!(pud_val(pud) & _PAGE_PSE);    // or "return 0;" ?
> +#endif
>  }
> 
>  #ifdef CONFIG_HUGETLB_PAGE
> 
> 
> Let me guess what the PUD entry was there when triggering the issue.
> Assuming that the original code (before 3a194f3f8ad0) was correct, the PSE
> bit in pud_val(pud) should be always cleared.  So, when pud_huge() returns
> true since 3a194f3f8ad0, the PRESENT bit should be clear and some other
> bits (rather than PRESENT and PSE) are set so that pud_none() is false.
> I'm not sure what such a non-present PUD entry does mean.

pud_val()==0 when it blows up, and pud_none() is false because
pgtable-nopmd.h says so with 2 level paging.

And given that I just tested with PAE / 3 level paging, 
and sure enough it no longer blows up.

So looks to me like maybe this new code just doesn't understand
how the levels get folded.

I might also be missing something obvious, but why is it even
necessary to treat PRESENT==0+PSE==0 as a huge entry?

-- 
Ville Syrj�l�
Intel
