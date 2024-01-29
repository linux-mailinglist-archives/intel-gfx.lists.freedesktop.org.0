Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B30840BAD
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jan 2024 17:36:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A0711129E9;
	Mon, 29 Jan 2024 16:36:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CE5B112A0D;
 Mon, 29 Jan 2024 16:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706546181; x=1738082181;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=eag23cA1DSP5+C/9vnc3bUlU0BlgQ8v5d13T2mKkD1M=;
 b=XRax3s2Lsy6RTBHQRnWAsFlgjrj37KOgPjKsXjWdPOJcCqzcHh4R+q2r
 AMsxjAngFQ8C7J9Bq6STnit3vSEXVSMUexrcUg4Rb6uC3rWXEzH/IcVWQ
 9Rq6zL8ZtRFYcOq2yRj/hoxSOzLxzAJLDSy+XcObMfsJ1KUpD720EKEln
 tcNFicxqagL5qobtlAAA80zZP60asz3H6Gb6U7kkCMeZW4a0a7VisACeC
 s4PtZik2lJmCB09kFe6pntMq/ZBICS50cB+6++N9QRIWiZJv8qcU9niV8
 mJGU8Zmlq9BBnlZ32UmPheamWP4zfXYfXomF5M+EveqlUe0cFUN/OvZB/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="10379337"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="10379337"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 08:36:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; 
   d="scan'208";a="3420025"
Received: from hbrandbe-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.59.53])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 08:36:16 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>
Subject: Re: Re: [PATCH v2] drm/hwmon: Fix abi doc warnings
In-Reply-To: <ZbfCsl4xF4ymsSbm@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240127165040.2348009-1-badal.nilawar@intel.com>
 <85ttmyczbz.wl-ashutosh.dixit@intel.com>
 <jtcdppz64bkh66xajht7pb7yoj72mgukdxwumzgihxfgqvu3ss@pwntoir6mrth>
 <ZbfCsl4xF4ymsSbm@intel.com>
Date: Mon, 29 Jan 2024 18:36:13 +0200
Message-ID: <87frygjdvm.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, thomas.hellstrom@intel.com,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 29 Jan 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Mon, Jan 29, 2024 at 09:18:59AM -0600, Lucas De Marchi wrote:
>> no. the issue is not that it doesn't exist, but that the same path is
>> documented in 2 different places. If the interface is exactly the same,
>> there could be just 1 place to document it and then reuse the same file
>> (without the module name). If the interfaces are not identical, then we
>> should differentiate them like is done here.

Completely agreed.

>> 
>> +i915 maintainers
>> 
>> Are you ok with merging this through either xe or i915 trees
>> instead of splitting the patch? My preference is the first option.
>
> it won't conflict with anything we have on our side there, so
> it can go with drm-xe-next.
>
> Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>


-- 
Jani Nikula, Intel
