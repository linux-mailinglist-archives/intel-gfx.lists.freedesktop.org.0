Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 671906EAD12
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 16:37:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27F4610EE27;
	Fri, 21 Apr 2023 14:37:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DE4E10EE27;
 Fri, 21 Apr 2023 14:37:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682087869; x=1713623869;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=DJwRbyhL7AkSvrMwAW6oiSEGJn5TZ51UzJgVKzDi2pk=;
 b=a+Ks2aLNt1vw7voiUBcItMPhpIF4kIgioj5Mcq0YJuXy/IdvF1E1N+n/
 x6NwjPlmB4V6iwweRwKxO9lXDGnBMspdh8OvLIGUCjFLYXguSORcaRZSn
 QCRl11RP6fxktcUg5EqcW6esYIzOAp7+PQf9u5EZ18jERi3KtIHJjHlmX
 pp02LSEscJizWIcCvnZTdju8AcXN+LE/u3GvAem0cdlBJbcnREpXUtBx2
 Rn+ZWZT+627WPc1c5OAhdG6V+m+FKA1NrNQsXuKikY3PQiiOfQDpKCIHp
 NlgkluFyxXppxXi7RF/nkpNBUg7UxVWF0C0xKBgZkEJVb//MQwRRPc42l g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="334883675"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="334883675"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 07:37:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="761598674"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="761598674"
Received: from abaldovi-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.57.154])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 07:37:44 -0700
Date: Fri, 21 Apr 2023 16:37:39 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@kernel.org>
Message-ID: <ZEKfs1yLQqD6IFGX@ashyti-mobl2.lan>
References: <20230421134654.273182-1-andi.shyti@linux.intel.com>
 <20230421134654.273182-2-andi.shyti@linux.intel.com>
 <ZEKW/VslWeV+sGlq@rdvivi-mobl4> <ZEKYE+bWcV5Gg00L@rdvivi-mobl4>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZEKYE+bWcV5Gg00L@rdvivi-mobl4>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/i915_drv: Use proper parameter
 naming in for_each_gt()
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
Cc: Andi Shyti <andi.shyti@kernel.org>,
 Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Rodrigo,

On Fri, Apr 21, 2023 at 10:05:07AM -0400, Rodrigo Vivi wrote:
> On Fri, Apr 21, 2023 at 10:00:29AM -0400, Rodrigo Vivi wrote:
> > On Fri, Apr 21, 2023 at 03:46:53PM +0200, Andi Shyti wrote:
> > > for_each_gt() loops through engines in the GT, not in dev_priv.
> > 
> > typo here? ^
> > 
> > with that fixed:
> 
> oh, in the commit subject as well...

The power of habit! Thanks!

Andi
