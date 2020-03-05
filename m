Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AD117ADC9
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 19:02:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85D6E6E353;
	Thu,  5 Mar 2020 18:02:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFF5C6E353
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 18:02:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 10:02:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="229780713"
Received: from nreina-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.24.146])
 by orsmga007.jf.intel.com with ESMTP; 05 Mar 2020 10:02:48 -0800
Date: Thu, 5 Mar 2020 20:02:46 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20200305180246.GA21851@intel.intel>
References: <20200228022843.1936-1-daniele.ceraolospurio@intel.com>
 <20200228022843.1936-6-daniele.ceraolospurio@intel.com>
 <20200303015211.GF1536@intel.intel>
 <86c2cff6-eff6-6ff9-3774-ca8d7771c3dd@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <86c2cff6-eff6-6ff9-3774-ca8d7771c3dd@intel.com>
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/uc: Move uC debugfs to its own
 folder under GT
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

Hi Daniele,

> > On Thu, Feb 27, 2020 at 06:28:42PM -0800, Daniele Ceraolo Spurio wrote:
> > > uC is a component of the GT, so it makes sense for the uC debugfs files
> > > to be in the GT folder. A subfolder has been used to keep the same
> > > structure we have for the code.
> > 
> > Can we please document the interface changes. I see there are
> > some differences between the original and the new interfaces.
> > 
> 
> What differences are you referring to? there aren't supposed to be any,
> aside from the path change.

Have I seen it wrong or there are new files in this patch?
In any case, maybe we need to have the new structure.

> > > +#define DEFINE_UC_DEBUGFS_ATTRIBUTE(__name)				\
> > > +	static int __name ## _open(struct inode *inode, struct file *file) \
> > > +{									\
> > > +	return single_open(file, __name ## _show, inode->i_private);	\
> > > +}									\
> > > +static const struct file_operations __name ## _fops = {			\
> > > +	.owner = THIS_MODULE,						\
> > > +	.open = __name ## _open,					\
> > > +	.read = seq_read,						\
> > > +	.llseek = seq_lseek,						\
> > > +	.release = single_release,					\
> > > +}
> > 
> > Why do we need DEFINE_UC_DEBUGFS_ATTRIBUTE()?
> > 
> > DEFINE_GT_DEBUGFS_ATTRIBUTE() was meant to be common to all gt
> > debugfs. I there any reason we need a new one?
> > 
> 
> Just wanted to avoid including the other header just for this macro.

well that was supposed to be a library for all the gem/debugfs
files and avoid duplicated code, I don't see anything wrong with
including the file.

> > > +struct debugfs_uc_file {
> > > +	const char *name;
> > > +	const struct file_operations *fops;
> > > +};
> > > +
> > > +#define debugfs_uc_register_files(files__, root__, data__) \
> > > +do { \
> > > +	int i__ = 0; \
> > > +	for (i__ = 0; i__ < ARRAY_SIZE(files__); i__++) { \
> > > +		debugfs_create_file(files__[i__].name, \
> > > +				    0444, root__, data__, \
> > > +				    files__[i__].fops); \
> > > +	} \
> > > +} while (0)
> > 
> > You want to define your own debugfs_uc_register_files() instead
> > of using debugfs_gt_register_files() because you want "data__"
> > to be void, right?
> > 
> > I think we can achieve that by adding a wrapper in debugfs_gt.c,
> > perhaps we can do something like:
> > 
> > void __debugfs_gt_register_files(struct intel_gt *gt,
> >                                   struct dentry *root,
> >                                   const struct debugfs_gt_file *files,
> >                                   void *data,
> >                                   unsigned long count)
> > {
> >        ......
> > }
> > 
> > and
> > 
> > #define debugfs_gt_register_files(...) __debugfs_gt_register_files(...)
> > #define debugfs_uc_register_files(...) __debugfs_gt_register_files(...)
> > 
> > so that we can keep everything in a library. What do you think.
> > 
> 
> LGTM. Mind if I rename to:
> 
> intel_gt_debugfs_register(...)
> intel_uc_debugfs_register(...)
> 
> to avoid the debugfs_* prefix, as pointed out by Jani?

I have a patch for it, can you please hold a little, unless, of
course, yours is already ready.

Obvously, the naming you propose makes sense.

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
