Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7093EC24C58
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 12:26:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4620E10EB08;
	Fri, 31 Oct 2025 11:26:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HlHRuOE6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CF7910E270;
 Fri, 31 Oct 2025 11:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761909990; x=1793445990;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=TbToPw0Et/lWjjOxbrWHNVSHEL8A9hmT1Ui5AnrBfw0=;
 b=HlHRuOE6XlvrqG/Axztssp5Zz+lAdWPiudI6yO7jjWx1eJhEhxxXyp73
 xfimfDpeXlZLBSeZ0CIssCMpW2TCqXMtdzwGlY9Zv1V6Zize9VCAuVQ/c
 4YK5lIR+AKqFvchhXXww43n/eA2hBBjRpuOlhHQ6+HJuvlB1KEYdkn7yi
 qbB3zD4XM/Hqn+QYvfvRU+CQ8osTu/t4Yiw0YHsmrc2UzlGAw6OFaFs9z
 UU3EDQeYZ+Y6GcAGwAlpmpHKRv3Qf3BxXEqKBPzuya1wZ8EqAkWuBnKmQ
 18GWQ48Vs29gYBzSo6auBJ43Bq9SPxIsmMMwmS/Oqmichm5B3Ve4T6U5t w==;
X-CSE-ConnectionGUID: A1zA4TqhTjS5UM+vTNLLKQ==
X-CSE-MsgGUID: t/kvb26EQZGequ/86I4s1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="67930044"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="67930044"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 04:26:30 -0700
X-CSE-ConnectionGUID: 6Z2oMOTvSjG2GeyeSQSJPA==
X-CSE-MsgGUID: am7HBiUdRZOwp/SfErHLnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="209779343"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.37])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 04:26:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Luca Coelho <luca@coelho.fi>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/6] drm/i915/display: add intel_display_run_as_guest()
In-Reply-To: <5f4a253cd371d420440ad6226888e642e6dbad84.camel@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1761146196.git.jani.nikula@intel.com>
 <469f9c41e0c3e3099314a3cf1a7671bf36ec8ffd.1761146196.git.jani.nikula@intel.com>
 <309c3611169c5362c132ee8496150c74faf22497.camel@coelho.fi>
 <b16635eefb68dfe22ba9c8550cde3f8d4e2ec575@intel.com>
 <5f4a253cd371d420440ad6226888e642e6dbad84.camel@coelho.fi>
Date: Fri, 31 Oct 2025 13:26:26 +0200
Message-ID: <e84842b952a2f0a42a5f6f6c3e7cf0e6c8ccfaf9@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 30 Oct 2025, Luca Coelho <luca@coelho.fi> wrote:
> Arguable but fair points, thanks.
>
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

Thanks a lot, pushed the series to din.

BR,
Jani.


-- 
Jani Nikula, Intel
