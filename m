Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC3B2ECF5F
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 13:13:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25DB489890;
	Thu,  7 Jan 2021 12:13:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1799 seconds by postgrey-1.36 at gabe;
 Thu, 07 Jan 2021 12:13:37 UTC
Received: from 5.mo3.mail-out.ovh.net (5.mo3.mail-out.ovh.net [87.98.178.36])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8E8489890
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jan 2021 12:13:37 +0000 (UTC)
Received: from player696.ha.ovh.net (unknown [10.109.138.180])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id 999F5271AD3
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jan 2021 12:34:12 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player696.ha.ovh.net (Postfix) with ESMTPSA id 207DF197A36C2;
 Thu,  7 Jan 2021 11:34:09 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-101G0041b81e093-123e-44f1-8736-8e16cd19e6d7,
 0C2E1051FE0353030FB811BB6B748EF7818C627F) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 213.243.141.64
Date: Thu, 7 Jan 2021 13:34:07 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <X/bxr+me1cPxl0Da@jack.zhora.eu>
References: <20210106163642.4405-2-chris@chris-wilson.co.uk>
 <20210107110555.19386-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210107110555.19386-1-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 17416264184500437513
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrvdegvddgvdelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecuggftrfgrthhtvghrnhepjedthfevfeetgedvudeiieekueegleeffeeggffhvdeuvddtffetvdevgfdvveeunecuffhomhgrihhnpehfrhgvvgguvghskhhtohhprdhorhhgnecukfhppedtrddtrddtrddtpddvudefrddvgeefrddugedurdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrheileeirdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/gt: Remove timeslice suppression
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

On Thu, Jan 07, 2021 at 11:05:55AM +0000, Chris Wilson wrote:
> In the next^W future patch, we remove the strict priority system and
> continuously re-evaluate the relative priority of tasks. As such we need
> to enable the timeslice whenever there is more than one context in the
> pipeline. This simplifies the decision and removes some of the tweaks to
> suppress timeslicing, allowing us to lift the timeslice enabling to a
> common spot at the end of running the submission tasklet.
> 
> One consequence of the suppression is that it was reducing fairness
> between virtual engines on an over saturated system; undermining the
> principle for timeslicing.
> 
> v2: Commentary
> v3: Commentary for the right cancel_timer()
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2802
> Testcase: igt/gem_exec_balancer/fairslice
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

I don't know if you have answered all Tvrtko's question, but I
to me this looks good.

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
