Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4AA7A9488
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 15:10:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2B1910E057;
	Thu, 21 Sep 2023 13:10:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F6BB10E00D
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 13:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695301848; x=1726837848;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=lemoJXunz/lAU9F5hCVZkXHjC6MPa8xWW3bKDGUqDhs=;
 b=i9YpTD6lFYpezlgLceBqABZMSK0t9Vq6NQj6X0Szr+t0jAcwKNd0ZbJ3
 gI21ik+nZEu6iVxQ6s19uii/VOOzI3pCCGcJO4yecQ+qAbUXQBidkSTBs
 U6zPIkAxG/bDwa+AfSABW99eHrl21Z/4QEXNEVkUJht5Bn4zJ2IDUKSxQ
 CiQWTBKEXdyE6jkEz2g2+t219zfq291EzW/LWaGxQcuF+jryoPKsSX8gU
 9qzFrkxUNj9xF4RdmxdFU6h20mMlfUc4b0aYo0bX59VKi7nPtA+x5BQV3
 AzZ0uFdCxzuduTSYEcUp3ulX8Z4T1AYR8BHiloQZvhlqvEtbSgNlSu5Wr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="444620748"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="444620748"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 06:08:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="862457470"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="862457470"
Received: from skalitha-mobl2.gar.corp.intel.com (HELO intel.com)
 ([10.215.150.18])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 06:08:44 -0700
Date: Thu, 21 Sep 2023 15:08:36 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <ZQxAVL+x2+Ji7Dpc@ashyti-mobl2.lan>
References: <20230918170257.8586-1-nirmoy.das@intel.com>
 <20230918170257.8586-5-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230918170257.8586-5-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915: Parameterize binder context
 creation
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
Cc: chris.p.wilson@linux.intel.com, intel-gfx@lists.freedesktop.org,
 matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

On Mon, Sep 18, 2023 at 07:02:54PM +0200, Nirmoy Das wrote:
> Add i915_ggtt_require_binder() to indicate that i915
> needs to create binder context which will be used
> by subsequent patch to enable i915_address_space vfuncs
> that will use GPU commands to update GGTT.
> 
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Reviewed-by: Oak Zeng <oak.zeng@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Thanks,
Andi
