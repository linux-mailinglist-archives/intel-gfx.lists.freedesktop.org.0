Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BEE6EE603
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 18:46:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0DF810E661;
	Tue, 25 Apr 2023 16:46:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 532E010E661
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 16:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682441206; x=1713977206;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ZQDBBH7xTYkMcOWz9e7/7ZSq7o8Ftefo2lJuSddUlUE=;
 b=ggUZqVNy5OAKfv4jv6Aelhs0dnViHL23IRImZTUBmzR38BfgBh41DlrP
 mByuNmb+9QFjfgIKAdjlYIT/b1dxaid6a/FotVyyckfw20ynKL3rDpmKN
 nr4wMdxzx0lC3qDFsyREEg5iS2/Jsn1qk3hErKniDqgOOGVCUUkaurx/N
 CUUvB1mTDNko23SBnp2ggKjwUg3k8efu95PvJhYKeAwmF3o6zM/0usa7Y
 HpfbtM80M5xasWBiHty2uU4KCrF9lNtSS20EWfE81NQLciOM2NxWJ2XNm
 WXeolSN0QNUYBA8Owu1cqvPMuQyVHvuypj2PTh2/lVXoOw1xO3FCdCdqu w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="345583747"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="345583747"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 09:46:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="817760349"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="817760349"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.59.107])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 09:46:44 -0700
Date: Tue, 25 Apr 2023 18:46:41 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <ZEgD8faKJlw4SZst@ashyti-mobl2.lan>
References: <20230424133607.3736825-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230424133607.3736825-1-tejas.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftest: Record GT error for gt
 failure
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

Hi Tejas,

On Mon, Apr 24, 2023 at 07:06:07PM +0530, Tejas Upadhyay wrote:
> igt_live_test has pr_err dumped in case of some
> GT failures. It will be more informative regarding
> GT if we use gt_err instead.
> 
> Cc: Andi Shyti <andi.shyti@intel.com>
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

pushed to drm-intel-gt-next.

Thanks,
Andi
