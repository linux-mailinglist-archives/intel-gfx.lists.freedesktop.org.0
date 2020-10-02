Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A040D281CBD
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Oct 2020 22:14:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2556E6E2BC;
	Fri,  2 Oct 2020 20:14:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 849806E2BC
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Oct 2020 20:14:50 +0000 (UTC)
IronPort-SDR: S8qY7YNsoaT0X9xI68aZfMF0KaBcImXyoOX8dE7T6MOM2lEYifJrXOkFFXAlY+64JXtnrd4ZSO
 jcx2DoBY0P9w==
X-IronPort-AV: E=McAfee;i="6000,8403,9762"; a="143057502"
X-IronPort-AV: E=Sophos;i="5.77,328,1596524400"; d="scan'208";a="143057502"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 13:14:49 -0700
IronPort-SDR: Dwv2q0lHFBpp5O/cApClGgHRdGI8hjkbXxi+jwUk4N+B/6QyGs92nYk4EYdnNHL5GYOTK3/NlR
 nr7vfbThb/7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,328,1596524400"; d="scan'208";a="351694667"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Oct 2020 13:14:49 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 2 Oct 2020 13:14:48 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 2 Oct 2020 13:14:48 -0700
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.1713.004;
 Fri, 2 Oct 2020 13:14:48 -0700
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 10/61] drm/i915: Disable userptr pread/pwrite
 support.
Thread-Index: AQHWmLwy49wqu5uE8kGCLyhpGIbSoqmEvn6w
Date: Fri, 2 Oct 2020 20:14:48 +0000
Message-ID: <9d0866bf640b43abb184fecc503aae9a@intel.com>
References: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
 <20201002125939.50817-11-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20201002125939.50817-11-maarten.lankhorst@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.1.200.100]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 10/61] drm/i915: Disable userptr
 pread/pwrite support.
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
>Sent: Friday, October 2, 2020 8:59 AM
>To: intel-gfx@lists.freedesktop.org
>Subject: [Intel-gfx] [PATCH 10/61] drm/i915: Disable userptr pread/pwrite
>support.
>
>Userptr should not need the kernel for a userspace memcpy, userspace
>needs to call memcpy directly.
>
>Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>---
> .../gpu/drm/i915/gem/i915_gem_object_types.h  |  2 ++
> drivers/gpu/drm/i915/gem/i915_gem_userptr.c   | 20
>+++++++++++++++++++
> drivers/gpu/drm/i915/i915_gem.c               |  5 +++++
> 3 files changed, 27 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>index 62dde3585b51..dbb6f6171165 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>@@ -57,6 +57,8 @@ struct drm_i915_gem_object_ops {
>
> 	int (*pwrite)(struct drm_i915_gem_object *obj,
> 		      const struct drm_i915_gem_pwrite *arg);
>+	int (*pread)(struct drm_i915_gem_object *obj,
>+		     const struct drm_i915_gem_pread *arg);
>
> 	int (*dmabuf_export)(struct drm_i915_gem_object *obj);
> 	void (*release)(struct drm_i915_gem_object *obj);
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
>b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
>index 22008948be58..136a589e5d94 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
>@@ -700,6 +700,24 @@ i915_gem_userptr_dmabuf_export(struct
>drm_i915_gem_object *obj)
> 	return i915_gem_userptr_init__mmu_notifier(obj, 0);
> }
>
>+static int
>+i915_gem_userptr_pwrite(struct drm_i915_gem_object *obj,
>+			const struct drm_i915_gem_pwrite *args)
>+{
>+	drm_dbg(obj->base.dev, "pwrite to userptr no longer allowed\n");
>+
>+	return -EINVAL;

I have seen ENOSYS used for unsupported pread/pwrite (see radeon_gem.c).

I  have also seen ENOTSUPP for similar return values.

Is EINVAL the correct response?

Thanks,

m

>+}
>+
>+static int
>+i915_gem_userptr_pread(struct drm_i915_gem_object *obj,
>+		       const struct drm_i915_gem_pread *args)
>+{
>+	drm_dbg(obj->base.dev, "pread from userptr no longer allowed\n");
>+
>+	return -EINVAL;
>+}
>+
> static const struct drm_i915_gem_object_ops i915_gem_userptr_ops = {
> 	.name = "i915_gem_object_userptr",
> 	.flags = I915_GEM_OBJECT_IS_SHRINKABLE |
>@@ -708,6 +726,8 @@ static const struct drm_i915_gem_object_ops
>i915_gem_userptr_ops = {
> 	.get_pages = i915_gem_userptr_get_pages,
> 	.put_pages = i915_gem_userptr_put_pages,
> 	.dmabuf_export = i915_gem_userptr_dmabuf_export,
>+	.pwrite = i915_gem_userptr_pwrite,
>+	.pread = i915_gem_userptr_pread,
> 	.release = i915_gem_userptr_release,
> };
>
>diff --git a/drivers/gpu/drm/i915/i915_gem.c
>b/drivers/gpu/drm/i915/i915_gem.c
>index 30af7e4b71ab..d349c0b796ec 100644
>--- a/drivers/gpu/drm/i915/i915_gem.c
>+++ b/drivers/gpu/drm/i915/i915_gem.c
>@@ -526,6 +526,11 @@ i915_gem_pread_ioctl(struct drm_device *dev, void
>*data,
> 	}
>
> 	trace_i915_gem_object_pread(obj, args->offset, args->size);
>+	ret = -ENODEV;
>+	if (obj->ops->pread)
>+		ret = obj->ops->pread(obj, args);
>+	if (ret != -ENODEV)
>+		goto out;
>
> 	ret = i915_gem_object_wait(obj,
> 				   I915_WAIT_INTERRUPTIBLE,
>--
>2.28.0
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
