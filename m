Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A90AA8700C8
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 12:51:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28B2E112057;
	Mon,  4 Mar 2024 11:51:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hSR3nXiZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4BBF112057
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Mar 2024 11:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709553081; x=1741089081;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=fulqvDi7620hVs2RBb1+tkktIScAtd772mrcoPK/dF0=;
 b=hSR3nXiZmxRKDzWl64JexMqcCyjIg4jNb+NhlyOgYNkp/5viyJkSmbmz
 JXdek5ifDjYGrYSJnPQ8Y0ZsS7TVuK99TiybvHLVKnl5XDIQmbllkE57m
 pJBDLEhf23oFOhomka9dCHqdeaC9Detp6e9dZodRGJVdsDPzYXjUyNM/0
 nT0VeNTj/XtnnDtz3QwhnDLi7h4TVzQzQ42K8Fc88WP91qTkL+VSRwFsg
 RXYeEM58NsNU77yT7v5s/zCh4PaTi9E1Cd33gz188XX9ZDiQX/PeSdkgT
 0W+rIHSG3Z0+MNth4Nuv6DapQwlomiBJsj0Nlt3VR6L9SWBEmXYHJc+b8 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11002"; a="7848485"
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; 
   d="scan'208";a="7848485"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 03:51:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; d="scan'208";a="32132346"
Received: from syakovle-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.3])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 03:51:17 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Chauhan, Shekhar" <shekhar.chauhan@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com, clinton.a.taylor@intel.com
Subject: Re: [PATCH v3] drm/i915/dp: Increase idle pattern wait timeout to 2ms
In-Reply-To: <38af1ac9-d40f-42e8-9bc4-fb4095b06923@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240304050631.774920-1-shekhar.chauhan@intel.com>
 <87il225qpo.fsf@intel.com>
 <38af1ac9-d40f-42e8-9bc4-fb4095b06923@intel.com>
Date: Mon, 04 Mar 2024 13:51:06 +0200
Message-ID: <871q8q5i6t.fsf@intel.com>
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

On Mon, 04 Mar 2024, "Chauhan, Shekhar" <shekhar.chauhan@intel.com> wrote:
> On 3/4/2024 14:16, Jani Nikula wrote:
>> I did not ask for this. I would rather all platforms used 2 ms. I even
>> said the original change looked fine. But I'd like it to be explained in
>> the commit message.
> I felt that when you said "why bump for non lnl platforms", I felt that 
> I should be segregating them.
> But, as discussed offline, I'll revert back to the original design with 
> a change in the commit message.

Thanks. Communication is hard. :)

BR,
Jani.


-- 
Jani Nikula, Intel
