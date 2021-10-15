Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D777E42ECC6
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 10:51:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62F6B6ECFE;
	Fri, 15 Oct 2021 08:51:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECCEF6ECFE;
 Fri, 15 Oct 2021 08:51:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="288743507"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="288743507"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 01:51:14 -0700
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="492379684"
Received: from tscherue-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.44.3])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 01:51:11 -0700
Date: Fri, 15 Oct 2021 10:51:08 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>, Andi Shyti <andi@etezian.org>,
 Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <YWlAinPVM0o0Gz8f@intel.intel>
References: <20211012221738.16029-1-andi@etezian.org>
 <20211014000427.652zp2ahlq7g2cvd@ldmartin-desk2>
 <YWd1tnp2bdHBIWG0@intel.intel>
 <20211015045450.ew5n7plkbllshms2@ldmartin-desk2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211015045450.ew5n7plkbllshms2@ldmartin-desk2>
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915/gt: move remaining debugfs
 interfaces into gt
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

Hi Lucas,

> > > > The following interfaces:
> > > >
> > > >  i915_wedged
> > > >  i915_forcewake_user
> > > >
> > > > are dependent on gt values. Put them inside gt/ and drop the
> > > > "i915_" prefix name. This would be the new structure:
> > > >
> > > >  dri/0/gt
> > > >  |
> > > >  +-- forcewake_user
> > > >  |
> > > >  \-- reset
> > > >
> > > > For backwards compatibility with existing igt (and the slight
> > > > semantic difference between operating on the i915 abi entry
> > > > points and the deep gt info):
> > > >
> > > >  dri/0
> > > >  |
> > > >  +-- i915_wedged
> > > >  |
> > > >  \-- i915_forcewake_user
> > > >
> > > > remain at the top level.
> > > >
> > > > Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> > > > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > > > Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > > 
> > > do you want me to push this?
> > 
> > yes, please.
> 
> done, thanks.

Thanks!

> Now, about igt: eventually we need to update it to use the gt
> debugfs file. Is this something you have already or is it something
> we are waiting on multi-gt to land?

There is some work done in igt but it's all around multitile. I
think it's better to wait for the multitile to land and then
update igt.

In any case, at the current state, igt shouldn't be affected.

Thanks again,
Andi
