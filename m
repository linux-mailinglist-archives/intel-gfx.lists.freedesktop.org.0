Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D68DB846C21
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 10:35:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F08710E11E;
	Fri,  2 Feb 2024 09:35:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GNiTdcv9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2EFE10E11E
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 09:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706866553; x=1738402553;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Pk12KvS9am7NU1bl61zs4c06uJtY1JFJXFeHg2W7QXQ=;
 b=GNiTdcv9Q/W2EU+K0ed/KWUusHbdVs2j7E7Fv1xh9xRelPLF1H+SUwUp
 VlbG28qXj2KGV4ofVlQOdb/Jjjpre2OjMlmmqhYSBWIOyYnOVKf9AaqTT
 FvILR2+ehIwvE29Uy9iDdQFv7txab/S8A2KJyo6EltnE2f3+VD04VZqh+
 JdJfbzgYx9/2+wjUPBU/kXwhCehQ5vE1nbE597sHs7K2BnOhEaMTHX++a
 dmahxCFq+lvzMsT5ORqVy+lcxb0TCFTUQvhpYnug2mjsNvkS16xLYVGyX
 BDvhsh9Bdwaa1qaSowuxhxqG+AOpLVJu2iV1sMBIpVudPGbqqxtNCpjM9 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="35317"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="35317"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 01:35:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="307868"
Received: from mistoan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.140])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 01:35:29 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Paz Zcharya <pazz@chromium.org>
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>, Luca Coelho
 <luciano.coelho@intel.com>, Subrata Banik <subratabanik@google.com>,
 Manasi Navare <navaremanasi@chromium.org>, Drew Davenport
 <ddavenport@chromium.org>, Sean Paul <seanpaul@chromium.org>, Marcin
 Wojtas <mwojtas@chromium.org>, khaled.almahallawy@intel.com,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: Include debugfs.h in
 intel_display_debugfs_params.c
In-Reply-To: <87v878fc5h.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240131204658.795278-1-pazz@chromium.org>
 <87o7d0h73r.fsf@intel.com> <ZbuxsF7ubmL6lzdR@google.com>
 <87v878fc5h.fsf@intel.com>
Date: Fri, 02 Feb 2024 11:35:25 +0200
Message-ID: <87bk8zfbtu.fsf@intel.com>
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

On Thu, 01 Feb 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> On Thu, 01 Feb 2024, Paz Zcharya <pazz@chromium.org> wrote:
>> Thank you so much for the super prompt reply!
>
> FYI, looks like we've got some hiccup in CI, will merge after we get
> results.

Pushed to drm-intel-next, thanks for the patch.

BR,
Jani.

-- 
Jani Nikula, Intel
