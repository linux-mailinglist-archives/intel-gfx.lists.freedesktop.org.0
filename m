Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 436786EC7AB
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 10:10:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF59210E2F2;
	Mon, 24 Apr 2023 08:10:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02CD610E2F2
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Apr 2023 08:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682323830; x=1713859830;
 h=message-id:date:mime-version:subject:to:references:from:
 cc:in-reply-to:content-transfer-encoding;
 bh=gzhnAIkTyTT04kaasSVFiCyftVR6KelrUIzboyAGhdY=;
 b=LVas8hkwFAVy1Vub1WtbOtykph4g06ZukhgBvIHHSdAfCvuSzIUkBtTx
 80bnECmmQnpHKit4GZD0SQEibr0o+611xBz82JPxjLnQYBHnUBrKP5PZJ
 yFW6BO7ch8JsHv86PqfK3KlWI9pSZXoJ1jOqmwaNGLnELxadwoh/gadz1
 /F1SJM7ti/54bjezeTZ1DX+Dxx2eW5zVwJSEKGzqioBlTtsOCNnnfb1ZQ
 EZdfpPYY13FwxkRteM0CO8vKUClbKhBaZIsOHKb1ERz0N33terbqkocqR
 xXeCPAV9x2RLQMaImBp4WOsNJy4lLF0ib3SKtApcVdZjlZ/ltgxUOg2De w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10689"; a="325999429"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="325999429"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 01:10:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10689"; a="723489789"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="723489789"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.18.134])
 ([10.213.18.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 01:10:26 -0700
Message-ID: <6ceac9c7-30c7-d28f-83ee-3acf31e4ecb2@intel.com>
Date: Mon, 24 Apr 2023 10:10:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
References: <20230418220446.2205509-1-radhakrishna.sripada@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230418220446.2205509-1-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 0/4] More MTL WA and powerwell patches
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

On 19.04.2023 00:04, Radhakrishna Sripada wrote:
> This series adds 2 MTL WA's and 2 patches to fix re-use
> "DC off" power wells.
> 
> v2:
> Haridhar Kalvala (1):
>    drm/i915/mtl: WA to clear RDOP clock gating
> 
> Madhumitha Tolakanahalli Pradeep (1):
>    drm/i915/mtl: Extend Wa_22011802037 to MTL A-step
> 
> Matt Roper (2):
>    drm/i915: Use separate "DC off" power well for ADL-P and DG2
>    drm/i915/mtl: Re-use ADL-P's "DC off" power well

Apparently this patchset broke bat-dg2-11 machine on CI.
Both pre and post merge results suggests it [1][2].
Regarding bat-dg2-11, this machine contains DG2 AND ADL cards.
So the bug hits ADL card on bat-dg2-11 machine. No idea why only this 
one, there are multiple bat machines with ADL.

[1]: http://gfx-ci.igk.intel.com/tree/drm-tip/bat-dg2-11.html
[2]: http://gfx-ci.igk.intel.com/tree/drm-tip/Patchwork_115292v3/index.html?

Regards
Andrzej

> 
>   .../i915/display/intel_display_power_map.c    | 57 +++++++++++++------
>   drivers/gpu/drm/i915/gt/intel_workarounds.c   |  3 +
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 12 ++--
>   3 files changed, 48 insertions(+), 24 deletions(-)
> 

