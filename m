Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB7AA42190
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:44:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD3AA10E553;
	Mon, 24 Feb 2025 13:42:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fp2VbFT7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58A9C10E120
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2025 10:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740391757; x=1771927757;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lDDPm9AQm8LMl+UvBy2x22aVQ9jAg17HPggJx5gQhAM=;
 b=Fp2VbFT7HqN+4VWSuIRomO2lwpbKN3h0ogTp8iqTd8LdaC7UwP+Ppr03
 KsbRdazITmtl7b9HbGMIcrrpkkNZTMquVkbrxDaH8l6IMhZH/TqMjExmv
 E/fo9DNHvbheqDYLF7PsZgirtdjOiFBhvNUHtbL5rbdg4lU0YAtgo9tij
 dKoYJoZg2k8hhgZ+ajSXaAGQC/5dPUVYDaIA4c9oE40OLBMegohEltseS
 Wt3sTUXq5ve+aeLETGioQlmUHW63pQveGTHpgpTMTU86Qv/xhM6snGQXm
 XCG7qA267GJMRyXn3//+74WSod4tj9EcgjksCx2gZRxMj4Zjnmy4xqX31 Q==;
X-CSE-ConnectionGUID: IKOUbPAKRkGUYAde+8z3Fw==
X-CSE-MsgGUID: kmwcmJE1QFiSfR0ZaMpgsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="41401893"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="41401893"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:09:17 -0800
X-CSE-ConnectionGUID: 4oCA3OaVQi29MLWkIxBFhQ==
X-CSE-MsgGUID: rp/NOhYxSNyAOQnvFBGoWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120140895"
Received: from vpanait-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.159])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:09:13 -0800
Date: Mon, 24 Feb 2025 11:09:10 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 07/12] drm/i915: Use REG_BIT() & co. for CHV EU/slice
 fuse bits
Message-ID: <Z7xFRn3VVx3bWTaH@ashyti-mobl2.lan>
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
 <20250211231941.22769-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250211231941.22769-8-ville.syrjala@linux.intel.com>
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

On Wed, Feb 12, 2025 at 01:19:35AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Convert the CHV EU/slice fuse bits to the modern REG_BIT()/etc.
> style.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
