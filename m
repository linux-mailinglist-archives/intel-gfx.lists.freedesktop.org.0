Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FDB74252F
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jun 2023 13:53:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA3A110E13A;
	Thu, 29 Jun 2023 11:53:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE4C110E13A
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jun 2023 11:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688039619; x=1719575619;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=5GRfvowUHhZzqa0Fd0D6XuaCQYgLZaRGMS+5X2rltj0=;
 b=iDI/WEqi9k7JeUre12Pt+YJhYleGCaMjDHpp/Hvt7UF8ETrq5zYt0fZl
 ffMDRcDm98ZdGbJUVYBk9Z4ipgkby7w3Fhd6Dq9VSRMlKOe5RfzZ4wcVt
 HCCZvWfEkYgkDhy8WYJZLyTnHpwm7smSuVuiGd5i/1s5aLCg07fVUykjO
 v57p6g4Jkyaa38NWJwwxC4yhJnOLqjwCExpP+vsYVgEf7BQkN5lo/6BeV
 NMhszb8N4gj4bFL6LSxSmVLnnOlAescU7Mx68jnrVHhuyTWkLTFQZlHt0
 Ed1AvnPTK1atUaVxbt41glL7n/oc+Tq0mf564ehnn2Hlt0mU4AHhXIlaN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="341670548"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="341670548"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 04:53:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="752608731"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="752608731"
Received: from gkarray-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.49.226])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 04:53:35 -0700
Date: Thu, 29 Jun 2023 13:53:30 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZJ1wuqD8WeF3zXmn@ashyti-mobl2.lan>
References: <cover.1687878757.git.jani.nikula@intel.com>
 <b0db62045a96a3fd4cf123685da88cc777f9b485.1687878757.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b0db62045a96a3fd4cf123685da88cc777f9b485.1687878757.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 1/6] drm/i915: use mock device info for
 creating mock device
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

On Tue, Jun 27, 2023 at 06:13:58PM +0300, Jani Nikula wrote:
> Instead of modifying the device info on the fly, use static const mock
> device info.
> 
> It's not okay to modify device info at runtime; we've added separate
> runtime info for info that needs to be modified at runtime. We've added
> safeguards to device info to prevent it from being modified, but commit
> 5e352e32aec2 ("drm/i915: preparation for using PAT index") just cast the
> const away and modified it anyway. This prevents device info from being
> moved to rodata.
> 
> Fixes: 5e352e32aec2 ("drm/i915: preparation for using PAT index")
> Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Fei Yang <fei.yang@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

thanks for fixing this!

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
