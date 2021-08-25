Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D53893F77C1
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 16:51:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B71D46E2D8;
	Wed, 25 Aug 2021 14:51:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EBC86E2D8;
 Wed, 25 Aug 2021 14:51:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="217541215"
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; d="scan'208";a="217541215"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 07:51:37 -0700
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; d="scan'208";a="527354684"
Received: from mburkard-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.213.64])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 07:51:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Jason Ekstrand <jason@jlekstrand.net>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210727121037.2041102-11-daniel.vetter@ffwll.ch>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210727121037.2041102-1-daniel.vetter@ffwll.ch>
 <20210727121037.2041102-11-daniel.vetter@ffwll.ch>
Date: Wed, 25 Aug 2021 17:51:31 +0300
Message-ID: <87bl5lefws.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 11/11] drm/i915: Extract i915_module.c
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

On Tue, 27 Jul 2021, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> +static void __exit i915_exit(void)
> +{
> +	int i;
> +
> +	for (i = init_progress - 1; i >= 0; i--) {
> +		GEM_BUG_ON(i >= ARRAY_SIZE(init_funcs));

Not introduced by you, but it's kind of silly we're using GEM_BUG_ON()
in generic driver code.

BR,
Jani.

> +		if (init_funcs[i].exit)
> +			init_funcs[i].exit();
> +	}
> +}

-- 
Jani Nikula, Intel Open Source Graphics Center
