Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD95A03F63
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 13:37:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6AC610E30B;
	Tue,  7 Jan 2025 12:37:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W6EGfqTC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EE2110E30B
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2025 12:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736253455; x=1767789455;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9p/Eepfj3pNapG2VgCEFlX7IhSzb16UpqMzB3iRPdW8=;
 b=W6EGfqTCmAmnDm8/ZbJmlWTQRJZYJSmEa2xZJZu2lqZlxCknD3Ub2m+H
 5tx2OuBOnaDKKyVpk3F58yU1awop/waYq5PXcTFzVHFs2E5ncuO794DV3
 vQTtLLcUDg7Cw3hdBiwnbDS01kY9ud2u0cuEaMMiq3g/xDdrIIbHJKSAZ
 G7/jgctX/L5Rhl5osTXjaKwnZKKcY5EvzDUVAbRmkQdhzmZNlP4yqWbGW
 U+cAd0rMUcz/9nnu2QesEPn+U73w/e9C1xTwEro0/n3ImWm3HrKS3Mk+b
 dYpQ+9x9PiqufJS+SoqKbHM8mGyOX+txI17VsI87ZwMVbNQkBrxhqeKm6 A==;
X-CSE-ConnectionGUID: GYeZU1zmTG2hjnDz9YBtHw==
X-CSE-MsgGUID: idqpjGlsQkqixd+N8cHb/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="36593641"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="36593641"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 04:37:35 -0800
X-CSE-ConnectionGUID: EQjqhFBlS4+ZPZ8lrRxdkQ==
X-CSE-MsgGUID: Hj43joI1SiuHPGOQVT+6FQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106780575"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.98])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 04:37:33 -0800
Date: Tue, 7 Jan 2025 13:37:29 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v1 3/8] drm/i915/gem: fix typos in i915/gem files
Message-ID: <Z30gCbM5yonLki_u@ashyti-mobl2.lan>
References: <20250106103037.1401847-1-nitin.r.gote@intel.com>
 <20250106103037.1401847-4-nitin.r.gote@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250106103037.1401847-4-nitin.r.gote@intel.com>
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

On Mon, Jan 06, 2025 at 04:00:32PM +0530, Nitin Gote wrote:
> Fix all typos in files under drm/i915/gem reported by codespell tool.
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
