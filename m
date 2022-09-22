Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F275E61BF
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 13:53:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA32410EAD9;
	Thu, 22 Sep 2022 11:53:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98B5910EAD7
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 11:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663847592; x=1695383592;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=esjTFS7SuGuCC3SR0D417GxqGW6zNg+OEhtrMBRqyt8=;
 b=jkXzOkh2lMU13a6fPP0wlA9qgiiNkygBRKZLe44mx+E94kYFXmuYY2/3
 N6cQ+i1vdweRDTDvAGZ38MCUNEay7AotlwmVBaFHz54642CWt1pc3mjnh
 cVo0jw0psTwEflBX+YTcz4oV3vmU2arazk0l69dRGmzuSqlSYmd6/ABu9
 rZqBpv2R40xAZWrofJEpTTHWWjjFxnIFeadcTYiABcd4emW/D1gY1P8xU
 4jALbICKyA4j+xkIAmJpgtd8kjWXRy/rKBcq2yLyE5U0Wobd1aZHJZ+op
 WHsC/WUMezrvQkn1nf1IVm7A5dKQmOivYaWIJMl6J09RsnW5zJ48kC8NJ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="298990651"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="298990651"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 04:53:11 -0700
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="795055432"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.3.25])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 04:53:09 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Sep 2022 13:53:07 +0200
Message-ID: <3124035.5fSG56mABF@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <166384380596.19670.566828024672013195@emeril.freedesktop.org>
References: <20220922101036.87457-1-janusz.krzysztofik@linux.intel.com>
 <166384380596.19670.566828024672013195@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgaW9t?=
 =?utf-8?q?mu=3A_Remove_iova_cpu_hotplugging_flushing?=
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thursday, 22 September 2022 12:50:05 CEST Patchwork wrote:
> == Series Details ==
> 
> Series: iommu: Remove iova cpu hotplugging flushing
> URL   : https://patchwork.freedesktop.org/series/108880/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12166 -> Patchwork_108880v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_108880v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_108880v1, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v1/index.html
> 
> Participating hosts (45 -> 42)
> ------------------------------
> 
>   Missing    (3): fi-kbl-soraka bat-rpls-1 fi-bdw-samus 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_108880v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_module_load@reload:
>     - fi-kbl-8809g:       NOTRUN -> [DMESG-WARN][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v1/fi-kbl-8809g/igt@i915_module_load@reload.html

dmesg shows an issue discovered in amdgpu module.  BUG Filing team will file a 
new bug and re-report.

Thanks,
Janusz


