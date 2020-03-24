Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 934831914EA
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 16:42:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A346899A7;
	Tue, 24 Mar 2020 15:42:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 9.mo69.mail-out.ovh.net (9.mo69.mail-out.ovh.net [46.105.56.78])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 257436E3E7
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 15:42:37 +0000 (UTC)
Received: from player695.ha.ovh.net (unknown [10.110.115.5])
 by mo69.mail-out.ovh.net (Postfix) with ESMTP id AB964897F0
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 16:24:55 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player695.ha.ovh.net (Postfix) with ESMTPSA id 9388410A16166;
 Tue, 24 Mar 2020 15:24:52 +0000 (UTC)
Date: Tue, 24 Mar 2020 17:24:41 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200324152441.GD131880@jack.zhora.eu>
References: <20200324125233.56308-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324125233.56308-1-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 2758173298419941897
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrudehuddggeehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecuffhomhgrihhnpehfrhgvvgguvghskhhtohhprdhorhhgnecukfhppedtrddtrddtrddtpddvudefrddvgeefrddugedurdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrheileehrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/i915_pm_rc6_residency: Make
 ringbuffer rc6 fast
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

On Tue, Mar 24, 2020 at 12:52:33PM +0000, Chris Wilson wrote:
> The legacy ringbuffer submission lacks a fast soft-rc6
> mechanism as we have no interrupt for an idle ring. As such
> we are at the mercy of HW RC6... which is not quite as
> precise as we need to pass this test. Oh well.
> 
> Since HW is not fast enough to minimise power draw, tell the driver to
> park as soon as we know we are idle. One day, we hope for the driver to
> discover a mechanism to do this for itself, for as this test shows that
> can save us Watts!
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1516
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
