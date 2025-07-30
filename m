Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4DDB15F27
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jul 2025 13:18:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A26210E1E9;
	Wed, 30 Jul 2025 11:18:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QUHwt2nW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32A4A10E1DF;
 Wed, 30 Jul 2025 11:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753874302; x=1785410302;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=t0ejpR8IQbxsMHqtnT89W08zsv2WKywm9SjCHzeDXwU=;
 b=QUHwt2nWtxATvbrYfaf5B59g3Bubz2NgVY2/i1SfmNNG/grmKa6xvUvH
 G+78ig+DQfroG4V/DnNXfQwnHeqQuc1yqY7VxAMWVom1R+icRNzIsOpn6
 xxhRae5OWY/VUTK56sQS6WpVa2yrTt+k7Pv4sWfMeR/8S0D78xbrDRHd7
 I3bhEY3l4nxhlw4Cu7Ym+36iaxIU2v5Hfb3iy+lamE9uZtQnqTBj0X+hH
 fyRrPoXHWRi8L5MbXs3SlCq47f5Y3EkOYNI9U+zR71iDHZTeLuNDk559s
 oiFE0JFOCPTVccH8Fbwy9TGlwYDW6xcW820UwVP5R6cT240sMCDQeX8S2 g==;
X-CSE-ConnectionGUID: NQ20Hk+RSLSi5xjt/oap7w==
X-CSE-MsgGUID: UKs2CrLLQHuE5qV/0vj7uA==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="73759344"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="73759344"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 04:18:22 -0700
X-CSE-ConnectionGUID: 1rX3xvXVTHyxd2N7bYOKJg==
X-CSE-MsgGUID: zvgzea4oRlqjWZvn+Mm2vA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="168267976"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 04:18:19 -0700
Date: Wed, 30 Jul 2025 14:18:28 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tomas Winkler <tomasw@gmail.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 linux-mtd@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] mtd: MTD_INTEL_DG should depend on DRM_I915 or DRM_XE
Message-ID: <aIoNlFucSI18G0oX@black.igk.intel.com>
References: <07f67ab8ee78f6bf2559131e193381aafff7479a.1753870424.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <07f67ab8ee78f6bf2559131e193381aafff7479a.1753870424.git.geert+renesas@glider.be>
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

On Wed, Jul 30, 2025 at 12:21:49PM +0200, Geert Uytterhoeven wrote:
> Intel Discrete Graphics non-volatile memory is onlt present on intel

only
