Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9E715986D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 19:21:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DA906F40D;
	Tue, 11 Feb 2020 18:21:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 9.mo6.mail-out.ovh.net (9.mo6.mail-out.ovh.net [87.98.171.146])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB5AD6F40D
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 18:21:46 +0000 (UTC)
Received: from player735.ha.ovh.net (unknown [10.110.171.54])
 by mo6.mail-out.ovh.net (Postfix) with ESMTP id 346691FD3B8
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 19:13:03 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player735.ha.ovh.net (Postfix) with ESMTPSA id 650C8F0C2B0D;
 Tue, 11 Feb 2020 18:12:59 +0000 (UTC)
Date: Tue, 11 Feb 2020 20:12:58 +0200
From: Andi Shyti <andi@etezian.org>
To: Andi Shyti <andi@etezian.org>
Message-ID: <20200211181258.GA5391@jack.zhora.eu>
References: <20200211181027.5329-1-andi@etezian.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211181027.5329-1-andi@etezian.org>
X-Ovh-Tracer-Id: 17198965502061429442
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -85
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrieefgddutdefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnegoteeftdduqddtudculdduhedmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecukfhppedtrddtrddtrddtpdekuddrudejhedrvddvfedruddukeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejfeehrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: make a gt sysfs group and
 move power management files
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 11, 2020 at 08:10:27PM +0200, Andi Shyti wrote:
> From: Andi Shyti <andi.shyti@intel.com>
> 
> The GT has its own properties and in sysfs they should be grouped
> in the 'gt/' directory.
> 
> Create the 'gt/' directory in sysfs and move the power management
> related files.
> 
> Signed-off-by: Andi Shyti <andi.shyti@intel.com>
> ---
> Hi,
> 
> this second version takes into account the compatibility with the
> existing API. Version 1 was breaking it while this second version
> generates the files twice in redundancy.
> 
> Thanks Chris and Jani for the review,
> Andi
> 
> Changelog:
> ==========
> v1 -> v2:
>  - keep the existing files as they are
>  - use "intel_gt_*" as prefix instead of "sysfs_*"

As a side note of this patch, the current interface needs to be
declared as obsolete in the ABI, for now it prints a warning
whenever the old (or better existing) interface is called.

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
