Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 422A5682EF6
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 15:14:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE03E10E351;
	Tue, 31 Jan 2023 14:14:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85C3A10E34E;
 Tue, 31 Jan 2023 14:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675174483; x=1706710483;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NtgjIei0T2+sg8NnnyIjLdsLcLTSY+IjI/+qYLavrlo=;
 b=Q1c6Y5qe/gly4fLV4dz5vbS4R+zI7DUHHytL1cEN+MhDgaAC87yF6c76
 baQq8jcMIUPrEh+CgukdlAF/FN0xIF5XKFUz/lXvCTUkIIW72vygFAujf
 lLFFAVA++Z29Fxuyb4IfI3jec71qBkx58sM/CuHn0zFHEBvI+Mn2j/bUv
 PulHprlqrUNQUX8BEAjEs/IkHF6rsHUW0xUK2S1JefWvvGzHeV84KRB4I
 9pQdgjP+EerwJBoY+vtm7l40FCGdp1c/VwKvbPBAp3s6n3AyS+IW2vHo6
 Ua39ftPfPW2UCxJ/dDnUVyRUTF2X42E45YEONJLHi50a9BOrPAdRv5oKa A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="390211820"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="390211820"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 06:14:43 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="614470300"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="614470300"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.18.238])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 06:14:40 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Date: Tue, 31 Jan 2023 15:14:38 +0100
Message-ID: <2675650.mvXUDI8C0e@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230131115910.rk4yyli7i7rbvqee@kamilkon-desk1>
References: <20230131091731.5892-1-janusz.krzysztofik@linux.intel.com>
 <20230131091731.5892-2-janusz.krzysztofik@linux.intel.com>
 <20230131115910.rk4yyli7i7rbvqee@kamilkon-desk1>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/2] i915/perf: Stress opening of new
 perf streams against existing contexts
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
Cc: Arkadiusz Hiler <arek@hiler.eu>, intel-gfx@lists.freedesktop.org,
 igt-dev@lists.freedesktop.org, Petri Latvala <adrinael@adrinael.net>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Kamil,

Thanks for review.

On Tuesday, 31 January 2023 12:59:10 CET Kamil Konieczny wrote:
...
> > @@ -5259,6 +5324,15 @@ igt_main
> >  	igt_subtest("whitelisted-registers-userspace-config")
> >  		test_whitelisted_registers_userspace_config();
> >  
> 
> Please add description to new test.

Sure, please expect v2 with this fixed.

Thanks,
Janusz


