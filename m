Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1FE6B80DD
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Mar 2023 19:39:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E34BD10E128;
	Mon, 13 Mar 2023 18:39:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4219110E128
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Mar 2023 18:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678732757; x=1710268757;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Z6AVXyMZJ10O2p4sbJy/M3saaqPuvCABLTGoGTKmLic=;
 b=Y1M8MqERPqXJwvQPQVnnBgsBtPnuS+S6jshxtHgIYy2MaBjzx+GtdAmu
 F/udGpEIvehXL5Joqwuyvo7o3lz3BS6eXKfzt0848wCwGNBfuNMSDOLwu
 bL0uM/cL2YAkMPkNPXeF2JFNaQkQBJNseDcP6GbOuOCqgGC9D9lBPHtpk
 rR3gOAsz4++GiYB03QdeaEj4wHUg5+1p5HpSljm/lAqa/4uSIwCtm1hwF
 7U18CjhWxCFoT5EslVRPfq60eSRDGvKjRIGqRtBegdt0kRV/xTdSRcotK
 tMMvmAmL6iaeANckAXzxKeOGGl/7e0eTczqZlPCHJWLegyA81iBp/6J39 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="325594874"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="325594874"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 11:37:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="656065877"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="656065877"
Received: from ttulbure-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.34.2])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 11:37:47 -0700
Date: Mon, 13 Mar 2023 19:37:44 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <ZA9teJEVT7CDxNd8@ashyti-mobl2.lan>
References: <20230307144652.17595-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230307144652.17595-1-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [RFC PATCH 1/2] drm/i915: Add a function to mmap
 framebuffer obj
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

[...]

> +int i915_gem_fb_mmap(struct drm_i915_gem_object *obj, struct vm_area_struct *vma)
> +{
> +	struct drm_i915_private *i915 = to_i915(obj->base.dev);
> +	struct drm_device *dev = &i915->drm;
> +	struct i915_mmap_offset *mmo = NULL;
> +	enum i915_mmap_type mmap_type;
> +	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
> +
> +	if (drm_dev_is_unplugged(dev))
> +		return -ENODEV;
> +
> +	mmap_type = i915_ggtt_has_aperture(ggtt) ? I915_MMAP_TYPE_GTT : I915_MMAP_TYPE_WC;
> +	mmo = mmap_offset_attach(obj, mmap_type, NULL);
> +	if (!mmo)
> +		return -ENODEV;
> +
> +	obj = i915_gem_object_get(mmo->obj);

Where do we decrease the refcount?

Andi

> +	return i915_gem_object_mmap(obj, mmo, vma);
> +}
> +
