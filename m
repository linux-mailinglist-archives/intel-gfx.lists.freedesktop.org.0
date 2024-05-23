Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8718CD11F
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 13:19:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 677F710E030;
	Thu, 23 May 2024 11:19:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iGI13gXl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3EB910E030
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 11:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716463166; x=1747999166;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=2RcYa+PV3eSUEx+GeItUnyJGuzG4rfyK0nh7prZKLdQ=;
 b=iGI13gXlm4XXXg5VBrspSX+E1Qt2+SbZvAHkj7apav3u+isegyykYJHA
 Dv5IDvxBgDB85Z9TP2sZX3azKNMUIuJh8zoDcMw0JZ7uOLvYztSJ4VYr4
 OTITEXprG14BEd5JM/fa+1wyClDYMHZVBHRZoG0jIamniZ6v6nWLJ6t4N
 EzO0xJyV+x8F9uZhhxFpLZ8s5bqNj8aElQte+2NUPhW0dCvueGS82LbN5
 NQH2pqT3Sw6z/BGrZdmzo07iguBsSJiyA1uRaFetAXzl/OBWmJV2WJnTd
 YRZZKmpCBS6TD6gzT6IiX2keotrwjETafImwtCs/NX5U7DygvjLSXS3lF w==;
X-CSE-ConnectionGUID: G5xIV9EvScKA+ZuArLYaLQ==
X-CSE-MsgGUID: SpdcRDlsTAa741FbDgJvYg==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="13002346"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="13002346"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 04:19:22 -0700
X-CSE-ConnectionGUID: hpQhgGQoRpeU8kBQ+I4HQQ==
X-CSE-MsgGUID: /Y4MFKwuTF2jBvyDrZpmnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33613999"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 May 2024 04:19:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 May 2024 14:19:15 +0300
Date: Thu, 23 May 2024 14:19:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Tvrtko Ursulin <tursulin@ursulin.net>
Cc: Vidya Srinivas <vidya.srinivas@intel.com>,
 intel-gfx@lists.freedesktop.org, shawn.c.lee@intel.com,
 stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915/dpt: Make DPT object unshrinkable
Message-ID: <Zk8mM0bh5QMGcSGL@intel.com>
References: <20240520165634.1162470-1-vidya.srinivas@intel.com>
 <20240522152916.1702614-1-vidya.srinivas@intel.com>
 <5e5660ac-e14b-4759-a6f6-38cc55d37246@ursulin.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5e5660ac-e14b-4759-a6f6-38cc55d37246@ursulin.net>
X-Patchwork-Hint: comment
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 23, 2024 at 09:25:45AM +0100, Tvrtko Ursulin wrote:
> 
> On 22/05/2024 16:29, Vidya Srinivas wrote:
> > In some scenarios, the DPT object gets shrunk but
> > the actual framebuffer did not and thus its still
> > there on the DPT's vm->bound_list. Then it tries to
> > rewrite the PTEs via a stale CPU mapping. This causes panic.
> > 
> > Suggested-by: Ville Syrjala <ville.syrjala@linux.intel.com>
> > Cc: stable@vger.kernel.org
> > Fixes: 0dc987b699ce ("drm/i915/display: Add smem fallback allocation for dpt")
> > Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gem/i915_gem_object.h | 3 ++-
> >   1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > index 3560a062d287..e6b485fc54d4 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > @@ -284,7 +284,8 @@ bool i915_gem_object_has_iomem(const struct drm_i915_gem_object *obj);
> >   static inline bool
> >   i915_gem_object_is_shrinkable(const struct drm_i915_gem_object *obj)
> >   {
> > -	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_IS_SHRINKABLE);
> > +	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_IS_SHRINKABLE) &&
> > +		!obj->is_dpt;
> 
> Is there a reason i915_gem_object_make_unshrinkable() cannot be used to 
> mark the object at a suitable place?

Do you have a suitable place in mind?
i915_gem_object_make_unshrinkable() contains some magic
ingredients so doesn't look like it can be called willy
nilly.

Anyways, looks like I forgot to reply that I already pushed this
with this extra comment added:
/* TODO: make DPT shrinkable when it has no bound vmas */

-- 
Ville Syrjälä
Intel
