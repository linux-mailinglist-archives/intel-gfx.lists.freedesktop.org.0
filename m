Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3EF017EC3C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 23:44:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64C936E111;
	Mon,  9 Mar 2020 22:44:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6.mo178.mail-out.ovh.net (6.mo178.mail-out.ovh.net
 [46.105.53.132])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AFBC6E111
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 22:44:34 +0000 (UTC)
Received: from player732.ha.ovh.net (unknown [10.110.103.23])
 by mo178.mail-out.ovh.net (Postfix) with ESMTP id B620693CF3
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 23:38:19 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player732.ha.ovh.net (Postfix) with ESMTPSA id 61F42101D5283;
 Mon,  9 Mar 2020 22:38:13 +0000 (UTC)
Date: Tue, 10 Mar 2020 00:38:12 +0200
From: Andi Shyti <andi@etezian.org>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20200309223812.GA76960@jack.zhora.eu>
References: <20200306230344.53559-1-andi@etezian.org>
 <158358284291.6224.14954481538219251460@build.alporthouse.com>
 <20200307125531.GA58713@jack.zhora.eu>
 <158360254703.6224.5041578469627024671@build.alporthouse.com>
 <20200307221955.GA60782@jack.zhora.eu>
 <f1b8da58-e74c-1133-d21a-d22c55bec2ea@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f1b8da58-e74c-1133-d21a-d22c55bec2ea@intel.com>
X-Ovh-Tracer-Id: 14220960250480673392
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedruddulecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpkedurddujeehrddvvdefrdduudeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeefvddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/gt: allow setting generic data
 pointer
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

Hi Daniele,

> > > > > Quoting Andi Shyti (2020-03-06 23:03:44)
> > > > > > -void debugfs_gt_register_files(struct intel_gt *gt,
> > > > > > -                              struct dentry *root,
> > > > > > -                              const struct debugfs_gt_file *files,
> > > > > > -                              unsigned long count)
> > > > > > +void intel_gt_debugfs_register_files(struct dentry *root,
> > > > > > +                                    const struct debugfs_gt_file *files,
> > > > > > +                                    unsigned long count, void *data)
> > > > > >   {
> > > > > >          while (count--) {
> > > > > > -               if (!files->eval || files->eval(gt))
> > > > > > +               if (!files->eval || files->eval(data))
> > > > > >                          debugfs_create_file(files->name,
> > > > > > -                                           0444, root, gt,
> > > > > > +                                           0444, root, data,
> > > > > >                                              files->fops);
> > > > > 
> > > > > And now we are not a intel_gt routine, you'll want to move again :)
> > > > > i915_debugfs_utils.c ? :)
> > > > 
> > > > Actually, this is what it came to and this was the first
> > > > discussion I had with Daniele and that's also why I was loyal to
> > > > th "_gt_" wrappers until the end. But I had to agree that this
> > > > was becoming more a limitation.
> > > > 
> > > > The biggest difference left, which by the way is the real
> > > > distinguishing factor other than the *gt pointer, is that we
> > > > create files under gt directory, instead of having the root
> > > > imposed by the drm (even though the caller can eventually choose
> > > > different roots).
> > > > 
> > > > We could perhaps store the root pointer in the intel_gt
> > > > structure so that this function stays de facto an intel_gt
> > > > routine and the caller doesn't need to care where the files will
> > > > be generated. This is what we planned to do with sysfs as well.
> > > > 
> > > > What do you think?
> > > 
> > > I thought we were passing along the root. If not I think we should, more
> > > of a debugfs constructor context?
> > 
> > What do you mean with debugfs constructor context? Is it a
> > gt->debugfs_root pointer like the gt->sysfs_root?
> > 

> Getting the root pointer internally from gt wouldn't work well for
> subfolders, like the gt/uc/ folder I want to add for GuC/HuC files.

this was not my idea, actually I was thinking the opposite.

When in this case you call "intel_gt_debugfs_register_files", you
would provide "gt" pointer where the funcion extracts and handles
by its own the debugfs_root. The caller doesn't need to care
about it.

Another idea could be to use contexts, e.g. guc or pm or whatever
comes to mind, and the intel_gt_debugfs handles everything
including subdirectories.

> I think extracting this generic helper to a common file, possibly as a follow-up
> step, isn't a bad idea, also considering that there is at least 1 more
> use-case in i915_debugfs_register(). Maybe we can generalize as something
> like:
> 
> struct i915_debugfs_files {
> 	const char *name;
> 	const struct file_operations *fops;
> 	bool (*eval)(void *data);
> }
> 
> void i915_debugfs_register_files(struct dentry *root,
> 				 const struct i915_debugfs_files *files,
> 				 unsigned long count, void *data)
> {
>  	while (count--) {
> 		umode_t mode = files->fops->write ? 0644 : 0444;
> 		if (!files->eval || files->eval(data))
>  			debugfs_create_file(files->name,
> 					    mode, root, data,
>  					    files->fops);
> 	}
> }

apart from the mode, isn't this the same as the latest patch you
actually reviewed?

> void i915_debugfs_register_files(struct dentry *root,

based on my proposal, root would point, in your case, to the
"guc/" directory that will be created under the "gt/". NULL if
you want the file to be created in the main "gt/" directory.

While if we want to go by context, we could do something like:

struct i915_debugfs_files {                                    
      const char *name;                                        
      const struct file_operations *fops;                      
      bool (*eval)(void *data);                                
      enum intel_gt_context context;
}

and the gt handles everything.

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
