Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5926514EE9E
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 15:39:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90F1A6FB74;
	Fri, 31 Jan 2020 14:39:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 289196FB73;
 Fri, 31 Jan 2020 14:39:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 06:39:24 -0800
X-IronPort-AV: E=Sophos;i="5.70,386,1574150400"; d="scan'208";a="223156393"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 06:39:23 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Fri, 31 Jan 2020 15:39:17 +0100
Message-ID: <1753010.1nAikX5oWX@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <158048114147.2430.6882438649434461232@skylake-alporthouse-com>
References: <20200131132037.23319-1-janusz.krzysztofik@linux.intel.com>
 <20200131132037.23319-2-janusz.krzysztofik@linux.intel.com>
 <158048114147.2430.6882438649434461232@skylake-alporthouse-com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH 1/1] drm/i915: Never allow userptr into
 the new mapping types
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Friday, January 31, 2020 3:32:21 PM CET Chris Wilson wrote:
> Quoting Janusz Krzysztofik (2020-01-31 13:20:37)
> > Commit 4f2a572eda67 ("drm/i915/userptr: Never allow userptr into the
> > mappable GGTT") made I915_GEM_MMAP_GTT IOCTLs to fail when atepmted
> > on a userptr object in order to protect from a lockdep splat.  Later
> > on, new mapping types were introduced by commit cc662126b413
> > ("drm/i915: Introduce DRM_I915_GEM_MMAP_OFFSET").  Those new mapping
> > types suffer from the same lockdep splat issue but they now succeed
> > when tried on top of a userptr object.  Fix it.
> > 
> > While being at it, return -EINVAL which seems to better reflect the
> > reason for the failure than -ENODEV.
> 
> No. It is not a user error, it's a failure to implement support for it,
> so we parcel it off as an incompatible device.

OK, if there is no better option I'll revert that to -ENODEV and resubmit.

Thanks,
Janusz


> -Chris
> 




_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
