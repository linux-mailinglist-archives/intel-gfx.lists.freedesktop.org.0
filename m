Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E571467D0AB
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 16:53:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF92810E158;
	Thu, 26 Jan 2023 15:53:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34E8510E158;
 Thu, 26 Jan 2023 15:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674748396; x=1706284396;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=bopZJzKcWQnsQw+76nCDYRh+09im6of/kn4ndmeZ6Io=;
 b=RMeqvWEcTvnLzng5pTEjECHlPRxMqwAVHIFFe+IpH21ZNq5iGtMmJb1W
 q1y/cJTWFBjTUW93hIa+P4RMQICt0ba5UmOrX6SxowZ8Gddmf4cexQBQL
 8gz4Te9K7HF8DLnPJgKiadOboKi5WVuaKfHgJ08nHxnBp/+G3XHZ9KKlg
 mWbplPE87fStFif6vyQtyJ3bWh5toSv2rnI2+RvAI5Z20EWcZrXDhbwn+
 YrBELlpaj9EL09NBLZ1++/XmkSY8Pjo60rU4EDtwuDMzsKR7VRuoTIBlZ
 5TX2da3pSPxmMZ/6UuFd3dBxscA/W2f/o0vePGW6cIJ3PQHeiiqxA6YQD A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="389203907"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="389203907"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 07:53:11 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="695150778"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="695150778"
Received: from mrudniew-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.213.1.114])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 07:53:09 -0800
Date: Thu, 26 Jan 2023 16:53:06 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Message-ID: <20230126155306.w6jj2sg4gqhqaulo@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Petri Latvala <petri.latvala@intel.com>
References: <20230112174730.1101192-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230112174730.1101192-1-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 0/4] Some intel_gpu_top tweaks
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

On 2023-01-12 at 17:47:26 +0000, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Mostly by popular demand from
> https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/issues/109, although for
> some of these changes I'd like some second opinions. For instance is it user
> friendly to change the default aggregation mode for stdout and JSON output?

I do not see any response so imho we can merge this.

Regrads,
Kamil

> 
> Tvrtko Ursulin (4):
>   intel_gpu_top: Fix man page formatting
>   intel_gpu_top: Automatically enclose JSON output into brackets
>   intel_gpu_top: Add command line switch to start in physical engine
>     mode
>   intel_gpu_top: Aggregate engine classes in all output modes
> 
>  man/intel_gpu_top.rst | 20 ++++++++++++--------
>  tools/intel_gpu_top.c | 16 ++++++++++++++--
>  2 files changed, 26 insertions(+), 10 deletions(-)
> 
> -- 
> 2.34.1
> 
