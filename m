Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ONW0Lt+F82kY4wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 18:39:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3FE4A5DBC
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 18:39:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7589510E46A;
	Thu, 30 Apr 2026 16:39:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 537 seconds by postgrey-1.36 at gabe;
 Tue, 28 Apr 2026 11:29:53 UTC
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0591210E6D1;
 Tue, 28 Apr 2026 11:29:52 +0000 (UTC)
Received: from gate.crashing.org (localhost [127.0.0.1])
 by gate.crashing.org (8.18.1/8.18.1/Debian-2) with ESMTP id 63SBKIxF1057213;
 Tue, 28 Apr 2026 06:20:18 -0500
Received: (from segher@localhost)
 by gate.crashing.org (8.18.1/8.18.1/Submit) id 63SBKHXo1057211;
 Tue, 28 Apr 2026 06:20:17 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to
 segher@kernel.crashing.org using -f
Date: Tue, 28 Apr 2026 06:20:17 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Yury Norov <ynorov@nvidia.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 David Laight <david.laight.linux@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-alpha@vger.kernel.org,
 Yury Norov <yury.norov@gmail.com>, linux-kernel@vger.kernel.org,
 linux-snps-arc@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, kvm@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-s390@vger.kernel.org,
 sparclinux@vger.kernel.org, linux-um@lists.infradead.org,
 dmaengine@vger.kernel.org, linux-efi@vger.kernel.org,
 linux-fsi@lists.ozlabs.org, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linux-wpan@vger.kernel.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-serial@vger.kernel.org, linux-usb@vger.kernel.org,
 xen-devel@lists.xenproject.org, linux-fsdevel@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, bpf@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org,
 linux-x25@vger.kernel.org, rust-for-linux@vger.kernel.org,
 linux-sound@vger.kernel.org, sound-open-firmware@alsa-project.org,
 linux-csky@vger.kernel.org, linux-hexagon@vger.kernel.org,
 loongarch@lists.linux.dev, linux-m68k@vger.kernel.org,
 linux-openrisc@vger.kernel.org, linux-parisc@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-arch@vger.kernel.org
Subject: Re: [RFC PATCH v1 7/9] x86: Add unsafe_copy_from_user()
Message-ID: <afCX8WlnEFUei1y6@gate>
References: <cover.1777306795.git.chleroy@kernel.org>
 <0ee46bb228d97163fbdc14f2a7c52b93d8bc34ce.1777306795.git.chleroy@kernel.org>
 <ae-j2_QirCySZD02@yury>
 <63a4d0f6-0eb3-48cd-9f98-bf7b223b2606@kernel.org>
 <ae-2yLWSGnfeTvh1@yury>
 <CAHk-=wgPrLy0FR3sEWBYQuNAac1axDASYMnTuPuxEU0WytzL7w@mail.gmail.com>
 <ae_jeJLlVWjJ4sOY@yury>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ae_jeJLlVWjJ4sOY@yury>
X-Mailman-Approved-At: Thu, 30 Apr 2026 16:39:57 +0000
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
X-Rspamd-Queue-Id: 0A3FE4A5DBC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[53];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[crashing.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux-foundation.org,kernel.org,gmail.com,linutronix.de,vger.kernel.org,lists.infradead.org,lists.ozlabs.org,lists.freedesktop.org,lists.linux.dev,lists.xenproject.org,googlegroups.com,kvack.org,alsa-project.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_GT_50(0.00)[50];
	HAS_XAW(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[segher@kernel.crashing.org,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.990];
	TAGGED_RCPT(0.00)[intel-gfx];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,nvidia.com:email]

Hi!

On Mon, Apr 27, 2026 at 06:30:16PM -0400, Yury Norov wrote:
> On Mon, Apr 27, 2026 at 02:52:05PM -0700, Linus Torvalds wrote:
> > On Mon, 27 Apr 2026 at 12:19, Yury Norov <ynorov@nvidia.com> wrote:
> > >
> > > This is what Linus said when added x86 implementation for copy_from_user()
> > > in c512c69187197:
> > 
> > Note that some things have happily changed in the six+ years since...
> > 
> > >   That's partly because we have no current users of it, but also partly
> > >   because the copy_from_user() case is slightly different and cannot
> > >   efficiently be implemented in terms of a unsafe_get_user() loop (because
> > >   gcc can't do asm goto with outputs).
> > 
> > now everybody can do asm goto with outputs.
> > 
> > Yes, it's disabled on older versions, so it's not *always* available,
> > but all modern versions do it. And if you care about performance, you
> > won't be using an old compiler.
> 
> The minimal GCC version is 8.1, and asm goto with outputs is supported
> since GCC-11. That would brake the build, if we just switch to using it
> without "CC_IS_GCC && (GCC_VERSION >= 110100)" guard.
> 
> Is it worth to maintain 2 version of the function? I don't know...

GCC 11 was released five years and a day ago.  The last GCC 11 release
(that of 11.5) is not even two years ago though (but there will be no
more!)

So it would be not conservative at all to require GCC 11 as minimum now,
some people might even call it a bit aggressive.  But in a year (or
maybe two) the lay of the land will be rather different.


Segher
