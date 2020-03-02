Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B99175852
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 11:29:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 319506E258;
	Mon,  2 Mar 2020 10:29:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EECB86E258
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 10:29:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 02:29:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,506,1574150400"; d="scan'208";a="286586516"
Received: from hschroed-mobl.ger.corp.intel.com (HELO [10.249.38.113])
 ([10.249.38.113])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Mar 2020 02:29:29 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200302085812.4172450-1-chris@chris-wilson.co.uk>
 <20200302085812.4172450-7-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <4d9f976d-b1f1-d079-9cd0-e511e407a508@intel.com>
Date: Mon, 2 Mar 2020 12:29:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200302085812.4172450-7-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 07/22] drm/i915/perf: Reintroduce wait on OA
 configuration completion
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 02/03/2020 10:57, Chris Wilson wrote:
> We still need to wait for the initial OA configuration to happen
> before we enable OA report writes to the OA buffer.
>
> Reported-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Fixes: 15d0ace1f876 ("drm/i915/perf: execute OA configuration from command stream")
> Testcase: igt/perf/stream-open-close
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>


Works for me.

Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>


Thanks,


-Lione


> ---
> This is simply an alternative to storing the request inside the stream.
> ---
>   drivers/gpu/drm/i915/i915_perf.c       | 58 ++++++++++++++++++--------
>   drivers/gpu/drm/i915/i915_perf_types.h |  3 +-
>   2 files changed, 43 insertions(+), 18 deletions(-)
>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
