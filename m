Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 030F6A03D70
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 12:21:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4155B10E3FD;
	Tue,  7 Jan 2025 11:21:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cYPebERZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 737C110E3FD
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2025 11:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736248864; x=1767784864;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=EP6/D+880f/FbE0e91jC0LKCzZ2DVlduGwZAytpIQjc=;
 b=cYPebERZFI9c67fL5FFYl/f4x3Xn9kx2cAF1/Ouw7trKXojkD3rLaOpV
 VLFSweDjfrN45JMUxZRMRUAJMLmJLPMxvoXs0vX3lsF7uVx1ghZuchIBk
 Ue7z/9NOG5/NC6qXf2HcqkwSuC56gI08dW3RIh+Ew+T0WKbWeVwLBvcqn
 l8dywgYdLVjBJJGdrIc5W7wDByfj3JFkYnWlJ5bTePTC8zQ5HAUXubUOm
 YmgtBq6ubL+igTRa4NSbP4dkpilVB0rd9U9vuYDR/ma70CMloWf3QSJuS
 DAcD391Z2v39f9cdqyElpIH3+3wgaoy5FCF73xqLSF4WVVOFOTbw2pzxX Q==;
X-CSE-ConnectionGUID: e1sUBFlbT9GpYGzAo2PvIQ==
X-CSE-MsgGUID: giA8iTv1RvK+oKkQQ+COGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="36442480"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="36442480"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 03:21:04 -0800
X-CSE-ConnectionGUID: aAIiNSHfTjKWr+MptM/Zcg==
X-CSE-MsgGUID: pyM0GQLEQxK+F45q8bzESw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="103235116"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.98])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 03:21:03 -0800
Date: Tue, 7 Jan 2025 12:20:58 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v1 2/8] drm/i915/gvt: fix typos in i915/gvt files
Message-ID: <Z30OGnGs-I-BYrNt@ashyti-mobl2.lan>
References: <20250106103037.1401847-1-nitin.r.gote@intel.com>
 <20250106103037.1401847-3-nitin.r.gote@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250106103037.1401847-3-nitin.r.gote@intel.com>
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

Hi Nitin,

On Mon, Jan 06, 2025 at 04:00:31PM +0530, Nitin Gote wrote:
> Fix all typos in files under drm/i915/gvt reported by codespell tool.
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
