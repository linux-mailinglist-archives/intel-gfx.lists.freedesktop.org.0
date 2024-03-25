Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D69D788A273
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 14:37:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7332910E0EC;
	Mon, 25 Mar 2024 13:37:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Umbeq7px";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 716AE10E0EC
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 13:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711373871; x=1742909871;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=wi51kVqDnrY5c7eMq/gbAUBJnrbgDS6/PbRFVOMLBWs=;
 b=Umbeq7pxcCAmkaNpZaTezbn/0/EiHXaNuV/Ctvo6pXM2CvLQ4OU1/IYk
 YqKqPMVmp93pCg8d4lQgU5lfDRtye5woFqTARk1WGqX2q4WSf2sb9naSZ
 op896AQqWwstiM98stFcIhZLbdUdFSF0s5fhVPY8v2cccNdTu/paTSWRH
 8UbYkq36BJQYPoS1yEFw6KeMOpKfs9/fTP6kSZUDRDsF7mitwyyHFflAs
 7ERZLBrGWYty/jVEIcxh0+g//p3t/gQD5NkFdw1EduCkJ99zO3n/ze+no
 QTGEn/jYltjx+dLRUN/C6lKn1zqIdABGod2QeANlAblnwfOHv9qsfC9NL g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11023"; a="23823572"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="23823572"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 06:37:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="20271918"
Received: from idirlea-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.171])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 06:37:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [CI 0/6] drm/i915: cleanup dead code
In-Reply-To: <ehevynn5lwgtr6dqthfni4udtwi6hhmryyzxwpnuvaii6xkfkz@ujva5eopumvb>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240320060543.4034215-1-lucas.demarchi@intel.com>
 <877chqk524.fsf@intel.com>
 <ehevynn5lwgtr6dqthfni4udtwi6hhmryyzxwpnuvaii6xkfkz@ujva5eopumvb>
Date: Mon, 25 Mar 2024 15:37:46 +0200
Message-ID: <87y1a6ig9h.fsf@intel.com>
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

On Mon, 25 Mar 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Mon, Mar 25, 2024 at 11:56:51AM +0200, Jani Nikula wrote:
>>On Tue, 19 Mar 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>>  .../gpu/drm/i915/gt/intel_workarounds.c.rej   |  18 +
>>>  create mode 100644 drivers/gpu/drm/i915/gt/intel_workarounds.c.rej
>>
>>Whoops. [1]
>
>
> argh... sorry about that. Should I just amend the commit removing it? Or
> a real fix on top?

No force pushes, so a fix please.

BR,
Jani.



>
> Lucas De Marchi
>
>
>>
>>BR,
>>Jani.
>>
>>
>>
>>[1] https://lore.kernel.org/r/20240325083435.4f970eec@canb.auug.org.au
>>
>>
>>-- 
>>Jani Nikula, Intel

-- 
Jani Nikula, Intel
