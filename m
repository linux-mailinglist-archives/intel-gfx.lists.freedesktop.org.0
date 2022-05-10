Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D024520E20
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 08:51:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D609210F162;
	Tue, 10 May 2022 06:51:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3395110F162
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 06:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652165478; x=1683701478;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=dNgtzV9Hpd7HN/dgytB+ImdZVboCChNXSFiUBmHyxvU=;
 b=LeUw+HHecLz7o4yATAHdGjuJL/Wi9jA3NM6m/FqKBGoNziT5ktxDHxf+
 WzCOQY8+qdwa5XXQ/axHcfBSfkmA6sDL0QDY+d42MW8rKyQLn0B/9Zksb
 ODGwbfQkv5hs0eYUGGwnLybTOlxN+jhI/vv0S+/lyd5nENFAMXS67nx+M
 ol75jj8WUVzXt8RF3GUX4EyS0IKHvpwkL/PEpIbK/ntaE7HpgCiMpVLlU
 t8/k6hxV8lk5h1xem189g1y5icmprUfS8jmfRXj0JpUFtduKL+YMDJAqV
 jtyCpnMwf9+XCxNSGU8gLpuW4qEsVFgrCzz1v0/DKxg69OuOFRMWcfhNa w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="251329708"
X-IronPort-AV: E=Sophos;i="5.91,213,1647327600"; d="scan'208";a="251329708"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 23:51:17 -0700
X-IronPort-AV: E=Sophos;i="5.91,213,1647327600"; d="scan'208";a="565491643"
Received: from nreina-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.219.57])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 23:51:15 -0700
Date: Tue, 10 May 2022 08:51:11 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <YnoLX/97tUMHlHJu@intel.intel>
References: <cover.1651261886.git.ashutosh.dixit@intel.com>
 <2d170de1b4cbbd670c90d963d2cc229426ead492.1651261886.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2d170de1b4cbbd670c90d963d2cc229426ead492.1651261886.git.ashutosh.dixit@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915/pcode: Extend pcode functions
 for multiple gt's
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ashutosh,

On Fri, Apr 29, 2022 at 12:56:24PM -0700, Ashutosh Dixit wrote:
> Each gt contains an independent instance of pcode. Extend pcode functions
> to interface with pcode on different gt's. To avoid creating dependency of
> display functionality on intel_gt, pcode function interfaces are exposed in
> terms of uncore rather than intel_gt. Callers have been converted to pass
> in the appropritate (i915 or intel_gt) uncore to the pcode functions.
> 
> v2: Expose pcode functions in terms of uncore rather than gt (Jani/Rodrigo)
> v3: Retain previous function names to eliminate needless #defines (Rodrigo)
> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

looks correct:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
