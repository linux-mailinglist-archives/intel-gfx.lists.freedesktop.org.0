Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9EBAC3F2C0
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 10:33:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CE8010EA4B;
	Fri,  7 Nov 2025 09:33:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l7fhslpn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F240B10EA4A;
 Fri,  7 Nov 2025 09:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762508035; x=1794044035;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=LyfBMiwlg/QIpIMDvOYuU16FZmvTE+mfssVCP4VNuUY=;
 b=l7fhslpn0Pc+8fdrvfm3Wk7C8VVpof/kHdg3GByoqZZz1OWsA42NWJgI
 DsHL8Hdy9PP2j0bVWGJ4quINvVqwHIInsZOW8zlVymby5XDMvVmv13GcS
 A5SNXPeEDTivk0FSPS4cy6ZTDjkj02iAH7rjOSnMdemdNUptJA5iQQZlu
 j4IbcJwZMZpNJm+HyrldG6nePIucPVhyCiGpVduDG3qiAfnsuvVlp1nQA
 9TnCzDHIcbgFSYPZ1r+0CrUGaemAPch8mDTZB8xwWx6CS10BsLTgLC+/5
 nFpcSPMzRBQORxjoTZT+MyiPsAxTunh2qK1wtx1eMWQ1c/6+EewGSkgHG w==;
X-CSE-ConnectionGUID: 5gfOgvYlTxS+H6JDlIjF8w==
X-CSE-MsgGUID: Tk78uJuBSjOBNgcb8gNqDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11605"; a="68303783"
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="68303783"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 01:33:55 -0800
X-CSE-ConnectionGUID: /fEWBZ1BQv6pL5F0qqznrw==
X-CSE-MsgGUID: GuyTEpOsS6ydJBKnJldDsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="193029504"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.124])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 01:33:52 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, Ville =?utf-8?B?U3lyasOk?=
 =?utf-8?B?bMOk?= <ville.syrjala@linux.intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 5/7] drm/i915/ltphy: Nuke bogus weird timeouts
In-Reply-To: <DM3PPF208195D8D76AD8ACA3763500F851BE3C3A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251105190433.16434-1-ville.syrjala@linux.intel.com>
 <20251105190433.16434-6-ville.syrjala@linux.intel.com>
 <f5d014e2b968f6b758a6c96210528b7607675945@intel.com>
 <DM3PPF208195D8D46BC28CDE4965CD063A6E3C2A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <aQyewv447ln68vnL@intel.com>
 <46ab856eab5fec27a57ce70fd4c6f454c580432f@intel.com>
 <DM3PPF208195D8D76AD8ACA3763500F851BE3C3A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Date: Fri, 07 Nov 2025 11:33:50 +0200
Message-ID: <cc69891e6b0f54df37572a595ba43e4af702bd1c@intel.com>
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

On Fri, 07 Nov 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> > Since you have some idea why these magic numbers were chosen please
>> > redo all of these, and make sure to:
>> > - don't use intel_de_wait_custom() unless absolutely necessary
>> > - if you need to use intel_de_wait_custom() then either
>> >   use the default '2,<whatever ms>' or '<whatever us>,0' timeouts
>> > - document all the used timeouts. This is especially important
>> >   when they are not directly specified in bspec
>> 
>> Yeah, should be intel_de_wait_for_{set,clear}() then probably.
>> 
>> We should probably change all of those from ms to us units to make them
>> more generally useful also for shorter waits.
>
> Sure let me take care of the lt phy and cx0 phy stuff in a separate series then

This is what Ville followed up with [1].

BR,
Jani.


[1] https://lore.kernel.org/r/20251106152049.21115-1-ville.syrjala@linux.intel.com


-- 
Jani Nikula, Intel
