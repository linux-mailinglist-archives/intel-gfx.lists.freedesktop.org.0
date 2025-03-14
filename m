Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C57A612E7
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 14:41:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB30310E256;
	Fri, 14 Mar 2025 13:41:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VRZsnypG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2103010E256
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Mar 2025 13:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741959665; x=1773495665;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=MTGFaEPGnBOQz5VCLpAsieqDJ4gQ3sTdfiIv4kmgRNQ=;
 b=VRZsnypGvLa/OdNrOt8LtJWPW2u+Wi88rCm8UAnvF3kzXZ3U1s0jP3A1
 CASbTHJD3rRbOO/PKgIjbSJ5qJkhS6V7JLzIIK9+CY9tcmTQx+iIl9aQf
 7OUCxWKqp3uVeTeWrFOtAorZGcACQPMgMb3gVa+BgoDiGNUYjxVEWeUv+
 zsLIe8R1sdJ9pd7VV+F9MdIdV5qMkMFQYj2pjGBgwyl0O4+7IFy/1FfXE
 E6SFR5D3iJaF132PQIe+8itBIIVDbmdSdrVNs1aLGeyJ2YyIPPdhZ7mKd
 KltcscZPK575Qe3Ky64r33tXYt6asybyhlta5lmftPsPVCHty2r9EjmYb A==;
X-CSE-ConnectionGUID: X5T1BM1kTJag7qxbXcPo2Q==
X-CSE-MsgGUID: CGFczP9cSPSMTTh6g8UOiw==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="42279264"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="42279264"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 06:41:05 -0700
X-CSE-ConnectionGUID: wy1So72HTMaSlGEsVEfOCQ==
X-CSE-MsgGUID: ZbIDxudZSlSrZ3xEPK+IWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="121479586"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 06:41:02 -0700
Date: Fri, 14 Mar 2025 14:41:00 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Andi Shyti <andi.shyti@kernel.org>
Subject: Re: [PATCH 1/4] drm/i915/gt: Fix typos in comments
Message-ID: <Z9Qx7FYJaxI6N7Vx@ashyti-mobl2.lan>
References: <20250314021225.11813-1-andi.shyti@linux.intel.com>
 <20250314021225.11813-2-andi.shyti@linux.intel.com>
 <D8G13EIBPVFY.1ELXE0E1D36EA@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <D8G13EIBPVFY.1ELXE0E1D36EA@intel.com>
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

Hi Sebastian,

On Fri, Mar 14, 2025 at 01:37:44PM +0000, Sebastian Brzezinka wrote:
> On Fri Mar 14, 2025 at 2:12 AM UTC, Andi Shyti wrote:
> > upto -> up to
> > acknowledgement -> acknowledgment
> Both spellings are correct.

thanks a lot for checking this, you are right! The former is UK
english and we don't change it. I will drop this patch as it's
not worth sending a patch for such a small change.

Thanks for looking into it and for your review.
Andi
