Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6622F187E60
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 11:32:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2D486E049;
	Tue, 17 Mar 2020 10:32:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A1896E049
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2020 10:32:19 +0000 (UTC)
IronPort-SDR: D8M8UOHakaH5YfA65/o5+eGYrJOTR6QAbRro8NQOK+eZSdqhnGRjfCNtndU6bJPDgYM10m5CBZ
 E60rnEh7iv6Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 03:32:18 -0700
IronPort-SDR: rYJleXMcCm+fGOyvHVca+c3Mel3Ho3m9jbtOE+Dv4OEQ2EhMOj6/DujO2PpFfy9OvKybHbd+dF
 M1oKkk9NMRLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,564,1574150400"; d="scan'208";a="445450038"
Received: from mstack-mobl.ger.corp.intel.com (HELO [10.252.43.35])
 ([10.252.43.35])
 by fmsmga006.fm.intel.com with ESMTP; 17 Mar 2020 03:32:17 -0700
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20200312230502.36898-1-umesh.nerlige.ramappa@intel.com>
 <20200312230502.36898-4-umesh.nerlige.ramappa@intel.com>
 <87fte8lzca.wl-ashutosh.dixit@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <657fdf8f-fcf8-7c50-98f4-4f0a9c2dd04d@intel.com>
Date: Tue, 17 Mar 2020 12:32:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <87fte8lzca.wl-ashutosh.dixit@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/perf: only append status when
 data is available
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 17/03/2020 00:16, Dixit, Ashutosh wrote:
> On Thu, 12 Mar 2020 16:05:01 -0700, Umesh Nerlige Ramappa wrote:
>> From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>>
>> The only bit of the status register we currently report in the
>> i915-perf stream is the "report loss" bit. Only report this when we
>> have some data to report with it. There was a kind of inconsistency
>> here in that we could report report loss without appending the reports
>> associated with the loss.
> Splitting hair a bit, but I am wondering if this is realistic? If reports
> have been lost in the middle of a OA buffer then there /will/ be some data
> from the hardware so head != tail. So is the situation which this patch is
> fixing ever been observed in practice?
>
> Also, if we are doing this, how about moving the entire status handling
> here, including intel_uncore_read() and OABUFFER_OVERFLOW handling (which I
> understand resets the stream so probably doesn't have associated data).
>
> In any case, since these are just random questions, this is:
>
> Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

For some reason I thought this writing of lost report was inconsistent.

But it's fairly unrelated to this series.

Maybe drop this patch...


-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
