Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB42727398
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 02:11:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 000B210E574;
	Thu,  8 Jun 2023 00:10:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFA4F10E574
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 00:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686183056; x=1717719056;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=b5Yp99t/4F/ho4lG5w0t57Lz87gdGg2J7dHYOlU8mwc=;
 b=Gwh9NJVuSygpdpgr2jWjC1qGWsdCvVLt8CATDQO8iUiyy/MljguhQMGP
 u0ONCR4NCLC1WXZv0Lk7z1R3tpx3/yUBc3iO5IwQg6R8BgP7cFocAScyf
 mfdfgRmyLYRrld0TV7eH9ZrdiC3MWS/PVVzslP5CEltUS7z9yp1/VlwsX
 DTfSndihNrjGyXSfIP9spJ19XUO19I2jD3m3sKK2F3yG2EwMAP6UTGhwD
 ebDYs9WyqCvFKTp6xjOOCaKx1gfS0A95qCVNhdjNcJanMAczIltWBeenE
 N8larHmYbEy4MupMS0D6CYMXEB3bPCUTfiuMthYu2KSqJigcQVb83SESW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="346759461"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="346759461"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 17:10:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="822377361"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="822377361"
Received: from operepel-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.58.149])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 17:10:51 -0700
Date: Thu, 8 Jun 2023 02:10:44 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Dan Carpenter <dan.carpenter@linaro.org>
Message-ID: <ZIEchIIx5J2jDZlV@ashyti-mobl2.lan>
References: <ZH7sr+Vs4zOQoouU@moroto>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZH7sr+Vs4zOQoouU@moroto>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gsc: Fix error code in
 intel_gsc_uc_heci_cmd_submit_nonpriv()
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org, kernel-janitors@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dan,

On Tue, Jun 06, 2023 at 11:22:07AM +0300, Dan Carpenter wrote:
> This should return negative -EAGAIN instead of positive EAGAIN.
> 
> Fixes: e5e1e6d28ebc ("drm/i915/pxp: Add MTL helpers to submit Heci-Cmd-Packet to GSC")
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
