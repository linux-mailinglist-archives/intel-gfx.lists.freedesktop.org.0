Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A52E9A41A73
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 11:13:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C717D10E1CF;
	Mon, 24 Feb 2025 10:13:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QNKlOez0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D20510E120
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2025 10:13:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740391994; x=1771927994;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=trNAkN0dhrL/q6FQhfGVeSa9GCxweTWJVkTwsB4CUjY=;
 b=QNKlOez0TaUoELT4iAKzXEdtkkXSXpsihn95d7WfgchCPj7kcBBizCWQ
 vZpkkaix3VsJ8tyW7xw3vGxcKz5tnP+GvlJ6MXPgVzc3BpsO1DgZQRL8g
 6i0rwZ+TXTrlsL+bi7Koh1ap+ud9tPEDBZXSepRWU5TZzSDNnBVcasGW6
 LExlq9JsRydR+k5NREljhyCcdwW9bDO4TUHnn+N4VdotThLXlxtI9rMqe
 j+zXSwwbYRGBEfxaMelDR0g5XiH4rg+OcQZKJJ8gIO/7yCLsp/hgHEVno
 /5dvdD5ZKWA4nGFXG0yzgi1h1X0s5E0uhZ7NSBHHPVaiWNVwwVd1it1r6 A==;
X-CSE-ConnectionGUID: PUVgqEKVTCO8ibjLJe9/MA==
X-CSE-MsgGUID: OSa5jM79T3Kq3tdZTR2Rdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="41052256"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="41052256"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:13:13 -0800
X-CSE-ConnectionGUID: 4LjQrghsRPWhjQmNlmDAxA==
X-CSE-MsgGUID: W4gcArc3S8aGfMVOlHaSKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="120639746"
Received: from vpanait-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.159])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:13:11 -0800
Date: Mon, 24 Feb 2025 11:13:07 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 08/12] drm/i915: Reoder CHV EU/slice fuse bits
Message-ID: <Z7xGMwH58QEtmh9L@ashyti-mobl2.lan>
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
 <20250211231941.22769-9-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250211231941.22769-9-ville.syrjala@linux.intel.com>
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

On Wed, Feb 12, 2025 at 01:19:36AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> We customarily define the bits of a register in big endian
> order. Reorder the CHV fuse bits to match.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
