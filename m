Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 190A99F845E
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 20:33:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A333510E1B2;
	Thu, 19 Dec 2024 19:33:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UZMcimq1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0EF010E1B2
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 19:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734636815; x=1766172815;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qgLCB937H1AUkddjOMV7VBVG8Uqnq/G0C5NLD4GKjkE=;
 b=UZMcimq1S78V2oovB4emrLxjBMZXwvMHR9kj3Y3wAYJyJRyGBXHJPk5l
 ed/6bOK1BeaOP9k3VRqgg/Mz/FzSHGetk7HVSxZSl+axwhFdNGTIOyKog
 55qqfUyOOiRG3FJ/VAUGFFxbkpyfu3wnTh8HH77QjA8Qi3cl2iAfX6YPW
 w1KfFEFgYWFYFIsQfhceLE0xPdmNvQ5IHEw7vcMCCSs+jys7YIr2Jgrum
 XQDsNk19kHN3QBxgV0zF+Ta+QqLQFifEcGTzXvLDBtTdeIFeRmBo3Xtgd
 89MjxlcKc7EzrsZp0+B6QN+d72YjSt/Lo5NjQu23McJhYKldLrbWJzapP A==;
X-CSE-ConnectionGUID: dm9DSdnXTImecJkJBmz12w==
X-CSE-MsgGUID: B3AbgxIPSE6dzEUYlAElZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="46551411"
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="46551411"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 11:33:35 -0800
X-CSE-ConnectionGUID: DhCMA3H3QqqEtPxqqyMPAA==
X-CSE-MsgGUID: aGKReCv9SXSNlPktWdQHOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102414645"
Received: from carterle-desk.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.178])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 11:33:32 -0800
Date: Thu, 19 Dec 2024 20:33:28 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, andi.shyti@linux.intel.com
Subject: Re: [PATCH] drm/i915/gt: Log reason for setting TAINT_WARN at reset
Message-ID: <Z2R1CP1ce5U-JGBC@ashyti-mobl2.lan>
References: <20241219153152.2912955-1-sebastian.brzezinka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241219153152.2912955-1-sebastian.brzezinka@intel.com>
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

On Thu, Dec 19, 2024 at 03:31:52PM +0000, Sebastian Brzezinka wrote:
> TAINT_WARN is used to notify CI about non-recoverable failures, which
> require device to be restarted. In some cases, there is no sufficient
> information about the reason for the restart. The test runner is just
> killed, and DUT is rebooted, logging only 'probe with driver i915 failed
> with error -4' to dmesg.
> 
> Printing error to dmesg before TAINT_WARN, would explain why the device
> has been restarted, and what caused the malfunction in the first place.
> 
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

thanks for fixing the commit log, but please, remember to add the
versioning and (git format-patch -v 2 ...) and the changelog.

For this time I will take it as it is, but next time, please keep
it in mind.

Thanks,
Andi
