Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1387BF985
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 13:18:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27E4F10E1DE;
	Tue, 10 Oct 2023 11:18:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 188E510E1DC;
 Tue, 10 Oct 2023 11:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696936719; x=1728472719;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=4Rex7YzYh9VF3vKo2QHl/skUKUNjinmD9cIJNedwWAk=;
 b=bsAdKICcR4+mllpmID5v6QehpNJ9zZ0MRpE+ZNA2kodAeIwhEBnaPVHj
 NKNc0ko32GJg1TwQuaiLBxw2tC8kvU2De1YV2UEA/U1P6zz+1mmfbx5A4
 7MfzxqkA7rQiOiOv/8++5cB8OYsnBHw0ZUSldCnSJOF/dUkngyU5O0d0L
 lK/Lm6I/f2vuaNzNf0hh5q8cpbJnCS8i/lX/Cwq2UPbpVTWR/nMb/RGmG
 9LB+YDKiWzHoaG029CmqZTXJXzK1Q6e7f0bWCzQvDafEeirq9Q23VLAXz
 Lwd7KIUeZkeA+Lu4XxQg0HE4PmKZX2G0bhsZG230QK6bYVXouorCDpYzv g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="383244749"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="383244749"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:18:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="844089014"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="844089014"
Received: from ppalanyk-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.213.148.82])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:18:32 -0700
Date: Tue, 10 Oct 2023 13:18:27 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZSUzA+3MzxrLu0YM@ashyti-mobl2.lan>
References: <20231008164824.919262-1-andi.shyti@linux.intel.com>
 <741893db-a299-c944-a8ac-e5eac3651eb3@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <741893db-a299-c944-a8ac-e5eac3651eb3@linux.intel.com>
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
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,

> > Meteor Lake has demonstrated consistent stability for some time.
> > All user-space API modifications tide to its core platform
> > functions are operational.
> > 
> > The necessary firmware components are set up and comprehensive
> > testing has been condused over a period.
> > 
> > Given the recent faborable CI results, as well, we believe it's
> > time to eliminate the 'force_probe' prerequisite and activate the
> > platform by default.
> > 
> > Signed-off-by: Aditya Chauhan <aditya.chauhan@intel.com>
> > Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> > Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> > Hello,
> > 
> > This patch eliminates the 'force probe' for the MTL platforms. Over the recent
> > weeks, MTL has demonstrated stability, consistently passing BAT tests with
> > success rates ranging from 98% to 100%.
> > 
> > There's a single issue hindering us from achieving a 100% BAT test coverage.
> > Fortunately, we've identified the issue, and the proposed solution can be found
> > here[*]. The CI results are encouraging.
> > 
> > Once all reviews are addressed, we plan to submit this series with the "Fixes:"
> > tag.
> > 
> > Thank you and best regards,
> > Andi and Radhakrishna
> > 
> > [*] https://patchwork.freedesktop.org/series/124744/
> 
> Have there been any more recent developments, given
> https://patchwork.freedesktop.org/series/124866/, or proposal is still to
> remove force probe?

I think that patch is functional to the force_probe removal
because it would have been the fix we needed in order to have a
full 100% green CI results.

But unfortunately, the patch doesn't fix it. I think the GuC TLB
invalidation is still the best fix.

Andi
