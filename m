Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 243EC7266D5
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 19:11:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B8AB10E22A;
	Wed,  7 Jun 2023 17:11:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 794D810E22A
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jun 2023 17:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686157873; x=1717693873;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nn861VFp35Q9ZBleEYgKaQLtJQsWGLX2Vj1qxZbrt3k=;
 b=JCHdSaCp5dMJvEnIf2aGvkDhWZgxQgzOcEHWGSVVdydwkEhR1403aG0d
 bPNypydmdaiRRVafrggrgIZi9do0lKzDDEcR4kyY/7z/b+taDJOpP4fwz
 IvQ4EgeWYnA1N5jgUwYBq7LHYgzstgQe+/u/1xXPxRndxIWzqDZRBdfzq
 4SyuIgRVXYiVB6lSglC8BgsQa3Ny750ufG7e+LA2TjTZgu9+wXYHPgOw5
 qMZAxiAjnsMk6yZpGe0vYDHAEbLmZcY2nVRR0jPj8lFj1LyT34x8nGJxe
 54bWy+FArBqwddQVj3XjyDi4Flzrr0Tw1E7Cz7ejEG3hsBSY8l8MURZl1 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="443418001"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="443418001"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 10:11:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="779541683"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="779541683"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.10.174])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 10:11:06 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Borislav Petkov <bp@alien8.de>, Dave Hansen <dave.hansen@intel.com>
Date: Wed, 07 Jun 2023 19:11:04 +0200
Message-ID: <38324471.J2Yia2DhmK@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <a20344fd-8130-013e-e773-acae81aad55a@intel.com>
References: <20230607152308.125787-2-janusz.krzysztofik@linux.intel.com>
 <a20344fd-8130-013e-e773-acae81aad55a@intel.com>
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
Cc: Juergen Gross <jgross@suse.com>, x86@kernel.org,
 intel-gfx@lists.freedesktop.org, Dave Hansen <dave.hansen@linux.intel.com>,
 linux-kernel@vger.kernel.org, Johannes Weiner <hannes@cmpxchg.org>,
 Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wednesday, 7 June 2023 17:31:24 CEST Dave Hansen wrote:
> On 6/7/23 08:23, Janusz Krzysztofik wrote:
> > 
> > Extend bitmask used by pgprot_modify() for selecting bits to be preserved
> > with _PAGE_PAT bit.  However, since that bit can be reused as _PAGE_PSE,
> > and the _PAGE_CHG_MASK symbol, primarly used by pte_modify(), is likely
> > intentionally defined with that bit not set, keep that symbol unchanged.
> 
> I'm really having a hard time parsing what that last sentence is saying.
> 
> Could you try again, please?

OK, but then I need to get my doubts addressed by someone first, otherwise I'm 
not able to provide a better justification from my heart.

The issue needs to be fixed by including _PAGE_PAT bit into a bitmask used 
by pgprot_modify() for selecting bits to be preserved.  We can either do 
that internally to pgprot_modify() (my initial proposal, which my poorly 
worded paragraph was still trying to describe and justify), or by making 
_PAGE_PAT a part of _PAGE_CHG_MASK, as suggested by Borislav and reflected in 
my v2 changelog.  But for the latter, I think we need to make sure that we 
don't break other users of _PAGE_CHG_MASK.  Maybe Borislav can confirm that's 
the case.

Since _PAGE_PAT is the same as _PAGE_PSE, _HPAGE_CHG_MASK -- a huge pmds' 
counterpart of _PAGE_CHG_MASK, introduced by commit c489f1257b8c ("thp: add 
pmd_modify"), defined as (_PAGE_CHG_MASK | _PAGE_PSE) -- will no longer differ 
from _PAGE_CHG_MASK as soon as we add _PAGE_PAT bit to the latter.  If such 
modification of _PAGE_CHG_MASK was irrelevant to its users then one may ask 
why a new symbol was introduced instead of reusing the existing one with that 
otherwise irrelevant bit (_PAGE_PSE in that case) added.  I've initially 
assumed that keeping _PAGE_CHG_MASK without _PAGE_PSE (vel _PAGE_PAT) included 
into it was intentional for some reason.  Maybe Johannes Weiner, the author of 
that patch (adding him to Cc:), could shed more light on that.

Thanks,
Janusz





