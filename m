Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3269B14C43E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 01:53:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FCB46E17C;
	Wed, 29 Jan 2020 00:53:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7C8B6E17C
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 00:53:43 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 16:53:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,376,1574150400"; d="scan'208";a="222292361"
Received: from unknown (HELO sdutt-xeon) ([10.165.21.200])
 by orsmga008.jf.intel.com with ESMTP; 28 Jan 2020 16:53:42 -0800
Date: Tue, 28 Jan 2020 16:49:15 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20200129004915.GA23599@sdutt-xeon>
References: <20200125005537.31860-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200125005537.31860-1-daniele.ceraolospurio@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [RFC 0/6] Start separating GuC and execlists
 submission
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 24, 2020 at 04:55:31PM -0800, Daniele Ceraolo Spurio wrote:
>Note: this applies on top of my series to commit early to GuC [1].
>
>Picking up from the feedback from my RFC series about splitting
>up intel_lrc.c [2], this series introduces GuC submission versions
>of most of the engine and context functions. As a starting point,
>the functions are still very similar to the execlists ones, but
>they will progressively diverge while we add the new submission
>logic. Some of the functions have been simplified by removing
>support for pre-gen11 cases as we only aim to enable GuC submission
>for gen11+; I've left comments and BUG_ONs to mark the reduces
>support spots to easily find them in case we ever want to enable
>GuC submission for older gens.
>
>Going slightly against the feedback from the previous series, I have
>kept the basic context and ring object management shared between
>execlists and GuC submission functions. The rationale is that those
>objects are HW-related and therefore their creation and their main
>attributes (e.g. context size) are not dependent on the submission
>method in any way. Handling of more SW constructs, like the timeline,
>has been duplicated.
>
>Still in theme of sharing, the flush and bb_start functions have also
>been re-used on the GuC side, but I'm not sure if keeping them in
>intel_lrc.c is the best solution. My medium-term plan is still the same
>as [2], i.e. split execlists_submission.c out of intel_lrc.c, with the
>latter holding the common code, but it might be worth moving the
>command emission to a dedicated file or to a header as inlines, like
>we already do in some cases.
>

I can't say I'm thrilled about the amount of code duplicated in this series.
i.e. 95% of the breadcrumb code is exactly the same, request_alloc is a copy and
paste, same with resume, and same with the context operations. Surely there is a
way to share the code common between the GuC execlists? I like the idea of
putting all of this common code in a shared file and then
intel_execlist_submission.c & intel_guc_submission.c call into the common
functions while retaining there own set of unique function pointers.

Matt

>The code is still a bit rough and the series has been compile-tested
>only. I wanted to get some early comments about the direction before
>rebasing the rest of the GuC code on top of it and start testing.
>
>[1] https://patchwork.freedesktop.org/series/72031/
>[2] https://patchwork.freedesktop.org/series/70787/
>
>Cc: Chris Wilson <chris@chris-wilson.co.uk>
>Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>Cc: John Harrison <John.C.Harrison@Intel.com>
>Cc: Matthew Brost <matthew.brost@intel.com>
>
>Daniele Ceraolo Spurio (6):
>  drm/i915/guc: Add guc-specific breadcrumb functions
>  drm/i915/guc: Add request_alloc for guc_submission
>  drm/i915/guc: Add engine->resume for GuC submission
>  drm/i915/guc: Re-use lrc flush functions
>  drm/i915/guc: Add initial context ops for GuC submission
>  drm/i915/guc: Stop inheriting from execlists_set_default_submission
>
> drivers/gpu/drm/i915/gt/intel_lrc.c           | 217 +++++-----
> drivers/gpu/drm/i915/gt/intel_lrc.h           |  17 +-
> drivers/gpu/drm/i915/gt/selftest_lrc.c        |  12 +-
> .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 378 +++++++++++++++++-
> 4 files changed, 496 insertions(+), 128 deletions(-)
>
>-- 
>2.24.1
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
