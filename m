Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C270158C24
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 10:53:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D6DE6E4AE;
	Tue, 11 Feb 2020 09:53:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4AA76E4A5;
 Tue, 11 Feb 2020 09:53:09 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 01:53:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="226456705"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by orsmga008.jf.intel.com with ESMTP; 11 Feb 2020 01:53:08 -0800
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1j1SE7-0002DP-43; Tue, 11 Feb 2020 11:53:07 +0200
Date: Tue, 11 Feb 2020 11:53:07 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200211095307.GN25209@platvala-desk.ger.corp.intel.com>
References: <cover.1581381780.git.dale.b.stimson@intel.com>
 <2f2d74a2aa0bb1ab0050bdeb5a272ae9d7f61c69.1581381780.git.dale.b.stimson@intel.com>
 <20200211092200.GL25209@platvala-desk.ger.corp.intel.com>
 <877e0t1nfo.fsf@intel.com>
 <20200211093732.GM25209@platvala-desk.ger.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211093732.GM25209@platvala-desk.ger.corp.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/3] i915/gem_mmio_base.c -
 get mmio_base from debugfs (if possible)
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

On Tue, Feb 11, 2020 at 11:37:32AM +0200, Petri Latvala wrote:
> On Tue, Feb 11, 2020 at 11:30:03AM +0200, Jani Nikula wrote:
> > On Tue, 11 Feb 2020, Petri Latvala <petri.latvala@intel.com> wrote:
> > >> diff --git a/lib/i915/gem_mmio_base.c b/lib/i915/gem_mmio_base.c
> > >> new file mode 100644
> > >> index 000000000..8718c092f
> > >> --- /dev/null
> > >> +++ b/lib/i915/gem_mmio_base.c
> > >> @@ -0,0 +1,346 @@
> > >> +//  Copyright (C) 2020 Intel Corporation
> > >> +//
> > >> +//  SPDX-License-Identifier: MIT
> > >
> > > We don't use SPDX headers in IGT, please use the MIT license comment
> > > block instead.
> > 
> > Why not? Should we start?
> 
> I'm all for it, but preferably not trickled in but as separate conversion!


I have been informed from people with experience that converting to
SPDX is more convoluted than I thought.

Thus, take-backsies! SPDX for new files is ok. You can quote me on this.


-- 
Petri Latvala
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
