Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2991B791163
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Sep 2023 08:32:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 208CB10E0DE;
	Mon,  4 Sep 2023 06:32:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D62B10E0DE;
 Mon,  4 Sep 2023 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693809174; x=1725345174;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ql1SeTsT6ragrHVV+S7gG0Gx1pDdAI3ifiqhz6TY8BI=;
 b=VXGQNjWy6HbeULqVVzqmP3WikIuEytPdpU6tMebflIiNVGuDggEPba/4
 wHdrSC6B0U5famAieX3hJ2lnDe2bzAeQ7Ag5VDGRqXnied/DKuXAzPH8H
 NH0ZOpy8z7jZpAVy6XgA7NxujcTSWSV3TQlT9riNPhdtHKzsYjkqrvtMk
 rk3rnp/LKm9hLczf6SDwmdSSL5P5hBVyeMyRQgBBY9j6LERB+0Xr7uNet
 veWyueWb5KTTz4/V+hGHUi79mu6EBRLMqpVlQZNW1F0L77c076k7H2P/3
 kduMsKNEem1GbuToc+bBbuNezApGhoRe/uav2wEs/U6axVu5+9UzoKexw g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="366750382"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="366750382"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2023 23:32:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="914404453"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="914404453"
Received: from acohen8-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.252.59.133])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2023 23:32:44 -0700
Date: Mon, 4 Sep 2023 08:32:40 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jim Cromie <jim.cromie@gmail.com>
Message-ID: <ZPV6CMBlDWriMyva@ashyti-mobl2.lan>
References: <20230903184607.272198-1-jim.cromie@gmail.com>
 <20230903184607.272198-4-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230903184607.272198-4-jim.cromie@gmail.com>
Subject: Re: [Intel-gfx] [PATCH v2 3/6] drm_dbg: add trailing newlines to
 msgs
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
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>, daniel.vetter@ffwll.ch,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Andrzej Hajda <andrzej.hajda@intel.com>, David Airlie <airlied@gmail.com>,
 Rob Clark <robdclark@chromium.org>, amd-gfx@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>, jani.nikula@intel.com,
 intel-gfx@lists.freedesktop.org, seanpaul@chromium.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gvt-dev@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jim,

On Sun, Sep 03, 2023 at 12:46:00PM -0600, Jim Cromie wrote:
> By at least strong convention, a print-buffer's trailing newline says
> "message complete, send it".  The exception (no TNL, followed by a call
> to pr_cont) proves the general rule.
> 
> Most DRM.debug calls already comport with this: 207 DRM_DEV_DEBUG,
> 1288 drm_dbg.  Clean up the remainders, in maintainer sized chunks.
> 
> No functional changes.
> 
> Signed-off-by: Jim Cromie <jim.cromie@gmail.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
