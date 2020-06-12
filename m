Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A01681F7FE5
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jun 2020 02:23:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05CD46E217;
	Sat, 13 Jun 2020 00:23:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 4200 seconds by postgrey-1.36 at gabe;
 Sat, 13 Jun 2020 00:23:34 UTC
Received: from 6.mo68.mail-out.ovh.net (6.mo68.mail-out.ovh.net
 [46.105.63.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EF566E217
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jun 2020 00:23:34 +0000 (UTC)
Received: from player797.ha.ovh.net (unknown [10.108.42.174])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id 294A816FCD2
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jun 2020 01:05:10 +0200 (CEST)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player797.ha.ovh.net (Postfix) with ESMTPSA id 249BEF46448A;
 Fri, 12 Jun 2020 23:05:08 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-100R003567308aa-1e6d-4970-ad8f-a4c93deb17de,F515B8970FD380A3A4FEF15C3BD6B0261C6BE9D1)
 smtp.auth=andi@etezian.org
Date: Sat, 13 Jun 2020 02:05:07 +0300
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200612230507.GA35541@jack.zhora.eu>
References: <20200607222108.14401-1-chris@chris-wilson.co.uk>
 <20200607222108.14401-5-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200607222108.14401-5-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 731271991932404233
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrudeivddgudeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecuggftrfgrthhtvghrnheptdfgudduhfefueeujeefieehtdeftefggeevhefgueellefhudetgeeikeduieefnecukfhppedtrddtrddtrddtpddvudefrddvgeefrddugedurdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejleejrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
Subject: Re: [Intel-gfx] [PATCH 05/28] drm/i915/selftests: Trim execlists
 runtime
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

On Sun, Jun 07, 2020 at 11:20:45PM +0100, Chris Wilson wrote:
> Reduce the smoke depth by trimming the number of contexts, repetitions
> and wait times. This is in preparation for a less greedy scheduler that
> tries to be fair across contexts, resulting in a great many more context
> switches. A thousand context switches may be 50-100ms, causing us to
> timeout as the HW is not fast enough to complete the deep smoketests.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

looks all right to me:

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
