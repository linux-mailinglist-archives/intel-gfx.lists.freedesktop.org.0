Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 344BF18399C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 20:37:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74D1D6EB31;
	Thu, 12 Mar 2020 19:37:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CA626EB31
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 19:37:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 12:37:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,545,1574150400"; d="scan'208";a="236961325"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga008.jf.intel.com with ESMTP; 12 Mar 2020 12:37:08 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 12 Mar 2020 12:37:08 -0700
Received: from fmsmsx108.amr.corp.intel.com ([169.254.9.163]) by
 fmsmsx101.amr.corp.intel.com ([169.254.1.121]) with mapi id 14.03.0439.000;
 Thu, 12 Mar 2020 12:37:08 -0700
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 02/12] drm/i915: Wrap i915_active in a
 simple kreffed struct
Thread-Index: AQHV96liEY8VsuD1a0mtpk83bKDb+KhFW49Q
Date: Thu, 12 Mar 2020 19:37:07 +0000
Message-ID: <14063C7AD467DE4B82DEDB5C278E8663F50027C6@FMSMSX108.amr.corp.intel.com>
References: <20200311133047.30696-1-chris@chris-wilson.co.uk>
 <20200311133047.30696-2-chris@chris-wilson.co.uk>
In-Reply-To: <20200311133047.30696-2-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/12] drm/i915: Wrap i915_active in a
 simple kreffed struct
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
>Sent: Wednesday, March 11, 2020 9:31 AM
>To: intel-gfx@lists.freedesktop.org
>Subject: [Intel-gfx] [PATCH 02/12] drm/i915: Wrap i915_active in a simple
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
>index c4048628188a..535b8161a597 100644
>--- a/drivers/gpu/drm/i915/i915_active.c
>+++ b/drivers/gpu/drm/i915/i915_active.c
>@@ -937,6 +937,59 @@ void i915_active_noop(struct dma_fence *fence,
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

Should this be:

kref_get_unless_zero()?

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
>index b3282ae7913c..bffbcf7751a7 100644
>--- a/drivers/gpu/drm/i915/i915_active.h
>+++ b/drivers/gpu/drm/i915/i915_active.h
>@@ -221,4 +221,8 @@ void i915_request_add_active_barriers(struct
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
