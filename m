Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1009E127377
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 03:24:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A3436EBBE;
	Fri, 20 Dec 2019 02:24:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 2305 seconds by postgrey-1.36 at gabe;
 Thu, 19 Dec 2019 15:46:51 UTC
Received: from 8.mo179.mail-out.ovh.net (8.mo179.mail-out.ovh.net
 [46.105.75.26])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9ECA6E25D
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 15:46:51 +0000 (UTC)
Received: from player758.ha.ovh.net (unknown [10.108.54.13])
 by mo179.mail-out.ovh.net (Postfix) with ESMTP id 28E4E1532D4
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 16:08:24 +0100 (CET)
Received: from smida.it (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@smida.it)
 by player758.ha.ovh.net (Postfix) with ESMTPSA id DC8CAD86CB9D;
 Thu, 19 Dec 2019 15:08:21 +0000 (UTC)
Date: Thu, 19 Dec 2019 17:08:20 +0200
From: Andi Shyti <andi@smida.it>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191219150820.GB36515@jack.zhora.eu>
References: <20191218143111.3852266-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218143111.3852266-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Ovh-Tracer-Id: 10549400652916118793
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrvdduuddgjeduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisehsmhhiuggrrdhitheqnecukfhppedtrddtrddtrddtpdekuddrudejhedrvddvfedruddukeenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeehkedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesshhmihgurgdrihhtpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrghenucevlhhushhtvghrufhiiigvpedt
X-Mailman-Approved-At: Fri, 20 Dec 2019 02:24:35 +0000
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915/gt: Teach veng to defer the
 context allocation
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

On Wed, Dec 18, 2019 at 02:31:04PM +0000, Chris Wilson wrote:
> Since we added the context_alloc callback to intel_context_ops, we can
> safely install a custom hook for the deferred virtual context allocation.
> This means that all new contexts behave the same upon creation,
> simplifying later code.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Andi Shyti <andi.shyti@intel.com>

Looks OK,

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
