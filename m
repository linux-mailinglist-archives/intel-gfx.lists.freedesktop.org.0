Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA079D299F
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 16:29:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B25CA10E349;
	Tue, 19 Nov 2024 15:29:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F2d/F237";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C52910E349;
 Tue, 19 Nov 2024 15:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732030180; x=1763566180;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=S55hiPsq2WmEhLeO0d4Zp1YDd7HbUo9/9w1rivKgl2Y=;
 b=F2d/F237NjM3e8CWZa7ikpgznm6QHtvBNf+83baoE0rCL8TD7IXmJfYZ
 A2l5YlJ29+ChcrTgpePD8IijgflgmEbrNEr2qzbcvINg25FzimcY/a/oQ
 MuWh7MmJozVlxoF59edjUTnNLIj8Q7fvqaZP2Q7gfBEM9v9PM3NeSwOrK
 OyrI2lWH60rYxo9cInSqwv/VG6Zx9Rk+AspXUOS8qsfooIENUKKilBl7T
 RV0I2mwlzZ+H19tOJc+HChh6HaB8MCOUemXQ3ccRj6eRmxmOBiqT3jCs5
 bUNa5V5EhvwapkQw85/+4KvveyH3LgwC9UAl+JlDT/87mEnX/bw+ZbjtJ A==;
X-CSE-ConnectionGUID: UQrryaTWQ6Ov3oTDWfJQWA==
X-CSE-MsgGUID: cqWVZozgQZK2G5wA/ciKMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="54536428"
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="54536428"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 07:29:40 -0800
X-CSE-ConnectionGUID: OeYQF7nQQjKhZW7U/3jXkA==
X-CSE-MsgGUID: UMVkdlJqT7KouCG7/VxRwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="89716741"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 07:29:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 06/11] drm/i915/reg: convert DP_TP_CTL/DP_TP_STATUS to
 REG_BIT() and friends
In-Reply-To: <Zzx6zqUeUzUQlAgc@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1731941270.git.jani.nikula@intel.com>
 <9c54e8d7a3ff5039e4537cccb97214e63b9805c9.1731941270.git.jani.nikula@intel.com>
 <Zzx6zqUeUzUQlAgc@ideak-desk.fi.intel.com>
Date: Tue, 19 Nov 2024 17:29:35 +0200
Message-ID: <87cyir2qe8.fsf@intel.com>
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

On Tue, 19 Nov 2024, Imre Deak <imre.deak@intel.com> wrote:
> On Mon, Nov 18, 2024 at 04:49:01PM +0200, Jani Nikula wrote:
>> +#define   DP_TP_STATUS_STREAMS_ENABLED_MASK	REG_GENMASK(21, 19)
>
> I assume the above is the 'Streams Enabled' field and that is bits 18:16
> on the platforms I checked. Bits 21:19 is 'DP Init Status'.

It's 18:16 on TGL+ and 17:16 on HSW, but bit 18 is MBZ on HSW so I just
set to 18:16 in v2.

BR,
Jani.


-- 
Jani Nikula, Intel
