Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4082E7D4F0A
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 13:40:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE90A10E34C;
	Tue, 24 Oct 2023 11:40:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 467A010E359
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 11:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698147601; x=1729683601;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=kj5/ykbudz2LZ9IGSxL4FfliC2uW8mud1/ofMPqbH1Y=;
 b=lxvpFKOr3IH2Yg6Je0zpbcZJOpjfR6j/1YmK8Ua970W8MS47phw79Q2x
 5nxLE8kzZ/WDm7ujwtcDHk6stf7OXWgR/gJ7MLMD3jLfry3iKRn9P0/Md
 WkkRps78In97XrJ8x8rkGWC9vt5HCqc046P/FY4KnbUQSMMkfhB3J7O/6
 mooZV9Rsi/laNBFp1+ozHeGsDb3gYxB3gED4GPaopRaAAszw+K8Cqo/tp
 SvWTLP9rWeWyeav8xwkj2eNOh8XvRsVv0QFPzrU397QjelCwe7LEOgi9V
 TwKKmJBX5JzYFG7972SG4y6+RKKPkAY64f8G8p9t9Epd6dXtAKYX+0hDR g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="390912430"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="390912430"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 04:40:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="875041560"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="875041560"
Received: from yaminehx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.33.158])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 04:39:59 -0700
Date: Tue, 24 Oct 2023 13:39:56 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZTetDC3OyNLhK9KE@ashyti-mobl2.lan>
References: <20231023-wabb-v4-0-f75dec962b7d@intel.com>
 <20231023-wabb-v4-3-f75dec962b7d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231023-wabb-v4-3-f75dec962b7d@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 3/4] drm/i915/gt: add selftest to
 exercise WABB
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
Cc: intel-gfx@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Mon, Oct 23, 2023 at 10:21:47PM +0200, Andrzej Hajda wrote:
> Test re-uses logic form indirect ctx BB selftest.
> 
> Co-developed-by: Nirmoy Das <nirmoy.das@intel.com>
> Co-developed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
