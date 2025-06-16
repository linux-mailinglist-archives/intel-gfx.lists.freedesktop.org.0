Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34606ADAA88
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jun 2025 10:18:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C60AF10E2DF;
	Mon, 16 Jun 2025 08:18:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WG4c9r5z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90F4010E2DD;
 Mon, 16 Jun 2025 08:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750061911; x=1781597911;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=kCuE4KyG97M5pODntl3QQffNMuZGSfuTpS/w7AJk3L0=;
 b=WG4c9r5z+W9JAihUu0bAbQqBFOhZ4paVc5IN3sZd7p8Mc7yD5IlsXNYJ
 HEAZyhpK33P5qNTLUs7ouyGrDa5twqxQZndmLQozAINJF9K8n2z0qZOOn
 cXNegBZqb7hXcMjBHqpD03kV+QhE1NYuzbiUCWaFZbV81QqTzBv7ta9P5
 RAHa9h6h9yzZzciz3yJC+uMW0nIo3r50bHo5tXFvcr0b7aE1JbcsD40hh
 TCHYgLrFH5h9qc25YAQOXoPi3GhLkO7knN0kTCBPRCdx89UpxY+/+Tdjw
 YiIrYt6m16pPnduT4OswyL3v6LtEw5gKIkknLq7QMpYEbSthDAJ5AUIzL A==;
X-CSE-ConnectionGUID: 8Bt4ACz/TtqhL1FTaTsmHg==
X-CSE-MsgGUID: xa9FglBTRTafVptqVcb9ag==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="51307272"
X-IronPort-AV: E=Sophos;i="6.16,240,1744095600"; d="scan'208";a="51307272"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 01:18:30 -0700
X-CSE-ConnectionGUID: qacDgixFSnezQuiISeOASA==
X-CSE-MsgGUID: ROpcA9P9R2S6sdydfJVItg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,240,1744095600"; d="scan'208";a="149315604"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.68])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 01:18:29 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915/snps_hdmi_pll: Fix 64-bit divisor truncation
 by using div64_u64
In-Reply-To: <267c5213-5be1-4fab-bf38-8f80074a3194@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250613061246.1118579-1-ankit.k.nautiyal@intel.com>
 <0d7742055fbbadf97cc3a361de6838a7d0203f51@intel.com>
 <267c5213-5be1-4fab-bf38-8f80074a3194@intel.com>
Date: Mon, 16 Jun 2025 11:18:25 +0300
Message-ID: <f3ee226ac5802243e845c3ea7caa238c1cfeea65@intel.com>
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

On Sun, 15 Jun 2025, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> On 6/13/2025 3:06 PM, Jani Nikula wrote:
>> On Fri, 13 Jun 2025, Ankit Nautiyal<ankit.k.nautiyal@intel.com> wrote:
>>>   	*ana_cp_int = max(1, min(ana_cp_int_temp, 127));
>> Unrelated to this patch, but this should be:
>>
>> 	*ana_cp_int = clamp(ana_cp_int_temp, 1, 127);
>>
>> There's a similar issue with ana_cp_prop also in the file.
>>
> Agreed. Should there be a separate patch for this?

Yes. That's why I emphasized "unrelated to this patch". ;)

BR,
Jani.


-- 
Jani Nikula, Intel
