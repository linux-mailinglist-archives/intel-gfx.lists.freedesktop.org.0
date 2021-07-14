Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE76B3C8215
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 11:52:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BACA6E1F2;
	Wed, 14 Jul 2021 09:52:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6FF16E1F1;
 Wed, 14 Jul 2021 09:52:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="207300632"
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="207300632"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2021 02:52:24 -0700
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="505168155"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.205])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2021 02:52:22 -0700
Date: Wed, 14 Jul 2021 15:24:06 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <20210714095406.GA27868@intel.com>
References: <20210707105238.1694091-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210707105238.1694091-1-matthew.auld@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tests/kms_addfb_basic: pass
 the actual fd to gem_has_lmem
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
Cc: igt-dev@lists.freedesktop.org,
 Mohammed Khajapasha <mohammed.khajapasha@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2021-07-07 at 11:52:38 +0100, Matthew Auld wrote:
> Currently we pass the devid as if it were the fd, which doesn't work.
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
LGTM.

Reviewed-by: Ramalingam C <ramalingam.c@intel.com>

> Cc: Mohammed Khajapasha <mohammed.khajapasha@intel.com>
> Cc: Latvala Petri <petri.latvala@intel.com>
> Cc: Michael J. Ruhl <michael.j.ruhl@intel.com>
> ---
>  tests/kms_addfb_basic.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/tests/kms_addfb_basic.c b/tests/kms_addfb_basic.c
> index 91fb6ac9..eff1d9b2 100644
> --- a/tests/kms_addfb_basic.c
> +++ b/tests/kms_addfb_basic.c
> @@ -150,13 +150,11 @@ static void invalid_tests(int fd)
>  	igt_describe("Check if addfb2 with a system memory gem object "
>  		     "fails correctly if device requires local memory framebuffers");
>  	igt_subtest("invalid-smem-bo-on-discrete") {
> -		int devid;
>  		uint32_t handle, stride;
>  		uint64_t size;
>  
>  		igt_require_intel(fd);
> -		devid = intel_get_drm_devid(fd);
> -		igt_require(gem_has_lmem(devid));
> +		igt_require(gem_has_lmem(fd));
>  		igt_calc_fb_size(fd, f.width, f.height,
>  				DRM_FORMAT_XRGB8888, 0, &size, &stride);
>  		handle = gem_create_in_memory_regions(fd, size, REGION_SMEM);
> -- 
> 2.26.3
> 
> _______________________________________________
> igt-dev mailing list
> igt-dev@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/igt-dev
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
