Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 092D09FBCE7
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2024 12:19:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A195110E447;
	Tue, 24 Dec 2024 11:19:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nh3xaNG6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB68A10E447
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2024 11:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735039143; x=1766575143;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2rhVynXI4znjG4hXdcpNKK45Mhq8rtjDRs8Ez7UYcEA=;
 b=Nh3xaNG6qsHTCtmLhszsVSpqUYznlBy5dRzHWJuhbAEBUxAqIESriKTu
 YuthfpRNZBtL8lvKKtxOnMSPlKOjc+6y2ifyXlZPkzbHxlU5pI3pCONSE
 q3mQF+G1wAtPrHDXR/ol4gckdK2lgO9qF+9TwEbhZhkKBdHxRvbQGjdB3
 FbiXvFMgd4hONqnIbCbI1h5blrZHi7rCwUu+N3MX5XKD6masNvzvH0C+h
 wnWYaKTFdxPd0Nl3lPLNyJcXV1HY0oqPphAa9VH4Ug1nD6D57mFLOMspu
 /5geAOkyyhC6yaUBLmM3oRD/GKlCsgHAxy5BluEo8njCYAm3Pa8Hp6V2B Q==;
X-CSE-ConnectionGUID: bZmVYgiURpGxuGMiJD9GbA==
X-CSE-MsgGUID: xe21A0zCTFW02R4g5E7nPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11296"; a="34782669"
X-IronPort-AV: E=Sophos;i="6.12,260,1728975600"; d="scan'208";a="34782669"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2024 03:19:02 -0800
X-CSE-ConnectionGUID: nDgM3obwQji7+vBEkjkm8Q==
X-CSE-MsgGUID: 7pUx3e6oT5ao1B4f2gRn3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="104464186"
Received: from black.fi.intel.com ([10.237.72.28])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2024 03:19:01 -0800
Date: Tue, 24 Dec 2024 13:18:58 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH RESEND v2] drm/i915/gt: Log reason for setting TAINT_WARN
 at reset
Message-ID: <Z2qYoi5xXlEJKycm@black.fi.intel.com>
References: <20241220131714.1309483-1-andi.shyti@linux.intel.com>
 <c66ibuhmcte6fu5vkdrl73icqts4yzlwlui4qolrlw5yaxxu6q@vqhtozsh5d46>
 <Z2qVQSiZ7ZmMS5kp@black.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z2qVQSiZ7ZmMS5kp@black.fi.intel.com>
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

On Tue, Dec 24, 2024 at 01:04:37PM +0200, Raag Jadav wrote:
> On Mon, Dec 23, 2024 at 08:18:46PM +0100, Andi Shyti wrote:
> > Hi Sebastian,
> > 
> > On Fri, Dec 20, 2024 at 02:17:14PM +0100, Andi Shyti wrote:
> > > From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> > > 
> > > TAINT_WARN is used to notify CI about non-recoverable failures, which
> > > require device to be restarted. In some cases, there is no sufficient
> > > information about the reason for the restart. The test runner is just
> > > killed, and DUT is rebooted, logging only 'probe with driver i915 failed
> > > with error -4' to dmesg.
> > > 
> > > Printing error to dmesg before TAINT_WARN, would explain why the device
> > > has been restarted, and what caused the malfunction in the first place.
> > > 
> > > Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> > > Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> > > Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> > 
> > it's hard to receive green lights from CI. Anyway, I merged it to
> > drm-intel-gt-next since all the failures look completely
> > unrelated.
> 
> Side note: You can trigger a re-run from patchwork without resend.

Which seems already done here, my bad.

Raag
