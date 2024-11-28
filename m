Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F349DB6F7
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 12:56:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14DFC10E459;
	Thu, 28 Nov 2024 11:56:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eCk8U/NS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51E0B10E43F;
 Thu, 28 Nov 2024 11:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732794981; x=1764330981;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=wZU7DpRxFC+b1GJzI1hAuW5HL/pu9478QmFvGQnU/ik=;
 b=eCk8U/NSHbPY84bODJM+PZA4btDr2iAlBIUGQUgHVZhDowVSh5JHh4MR
 ZZNoUTM3SVLtEmUksmCGFR4VNBK2nAolT2OUe0vc64zchOdh74rk0zASI
 0D5uXEM61Zmrvpl3Bm4uhQr+BF0bZq4eI2qfH3GGOA6pnGI1ajChoz9bb
 NBG9rkpAKhYCEdgZgbuKnkQzeSqqboMc4v17qdE668DWTx/QM7nHtXfz3
 neG3y4ak4BfI4HUM9dp54dlCkHCzVdafxdy/mqNYNCIT5Ug7E6B/xZKQL
 hKEzBGP2eUNh0IMsUA+tLoitmF2rMg3r3oQ4qixJdhKIpc+wu10o5s+Bz w==;
X-CSE-ConnectionGUID: t6xSruKXT4mHrba0uJekAQ==
X-CSE-MsgGUID: uVaTOtxCQ3WSU1I7cm8CiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="44083475"
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="44083475"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 03:56:21 -0800
X-CSE-ConnectionGUID: JByK6V41QRODsQwIodrT+g==
X-CSE-MsgGUID: qYRe1v2tRPCGmoYcNqmiag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="97179461"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.166])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 03:56:18 -0800
Date: Thu, 28 Nov 2024 12:56:14 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH i-g-t v2 1/2] tests/gem_mmap_offset: Split 'clear' subtest
Message-ID: <Z0haXroYzpITlSzE@ashyti-mobl2.lan>
References: <20241128111822.836089-4-janusz.krzysztofik@linux.intel.com>
 <20241128111822.836089-5-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241128111822.836089-5-janusz.krzysztofik@linux.intel.com>
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

On Thu, Nov 28, 2024 at 12:16:35PM +0100, Janusz Krzysztofik wrote:
> Commit e25913a1a79d ("i915/gem_mmap_offset: Ignore ENOSPC error for making
> residency execbuf") not only resolved the issue of unnecessary failures on
> ENOSPC errors, but also introduced an alternative method of clearing
> memory of an object, with random selection of one of those methods on each
> iteration.  The new method expects the memory to be cleared in pagefault
> handler path.  Since those two methods may give different results, mixing
> them in one exercise may make the picture unclear, especially if something
> goes wrong.
> 
> Add a new subtest that exercises the pagefault method exclusively.
> 
> Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11738
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
