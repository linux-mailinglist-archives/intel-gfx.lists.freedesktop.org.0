Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D81ED39349C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 19:16:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46DD66F484;
	Thu, 27 May 2021 17:16:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 587716F484
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 17:16:50 +0000 (UTC)
IronPort-SDR: Mid+lSQqSLtvsFaVFG8zXeawHreT0lRJzIYwkboCshd+dTjcEwUgANd7VIQeojiEDigmiNsc7a
 Q4R6ErpowEqA==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="182446989"
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="182446989"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 10:16:48 -0700
IronPort-SDR: isDkV8xcIgoyXXMTDhNnnFSsvSNYlgp2lSCFqvVjxAdphlkeEOjcBW1Ecz/oS75a6cjkGgNaXH
 bH9skgglCq5Q==
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="547698793"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 10:16:47 -0700
Date: Thu, 27 May 2021 10:09:42 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <20210527170942.GB12181@sdutt-i7>
References: <20210526064237.77853-1-matthew.brost@intel.com>
 <162201132483.13404.1421856447925207863@emeril.freedesktop.org>
 <c00c1ea8-f5ea-10e5-1ab6-3a71f1ad6019@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c00c1ea8-f5ea-10e5-1ab6-3a71f1ad6019@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Non-interface_changing_GuC_CTBs_updates_=28rev2=29?=
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

On Thu, May 27, 2021 at 10:13:21AM -0700, John Harrison wrote:
> On 5/25/2021 23:42, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: Non-interface changing GuC CTBs updates (rev2)
> > URL   : https://patchwork.freedesktop.org/series/90552/
> > State : warning
> > 
> > == Summary ==
> > 
> > $ dim checkpatch origin/drm-tip
> > 6b6bffd59ced drm/i915/guc: skip disabling CTBs before sanitizing the GuC
> > 3f9bbaddbf9d drm/i915/guc: use probe_error log for CT enablement failure
> > 866285dad8d0 drm/i915/guc: enable only the user interrupt when using GuC submission
> > eafc57f85f6f drm/i915/guc: Remove sample_forcewake h2g action
> > cb62a7f50e3b drm/i915/guc: Keep strict GuC ABI definitions
> > -:18: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
> > #18:
> > new file mode 100644
> > 
> > total: 0 errors, 1 warnings, 0 checks, 476 lines checked
> > 28e9b20a7873 drm/i915/guc: Drop guc->interrupts.enabled
> > 190975af8c9f drm/i915/guc: Stop using fence/status from CTB descriptor
> > 15a068ac5b1e drm/i915: Promote ptrdiff() to i915_utils.h
> > e3a6d58106c2 drm/i915/guc: Only rely on own CTB size
> > aaa8781a008e drm/i915/guc: Don't repeat CTB layout calculations
> > b065023c038e drm/i915/guc: Replace CTB array with explicit members
> > 9f1ec21626ae drm/i915/guc: Update sizes of CTB buffers
> > 7a0e05be601b drm/i915/guc: Relax CTB response timeout
> > 11573d2c3987 drm/i915/guc: Start protecting access to CTB descriptors
> > -:87: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
> > #87: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h:36:
> > +	spinlock_t lock;
> > 
> > total: 0 errors, 0 warnings, 1 checks, 61 lines checked
> > f32e4faa422e drm/i915/guc: Ensure H2G buffer updates visible before tail update
> > -:23: ERROR:OPEN_BRACE: open brace '{' following function definitions go on the next line
> > #23: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:331:
> > +static void write_barrier(struct intel_guc_ct *ct) {
> > 
> > -:31: WARNING:MEMORY_BARRIER: memory barrier without comment
> > #31: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:339:
> > +		wmb();
> These three warnings should be fixed.
> 

Will do. But it seems odd to require comments for these.

> John.
> 
> > total: 1 errors, 1 warnings, 0 checks, 30 lines checked
> > 6feab437948e drm/i915/guc: Stop using mutex while sending CTB messages
> > a44bbeef3e75 drm/i915/guc: Don't receive all G2H messages in irq handler
> > 41650b9fd9e5 drm/i915/guc: Always copy CT message to new allocation
> > 
> > 
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
