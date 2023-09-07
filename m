Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B3A7972FA
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 16:14:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1C6C10E7DE;
	Thu,  7 Sep 2023 14:14:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE02510E7DE
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 14:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694096089; x=1725632089;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=TjsEYgMvRms+Nln7IH450sJ47TLFaZWFUKYZH39exYM=;
 b=Djgd9LSMsUrluNcHIGaovKohtV1GUJTXJDG5pXk7JdbvBhX/cQItSuaH
 jw2iPX5jqvLZTpu/F268Ojvc1Vewh+NsjdXGUmLRvDTjXa/ESybI5t1A3
 yDAdv4cg9cPh1IAijg2Ynsuq+HAndcP67IX2G7EEGRDVmpfrfJEXfa96S
 VrMP/tQ9gG0oCXkzCqCURU/9b4faQCIjwsjyKkWeOriADeDfw626LRcy4
 4noKgF4PqYtOq3jynLOdGpVRLB/W/93UnFq7mj+M1CMJYz7Yk4TN4ll17
 5Pm9+sXnjugARmQCC7eMdbeKKbfO2Mxluu2xN6WH82/5NqEctzt1ZJmvp g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="381162843"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="381162843"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 06:46:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="885166457"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="885166457"
Received: from mmalyshx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.35.13])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 06:46:30 -0700
Date: Thu, 7 Sep 2023 15:46:41 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <ZPnUQbPNpQ8ZuUqy@ashyti-mobl2.lan>
References: <20230906113121.30472-1-nirmoy.das@intel.com>
 <20230906113121.30472-4-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230906113121.30472-4-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915: Implement
 __for_each_sgt_daddr_next
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

[...]

> +/**
> + * __for_each_daddr_next - iterates over the device addresses with pre-initialized iterator.
> + * @__dp:	Device address (output)
> + * @__iter:	'struct sgt_iter' (iterator state, external)
> + * @__step:	step size
> + */
> +#define __for_each_daddr_next(__dp, __iter, __step)                  \

normally iter is the last parameter, but this is similar to other
for_each's...

nor r-b'eing this yet as there is a comment coming in the next
patch.

Andi

> +	for (; ((__dp) = (__iter).dma + (__iter).curr), (__iter).sgp;   \
> +	     (((__iter).curr += (__step)) >= (__iter).max) ?            \
> +	     (__iter) = __sgt_iter(__sg_next((__iter).sgp), true), 0 : 0)
>  
>  /**
>   * for_each_sgt_page - iterate over the pages of the given sg_table
> -- 
> 2.41.0
