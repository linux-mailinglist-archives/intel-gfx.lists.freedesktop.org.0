Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF400129B54
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 23:00:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E3BD89EAC;
	Mon, 23 Dec 2019 22:00:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D20D989EAC
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 22:00:10 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 14:00:09 -0800
X-IronPort-AV: E=Sophos;i="5.69,349,1571727600"; d="scan'208";a="207395341"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.14.204])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 14:00:06 -0800
Date: Mon, 23 Dec 2019 14:00:00 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191223220000.ukorx54mjymshlxi@ldmartin-desk1>
References: <20191223204411.2355304-1-chris@chris-wilson.co.uk>
 <20191223212336.tcwyxtpovhsgh32r@ldmartin-desk1>
 <157713809505.2689.9297067467556760741@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157713809505.2689.9297067467556760741@skylake-alporthouse-com>
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

On Mon, Dec 23, 2019 at 09:54:55PM +0000, Chris Wilson wrote:
>Quoting Lucas De Marchi (2019-12-23 21:23:36)
>> On Mon, Dec 23, 2019 at 08:44:10PM +0000, Chris Wilson wrote:
>> >Add a space between the prefixed format and the users format so that the
>> >join are not mistakenly combined into one long word.
>> >
>> >Fixes: 639f2f24895f ("drm/i915: Introduce new macros for tracing")
>> >Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> >Cc: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
>> >---
>> > drivers/gpu/drm/i915/gt/intel_context.h | 2 +-
>> > drivers/gpu/drm/i915/i915_request.h     | 2 +-
>> > 2 files changed, 2 insertions(+), 2 deletions(-)
>> >
>> >diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
>> >index 1d4a1b1357cf..0f5ae4ff3b10 100644
>> >--- a/drivers/gpu/drm/i915/gt/intel_context.h
>> >+++ b/drivers/gpu/drm/i915/gt/intel_context.h
>> >@@ -19,7 +19,7 @@
>> >
>> > #define CE_TRACE(ce, fmt, ...) do {                                   \
>> >       const struct intel_context *ce__ = (ce);                        \
>> >-      ENGINE_TRACE(ce__->engine, "context:%llx" fmt,                  \
>> >+      ENGINE_TRACE(ce__->engine, "context:%llx " fmt,                 \
>> >                    ce__->timeline->fence_context,                     \
>> >                    ##__VA_ARGS__);                                    \
>> > } while (0)
>> >diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
>> >index 565322640378..9784421a3b4d 100644
>> >--- a/drivers/gpu/drm/i915/i915_request.h
>> >+++ b/drivers/gpu/drm/i915/i915_request.h
>> >@@ -51,7 +51,7 @@ struct i915_capture_list {
>> >
>> > #define RQ_TRACE(rq, fmt, ...) do {                                   \
>> >       const struct i915_request *rq__ = (rq);                         \
>> >-      ENGINE_TRACE(rq__->engine, "fence %llx:%lld, current %d" fmt,   \
>> >+      ENGINE_TRACE(rq__->engine, "fence %llx:%lld, current %d " fmt,  \
>>
>> do we care about the trailing space if fmt is "\n"?
>
>No. An extra space in a debug log, which you only see when something
>blows up and only compiled in for CI, is the last of your worries.

oh, ok. This in the end uses trace_printk().


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
