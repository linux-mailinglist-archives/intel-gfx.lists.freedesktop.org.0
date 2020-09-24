Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE4C2776C0
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 18:29:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B45346E11F;
	Thu, 24 Sep 2020 16:29:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B016C6E11F
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 16:29:37 +0000 (UTC)
IronPort-SDR: yn8BJgHU3zCCJB/QpTfF1V9b/Cj0mcL+o4ben9uKFjGEXMFL02sJ+c0S9/9fS4QWiZ2fRHvkHb
 tW9ToVSpXoUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="161327586"
X-IronPort-AV: E=Sophos;i="5.77,298,1596524400"; d="scan'208";a="161327586"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 09:29:36 -0700
IronPort-SDR: x0XKbB8Ub8Sm0s1ch1FdWwVcvMNpDnG8XlpvdvyQ55OJd2+uXyyghMo2fzPIecYTAVk7FR6z42
 pHiqpT7SgC6Q==
X-IronPort-AV: E=Sophos;i="5.77,298,1596524400"; d="scan'208";a="323018870"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 09:29:36 -0700
Date: Thu, 24 Sep 2020 09:29:30 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200924162930.GA31813@orsosgc001.ra.intel.com>
References: <20200820180200.68355-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200820180200.68355-1-umesh.nerlige.ramappa@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 0/4] Allow privileged user to map the OA
 buffer
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
Cc: Chris Wilson <chris.p.wilson@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

Okay to push this series?

Thanks,
Umesh

On Thu, Aug 20, 2020 at 11:01:56AM -0700, Umesh Nerlige Ramappa wrote:
>Allow user to map the OA buffer and also trigger reports into it.
>
>CI fixes:
>v1: Fixes a memory corruption due to addition of OA whitelist on demand.
>v2: Spinlock when applying whitelist
>v3: Use uncore->lock. Do not check for wal->count when applying whitelist.
>
>v4: Refresh and rerun with newly added test (forked access).
>
>Tests: https://patchwork.freedesktop.org/series/80761/
>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>Test-with: 20200818203547.24461-1-umesh.nerlige.ramappa@intel.com
>
>Piotr Maciejewski (1):
>  drm/i915/perf: Ensure observation logic is not clock gated
>
>Umesh Nerlige Ramappa (3):
>  drm/i915/perf: Whitelist OA report trigger registers
>  drm/i915/perf: Whitelist OA counter and buffer registers
>  drm/i915/perf: Map OA buffer to user space for gen12 performance query
>
> drivers/gpu/drm/i915/gem/i915_gem_mman.c      |   2 +-
> drivers/gpu/drm/i915/gem/i915_gem_mman.h      |   2 +
> drivers/gpu/drm/i915/gt/intel_workarounds.c   | 153 +++++++++---
> drivers/gpu/drm/i915/gt/intel_workarounds.h   |   7 +
> .../gpu/drm/i915/gt/intel_workarounds_types.h |   5 +
> drivers/gpu/drm/i915/i915_perf.c              | 225 +++++++++++++++++-
> drivers/gpu/drm/i915/i915_perf_types.h        |   5 +
> drivers/gpu/drm/i915/i915_reg.h               |  10 +
> include/uapi/drm/i915_drm.h                   |  33 +++
> 9 files changed, 402 insertions(+), 40 deletions(-)
>
>-- 
>2.20.1
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
