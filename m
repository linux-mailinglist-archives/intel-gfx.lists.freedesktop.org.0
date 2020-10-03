Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FC828245B
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Oct 2020 15:49:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 085566E25B;
	Sat,  3 Oct 2020 13:49:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A7066E25B
 for <intel-gfx@lists.freedesktop.org>; Sat,  3 Oct 2020 13:49:03 +0000 (UTC)
IronPort-SDR: U5huUBvmCeDxxvdv8TItGVycssS/+vZwKEQbug455nNffLS783oxekc9cCGt6meZVWEkATVuO0
 SDqm989y89qA==
X-IronPort-AV: E=McAfee;i="6000,8403,9762"; a="160597933"
X-IronPort-AV: E=Sophos;i="5.77,331,1596524400"; d="scan'208";a="160597933"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2020 06:48:59 -0700
IronPort-SDR: pjuPcz5jX/+QXmNmqsOFuACoN7WYbJy4mD6/Qg8m/A9ceExZaO1wGhUsWj7NzTkeeFs/BX6O3O
 5fNNov2UWY6A==
X-IronPort-AV: E=Sophos;i="5.77,331,1596524400"; d="scan'208";a="458934964"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2020 06:48:58 -0700
Date: Sat, 3 Oct 2020 16:48:54 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>,
 Tomi P Sarvela <tomi.p.sarvela@intel.com>
Message-ID: <20201003134854.GA1278041@ideak-desk.fi.intel.com>
References: <20201003001846.1271151-1-imre.deak@intel.com>
 <160169736013.24066.4200219438161051461@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160169736013.24066.4200219438161051461@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Fix_Combo_PHY_DPLL_fractional_divider_for_38=2E4MH?=
 =?utf-8?q?z_ref_clock_=28rev3=29?=
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
Reply-To: imre.deak@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Lakshmi, Tomi,

On Sat, Oct 03, 2020 at 03:56:00AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tgl: Fix Combo PHY DPLL fractional divider for 38.4MHz ref clock (rev3)
> URL   : https://patchwork.freedesktop.org/series/82173/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9093_full -> Patchwork_18620_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_18620_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_18620_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_18620_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-skl:          [PASS][1] -> [TIMEOUT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9093/shard-skl6/igt@gem_userptr_blits@unsync-unmap-cycles.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18620/shard-skl4/igt@gem_userptr_blits@unsync-unmap-cycles.html

This looks like
https://gitlab.freedesktop.org/drm/intel/-/issues/2424
still happening at
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9090/shard-skl5/igt@gem_userptr_blits@sync-unmap-cycles.html

Could you update the filter to include sync-unmap-cycles as well?


>   * igt@kms_flip@flip-vs-suspend@c-edp1:
>     - shard-iclb:         [PASS][3] -> [INCOMPLETE][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9093/shard-iclb3/igt@kms_flip@flip-vs-suspend@c-edp1.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18620/shard-iclb3/igt@kms_flip@flip-vs-suspend@c-edp1.html

Looks like shard-iclb3 has a file system corruption, or just broken
storage device/host:
<3>[  240.012780] blk_update_request: I/O error, dev sda, sector 76863120 op 0x1:(WRITE) flags 0x800 phys_seg 10 prio class 0

This has been consistently happening now for a while on the shard-iclb3
machine leading to the same hang, see for instance
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9063/shard-iclb3/pstore7-1601302770_Panic_1.txt

Similar sporadic filesystem errors have been also happening on
shard-iclb4.

I haven't seen any recent I/O errors on any of the other 7 shard-icl
machines.

shard-iclb3/4 would probably need reinstall/new storage device/new host.

--Imre
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
