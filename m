Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AD360AE94
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 17:09:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B925310E827;
	Mon, 24 Oct 2022 15:09:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9844810E827
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 15:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666624153; x=1698160153;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2BKAsgzHQ42/4mFBdZ317TDHYcR71x+t0Yjm7IybOco=;
 b=hlOebQtZc9fqL1hFcpMSDZPx0ryWq5zFkQIPvFgsivIBzmlrWivAHsDU
 zBLRB5sQEYL5JODyOKL19lNhmSkR4+qoe4RLZUpmjms6Uasrb2ru33Eiy
 DqHtN98KRwGWQRE/aNOM+zF+nmrzA4tLu3WT/9c1tdtNTm8lBjcyXCr19
 Ywfcus4ZmhIjgM1mPtyO2FL1Um/dbhu/j0sylAtu3941dJcGTbFKR9hb1
 SWFSWE+moAeV4+17TRmAj/WVZzKtQc49kGN+wGmslPsrtZM1td532tWUO
 WcFRIHpZSJrq2wK2pBF005OBziu3sTO1yQMWb2gZLVIfk9edLcJ4X7iKo A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="309129772"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="309129772"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 08:08:37 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="876466961"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="876466961"
Received: from scsudhak-mobl5.gar.corp.intel.com (HELO intel.com)
 ([10.251.215.22])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 08:08:34 -0700
Date: Mon, 24 Oct 2022 17:08:33 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y1aqcQj/XtTry2M3@ashyti-mobl2.lan>
References: <20221013133001.3639326-1-andrzej.hajda@intel.com>
 <20221013133001.3639326-3-andrzej.hajda@intel.com>
 <Y1K9NCH8hiqaS0Zc@ashyti-mobl2.lan>
 <636ac83a-a3d5-b313-0f28-8ad5f4df2630@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <636ac83a-a3d5-b313-0f28-8ad5f4df2630@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/selftests: add
 igt_vma_move_to_active_unlocked
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Mon, Oct 24, 2022 at 04:05:57PM +0200, Andrzej Hajda wrote:
> On 21.10.2022 17:39, Andi Shyti wrote:
> > Hi Andrzej,
> > 
> > [...]
> > 
> > > +static inline int __must_check
> > > +igt_vma_move_to_active_unlocked(struct i915_vma *vma, struct i915_request *rq,
> > > +				unsigned int flags)
> > > +{
> > > +	int err;
> > > +
> > > +	i915_vma_lock(vma);
> > > +	err = _i915_vma_move_to_active(vma, rq, &rq->fence, flags);
> > > +	i915_vma_unlock(vma);
> > > +	return err;
> > > +}
> > > +
> > 
> > there are calls to i915_vma_move_to_active also outside
> > selftests, why not having a i915_move_to_active_unlocked() in
> > i915_vma.h?
> 
> As I said before, Chris suggested real users of this call should use locking
> explicitly.

Yeah, sure... I was just thinking about it... no big opinion,
besides I don't hink my proposal in Patch 1 makes things easier.

> > Besides here you break also the bisect, because between patch 1
> > and 2 the i915_move_to_avtive would also call
> > i915_request_await_object(). Right or am I getting confused?
> 
> Hmm, looking at v2, I do not see breakage. Patch 1 moves all occurrences of
> i915_request_await_object inside i915_vma_move_to_active.
> Patch 2, just replaces sequence of calls with call to new helper.

Are you sure?

I might be getting confused, but in Patch 1
"i915_vma_move_to_active()" takes "i915_request_await_object()"
inside. This affects all the calls to "i915_vma_move_to_active()"
in the selftests that are not actually requesting
"i915_request_await_object()".

We need to wait for Patch 2 in order to have a local redefinition
of "i915_vma_move_to_active()" for those selftests.

Andi
