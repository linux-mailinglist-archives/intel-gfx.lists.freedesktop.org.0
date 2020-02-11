Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 113ED158BF9
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 10:38:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60BCF6E4A2;
	Tue, 11 Feb 2020 09:37:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25D936E4A2;
 Tue, 11 Feb 2020 09:37:56 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 01:37:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="431903472"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by fmsmga005.fm.intel.com with ESMTP; 11 Feb 2020 01:37:53 -0800
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1j1Rz2-0002Al-TI; Tue, 11 Feb 2020 11:37:32 +0200
Date: Tue, 11 Feb 2020 11:37:32 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200211093732.GM25209@platvala-desk.ger.corp.intel.com>
References: <cover.1581381780.git.dale.b.stimson@intel.com>
 <2f2d74a2aa0bb1ab0050bdeb5a272ae9d7f61c69.1581381780.git.dale.b.stimson@intel.com>
 <20200211092200.GL25209@platvala-desk.ger.corp.intel.com>
 <877e0t1nfo.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <877e0t1nfo.fsf@intel.com>
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

On Tue, Feb 11, 2020 at 11:30:03AM +0200, Jani Nikula wrote:
> On Tue, 11 Feb 2020, Petri Latvala <petri.latvala@intel.com> wrote:
> >> diff --git a/lib/i915/gem_mmio_base.c b/lib/i915/gem_mmio_base.c
> >> new file mode 100644
> >> index 000000000..8718c092f
> >> --- /dev/null
> >> +++ b/lib/i915/gem_mmio_base.c
> >> @@ -0,0 +1,346 @@
> >> +//  Copyright (C) 2020 Intel Corporation
> >> +//
> >> +//  SPDX-License-Identifier: MIT
> >
> > We don't use SPDX headers in IGT, please use the MIT license comment
> > block instead.
> 
> Why not? Should we start?

I'm all for it, but preferably not trickled in but as separate conversion!


-- 
Petri Latvala
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
