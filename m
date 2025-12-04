Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1EBCA3AF9
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 13:57:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67D8410E93C;
	Thu,  4 Dec 2025 12:57:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H4Pqavui";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17EC610E93C;
 Thu,  4 Dec 2025 12:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764853034; x=1796389034;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=iGql/nzEZ7/yyGh8BhnyusZ8xpII3CnUSqm8ojN9ZMk=;
 b=H4Pqavuis1wgff/ThiSdqXl5Bz54PHBUOMqKhfRefdo1aFUuVV7nsccA
 TAnRtfB0QMTuygmew9eSyjpuKWKWiAO/nBIFf74M4pvBbgiwhSUx9JAUy
 W9oG/4i7LVdopTx+pl+FNg+Qrplq1ee3N5sQ0tHbC+OyQ4Tr4ASYFSprY
 5xU+AXN/jRujNiC/uXtKA0q4F/+mOdIvabjTBkRiI0ULzFDL98U+7LMAn
 MvPsoR8b37mSAclIO+lwg6WSDL+YamULAg8/bsioc2MWAlWg768VVg8N3
 1+sdqtJHHQBLVmZ6UsXM20JggboJ6nCh72zp+ADf7tbaG0xJvDAHcbZo+ g==;
X-CSE-ConnectionGUID: vw3SEp7RQIeoYNWDqvnpIg==
X-CSE-MsgGUID: M2kXoUkcQHyQz/qjHHhdtA==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="66592642"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="66592642"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 04:57:09 -0800
X-CSE-ConnectionGUID: /Sf2DyNQQ9yOQ0+T3GG6hw==
X-CSE-MsgGUID: w/pX6JW/TBWsXvJjHsZsKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="194871875"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 04:57:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: Re: [PATCH v2 00/25] drm/vblank: refactoring and cleanups
In-Reply-To: <9bcf199f-f83b-4ffe-8498-315b13e52d4c@suse.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1764845757.git.jani.nikula@intel.com>
 <9bcf199f-f83b-4ffe-8498-315b13e52d4c@suse.de>
Date: Thu, 04 Dec 2025 14:57:03 +0200
Message-ID: <a6d77ee74e3d93d7cd2a4019e092a3bcd97eaa49@intel.com>
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

On Thu, 04 Dec 2025, Thomas Zimmermann <tzimmermann@suse.de> wrote:
> Hi
>
> Am 04.12.25 um 11:57 schrieb Jani Nikula:
>> v2 of [1], hopefully addressing all review comments.
>
> I gave an r-b to most of the patches in v1 of this series. Why didn't 
> you keep those?

Aww crap, sorry, I meant to, but forgot. :(

BR,
Jani.


-- 
Jani Nikula, Intel
