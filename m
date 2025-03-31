Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8E9A769CE
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Mar 2025 17:18:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4516110E422;
	Mon, 31 Mar 2025 15:18:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HyZ+1ejn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AD7510E422;
 Mon, 31 Mar 2025 15:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743434324; x=1774970324;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X+E5c+wHfnPkOQ+nKoad/jqz3hODW6+uxKpRlgxZ3xI=;
 b=HyZ+1ejnjbBQjSiWUoBPJXRPdlI5MJyU1g2GvBTRRLpSOkH2FwTJ5m5N
 FInJKWyq/Afzb2mBT4TtQw2Tq8gGZUuuciPBU+AhQpXlXz/egpt5/y8Kg
 SGjG33AiPjbQD6eEuQq7zWXjRfZKcwlxj7PIpV0d4fhqP2AlUkyz+lceM
 TdPqy+9/Ib03eH3lRCKFneXtr5JGsSQlL1Lz0h9MGTiKy6Iyy2LuD3ASS
 JVPpmEAA614XY5A8mS/X/j+42PHr2wcQvSW8rnsOrNwcUmvEeDF3Cq92u
 7InM8H12ClUucMGN5QzBQsAUtb5lbglj42BZFMAdnl6eUhSoRTB61xNph w==;
X-CSE-ConnectionGUID: PXk1O5b5RsyBhfAiwtkkfQ==
X-CSE-MsgGUID: pJdXSnFDQRWlzE/J/BY+oQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11390"; a="56100367"
X-IronPort-AV: E=Sophos;i="6.14,290,1736841600"; d="scan'208";a="56100367"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2025 08:18:44 -0700
X-CSE-ConnectionGUID: w7wdmN0UT926Ju3ciALkDQ==
X-CSE-MsgGUID: x2hv+hUsQSitjrT/5th3MQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,290,1736841600"; d="scan'208";a="126577172"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2025 08:18:43 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Subject: Re: [PATCH 0/2] drm/i915: DRAM type logging
Date: Mon, 31 Mar 2025 08:18:25 -0700
Message-ID: <174343424719.2099210.3696172868059904764.b4-ty@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250324-dram-type-v1-0-bf60ef33ac01@intel.com>
References: <20250324-dram-type-v1-0-bf60ef33ac01@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
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


On Mon, 24 Mar 2025 19:28:40 -0700, Lucas De Marchi wrote:
> Improve DRAM type logging across platforms.
> 
> 

Applied to drm-intel-next. Thanks for reviewing!

[1/2] drm/i915/dram: Add missing INTEL_DRAM str conversions
      commit: 8d4bd9bb138a72e5794d6597ee8d1f85f272ef63
[2/2] drm/i915/dram: Consolidate logging of DRAM type
      commit: 930af58421acf971a2f377c07d4cc74f5f520066

Best regards,
-- 
Lucas De Marchi

