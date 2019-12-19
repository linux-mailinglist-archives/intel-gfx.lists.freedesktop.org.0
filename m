Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C2D127376
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 03:24:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 006AD6EBBB;
	Fri, 20 Dec 2019 02:24:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 8399 seconds by postgrey-1.36 at gabe;
 Thu, 19 Dec 2019 17:38:01 UTC
Received: from 4.mo2.mail-out.ovh.net (4.mo2.mail-out.ovh.net [87.98.172.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2B456E39B
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 17:38:01 +0000 (UTC)
Received: from player774.ha.ovh.net (unknown [10.109.146.213])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id 5BDD41BCA64
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 16:09:05 +0100 (CET)
Received: from smida.it (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@smida.it)
 by player774.ha.ovh.net (Postfix) with ESMTPSA id 28BDFD7C553F;
 Thu, 19 Dec 2019 15:09:03 +0000 (UTC)
Date: Thu, 19 Dec 2019 17:09:01 +0200
From: Andi Shyti <andi@smida.it>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191219150901.GC36515@jack.zhora.eu>
References: <20191218143111.3852266-1-chris@chris-wilson.co.uk>
 <20191218143111.3852266-3-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218143111.3852266-3-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Ovh-Tracer-Id: 10561222605143397641
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrvdduuddgjeduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisehsmhhiuggrrdhitheqnecukfhppedtrddtrddtrddtpdekuddrudejhedrvddvfedruddukeenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeejgedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesshhmihgurgdrihhtpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrghenucevlhhushhtvghrufhiiigvpedt
X-Mailman-Approved-At: Fri, 20 Dec 2019 02:24:35 +0000
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915: Push the use-semaphore marker
 onto the intel_context
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

On Wed, Dec 18, 2019 at 02:31:06PM +0000, Chris Wilson wrote:
> Instead of rummaging through the intel_context to peek at the GEM
> context in the middle of request submission to decide whether to use
> semaphores, store that information on the intel_context itself.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Andi Shyti <andi.shyti@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
