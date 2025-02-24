Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22292A41AB4
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 11:20:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD61710E1ED;
	Mon, 24 Feb 2025 10:20:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TNlA+BgT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3588710E1ED
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2025 10:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740392426; x=1771928426;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pn+QUh+Aq5G9NL2XDntQx2VKOf5KZXp+XdrgBKLhSI8=;
 b=TNlA+BgTDRsS+l+MNOJfNOmaQVuZPjnZM69rHrYx0DO0dYKaWDalAYhp
 i59ccJmqmnz6lan+9LQPsdAFZWqBzxkNe3W2AtDIEHep/4cRisu405f20
 VmrQtpXPLJ8OIM6In3IBv3YJTcqZoXMtA/UirtVfAu+Z+fK5xS3DFtU0L
 5mKWuPzw7LBfGuMKu8wvtWi8eVKZycIRbwMLxrrKGu7K2nxAXf6FQxU4L
 d824+IO1TKBvM/uPN+BsLeteIVnsVQcCCR3HDN1Oru1LWAU0H8ZCz4IzN
 tAk/Pzor1P46RhOoUG6ApnU/Bc1uVjgdyBy2ym6aLAk+bGxwUKmNlymJG w==;
X-CSE-ConnectionGUID: LISLKsFyTwWcr0q4MY+q5A==
X-CSE-MsgGUID: 5ehE41awRZ2U4cNIQkdnQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="66513510"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="66513510"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:20:26 -0800
X-CSE-ConnectionGUID: +YrU8GaXSweBJsUP7j+yWw==
X-CSE-MsgGUID: pEcm+QEfRLWh35XG+dftUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="115748785"
Received: from vpanait-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.159])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:20:24 -0800
Date: Mon, 24 Feb 2025 11:20:20 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 11/12] drm/i915: Use REG_BIT() & co. for gen9+ timestamp
 freq registers
Message-ID: <Z7xH5CnCHLZKpquW@ashyti-mobl2.lan>
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
 <20250211231941.22769-12-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250211231941.22769-12-ville.syrjala@linux.intel.com>
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

On Wed, Feb 12, 2025 at 01:19:39AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Convert the gen9+ timestamo frequency related registers to
> the modern REG_BIT()/etc. style.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
