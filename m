Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E200C42CF71
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 02:11:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D88BB6EC03;
	Thu, 14 Oct 2021 00:11:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CF3F6EC01;
 Thu, 14 Oct 2021 00:11:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="313767620"
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="313767620"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 17:11:40 -0700
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="491699172"
Received: from jvilstru-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.209.57])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 17:11:37 -0700
Date: Thu, 14 Oct 2021 02:11:34 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Andi Shyti <andi@etezian.org>, Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <YWd1tnp2bdHBIWG0@intel.intel>
References: <20211012221738.16029-1-andi@etezian.org>
 <20211014000427.652zp2ahlq7g2cvd@ldmartin-desk2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211014000427.652zp2ahlq7g2cvd@ldmartin-desk2>
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

On Wed, Oct 13, 2021 at 05:04:27PM -0700, Lucas De Marchi wrote:
> On Wed, Oct 13, 2021 at 12:17:38AM +0200, Andi Shyti wrote:
> > From: Andi Shyti <andi.shyti@linux.intel.com>
> > 
> > The following interfaces:
> > 
> >  i915_wedged
> >  i915_forcewake_user
> > 
> > are dependent on gt values. Put them inside gt/ and drop the
> > "i915_" prefix name. This would be the new structure:
> > 
> >  dri/0/gt
> >  |
> >  +-- forcewake_user
> >  |
> >  \-- reset
> > 
> > For backwards compatibility with existing igt (and the slight
> > semantic difference between operating on the i915 abi entry
> > points and the deep gt info):
> > 
> >  dri/0
> >  |
> >  +-- i915_wedged
> >  |
> >  \-- i915_forcewake_user
> > 
> > remain at the top level.
> > 
> > Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> 
> do you want me to push this?

yes, please.

Thanks,
Andi
