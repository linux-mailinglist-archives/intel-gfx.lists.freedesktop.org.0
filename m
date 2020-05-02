Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA72D1C287A
	for <lists+intel-gfx@lfdr.de>; Sat,  2 May 2020 23:57:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DE256E082;
	Sat,  2 May 2020 21:57:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8.mo2.mail-out.ovh.net (8.mo2.mail-out.ovh.net [188.165.52.147])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D668E6E082
 for <intel-gfx@lists.freedesktop.org>; Sat,  2 May 2020 21:57:30 +0000 (UTC)
Received: from player770.ha.ovh.net (unknown [10.110.171.227])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id 11CC01D3A9F
 for <intel-gfx@lists.freedesktop.org>; Sat,  2 May 2020 23:57:28 +0200 (CEST)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player770.ha.ovh.net (Postfix) with ESMTPSA id 78DE7120B928E;
 Sat,  2 May 2020 21:57:20 +0000 (UTC)
Date: Sun, 3 May 2020 00:57:11 +0300
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200502215711.GB14727@jack.zhora.eu>
References: <20200502173512.32353-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200502173512.32353-1-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 17061887190721610249
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrjedtgddtudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucggtffrrghtthgvrhhnpeejtdfhveefteegvdduieeikeeugeelfeefgefghfdvuedvtdfftedvvefgvdevueenucffohhmrghinhepfhhrvggvuggvshhkthhophdrohhrghenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeejtddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Sanitize RPS interrupts upon
 resume
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

On Sat, May 02, 2020 at 06:35:12PM +0100, Chris Wilson wrote:
> Currently we clear and disable the RPS pm interrupts on module load, and
> presume that they remain disabled forevermore. However, the mask is
> cleared on suspend and so after resume they may start showing up again
> unexepectedly.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1811
> Fixes: 8e99299a04bc ("drm/i915/gt: Track use of RPS interrupts in flags")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Andi Shyti <andi@etezian.org>

Reviewed-by: Andi Shyti <andi@etezian.org>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
