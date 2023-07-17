Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 037D7755F95
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jul 2023 11:42:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9143210E219;
	Mon, 17 Jul 2023 09:42:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 044E610E213
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jul 2023 09:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689586940; x=1721122940;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mO01ZFkCZty6uHVGdcmYsRXqtJhMKZQf2z1Jb0eiF8Q=;
 b=iiao740+C2siRBALqztYqIjNqMzNHYjE5Sp6y3RjlIt1cKjX4xFJgOwI
 HenIbd1wKdJVBQsDCDytUFyvG7zq3Fcr9ExfA6HKbD0RUUXFrFfyOSaRb
 bWLyh5sZYGWYoljNlDZMrs5ePR274dC995g6Po6gQ+U0RPhGjfUJkEMbj
 fa73Mz3Yzidh26tvzuUsnlHk9eKeyFMpxMuT8lXgKoBHUlCnBiXc8ZAQI
 7K8BNUiFUtvhYlHbnW1OdemFa8ifeUPqFHG1YCN3tlfu7lQPJRUQvU+gh
 cN4y01POvCpaif1SNUcKswFoT5pi0ZkP4pKehiye4GKL2O8BPO2aj+Hra w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="369440921"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="369440921"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 02:42:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="836822374"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="836822374"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.9.176])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 02:42:15 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Dave Hansen <dave.hansen@linux.intel.com>, Borislav Petkov <bp@alien8.de>
Date: Mon, 17 Jul 2023 11:42:13 +0200
Message-ID: <21945539.EfDdHjke4D@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230710080519.GAZKu7v2N/eK/jYXPL@fat_crate.local>
References: <20230710073613.8006-2-janusz.krzysztofik@linux.intel.com>
 <20230710080519.GAZKu7v2N/eK/jYXPL@fat_crate.local>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [PATCH v3 RESEND] x86/mm: Fix PAT bit missing from
 page protection modify mask
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
Cc: Juergen Gross <jgross@suse.com>, intel-gfx@lists.freedesktop.org,
 x86@kernel.org, Marek =?ISO-8859-1?Q?Marczykowski=2DG=F3recki?=
 <marmarek@invisiblethingslab.com>, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 "Edgecombe, Rick P" <rick.p.edgecombe@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Borislav,

On Monday, 10 July 2023 10:05:19 CEST Borislav Petkov wrote:
> On Mon, Jul 10, 2023 at 09:36:14AM +0200, Janusz Krzysztofik wrote:
> > Assume that adding _PAGE_PAT to _PAGE_CHG_MASK doesn't break pte_modify()
> > and its users, and go for it.  Also, add _PAGE_PAT_LARGE to
> 
> That's my only worry.

Let me remind you that v1 was free of concerns on potential breakage of 
pte_modify().  I can update its commit description as Dave requested and 
resubmit if you confirm that it will be reconsidered as a potential solution.

Thanks,
Janusz

> 
> I'd suggest we queue this but not send it to Linus now. Instead, let it
> cook in linux-next for the whole 6.5 release cycle so that it can get at
> least *some* testing.
> 
> Because if we send it now and something else obscure breaks in a weird
> way in his tree, then we'll have to scramble to fix that too and it'll
> be one helluva mess.
> 
> Dave?
> 
> 




