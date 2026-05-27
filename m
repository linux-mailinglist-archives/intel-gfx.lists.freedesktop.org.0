Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OIEcIFWzFmokogcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 11:03:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DE95E17BD
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 11:03:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CD5F10E674;
	Wed, 27 May 2026 09:03:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kmP+fLt8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FCF510E167;
 Wed, 27 May 2026 09:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779872594; x=1811408594;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=NWJzwFUbKlh2rQVTc2pSteQO7vo0Gx/XpxbXA+xDEoE=;
 b=kmP+fLt85dfvi7TYhq46zTQs7akB3h1bFWhFI9DcRXSx9oiennC+90QW
 3g2yjATkpS4axn2JPrjrHMh3A6H6k1oQcwXo9fqu/4fCL1w8B/B7amlRW
 mHDuQOF08pihkpRQsF7bzBk/3j3xU5UxCtcafrxvvn3KqZg7dWDOPZU6D
 NROvpxPN7DYaax8aaubBt68f5o1d3IyhTuRQSaxdJ00UeouD7mBguDFgz
 onaRHmPK/BXj2QcYVRaMCxLCyNtlasmZcDytlLY1I2TPKM2tLXIKHYz7o
 TTEZsBOLbA0fB+o01Nag41UiQ787sdB3FG5SUpmFdi5vy51KuhTsubTnO Q==;
X-CSE-ConnectionGUID: X+T/dlKgRo+F9D6oaJsf7A==
X-CSE-MsgGUID: k/4jrK61TValNHSiu0zC1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11798"; a="84587878"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="84587878"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 02:03:14 -0700
X-CSE-ConnectionGUID: ucOYhqvBTWi4fGPB5CWvXw==
X-CSE-MsgGUID: YhxeZkCzTEu0mPu2wdDdpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="241134912"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.38])
 by orviesa006-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2026 02:03:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/3] drm/i915/power: renames, cleanups
In-Reply-To: <ahW03GWPCffJqFvL@ideak-desk.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1779800132.git.jani.nikula@intel.com>
 <ahW03GWPCffJqFvL@ideak-desk.lan>
Date: Wed, 27 May 2026 12:03:09 +0300
Message-ID: <59d4cddad4223e0aea75641a907870ef28416ab8@intel.com>
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: A7DE95E17BD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 26 May 2026, Imre Deak <imre.deak@intel.com> wrote:
> On Tue, May 26, 2026 at 03:55:56PM +0300, Jani Nikula wrote:
>> Jani Nikula (3):
>>   drm/i915/power: make intel_power_domains_{suspend,resume}() static
>>   drm/i915/power: rename intel_power_domains_*() to
>>     intel_display_power_*()
>>   drm/i915/power: drop resume parameter from
>>     intel_display_power_init_hw()
>
> On the series:
> Reviewed-by: Imre Deak <imre.deak@intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>> 
>>  .../drm/i915/display/intel_display_driver.c   |  8 +-
>>  .../drm/i915/display/intel_display_power.c    | 84 ++++++++++---------
>>  .../drm/i915/display/intel_display_power.h    | 16 ++--
>>  .../drm/i915/display/intel_modeset_setup.c    |  2 +-
>>  drivers/gpu/drm/i915/i915_driver.c            | 14 ++--
>>  drivers/gpu/drm/i915/intel_runtime_pm.c       |  2 +-
>>  drivers/gpu/drm/xe/display/xe_display.c       | 20 ++---
>>  7 files changed, 74 insertions(+), 72 deletions(-)
>> 
>> -- 
>> 2.47.3
>> 

-- 
Jani Nikula, Intel
