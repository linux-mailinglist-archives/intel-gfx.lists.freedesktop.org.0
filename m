Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C89D56F13F2
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 11:15:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41AF910EC87;
	Fri, 28 Apr 2023 09:15:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96F0210EC87
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 09:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682673356; x=1714209356;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=XizI3acLbQmSVxN64M7PcTj/+Cn3EsyUQK1IKxt1AqA=;
 b=U2CoIM4zCu5f+WbHq29/LJKXZaMVXYG1vpQxFX8RB1k/zTjPDwsCejmj
 2QF9W0i1fKpKdIX/xqfhMLYVo/plw5/BmmJfqQ58hzjXE8clgdXUoN306
 wm3s8FUs0wkS5gdg29OnlzrA4MmysE4gW5fgzz2eGJiRQrQm9nl9jFhJS
 TQ1l7q+osFUgNz0Oo6Co5mQ2vMxRmpPxG8140R4WrN5QCSN1VI6Hi13O1
 BWX8DCHDFOOj5NU5swjMaNe3cu6ti1mq42wJ2C+MU0aiYNifglhvwl4xU
 +uk2c3asXMwMlGTX9OTP0Wg5rAfZCrwRy9OHbJoFHsLADLD6OCkBdNwKj A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="433984712"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="433984712"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 02:15:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="784135452"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="784135452"
Received: from ahermans-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.35.91])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 02:15:55 -0700
Date: Fri, 28 Apr 2023 11:15:52 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZEuOyGFLCjzzznjR@ashyti-mobl2.lan>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
 <20230420124050.3617608-4-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230420124050.3617608-4-mika.kahola@intel.com>
Subject: Re: [Intel-gfx] [PATCH 03/13] drm/i915/mtl: Dump C20 pll hw state
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

> +
> +	if (intel_c20_use_mplla(hw_state->clock)) {
> +		for (i = 0; i < ARRAY_SIZE(hw_state->mplla); i++)
> +			drm_dbg_kms(&i915->drm, "mplla[%d] = 0x%.4x\n", i, hw_state->mplla[i]);
> +	} else {
> +		for (i = 0; i < ARRAY_SIZE(hw_state->mpllb); i++)
> +			drm_dbg_kms(&i915->drm, "mpllb[%d] = 0x%.4x\n", i, hw_state->mpllb[i]);
> +	}

if you're going to resend it, brackets are nnot needed here.

Andi
