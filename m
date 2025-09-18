Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA99B84563
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 13:24:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C074C10E714;
	Thu, 18 Sep 2025 11:24:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NF/wU9MT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F2C810E707;
 Thu, 18 Sep 2025 11:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758194685; x=1789730685;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=0XsMPQKXVMVAc+JpMLfvMZqTDJ8+aebT9a7qTG3E4go=;
 b=NF/wU9MT1eHrm3Ivrmpivm/YuuHtOwH6dKgF8o0orxEC/if2Rf6xq9S8
 w+UVsW3uWsOQrBwUxGiSljrH4mt214t8TfGGeNvC0iJB6mFyF29FXQ6wV
 bT6bZaP49vhx1wjPMI1fPLHZpskr8KnlEo0u58BOKTXoShX/P7rcP9EDH
 5x3ASu7wva+Y/Badhwy0kgYPou5Tn20FDZxJol5LV+iEP5ABbkrTs0d8U
 L47yWQlQ3zuQN1F3dosbbD2H4jRbAOInqD+5LdCzC2SZJ1ig/nVpGYZSi
 cJ1NbYg0YNZpvWulAy6oOwWHa/ZO1gSJhTY6td8FLspsgL30DtZXXsJso A==;
X-CSE-ConnectionGUID: B89cWiDzT9mH8yK9rSw9dg==
X-CSE-MsgGUID: bDcTgl6DSLCbH5BDM2pHyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="59561459"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="59561459"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 04:24:45 -0700
X-CSE-ConnectionGUID: 2IuaCbw+SiK7MSGlsm0Guw==
X-CSE-MsgGUID: NwywAJKMTHa3M+sfVffomw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="179513956"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 04:24:43 -0700
Date: Thu, 18 Sep 2025 13:24:41 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 ville.syrjala@linux.intel.com, michal.grzelak@intel.com
Subject: Re: [PATCH v2 11/15] drm/i915: remove vlv_get_cck_clock_hpll()
In-Reply-To: <1e5ef7a14cdf42048a03719cff380fee6c3016e0.1757688216.git.jani.nikula@intel.com>
Message-ID: <4c78cdfb-6b27-7198-804a-173173c97d26@intel.com>
References: <cover.1757688216.git.jani.nikula@intel.com>
 <1e5ef7a14cdf42048a03719cff380fee6c3016e0.1757688216.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-666453907-1758194684=:965976"
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-666453907-1758194684=:965976
Content-Type: text/plain; format=flowed; charset=ISO-8859-2
Content-Transfer-Encoding: 8BIT

On Fri, 12 Sep 2025, Jani Nikula wrote:
> The function has become so trivial it's no longer necessary. Inline it
> at the call sites.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--8323329-666453907-1758194684=:965976--
