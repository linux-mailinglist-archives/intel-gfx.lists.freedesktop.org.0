Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 367E17D6676
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 11:15:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9304410E60D;
	Wed, 25 Oct 2023 09:15:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43E1A10E60D;
 Wed, 25 Oct 2023 09:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698225332; x=1729761332;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=rYW6amP+fIPpnP3NeIC+HgesnNCvhKUTO/tNWXvFmPU=;
 b=BSjSQYY0ycWMMulrGHt3cLn0eOY6fBV2XnApRVo9o8yoCNjDc0dR+TxP
 Ld69gajoDEF0WEpWefBEOIajSSXttQHXklzhk0lyiPTCGmQfuWzoaV5A3
 t7GFytLTjuqHAVI+Dt2uk+/MH2np4jiEF9dMRy0yfRCttJHDrQUdQwFX7
 rNDcgAnqh2GM3CjsepF2QRo0EFEylZd/3s8lgK9pOvWFc0w3pyMaGm8Zn
 6ZvrQ/1tZ3NOPSBUFz3CO2tMBidv3IkubIzytWhZajrEy+STUeRlphrvT
 UvffRAikXStHroAhaLh1o98pj2WMFG60V8PxTmPndBchU0pFnlorBOAMM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="367484006"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="367484006"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 02:15:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="849472957"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="849472957"
Received: from shenkel-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.63.39])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 02:15:27 -0700
Date: Wed, 25 Oct 2023 11:15:24 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <ZTjcrNYd8JBkZ8lb@ashyti-mobl2.lan>
References: <20231024155739.3861342-1-andriy.shevchenko@linux.intel.com>
 <20231024155739.3861342-2-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231024155739.3861342-2-andriy.shevchenko@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 1/7] drm/i915/dsi: Replace while(1) with
 one with clear exit condition
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Hans de Goede <hdegoede@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andy,

On Tue, Oct 24, 2023 at 06:57:33PM +0300, Andy Shevchenko wrote:
> Move existing condition to while(), so it will be clear on what
> circumstances the loop is successfully finishing.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
