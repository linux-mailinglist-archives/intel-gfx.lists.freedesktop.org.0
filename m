Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3496A86CCED
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 16:28:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B38E10E1F9;
	Thu, 29 Feb 2024 15:28:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KdFJLBlC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99E1610E1F9
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 15:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709220529; x=1740756529;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+O61u90ySr8y6Li2TbwNG9rou5+QpOMXNFWT0+C51CY=;
 b=KdFJLBlC1tFMWTGJWlLdK7k+v8S/PU7T8TJ2/BKeXNKyP+4ucDkqybYw
 uN9kIRiE0kbRDZ3y8X83rvqE1rsdY+5n/0JaVrgnyjqfw+3iQSviYD7lx
 FDN9W+225Lh904qcm3Sd8mewn5BpSSkopg/UWhlrQvClFYdHK9DqNYZFM
 F0nQ4tz0k+dK44TB+N62UoWCjgIBfN3Ca+Ts/6WGyTwwVkcZftaIoKlOH
 Xov0XrWYVds218FjFuQJ9OrBd0+HpwvO/quJHrH0Qn0DqwpruNE0olcFQ
 HPsSDi6sDXv7QeGO84SLzZ/BWVG0Qt2kbK2q6ZwucHvAdgJJ2bBrylt6F Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="14403434"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="14403434"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 07:28:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; 
   d="scan'208";a="7733512"
Received: from shikhas4-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.246.52.1])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 07:28:46 -0800
Date: Thu, 29 Feb 2024 16:28:43 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
	Andi Shyti <andi.shyti@linux.intel.com>
Subject: Re: [PATCH] drm/i915: Add missing doc for drm_i915_reset_stats
Message-ID: <ZeCiq4kVlXFXN9PU@ashyti-mobl2.lan>
References: <20240229132918.10205-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240229132918.10205-1-nirmoy.das@intel.com>
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

On Thu, Feb 29, 2024 at 02:29:18PM +0100, Nirmoy Das wrote:
> Add missing doc for struct drm_i915_reset_stats.
> 
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
