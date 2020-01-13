Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84375139906
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 19:38:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5D036E133;
	Mon, 13 Jan 2020 18:38:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 333F06E133
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 18:38:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 10:38:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,429,1571727600"; d="scan'208";a="372342529"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga004.jf.intel.com with ESMTP; 13 Jan 2020 10:38:08 -0800
Received: from fmsmsx163.amr.corp.intel.com (10.18.125.72) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 13 Jan 2020 10:38:07 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.123]) by
 fmsmsx163.amr.corp.intel.com ([169.254.6.171]) with mapi id 14.03.0439.000;
 Mon, 13 Jan 2020 10:38:07 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/gen11: Add additional pcode
 status values
Thread-Index: AQHVyCDn1uaKcCwKDkCmV+4bI4yd/KfpdwsA
Date: Mon, 13 Jan 2020 18:38:06 +0000
Message-ID: <93603b610b40926e3e5fe563ac488cd3ce36f9ff.camel@intel.com>
References: <20200111014511.2988923-1-matthew.d.roper@intel.com>
In-Reply-To: <20200111014511.2988923-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.13.11]
Content-ID: <CB64F10F2D5A5D4793497BFD827C7A1E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen11: Add additional pcode status
 values
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 2020-01-10 at 17:45 -0800, Matt Roper wrote:
> I don't think we've ever hit these new error codes, but they're
> documented in the gen11 pcode document, so we might as well add them
> to
> the handler.
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h       | 2 ++
>  drivers/gpu/drm/i915/intel_sideband.c | 4 ++++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h
> index 6cc55c103f67..e5071af4a3b3 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -8987,6 +8987,8 @@ enum {
>  #define     GEN6_PCODE_UNIMPLEMENTED_CMD	0xFF
>  #define     GEN7_PCODE_TIMEOUT			0x2
>  #define     GEN7_PCODE_ILLEGAL_DATA		0x3
> +#define     GEN11_PCODE_ILLEGAL_SUBCOMMAND	0x4
> +#define     GEN11_PCODE_LOCKED			0x6

I can't find the error 0x6 in BSpec, what page are you looking at?
I'm checking 34151.

>  #define     GEN7_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE 0x10
>  #define   GEN6_PCODE_WRITE_RC6VIDS		0x4
>  #define   GEN6_PCODE_READ_RC6VIDS		0x5
> diff --git a/drivers/gpu/drm/i915/intel_sideband.c
> b/drivers/gpu/drm/i915/intel_sideband.c
> index cbfb7171d62d..3361fdc41ee1 100644
> --- a/drivers/gpu/drm/i915/intel_sideband.c
> +++ b/drivers/gpu/drm/i915/intel_sideband.c
> @@ -365,6 +365,10 @@ static inline int gen7_check_mailbox_status(u32
> mbox)
>  		return -ETIMEDOUT;
>  	case GEN7_PCODE_ILLEGAL_DATA:
>  		return -EINVAL;
> +	case GEN11_PCODE_ILLEGAL_SUBCOMMAND:
> +		return -ENXIO;
> +	case GEN11_PCODE_LOCKED:
> +		return -EBUSY;
>  	case GEN7_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE:
>  		return -EOVERFLOW;
>  	default:
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
