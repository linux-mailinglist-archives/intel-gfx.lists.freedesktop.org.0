Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EF44D3989
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 20:08:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE3BA10E3AF;
	Wed,  9 Mar 2022 19:08:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 979DC10E3AF
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 19:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646852903; x=1678388903;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=B3Xdf38SaE8QjFdfNQGsY41Wo0+1F2fOs0UwsP9G5mU=;
 b=NugPtti1vZXMYjgP9+31njKYPm/wSbKIl4STioRFvwx/ADU6mZ58Y+zH
 vHXZjRUOMntLuRi0pgMXYLcR2ForCJGsrce5j48I8j66rcbMbq4Uwkv+B
 E8Oo8x1duwdiBB3LqbXOXlXI9TtLoEIHLK7Yv3VFNEeJk/tqjGx4W3bDU
 2+6+nLA4dRCnaOml7M/PCd9p6Uvinakz83aLZZNGFgEjbrbdOFM+mPqpv
 L/Mc0j0Jz61M4jrAVmYURDOM6pXOD1MCKD1LJACdMV/aDxXoIOnmkK43s
 euUbFxZm1TteA1bWZKay79+tFy8r9J3Lf6q94+Bq8MIDYQbZKATTjpYoV g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="242510284"
X-IronPort-AV: E=Sophos;i="5.90,168,1643702400"; d="scan'208";a="242510284"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 11:08:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,168,1643702400"; d="scan'208";a="642266570"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 09 Mar 2022 11:08:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Mar 2022 21:08:12 +0200
Date: Wed, 9 Mar 2022 21:08:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <Yij7HFOvBiVg+kqD@intel.com>
References: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
 <20220309164948.10671-7-ville.syrjala@linux.intel.com>
 <20220309185959.GA9439@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220309185959.GA9439@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 6/8] drm/i915: Fix PSF GV point mask when
 SAGV is not possible
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 09, 2022 at 08:59:59PM +0200, Lisovskiy, Stanislav wrote:
> On Wed, Mar 09, 2022 at 06:49:46PM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Don't just mask off all the PSF GV points when SAGV gets disabled.
> > This should in fact cause the Pcode to reject the request since
> > at least one PSF point must remain enabled at all times.
> 
> Good point, however I think this is not the full fix:
> 
> BSpec says:
> 
> "At least one GV point of each type must always remain unmasked."
> 
> and
> 
> "The GV point of each type providing the highest bandwidth 
>  for display must always remain unmasked."
> 
> So I guess we should then also choose thr PSF GV point with
> the highest bandwidth as well.

The spec says PSF GV is fast enough to now stall the display data
fetch so we don't need to restrict the PSF points here.

-- 
Ville Syrjälä
Intel
