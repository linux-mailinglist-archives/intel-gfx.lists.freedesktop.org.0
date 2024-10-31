Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 059D69B7B31
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 13:59:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15A5E10E886;
	Thu, 31 Oct 2024 12:59:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L5FQQF04";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E0EB10E886
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 12:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730379545; x=1761915545;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=J0vKpB39acEiCRE2+Tf6nC8cPL/W+9U14lZHnbb1VWk=;
 b=L5FQQF04U4F6FusYkT8jeiv6EAbbRKMxQJXqG0JJMkOVK+XQl4v5treH
 UAruAGiwsWeMUHNHJnR9le1pAAnQzGlRb0yqyTpMQ/4wJSRi7d5d2+Ha0
 z267D//I16/Zd3S/uiA8TrLeeP/v/wKjWntzI+0EcGCHV2QDNAh/lvw3g
 zZcswe1aPOjcrcTrcwH/LkMkO5jdFzGxQFY16tN9M1yiEy44H9HQTK5k7
 3jGlln5rWHMY0MstKccgpjIF7kiA4woGLxe5q3R9o6Nuijs4lXx0/b0Sy
 gtpQPSYsj/EkoRrCiTIFC8m74ORKM77+Br2GhuEBxFQLIxP/q01+Ri79v w==;
X-CSE-ConnectionGUID: f7gtKROlSnKJ+Ud7REDN7g==
X-CSE-MsgGUID: so8rHMRmRGqDsEAUMStqoQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11242"; a="17754983"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="17754983"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 05:59:04 -0700
X-CSE-ConnectionGUID: eaJTa07uTsa+iyzh7cFVcw==
X-CSE-MsgGUID: 59u8T1w7Qh6x6X/74x6MFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="105955657"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 05:59:03 -0700
Date: Thu, 31 Oct 2024 14:59:00 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Cc: intel-gfx@lists.freedesktop.org, gustavo.sousa@intel.com,
 jani.nikula@linux.intel.com
Subject: Re: [PATCH v3 0/2] drm/i915/display: Power request
 asserting/deasserting
Message-ID: <ZyN_FKqlDfQBH_24@black.fi.intel.com>
References: <20241031114027.225217-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241031114027.225217-1-mika.kahola@intel.com>
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

On Thu, Oct 31, 2024 at 01:40:25PM +0200, Mika Kahola wrote:
> There is a HW issue that arises when there are race conditions
> between TCSS entering/exiting TC7 or TC10 states while the
> driver is asserting/deasserting TCSS power request. As a
> workaround, Display driver will implement a mailbox sequence
> to ensure that the TCSS is in TC0 when TCSS power request is
> asserted/deasserted.
> 
> The sequence is the following
> 
> 1. Read mailbox command status and wait until run/busy bit is
>    clear
> 2. Write mailbox data value '1' for power request asserting
>    and '0' for power request deasserting
> 3. Write mailbox command run/busy bit and command value with 0x1
> 4. Read mailbox command and wait until run/busy bit is clear
>    before continuing power request.
> 
> while at it, let's start using struct intel_display instead of
> struct drm_i915_private as well.

Perhaps this needs to be its own patch since it's unrelated to the series.

Raag
