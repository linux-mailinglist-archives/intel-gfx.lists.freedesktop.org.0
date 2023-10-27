Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16AC97D8F6D
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 09:15:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FE9310E93C;
	Fri, 27 Oct 2023 07:15:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B878510E93C
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 07:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698390931; x=1729926931;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=YG+2prwUDtkEauDdh7XT9PkynRCJ4v8jze7/ONDVssA=;
 b=mdFy4QRQu6Izsrg4c1My/jKwTYQsLoGhdQ6OUdKxa7YHZf2PY4vQ0rWt
 l5MVN9wiCoHsgQ7BToaD3LNse8MYBV3WlHe94JNjRld8s+s3LqghtB5lc
 sp5nDDVjLr9IWgi1NsIcorAXKtaqN4Uut9JV4Q9arQ5oithHfJEyfSyyv
 cjGMCWF9BoWVZ1njV3sYdiZPe83NYd+aNjIXzu0zBU5uypaaOpRtJobyb
 g35S6MYAF5l6o69BXmK4mrPpqRbv4L1mb4BOK+YCPC9F6jbJlPD26eAqR
 wOG4VTC+F2lmeeymv82xZ2cdnaVxrjtdqQAl30L0DTVT+tqbEs/saxuNg w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="387540134"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; d="scan'208";a="387540134"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 00:15:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; 
   d="scan'208";a="7140262"
Received: from patrizia-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.50.98])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 00:14:07 -0700
Date: Fri, 27 Oct 2023 09:15:26 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Message-ID: <ZTtjjnpDz5fI7eFj@ashyti-mobl2.lan>
References: <20231026135839.486894-1-gilbertadikankwu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231026135839.486894-1-gilbertadikankwu@gmail.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Remove assignment from if
 condition
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
Cc: intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Gilbert,

> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index e8f42ec6b1b4..cbc4ecf26d8b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -1751,7 +1751,7 @@ static bool gen8_csb_parse(const u64 csb)
>  static noinline u64
>  wa_csb_read(const struct intel_engine_cs *engine, u64 * const csb)
>  {
> -	u64 entry;
> +	u64 entry = READ_ONCE(*csb);
>  
>  	/*
>  	 * Reading from the HWSP has one particular advantage: we can detect
> @@ -1763,7 +1763,7 @@ wa_csb_read(const struct intel_engine_cs *engine, u64 * const csb)
>  	 * tgl,dg1:HSDES#22011327657
>  	 */
>  	preempt_disable();
> -	if (wait_for_atomic_us((entry = READ_ONCE(*csb)) != -1, 10)) {
> +	if (wait_for_atomic_us(entry != -1, 10)) {

this doesn't work. Hav you looked inside the wait_for_atomic_us?
It's busy looping for 10us waiting for *csb to be different from
-1. Because the entry value won't have a chance to change, then
we would be waiting 10us for nothing.

Not all the checkpatch errors need to be fixed and we can live
with this one.

Andi

>  		int idx = csb - engine->execlists.csb_status;
>  		int status;
>  
> -- 
> 2.34.1
