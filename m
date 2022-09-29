Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 202865EF3C7
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 12:57:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 496DA10E5AF;
	Thu, 29 Sep 2022 10:57:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A76BB10E5AF
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 10:57:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664449040; x=1695985040;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=TVPI/l5obUZ9PGIKMRQXncMSkqt6FPqRLIRwU2IeAKI=;
 b=N2IDXrCZ4R1/9o5U3gdZHbedPdcg9NHinZ+LQuuyV22OFukS5INZtvKk
 XrVSrTqNQ+FmKBXCy7i6HTKVOlNB27ghf/b+C65OpvemvKdgxxX6BOkt7
 YhsTzrc0DSuZRpHYVJ5lo+xzsDEC7giohX2cO6XQJVt58PjewEVIvrV2u
 0DpWtQHFJ7sxk7/58tl8m5gjNa47EtbcEZUboHkjowqtdOTPbyaGsS6jq
 MEm0qvcgnz5c5Zn1t5GfNEVxlJEEqiLwLbtuFpjUj2EidH33deMlvgwbv
 YN0VQjj+vQAjMWysOQsOMZi7ARRCFdcJrYThcOKRXuuNH4/X+tgvaTfGh w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="363704502"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="363704502"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 03:57:19 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="622313948"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="622313948"
Received: from ashyti-mobl2.igk.intel.com (HELO intel.com) ([172.28.182.72])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 03:57:18 -0700
Date: Thu, 29 Sep 2022 12:57:16 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YzV6DPuhAQQA8ltS@ashyti-mobl2.lan>
References: <20220927171313.6553-1-nirmoy.das@intel.com>
 <166439104849.593.17384297578294966615@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <166439104849.593.17384297578294966615@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Flush_to_global_observation_point_before_breadcrumb?=
 =?utf-8?q?_write?=
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
Cc: "Das, Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

>    Series: drm/i915/gt: Flush to global observation point before
>    breadcrumb write
>    URL: [1]https://patchwork.freedesktop.org/series/109133/
>    State: failure
>    Details:
>    [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109133v1/index.ht
>    ml
> 
>      CI Bug Log - changes from CI_DRM_12193_full -> Patchwork_109133v1_full
> 
> Summary
> 
>    FAILURE
> 
>    Serious unknown changes coming with Patchwork_109133v1_full absolutely
>    need to be
>    verified manually.
> 
>    If you think the reported changes have nothing to do with the changes
>    introduced in Patchwork_109133v1_full, please notify your bug team to
>    allow them
>    to document this new failure mode, which will reduce false positives in
>    CI.
> 
> Participating hosts (10 -> 10)
> 
>    No changes in participating hosts
> 
> Possible new issues
> 
>    Here are the unknown changes that may have been introduced in
>    Patchwork_109133v1_full:
> 
>   IGT changes
> 
>     Possible regressions
> 
>      * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling
>        @pipe-a-valid-mode:
>           + shard-tglb: [3]PASS -> [4]INCOMPLETE

This looks a false positive to me, not even an unrelated failure.
Can anyone from display have a look and confirm, please?

Andi
