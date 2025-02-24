Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 794CBA41A99
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 11:18:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABD3610E120;
	Mon, 24 Feb 2025 10:18:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BDNaraRo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D6FB10E1ED
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2025 10:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740392312; x=1771928312;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+m9EnbTKDxXQwcNxEx/9jGpPWXYLTamZa3Q971R4RsE=;
 b=BDNaraRoR4hNL3Kkv6PyYDUzAT+R9dF0Ao0nbOYLXShqr8cRBoJWZILG
 CdQduv2u6SKRKR+erTB4tgfcL+c5+uSdt77HECwhgJ1hHGucW8LVImmXV
 65dMgcqXzg0/Gfnh/tQr4cy3WCknkkb/L6Ett1kEn+Mk/paeRMpbRANys
 L7xacdUK/wJ61+OMaarBDOnqoFoR6d2zfE5vD0+PuL0HwIUzfNbYxHMt+
 HklRgtASReImAGZ9/5mgDjmg8Usf2mfgFwU/sJ+JJ5272iLzzRh1DbkTh
 9RKveNyqXb++acpeUsVK/DNP4UAf5Drry80Ch2mDfgO99lLE2ESRHVA4Q A==;
X-CSE-ConnectionGUID: ROKgubJ3SxugRE9M1hQA+w==
X-CSE-MsgGUID: o5wD6YcDQwSQqUm6WfLS6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="28738019"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="28738019"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:18:32 -0800
X-CSE-ConnectionGUID: Jz3cgHsxSM21GqCy1d3Y1Q==
X-CSE-MsgGUID: kBeJdFRgROmVrAbo1L3nAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="116516128"
Received: from vpanait-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.159])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:18:30 -0800
Date: Mon, 24 Feb 2025 11:18:27 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 10/12] drm/i915: Reoder BDW+ EU/slice fuse bits
Message-ID: <Z7xHcxhNnlzFp3JL@ashyti-mobl2.lan>
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
 <20250211231941.22769-11-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250211231941.22769-11-ville.syrjala@linux.intel.com>
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

Hi Ville
On Wed, Feb 12, 2025 at 01:19:38AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> We customarily define the bits of a register in big endian
> order. Reorder the BDW+ fuse bits to match.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
