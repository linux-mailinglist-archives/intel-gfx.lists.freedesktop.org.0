Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C50798A4F2E
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 14:37:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 150EB11251C;
	Mon, 15 Apr 2024 12:37:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k0avwQhr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D8A3112516
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Apr 2024 12:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713184629; x=1744720629;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=20jkxxt3R2he2f0sMfGnQeXNlMZJYLmWFWaF5ONDEzo=;
 b=k0avwQhrs88upiEUTKpUdA5zYzGxL4SfhgSSWN1eIqPbeC5CrUUlSYyl
 /b57t5SLijIBjGRKt+GWgmlFP8c/LFGFLGZj2jx/pzlPSFrmS02/8RxwJ
 eZMpvW05pJ9KUBbtgTOr/H8FjJYzQp8qx47bHZQM0L/a06Nji/IDxzRg1
 8W8iExPh0N5dVEi274DP5e8c/g+TeigrLwLqMHx2OOm8uq4+P9SHS1tmd
 8ctDHbFKtMZIb2NrGEJeYyNK4NIpqwUnzNejZc23aRScNVSMn7RTnoMDx
 8nl8jtzUaJTD4zfVgD0AgN+xDbRnJBLJE/kdQE1YiEAc4Q73Zzjw41W2K Q==;
X-CSE-ConnectionGUID: JlZLzVIsTViAWaekEnydJw==
X-CSE-MsgGUID: 7rnRDMxuSGmdeEIH+NHY7g==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="12350828"
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="12350828"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 05:37:08 -0700
X-CSE-ConnectionGUID: /rHCzM3LTfKFUClKemaQbw==
X-CSE-MsgGUID: W0tnCAxdT8am51rIHHv+Vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="26533811"
Received: from lcariou-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.61.121])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 05:37:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 4/8] drm/i915/dpio: Introdude bxt_ddi_phy_rmw_grp()
In-Reply-To: <20240412175818.29217-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
 <20240412175818.29217-5-ville.syrjala@linux.intel.com>
Date: Mon, 15 Apr 2024 15:36:56 +0300
Message-ID: <87jzky3iqf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Fri, 12 Apr 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Add a helper to do the "read from one per-lane register
> and write to the group register" rmw cycle.

This doesn't turn out to be such a useful helper after going per lane,
but there'll still be two users. It's fine.


--=20
Jani Nikula, Intel
