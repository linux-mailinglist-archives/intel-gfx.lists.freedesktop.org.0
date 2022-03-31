Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F2B4EDF74
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 19:16:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4332310F443;
	Thu, 31 Mar 2022 17:16:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E56F110F443
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 17:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648746964; x=1680282964;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vfdAc2/ESxJ/RHpM+xYSINbeiozSdr4ABfzwqIqMC9Q=;
 b=OoUP4ve/zBcLIAb2vNM7G8i5Zn7nZQ4m48xZhR1OMVlIHr9543E/tsGG
 8ku4v9za9Hiopa9GJqj/PXKU5QTa23dgYxI2M6+pxMRT5+xE/MbOTnC/p
 irAuLdTlL/4KeLbAvlVtZh6XFAuhqf8z5mf05WaYd5csbaAnzhO+eL6ZT
 7nSBm6DkYUqHbDqtA05Fx0gmIYEYJ+6LJEr5aKeHQqno1bPAgfGC3HszH
 HPcH8E6ps+N9Q1V1gVv1DcjhwjG/kBTmalq4G88ko9WpqkUvXyZe2QR35
 O2Xl8vuZr3L2+ImTjDa5YTHk1ln4gqRykry+dtGUtXrT+1m8Jy26ddBx6 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="259610166"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="259610166"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 10:16:03 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="840804389"
Received: from vvendra-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.255.230.104])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 10:16:02 -0700
Date: Thu, 31 Mar 2022 10:16:02 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
Message-ID: <20220331171602.y7dhjumsmmisu3h5@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220323174638.11017-1-zbigniew.kempczynski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220323174638.11017-1-zbigniew.kempczynski@intel.com>
Subject: Re: [Intel-gfx] [PATCH] [topic/core-for-CI] Revert "drm/i915/dg2:
 Add relocation exception"
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

On Wed, Mar 23, 2022 at 06:46:38PM +0100, Zbigniew Kempczyński wrote:
>This reverts commit 904ebf2ba89edaeba5c7c10540e43dba63541dc6.
>
>Failures on dg2 tests were caused by invalid alignment when local memory
>was in use. Changes which adopt alignment according to gen were already
>merged in IGT so lets revert relocation temporary enabler for dg2. Keeping
>it is a little bit problematic for IGT because on premerge we would see
>results with kernel which supports relocation. To see no-relocation
>results we need to send disabler (like this revert), point IGT with
>"Test-with" tag what is cumbersome and time consuming so lets do this
>permanently. If we will see some failures they need to be fixed instead
>of keeping relocation enabler.
>
>Signed-off-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Dave Airlie <airlied@redhat.com>
>Cc: Daniel Vetter <daniel.vetter@intel.com>
>Cc: Jason Ekstrand <jason@jlekstrand.net>
>Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>

thanks. I double checked BAT and things seem to be equivalent now
without that hack. I removed it from topic/core-for-CI.

How are we with the igt tests executed in full run?

thanks
Lucas De Marchi


>---
> drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>index 42a49fd2f2ab..8b0b4aeb6716 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>@@ -501,7 +501,7 @@ static bool platform_has_relocs_enabled(const struct i915_execbuffer *eb)
> 	 */
> 	if (GRAPHICS_VER(eb->i915) < 12 || IS_TIGERLAKE(eb->i915) ||
> 	    IS_ROCKETLAKE(eb->i915) || IS_ALDERLAKE_S(eb->i915) ||
>-	    IS_ALDERLAKE_P(eb->i915) || IS_DG2(eb->i915))
>+	    IS_ALDERLAKE_P(eb->i915))
> 		return true;
>
> 	return false;
>-- 
>2.32.0
>
