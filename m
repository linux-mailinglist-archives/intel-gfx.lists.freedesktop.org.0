Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E86D195D4E
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 19:08:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B5366EA69;
	Fri, 27 Mar 2020 18:08:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 603 seconds by postgrey-1.36 at gabe;
 Fri, 27 Mar 2020 18:08:45 UTC
Received: from 1.mo2.mail-out.ovh.net (1.mo2.mail-out.ovh.net [46.105.63.121])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9368D6EA69
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 18:08:45 +0000 (UTC)
Received: from player795.ha.ovh.net (unknown [10.110.171.40])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id F2A551CFA92
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 18:53:15 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player795.ha.ovh.net (Postfix) with ESMTPSA id 8006E10BBFB7A;
 Fri, 27 Mar 2020 17:53:12 +0000 (UTC)
Date: Fri, 27 Mar 2020 19:53:11 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200327175311.GD186677@jack.zhora.eu>
References: <20200326142727.31962-1-chris@chris-wilson.co.uk>
 <20200327162727.GC186677@jack.zhora.eu>
 <158532690983.19268.11553435615907738505@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158532690983.19268.11553435615907738505@build.alporthouse.com>
X-Ovh-Tracer-Id: 4434638260350796297
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrudehledguddtfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucffohhmrghinhepfhhrvggvuggvshhkthhophdrohhrghenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeelhedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Differentiate between
 aliasing-ppgtt and ggtt pinning
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi Chris,

> > On Thu, Mar 26, 2020 at 02:27:27PM +0000, Chris Wilson wrote:
> > > Userptr causes lockdep to complain when we are using the aliasing-ppgtt
> > > (and ggtt, but for that it is rightfully so to complain about) in that
> > > when we revoke the userptr we take a mutex which we also use to revoke
> > > the mmaps. However, we only revoke mmaps for GGTT bindings and we never
> > > allow userptr to create a GGTT binding so the warning should be false
> > > and is simply caused by our conflation of the aliasing-ppgtt with the
> > > ggtt. So lets try treating the binding into the aliasing-ppgtt as a
> > > separate lockclass from the ggtt. The downside is that we are
> > > deliberately suppressing lockdep;s ability to warn us of cycles.
> >                                 ^^^^
> > typo
> > 
> > > 
> > > Closes: https://gitlab.freedesktop.org/drm/intel/issues/478
> > 
> > I'm not a big fan of links in commit messages, I think they would
> > be forbidden by law, but I'm not being picky on that.
> 
> I'm lazy, I take clickable links.
> 
> > I don't know, thogh, why your S-o-b is missing.
> 
> I felt uncomfortable with this hack, but it passes CI (but it may be
> suppressing too much -- I think the code is safe at the moment, but we
> may lose our sensitivity to future bugs).

We can only hope in CI critical cases are covered well enough...
in the worst case we can always revert it.

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
