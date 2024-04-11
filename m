Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD118A171B
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Apr 2024 16:26:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 841A910F10E;
	Thu, 11 Apr 2024 14:26:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZuJ3BUe0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5678110F10E
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Apr 2024 14:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712845599; x=1744381599;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=PpTAx56quAXUqHSgUOFtlECLGTH0tWdsnE+EHTkZ/pg=;
 b=ZuJ3BUe0LMClKKCJ6BZAu8+Ud9jcC7yGu+VjQWR8UaHemXZIHIeGV+SQ
 GrGLdsJF/QRyLPibYgL2zRXXp0D4nQvmFaioE7jBJJsrdMOphBMpuhBeF
 NhSZcP9b1P1NgYWMPciOn9J8M0gTVG5Gg2UgxhuJhBGv3sEbnVfvszwlG
 xzlTtViiEU4xD/ZOUhjV4Z36sL/m6o38L2IdNHy7xdOOH03vhys17GBLI
 TOZsN4y3E8cWAanxZrjyXAy256O25zec3vteoBMmSnHpryFp1OiJ8YWSi
 sXNzXgakGYCrhO6gJrDSVhK+AFnXj5GeBojP/dVnQDlfLAP6GJPd0nYGl w==;
X-CSE-ConnectionGUID: DrT/HBD9SeKqkI0uGQVhNA==
X-CSE-MsgGUID: wjum8FAMRnSnSqjCNzemEQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="8113535"
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; 
   d="scan'208";a="8113535"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 07:26:39 -0700
X-CSE-ConnectionGUID: edGH7NHaRbSKWYwA7bcNUA==
X-CSE-MsgGUID: GEhMktrwTyepP9iZiiV3OA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; d="scan'208";a="44196486"
Received: from unknown (HELO intel.com) ([10.247.119.2])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 07:26:34 -0700
Date: Thu, 11 Apr 2024 16:26:28 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Andi Shyti <andi.shyti@kernel.org>
Subject: Re: [PATCH v2 2/2] drm/i915/gem: Calculate object page offset for
 partial memory mapping
Message-ID: <ZhfzFM2Lh-OBAmw2@ashyti-mobl2.lan>
References: <20240329163959.791865-1-andi.shyti@linux.intel.com>
 <20240329163959.791865-3-andi.shyti@linux.intel.com>
 <fd76d2fc-7906-4adc-9413-598c5768f991@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fd76d2fc-7906-4adc-9413-598c5768f991@linux.intel.com>
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

Hi Nirmoy,

On Thu, Apr 11, 2024 at 04:18:41PM +0200, Nirmoy Das wrote:
> Hi Andi,
> 
> On 3/29/2024 5:39 PM, Andi Shyti wrote:
> > To enable partial memory mapping of GPU virtual memory, it's
> > necessary to introduce an offset to the object's memory
> > (obj->mm.pages) scatterlist. This adjustment compensates for
> > instances when userspace mappings do not start from the beginning
> > of the object.
> 
> I quickly tried https://gitlab.freedesktop.org/llandwerlin/igt-gpu-tools/-/tree/wip/gem_mmap_offset-partial-unmap?ref_type=heads
> that didn't work for GTT.
> 
> Please make sure a proper IGT test is available for this as this looks very
> risky change.

Yes, I have igt's ready and a new v3.

Thanks for trying this out.

Andi
