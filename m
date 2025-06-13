Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 395ACAD8997
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jun 2025 12:38:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5EB610E994;
	Fri, 13 Jun 2025 10:38:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UZ0+TG44";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A544C10E988;
 Fri, 13 Jun 2025 10:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749811087; x=1781347087;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=pK28+wYhdI5OOwIjaTH+OLEF8fxpC9TPqYOS+x7lElY=;
 b=UZ0+TG44ETUU0dwm+ZxWtozDr854UIw2WK0WDQD5Sm3ceb5NFZHrSzQ9
 fwIlmxydvCZZ7ZXKa4s/Xlzk2d4+ixTB6L0H7MRc8u98NoUgF2IFHS/KC
 su9VNLRW5AyTPsVUiMnqqF7CPlQr/BQAHT3Iw3XUxtkx8zi3NIFGZNfCe
 Znhh6ISsy6J7Q5E+VKxw4XKN0O8SGHiuXU9RJLSEqTPELSOyI9S+LSqyc
 AkIxnL725NutayxGfaerASBcNyU1JLJ7fqCDmfRT55js/iZli3jAm4ND2
 In/9TzTAwnEZbxftFk717XnW0zRY6sdkRMpOdLt/8AvTu5NgrRY6AkFS9 A==;
X-CSE-ConnectionGUID: aU8bksvYR7ev5LilPvOu3g==
X-CSE-MsgGUID: ZlFlDs2iTO6AunKm/s4omw==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="51899389"
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="51899389"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 03:38:07 -0700
X-CSE-ConnectionGUID: TjNl/QApRmGwar2lKX+HPw==
X-CSE-MsgGUID: JPLriMcGQDqaj6GClEOruw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="148688834"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.26])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 03:38:04 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/gmbus: Add Wa_16025573575 for PTL for bit-bashing
In-Reply-To: <174981021705.14553.10495600609368679486@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250612075330.837179-1-ankit.k.nautiyal@intel.com>
 <174972962084.14553.9763596946172547950@intel.com>
 <bd3a2162-7fc6-42fd-808c-934720cbc5c2@intel.com>
 <7f079861f91861e9e895240cd3272f6e29deab7e@intel.com>
 <174981021705.14553.10495600609368679486@intel.com>
Date: Fri, 13 Jun 2025 13:38:01 +0300
Message-ID: <b42497874eb7fb36b2b29a8de3ffae6da74809aa@intel.com>
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

On Fri, 13 Jun 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2025-06-13 06:13:55-03:00)
>>For now, you'd manually check for each enum in __intel_display_wa()
>>implementation, but in the future that code could be generated similar
>>to what xe currently has. I'm just not very enthusiastic about adding C
>>language hostprogs with custom .rules files and parsing.
>
> Hehe. Yeah. I'm wondering if something nice could be achieved with
> header files and cpp magic...

Ugh! :)

If it was universally okay to add Python as a build dependency, I'd have
done this already. The rules format could be yaml, json, toml, or
something supported by Python out of the box (not xml though!). The
whole thing could be 100-200 lines of Python without a hostprogs build
step.

drm/msm has quietly added a Python build dependency a few releases ago,
and I'm kind of still waiting to see how it plays out...

BR,
Jani.


-- 
Jani Nikula, Intel
