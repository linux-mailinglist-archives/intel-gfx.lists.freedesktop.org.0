Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A67F21309B
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 02:50:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F4556E193;
	Fri,  3 Jul 2020 00:50:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 7801 seconds by postgrey-1.36 at gabe;
 Fri, 03 Jul 2020 00:50:16 UTC
Received: from 3.mo69.mail-out.ovh.net (3.mo69.mail-out.ovh.net
 [188.165.52.203])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 059D16E193
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 00:50:16 +0000 (UTC)
Received: from player792.ha.ovh.net (unknown [10.110.115.231])
 by mo69.mail-out.ovh.net (Postfix) with ESMTP id D366695AB2
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 00:24:38 +0200 (CEST)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player792.ha.ovh.net (Postfix) with ESMTPSA id D0D76140964E2;
 Thu,  2 Jul 2020 22:24:32 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-103G0051734b554-7e0a-467b-9b42-65100ee9cdb4,330C922CC493531D64D5056C63BB4F2290C4140E)
 smtp.auth=andi@etezian.org
Date: Fri, 3 Jul 2020 01:24:31 +0300
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200702222431.GE1969@jack.zhora.eu>
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
 <20200702083225.20044-3-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200702083225.20044-3-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 6820138688120078857
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrtdehgddtkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucggtffrrghtthgvrhhnpedtgfduudfhfeeuueejfeeihedtfeetgfegveehgfeuleelhfduteegieekudeifeenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeelvddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH 03/23] drm/i915/gem: Drop forced
 struct_mutex from shrinker_taints_mutex
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

On Thu, Jul 02, 2020 at 09:32:05AM +0100, Chris Wilson wrote:
> Since we no longer always take struct_mutex around everything, and want
> the freedom to create GEM objects, actually taking struct_mutex inside
> the lock creation ends up pulling the mutex inside other looks. Since we
> don't use generally use struct_mutex, we can relax the tainting.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Looks good!

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
