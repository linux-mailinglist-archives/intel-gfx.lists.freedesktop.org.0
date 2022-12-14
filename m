Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C615164CF7A
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 19:35:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2B2F10E445;
	Wed, 14 Dec 2022 18:35:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 307 seconds by postgrey-1.36 at gabe;
 Wed, 14 Dec 2022 18:35:47 UTC
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55A5910E445
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 18:35:47 +0000 (UTC)
Received: from cwcc.thunk.org (pool-173-48-120-46.bstnma.fios.verizon.net
 [173.48.120.46]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 2BEISlXT001166
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 14 Dec 2022 13:28:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
 t=1671042536; bh=yBGs7uN391IpXsrDxRmFEUWTGiaryut5x17IYCOizWk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=HX6AQcpAe2+cnC9hTYUfjgWkeHvv1LC4w/UQdsttxATAAzgnydZDPh4r2DWcplfoJ
 1vqfTJhD0abDlckLtoPygUetxakA9e9fRup+4tlH05DU68oXBxET8mmwotIvCYfECK
 5HKu/wcqn8EMkAfuyRTI/bTHXL0PNK49CEUvPdQcr84OeW3+kU7SNVZA4+qSirbgTJ
 3NhaGD5fFBRmef7EqggKdRJ9UhouLLoXZkFyO2r38pU9KYN0rZMddpmYclbj9loR82
 34hoQmvSNu0DID1RNOJGFVguRqDJF66nyblzlr2E5grx3vdYOtphrf56UdcYP5B82p
 HiaEQY2wnNKaQ==
Received: by cwcc.thunk.org (Postfix, from userid 15806)
 id 615B615C40A2; Wed, 14 Dec 2022 13:28:47 -0500 (EST)
Date: Wed, 14 Dec 2022 13:28:47 -0500
From: "Theodore Ts'o" <tytso@mit.edu>
To: Stanislaw Gruszka <stanislaw.gruszka@linux.intel.com>
Message-ID: <Y5oV3zVhc2C2sUaF@mit.edu>
References: <cover.1670778651.git.david.keisarschm@mail.huji.ac.il>
 <b3caaa5ac5fca4b729bf1ecd0d01968c09e6d083.1670778652.git.david.keisarschm@mail.huji.ac.il>
 <Y5c8KLzJFz/XZMiM@zx2c4.com>
 <20221214123358.GA1062210@linux.intel.com>
 <CANn89iJtK4m1cWvCwp=L_rEOEBa+B1kLZJAw0D9_cYPQcAj+Mw@mail.gmail.com>
 <20221214162117.GC1062210@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221214162117.GC1062210@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/5] Renaming weak prng invocations -
 prandom_bytes_state, prandom_u32_state
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
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Peter Zijlstra <peterz@infradead.org>,
 Roman Gushchin <roman.gushchin@linux.dev>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Alexei Starovoitov <ast@kernel.org>, dri-devel@lists.freedesktop.org,
 Song Liu <song@kernel.org>, Eric Dumazet <edumazet@google.com>,
 linux-mtd@lists.infradead.org, Stanislav Fomichev <sdf@google.com>,
 "H. Peter Anvin" <hpa@zytor.com>, Hyeonggon Yoo <42.hyeyoo@gmail.com>,
 Christoph Lameter <cl@linux.com>, Daniel Borkmann <daniel@iogearbox.net>,
 Richard Weinberger <richard@nod.at>, x86@kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Andrii Nakryiko <andrii@kernel.org>,
 ilay.bahat1@gmail.com, Ingo Molnar <mingo@redhat.com>,
 Jiri Pirko <jiri@nvidia.com>, David Rientjes <rientjes@google.com>,
 Yonghong Song <yhs@fb.com>, Paolo Abeni <pabeni@redhat.com>,
 intel-gfx@lists.freedesktop.org, Petr Mladek <pmladek@suse.com>,
 david.keisarschm@mail.huji.ac.il, Dave Hansen <dave.hansen@linux.intel.com>,
 Hao Luo <haoluo@google.com>, Miquel Raynal <miquel.raynal@bootlin.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Steven Rostedt <rostedt@goodmis.org>, KP Singh <kpsingh@kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Borislav Petkov <bp@alien8.de>,
 Hannes Reinecke <hare@suse.de>, Andy Lutomirski <luto@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, bpf@vger.kernel.org,
 Vlastimil Babka <vbabka@suse.cz>, linux-scsi@vger.kernel.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>, linux-mm@kvack.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Pekka Enberg <penberg@kernel.org>,
 Sergey Senozhatsky <senozhatsky@chromium.org>, aksecurity@gmail.com,
 Jiri Olsa <jolsa@kernel.org>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Martin KaFai Lau <martin.lau@linux.dev>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 14, 2022 at 05:21:17PM +0100, Stanislaw Gruszka wrote:
> On Wed, Dec 14, 2022 at 04:15:49PM +0100, Eric Dumazet wrote:
> > On Wed, Dec 14, 2022 at 1:34 PM Stanislaw Gruszka
> > <stanislaw.gruszka@linux.intel.com> wrote:
> > >
> > > On Mon, Dec 12, 2022 at 03:35:20PM +0100, Jason A. Donenfeld wrote:
> > > > Please CC me on future revisions.
> > > >
> > > > As of 6.2, the prandom namespace is *only* for predictable randomness.
> > > > There's no need to rename anything. So nack on this patch 1/5.
> > >
> > > It is not obvious (for casual developers like me) that p in prandom
> > > stands for predictable. Some renaming would be useful IMHO.

I disagree.  pseudo-random has *always* menat "predictable".  And the
'p' in prandom was originally "pseudo-random".  In userspace,
random(3) is also pseudo-random, and is ***utterly*** predictable.  So
the original use of prandom() was a bit more of an explicit nod to the
fact that prandom is something which is inherently predictable.

So I don't think it's needed to rename it, whether it's to
"predictable_rng_prandom_u32", or "no_you_idiot_dont_you_dare_use_it_for_cryptographi_purposes_prandom_u32".

I think we need to assume a certain base level of competence,
especially for someone who is messing with security psensitive kernel
code.  If a developer doesn't know that a prng is predictable, that's
probably the *least* of the sort of mistakes that they might make.

					- Ted
