Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 009921B94FC
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 03:42:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC8D189D58;
	Mon, 27 Apr 2020 01:42:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 7800 seconds by postgrey-1.36 at gabe;
 Mon, 27 Apr 2020 01:41:59 UTC
Received: from 17.mo6.mail-out.ovh.net (17.mo6.mail-out.ovh.net
 [46.105.36.150])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E40D89D58
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 01:41:59 +0000 (UTC)
Received: from player756.ha.ovh.net (unknown [10.108.42.170])
 by mo6.mail-out.ovh.net (Postfix) with ESMTP id 9199320BE33
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 01:16:00 +0200 (CEST)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player756.ha.ovh.net (Postfix) with ESMTPSA id DD4C810EF95D0;
 Sun, 26 Apr 2020 23:15:57 +0000 (UTC)
Date: Mon, 27 Apr 2020 02:15:56 +0300
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200426231556.GA13001@jack.zhora.eu>
References: <20200425175751.30358-1-chris@chris-wilson.co.uk>
 <20200425175751.30358-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200425175751.30358-2-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 1598777867902894601
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrheekgddulecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeehiedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/gt: Move rps.enabled/active to
 flags
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

>  	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
>  	if (IS_CHERRYVIEW(i915))
> -		rps->enabled = chv_rps_enable(rps);
> +		enabled = chv_rps_enable(rps);
>  	else if (IS_VALLEYVIEW(i915))
> -		rps->enabled = vlv_rps_enable(rps);
> +		enabled = vlv_rps_enable(rps);
>  	else if (INTEL_GEN(i915) >= 9)
> -		rps->enabled = gen9_rps_enable(rps);
> +		enabled = gen9_rps_enable(rps);
>  	else if (INTEL_GEN(i915) >= 8)
> -		rps->enabled = gen8_rps_enable(rps);
> +		enabled = gen8_rps_enable(rps);
>  	else if (INTEL_GEN(i915) >= 6)
> -		rps->enabled = gen6_rps_enable(rps);
> +		enabled = gen6_rps_enable(rps);
>  	else if (IS_IRONLAKE_M(i915))
> -		rps->enabled = gen5_rps_enable(rps);
> +		enabled = gen5_rps_enable(rps);
>  	intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
> -	if (!rps->enabled)
> +	if (!enabled || rps->max_freq <= rps->min_freq)

isn't this a bit out of context? I don't think the above
functions have any effect on max_freq and min freq.

just if (!enable) should do.

Andi

>  		return;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
