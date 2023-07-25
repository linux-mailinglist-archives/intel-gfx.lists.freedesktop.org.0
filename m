Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0907619D0
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 15:23:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64F3510E3CB;
	Tue, 25 Jul 2023 13:23:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CDFA10E3CB
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 13:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690291420; x=1721827420;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=I4gwtOPKPczV/tA651aobgZovyxziytXSKjuN3E7b+c=;
 b=USKfmE+iHGvtEhv9XMYOSd2wfb3SGKksV1nQe3VSWJbaIyZRJ7iGlwfM
 ErLyvAVGEcJdVwd+ZHgEOyhY3FDDKu9EGS8tiI64VVpmp0qybSsajUd/U
 4mqZ/AYF4+eak+vYy+7igXcuUfx1OBniq7mhk8ySRH6gKjC+Q/Trth+mG
 y5aE89RNealkrnlwPXUTYXM5wKkCyChSVzpKmNNNBXbdUGTQJ1cSl04GH
 T81Cwo2dJIneBt/aRy0+HMdE2y/KYMy5z6JJJwA3vyZavNyHgGT90fGIU
 BFJxKwbWNwUyZupNGyHv35/MElb3tLPpalGr5NSdztbkljSeylvh0gLi6 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="454100689"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="454100689"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 06:23:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="761215201"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="761215201"
Received: from kshutemo-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.37.237])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 06:23:36 -0700
Date: Tue, 25 Jul 2023 15:23:33 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <ZL/M1WFx7BX05wT5@ashyti-mobl2.lan>
References: <20230721140559.830660-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230721140559.830660-1-jonathan.cavitt@intel.com>
Subject: Re: [Intel-gfx] [PATCH dii-client 1/2] drm/i915: Make
 i915_coherent_map_type GT-centric
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
Cc: chris.p.wilson@linux.intel.com, intel-gfx@lists.freedesktop.org,
 matthew.d.roper@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

On Fri, Jul 21, 2023 at 07:05:58AM -0700, Jonathan Cavitt wrote:
> Refactor i915_coherent_map_type to be GT-centric rather than
> device-centric.  Each GT may require different coherency
> handling due to hardware workarounds.

[...]

> -enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
> +enum i915_map_type i915_coherent_map_type(struct intel_gt *gt,
>  					  struct drm_i915_gem_object *obj,
>  					  bool always_coherent)
>  {
>  	/*
>  	 * Wa_22016122933: always return I915_MAP_WC for MTL
>  	 */
> -	if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(i915))
> +	if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(gt->i915))
>  		return I915_MAP_WC;
> -	if (HAS_LLC(i915) || always_coherent)
> +	if (HAS_LLC(gt->i915) || always_coherent)
>  		return I915_MAP_WB;
>  	else
>  		return I915_MAP_WC;

this doesn't fully look right to me as gt-centric stuff need to
be in the gt/ directory.

As for this patch, here we don't need any reference to the gt.
You could eventually add some wrapper inside gt/ that perform the
per 'gt' checks and at the end call this function here.

Andi
