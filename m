Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51178B1B2B7
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 13:47:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBEA010E655;
	Tue,  5 Aug 2025 11:46:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U75PXpsN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42C1D10E655
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Aug 2025 11:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754394419; x=1785930419;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=sY+NRIsm2pRsANCD6BNLjM/ufYciXFZzrxai0iCyMUs=;
 b=U75PXpsNPqhzdk8bEbYPnTSZx9UwRvQSKYyFVSaL0HO6RLuw6qfySLXe
 IEd4iD2AQdeh38kh5sPsRtHoizlhMOQ4MP05cDIY47S/P5kM15JvD3nu0
 y3Kk9jAGQ6GxPBheVrgLDhjto31/x6PwhF+nJKXMqYV9jrMtVPEwgAnWh
 sUtw942laSt/1sjEo4Lv/BANFdzqDLk2X4LQ8qusuukYMeM6Ls6h8L+Bo
 EirYuJp4VH2YMzEh5Gfb+qtVAOPrVK9VoqhLH2rBHzNiR94dfzXVqDsRN
 EsYRciZWPqL2OvwA5GXQ+0y4701p6D2V4Cylt2u6pht0sesEfFYJYMDyT Q==;
X-CSE-ConnectionGUID: MkZctw75Q4qZzcVZCAND6w==
X-CSE-MsgGUID: Es2XYCs3S3KaMfDazIPIRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56552890"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="56552890"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 04:46:52 -0700
X-CSE-ConnectionGUID: 8x1TwOzXS4O7A1ZrYbCY7A==
X-CSE-MsgGUID: 0qB6Xk/6Sg6Qh2hkN+UuUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="188144765"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.244.21])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 04:46:46 -0700
Date: Tue, 5 Aug 2025 10:46:39 -0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH v3] drm/i915/gt: Protect against overflow in
 active_engine()
Message-ID: <aJHvH1a5iaFkOI-k@ashyti-mobl2.lan>
References: <pogr74jktdqehrfap4tjky23ees4x7erh5dwgg5jb2n522cfkw@kpnxe4qzx4pj>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <pogr74jktdqehrfap4tjky23ees4x7erh5dwgg5jb2n522cfkw@kpnxe4qzx4pj>
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

Hi Krzysztof,

On Tue, Aug 05, 2025 at 11:41:42AM +0000, Krzysztof Karas wrote:
> It is unlikely, but possible for the first call to
> intel_context_create() to fail with -ENOMEM, which would result
> in entering the following code block and decrementing "count",
> when it is set to 0 (initial condition in the for loop).
> 
> Protect from overflowing the variable by checking for 0 value
> of "count" before entering the loop.
> 
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
