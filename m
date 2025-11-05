Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E46BAC35A91
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 13:32:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5524810E710;
	Wed,  5 Nov 2025 12:32:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y7KUpjNF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E67EC10E70F;
 Wed,  5 Nov 2025 12:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762345940; x=1793881940;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YDZ2H7qrsJDfcJlRBXxB6sKRS3twcvmYQzbPHEhyZWw=;
 b=Y7KUpjNFk4D7/KlEPhPTn+XBYh99Xso8b8pC/E+rdFkWHD1fdZnqN+rm
 d1uEVx/rmSvuGihH3wrKrw3eyzxADdfjBRMOKa7Pm9QTSmcftrIHb9Bzj
 zanj6xvIQiUY1DchcJj1+xQxIcV4kx7EAzF/XGdClid1MQO8VSliCYQLc
 vNnUAR8QhxsNADGCbdWW2kPydiOevZ+/xyojbObfFcPS5BRi0sZd8qoEP
 YHsj0gvO4LfsSPfWauhTfRKH8hFH8nUoGLeb9vgkbhq0i/1xDiXOGyMlE
 ggjWY/VN5MHc+LmNDz77GiRxEJ5MqpFjx9W9Mn7nv7oCQ88d5GxjKqBZr w==;
X-CSE-ConnectionGUID: CXtJ9VM7S1GG399rmRbVOw==
X-CSE-MsgGUID: yQKrhYO5SImcwqxK/KfTaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="68295783"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="68295783"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 04:32:18 -0800
X-CSE-ConnectionGUID: O78aaIV3Sgm7TzC5s1ORsA==
X-CSE-MsgGUID: 5S4CnhipQOmk00DU+n1oew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="187893951"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.2])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 04:32:16 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, Nitin Gote <nitin.r.gote@intel.com>
Subject: Re: [PATCH i-g-t] tests/dmabuf: Avoid soft lockups on slow platforms
Date: Wed, 05 Nov 2025 13:32:14 +0100
Message-ID: <3346009.AJdgDx1Vlc@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <bh23vofy57htxzf7oyn2wd7a6x7cjdl3qx3paqd2elq3dvzskg@bhb7jrtd5esy>
References: <20251104112116.432508-2-janusz.krzysztofik@linux.intel.com>
 <5124974.0VBMTVartN@jkrzyszt-mobl2.ger.corp.intel.com>
 <bh23vofy57htxzf7oyn2wd7a6x7cjdl3qx3paqd2elq3dvzskg@bhb7jrtd5esy>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

Thanks for your R-b.

On Wednesday, 5 November 2025 12:56:40 CET Krzysztof Karas wrote:
> Hi Janusz,
> 
> [...]
> 
> > > > +	cpuinfo = fopen("/proc/cpuinfo", "r");
> > > > +	if (igt_debug_on(!cpuinfo))
> > > > +		return UINT_MAX;
> > > Could this result in running the test on a slower machine
> > > unintentionally? fopen() could fail, the bogomips() would return
> > > a large value and wrapper function would behave as if the test
> > > is running on a faster platform.
> > 
> > Yes, if opening /proc/cpuinfo fails then my approach could result in running 
> > the test on a machine that occurs too slow.  If that happens then an abort 
> > caused by soft lockup will be reported again, but this time with the fopen() 
> > failure also pointed out among debug messages.  But why could that failing 
> > fopen() happen in practice?
> >
> Yeah, you are right, we do not expect this to fail.
> 
> > One possible case is an environment with no /proc/cpuinfo (non-Linux, e.g., 
> > FreeBSD).
> We do not run the same code on non-Linux OSes, do we?

We don't, but others may want to do, and we are prepared for that to some 
extent, see e.g. lib/igt_os.c.

Thanks,
Janusz

...


