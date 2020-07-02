Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF488212EEE
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 23:36:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53C186E0A1;
	Thu,  2 Jul 2020 21:36:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1199 seconds by postgrey-1.36 at gabe;
 Thu, 02 Jul 2020 21:36:22 UTC
Received: from 10.mo173.mail-out.ovh.net (10.mo173.mail-out.ovh.net
 [46.105.74.148])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B9D46E0A1
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 21:36:22 +0000 (UTC)
Received: from player688.ha.ovh.net (unknown [10.110.171.173])
 by mo173.mail-out.ovh.net (Postfix) with ESMTP id 26C9D142BA5
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 22:56:49 +0200 (CEST)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player688.ha.ovh.net (Postfix) with ESMTPSA id 50A4A13EA36AB;
 Thu,  2 Jul 2020 20:56:40 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-106R006635b2fdc-abca-48da-8777-caba1f020980,FB3D8E5C650F7CFAB96446367E683FB3BA96C23C)
 smtp.auth=andi@etezian.org
Date: Thu, 2 Jul 2020 23:56:39 +0300
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200702205639.GB1969@jack.zhora.eu>
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
 <20200702202545.GA1969@jack.zhora.eu>
 <159372232179.22925.7779642345726039521@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159372232179.22925.7779642345726039521@build.alporthouse.com>
X-Ovh-Tracer-Id: 5337047036431745545
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrtdeggdduhedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecuggftrfgrthhtvghrnheptdfgudduhfefueeujeefieehtdeftefggeevhefgueellefhudetgeeikeduieefnecukfhppedtrddtrddtrddtpddvudefrddvgeefrddugedurdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrheikeekrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
Subject: Re: [Intel-gfx] [PATCH 01/23] drm/i915: Drop vm.ref for duplicate
 vma on construction
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

> Ta, going to send that as a patch?

mine was a suggestion, it was easier to build the diff than
explain myself :)

If you want I can send it, though.

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
