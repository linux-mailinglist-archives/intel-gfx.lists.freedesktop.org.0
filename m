Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E04FA1586D1
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 01:43:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B0FF6E27A;
	Tue, 11 Feb 2020 00:43:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 9.mo173.mail-out.ovh.net (9.mo173.mail-out.ovh.net
 [46.105.72.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5AA86E27A
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 00:43:03 +0000 (UTC)
Received: from player787.ha.ovh.net (unknown [10.108.57.153])
 by mo173.mail-out.ovh.net (Postfix) with ESMTP id 8FD8512CB03
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 01:43:01 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player787.ha.ovh.net (Postfix) with ESMTPSA id BCDECF65D54C;
 Tue, 11 Feb 2020 00:42:57 +0000 (UTC)
Date: Tue, 11 Feb 2020 02:42:55 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200211004255.GA2535@jack.zhora.eu>
References: <20200211003742.863630-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211003742.863630-1-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 17911941620433863177
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedriedvgddvgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucffohhmrghinhepfhhrvggvuggvshhkthhophdrohhrghenucfkpheptddrtddrtddrtddpkedurddujeehrddvvdefrdduudeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeekjedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_nop: Keep a copy of the
 names
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Tue, Feb 11, 2020 at 12:37:42AM +0000, Chris Wilson wrote:
> The engine names are now stored inside the iterator and not as static
> strings. If we wish to use them later, we need to make a copy.

But we are not using them later. Your patch just copies and frees
an array.

Is there a follow-up?

Andi

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  tests/i915/gem_exec_nop.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/tests/i915/gem_exec_nop.c b/tests/i915/gem_exec_nop.c
> index ed9568e5a..fc7f11827 100644
> --- a/tests/i915/gem_exec_nop.c
> +++ b/tests/i915/gem_exec_nop.c
> @@ -436,7 +436,7 @@ static void parallel(int fd, uint32_t handle, int timeout)
>  	struct drm_i915_gem_execbuffer2 execbuf;
>  	struct drm_i915_gem_exec_object2 obj;
>  	unsigned engines[16];
> -	const char *names[16];
> +	char *names[16];
>  	unsigned nengine;
>  	unsigned long count;
>  	double time, sum;
> @@ -445,7 +445,7 @@ static void parallel(int fd, uint32_t handle, int timeout)
>  	nengine = 0;
>  	__for_each_physical_engine(fd, e) {
>  		engines[nengine] = e->flags;
> -		names[nengine++] = e->name;
> +		names[nengine++] = strdup(e->name);
>  
>  		time = nop_on_ring(fd, handle, e, 1, &count) / count;
>  		sum += time;
> @@ -485,10 +485,11 @@ static void parallel(int fd, uint32_t handle, int timeout)
>  		time = elapsed(&start, &now) / count;
>  		igt_info("%s: %ld cycles, %.3fus\n", names[child], count, 1e6*time);
>  	}
> +	while (nengine--)
> +		free(names[nengine]);
>  
>  	igt_waitchildren();
>  	igt_assert_eq(intel_detect_and_clear_missed_interrupts(fd), 0);
> -
>  }
>  
>  static void series(int fd, uint32_t handle, int timeout)
> -- 
> 2.25.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
