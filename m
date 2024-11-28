Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B809DB6FE
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 12:56:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D572E10E45F;
	Thu, 28 Nov 2024 11:56:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g4G9WEEh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA91E10E43F;
 Thu, 28 Nov 2024 11:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732795011; x=1764331011;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=tHjUAo5EAUUS2JFeU5vfDNraD6f9KcCIi26PXmN34SI=;
 b=g4G9WEEhFiDX0ti4oB+5NYtnQzAeCs94NAP0hEpl4jPL2HC2gWBekFry
 1SmH/RcjzLpvYlCrQ7+xiOo3OJg9SaDpbwqpW53c4ArN8ldk6gW/uHvNR
 e8rrgT7ceMkX88FXYCpDpiTwlGF4f7fnrtV8fhX1LxLRfb7oRXq3+WMMC
 iP1W9H71LHb4Deo56g5N6PwfGHdRFdu7XHUeAZPfg1Td0+2bmb2atbbc2
 WxIZgsYG/RfU49K6sjQfvsz+RPBfohfs148V1XmG0SNtlhwa70Jf/Bt13
 mq7T+HTPDeMD5kxLfhrNkZG2v/Ax2m+1bP1diZOOBcwwNjhPeSQujoL5Q w==;
X-CSE-ConnectionGUID: 6ZTxBsW6T52dkiOjmTUkeA==
X-CSE-MsgGUID: +m17gjpVS9ayLRn1TtSIuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="44411152"
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="44411152"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 03:56:51 -0800
X-CSE-ConnectionGUID: hjJi5raASBau4oScaR68Jg==
X-CSE-MsgGUID: E8YZ7gm0Q9+wJ70QRHJ+PQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="123188322"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.166])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 03:56:47 -0800
Date: Thu, 28 Nov 2024 12:56:44 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH i-g-t v2 2/2] tests/gem_mmap_offset: Fix OOM hits
Message-ID: <Z0hafNmyR5lF5Bfw@ashyti-mobl2.lan>
References: <20241128111822.836089-4-janusz.krzysztofik@linux.intel.com>
 <20241128111822.836089-6-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241128111822.836089-6-janusz.krzysztofik@linux.intel.com>
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

Hi Janusz,

On Thu, Nov 28, 2024 at 12:16:36PM +0100, Janusz Krzysztofik wrote:
> The 'clear' subtest exercises correctness of object memory clearing on
> passing a batch with the object to GPU for processing.  The exercise is
> executed in several parallel threads, one per CPU.  Each thread repeats
> the exercise in a time only limited loop, with no delay between
> consecutive iterations.  In case of system memory objects, that happens
> to exhaust all available physical memory, which is neither the goal nor
> requirement of the exercise.
> 
> Make sure sufficient amount of physical memory is available before calling
> another execbuf.
> 
> v2: Limit the scope of the fix to SMEM exercise.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11738
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
