Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8943BC72F79
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 09:52:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B14D10E711;
	Thu, 20 Nov 2025 08:52:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jiy8ZaO0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AE9810E711;
 Thu, 20 Nov 2025 08:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763628745; x=1795164745;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=Nu2y9XC7LIG6mQtDSxIJKOPYi1ARIKfFQ5Y1Z2vvkpo=;
 b=Jiy8ZaO0K8rVgxuvxmLNab2RAgWyBqpuhZq+vXtJ84b3Kk1YHQMhJVwM
 B7ViDSdz99EDCSyM99HPZxrykvf9OVLqpOehy8wpD2mIzmxNCtanCiZM5
 JtFVefCJvoitXIgsq/YEhZjopfdp5SU8LXQwgbo96Ou5yhhp6j8Myu3i2
 z/GOxrWSG3m/yc3/FD0MhB5YY0PUMrDXgXPFwVCT2I4Kc8/lSstJ5+WVr
 VGCenzPKvVsxERSdPhfyM8t5bVEEG+NRD3YHDdREt5JZ5eYQk9rY3yaHo
 dcOA84cl+nTOLSiWuGMxkWvL0c3aAJ5z+k8AOfkuQiN6I5Srxt3k4XSD2 A==;
X-CSE-ConnectionGUID: 8YdCjBlOT/aPi7OjJmTT+Q==
X-CSE-MsgGUID: Q8T/EoieS82Al1as3cm1Gg==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="69307358"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="69307358"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 00:52:12 -0800
X-CSE-ConnectionGUID: jPKMf5s3RFGLiYpVS7O70A==
X-CSE-MsgGUID: kBnNjoV/T9y2ESvWwog9/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="228615779"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 00:52:10 -0800
Date: Thu, 20 Nov 2025 09:52:08 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 jouni.hogander@intel.com, ville.syrjala@linux.intel.com, 
 animesh.manna@intel.com
Subject: Re: [PATCH 2/5] drm/i915/alpm: Allow LOBF only if window1 > alpm
 check_entry lines
In-Reply-To: <20251119135152.673276-3-ankit.k.nautiyal@intel.com>
Message-ID: <8d01a6a2-048b-4680-9003-99c01a44668d@intel.com>
References: <20251119135152.673276-1-ankit.k.nautiyal@intel.com>
 <20251119135152.673276-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-444486769-1763627703=:275675"
Content-ID: <caa8f7ce-858e-be9e-fe87-b75d6c141baa@intel.com>
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

--8323329-444486769-1763627703=:275675
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <1fdd42bf-462b-cca2-c227-3d0583c43f4e@intel.com>

On Wed, 19 Nov 2025, Ankit Nautiyal wrote:
> LOBF must be disabled if the number of lines within Window 1 is not greater
> than ALPM_CTL[ALPM Entry Check]
>
> v2: Consider the case where SCL is in the active region. (Ville)
>
> Bspec:71041
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--8323329-444486769-1763627703=:275675--
