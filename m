Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FC6A5485D
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 11:49:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3EE110E175;
	Thu,  6 Mar 2025 10:48:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UB/VxZkA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C85610E153;
 Thu,  6 Mar 2025 10:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741258137; x=1772794137;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=pBVfHpfcmBkQqUQh/ig2FxON7UfJdREGPUuY2mX94D0=;
 b=UB/VxZkAuISuEstGl7X61+jXKH+mIW41w6b/j1Ayg3NTWu/3MrujBGsU
 rROuhjWl95A4H7Nvch8sDcy0V3+gNW+qmIjdX5lFKLI19zJ8r93WNRhdr
 7IoOmk8w7PQPbKns11BHZAdQmSrHgOhT18WIUlhW3BkDe5Is5I+aSDhZD
 15mGVQlMkTB5fGQxsQPyxOFBN/H5ISwYbG5zs3HEgZkz6ymoLXKEPEJep
 oWaZGetqTVKtwRE2e2hZ++kU92jXTiXG8z5vcFk5Reg+FAdQ8GFzAmFZy
 sqZ9DYgmIqDO3WWUMac1GM5VpjPlNCrYBRqcOOR4bVyDWhNK63jtHUMXN A==;
X-CSE-ConnectionGUID: MP7GGQhJTUCMarlL/3syzw==
X-CSE-MsgGUID: LhK8sgmvSkGOcSzmdNSRUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="52896687"
X-IronPort-AV: E=Sophos;i="6.14,225,1736841600"; d="scan'208";a="52896687"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 02:48:54 -0800
X-CSE-ConnectionGUID: Uyn8MfMaTiaBaOm4GhBiqg==
X-CSE-MsgGUID: HzvBLz2kQPe+Qx6QTN1j5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,225,1736841600"; d="scan'208";a="119670250"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 02:48:52 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ryszard Knop <rk@dragonic.eu>, "Knop, Ryszard" <ryszard.knop@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>, "daniel@fooishbar.org"
 <daniel@fooishbar.org>, Sima Vetter <sima@ffwll.ch>
Subject: Re: Discussion: Moving away from Patchwork for Intel i915/Xe CI
In-Reply-To: <4e752e412143c8515b78146c5149126a7c5f306a.camel@dragonic.eu>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <814f9bcb9c7ee22af45bd5278255af247c6664fa.camel@intel.com>
 <871pvbxt40.fsf@intel.com>
 <4e752e412143c8515b78146c5149126a7c5f306a.camel@dragonic.eu>
Date: Thu, 06 Mar 2025 12:48:48 +0200
Message-ID: <87cyeuwi27.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 05 Mar 2025, Ryszard Knop <rk@dragonic.eu> wrote:
> On Wed, 2025-03-05 at 19:52 +0200, Jani Nikula wrote:
>> I think eventually we will want to consider accepting contributions via
>> gitlab merge requests directly.
>> 
>> It would also be interesting if maintainers/committers could merge the
>> contributions via gitlab UI already when CI applied the patches from the
>> mailing list and created the merge request.
>> 
>> In the merge request case, they'd have to be against individual repos
>> that feed into drm-tip, *not* merge requests against drm-tip
>> directly. So for testing CI would have to recreate drm-tip the same way
>> as 'dim push-branch' currently does.
>
> This is doable, but perf-wise is not going to be great. We would have to
> checkout all trees pulled into drm/tip for each build as listed in the
> latest integration-manifest, replace target tree with the MR tree, then
> provide results from that. We'll see how this works out in practice.
> (It should be just `dim rebuild-tip` after pointing all the branches at
> the required commits?)
>
> This also means having a backup drm/tip source when fd.o is offline is
> out; it's patched into too many places if dim gets used.

I think the short answer is, just go ahead with what you're planning
now, but keep the above in the back of your mind. I'm not sure we have
definitive answers without a bunch of planning yet either.

BR,
Jani.


-- 
Jani Nikula, Intel
