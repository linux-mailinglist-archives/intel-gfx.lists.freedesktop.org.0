Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9128C7D6885
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 12:31:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F250310E62D;
	Wed, 25 Oct 2023 10:31:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC08210E62D
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 10:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698229867; x=1729765867;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=TManLFUcZ41J+4kSStyrXwiMnPSs8SzEgFbabVtjmt8=;
 b=Gw9HZ2OqU8ytB0pOKFdAMbG+A5fPMGDy0UTRIOYD0pI5wRPUqvYmsilK
 rp6or1stHiEx638ThMCeHVDffUbAkxRCL9Gyg8QltJv1HMHSoMcBohXMd
 icxYdZo4QVXhJUA/Bc3h2zFehhEO80OoSrfq/MY4HlDxT8QuNkaxqgWO8
 mzkd1eoMzDg5VEdVAIUcr3hLvgfGs9uX2jaqmK2HcjTa5SVYZdQOXCZON
 UqnEhVeUAstHTdieSxEMrJvz0vdPZoz9I1WYalGkj2Ozjxa+OfhxqcEWF
 iEEQHE+gsSOKrT/1RVj/e25PwsC/xIXFk9zxWNxs/ZzON2Uj/eFIlcW97 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="387097456"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="387097456"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 03:31:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="824602293"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="824602293"
Received: from shenkel-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.63.39])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 03:31:05 -0700
Date: Wed, 25 Oct 2023 12:31:02 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <ZTjuZq3EdA-Yb48n@ashyti-mobl2.lan>
References: <20231025102826.16955-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231025102826.16955-1-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Apply notify_guc to all GTs
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

On Wed, Oct 25, 2023 at 12:28:26PM +0200, Nirmoy Das wrote:
> Handle platforms with multiple GTs by iterate over all GTs.
> Add a Fixes commit so this gets propagated for MTL support.
> 
> Fixes: 213c43676beb ("drm/i915/mtl: Remove the 'force_probe' requirement for Meteor Lake")
> Suggested-by: John Harrison <john.c.harrison@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

I wonder when we will manage to add all the for_each_gt's
everywhere they are needed :-)

Thanks for the patch!

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
