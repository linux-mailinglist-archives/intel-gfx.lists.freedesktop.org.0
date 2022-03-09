Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8A34D2516
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 02:13:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55F9E10E386;
	Wed,  9 Mar 2022 01:13:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46CDD10E386
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 01:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646788390; x=1678324390;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=sOQM8b7/bFL9U+S1/Td7cK3cdaspajFfWDED+IBBAPM=;
 b=SuTXWnCtdHxNIz+ep5IJOB7w+6hrcowULwjSNQdzqlrCDDZHXQEwUR7/
 HBb9Sf0i5oybs7m2HtVEtgpwVocXtt2CxtoQ7C+9WNhxU7yaWZR3xxFi2
 TJyCtSO3/dz7rEtm8nyXfuaKP3sBYyExpjkTAtb2CzyulHL40wVfdkNd4
 3yEvXeeF5yJ3dcS92K0VbiSpsrxlXJgri2lV4ihG6xN4OUYNPEv/AehFB
 rOlfQH8+NNP/f+Pn53SiWjNPAJKcEPxCbL7fqKGFX43ZeF+cMChx3rpSE
 4+RExCPJRrTyFnspL9OKHSFi3XA6aUHF2ioB6VnHU2WqMRx6QFMk8fxoF w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="235465773"
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="235465773"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 17:13:09 -0800
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="643858095"
Received: from abagarwa-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.156.1])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 17:13:09 -0800
Date: Tue, 8 Mar 2022 17:13:09 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Mullati Siva <siva.mullati@intel.com>
Message-ID: <20220309011309.v4sn24fa5aft6t72@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220308093805.879262-1-siva.mullati@intel.com>
 <20220308093805.879262-2-siva.mullati@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220308093805.879262-2-siva.mullati@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] iosys-map: Add a helper for pointer
 difference
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 08, 2022 at 03:08:04PM +0530, Mullati Siva wrote:
>From: Siva Mullati <siva.mullati@intel.com>
>
>iosys_map_ptrdiff to get the difference in address of
>same memory type.
>
>Signed-off-by: Siva Mullati <siva.mullati@intel.com>
>---
> include/linux/iosys-map.h | 21 +++++++++++++++++++++
> 1 file changed, 21 insertions(+)
>
>diff --git a/include/linux/iosys-map.h b/include/linux/iosys-map.h
>index e69a002d5aa4..8987f69ec1e9 100644
>--- a/include/linux/iosys-map.h
>+++ b/include/linux/iosys-map.h
>@@ -8,6 +8,7 @@
>
> #include <linux/io.h>
> #include <linux/string.h>
>+#include <linux/types.h>
>
> /**
>  * DOC: overview
>@@ -208,6 +209,26 @@ static inline bool iosys_map_is_equal(const struct iosys_map *lhs,
> 		return lhs->vaddr == rhs->vaddr;
> }
>
>+/**
>+ * iosys_map_ptrdiff - Difference of two iosys mapping addresses of same memory type
>+ * @lhs:       The iosys_map structure
>+ * @rhs:       A iosys_map structure to compare with
>+ *
>+ * Two iosys mapping structures of same memory type with the differences
>+ * in address within that memory.
>+ *
>+ * Returns:
>+ * Address difference of two memory locations with same memory type.
>+ */
>+static inline ptrdiff_t iosys_map_ptrdiff(const struct iosys_map *lhs,
>+					  const struct iosys_map *rhs)
>+{
>+	if (lhs->is_iomem)

the other interfaces always check both arguments to make sure they are
both iomem. So if we want this interface we will want to check like
that.

I'm not sure this is really needed, but will depend on the secon patch,
let's wait to settle this discussion there.


thanks
Lucas De Marchi
