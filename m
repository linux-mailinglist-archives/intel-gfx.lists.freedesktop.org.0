Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAFE7EF38F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 14:13:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FD5810E08E;
	Fri, 17 Nov 2023 13:13:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB0C910E761
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 13:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700226797; x=1731762797;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=jraRIVNiTcu+4vYLjtiF0WcxveuBQlUCr0okny7nOTA=;
 b=b+lJ/flCy8AgEP3F9auWGFvvkfDqSOcuj/GAz7pZSWMUNkFMfrrPem6w
 xr+RfCqwE/zsdQKpvjXVkzPsvUThfABEdU9CeYdGcE67OGYXNihXG2dkt
 flXCk+l3lxmVBBDOTLW0uLD7ZwEtQdEQ7MX0Wg1mFLX0qRkym3C6S4PT8
 Y3TJ9kcl7P8S2RC1HO1PGFaQCLzRlQ88CeAxK39qWCS+55pwIAIVEs6qC
 IvlvWRT89CGm7dj21Le5x84eEqFJC/1T9D2iyDlxtNEq16pgNaVRK4Osr
 DRmV/MQ10M4cqzmW3xBLe/pKLLL+utMHFFw8Hr0Dpdn3TbmqGrb3CJlu5 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="12844051"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="12844051"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 05:13:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="759176659"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="759176659"
Received: from guoqingz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.56.178])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 05:13:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20231114104534.4180144-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231114104534.4180144-1-jani.nikula@intel.com>
Date: Fri, 17 Nov 2023 15:13:11 +0200
Message-ID: <87il60plp4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915: move *_crtc_clock_get() to
 intel_dpll.c
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

On Tue, 14 Nov 2023, Jani Nikula <jani.nikula@intel.com> wrote:
> Considering what the functions do, intel_dpll.c is a more suitable
> location, and lets us make some functions static while at it.
>
> This also means intel_display.c no longer does any DPIO access.
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Pushed the series to din, thanks for the review.

BR,
Jani.


--=20
Jani Nikula, Intel
