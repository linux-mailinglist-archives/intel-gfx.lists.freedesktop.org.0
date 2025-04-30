Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1330AA45F4
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Apr 2025 10:51:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02E1E10E70C;
	Wed, 30 Apr 2025 08:51:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="TNu8orOv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44BCC10E70C;
 Wed, 30 Apr 2025 08:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=8GD8iADsizFhGDNZ/ZNaL/JWIzc9hg98Nf1McXX3ZhY=; b=TNu8orOviKyKi1Nq00fTveWOCw
 /Dj5RYLwN79mk2Yqy+zBlyAIi+GzbB9zHP4OrZwjgEnUZuQgiHty3Lfcx8sbX1iKerpGYPYdUU3ux
 41r3IOkQ5f0NS3jDExMqx1TU00QUr+H//1J1iSRTFMFr4QkInXZUHYvUYmlbIx7sL9suqXoYK3BCJ
 i53A+tk+1+WvYf6mghQnKuKrSLki0zhhprHa6kN/sO+XRqvb353Gaa/1eKTvDDzgy7IXEg+brf71z
 BLQCK83boPnqloXiVW9A2WmSvi/z100Pp6K0dmo/JR2Qa/MpbInUruP5QhUra3g4roqMKXkJNtBJg
 03jti8Ag==;
Received: from 77-249-17-252.cable.dynamic.v4.ziggo.nl ([77.249.17.252]
 helo=noisy.programming.kicks-ass.net)
 by desiato.infradead.org with esmtpsa (Exim 4.98.1 #2 (Red Hat Linux))
 id 1uA3AE-0000000DkK7-48ae; Wed, 30 Apr 2025 08:51:35 +0000
Received: by noisy.programming.kicks-ass.net (Postfix, from userid 1000)
 id 540FD300642; Wed, 30 Apr 2025 10:51:34 +0200 (CEST)
Date: Wed, 30 Apr 2025 10:51:34 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 "luto@kernel.org" <luto@kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@kernel.org>, "hughd@google.com" <hughd@google.com>
Subject: Re: [REGRESSION] x86/efi: Make efi_enter/leave_mm() use the
 use_/unuse_temporary_mm() machinery (linux-next)
Message-ID: <20250430085134.GI4439@noisy.programming.kicks-ass.net>
References: <SJ1PR11MB6129E62E3B372932C6B7477FB9BD2@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB61293655E9386DC0FBD263F4B9852@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <87selrwdct.fsf@intel.com>
 <20250429182904.GL4198@noisy.programming.kicks-ass.net>
 <SJ1PR11MB61297D70878E228810F735A9B9832@SJ1PR11MB6129.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SJ1PR11MB61297D70878E228810F735A9B9832@SJ1PR11MB6129.namprd11.prod.outlook.com>
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

On Wed, Apr 30, 2025 at 08:47:43AM +0000, Borah, Chaitanya Kumar wrote:
> 
> 
> > -----Original Message-----
> > From: Peter Zijlstra <peterz@infradead.org>
> > Sent: Tuesday, April 29, 2025 11:59 PM
> > To: Jani Nikula <jani.nikula@linux.intel.com>
> > Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>;
> > luto@kernel.org; intel-gfx@lists.freedesktop.org; intel-
> > xe@lists.freedesktop.org; Kurmi, Suresh Kumar
> > <suresh.kumar.kurmi@intel.com>; Saarinen, Jani <jani.saarinen@intel.com>;
> > De Marchi, Lucas <lucas.demarchi@intel.com>; linux-kernel@vger.kernel.org;
> > Ingo Molnar <mingo@kernel.org>
> > Subject: Re: [REGRESSION] x86/efi: Make efi_enter/leave_mm() use the
> > use_/unuse_temporary_mm() machinery (linux-next)
> > 
> > On Tue, Apr 29, 2025 at 12:01:22PM +0300, Jani Nikula wrote:
> > > On Thu, 24 Apr 2025, "Borah, Chaitanya Kumar"
> > <chaitanya.kumar.borah@intel.com> wrote:
> > > > +Andy, Ingo
> > > >
> > > > Friendly reminder.
> > > > Issue is still seen on latest linux-next runs.
> > > >
> > > > https://intel-gfx-ci.01.org/tree/linux-next/next-20250424/bat-rpls-4
> > > > /boot0.txt
> > > >
> > > > Regards
> > > >
> > > > Chaitanya
> > >
> > > Andy, Ingo -
> > >
> > > Commit e7021e2fe0b4 ("x86/efi: Make efi_enter/leave_mm() use the
> > > use_/unuse_temporary_mm() machinery") on linux-next regresses as
> > > reported by Chaitanya
> > >
> > > Please look into it.
> > 
> > Does your kernel include the below?
> 
> This change has not yet landed in linux-next. However, making local change on top of next-20250429 seems to help us.
> 
> Important to note that we don't CONFIG_DEBUG_VM=y as mentioned by Hugh.
> 
> Any idea when this lands in linux-next?

This is the top commit in tip/x86/alternatives and should already be in
-next, Ingo, any idea what is going wrong?
