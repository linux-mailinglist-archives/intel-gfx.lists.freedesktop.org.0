Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 668EB2969AC
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 08:24:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E87F6E10D;
	Fri, 23 Oct 2020 06:24:47 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 946B96E10D
 for <Intel-GFX@lists.freedesktop.org>; Fri, 23 Oct 2020 06:24:45 +0000 (UTC)
IronPort-SDR: 0lpOixETJWEl5PRZrZ0pGLSTJ9Au15mDHRo41o2Ca5i6r5ZEoe3VOXm7fEBedgcR8kfgvlERW0
 RjMeETJot7FA==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="164140809"
X-IronPort-AV: E=Sophos;i="5.77,407,1596524400"; d="scan'208";a="164140809"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 23:24:35 -0700
IronPort-SDR: YJPpvsPbz9tRFCUa3ks+7KcK1nIUEZdgK4fK/L6j1Sw/pGTQZUgeP34xSETLXORbFPExv0pp0Z
 j/Il8xNZ8M0A==
X-IronPort-AV: E=Sophos;i="5.77,407,1596524400"; d="scan'208";a="349084318"
Received: from dscaswel-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.251.86.117])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 23:24:33 -0700
MIME-Version: 1.0
In-Reply-To: <cf95a101-95c0-a28f-dca7-25c9fa9e6838@linux.intel.com>
References: <20201015182901.3197788-1-John.C.Harrison@Intel.com>
 <cf95a101-95c0-a28f-dca7-25c9fa9e6838@linux.intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Intel-GFX@Lists.FreeDesktop.Org, John.C.Harrison@Intel.com,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160343427042.4384.14861900933812096872@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Fri, 23 Oct 2020 09:24:31 +0300
Subject: Re: [Intel-gfx] [PATCH CI v2 0/4] drm/i915/guc: Update to GuC v49
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-10-22 18:22:10)
> 
> + Joonas for maintainer class question.
> 
> On 15/10/2020 19:28, John.C.Harrison@Intel.com wrote:
> > From: John Harrison <John.C.Harrison@Intel.com>
> > 
> > Update to the latest GuC firmware
> > 
> > v2: Rebase to newer tree, updated a commit message (review feedback
> > from Daniele) and dropped the patch to enable GuC/HuC loading by
> > default as apparently this is not allowed.
> > 
> > Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> > 
> > 
> > John Harrison (4):
> >    drm/i915/guc: Update to use firmware v49.0.1
> >    drm/i915/guc: Improved reporting when GuC fails to load
> >    drm/i915/guc: Clear pointers on free
> >    CI: turn on GuC/HuC auto mode by default
> > 
> >   drivers/gpu/drm/i915/gt/intel_engine_cs.c    |   3 +-
> >   drivers/gpu/drm/i915/gt/uc/intel_guc.c       |  18 ---
> >   drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c   | 132 +++++++++++++++----
> >   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c    |   1 +
> >   drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c    |  31 +++--
> >   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h  |  80 +++++------
> >   drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h   |   5 +
> >   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c     |  29 ++--
> >   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h     |   2 +
> >   drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h |   6 +-
> >   drivers/gpu/drm/i915/i915_params.h           |   2 +-
> >   11 files changed, 202 insertions(+), 107 deletions(-)
> 
> I tried to merge this for John today but the series applies to 
> drm-intel-next-queued and not drm-intel-gt-next, which I thought is 
> where GT/GuC should go to. Long story short, where to merge GuC patches 
> and how is the question?

We should definitely merge to drm-intel-gt-next.

If we need to backmerge some changes to gt-next as dependencies, let me know.

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
