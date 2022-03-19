Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2404DE576
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Mar 2022 04:40:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 195CE10E201;
	Sat, 19 Mar 2022 03:40:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A894810E201
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Mar 2022 03:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647661246; x=1679197246;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=tPlY86u2h0DTGtRiORQWfS3EtdQHnNuCX3nMs+74ztM=;
 b=YYpAavpzFXf9qESBnTcpF+ACBk3rq8lRXEblqQKBfCQfc3HBGvi0NFry
 gQpbZYlieIYVohFe4qu6SHrqcm21H6EFEVSwRdPjQZB5ync7l/CmzKhb5
 e6zBXhzBzIvzF1dq8OwTQ0KvYqgNY2Tkr85W0vuMjuEg5c2SdjZZTxoyn
 EgijS+7SIeK57R9jroxbQPK3I4TOKawmyXeAbpI9LOPqAyyu2uIzWgz2R
 2VAgqoit9rwS3fI2smGkTAF/YGsCzkSp7Vuu5z2QAxZt0oB1joUAyKXzM
 omf01dDMmC1PoP0tV14N6RPZdr2ndc+NXTvryni/bdLxsSXbGZ6AS4gi/ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10290"; a="257218586"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="257218586"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 20:40:46 -0700
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="599749278"
Received: from kuanhuat-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.81.179])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 20:40:45 -0700
Date: Fri, 18 Mar 2022 20:40:45 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Casey Bowman <casey.g.bowman@intel.com>
Message-ID: <20220319034045.ki34nyoejk5hdg7z@ldmartin-desk2>
References: <20220319020042.306649-1-casey.g.bowman@intel.com>
 <20220319020042.306649-2-casey.g.bowman@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220319020042.306649-2-casey.g.bowman@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Require INTEL_GTT to depend
 on X86
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
Cc: thomas.hellstrom@linux.intel.com, intel-gfx@lists.freedesktop.org,
 chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 18, 2022 at 07:00:41PM -0700, Casey Bowman wrote:
>The intel-gtt module is not used on other, non-x86 platforms, so we
>will restrict it to x86 platforms only.
>
>Signed-off-by: Casey Bowman <casey.g.bowman@intel.com>

this should probably be the second patch, not the first.



Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>


Lucas De Marchi


>---
> drivers/gpu/drm/i915/Kconfig | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
>index 63db8bcf03bf..b381e14863a6 100644
>--- a/drivers/gpu/drm/i915/Kconfig
>+++ b/drivers/gpu/drm/i915/Kconfig
>@@ -4,7 +4,7 @@ config DRM_I915
> 	depends on DRM
> 	depends on X86 && PCI
> 	depends on !PREEMPT_RT
>-	select INTEL_GTT
>+	select INTEL_GTT if X86
> 	select INTERVAL_TREE
> 	# we need shmfs for the swappable backing store, and in particular
> 	# the shmem_readpage() which depends upon tmpfs
>-- 
>2.25.1
>
