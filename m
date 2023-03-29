Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A95176CD9BC
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 14:57:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E0F410EA8D;
	Wed, 29 Mar 2023 12:57:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A695B10E294;
 Wed, 29 Mar 2023 12:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680094632; x=1711630632;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=vwS3X5AtMxUgPOZzP+yLqFDJtD0ZzmPzIp0mK7L6JFc=;
 b=Iu5YeBtYmX+X58pRVilTnWcVMwKU9k2tedGnbpAQ0p6yfUNT5fqUMX1x
 DWW2Vr54nqOX4olSqXhp7Sb9+DRiTRXmJnBmC1j/PschrHI9f0qSNZFlB
 ZPOmKeNN3MfAQnBPeS9YN8Ic0UATKF8ICMeX59ErArjGKfy/R1BH27MG7
 3WoMcyzw8/HSAm4UTn/HDyWEHtjAzayCMoh0o3beVZl1Yoo1JRAp3Jw0t
 dGvzdNE30SC6ps5Mt/wjvBaprSHo56wa6qC1Y7IFhqEaR1ljIxb8aLg4o
 h3BmlD5MHxBkCaeFkrn/I/KGLrzoK6tvszRqQhzcNHq2akiKs7D0BZeBW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="343286561"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="343286561"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 05:57:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="686813345"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="686813345"
Received: from ostermam-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.249.32.144])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 05:57:06 -0700
Date: Wed, 29 Mar 2023 14:56:42 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZCQ1ihjfKHR4GRi2@ashyti-mobl2.lan>
References: <20230224-track_gt-v6-0-0dc8601fd02f@intel.com>
 <20230224-track_gt-v6-3-0dc8601fd02f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230224-track_gt-v6-3-0dc8601fd02f@intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 3/8] lib/ref_tracker: add printing to
 memory buffer
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
Cc: netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Eric Dumazet <edumazet@google.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, David Airlie <airlied@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Dmitry Vyukov <dvyukov@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Wed, Mar 29, 2023 at 09:24:14AM +0200, Andrzej Hajda wrote:
> Similar to stack_(depot|trace)_snprint the patch
> adds helper to printing stats to memory buffer.
> It will be helpful in case of debugfs.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Thanks,
Andi
