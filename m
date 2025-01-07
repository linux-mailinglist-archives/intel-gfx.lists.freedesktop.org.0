Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8E7A04148
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 14:56:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E80910E25C;
	Tue,  7 Jan 2025 13:56:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mj5mzKuY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC3DF10E25C
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2025 13:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736258217; x=1767794217;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=njHE0/tHpiqdCxdeRq5uiQfx7cSgu8b11R8/8vrLnK0=;
 b=Mj5mzKuYEMAK/k2LvHO7v36yQl2y1IKFBZPdeeE68c+5hNcsO6kvvecb
 C1SvwUEUYaJHI7Pu1+YWvbTjAMLr1kMjjKuIXe6bAG0pyFAmb+M7tY8PY
 mNQPR9a3bYk7+5ERlJzkmR6INJMW9NvFf6Y5KfAtEi/Lw77k7+cqjMxz2
 6h+FaGREdQau59D5baZKsRWra7kRCGkxDZ00Cjru8wtn0Jbg1Xdz97Szv
 YOy5DwfDX+hq7RMSNqqLMv6zPbE9dLNSfyUPpiP/YPEFVezRcFYSVrxd8
 O+2BeKUDCIjWTTSzNVQn/84gp2SVljQ/DGwQIlUicp8PYTH6xhJIkHjSW Q==;
X-CSE-ConnectionGUID: Y3JGTqxcTwyJturEHpLc7w==
X-CSE-MsgGUID: +Kby5/JyS7uqKg8wWK95bQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="36136535"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="36136535"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 05:56:43 -0800
X-CSE-ConnectionGUID: Kes5+gYyQiKvXV7IUWKNkA==
X-CSE-MsgGUID: KkExyQt+Sb+svPRe86hwkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="103266977"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.98])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 05:56:41 -0800
Date: Tue, 7 Jan 2025 14:56:37 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v1 6/8] drm/i915/soc: fix typos in i915/soc files
Message-ID: <Z30ylVLktOu2lybC@ashyti-mobl2.lan>
References: <20250106103037.1401847-1-nitin.r.gote@intel.com>
 <20250106103037.1401847-7-nitin.r.gote@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250106103037.1401847-7-nitin.r.gote@intel.com>
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

On Mon, Jan 06, 2025 at 04:00:35PM +0530, Nitin Gote wrote:
> Fix all typos in files under drm/i915/soc reported by codespell tool.
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
