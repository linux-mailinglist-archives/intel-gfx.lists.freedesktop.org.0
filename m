Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4878E47BA55
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Dec 2021 07:56:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8309D10E15F;
	Tue, 21 Dec 2021 06:56:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4031C10E15F
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Dec 2021 06:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640069802; x=1671605802;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=2Cf2GgbGYJpuy+NiVr4Yqkz7dluD8pQC+crDqDGrTlo=;
 b=Sjzek9Dapi1aNp+L8B6T4RT62xJuLW564XIHbG/j2gSXKns8OExa8tmf
 v/eMDFPNODpkhgrKHFoSDEZdvFCDYm35EDIerBYCrZqhpJo3TrD1Y7dTC
 qtnpUYS6mH5n8cwhkXaTSf048Dgumc4KNwTXxyduejv026TMlQvZolQyV
 1vG5lM78VHFBLbpb6srjRHloNmDsi4qogYhE7UvGJ9RPMTC7gCa+3ty4F
 ptRG/FmQrGPhob0TIJ222LDfxAYtjc2d1YD9hbgknzLIPPd0cPOFKrDCc
 SF0jM6wLGioeU2ESsP76K3w4i9nk3+MHvjRbE8lLJKcgBdv6wk7t61MyD Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10204"; a="326638756"
X-IronPort-AV: E=Sophos;i="5.88,222,1635231600"; d="scan'208";a="326638756"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2021 22:56:41 -0800
X-IronPort-AV: E=Sophos;i="5.88,222,1635231600"; d="scan'208";a="616671339"
Received: from rezra1-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.22.155])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2021 22:56:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20211220063540.19636-1-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211220063540.19636-1-animesh.manna@intel.com>
Date: Tue, 21 Dec 2021 08:56:36 +0200
Message-ID: <878rwe1m57.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: pps_lock moved to encoder to
 support dual EDP
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

On Mon, 20 Dec 2021, Animesh Manna <animesh.manna@intel.com> wrote:
> @@ -359,7 +359,7 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
>  				    struct pps_registers *regs)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> -	int pps_idx = 0;
> +	int pps_idx = dp_to_dig_port(intel_dp)->base.port;

I thought we get the index to use from VBT, both for PPS and backlight.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
