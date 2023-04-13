Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A548E6E097D
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 10:57:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02A0D10EA87;
	Thu, 13 Apr 2023 08:57:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A856C10EA87;
 Thu, 13 Apr 2023 08:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681376262; x=1712912262;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=R/W2+2Y0jxdQJRb5nFh1gZBW3cky7XMwnpXXyfLy4Y0=;
 b=NfImRv+h/jrOo5xufEJ1e2imzTvuHuYFJZvXBAmAVX57P1nTR6delsxm
 N84CyEmY3y8K9EBpmvrfBRpX26DTbwmy5y8qHSKTCdF75/9L59pTrN39d
 SmztGcjywOl5k6y0UcnUOP6L4c/v5RdZLCu/WOz5Pbc5DYep4BxYDrzvI
 cQSgR8FSuBBgUROys3a/Ye5mOZRtiMby3V437mOPj7bN40EzO9NQEnk2L
 AUpptMbsr+6y07yQx9pfmbShKo4r2F+UkdNvbanRNPdm0Jhjo5sxPsq+E
 lbyoawWJ8MQ6/h7KsNQAgKZmhh5RcSRt+IIXjdD6xz1rNhn9eWyCoM5jg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="342875030"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="342875030"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 01:57:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="758618275"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="758618275"
Received: from zbiro-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.212.144])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 01:57:37 -0700
Date: Thu, 13 Apr 2023 10:57:10 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZDfD5syNk3+YIU/j@ashyti-mobl2.lan>
References: <20230412113308.812468-1-andi.shyti@linux.intel.com>
 <20230412113308.812468-4-andi.shyti@linux.intel.com>
 <d00d6c70-67a7-0bed-eeb2-96260da4beec@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d00d6c70-67a7-0bed-eeb2-96260da4beec@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 3/5] drm/i915: Create the locked version
 of the request add
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
Cc: Maciej Patelczyk <maciej.patelczyk@intel.com>,
 intel-gfx@lists.freedesktop.org, stable@vger.kernel.org,
 Andi Shyti <andi.shyti@kernel.org>, dri-devel@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Nirmoy Das <nirmoy.das@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Wed, Apr 12, 2023 at 03:06:42PM +0200, Andrzej Hajda wrote:
> On 12.04.2023 13:33, Andi Shyti wrote:
> > i915_request_add() assumes that the timeline is locked whtn the
> *when
> > function is called. Before exiting it releases the lock. But in
> > the next commit we have one case where releasing the timeline
> > mutex is not necessary and we don't want that.
> > 
> > Make a new i915_request_add_locked() version of the function
> > where the lock is not released.
> > 
> > Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> > Cc: stable@vger.kernel.org
> 
> Have you looked for other potential users of these new helpers?

not yet, will do!

> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Thanks!

Andi
