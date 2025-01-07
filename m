Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9D0A03F36
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 13:33:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD55410E6E8;
	Tue,  7 Jan 2025 12:33:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M6L1OO9k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF98F10E6D9
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2025 12:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736253181; x=1767789181;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=1YVfX2xadMO/odrwdlrBChljk2NuGyYZ3G+3B5MbPc4=;
 b=M6L1OO9kJHWN8f0lpNVE5/zDZ1v64LMe5ZegZJyW3Tm49E1g4BkZL0Jk
 YQSD97XpTJ4cXBcEPm/9eJQCMXT7KdhvwZO63eHJ+isGcjRVb4lSt5U9x
 UrAEpUs5kZnanC1bijcDshsdYJiTeBQZCwTYRQcI9C/OeRlDit7QeGqDb
 TCOFy5W7m0DkJFB7i+yfM/v+1pANI3Df8ah/zqWEwtPRseg7Jm2tn/fnQ
 jwh0C3iTUMuINtScPYaP8yaD0d9F2eQdeA5OPRaJbhFjxxKEb/7j4NOsp
 XSkY5nwFlkKivpLHa0qsR6EdGiE6ZkBWoXaYIPZVcAiWlbNRkLQaAk73d Q==;
X-CSE-ConnectionGUID: EPQjlnTNSy29w5lXtTqlFw==
X-CSE-MsgGUID: H33BJFJwSbigun14h236TA==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="47850664"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="47850664"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 04:33:00 -0800
X-CSE-ConnectionGUID: XxV3RA3ARuOxlAQCpA4JHw==
X-CSE-MsgGUID: SuPtm5RORlC38eSKLWFNKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133646762"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.85])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 04:32:57 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Aditya Garg <gargaditya08@live.com>
Cc: Ashish Arora <ashisharora.linux@outlook.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, Linux
 Kernel Mailing List <linux-kernel@vger.kernel.org>, Orlando Chamberlain
 <orlandoch.dev@gmail.com>
Subject: Re: [BUG] The bottom and right edges on the tty are not shown on
 Apple T2 MacBooks with Retina display
In-Reply-To: <EB3BFFE1-88C0-4C6D-815E-47F43CB618D3@live.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <31D69334-DEF9-41B7-968B-B847796926FF@outlook.com>
 <02E00F62-D48C-4F34-9F81-BE75A1833795@live.com> <87bjwom1be.fsf@intel.com>
 <EB3BFFE1-88C0-4C6D-815E-47F43CB618D3@live.com>
Date: Tue, 07 Jan 2025 14:32:54 +0200
Message-ID: <8734hun6rt.fsf@intel.com>
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

On Tue, 07 Jan 2025, Aditya Garg <gargaditya08@live.com> wrote:
> Here are the logs requested as per the link you sent me:

It also says, "Please file issues in the drm/i915 issue tracker for i915
driver bugs"

I was looking to have that issue created with the logs attached there
instead of mailing lists and pastebins and whatnot.

https://gitlab.freedesktop.org/drm/i915/kernel/-/issues


BR,
Jani.


-- 
Jani Nikula, Intel
