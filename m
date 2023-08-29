Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F25778CA6D
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 19:13:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65A9710E3CA;
	Tue, 29 Aug 2023 17:13:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17F6410E3CA
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Aug 2023 17:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693329214; x=1724865214;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=pkyXqBpfMj1LTR1gOU3+dWJ4TOptqeCE1dDY2fTJ/OI=;
 b=AwLUg96rRWb7GFEpmnXx3WXqKxBmB8opHs6xGnckxKfD9/iBVUAo2JUe
 4T2/AK5Fc9relDyjn0i9G6LZ7SLTcdll875iqjscBP4VfS0bsLfxqtczv
 p7B3daeBuGETSfjXij7D/9RMPvXOFGKtKCXhW1Di1VOhUz3jPTUFyi36r
 hL+lQkrl0I1h7zx8zDny5RNnSZejC2v16d5jUtdCZ7KqaYoOw6PRmTdud
 WkqHcAslgOMW+giWK073c89zw4Ktq88bVsIJC8uJ9CuAG0+L0OTkT+V0g
 9xEjrwV43vKNs6rENq4RPma8Xao04gtjrO5uYeFssQ7G9oTAJFumCgv2W Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="365638062"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="365638062"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 10:13:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="853370461"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="853370461"
Received: from msterni-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.47.170])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 10:13:31 -0700
Date: Tue, 29 Aug 2023 19:13:27 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@linux.intel.com>
Message-ID: <ZO4nN8uSLOuvhydb@ashyti-mobl2.lan>
References: <20230828063450.2642748-1-tejas.upadhyay@intel.com>
 <ff521acf-c1a8-3708-1c64-9bad2d4d9c09@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ff521acf-c1a8-3708-1c64-9bad2d4d9c09@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Update workaround 14016712196
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
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 28, 2023 at 08:16:35PM +0200, Nirmoy Das wrote:
> 
> On 8/28/2023 8:34 AM, Tejas Upadhyay wrote:
> > Now this workaround is permanent workaround on MTL and DG2,
> > earlier we used to apply on MTL A0 step only.
> > VLK-45480
> 
> Please remove the internal VLK reference. Otherwise this is

I thought that I would remove it before pushing, but of course I
forgot to do it. I'm sorry, Nirmoy.

I applied the patch to drm-intel-gt-next.

Thanks Tejas,
Andi
