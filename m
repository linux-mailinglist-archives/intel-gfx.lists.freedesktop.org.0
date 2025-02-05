Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDE8A29861
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 19:07:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1B6E10E1F0;
	Wed,  5 Feb 2025 18:07:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gT8oaqa9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFDFD10E1F0;
 Wed,  5 Feb 2025 18:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738778821; x=1770314821;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=bkaoYxjwyx1ettbslK8iuFBLnLTTU+LT2P8SStDCHK0=;
 b=gT8oaqa92r5SjzgeBoa5gMHazZyhD3J7WSlUq78rJ/xGHNJeHc+Pmm9P
 X6mkYAg2bNw2Fup9/0rAE021XBYbl5J5lNvAozWCG+xgwAg+5c8lKvbuF
 nCf90n21UU0nU0D5jTMABCCIQJjKS3pb4fTlAxg7a1zLdwIJmidZFD638
 xWBmiAt3PSky4Q4fPYKs8ZFd/TOcsedC35PjmZ51OwAh15LuUBqigaUSu
 QP5MdMh9WCbrlYqyZxHgoU+6G708a/GHmicJlylsp7RtUs0YL8kLldlB4
 lt/Y0ZglnI6NSU5D0J5LaS5MX0WTbcZxOZSGIrT1UxRimiJoJvIvVolFL A==;
X-CSE-ConnectionGUID: QERlfGUYRCG3IHsbIQiwXw==
X-CSE-MsgGUID: 6F3UqWFVSu6n0g3WLyQlwQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39239649"
X-IronPort-AV: E=Sophos;i="6.13,262,1732608000"; d="scan'208";a="39239649"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 10:07:01 -0800
X-CSE-ConnectionGUID: OPyUmF0BRJedvn/wQNv/+Q==
X-CSE-MsgGUID: JpceqtvyT7GZx3uRjIxDqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,262,1732608000"; d="scan'208";a="141853458"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 10:06:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/backlight: convert to use struct intel_display
In-Reply-To: <SN7PR11MB67508B47B517EA6DD93BE4CFE3F72@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250204132423.2910978-1-jani.nikula@intel.com>
 <SN7PR11MB67508B47B517EA6DD93BE4CFE3F72@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Wed, 05 Feb 2025 20:06:55 +0200
Message-ID: <87r04c2rls.fsf@intel.com>
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

On Wed, 05 Feb 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani
>> Nikula
>> Sent: Tuesday, February 4, 2025 6:54 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>
>> Subject: [PATCH] drm/i915/backlight: convert to use struct intel_display
>>
>> Going forward, struct intel_display will be the main display data
>> structure. Convert as much as possible of backlight code to use it.
>>
>> There are some stragglers mainly around PCH checks.
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks for the review, pushed to din.

BR,
Jani.


-- 
Jani Nikula, Intel
