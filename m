Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 360A4805829
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 16:05:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1FAD10E551;
	Tue,  5 Dec 2023 15:05:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22F0210E551
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 15:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701788737; x=1733324737;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=tsI+Qky8vHfAlJtzFb/k3H0E2vLmDdwJwWP+xLfrql8=;
 b=Mj4OiTbdhgZvo0mX2D2eeN6Hl/RGDpcALbP6VzCq3IwhU0sXxAp+yV6C
 tI+GWVIV7/tVHIX+GpBmXTmm+kLSeeHR3SEylLxSWWjjk8uRoDu263K1Z
 4cHNRlVYCAl92vXL607cBCm7oUa/6j3/pNIENVF3lqKOjogblDWtrdQ1O
 6M1zHfaiLk6pxem64OSwsHUJsVbLNmmW4rWGL3DgAjxwnkWN8Irg65lfE
 o3MIjZ1wW+u1zSM7sOEsCVZWna1X5R5O6lKWa4SlL8GhvKtgWdgN+cppC
 Tj/rln6+BesD0ageDxOHHWwHXzTkDjvntG6ElQpJLcz13Nq8M+81+R5v4 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="374093709"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="374093709"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 07:05:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="764351427"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="764351427"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 05 Dec 2023 07:05:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Dec 2023 17:05:32 +0200
Date: Tue, 5 Dec 2023 17:05:32 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZW88PCUpigzOq3th@intel.com>
References: <20231205134143.2427661-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231205134143.2427661-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: use intel_connector in
 intel_connector_debugfs_add()
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 05, 2023 at 03:41:41PM +0200, Jani Nikula wrote:
> Prefer struct intel_connector over struct drm_connector.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

-- 
Ville Syrjälä
Intel
