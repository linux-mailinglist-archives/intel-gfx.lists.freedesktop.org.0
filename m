Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A78D1A4C37
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Apr 2020 00:49:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C27BF6ED6F;
	Fri, 10 Apr 2020 22:49:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 7.mo178.mail-out.ovh.net (7.mo178.mail-out.ovh.net
 [46.105.58.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83AA66ED6F
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Apr 2020 22:49:52 +0000 (UTC)
Received: from player168.ha.ovh.net (unknown [10.110.103.23])
 by mo178.mail-out.ovh.net (Postfix) with ESMTP id A563B9921C
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Apr 2020 00:33:27 +0200 (CEST)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player168.ha.ovh.net (Postfix) with ESMTPSA id A9BF21149DCC0;
 Fri, 10 Apr 2020 22:33:24 +0000 (UTC)
Date: Sat, 11 Apr 2020 01:33:23 +0300
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200410223323.GB264232@jack.zhora.eu>
References: <20200408102408.1959598-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408102408.1959598-1-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 17597534070218998281
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrvdefgddtiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrudeikedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH i-g-t] kms_flip: Reduce hang tests to
 minimum duration
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

On Wed, Apr 08, 2020 at 11:24:08AM +0100, Chris Wilson wrote:
> Hang tests are slow since we must wait for the kernel to detect the GPU
> hang before it forcibly completes the execution and signals the fence.
> The flip is not allowed before the fence is signaled and so must wait.
> Our test is that the flip does eventually occur, we only need to do that
> once, and let the power of repeated runs across many machines weed out
> the corner cases.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  tests/kms_flip.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/tests/kms_flip.c b/tests/kms_flip.c
> index afaed69aa..4535ecc8b 100755
> --- a/tests/kms_flip.c
> +++ b/tests/kms_flip.c
> @@ -1546,8 +1546,8 @@ igt_main
>  					"flip-vs-wf_vblank" },
>  		{ 30, TEST_FLIP | TEST_VBLANK | TEST_VBLANK_BLOCK |
>  			TEST_CHECK_TS, "flip-vs-blocking-wf-vblank" },
> -		{ 30, TEST_FLIP | TEST_MODESET | TEST_HANG | TEST_NOEVENT, "flip-vs-modeset-vs-hang" },
> -		{ 30, TEST_FLIP | TEST_PAN | TEST_HANG, "flip-vs-panning-vs-hang" },
> +		{ 1, TEST_FLIP | TEST_MODESET | TEST_HANG | TEST_NOEVENT, "flip-vs-modeset-vs-hang" },
> +		{ 1, TEST_FLIP | TEST_PAN | TEST_HANG, "flip-vs-panning-vs-hang" },

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
