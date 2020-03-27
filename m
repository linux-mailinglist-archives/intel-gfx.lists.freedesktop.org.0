Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E80319593A
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 15:42:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE1026E0AC;
	Fri, 27 Mar 2020 14:42:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4F746E0AC
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 14:42:16 +0000 (UTC)
IronPort-SDR: 7b+K8FunTn52+OY5enDuUd/QapTj0sfd1EjivZIbUzQv4vgC9xXrJvZoZT2MR5GSlqiOptkVA5
 RKnuvuljhYDg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 07:42:16 -0700
IronPort-SDR: MG6GFOTiB7EGVJTS4CLTBsonIOW0Ok638wSk97MVLbXfSTP60cgOoc9kgVsrcVKJq98XKZv+W+
 GwPI8wWjM2mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,312,1580803200"; d="scan'208";a="326924432"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga001.jf.intel.com with ESMTP; 27 Mar 2020 07:42:15 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 27 Mar 2020 07:42:15 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.38]) by
 FMSMSX113.amr.corp.intel.com ([169.254.13.150]) with mapi id 14.03.0439.000;
 Fri, 27 Mar 2020 07:42:15 -0700
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/3] drm/i915: Wrap i915_active in a simple
 kreffed struct
Thread-Index: AQHWBCoMVCG2NvOegUiX0Yxujx8lpqhcgxtQ
Date: Fri, 27 Mar 2020 14:42:15 +0000
Message-ID: <14063C7AD467DE4B82DEDB5C278E8663FFFBFA81@fmsmsx107.amr.corp.intel.com>
References: <20200327112212.16046-1-chris@chris-wilson.co.uk>
 <20200327112212.16046-2-chris@chris-wilson.co.uk>
In-Reply-To: <20200327112212.16046-2-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Wrap i915_active in a simple
 kreffed struct
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
>From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Chris
>Wilson
>Sent: Friday, March 27, 2020 7:22 AM
>To: intel-gfx@lists.freedesktop.org
>Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Wrap i915_active in a simple
>kreffed struct
>
>For conveniences of callers that just want to use an i915_active to
>track a wide array of concurrent timelines, wrap the base i915_active
>struct inside a kref. This i915_active will self-destruct after use.
>
>Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
>Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
>---
> drivers/gpu/drm/i915/i915_active.c | 53
>++++++++++++++++++++++++++++++
> drivers/gpu/drm/i915/i915_active.h |  4 +++
> 2 files changed, 57 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/i915_active.c
>b/drivers/gpu/drm/i915/i915_active.c
>index 7b685032cc1e..5df7704369fd 100644
>--- a/drivers/gpu/drm/i915/i915_active.c
>+++ b/drivers/gpu/drm/i915/i915_active.c
>@@ -939,6 +939,59 @@ void i915_active_noop(struct dma_fence *fence,
>struct dma_fence_cb *cb)
> 	active_fence_cb(fence, cb);
> }
>
>+struct auto_active {
>+	struct i915_active base;
>+	struct kref ref;
>+};
>+
>+struct i915_active *i915_active_get(struct i915_active *ref)
>+{
>+	struct auto_active *aa = container_of(ref, typeof(*aa), base);
>+
>+	kref_get(&aa->ref);

Should this be kref_get_unless_zero()?


Mike


>+	return &aa->base;
>+}
>+
>+static void auto_release(struct kref *ref)
>+{
>+	struct auto_active *aa = container_of(ref, typeof(*aa), ref);
>+
>+	i915_active_fini(&aa->base);
>+	kfree(aa);
>+}
>+
>+void i915_active_put(struct i915_active *ref)
>+{
>+	struct auto_active *aa = container_of(ref, typeof(*aa), base);
>+
>+	kref_put(&aa->ref, auto_release);
>+}
>+
>+static int auto_active(struct i915_active *ref)
>+{
>+	i915_active_get(ref);
>+	return 0;
>+}
>+
>+static void auto_retire(struct i915_active *ref)
>+{
>+	i915_active_put(ref);
>+}
>+
>+struct i915_active *i915_active_create(void)
>+{
>+	struct auto_active *aa;
>+
>+	aa = kmalloc(sizeof(*aa), GFP_KERNEL);
>+	if (!aa)
>+		return NULL;
>+
>+	kref_init(&aa->ref);
>+	i915_active_init(&aa->base, auto_active, auto_retire);
>+
>+	return &aa->base;
>+}
>+
> #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> #include "selftests/i915_active.c"
> #endif
>diff --git a/drivers/gpu/drm/i915/i915_active.h
>b/drivers/gpu/drm/i915/i915_active.h
>index 4f9aa7bab514..b526d310a585 100644
>--- a/drivers/gpu/drm/i915/i915_active.h
>+++ b/drivers/gpu/drm/i915/i915_active.h
>@@ -225,4 +225,8 @@ void i915_request_add_active_barriers(struct
>i915_request *rq);
> void i915_active_print(struct i915_active *ref, struct drm_printer *m);
> void i915_active_unlock_wait(struct i915_active *ref);
>
>+struct i915_active *i915_active_create(void);
>+struct i915_active *i915_active_get(struct i915_active *ref);
>+void i915_active_put(struct i915_active *ref);
>+
> #endif /* _I915_ACTIVE_H_ */
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
