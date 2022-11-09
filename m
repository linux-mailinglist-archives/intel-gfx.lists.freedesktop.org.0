Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2132622700
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 10:30:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38D7A10E035;
	Wed,  9 Nov 2022 09:30:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 539B910E035
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 09:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667986236; x=1699522236;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=0wEdOM6r+Gz1bhZDoyOFXvYzVCoJdtpGcvtbN1HQgnU=;
 b=Cc4bplWZR0PQHgCTksff31sv4HeClybbsaID94xopdfy5V5wG+OTjpbZ
 BlxnK6YRNGKUZI7mf+KuscwCEZSEppbttG2YX6c2ffX5eb8Rd/vbz3u0K
 M0+mlZJAV6H5qLYmOl95c4Gg6d1H+Getoy4iWnM4/nNXlWHo93xH+eRb3
 RpsZTWphWasv1kypSq7nDds1pYufw4om43nyZgSjKsWkoZslaVsj5w+l1
 wXiGeH3rmR242TSUfueaMnqkEOP9mfY9XZFKDBipio5LQWRXtwInL6nqq
 xI2aEwk4D6HD+rSNP3vddWh1XkrYEzjILdQuBG80dMeSNBsM7kMZuf3W/ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="291322250"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="291322250"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 01:30:35 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="725914216"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="725914216"
Received: from skorobko-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.15.56])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 01:30:34 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221109022201.3205623-1-ashutosh.dixit@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221109022201.3205623-1-ashutosh.dixit@intel.com>
Date: Wed, 09 Nov 2022 11:30:32 +0200
Message-ID: <8735as8og7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [CI 0/1] drm/i915/rps: Query min/max freq from FW
 when displaying in sysfs
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

On Tue, 08 Nov 2022, Ashutosh Dixit <ashutosh.dixit@intel.com> wrote:
> CI ONLY, PLEASE DON'T REVIEW

This is what intel-gfx-trybot@lists.freedesktop.org is for?

BR,
Jani.


>
> Test-with: 20221108215457.2494061-1-ashutosh.dixit@intel.com
>
> Ashutosh Dixit (1):
>   drm/i915/rps: Query min/max freq from FW when displaying in sysfs
>
>  drivers/gpu/drm/i915/gt/intel_rps.c | 22 ++++++++++++++++------
>  1 file changed, 16 insertions(+), 6 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
