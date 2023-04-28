Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F036F13EF
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 11:14:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD24110EC87;
	Fri, 28 Apr 2023 09:14:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D74FB10E2F7
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 09:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682673269; x=1714209269;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=3/5EaY9gfkRWIqT2rLKhG0238wNlPdzJwkHQ8ZzLc5w=;
 b=NWY8/uQR0ia+HDdVPiOiTVQOGarJxC/wUvnItDUqqBW343yKNLuRUcpV
 ZMbRoFm8VU8njfaKVrYCXzYgC63lR9CPLWuDdDEEUl2pEcvcDW94MhVEl
 sz+PGhRy6bleDBKf7Xs8eqY8vqFp3EL998G0xhPbZiEtPUpn8sn91slgS
 BVvdYaRMRoUZsUOwOEt1jVFWviGMs2PX21wN0yP/EkrSS1qF1nbrpW/1p
 4LtAja+Y2VT+ZumZjyJRyzhW/+13gwZBeNa2Gj+Qyy2cvsgn2kA1IyXC/
 +rI8n1cPx/rYqkZ/DXJ6bj4fZf1T40ZHbNWqXOK2kOu8pIm20et2jXJyb g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="433984514"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="433984514"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 02:14:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="784135228"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="784135228"
Received: from ahermans-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.35.91])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 02:14:27 -0700
Date: Fri, 28 Apr 2023 11:14:25 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZEuOccyrdXTL8BLY@ashyti-mobl2.lan>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
 <20230420124050.3617608-3-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230420124050.3617608-3-mika.kahola@intel.com>
Subject: Re: [Intel-gfx] [PATCH 02/13] drm/i915/mtl: C20 HW readout
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

Hi Mika,

[...]

> +static int intel_c20_phy_check_hdmi_link_rate(int clock)
> +{
> +	const struct intel_c20pll_state * const *tables = mtl_c20_hdmi_tables;
> +	int i;
> +
> +	for (i = 0; tables[i]; i++) {
> +		if (clock == tables[i]->link_bit_rate)
> +			return MODE_OK;
> +	}

because you are going to resend it... you could remove these
braces here... there are a few cases below, as well.

Andi
