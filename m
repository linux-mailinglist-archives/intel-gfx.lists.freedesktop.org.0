Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1976B9958
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 16:33:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4580C10E83A;
	Tue, 14 Mar 2023 15:33:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C2CF10E83A
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 15:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678808034; x=1710344034;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=rjmkuXD8NlFaaqqrZJTxz1BAUkn6HEp56VpQg+RkOk8=;
 b=OO3m9oUzpHK8md/IVRQa90APEnJaBEh8Xk1/QcANm+SC4cOB6+WVWXDb
 7vL8cEnMRCVjMg07eFprT17tNynIPgDysPTA1tNb8CwXstf+Q4fZkEN7p
 Ubuplf+m+yK5l6BAd2SxTs01NqV6heZZBXOzb18+2xHDPe7hd3ezyS7Vn
 pDvrfEnSRhELzm8M8BgbOMpTOzY4AQmytvuelO1GWydq8VOngkW9Dtu3y
 KGF/pfSMlBKcB/TWIUcH6ijeoNHRBl9a2CD2Z2qNGmSDVIs8pGUX6i6aM
 g3N04zveH7DuHQrXkP4ijKL8sv3LRwOkvIkQZksbH5SoJeH39BFYie+UD Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="334943550"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400"; d="scan'208";a="334943550"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 08:33:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="711562404"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400"; d="scan'208";a="711562404"
Received: from novermar-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.219.242])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 08:33:50 -0700
Date: Tue, 14 Mar 2023 16:33:47 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZBCT22o93uCioxQD@ashyti-mobl2.lan>
References: <20230314151920.1065847-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230314151920.1065847-1-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: perform uc late init after
 probe error injection
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, chris.p.wilson@linux.intel.com,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 14, 2023 at 04:19:20PM +0100, Andrzej Hajda wrote:
> Probe pseudo errors should be injected only in places where real errors
> can be encountered, otherwise unwinding code can be broken.
> Placing intel_uc_init_late before i915_inject_probe_error violated
> this rule, resulting in following bug:
> __intel_gt_disable:655 GEM_BUG_ON(intel_gt_pm_is_awake(gt))
> 
> Fixes: 481d458caede ("drm/i915/guc: Add golden context to GuC ADS")
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
