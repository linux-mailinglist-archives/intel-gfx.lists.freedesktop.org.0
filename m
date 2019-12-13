Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B0411E5DD
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 15:52:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 536A36E8C7;
	Fri, 13 Dec 2019 14:52:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2.mo179.mail-out.ovh.net (2.mo179.mail-out.ovh.net
 [178.33.250.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A970A6E8C7
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 14:52:05 +0000 (UTC)
Received: from player799.ha.ovh.net (unknown [10.109.146.19])
 by mo179.mail-out.ovh.net (Postfix) with ESMTP id A48E5152C4B
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 15:44:08 +0100 (CET)
Received: from etezian.org (net-37-116-49-191.cust.vodafonedsl.it
 [37.116.49.191]) (Authenticated sender: andi@etezian.org)
 by player799.ha.ovh.net (Postfix) with ESMTPSA id BD18BD373478;
 Fri, 13 Dec 2019 14:44:04 +0000 (UTC)
Date: Fri, 13 Dec 2019 16:44:04 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191213144404.GB5108@jack.zhora.eu>
References: <20191213124549.28412-1-andi@etezian.org>
 <20191213124549.28412-3-andi@etezian.org>
 <157624155700.6987.7147279410865367970@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157624155700.6987.7147279410865367970@skylake-alporthouse-com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Ovh-Tracer-Id: 11797179225997689353
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudelledgieekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpfeejrdduudeirdegledrudeludenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeelledrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/gt: Move power management
 debug files into a gt aware debugfs
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

Hi Chris,

> > +int intel_gt_pm_debugfs_register(struct intel_gt *gt)
> > +{
> > +       struct dentry *root = gt->debugfs_entry;
> > +       int i;
> > +
> > +       pr_info("ANDIII function start\n");
> > +       if (unlikely(!root))
> > +               return -ENODEV;
> > +
> > +       for (i = 0; i < ARRAY_SIZE(gt_pm_debugfs_files); i++) {
> > +               const struct gt_pm_debugfs_files *f = &gt_pm_debugfs_files[i];
> > +
> > +               if (f->eval && !f->eval(gt))
> > +                       continue;
> > +
> > +               debugfs_create_file(f->name, 0444, root, gt, f->fops);
> > +       }
> > +       pr_info("ANDIII function end\n");
> > +
> > +       return 0;
> 
> Looking better!

you liked my wonderful debugging printouts? :D

> Do we even need to keep the gt->debugfs_entry around?

Yes, that can be removed, indeed, I was thinking that perhaps in
the future we might need that pointer, but yes, definitely not
necessary.

> We are not going to ever do hotplug are we and so only
> need to populate once?

for example? do you mean something like files generated in
certain conditions, like during interrupts or files generated and
destroyed depending on the power state?

If so, you might want an interface for generating/destroying
files, but do we have such case now to really care about?

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
