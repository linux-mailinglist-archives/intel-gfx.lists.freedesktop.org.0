Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 364316C3808
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 18:17:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3A9410E21E;
	Tue, 21 Mar 2023 17:17:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C562810E0C5;
 Tue, 21 Mar 2023 17:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679419051; x=1710955051;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=adu02rd1O2rrIPCWHqGjb49w9Ue4sFGEsELxicEqcV0=;
 b=MrM25gOHRxCN+nUWynoCy7wsy52Dr61tnlA1MJ0iFd9flx7AMtbxEJRR
 nZ3hQyHkhkRfoByAF1tQTKu2t4Tlov3cp7KhrGFmqauw9ZG18wq+TIZtW
 FFrffYH5O1r7wi7aYfHKCNQhdMnI2lFq9+X1HIU6yzfbH+xSrfwsz5+2i
 PcWmIScksJAE/9aBqFUrJDXpz04jiUQDzyWIy2yZqcvBBSOvGJgr6fPMn
 6xQpjNYys0Y7W74I4uAL/4HjFx9o1EYTINvvSfyuqXWdGhP0W+nL5QS56
 hYc8KFpMALFg+nGwgCQqKS9ksHSiqgTDqmxfAjiDzBF4VTvWPiF/7vvrk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="425292839"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="425292839"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 10:16:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="714077992"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="714077992"
Received: from rbirkl-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.222.70])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 10:16:39 -0700
Date: Tue, 21 Mar 2023 18:16:16 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <ZBnmYLHQNQIO1Z+v@ashyti-mobl2.lan>
References: <20230321170936.478631-1-andi.shyti@linux.intel.com>
 <20230321170936.478631-3-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230321170936.478631-3-andi.shyti@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915: Check for unreliable MMIO
 during forcewake
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
Cc: Andi Shyti <andi.shyti@kernel.org>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> Although we now sanitycheck MMIO access during driver load to make sure
> the MMIO BAR isn't returning all 0xFFFFFFFF, there have been a few cases
> where (temporarily?) unreliable MMIO access has happened after GPU
> resets or power events.  We'll often notice this on our next GT register
> access since forcewake handling will fail; let's change our handling
> slightly so that when this happens we print a more meaningful message
> clarifying that the problem is the MMIO access, not forcewake
> specifically.
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
