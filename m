Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A06CF7D4FB0
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 14:25:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15EA710E364;
	Tue, 24 Oct 2023 12:25:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDBEF10E364
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 12:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698150322; x=1729686322;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=bkcFrCIQUAhQKJHVIexDrZKOQl54wR5Z/5DoqNFkc8c=;
 b=fkbIj+AYdHnZ6aGrqvEuPbEEPfYVDXGfHnMSFxJJUZxFZ1kXYd9J7boI
 8R/EclPV61s0KbWC3sHmlAP7Mc+Xx4FGu+Dk4x0lgIOXCp1azXT7jLPGW
 +A9SRZALblWeRZuPYCar67p1ZwKbIuS780YukissNnz/9It+EF0vhVhvS
 fRbJ03owKoNJn3TISxvrTNhy6yNeKrzOpGs5sBfitA7dGyu52wZG7eRcF
 BXx2NtBQF51NlCXRF9KmeZqmay+TgiTVs9wNETfkTT8cRuRczZ/DIFsL9
 B1zc1c7KWBfp9rV6LP2CaskCdAebINcXWabqVrMgd7zhK5NYQoGi6UKTJ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="384243028"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="384243028"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:25:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="787767925"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="787767925"
Received: from yaminehx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.33.158])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:25:21 -0700
Date: Tue, 24 Oct 2023 14:25:18 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZTe3rpRdPZFw6wwq@ashyti-mobl2.lan>
References: <20231023150256.438331-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231023150256.438331-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/pmu: add pmu_to_i915() helper
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

On Mon, Oct 23, 2023 at 06:02:54PM +0300, Jani Nikula wrote:
> It's tedious to duplicate the container_of() everywhere. Add a helper.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
