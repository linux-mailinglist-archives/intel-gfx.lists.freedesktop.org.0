Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 931AE7CD32E
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 06:39:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF1FF10E37D;
	Wed, 18 Oct 2023 04:39:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8A6010E379;
 Wed, 18 Oct 2023 04:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697603939; x=1729139939;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=YJgVOd007rIY7m06E4WmvERyRc1dEcX74XjD2N/3ARg=;
 b=gYyebMg5j4fqZ5O6fcU/JDvbL4Q5cIJP59qKHk//vcIqhHKJ0j1ubX1E
 HD7MvfR/RfrIgFIDj9++fAvr7+xXRQuAvTxhEpWtR6HjN+2RPysHDoY94
 XOoRQdG7K5p2vT3o4ahPmLEfXEgwkvynRmtxHvAfZVtOGl7XlbYfKNXMG
 CsMOsOIceVIUxf/NHpreMw45gUMwuPvnytyc8ic0355VB/+uUdsHqRsP8
 GNK42SzkISZmAkcrhxJlK6h/qn01LmMQvK6iaLv1jG56yVJS3A4Ng4tXf
 iVjXrKSAvsp2WbGJjuJHZNT43Im+1QMv69kJWOLzsXR4XYZeMVuZ0jnqr w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="417050394"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="417050394"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 21:38:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="880061806"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="880061806"
Received: from kchua1-mobl1.gar.corp.intel.com (HELO intel.com)
 ([10.215.248.174])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 21:38:50 -0700
Date: Wed, 18 Oct 2023 06:38:41 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <ZS9hUU9GvCagGm6t@ashyti-mobl2.lan>
References: <20231008164824.919262-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231008164824.919262-1-andi.shyti@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Remove the 'force_probe'
 requirement for Meteor Lake
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
Cc: Aditya Chauhan <aditya.chauhan@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

> Meteor Lake has demonstrated consistent stability for some time.
> All user-space API modifications tide to its core platform
> functions are operational.
> 
> The necessary firmware components are set up and comprehensive
> testing has been condused over a period.
> 
> Given the recent faborable CI results, as well, we believe it's
> time to eliminate the 'force_probe' prerequisite and activate the
> platform by default.
> 
> Signed-off-by: Aditya Chauhan <aditya.chauhan@intel.com>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

merged in drm-intel-next.

Thanks everyone for this effort!

> ---
> Hello,
> 
> This patch eliminates the 'force probe' for the MTL platforms. Over the recent
> weeks, MTL has demonstrated stability, consistently passing BAT tests with
> success rates ranging from 98% to 100%.
> 
> There's a single issue hindering us from achieving a 100% BAT test coverage.
> Fortunately, we've identified the issue, and the proposed solution can be found
> here[*]. The CI results are encouraging.
> 
> Once all reviews are addressed, we plan to submit this series with the "Fixes:"
> tag.
> 
> Thank you and best regards,
> Andi and Radhakrishna
> 
> [*] https://patchwork.freedesktop.org/series/124744/

The fix has been just applied.

Thanks,
Andi
