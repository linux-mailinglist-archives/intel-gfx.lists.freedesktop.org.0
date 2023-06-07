Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 703C9727095
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 23:33:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A947310E118;
	Wed,  7 Jun 2023 21:33:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A0E410E118
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jun 2023 21:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686173595; x=1717709595;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hv8Np48zRKFQLTLqiGDrs2XR+FI1FZmUcE7+ntKNyA8=;
 b=HZsz4tv7QL4ridd3hpCJ1Fo5SN4QqTbM72eh6QBDuGzuyy6YMjze6ESJ
 kauU5jArlS5phR4n8Lo/H8pS6FZu7172S0+kosGMqpxMN9BYo0h8yEhXb
 FTwaYAANXFUU3Cn18bCKqFrCRnVtcPLkwq/dsL9Cop45w8PUJcaGQKTcd
 i+6ilHINX9DNn/9uknIjymGAu3aphAfXOShIj55lQ7OX9WCheZOTb7bG2
 YjSFcTmGbg5BP402nCexvUDJ4Es4h6nd1jfna3+uJT74Bp2IlCKGzdTVU
 bK4sYcPzBh7NTURb2MNdFqV3Q0HBfvYfvPNR856wb6pky8HIHZb7F+GpI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="354605930"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="354605930"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 14:33:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="956449747"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="956449747"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.10.174])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 14:33:08 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: "Hansen, Dave" <dave.hansen@intel.com>, "bp@alien8.de" <bp@alien8.de>,
 "Edgecombe, Rick P" <rick.p.edgecombe@intel.com>
Date: Wed, 07 Jun 2023 23:33:05 +0200
Message-ID: <20819659.0c2gjJ1VT2@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <ad762335fd209fd8c1555401bc03e196eb53caef.camel@intel.com>
References: <20230607152308.125787-2-janusz.krzysztofik@linux.intel.com>
 <38324471.J2Yia2DhmK@jkrzyszt-mobl2.ger.corp.intel.com>
 <ad762335fd209fd8c1555401bc03e196eb53caef.camel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [PATCH v2] x86/mm: Fix PAT bit missing from page
 protection modify mask
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
Cc: "Gross, Jurgen" <jgross@suse.com>, "x86@kernel.org" <x86@kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dave.hansen@linux.intel.com" <dave.hansen@linux.intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hannes@cmpxchg.org" <hannes@cmpxchg.org>,
 "mingo@redhat.com" <mingo@redhat.com>, "hpa@zytor.com" <hpa@zytor.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wednesday, 7 June 2023 23:12:13 CEST Edgecombe, Rick P wrote:
> On Wed, 2023-06-07 at 19:11 +0200, Janusz Krzysztofik wrote:
> > On Wednesday, 7 June 2023 17:31:24 CEST Dave Hansen wrote:
> > > On 6/7/23 08:23, Janusz Krzysztofik wrote:
> > > > 
> > > > Extend bitmask used by pgprot_modify() for selecting bits to be
> > > > preserved
> > > > with _PAGE_PAT bit.  However, since that bit can be reused as
> > > > _PAGE_PSE,
> > > > and the _PAGE_CHG_MASK symbol, primarly used by pte_modify(), is
> > > > likely
> > > > intentionally defined with that bit not set, keep that symbol
> > > > unchanged.
> > > 
> > > I'm really having a hard time parsing what that last sentence is
> > > saying.
> > > 
> > > Could you try again, please?
> > 
> > OK, but then I need to get my doubts addressed by someone first,
> > otherwise I'm 
> > not able to provide a better justification from my heart.
> > 
> > The issue needs to be fixed by including _PAGE_PAT bit into a bitmask
> > used 
> > by pgprot_modify() for selecting bits to be preserved.  We can either
> > do 
> > that internally to pgprot_modify() (my initial proposal, which my
> > poorly 
> > worded paragraph was still trying to describe and justify), or by
> > making 
> > _PAGE_PAT a part of _PAGE_CHG_MASK, as suggested by Borislav and
> > reflected in 
> > my v2 changelog.  But for the latter, I think we need to make sure
> > that we 
> > don't break other users of _PAGE_CHG_MASK.  Maybe Borislav can
> > confirm that's 
> > the case.
> > 
> > Since _PAGE_PAT is the same as _PAGE_PSE, _HPAGE_CHG_MASK -- a huge
> > pmds' 
> > counterpart of _PAGE_CHG_MASK, introduced by commit c489f1257b8c
> > ("thp: add 
> > pmd_modify"), defined as (_PAGE_CHG_MASK | _PAGE_PSE) -- will no
> > longer differ 
> > from _PAGE_CHG_MASK as soon as we add _PAGE_PAT bit to the latter. 
> > If such 
> > modification of _PAGE_CHG_MASK was irrelevant to its users then one
> > may ask 
> > why a new symbol was introduced instead of reusing the existing one
> > with that 
> > otherwise irrelevant bit (_PAGE_PSE in that case) added.  I've
> > initially 
> > assumed that keeping _PAGE_CHG_MASK without _PAGE_PSE (vel _PAGE_PAT)
> > included 
> > into it was intentional for some reason.  Maybe Johannes Weiner, the
> > author of 
> > that patch (adding him to Cc:), could shed more light on that.
> 
> So since _PAGE_PSE is actually the same value as _PAGE_PAT, you don't
> actually need to have _PAGE_PSE in _HPAGE_CHG_MASK in order to get
> functional correctness. Is that right?

As soon as we add _PAGE_PAT to _PAGE_CHG_MASK -- yes, that's right.  But we 
may still want to add _PAGE_PSE to _HPAGE_CHG_MASK to have the need for that 
bit explicitly documented.

> 
> I think it is still a little hidden (even before this) and I wonder
> about separating out the common bits into, like, _COMMON_PAGE_CHG_MASK
> or something. Then setting specific PAGE and HPAGE bits (like
> _PAGE_PAT, _PAGE_PSE and _PAGE_PAT_LARGE) in their specific define.
> Would it be more readable that way?

Yes, I think that's a good idea, and I can use it in my patch.

The question if _PAGE_PAT vel _PAGE_PSE added to _PAGE_CHG_MASK is really 
harmless for pte_modify() and its users is still open for me though.

Thanks,
Janusz


