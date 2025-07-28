Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BB5B13A07
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jul 2025 13:44:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE63110E4E7;
	Mon, 28 Jul 2025 11:44:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EF73eKL1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00BE010E4E1
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Jul 2025 11:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753703088; x=1785239088;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Fxw/pUEDaGj4mfFdhsow/Oia05gNbesuqSp2sogLdmc=;
 b=EF73eKL1EUNxNrVBvBxH4qXWQkOzu40a0GroyWdNZMkQ1pKpjXOpMPx2
 FE6OE/tCbR1wHx8KffM/O/fiD/rZFlBYjZ/UQiM6/5ygBFOBrkBJL/SI0
 6QxR3Cvw7jiNqLlEYWdyUMQyQBaTPKRn8MqMJotRb6cSDFi5kLu+uwX1e
 /QNHaNCnfVLf23ySoETOgCrEMku6SmGI2tmV3Ngd2p6pcyMvlWddQui3M
 WdxtoDwPD4razz4ln9vxOCvtf1LqAMZv5iewPIgn9vQHz8DdsF4VKh2d5
 RSdpIe+NDYpYljZ04wP+vYFF0o0dk3cp/poioxtGyfG43FAUFbRXxgQ7/ g==;
X-CSE-ConnectionGUID: 6OMITQR6TvqXnpvWPrqXBQ==
X-CSE-MsgGUID: 0/Zs96YzRmOJT2bHroAYjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11504"; a="55026824"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="55026824"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 04:44:48 -0700
X-CSE-ConnectionGUID: I7RX+56VRn+DxS9tv0AZIQ==
X-CSE-MsgGUID: APr1ogqzR0Wq4kJUT4O1cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="167726569"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.225])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 04:44:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: imre.deak@intel.com, Ruben Wauters <rubenru09@aol.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: Fix selecting CONFIG_DRM_KUNIT_TEST in debug
 builds
In-Reply-To: <aIKJq1spwgBWgxbn@ideak-desk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250724090237.92040-1-imre.deak@intel.com>
 <aIJey5rLh_lBaEtu@intel.com>
 <954507fb83b5f83c7b8fb609fa84d0c7d8455fff.camel@aol.com>
 <aIKJq1spwgBWgxbn@ideak-desk>
Date: Mon, 28 Jul 2025 14:44:42 +0300
Message-ID: <c0d124c8f4a2799253f0b9402f42c6bfe39c396c@intel.com>
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

On Thu, 24 Jul 2025, Imre Deak <imre.deak@intel.com> wrote:
> On Thu, Jul 24, 2025 at 05:31:28PM +0100, Ruben Wauters wrote:
>> On Thu, 2025-07-24 at 12:26 -0400, Rodrigo Vivi wrote:
>> > On Thu, Jul 24, 2025 at 12:02:37PM +0300, Imre Deak wrote:
>> > > Selecting an option which depends on other options only works if
>> > > the
>> > > dependencies are guaranteed to be selected (as these dependencies
>> > > will
>> > > not be automatically selected). CONFIG_DRM_KUNIT_TEST depends on
>> > > DRM,
>> > > MMU and KUNIT the first two of which are guaranteed to be selected
>> > > for
>> > > i915, but the last one is not. Hence, selecting
>> > > CONFIG_DRM_KUNIT_TEST in
>> > > i915 debug builds may result in CONFIG_DRM_KUNIT_TEST being
>> > > selected
>> > > without the CONFIG_KUNIT dependency being selected. This causes at
>> > > least
>> > > the following compile error:
>> > > 
>> my bad, I guess I fundamentally misunderstood how the Kconfig system
>> worked, and assumed that if you selected one all the dependencies were
>> automatically selected. I guess this passed me by in testing cause I
>> already had CONFIG_KUNIT selected and didn't think to de-select it,
>> apologies.
>
> IME, it's easy to get the Kconfig dependency semantics wrong. Unless I
> get it wrong, 'depends on' will never select the options listed after
> it, it only determines if its parent option is visible during manual
> selection (and similarly if it's valid to select the same parent option
> from an other option automatically with 'select'). Maybe 'depends on' is
> a misnomer and 'visible if' or 'available if' would better describe its
> purpose.

The problem with "select" is that it will force the symbol to a value
without meeting the dependencies recursively the same way "depends on"
does.

Per kconfig-language.rst, "In general use select only for non-visible
symbols (no prompts anywhere) and for symbols with no dependencies."

BR,
Jani.

-- 
Jani Nikula, Intel
