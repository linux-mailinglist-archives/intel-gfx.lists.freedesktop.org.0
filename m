Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5B79F9184
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 12:41:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DC2510EF90;
	Fri, 20 Dec 2024 11:41:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fxnBv7uq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03DD010EF90
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2024 11:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734694906; x=1766230906;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Bb03UyxT5RDnyB8kzNRbTYcSpp2eUg0yjdAehSG9M3Q=;
 b=fxnBv7uqUSXfdt98ng3I9zAjIq6UPjpuSbLPrZ3zf0jlM5IyWviaVb/W
 0epOu3U3bZKDYQvWJ8Fhnlou6OVCKNpd8gkU04LhUNypyumKRQpNTY2CA
 0sd7/jxUimCqsA4QOWnxo1xrf2FdohvLCTKRY4/L4DrSlGykZWUV/7zsO
 kC34i3Zw8QLt3kiO1SoB5bf96hW3K44Jy/4+Ajy2PpN5JcOzmNoyGfCAO
 4aBGL29o56W6tEYHvC4Xto8hTjbfQS1uetmGYWNdw6BzBoLqAbO9B6DbC
 qtXWP6HLcc6uQYrnrlzNrbrtyoNdFt8K4pKSBJK3qij9fz2gF5b3OTa9r g==;
X-CSE-ConnectionGUID: 1tS13tO8QXuBin0ekY74xA==
X-CSE-MsgGUID: fx73hvw0SvaLKhCao2LaDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="34525391"
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="34525391"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 03:41:45 -0800
X-CSE-ConnectionGUID: rDFQ5gTLRF2nATNh1ATsZQ==
X-CSE-MsgGUID: eEpo4UTBSQ+uejAK9MlZ5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="98689016"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.245])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 03:41:43 -0800
Date: Fri, 20 Dec 2024 12:41:39 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
Cc: matthew.d.roper@intel.com, tursulin@ursulin.net,
 intel-gfx@lists.freedesktop.org, chris.p.wilson@intel.com,
 nirmoy.das@intel.com
Subject: Re: [PATCH v3] drm/i915/gt: Use ENGINE_TRACE for tracing.
Message-ID: <Z2VX8-YlpUyRB-rA@ashyti-mobl2.lan>
References: <20241217100058.2819053-1-nitin.r.gote@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241217100058.2819053-1-nitin.r.gote@intel.com>
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

Hi Nitin,

On Tue, Dec 17, 2024 at 03:30:58PM +0530, Nitin Gote wrote:
> Instead of drm_err(), prefer gt_err() and ENGINE_TRACE()
> for GEM tracing in i915. So, it will be good to use ENGINE_TRACE()
> over drm_err() drm_device based logging for engine debug log.
> 
> v2: Bit more specific in commit description (Andi)
> 
> v3: Use gt_err() along with ENGINE_TRACE() in place of drm_err() (Andi)
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

thanks for following up on this, reviewed and merged to
drm-intel-gt-next.

Thanks,
Andi
