Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0CD72040D
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 16:11:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6EE110E6A0;
	Fri,  2 Jun 2023 14:11:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 222D810E6A0
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 14:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685715110; x=1717251110;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=5FEPCZt3Mxdt4ORhiAmr96/Cd1VSJJuNBPFTEXQXquI=;
 b=CxIlcAEyKwieNUfckmSvaY1l2D79eIZyBAM5dfnbksdvn9o7zbA8RWhp
 uAvHzBsV5wfcQyRrNoB3wl0mavoe87MMUSJpeskfDVhc1mvwNE+FR00JW
 lYemy/NTmyWQFRSBOfrH3tp077Cs3kktsrvFHYeiJ0ZIZ0vFy6jfEVbJC
 5bRcsSFgOMA/5aACq4xbhhmbwgNiJvkWd+WHpsPwB2F68iyMLZzwTdo/0
 dJjVgLdXV/0FI2lh8clzFuMwB2leYVBOqD7WQ7Nh2T82RNiowK3sk/btQ
 MYmWMRwfX2E8zgkQ1iv70WfoObCRFy9LUDlmcU2dgt3UnUeBcoEMAwxBz w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="335489271"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="335489271"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 07:11:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="772897348"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="772897348"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.111])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 07:11:48 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230531134806.23065-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230531134806.23065-1-ville.syrjala@linux.intel.com>
 <20230531134806.23065-3-ville.syrjala@linux.intel.com>
Date: Fri, 02 Jun 2023 17:11:45 +0300
Message-ID: <87sfbadkda.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 2/7] drm/i915: Introduce device info
 port_mask
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

On Wed, 31 May 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> @@ -556,6 +590,16 @@ static const struct intel_display_device_info gen11_display = {
>  
>  static const struct intel_display_device_info tgl_display = {
>  	XE_D_DISPLAY,
> +
> +	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) |

Where does port C come from? It's not in intel_setup_outputs()
currently.

> +		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4) | BIT(PORT_TC5) | BIT(PORT_TC5),

TC5 duplicated, TC6 missing.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
