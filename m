Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F11E0C72F7F
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 09:53:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87CF710E716;
	Thu, 20 Nov 2025 08:53:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n6Fg/hTR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FD6310E714;
 Thu, 20 Nov 2025 08:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763628783; x=1795164783;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=26AVO27fINz1+nDqzjwJNjGI2v4GneuTyjHhYsAJe7g=;
 b=n6Fg/hTRVVMYlic0/yrMaDT74qxXk3eN6jOR55+LfZK4WfXel32NvjWD
 ST0KihBL+JFmPiYplyRYYjmuqHjBIjhluy/7kENC6pZkAn+UsEvGpotC5
 EWs6M9WyOZc2B9J6byMPBmi1CpJWm/PqLPBPF114R5OaCQe7qDZNLa46t
 A699XdbpIo5Mhn/XGDWwExbuwe7NP0ngcckT+z+B47PlDsv1qm5Y1Npaw
 lmxEgACwocBWo+MjSQZsjFNvbp9vrUJfepWK+YIBDe3gVEpeIrKOYqP9P
 zOcWpLSSHZEOOdaDOyJ/cKybPVLmLywvxzJ9LH/NG4Ok1cXavYiWC4K6m A==;
X-CSE-ConnectionGUID: zCIOJxoEQhiCwgPIf9q4AA==
X-CSE-MsgGUID: OoghoQENSnCLayLNwBx0pg==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="69307524"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="69307524"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 00:53:03 -0800
X-CSE-ConnectionGUID: wUIOUpEIQTqoG7tGrjnU8w==
X-CSE-MsgGUID: n5GQ8A6hSiahWdt5cKBeng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="228615858"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 00:53:00 -0800
Date: Thu, 20 Nov 2025 09:52:58 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 jouni.hogander@intel.com, ville.syrjala@linux.intel.com, 
 animesh.manna@intel.com
Subject: Re: [PATCH 4/5] drm/i915/alpm: Simplify and align LOBF checks in
 pre/post plane update
In-Reply-To: <20251119135152.673276-5-ankit.k.nautiyal@intel.com>
Message-ID: <ecc0624c-a8f3-62bd-d97a-4caae1489ce8@intel.com>
References: <20251119135152.673276-1-ankit.k.nautiyal@intel.com>
 <20251119135152.673276-5-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1364919136-1763628185=:275675"
Content-ID: <466f3e68-a6ff-e8a1-f9d7-4d5be14c00b2@intel.com>
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

--8323329-1364919136-1763628185=:275675
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <ab496e36-c795-bbda-ec3c-d8d9ffef1b45@intel.com>

On Wed, 19 Nov 2025, Ankit Nautiyal wrote:
> The pre_plane_update and post_plane_update hooks essentially
> disable/enable lobf feature. Use the existing _is_enabling/is_disabling
> logic for this in the pre_plane_update and post_plane_update paths.
>
> Also rename the helpers to intel_alpm_lobf_{en,dis}able().
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--8323329-1364919136-1763628185=:275675--
