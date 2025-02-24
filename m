Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F28A421A1
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:44:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF48110E415;
	Mon, 24 Feb 2025 13:43:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jKhFyewS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1610C8994A
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2025 10:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740392455; x=1771928455;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=n+K7TKkfrbOFHvCxQ2J9UOdnSwTmwRCdN7VAcHjYLCE=;
 b=jKhFyewSfyY7+eVs1RUw5lMDmLmjD4vdc8eVlQC3wcok9szFH+rSLsyv
 phSVqL1OXKAy9YAgJYEeChPITBuZPZSdfwZ/zqI0ce8YaFw9G1kBaGMFS
 JInU2sIH+jstJkFsa+eYMeX2AeZ8JDigb0RGsBVMMFugkDp4JMwthjpDV
 y5DKuZS/ejATM0BOUQK+cDeZe68ddCZp361DozGPQS1Qv2ec9fnUxC6az
 PX3rT/6UIUyUQ/pCcYMM/BfLHubJF4H03ps8Mcas3ivsnGAsV35pBL+Ux
 r9Mu0mgOeTCH0otXQbsCyLseQWJVYNOBk/C8djJtbAooeTMLOLOyJ/r6y w==;
X-CSE-ConnectionGUID: wN+0O/dkT6e08h3OzvtjYA==
X-CSE-MsgGUID: UaZu8qk8SuKRWHA7eVBMvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="66513567"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="66513567"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:20:55 -0800
X-CSE-ConnectionGUID: 45F3orWjRdehzymxeaQLJw==
X-CSE-MsgGUID: 0XaUbRx2S9+DNr7yCg3GKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="115748832"
Received: from vpanait-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.159])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:20:53 -0800
Date: Mon, 24 Feb 2025 11:20:49 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 12/12] drm/i915: Reoder gen9+ timestamp freq register bits
Message-ID: <Z7xIAZh7pXbCcdbM@ashyti-mobl2.lan>
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
 <20250211231941.22769-13-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250211231941.22769-13-ville.syrjala@linux.intel.com>
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

On Wed, Feb 12, 2025 at 01:19:40AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> We customarily define the bits of a register in big endian
> order. Reorder the gen9+ timestamp freq register bits to match.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
