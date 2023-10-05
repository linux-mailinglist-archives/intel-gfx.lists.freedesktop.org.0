Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7E77B9DF1
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 15:58:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4979E10E16F;
	Thu,  5 Oct 2023 13:58:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E517710E16F
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 13:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696514326; x=1728050326;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2hDf50xJs2+MP7J+2qIdkE5iCAILYXb1NOkKLfTUT04=;
 b=Na8DauUV5eNDq+9cG4alreTB8Y/6UBJJ569eqEpcV6kk2GMrKeDEtK6o
 X1V1+uSfTZf7LhIp1d8TXoVoCW9W3zYWvg6BDux5IQ7rMSIFrkwH8KCet
 SKOD7cSYGFcy1ghXsESi30nvwNCHNlmLcpQRvJ4s40ZZCEIi85kvmCqs4
 6LGQDGtgfN2fBmtbjgNNp14Py2KuJMAeY1910ZAj9++yQVDVzLfkVl1q4
 X/6nXIUpdGTfWUvj1LlaazUjrXbXEmLLLIWRE/I+0TFackKHr2EJ/FAts
 NEOCTrmPwXSwCK3IgiXCG+h2gtRUGjGfb3a91gzXi7Jw4mKjlGRrr//8m Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="2110327"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; 
   d="scan'208";a="2110327"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 06:58:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="781260562"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="781260562"
Received: from yklum-mobl.gar.corp.intel.com (HELO intel.com) ([10.215.244.7])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Oct 2023 06:58:40 -0700
Date: Thu, 5 Oct 2023 15:58:34 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <ZR7BCq2HrKmE05Jf@ashyti-mobl2.lan>
References: <20231004220739.1313307-1-jonathan.cavitt@intel.com>
 <20231004220739.1313307-4-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231004220739.1313307-4-jonathan.cavitt@intel.com>
Subject: Re: [Intel-gfx] [PATCH dii-client v6 2/5] drm/i915: Define and use
 GuC and CTB TLB invalidation routines
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
Cc: chris.p.wilson@linux.intel.com, intel-gfx@lists.freedesktop.org,
 matthew.d.roper@intel.com, janusz.krzysztofik@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

> -	if (intel_uc_wants_guc(&ggtt->vm.gt->uc))
> +	if (intel_uc_wants_guc_submission(&ggtt->vm.gt->uc))

I think the failures we see in CI come from here. I think you had
it right the first time, this should have both the checks:

	if (intel_uc_wants_guc(&ggtt->vm.gt->uc) &&
	    intel_uc_wants_guc_submission(&ggtt->vm.gt->uc))

The first is checking whether GuC is enabled, the second is
checking if the submission is enabled.

AFAU, running through the net of
is_supported/wanted/enabled/disabled/gone/awol/onholiday/chillingout/.../
there is a distinction between supported and enabled. The
condition for GuC submission to be enabled is to have GuC
supported, but not necessarily enabled.

So answering Tvrtko's question: No,
intel_uc_wants_guc_submission() does not imply
intel_uc_wants_guc().

Question to GuC experts... should it be?

Andi
