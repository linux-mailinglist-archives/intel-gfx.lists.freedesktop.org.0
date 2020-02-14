Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5656B15F770
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 21:07:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41CC06E843;
	Fri, 14 Feb 2020 20:07:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 974F96E843
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 20:07:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 12:07:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,441,1574150400"; d="scan'208";a="407100469"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga005.jf.intel.com with ESMTP; 14 Feb 2020 12:07:08 -0800
Received: from fmsmsx123.amr.corp.intel.com (10.18.125.38) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 14 Feb 2020 12:07:08 -0800
Received: from fmsmsx108.amr.corp.intel.com ([169.254.9.2]) by
 fmsmsx123.amr.corp.intel.com ([169.254.7.117]) with mapi id 14.03.0439.000;
 Fri, 14 Feb 2020 12:07:08 -0800
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 10/19] drm/i915: Nuke arguments to
 eb_pin_engine
Thread-Index: AQHV4yHmqLyo7Zj3fESS10XInDHb6qgbHWoA
Date: Fri, 14 Feb 2020 20:07:08 +0000
Message-ID: <14063C7AD467DE4B82DEDB5C278E8663F4FC3C3F@FMSMSX108.amr.corp.intel.com>
References: <20200214103055.2117836-1-maarten.lankhorst@linux.intel.com>
 <20200214103055.2117836-11-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200214103055.2117836-11-maarten.lankhorst@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOGYxZjFkMDgtZDM3OS00YjU2LTg2MDYtNDhkYmU4NDgwNDk5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiQ1o3QUw3TUFGSG91U1wvK1B1ZkIzT0ZMck9cL1FNdnJzXC9kXC9UaTNQNTJabzBGbSsyT0N3elwvdUt3cmIyRnNiemx5In0=
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 10/19] drm/i915: Nuke arguments to
 eb_pin_engine
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

>-----Original Message-----
>From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
>Maarten Lankhorst
>Sent: Friday, February 14, 2020 5:31 AM
>To: intel-gfx@lists.freedesktop.org
>Subject: [Intel-gfx] [PATCH 10/19] drm/i915: Nuke arguments to
>eb_pin_engine
>
>Those arguments are already set as eb.file and eb.args, so kill off
>the extra arguments. This will allow us to move eb_pin_engine() to
>after we reserved all BO's.

"move eb_pin_engine() to"

I think you mean "too"? (as in "move eb_pin_engine also"

Or do you mean "move_eb_pin_engine to <somewhere else>, after we"?

Other than that,

Acked-by: Michael J. Ruhl <michael.j.ruhl@intel.com>

Mike

>
>Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>---
> drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 17 +++++++----------
> 1 file changed, 7 insertions(+), 10 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>index a27aa85985bd..d96e7649314c 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>@@ -2393,11 +2393,10 @@ static void eb_unpin_engine(struct
>i915_execbuffer *eb)
> }
>
> static unsigned int
>-eb_select_legacy_ring(struct i915_execbuffer *eb,
>-		      struct drm_file *file,
>-		      struct drm_i915_gem_execbuffer2 *args)
>+eb_select_legacy_ring(struct i915_execbuffer *eb)
> {
> 	struct drm_i915_private *i915 = eb->i915;
>+	struct drm_i915_gem_execbuffer2 *args = eb->args;
> 	unsigned int user_ring_id = args->flags & I915_EXEC_RING_MASK;
>
> 	if (user_ring_id != I915_EXEC_BSD &&
>@@ -2412,7 +2411,7 @@ eb_select_legacy_ring(struct i915_execbuffer *eb,
> 		unsigned int bsd_idx = args->flags & I915_EXEC_BSD_MASK;
>
> 		if (bsd_idx == I915_EXEC_BSD_DEFAULT) {
>-			bsd_idx = gen8_dispatch_bsd_engine(i915, file);
>+			bsd_idx = gen8_dispatch_bsd_engine(i915, eb->file);
> 		} else if (bsd_idx >= I915_EXEC_BSD_RING1 &&
> 			   bsd_idx <= I915_EXEC_BSD_RING2) {
> 			bsd_idx >>= I915_EXEC_BSD_SHIFT;
>@@ -2437,18 +2436,16 @@ eb_select_legacy_ring(struct i915_execbuffer
>*eb,
> }
>
> static int
>-eb_pin_engine(struct i915_execbuffer *eb,
>-	      struct drm_file *file,
>-	      struct drm_i915_gem_execbuffer2 *args)
>+eb_pin_engine(struct i915_execbuffer *eb)
> {
> 	struct intel_context *ce;
> 	unsigned int idx;
> 	int err;
>
> 	if (i915_gem_context_user_engines(eb->gem_context))
>-		idx = args->flags & I915_EXEC_RING_MASK;
>+		idx = eb->args->flags & I915_EXEC_RING_MASK;
> 	else
>-		idx = eb_select_legacy_ring(eb, file, args);
>+		idx = eb_select_legacy_ring(eb);
>
> 	ce = i915_gem_context_get_engine(eb->gem_context, idx);
> 	if (IS_ERR(ce))
>@@ -2681,7 +2678,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
> 	if (unlikely(err))
> 		goto err_destroy;
>
>-	err = eb_pin_engine(&eb, file, args);
>+	err = eb_pin_engine(&eb);
> 	if (unlikely(err))
> 		goto err_context;
>
>--
>2.25.0.24.g3f081b084b0
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
