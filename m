Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51514B0A6A6
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 16:52:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCEE210E9D7;
	Fri, 18 Jul 2025 14:52:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D0u/x/gR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C142510E9D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jul 2025 14:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752850375; x=1784386375;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=YA1dcZu+tlR0l4I7KHTip4ILYOf43GPAMYcy8E167m8=;
 b=D0u/x/gRw0iSb+3lwCFiYcKQMP0/4mxr9Mb89jH4nDzGl8vpMFOYAagI
 1kElp5Qj4VvLbmtzBpyymfOBmGhK5TMiG+2leOL05ShG7Xl/JE4zI9cde
 GjpWnUAEX6EH1wRI0cWaRrd5SV+zUk//R2g/cFjoT779lMcltz8KtR4WO
 oLNMxj67gWfmTWKPZboPsUjwWSNVF1pJgkbC+o/IFZzLTLvU1cRrUj0uH
 vBdizjHvKvJ8eTARpHoZ7v6i+NxQ34nsJqzNbv2j34M2cfYma65UTyl5C
 Ap0JDzz+kjDHDUjDTgBtwWY9Yh84ZGiHT9pBW0D+cjrpvoZtdx5qXIa7J w==;
X-CSE-ConnectionGUID: HMEyGFdKQYKB0G2j5aoCDw==
X-CSE-MsgGUID: QefcZxbYQDudcvZ5UWSMng==
X-IronPort-AV: E=McAfee;i="6800,10657,11496"; a="80591652"
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="80591652"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 07:52:55 -0700
X-CSE-ConnectionGUID: D73WeRg9RQ6GcOkzuH2caQ==
X-CSE-MsgGUID: +8hXaie8THGa9uS0Kp3IAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="189061662"
Received: from johunt-mobl9.ger.corp.intel.com (HELO localhost)
 ([10.245.245.84])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 07:52:53 -0700
Date: Fri, 18 Jul 2025 16:52:50 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Chris Wilson <chris.p.wilson@linux.intel.com>
Cc: andi.shyti@linux.intel.com, intel-gfx@lists.freedesktop.org,
 krzysztof.karas@intel.com, sebastian.brzezinka@intel.com
Subject: Re: [PATCH v3 4/4] drm/i915: Use dedicated return variable in
 eb_relocate_vma()
Message-ID: <aHpfwsSMbBYSr4Wi@ashyti-mobl2.lan>
References: <20250718102752.684975-1-sebastian.brzezinka@intel.com>
 <20250718102752.684975-5-sebastian.brzezinka@intel.com>
 <175283771369.466219.1061047598105119253@DEV-409>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <175283771369.466219.1061047598105119253@DEV-409>
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

Hi,

On Fri, Jul 18, 2025 at 01:21:53PM +0200, Chris Wilson wrote:
> Quoting Sebastian Brzezinka (2025-07-18 12:28:26)
> > Introduce a separate `ret` variable to hold the return value in
> > `eb_relocate_vma()`, instead of overloading `remain` for both loop
> > control and error reporting.
> 
> No need.

I was about to ack this patch as I don't have anything against it
and I want to reward the effort. But, as I said, this is patch is
more on the personal taste rather tha real simplification.

Andi
