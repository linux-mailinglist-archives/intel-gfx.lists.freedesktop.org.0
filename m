Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B0E129B09
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 22:23:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BB346E448;
	Mon, 23 Dec 2019 21:23:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 096AC6E448
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 21:23:41 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 13:23:41 -0800
X-IronPort-AV: E=Sophos;i="5.69,349,1571727600"; d="scan'208";a="211676064"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.14.204])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 13:23:41 -0800
Date: Mon, 23 Dec 2019 13:23:36 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191223212336.tcwyxtpovhsgh32r@ldmartin-desk1>
References: <20191223204411.2355304-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191223204411.2355304-1-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Add spaces before compound
 GEM_TRACE
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

On Mon, Dec 23, 2019 at 08:44:10PM +0000, Chris Wilson wrote:
>Add a space between the prefixed format and the users format so that the
>join are not mistakenly combined into one long word.
>
>Fixes: 639f2f24895f ("drm/i915: Introduce new macros for tracing")
>Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>Cc: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_context.h | 2 +-
> drivers/gpu/drm/i915/i915_request.h     | 2 +-
> 2 files changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
>index 1d4a1b1357cf..0f5ae4ff3b10 100644
>--- a/drivers/gpu/drm/i915/gt/intel_context.h
>+++ b/drivers/gpu/drm/i915/gt/intel_context.h
>@@ -19,7 +19,7 @@
>
> #define CE_TRACE(ce, fmt, ...) do {					\
> 	const struct intel_context *ce__ = (ce);			\
>-	ENGINE_TRACE(ce__->engine, "context:%llx" fmt,			\
>+	ENGINE_TRACE(ce__->engine, "context:%llx " fmt,			\
> 		     ce__->timeline->fence_context,			\
> 		     ##__VA_ARGS__);					\
> } while (0)
>diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
>index 565322640378..9784421a3b4d 100644
>--- a/drivers/gpu/drm/i915/i915_request.h
>+++ b/drivers/gpu/drm/i915/i915_request.h
>@@ -51,7 +51,7 @@ struct i915_capture_list {
>
> #define RQ_TRACE(rq, fmt, ...) do {					\
> 	const struct i915_request *rq__ = (rq);				\
>-	ENGINE_TRACE(rq__->engine, "fence %llx:%lld, current %d" fmt,	\
>+	ENGINE_TRACE(rq__->engine, "fence %llx:%lld, current %d " fmt,	\

do we care about the trailing space if fmt is "\n"?

Lucas De Marchi


> 		     rq__->fence.context, rq__->fence.seqno,		\
> 		     hwsp_seqno(rq__), ##__VA_ARGS__);			\
> } while (0)
>-- 
>2.24.1
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
