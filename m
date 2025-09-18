Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 652CBB845DE
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 13:32:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6368510E725;
	Thu, 18 Sep 2025 11:32:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LFvMu3wa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6D2910E719;
 Thu, 18 Sep 2025 11:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758195138; x=1789731138;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=FbZ7XCVjcD9sglyXGWozEIhATUy83Ah9te6I4VNO2Wo=;
 b=LFvMu3waxd97t/EqEvibTUl1SxI7gTYJGzcqRd3zxecPlmUvnCtNvoB3
 DNHwMghz3GUSkC9ivaiX7ELuYQgmFNRPzK255t3QPuWTWO120rEGrw7Zf
 SmCvA8sRBUUoRnUZsKr+ktdOmw4r7xLYBWMrse2EQghKnymj7FVBgpe/L
 ZMAwaew9gMxCQ9Bus/lzBF+I1tL7muT+CVQfrbAyZOx1AtgRs60WRyVK2
 5yGx8oTEL4yUruYzf6/fJ8hhbR1PYug9upm+qb77cRyM9MGwvtOQrjBlr
 FwYoPCfSAnvDEJARYnUV1EJr9Gz+ZMicBq3a2eTQNVgiyOTTpRBauNr08 g==;
X-CSE-ConnectionGUID: aUslRv8sTPW9XumflkyCdw==
X-CSE-MsgGUID: hrVzNFlxQQGKSnIHr25PeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="78122667"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="78122667"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 04:32:18 -0700
X-CSE-ConnectionGUID: 8OoNjPzBRaieyx250V2jPA==
X-CSE-MsgGUID: b7X87WkqTdaUG2FojbOJGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="199229939"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 04:32:16 -0700
Date: Thu, 18 Sep 2025 13:32:14 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 ville.syrjala@linux.intel.com, michal.grzelak@intel.com
Subject: Re: [PATCH v2 15/15] drm/i915: split out vlv_clock.[ch]
In-Reply-To: <0bc4a930f3e364c4fc37479f56bf07ccee854fcc.1757688216.git.jani.nikula@intel.com>
Message-ID: <139e463f-7d17-b5f8-4d31-615a9f7f786a@intel.com>
References: <cover.1757688216.git.jani.nikula@intel.com>
 <0bc4a930f3e364c4fc37479f56bf07ccee854fcc.1757688216.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1802015104-1758195137=:965976"
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

--8323329-1802015104-1758195137=:965976
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Fri, 12 Sep 2025, Jani Nikula wrote:
> Move the VLV clock related functions to their own file.
>
> v2: Rebase
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>

BR,
Michał
--8323329-1802015104-1758195137=:965976--
