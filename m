Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 878AA32D2C7
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Mar 2021 13:23:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D46356E4A7;
	Thu,  4 Mar 2021 12:23:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1CE06E4AA
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Mar 2021 12:23:54 +0000 (UTC)
IronPort-SDR: /8ERbjXXM9fVTFSwfeVGof1Ql5H30Svlya3ZHacFUu6cBQDBT5EMZtj5sLizbazE2AYpQsISb1
 EG6jxs9kNKxQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="175034910"
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="175034910"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 04:23:53 -0800
IronPort-SDR: tVWRCKo8plxwJ8p8X7H81KKFBzAR6FI9TYKy/gMeVn+LZyu5pcNvhkshmcZHZ3rdpr9k0N8kEk
 3V/fFiTr+aow==
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="407761065"
Received: from kuanhsun-mobl.ger.corp.intel.com (HELO [10.252.43.176])
 ([10.252.43.176])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 04:23:52 -0800
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20210303212800.43787-1-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <663bc4f9-d68f-35c8-67cb-502d637d5bf4@intel.com>
Date: Thu, 4 Mar 2021 14:23:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210303212800.43787-1-umesh.nerlige.ramappa@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] i915/query: Correlate engine and cpu
 timestamps with better accuracy
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

On 03/03/2021 23:28, Umesh Nerlige Ramappa wrote:
> Perf measurements rely on CPU and engine timestamps to correlate
> events of interest across these time domains. Current mechanisms get
> these timestamps separately and the calculated delta between these
> timestamps lack enough accuracy.
>
> To improve the accuracy of these time measurements to within a few us,
> add a query that returns the engine and cpu timestamps captured as
> close to each other as possible.
>
> v2: (Tvrtko)
> - document clock reference used
> - return cpu timestamp always
> - capture cpu time just before lower dword of cs timestamp
>
> v3: (Chris)
> - use uncore-rpm
> - use __query_cs_timestamp helper
>
> v4: (Lionel)
> - Kernel perf subsytem allows users to specify the clock id to be used
>    in perf_event_open. This clock id is used by the perf subsystem to
>    return the appropriate cpu timestamp in perf events. Similarly, let
>    the user pass the clockid to this query so that cpu timestamp
>    corresponds to the clock id requested.
>
> v5: (Tvrtko)
> - Use normal ktime accessors instead of fast versions
> - Add more uApi documentation
>
> v6: (Lionel)
> - Move switch out of spinlock
>
> v7: (Chris)
> - cs_timestamp is a misnomer, use cs_cycles instead
> - return the cs cycle frequency as well in the query
>
> v8:
> - Add platform and engine specific checks
>
> v9: (Lionel)
> - Return 2 cpu timestamps in the query - captured before and after the
>    register read
>
> Signed-off-by: Umesh Nerlige Ramappa<umesh.nerlige.ramappa@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_query.c | 144 ++++++++++++++++++++++++++++++

FYI, the MR for Mesa : 
https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/9407


-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
