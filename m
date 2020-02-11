Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE84C158BE2
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 10:30:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1134D6E4AF;
	Tue, 11 Feb 2020 09:30:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD2A56EE1D;
 Tue, 11 Feb 2020 09:30:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 01:30:09 -0800
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="226450188"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 01:30:06 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Petri Latvala <petri.latvala@intel.com>,
 Dale B Stimson <dale.b.stimson@intel.com>
In-Reply-To: <20200211092200.GL25209@platvala-desk.ger.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1581381780.git.dale.b.stimson@intel.com>
 <2f2d74a2aa0bb1ab0050bdeb5a272ae9d7f61c69.1581381780.git.dale.b.stimson@intel.com>
 <20200211092200.GL25209@platvala-desk.ger.corp.intel.com>
Date: Tue, 11 Feb 2020 11:30:03 +0200
Message-ID: <877e0t1nfo.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/3] i915/gem_mmio_base.c -
 get mmio_base from debugfs (if possible)
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 11 Feb 2020, Petri Latvala <petri.latvala@intel.com> wrote:
>> diff --git a/lib/i915/gem_mmio_base.c b/lib/i915/gem_mmio_base.c
>> new file mode 100644
>> index 000000000..8718c092f
>> --- /dev/null
>> +++ b/lib/i915/gem_mmio_base.c
>> @@ -0,0 +1,346 @@
>> +//  Copyright (C) 2020 Intel Corporation
>> +//
>> +//  SPDX-License-Identifier: MIT
>
> We don't use SPDX headers in IGT, please use the MIT license comment
> block instead.

Why not? Should we start?

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
