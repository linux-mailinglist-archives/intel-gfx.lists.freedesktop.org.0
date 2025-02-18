Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DB5A3996E
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 11:46:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FA9810E66B;
	Tue, 18 Feb 2025 10:46:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NUnFz/5d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D9A010E681
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2025 10:46:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739875596; x=1771411596;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=tolaeLcpkvb+R6F11CvpPIGmyUEu8JpuNUmqa06HfBU=;
 b=NUnFz/5d+YVAyoTPd6ovb2F32aV41u3NJl3woKNRY+E86mut/9V8SA6v
 o6A/V+OuUZ8yxGvaD15usStFNQShhWtyr0+jmFt4VzZKfqWbgM1ZBmq9P
 p26rn2aaE+oPSdtnZAlNE/ezRPFlaDmEXk4Zh+7oDERq5hauON52brYpO
 mJF/OY9pW2vsMAh/9Erl3e/+WElZGu5roMVv0Gx4UR4CcD5YNyJaG6h6k
 9a1G4pqbQTQjMp8nsmSo/ovGroFNs5i5+UoZxssIsBAmRtDOTIKkqhB9k
 aookJlmdTfKZAeDsmgT48YQfgiD8BUuy7bz5x2r5tgAim4mfElp78wHm5 Q==;
X-CSE-ConnectionGUID: sLOxQz7YRWC4V1fIljELEQ==
X-CSE-MsgGUID: kPMHEBNoRbOtevg3yYBQfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="40588199"
X-IronPort-AV: E=Sophos;i="6.13,295,1732608000"; d="scan'208";a="40588199"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 02:46:36 -0800
X-CSE-ConnectionGUID: OIJPEpp3Qo+veMK3Ka9g7g==
X-CSE-MsgGUID: nkbX+lqAQKW8V1dhMUxwZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="114226695"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.41])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 02:46:35 -0800
Date: Tue, 18 Feb 2025 11:46:30 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 1/1] drm/i915/xehp: add wait on depth stall done bit
 handling
Message-ID: <Z7RlBjcVa2RRY9F-@ashyti-mobl2.lan>
References: <20250214155712.2849848-1-juhapekka.heikkila@gmail.com>
 <20250214155712.2849848-2-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250214155712.2849848-2-juhapekka.heikkila@gmail.com>
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

Hi JP,

On Fri, Feb 14, 2025 at 05:57:11PM +0200, Juha-Pekka Heikkila wrote:
> Add writing of WAIT_ON_DEPTH_STALL_DONE_DISABLE for gen12, this
> is performance optimization.
> 
> Bspec: 46132
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12411
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
