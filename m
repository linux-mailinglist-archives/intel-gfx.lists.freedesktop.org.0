Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A7254E33D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 16:19:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2CD5112E98;
	Thu, 16 Jun 2022 14:19:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A98E112E98
 for <Intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 14:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655389184; x=1686925184;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=C9AzZhmgZscCllq0Hez9Sqkrlz1E0jG0/DEqzjpAzcQ=;
 b=AaRFx57s9x0WVXUOsqAIgAqPJLGICxrXcLnqH6yEOSvd/EEjDEzVZ+Ha
 nrQZzm7SSftyEKHp47Ykv0T+EoY0y1NUWBE1hNv5yuYWb930c+5R8IL6H
 Y9evyAsFoGPJ5i6rr90o3dVLfso3ZcOyyjrU/omonG8yb7LaGjjj1y+t6
 MTMrTQRnEyz/aLNci+bsw5bFgp2dnuZVwMWQ3RZ3caGFxTF5qA7paxcb/
 S3iyWmxFlZG5XAYbqShY34+Y5CmPGNhLZR/2YWjQALU7EZgrWRcumLRbd
 +xqTm2a+AHbJQzeI6bPXiqolBnC0lARDtV19iLvj+CCDjknqvvxpgdmtS w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="279972983"
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="279972983"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 07:19:43 -0700
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="713374258"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 07:19:43 -0700
Date: Thu, 16 Jun 2022 07:19:43 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20220616141943.GM48807@orsosgc001.jf.intel.com>
References: <20220616140056.559074-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <20220616140056.559074-1-tvrtko.ursulin@linux.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fdinfo: Don't show engine classes
 not present
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
Cc: Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 16, 2022 at 03:00:56PM +0100, Tvrtko Ursulin wrote:
>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
>Stop displaying engine classes with no engines - it is not a huge problem
>if they are shown, since the values will correctly be all zeroes, but it
>does count as misleading.
>
>Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>Fixes: 055634e4b62f ("drm/i915: Expose client engine utilisation via fdinfo")
>Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>---
> drivers/gpu/drm/i915/i915_drm_client.c | 5 +++--
> 1 file changed, 3 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
>index 18d38cb59923..b09d1d386574 100644
>--- a/drivers/gpu/drm/i915/i915_drm_client.c
>+++ b/drivers/gpu/drm/i915/i915_drm_client.c
>@@ -116,8 +116,9 @@ show_client_class(struct seq_file *m,
> 		total += busy_add(ctx, class);
> 	rcu_read_unlock();
>
>-	seq_printf(m, "drm-engine-%s:\t%llu ns\n",
>-		   uabi_class_names[class], total);
>+	if (capacity)
>+		seq_printf(m, "drm-engine-%s:\t%llu ns\n",
>+			   uabi_class_names[class], total);

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Regards,
Umesh
>
> 	if (capacity > 1)
> 		seq_printf(m, "drm-engine-capacity-%s:\t%u\n",
>-- 
>2.34.1
>
