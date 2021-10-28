Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C1A43E8AB
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 20:56:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77D226E077;
	Thu, 28 Oct 2021 18:55:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 4200 seconds by postgrey-1.36 at gabe;
 Thu, 28 Oct 2021 18:55:57 UTC
Received: from 11.mo561.mail-out.ovh.net (11.mo561.mail-out.ovh.net
 [87.98.184.158])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C398A6E077
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 18:55:57 +0000 (UTC)
Received: from player693.ha.ovh.net (unknown [10.110.103.225])
 by mo561.mail-out.ovh.net (Postfix) with ESMTP id DA62523ACF
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 16:30:19 +0000 (UTC)
Received: from etezian.org (unknown [31.22.57.166])
 (Authenticated sender: andi@etezian.org)
 by player693.ha.ovh.net (Postfix) with ESMTPSA id C39CB23AF9E34;
 Thu, 28 Oct 2021 16:30:10 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-98R002e4ba0109-9c7f-4c7c-abe6-b28c21dd06aa,
 525B1D08A26901CC0984473A0927D9CF1F2D8319) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 31.22.57.166
Date: Thu, 28 Oct 2021 18:30:09 +0200
From: Andi Shyti <andi@etezian.org>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Paulo Zanoni <paulo.r.zanoni@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, Andi Shyti <andi@etezian.org>
Message-ID: <YXrQEb1Isc+n9dAO@jack.zhora.eu>
References: <20211008215635.2026385-1-matthew.d.roper@intel.com>
 <20211008215635.2026385-9-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211008215635.2026385-9-matthew.d.roper@intel.com>
X-Ovh-Tracer-Id: 14995579386921028106
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddrvdegfedgudeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecuggftrfgrthhtvghrnheptdfgudduhfefueeujeefieehtdeftefggeevhefgueellefhudetgeeikeduieefnecukfhppedtrddtrddtrddtpdefuddrvddvrdehjedrudeiieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrieelfedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH 08/11] drm/i915/xehp: Make IRQ reset and
 postinstall multi-tile aware
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Paulo and Matt,

[...]

> @@ -3190,14 +3190,19 @@ static void dg1_irq_reset(struct drm_i915_private *dev_priv)

mmmhhh... bad naming :/

[...]

> -	dg1_master_intr_enable(uncore->regs);
> -	intel_uncore_posting_read(uncore, DG1_MSTR_TILE_INTR);
> +	dg1_master_intr_enable(dev_priv->gt.uncore->regs);
> +	intel_uncore_posting_read(dev_priv->gt.uncore, DG1_MSTR_TILE_INTR);

I guess this should also go under a for_each_gt()

Andi
