Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF47C7FF350
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Nov 2023 16:18:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C43E10E106;
	Thu, 30 Nov 2023 15:18:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3BDE10E377
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Nov 2023 15:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701357526; x=1732893526;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=sRQoruEt7NpqmUJJiBvYyRJ1e3QZt/A/czGi1MWI3L4=;
 b=h5MKrMWwWL6Lc1DiAWC38Muo76E0dmBdIz/fG/tADQ+WNjqPXlTGJGIv
 nPzgUptVDRhSTFj+F/3GfFAgHNzYK7AtQnxvJYbpJ3mB3MnztgjZ6xYvp
 C1q4iHBAd6c8Ze9lCrBb0KtpgoWdY0IsI2//i0Uzk8XFnUui82rtZ1sYR
 vmILlgipm20XiIQ9dNXGBhMLzz0T5FpI6ygoQaqYC0P/d2zVEQzNp2vmG
 ooKGKGz1QviaYjBw3uiH03Hmx8s3OOmxUE487JDW9hOGoCZ3O7+kBCp2A
 Iu0Pz4NQwXJ/ap4/ksZH2vmpibksnhWOjl3naj53BQPsUnPc2E8bmQ1Nr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="393080230"
X-IronPort-AV: E=Sophos;i="6.04,239,1695711600"; d="scan'208";a="393080230"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 07:18:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="913231447"
X-IronPort-AV: E=Sophos;i="6.04,239,1695711600"; d="scan'208";a="913231447"
Received: from jwozniak-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.45.65])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 07:18:42 -0800
Date: Thu, 30 Nov 2023 16:18:39 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZWinz-4V5cOzY00J@ashyti-mobl2.lan>
References: <20231124-cur_size_reduction-v1-1-30495dba475f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231124-cur_size_reduction-v1-1-30495dba475f@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: do not use cursor size
 reduction on MTL
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Fri, Nov 24, 2023 at 08:53:04AM +0100, Andrzej Hajda wrote:
> Cursor size reduction is not supported since MTL.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
