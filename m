Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3CD2FEECB
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 16:31:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65DAA6E91E;
	Thu, 21 Jan 2021 15:30:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 4.mo178.mail-out.ovh.net (4.mo178.mail-out.ovh.net
 [46.105.49.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D53F6E8FA
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 15:30:57 +0000 (UTC)
Received: from player168.ha.ovh.net (unknown [10.108.57.150])
 by mo178.mail-out.ovh.net (Postfix) with ESMTP id 285CAC14BE
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 16:23:59 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player168.ha.ovh.net (Postfix) with ESMTPSA id 2543E1A3E3149;
 Thu, 21 Jan 2021 15:23:54 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-103G005e6d56417-34b2-4a34-95af-5f471613897d,
 CAC1A779C7E69CC0B09A0D0E1FF85449833E868F) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 213.243.141.64
Date: Thu, 21 Jan 2021 17:23:51 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <YAmch2OCciQsJuh9@jack.zhora.eu>
References: <20210120122205.2808-1-chris@chris-wilson.co.uk>
 <20210120122205.2808-3-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210120122205.2808-3-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 11281235592660173321
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrudeggdejkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucggtffrrghtthgvrhhnpedtgfduudfhfeeuueejfeeihedtfeetgfegveehgfeuleelhfduteegieekudeifeenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrudeikedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH 03/10] drm/i915: Strip out internal
 priorities
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

> -static void __bump_priority(struct i915_sched_node *node, unsigned int bump)
> -{
> -	struct i915_sched_attr attr = node->attr;
> -
> -	if (attr.priority & bump)
> -		return;
> -
> -	attr.priority |= bump;
> -	__i915_schedule(node, &attr);
> -}
> -
> -void i915_schedule_bump_priority(struct i915_request *rq, unsigned int bump)
> -{
> -	unsigned long flags;
> -
> -	GEM_BUG_ON(bump & ~I915_PRIORITY_MASK);
> -	if (READ_ONCE(rq->sched.attr.priority) & bump)
> -		return;
> -
> -	spin_lock_irqsave(&schedule_lock, flags);
> -	__bump_priority(&rq->sched, bump);
> -	spin_unlock_irqrestore(&schedule_lock, flags);
> -}

was, indeed, this function used anywhere else?

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
