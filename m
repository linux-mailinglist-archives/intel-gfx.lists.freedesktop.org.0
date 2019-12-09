Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 679BD117C3A
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 01:16:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB5686E1E6;
	Tue, 10 Dec 2019 00:16:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 5699 seconds by postgrey-1.36 at gabe;
 Tue, 10 Dec 2019 00:16:39 UTC
Received: from 3.mo5.mail-out.ovh.net (3.mo5.mail-out.ovh.net [46.105.40.108])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E71636E1E6
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 00:16:39 +0000 (UTC)
Received: from player690.ha.ovh.net (unknown [10.108.57.211])
 by mo5.mail-out.ovh.net (Postfix) with ESMTP id 7248F25CD80
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 00:38:57 +0100 (CET)
Received: from etezian.org (net-37-116-49-191.cust.vodafonedsl.it
 [37.116.49.191]) (Authenticated sender: andi@etezian.org)
 by player690.ha.ovh.net (Postfix) with ESMTPSA id C082BCF93B5C;
 Mon,  9 Dec 2019 23:38:53 +0000 (UTC)
Date: Tue, 10 Dec 2019 01:39:05 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191209233905.GA1617@jack.zhora.eu>
References: <20191209223556.3897-1-andi@etezian.org>
 <20191209223556.3897-3-andi@etezian.org>
 <157593165124.10362.5965422754664744456@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157593165124.10362.5965422754664744456@skylake-alporthouse-com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Ovh-Tracer-Id: 15785398172987081225
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudelvddgtdekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpfeejrdduudeirdegledrudeludenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrieeltddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Move power management
 debugfs files into gt
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

> > +int intel_gt_pm_debugfs_register(struct intel_gt *gt)
> > +{
> > +       struct drm_minor *minor = gt->i915->drm.primary;
> > +
> > +       return drm_debugfs_create_files(i915_gt_pm_debugfs_list,
> > +                                       ARRAY_SIZE(i915_gt_pm_debugfs_list),
> > +                                       minor->debugfs_root, minor);
> 
> You missed a vital trick to pass the gt as our private. Hint don't use
> drm_debugfs_create_files() per se.

I knew this comment would come, but, after some thoughts, it felt
like this was the less drastic approach (because at the end
nothing really changes :) ).

I will improve it in v2, along with the renaming in patch 1.

Thanks Chris,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
