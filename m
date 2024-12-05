Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9999E5675
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 14:20:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8530310EE76;
	Thu,  5 Dec 2024 13:20:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aTwUUutV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38FC610EE67
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2024 13:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733404812; x=1764940812;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=tnBS5NT+SKvXIiq3cGOyeZmNTOEdINY608SSx0VlKXk=;
 b=aTwUUutVBCSHKedGD5FHwY6ODuweI1IQ9y5xzumBwNvjVhgvrCgKTTbM
 iQHwYhBagMgu3rProoBi36OePPPRciEbmDm/n+lkVzHekRHV3jte4GevR
 WmrEId6/n617c6DbtrOSkwN6cBd/mqhX6QAtVFEM42Az1pduCq23FRjOs
 9EmfQxHAu7Ob28de1FvPfDtE415ZchjqdHNQlXeev6HYa3wtB54E9d/7d
 sKf/iB9RxyLobTrv05CUlQnTl32Lsi2FryYDAHWsu2iU+qTWAq4Z5/+U+
 eG3GRMXbGA0EehMcvHBL8UBnFlKzDBriwvJHdmPUgDFAI/HUQpdibnEfy A==;
X-CSE-ConnectionGUID: oOUIgiIgSPaSYkgBtG42cA==
X-CSE-MsgGUID: h5uISnhDR6Srun9iX7ZGNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="37650403"
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="37650403"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 05:20:10 -0800
X-CSE-ConnectionGUID: zKLxyhTUSzy68BM6f5N54A==
X-CSE-MsgGUID: rarSNVidSgWXDLB4dvOHXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="98539247"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.41])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 05:20:09 -0800
Date: Thu, 5 Dec 2024 14:20:05 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Raag Jadav <raag.jadav@intel.com>
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com
Subject: Re: [PATCH v1] drm/i915/selftest: Log throttle reasons on failure
Message-ID: <Z1Gohb83SdpCEU3K@ashyti-mobl2.lan>
References: <20241205081413.1529252-1-raag.jadav@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205081413.1529252-1-raag.jadav@intel.com>
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

Hi Raag,

On Thu, Dec 05, 2024 at 01:44:13PM +0530, Raag Jadav wrote:
> Log throttle reasons on selftest failure which will be useful for
> debugging.
> 
> Signed-off-by: Raag Jadav <raag.jadav@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
