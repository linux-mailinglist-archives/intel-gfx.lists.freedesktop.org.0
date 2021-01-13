Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 813CC2F486F
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 11:17:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A13666E42A;
	Wed, 13 Jan 2021 10:17:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1959A6E42A
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 10:17:04 +0000 (UTC)
IronPort-SDR: uFEG4xDMCwPfP9QuBGAs0LujKMI1BhbNli3VTHVPIsIowdxVYpdSJeCg5eahuSjz/ZBFQBoddR
 8HjQzAHf5vag==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="165270975"
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="165270975"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 02:17:03 -0800
IronPort-SDR: 0Nxo6UoozrPe1N3yVGpJziIc3vKZXZXLP8XVdf7qwNveiPuqXJkmvYl7WJpmi7OS48AARnkDsw
 ZTQ9jGgG7Lng==
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="381793448"
Received: from iklein-mobl.ger.corp.intel.com (HELO localhost) ([10.249.40.83])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 02:17:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.william.auld@gmail.com>
In-Reply-To: <161048602681.12706.9571720059335417370@build.alporthouse.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210112172246.11933-1-jani.nikula@intel.com>
 <CAM0jSHOwHpxPsTYmh6i=wbwacNj9CE6_oVaPYmEXdkBOzMoB0A@mail.gmail.com>
 <161048602681.12706.9571720059335417370@build.alporthouse.com>
Date: Wed, 13 Jan 2021 12:16:58 +0200
Message-ID: <87a6tdta3p.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/lmem: make intel_region_lmem_ops
 static
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 12 Jan 2021, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> Quoting Matthew Auld (2021-01-12 17:26:41)
>> On Tue, 12 Jan 2021 at 17:23, Jani Nikula <jani.nikula@intel.com> wrote:
>> >
>> > There are no users outside of intel_region_lmem.c.
>> >
>> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
>
> I pushed this and its companion, and then applied Matthew's git mv.

Thanks,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
