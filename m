Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8A0A42187
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:44:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED18010E53F;
	Mon, 24 Feb 2025 13:42:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="elDgWzcU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4EB110E1B3
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2025 09:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740390886; x=1771926886;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=mQXk5F3Ce6Qk/o/KLrFfs1u0oXaj1yXc8n7B5Q3zeFY=;
 b=elDgWzcUddWVzzfeevgN0v5tACSNOl8G0G8qtmKyPhOFJywMpwhe2/CH
 THM2sW0TNdbOtejixmKWTlJLjUvYhibJKBHCyt7pFMcsIP8eob2jq03so
 nV2vwghGdggIXbjewiEoScqwuehaeIc2LXX6FuDJEXIoM8uyBWPOx9+1V
 xaPGEd/sIN2pZqrlqJPHO/d5uehDt3LTkJ8A9i22EOJD2PmxtFuNh2xQO
 9AXCXUKOCMHj+Eolx5YFjUWBp6I9m78fZEZuLlcE7gfIxcT2ET4x0k4ir
 ptUu+iCfhrrvTcNtj1rcnm856k3etgeVU2OvCDGpjGoGBmPmnbeqtb718 g==;
X-CSE-ConnectionGUID: xvl+EUu9RnK4nFiJ6NG1Xw==
X-CSE-MsgGUID: 3O4Dq4l7Qiq1frUb8Y7cAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="58685605"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="58685605"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 01:54:45 -0800
X-CSE-ConnectionGUID: G46dqALnTT+MgfcGJloQeA==
X-CSE-MsgGUID: I5xo5BMDQjiiKI1T1VhzgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="139231907"
Received: from vpanait-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.159])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 01:54:44 -0800
Date: Mon, 24 Feb 2025 10:54:40 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 05/12] drm/i915: Introduce RING_FAULT_VADDR_MASK
Message-ID: <Z7xB4Enf4Ih_deVQ@ashyti-mobl2.lan>
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
 <20250211231941.22769-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250211231941.22769-6-ville.syrjala@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ville,

On Wed, Feb 12, 2025 at 01:19:33AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Add a proper bitmask definition for the pre-bdw fault
> virtual address bits insted of abusing PAGE_MASK.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
