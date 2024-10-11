Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C2D99A6C3
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 16:47:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 160E710EB0D;
	Fri, 11 Oct 2024 14:47:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nU0N5oy/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA62910EB08;
 Fri, 11 Oct 2024 14:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728658028; x=1760194028;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=jr/N8JZk0QLqbcPTpzwYOeTReZe9917jRCBnlHzLqKo=;
 b=nU0N5oy/To1c4FNnelKCplaJn76pnE37m5vVP8IaWI4pmcS+5htyXSu5
 xwwkZdJLV/uKQ/XfxzXgedM/s8ZXUXqXt8fSfA1G2NMm2nXuogXXJAy34
 LUwHTUO0rEcRZK2hK6eyL7No+qpZrPsC3vGvC8opxWEP1F4IcmCs2/2Tu
 T0DOb4UN6oHHyLsDa05sXgVVGczD49xlsr0xaz29lv9Y8yuGCrGONSW93
 bxf0II6EK4L+hk56eXu6djNDu9Q3P+mktimDccRiZNZW3ym0mtEEwh3nW
 XziiHXJ9xRNgm2pZkFFZJOYsfvooAUH99FRi/iVSkoS5z8lkObqAOBbDD Q==;
X-CSE-ConnectionGUID: Nze+FcfsTRqfCgZ6wc6aUA==
X-CSE-MsgGUID: RTfG7GLpRku/7FmwJ7J54g==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30934980"
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="30934980"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 07:47:08 -0700
X-CSE-ConnectionGUID: EBDbLqv9TSO1EdsaeEzZgQ==
X-CSE-MsgGUID: 39aNtBxDRj6yE1SAVF3hCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="81549429"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 07:47:05 -0700
Date: Fri, 11 Oct 2024 17:47:35 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: I915-ci-infra@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIENJLkZVTEw6IGZhaWx1cg==?= =?utf-8?Q?e?= for
 drm/xe: Fix HPD interrupt enabling during runtime resume
Message-ID: <Zwk6h89NH9V8EurA@ideak-desk.fi.intel.com>
References: <20241009194358.1321200-1-imre.deak@intel.com>
 <172856086967.1214945.11946594721558928984@2413ebb6fbb6>
 <ZwkLXhre4K-8H9FN@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZwkLXhre4K-8H9FN@ideak-desk.fi.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 11, 2024 at 02:26:22PM +0300, Imre Deak wrote:
> On Thu, Oct 10, 2024 at 11:47:49AM +0000, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: drm/xe: Fix HPD interrupt enabling during runtime resume
> > URL   : https://patchwork.freedesktop.org/series/139812/
> > State : failure
> 
> All the possible regressions are unrelated, see below.

Thanks for the reviews, patches 3 and 4 pushed to drm-xe-next.

> 
> > 
> > == Summary ==
> > 
> > CI Bug Log - changes from xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852_full -> xe-pw-139812v1_full
> > ====================================================
> > 
> > Summary
> > -------
> > 
> >   **FAILURE**
> > 
> >   Serious unknown changes coming with xe-pw-139812v1_full absolutely need to be
> >   verified manually.
> >   
> >   If you think the reported changes have nothing to do with the changes
> >   introduced in xe-pw-139812v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
> >   to document this new failure mode, which will reduce false positives in CI.
> > 
> >   
> > 
> > Participating hosts (4 -> 4)
> > ------------------------------
> > 
> >   No changes in participating hosts
> > 
> > Possible new issues
> > -------------------
> > 
> >   Here are the unknown changes that may have been introduced in xe-pw-139812v1_full:
> > 
> > ### IGT changes ###
> > 
> > #### Possible regressions ####
> > 
> >   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
> >     - shard-adlp:         [PASS][1] -> [FAIL][2]
> >    [1]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-adlp-2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> >    [2]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
> This has only an HDMI output connected, so unrelated to the eDP / short
> HPD handling changes. Can't see how this could either relate to hotplug
> handling in general either. Looks to be the same issue as:
> https://intel-gfx-ci.01.org/tree/intel-xe/xe-2035-4bc6397aee1aea6a062e635f5a3468ff439ff05d/shard-adlp-1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
> >   * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
> >     - shard-adlp:         [PASS][3] -> [DMESG-WARN][4] +1 other test dmesg-warn
> >    [3]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-adlp-6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
> >    [4]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-2/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
> 
> A similar unrelated HDMI config as above. The error is:
> [drm] *ERROR* AUX B/DDI B/PHY B: did not complete or timeout within 10ms (status 0xad40023f)
> 
> Happened many times previously, for instance:
> https://intel-gfx-ci.01.org/tree/intel-xe/xe-2045-40eee4a1af7598f2992f9b69bfea567074d23ea6/shard-adlp-2/dmesg13.txt
> 
> It's only an HDMI connector wired to the display port, but VBT says to
> enable DP as well. So not sure if AUX is supposed to even work correctly
> in this case.
> 
> >   * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
> >     - shard-lnl:          [PASS][5] -> [FAIL][6]
> >    [5]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-lnl-1/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
> >    [6]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-7/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
> 
> Happened already on lnl, can't see how it would related to hotplug
> handling:
> https://intel-gfx-ci.01.org/tree/intel-xe/xe-2039-d0efccb2464195163a7194aa33c686feb84ab52c/shard-lnl-7/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
> 
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc:
> >     - shard-lnl:          [PASS][7] -> [DMESG-WARN][8] +1 other test dmesg-warn
> >    [7]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-lnl-4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc.html
> >    [8]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc.html
> 
> Doesn't seem to be related to any display functionality. Happened many
> times before, for instance:
> https://intel-gfx-ci.01.org/tree/intel-xe/xe-2045-40eee4a1af7598f2992f9b69bfea567074d23ea6/shard-lnl-3/dmesg12.txt
> 
> > #### Warnings ####
> > 
> >   * igt@kms_setmode@basic@pipe-a-hdmi-a-1:
> >     - shard-adlp:         [FAIL][9] ([Intel XE#2883]) -> [FAIL][10]
> >    [9]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-adlp-1/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html
> >    [10]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-1/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html
> > 
> >   
> > #### Suppressed ####
> > 
> >   The following results come from untrusted machines, tests, or statuses.
> >   They do not affect the overall result.
> > 
> >   * igt@kms_content_protection@uevent:
> >     - {shard-bmg}:        [FAIL][11] ([Intel XE#1188]) -> [DMESG-FAIL][12] +1 other test dmesg-fail
> >    [11]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-bmg-3/igt@kms_content_protection@uevent.html
> >    [12]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-bmg-3/igt@kms_content_protection@uevent.html
> > 
> >   * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a3:
> >     - {shard-bmg}:        [PASS][13] -> [INCOMPLETE][14]
> >    [13]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-bmg-5/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a3.html
> >    [14]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-bmg-6/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a3.html
> > 
> >   * igt@kms_vblank@query-forked-busy@pipe-a-dp-2:
> >     - {shard-bmg}:        [PASS][15] -> [FAIL][16] +2 other tests fail
> >    [15]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-bmg-2/igt@kms_vblank@query-forked-busy@pipe-a-dp-2.html
> >    [16]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-bmg-6/igt@kms_vblank@query-forked-busy@pipe-a-dp-2.html
> > 
> >   
> > Known issues
> > ------------
> > 
> >   Here are the changes found in xe-pw-139812v1_full that come from known issues:
> > 
> > ### IGT changes ###
> > 
> > #### Issues hit ####
> > 
> >   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1-linear:
> >     - shard-lnl:          NOTRUN -> [FAIL][17] ([Intel XE#911]) +3 other tests fail
> >    [17]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1-linear.html
> > 
> >   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-x:
> >     - shard-adlp:         [PASS][18] -> [DMESG-WARN][19] ([Intel XE#324]) +2 other tests dmesg-warn
> >    [18]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-adlp-6/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-x.html
> >    [19]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-x.html
> > 
> >   * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
> >     - shard-dg2-set2:     NOTRUN -> [SKIP][20] ([Intel XE#316]) +2 other tests skip
> >    [20]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-435/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html
> > 
> >   * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
> >     - shard-lnl:          NOTRUN -> [SKIP][21] ([Intel XE#1407]) +1 other test skip
> >    [21]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html
> > 
> >   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
> >     - shard-adlp:         NOTRUN -> [FAIL][22] ([Intel XE#1231])
> >    [22]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> > 
> >   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
> >     - shard-dg2-set2:     NOTRUN -> [SKIP][23] ([Intel XE#1124]) +7 other tests skip
> >    [23]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-436/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> > 
> >   * igt@kms_big_fb@yf-tiled-addfb:
> >     - shard-lnl:          NOTRUN -> [SKIP][24] ([Intel XE#1467])
> >    [24]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_big_fb@yf-tiled-addfb.html
> > 
> >   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
> >     - shard-lnl:          NOTRUN -> [SKIP][25] ([Intel XE#1124]) +2 other tests skip
> >    [25]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> > 
> >   * igt@kms_bw@connected-linear-tiling-4-displays-1920x1080p:
> >     - shard-dg2-set2:     NOTRUN -> [SKIP][26] ([Intel XE#2191])
> >    [26]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-434/igt@kms_bw@connected-linear-tiling-4-displays-1920x1080p.html
> > 
> >   * igt@kms_bw@linear-tiling-2-displays-1920x1080p:
> >     - shard-lnl:          NOTRUN -> [SKIP][27] ([Intel XE#367])
> >    [27]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_bw@linear-tiling-2-displays-1920x1080p.html
> > 
> >   * igt@kms_bw@linear-tiling-3-displays-2160x1440p:
> >     - shard-dg2-set2:     NOTRUN -> [SKIP][28] ([Intel XE#367]) +2 other tests skip
> >    [28]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-466/igt@kms_bw@linear-tiling-3-displays-2160x1440p.html
> > 
> >   * igt@kms_bw@linear-tiling-3-displays-3840x2160p:
> >     - shard-adlp:         NOTRUN -> [SKIP][29] ([Intel XE#367])
> >    [29]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-3/igt@kms_bw@linear-tiling-3-displays-3840x2160p.html
> > 
> >   * igt@kms_bw@linear-tiling-4-displays-3840x2160p:
> >     - shard-lnl:          NOTRUN -> [SKIP][30] ([Intel XE#1512])
> >    [30]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_bw@linear-tiling-4-displays-3840x2160p.html
> > 
> >   * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs-cc@pipe-d-dp-4:
> >     - shard-dg2-set2:     NOTRUN -> [SKIP][31] ([Intel XE#455] / [Intel XE#787]) +13 other tests skip
> >    [31]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-436/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs-cc@pipe-d-dp-4.html
> > 
> >   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc@pipe-a-dp-4:
> >     - shard-dg2-set2:     NOTRUN -> [SKIP][32] ([Intel XE#787]) +48 other tests skip
> >    [32]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-435/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc@pipe-a-dp-4.html
> > 
> >   * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs:
> >     - shard-lnl:          NOTRUN -> [SKIP][33] ([Intel XE#2887]) +3 other tests skip
> >    [33]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs.html
> > 
> >   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
> >     - shard-dg2-set2:     NOTRUN -> [SKIP][34] ([Intel XE#2907]) +2 other tests skip
> >    [34]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-434/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> > 
> >   * igt@kms_chamelium_color@ctm-0-75:
> >     - shard-lnl:          NOTRUN -> [SKIP][35] ([Intel XE#306])
> >    [35]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_chamelium_color@ctm-0-75.html
> > 
> >   * igt@kms_chamelium_color@ctm-max:
> >     - shard-adlp:         NOTRUN -> [SKIP][36] ([Intel XE#306]) +1 other test skip
> >    [36]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-3/igt@kms_chamelium_color@ctm-max.html
> > 
> >   * igt@kms_chamelium_color@ctm-red-to-blue:
> >     - shard-dg2-set2:     NOTRUN -> [SKIP][37] ([Intel XE#306])
> >    [37]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-466/igt@kms_chamelium_color@ctm-red-to-blue.html
> > 
> >   * igt@kms_chamelium_hpd@hdmi-hpd:
> >     - shard-dg2-set2:     NOTRUN -> [SKIP][38] ([Intel XE#373]) +5 other tests skip
> >    [38]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-436/igt@kms_chamelium_hpd@hdmi-hpd.html
> > 
> >   * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
> >     - shard-lnl:          NOTRUN -> [SKIP][39] ([Intel XE#373]) +2 other tests skip
> >    [39]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html
> > 
> >   * igt@kms_content_protection@dp-mst-type-0:
> >     - shard-dg2-set2:     NOTRUN -> [SKIP][40] ([Intel XE#307]) +2 other tests skip
> >    [40]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-434/igt@kms_content_protection@dp-mst-type-0.html
> >     - shard-lnl:          NOTRUN -> [SKIP][41] ([Intel XE#307]) +1 other test skip
> >    [41]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-3/igt@kms_content_protection@dp-mst-type-0.html
> > 
> >   * igt@kms_cursor_crc@cursor-offscreen-32x32:
> >     - shard-lnl:          NOTRUN -> [SKIP][42] ([Intel XE#1424]) +1 other test skip
> >    [42]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_cursor_crc@cursor-offscreen-32x32.html
> > 
> >   * igt@kms_cursor_crc@cursor-offscreen-512x170:
> >     - shard-dg2-set2:     NOTRUN -> [SKIP][43] ([Intel XE#308]) +1 other test skip
> >    [43]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-434/igt@kms_cursor_crc@cursor-offscreen-512x170.html
> > 
> >   * igt@kms_cursor_edge_walk@128x128-top-edge:
> >     - shard-lnl:          [PASS][44] -> [FAIL][45] ([Intel XE#2577]) +1 other test fail
> >    [44]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-lnl-2/igt@kms_cursor_edge_walk@128x128-top-edge.html
> >    [45]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-6/igt@kms_cursor_edge_walk@128x128-top-edge.html
> > 
> >   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
> >     - shard-dg2-set2:     NOTRUN -> [SKIP][46] ([Intel XE#323]) +1 other test skip
> >    [46]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-466/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> > 
> >   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
> >     - shard-lnl:          NOTRUN -> [SKIP][47] ([Intel XE#309]) +2 other tests skip
> >    [47]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html
> > 
> >   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
> >     - shard-lnl:          NOTRUN -> [SKIP][48] ([Intel XE#323])
> >    [48]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> > 
> >   * igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:
> >     - shard-lnl:          NOTRUN -> [SKIP][49] ([Intel XE#1421]) +3 other tests skip
> >    [49]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html
> > 
> >   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@cd-hdmi-a6-dp4:
> >     - shard-dg2-set2:     [PASS][50] -> [FAIL][51] ([Intel XE#301]) +11 other tests fail
> >    [50]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-dg2-436/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@cd-hdmi-a6-dp4.html
> >    [51]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-433/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@cd-hdmi-a6-dp4.html
> > 
> >   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1:
> >     - shard-lnl:          [PASS][52] -> [FAIL][53] ([Intel XE#886]) +3 other tests fail
> >    [52]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-lnl-1/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1.html
> >    [53]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1.html
> > 
> >   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a6:
> >     - shard-dg2-set2:     [PASS][54] -> [FAIL][55] ([Intel XE#1204])
> >    [54]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-dg2-434/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a6.html
> >    [55]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-436/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a6.html
> > 
> >   * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a6:
> >     - shard-dg2-set2:     NOTRUN -> [FAIL][56] ([Intel XE#301]) +2 other tests fail
> >    [56]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-436/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a6.html
> > 
> >   * igt@kms_flip@flip-vs-suspend@d-dp4:
> >     - shard-dg2-set2:     [PASS][57] -> [ABORT][58] ([Intel XE#2625]) +1 other test abort
> >    [57]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-dg2-436/igt@kms_flip@flip-vs-suspend@d-dp4.html
> >    [58]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-432/igt@kms_flip@flip-vs-suspend@d-dp4.html
> > 
> >   * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
> >     - shard-lnl:          NOTRUN -> [FAIL][59] ([Intel XE#886]) +1 other test fail
> >    [59]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
> > 
> >   * igt@kms_flip@plain-flip-ts-check-interruptible:
> >     - shard-lnl:          [PASS][60] -> [FAIL][61] ([Intel XE#2957])
> >    [60]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-lnl-1/igt@kms_flip@plain-flip-ts-check-interruptible.html
> >    [61]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-7/igt@kms_flip@plain-flip-ts-check-interruptible.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
> >     - shard-adlp:         NOTRUN -> [SKIP][62] ([Intel XE#455]) +3 other tests skip
> >    [62]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-3/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
> >     - shard-lnl:          NOTRUN -> [SKIP][63] ([Intel XE#1401] / [Intel XE#1745])
> >    [63]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode:
> >     - shard-lnl:          NOTRUN -> [SKIP][64] ([Intel XE#1401])
> >    [64]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling:
> >     - shard-lnl:          NOTRUN -> [SKIP][65] ([Intel XE#1397] / [Intel XE#1745])
> >    [65]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode:
> >     - shard-lnl:          NOTRUN -> [SKIP][66] ([Intel XE#1397])
> >    [66]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
> >     - shard-dg2-set2:     NOTRUN -> [SKIP][67] ([Intel XE#455]) +10 other tests skip
> >    [67]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-436/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
> > 
> >   * igt@kms_frontbuffer_tracking@drrs-1p-primscrn-pri-shrfb-draw-blt:
> >     - shard-lnl:          NOTRUN -> [SKIP][68] ([Intel XE#651]) +4 other tests skip
> >    [68]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_frontbuffer_tracking@drrs-1p-primscrn-pri-shrfb-draw-blt.html
> > 
> >   * igt@kms_frontbuffer_tracking@drrs-1p-primscrn-spr-indfb-onoff:
> >     - shard-adlp:         NOTRUN -> [SKIP][69] ([Intel XE#651])
> >    [69]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-3/igt@kms_frontbuffer_tracking@drrs-1p-primscrn-spr-indfb-onoff.html
> > 
> >   * igt@kms_frontbuffer_tracking@drrs-2p-primscrn-shrfb-plflip-blt:
> >     - shard-adlp:         NOTRUN -> [SKIP][70] ([Intel XE#656]) +1 other test skip
> >    [70]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-3/igt@kms_frontbuffer_tracking@drrs-2p-primscrn-shrfb-plflip-blt.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-tiling-y:
> >     - shard-lnl:          NOTRUN -> [SKIP][71] ([Intel XE#1469])
> >    [71]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbcdrrs-1p-primscrn-spr-indfb-onoff:
> >     - shard-dg2-set2:     NOTRUN -> [SKIP][72] ([Intel XE#651]) +20 other tests skip
> >    [72]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-466/igt@kms_frontbuffer_tracking@fbcdrrs-1p-primscrn-spr-indfb-onoff.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbcdrrs-2p-scndscrn-cur-indfb-draw-render:
> >     - shard-lnl:          NOTRUN -> [SKIP][73] ([Intel XE#656]) +5 other tests skip
> >    [73]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_frontbuffer_tracking@fbcdrrs-2p-scndscrn-cur-indfb-draw-render.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
> >     - shard-dg2-set2:     NOTRUN -> [SKIP][74] ([Intel XE#653]) +18 other tests skip
> >    [74]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-466/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> > 
> >   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc:
> >     - shard-adlp:         NOTRUN -> [SKIP][75] ([Intel XE#653]) +1 other test skip
> >    [75]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc.html
> > 
> >   * igt@kms_pipe_crc_basic@read-crc@pipe-a-hdmi-a-1:
> >     - shard-adlp:         [PASS][76] -> [INCOMPLETE][77] ([Intel XE#1033] / [Intel XE#1195]) +1 other test incomplete
> >    [76]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-adlp-9/igt@kms_pipe_crc_basic@read-crc@pipe-a-hdmi-a-1.html
> >    [77]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-9/igt@kms_pipe_crc_basic@read-crc@pipe-a-hdmi-a-1.html
> > 
> >   * igt@kms_plane@planar-pixel-format-settings:
> >     - shard-adlp:         [PASS][78] -> [TIMEOUT][79] ([Intel XE#1033]) +7 other tests timeout
> >    [78]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-adlp-9/igt@kms_plane@planar-pixel-format-settings.html
> >    [79]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-9/igt@kms_plane@planar-pixel-format-settings.html
> > 
> >   * igt@kms_plane@plane-position-covered@pipe-b-plane-4:
> >     - shard-lnl:          [PASS][80] -> [DMESG-WARN][81] ([Intel XE#324]) +1 other test dmesg-warn
> >    [80]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-lnl-5/igt@kms_plane@plane-position-covered@pipe-b-plane-4.html
> >    [81]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-4/igt@kms_plane@plane-position-covered@pipe-b-plane-4.html
> > 
> >   * igt@kms_plane_lowres@tiling-4:
> >     - shard-lnl:          NOTRUN -> [SKIP][82] ([Intel XE#599]) +4 other tests skip
> >    [82]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_plane_lowres@tiling-4.html
> > 
> >   * igt@kms_plane_scaling@intel-max-src-size:
> >     - shard-dg2-set2:     NOTRUN -> [FAIL][83] ([Intel XE#361]) +1 other test fail
> >    [83]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-435/igt@kms_plane_scaling@intel-max-src-size.html
> > 
> >   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c:
> >     - shard-lnl:          NOTRUN -> [SKIP][84] ([Intel XE#2763]) +3 other tests skip
> >    [84]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c.html
> > 
> >   * igt@kms_pm_dc@dc6-dpms:
> >     - shard-dg2-set2:     NOTRUN -> [SKIP][85] ([Intel XE#908])
> >    [85]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-466/igt@kms_pm_dc@dc6-dpms.html
> > 
> >   * igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:
> >     - shard-dg2-set2:     NOTRUN -> [SKIP][86] ([Intel XE#1489]) +4 other tests skip
> >    [86]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-436/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html
> > 
> >   * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
> >     - shard-lnl:          NOTRUN -> [SKIP][87] ([Intel XE#2893])
> >    [87]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html
> > 
> >   * igt@kms_psr2_su@page_flip-xrgb8888:
> >     - shard-lnl:          NOTRUN -> [SKIP][88] ([Intel XE#1128])
> >    [88]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_psr2_su@page_flip-xrgb8888.html
> > 
> >   * igt@kms_psr@fbc-psr2-basic:
> >     - shard-adlp:         NOTRUN -> [SKIP][89] ([Intel XE#2850] / [Intel XE#929])
> >    [89]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-3/igt@kms_psr@fbc-psr2-basic.html
> > 
> >   * igt@kms_psr@fbc-psr2-cursor-plane-onoff:
> >     - shard-dg2-set2:     NOTRUN -> [SKIP][90] ([Intel XE#2850] / [Intel XE#929]) +11 other tests skip
> >    [90]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-436/igt@kms_psr@fbc-psr2-cursor-plane-onoff.html
> > 
> >   * igt@kms_psr@pr-cursor-render:
> >     - shard-lnl:          NOTRUN -> [SKIP][91] ([Intel XE#1406])
> >    [91]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_psr@pr-cursor-render.html
> > 
> >   * igt@kms_psr@psr2-cursor-plane-onoff:
> >     - shard-lnl:          [PASS][92] -> [FAIL][93] ([Intel XE#2948]) +1 other test fail
> >    [92]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-lnl-6/igt@kms_psr@psr2-cursor-plane-onoff.html
> >    [93]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-3/igt@kms_psr@psr2-cursor-plane-onoff.html
> > 
> >   * igt@kms_rotation_crc@bad-pixel-format:
> >     - shard-lnl:          NOTRUN -> [SKIP][94] ([Intel XE#1437])
> >    [94]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_rotation_crc@bad-pixel-format.html
> > 
> >   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:
> >     - shard-lnl:          [PASS][95] -> [FAIL][96] ([Intel XE#899])
> >    [95]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-lnl-6/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
> >    [96]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
> > 
> >   * igt@kms_vblank@ts-continuation-idle:
> >     - shard-adlp:         [PASS][97] -> [DMESG-WARN][98] ([Intel XE#1033] / [Intel XE#1727]) +1 other test dmesg-warn
> >    [97]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-adlp-3/igt@kms_vblank@ts-continuation-idle.html
> >    [98]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-4/igt@kms_vblank@ts-continuation-idle.html
> > 
> >   * igt@xe_ccs@suspend-resume:
> >     - shard-adlp:         NOTRUN -> [SKIP][99] ([Intel XE#455] / [Intel XE#488])
> >    [99]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-3/igt@xe_ccs@suspend-resume.html
> > 
> >   * igt@xe_copy_basic@mem-copy-linear-0xfffe:
> >     - shard-dg2-set2:     NOTRUN -> [SKIP][100] ([Intel XE#1123])
> >    [100]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-466/igt@xe_copy_basic@mem-copy-linear-0xfffe.html
> > 
> >   * igt@xe_drm_fdinfo@utilization-single-full-load-destroy-queue:
> >     - shard-lnl:          [PASS][101] -> [FAIL][102] ([Intel XE#2667])
> >    [101]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-lnl-7/igt@xe_drm_fdinfo@utilization-single-full-load-destroy-queue.html
> >    [102]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-4/igt@xe_drm_fdinfo@utilization-single-full-load-destroy-queue.html
> > 
> >   * igt@xe_eudebug@multiple-sessions:
> >     - shard-adlp:         NOTRUN -> [SKIP][103] ([Intel XE#2905])
> >    [103]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-3/igt@xe_eudebug@multiple-sessions.html
> > 
> >   * igt@xe_eudebug_online@preempt-breakpoint:
> >     - shard-dg2-set2:     NOTRUN -> [SKIP][104] ([Intel XE#2905]) +6 other tests skip
> >    [104]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-436/igt@xe_eudebug_online@preempt-breakpoint.html
> > 
> >   * igt@xe_evict@evict-beng-mixed-many-threads-small:
> >     - shard-dg2-set2:     [PASS][105] -> [TIMEOUT][106] ([Intel XE#1473] / [Intel XE#402])
> >    [105]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-dg2-466/igt@xe_evict@evict-beng-mixed-many-threads-small.html
> >    [106]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-466/igt@xe_evict@evict-beng-mixed-many-threads-small.html
> > 
> >   * igt@xe_evict@evict-beng-threads-small-multi-vm:
> >     - shard-adlp:         NOTRUN -> [SKIP][107] ([Intel XE#261] / [Intel XE#688]) +1 other test skip
> >    [107]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-3/igt@xe_evict@evict-beng-threads-small-multi-vm.html
> > 
> >   * igt@xe_evict@evict-large-multi-vm-cm:
> >     - shard-dg2-set2:     NOTRUN -> [FAIL][108] ([Intel XE#1600])
> >    [108]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-436/igt@xe_evict@evict-large-multi-vm-cm.html
> > 
> >   * igt@xe_evict@evict-mixed-threads-small-multi-vm:
> >     - shard-lnl:          NOTRUN -> [SKIP][109] ([Intel XE#688]) +1 other test skip
> >    [109]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-3/igt@xe_evict@evict-mixed-threads-small-multi-vm.html
> > 
> >   * igt@xe_exec_basic@multigpu-no-exec-null:
> >     - shard-lnl:          NOTRUN -> [SKIP][110] ([Intel XE#1392]) +1 other test skip
> >    [110]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-3/igt@xe_exec_basic@multigpu-no-exec-null.html
> > 
> >   * igt@xe_exec_compute_mode@many-userptr-invalidate-race:
> >     - shard-lnl:          [PASS][111] -> [FAIL][112] ([Intel XE#2754])
> >    [111]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-lnl-7/igt@xe_exec_compute_mode@many-userptr-invalidate-race.html
> >    [112]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-5/igt@xe_exec_compute_mode@many-userptr-invalidate-race.html
> > 
> >   * igt@xe_exec_fault_mode@many-basic-prefetch:
> >     - shard-dg2-set2:     NOTRUN -> [SKIP][113] ([Intel XE#288]) +18 other tests skip
> >    [113]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-466/igt@xe_exec_fault_mode@many-basic-prefetch.html
> > 
> >   * igt@xe_exec_fault_mode@once-rebind-imm:
> >     - shard-adlp:         NOTRUN -> [SKIP][114] ([Intel XE#288])
> >    [114]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-3/igt@xe_exec_fault_mode@once-rebind-imm.html
> > 
> >   * igt@xe_exec_sip_eudebug@breakpoint-writesip:
> >     - shard-lnl:          NOTRUN -> [SKIP][115] ([Intel XE#2905]) +2 other tests skip
> >    [115]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@xe_exec_sip_eudebug@breakpoint-writesip.html
> > 
> >   * igt@xe_fault_injection@inject-fault-probe:
> >     - shard-lnl:          NOTRUN -> [SKIP][116] ([Intel XE#2931])
> >    [116]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@xe_fault_injection@inject-fault-probe.html
> > 
> >   * igt@xe_gt_freq@freq_reset_multiple:
> >     - shard-lnl:          [PASS][117] -> [DMESG-FAIL][118] ([Intel XE#1620])
> >    [117]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-lnl-4/igt@xe_gt_freq@freq_reset_multiple.html
> >    [118]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-5/igt@xe_gt_freq@freq_reset_multiple.html
> > 
> >   * igt@xe_module_load@load:
> >     - shard-adlp:         NOTRUN -> [SKIP][119] ([Intel XE#378])
> >    [119]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-3/igt@xe_module_load@load.html
> > 
> >   * igt@xe_oa@oa-regs-whitelisted@rcs-0:
> >     - shard-lnl:          NOTRUN -> [FAIL][120] ([Intel XE#2514])
> >    [120]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-2/igt@xe_oa@oa-regs-whitelisted@rcs-0.html
> > 
> >   * igt@xe_oa@oa-unit-exclusive-stream-sample-oa:
> >     - shard-dg2-set2:     NOTRUN -> [SKIP][121] ([Intel XE#2541]) +4 other tests skip
> >    [121]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-436/igt@xe_oa@oa-unit-exclusive-stream-sample-oa.html
> > 
> >   * igt@xe_peer2peer@read:
> >     - shard-lnl:          NOTRUN -> [SKIP][122] ([Intel XE#1061])
> >    [122]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@xe_peer2peer@read.html
> > 
> >   * igt@xe_pm@d3cold-mmap-vram:
> >     - shard-adlp:         NOTRUN -> [SKIP][123] ([Intel XE#2284] / [Intel XE#366])
> >    [123]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-3/igt@xe_pm@d3cold-mmap-vram.html
> > 
> >   * igt@xe_pm@s3-d3cold-basic-exec:
> >     - shard-lnl:          NOTRUN -> [SKIP][124] ([Intel XE#2284] / [Intel XE#366])
> >    [124]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@xe_pm@s3-d3cold-basic-exec.html
> > 
> >   * igt@xe_pm@s4-basic:
> >     - shard-lnl:          [PASS][125] -> [ABORT][126] ([Intel XE#1358] / [Intel XE#1607])
> >    [125]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-lnl-5/igt@xe_pm@s4-basic.html
> >    [126]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-2/igt@xe_pm@s4-basic.html
> > 
> >   * igt@xe_pm@s4-multiple-execs:
> >     - shard-dg2-set2:     [PASS][127] -> [ABORT][128] ([Intel XE#1358] / [Intel XE#1794])
> >    [127]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-dg2-464/igt@xe_pm@s4-multiple-execs.html
> >    [128]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-432/igt@xe_pm@s4-multiple-execs.html
> > 
> >   * igt@xe_pm@vram-d3cold-threshold:
> >     - shard-dg2-set2:     NOTRUN -> [SKIP][129] ([Intel XE#579])
> >    [129]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-435/igt@xe_pm@vram-d3cold-threshold.html
> > 
> >   * igt@xe_query@multigpu-query-invalid-uc-fw-version-mbz:
> >     - shard-lnl:          NOTRUN -> [SKIP][130] ([Intel XE#944])
> >    [130]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@xe_query@multigpu-query-invalid-uc-fw-version-mbz.html
> > 
> >   * igt@xe_query@multigpu-query-uc-fw-version-guc:
> >     - shard-dg2-set2:     NOTRUN -> [SKIP][131] ([Intel XE#944]) +1 other test skip
> >    [131]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-466/igt@xe_query@multigpu-query-uc-fw-version-guc.html
> > 
> >   * igt@xe_wedged@basic-wedged:
> >     - shard-dg2-set2:     NOTRUN -> [DMESG-WARN][132] ([Intel XE#2919])
> >    [132]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-435/igt@xe_wedged@basic-wedged.html
> > 
> >   
> > #### Possible fixes ####
> > 
> >   * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
> >     - shard-adlp:         [FAIL][133] ([Intel XE#1426]) -> [PASS][134] +1 other test pass
> >    [133]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-adlp-1/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
> >    [134]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-8/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
> > 
> >   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
> >     - shard-lnl:          [FAIL][135] ([Intel XE#1659]) -> [PASS][136] +1 other test pass
> >    [135]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-lnl-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> >    [136]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> > 
> >   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
> >     - shard-dg2-set2:     [FAIL][137] -> [PASS][138]
> >    [137]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-dg2-463/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> >    [138]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-435/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> > 
> >   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc:
> >     - shard-dg2-set2:     [INCOMPLETE][139] ([Intel XE#1195] / [Intel XE#1727]) -> [PASS][140]
> >    [139]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-dg2-433/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc.html
> >    [140]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-435/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc.html
> > 
> >   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-6:
> >     - shard-dg2-set2:     [INCOMPLETE][141] ([Intel XE#1195]) -> [PASS][142] +2 other tests pass
> >    [141]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-dg2-464/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-6.html
> >    [142]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-466/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-6.html
> > 
> >   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
> >     - shard-lnl:          [INCOMPLETE][143] -> [PASS][144] +1 other test pass
> >    [143]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-lnl-5/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> >    [144]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-3/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> > 
> >   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
> >     - {shard-bmg}:        [DMESG-WARN][145] ([Intel XE#2791] / [Intel XE#877]) -> [PASS][146]
> >    [145]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-bmg-4/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
> >    [146]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-bmg-4/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
> > 
> >   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
> >     - shard-lnl:          [FAIL][147] ([Intel XE#1475]) -> [PASS][148]
> >    [147]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-lnl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> >    [148]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> > 
> >   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@cd-dp2-hdmi-a3:
> >     - {shard-bmg}:        [FAIL][149] ([Intel XE#2882]) -> [PASS][150] +3 other tests pass
> >    [149]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-bmg-6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@cd-dp2-hdmi-a3.html
> >    [150]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-bmg-7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@cd-dp2-hdmi-a3.html
> > 
> >   * igt@kms_flip@2x-flip-vs-expired-vblank@ab-dp2-hdmi-a3:
> >     - {shard-bmg}:        [FAIL][151] ([Intel XE#301]) -> [PASS][152] +1 other test pass
> >    [151]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-bmg-4/igt@kms_flip@2x-flip-vs-expired-vblank@ab-dp2-hdmi-a3.html
> >    [152]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-bmg-4/igt@kms_flip@2x-flip-vs-expired-vblank@ab-dp2-hdmi-a3.html
> > 
> >   * igt@kms_flip@wf_vblank-ts-check-interruptible@c-edp1:
> >     - shard-lnl:          [FAIL][153] ([Intel XE#886]) -> [PASS][154] +2 other tests pass
> >    [153]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-lnl-2/igt@kms_flip@wf_vblank-ts-check-interruptible@c-edp1.html
> >    [154]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-6/igt@kms_flip@wf_vblank-ts-check-interruptible@c-edp1.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc:
> >     - shard-lnl:          [TIMEOUT][155] ([Intel XE#3010]) -> [PASS][156]
> >    [155]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-lnl-5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html
> >    [156]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-3/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html
> > 
> >   * igt@kms_plane@plane-position-hole@pipe-a-plane-4:
> >     - shard-lnl:          [DMESG-FAIL][157] ([Intel XE#324]) -> [PASS][158] +3 other tests pass
> >    [157]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-lnl-5/igt@kms_plane@plane-position-hole@pipe-a-plane-4.html
> >    [158]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-6/igt@kms_plane@plane-position-hole@pipe-a-plane-4.html
> > 
> >   * igt@kms_plane@plane-position-hole@pipe-b-plane-2:
> >     - shard-lnl:          [DMESG-WARN][159] ([Intel XE#324]) -> [PASS][160] +2 other tests pass
> >    [159]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-lnl-5/igt@kms_plane@plane-position-hole@pipe-b-plane-2.html
> >    [160]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-6/igt@kms_plane@plane-position-hole@pipe-b-plane-2.html
> > 
> >   * igt@kms_pm_dc@dc6-dpms:
> >     - shard-lnl:          [FAIL][161] ([Intel XE#1430]) -> [PASS][162]
> >    [161]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-lnl-2/igt@kms_pm_dc@dc6-dpms.html
> >    [162]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-3/igt@kms_pm_dc@dc6-dpms.html
> > 
> >   * igt@kms_pm_rpm@legacy-planes-dpms:
> >     - shard-lnl:          [INCOMPLETE][163] ([Intel XE#1620] / [Intel XE#2864]) -> [PASS][164]
> >    [163]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-lnl-6/igt@kms_pm_rpm@legacy-planes-dpms.html
> >    [164]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_pm_rpm@legacy-planes-dpms.html
> > 
> >   * igt@kms_pm_rpm@legacy-planes-dpms@plane-41:
> >     - shard-lnl:          [DMESG-FAIL][165] ([Intel XE#1620]) -> [PASS][166]
> >    [165]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-lnl-6/igt@kms_pm_rpm@legacy-planes-dpms@plane-41.html
> >    [166]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-8/igt@kms_pm_rpm@legacy-planes-dpms@plane-41.html
> > 
> >   * igt@kms_rotation_crc@multiplane-rotation-cropping-top:
> >     - shard-lnl:          [DMESG-WARN][167] ([Intel XE#2055]) -> [PASS][168]
> >    [167]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-lnl-2/igt@kms_rotation_crc@multiplane-rotation-cropping-top.html
> >    [168]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-3/igt@kms_rotation_crc@multiplane-rotation-cropping-top.html
> > 
> >   * igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:
> >     - shard-lnl:          [FAIL][169] ([Intel XE#899]) -> [PASS][170]
> >    [169]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-lnl-6/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
> >    [170]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
> > 
> >   * igt@xe_drm_fdinfo@utilization-others-idle:
> >     - shard-lnl:          [FAIL][171] ([Intel XE#2667]) -> [PASS][172]
> >    [171]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-lnl-1/igt@xe_drm_fdinfo@utilization-others-idle.html
> >    [172]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-lnl-5/igt@xe_drm_fdinfo@utilization-others-idle.html
> > 
> >   * igt@xe_evict@evict-mixed-many-threads-small:
> >     - shard-dg2-set2:     [TIMEOUT][173] ([Intel XE#1473]) -> [PASS][174]
> >    [173]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-dg2-436/igt@xe_evict@evict-mixed-many-threads-small.html
> >    [174]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-433/igt@xe_evict@evict-mixed-many-threads-small.html
> > 
> >   * igt@xe_exec_reset@parallel-gt-reset:
> >     - {shard-bmg}:        [TIMEOUT][175] ([Intel XE#2105]) -> [PASS][176]
> >    [175]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-bmg-1/igt@xe_exec_reset@parallel-gt-reset.html
> >    [176]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-bmg-5/igt@xe_exec_reset@parallel-gt-reset.html
> > 
> >   * igt@xe_exec_threads@threads-hang-userptr-rebind-err:
> >     - {shard-bmg}:        [ABORT][177] -> [PASS][178]
> >    [177]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-bmg-6/igt@xe_exec_threads@threads-hang-userptr-rebind-err.html
> >    [178]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-bmg-7/igt@xe_exec_threads@threads-hang-userptr-rebind-err.html
> > 
> >   * igt@xe_pm@s2idle-vm-bind-userptr:
> >     - shard-adlp:         [DMESG-WARN][179] -> [PASS][180]
> >    [179]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-adlp-4/igt@xe_pm@s2idle-vm-bind-userptr.html
> >    [180]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-8/igt@xe_pm@s2idle-vm-bind-userptr.html
> > 
> >   * igt@xe_pm@s3-basic-exec:
> >     - shard-dg2-set2:     [ABORT][181] ([Intel XE#1358]) -> [PASS][182]
> >    [181]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-dg2-432/igt@xe_pm@s3-basic-exec.html
> >    [182]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-434/igt@xe_pm@s3-basic-exec.html
> > 
> >   * igt@xe_pm@s3-vm-bind-userptr:
> >     - shard-dg2-set2:     [ABORT][183] ([Intel XE#1794]) -> [PASS][184]
> >    [183]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-dg2-432/igt@xe_pm@s3-vm-bind-userptr.html
> >    [184]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-436/igt@xe_pm@s3-vm-bind-userptr.html
> > 
> >   * igt@xe_pm@s4-d3hot-basic-exec:
> >     - shard-dg2-set2:     [DMESG-WARN][185] -> [PASS][186] +1 other test pass
> >    [185]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-dg2-463/igt@xe_pm@s4-d3hot-basic-exec.html
> >    [186]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-435/igt@xe_pm@s4-d3hot-basic-exec.html
> >     - shard-adlp:         [ABORT][187] ([Intel XE#1358] / [Intel XE#1607]) -> [PASS][188]
> >    [187]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-adlp-9/igt@xe_pm@s4-d3hot-basic-exec.html
> >    [188]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-3/igt@xe_pm@s4-d3hot-basic-exec.html
> > 
> >   
> > #### Warnings ####
> > 
> >   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
> >     - shard-adlp:         [FAIL][189] ([Intel XE#1231]) -> [FAIL][190] ([Intel XE#1242])
> >    [189]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-adlp-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> >    [190]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> > 
> >   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
> >     - shard-adlp:         [FAIL][191] ([Intel XE#1231]) -> [TIMEOUT][192] ([Intel XE#1033] / [Intel XE#402])
> >    [191]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-adlp-3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> >    [192]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> > 
> >   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
> >     - shard-adlp:         [DMESG-FAIL][193] ([Intel XE#324]) -> [FAIL][194] ([Intel XE#1231]) +2 other tests fail
> >    [193]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-adlp-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> >    [194]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> > 
> >   * igt@kms_frontbuffer_tracking@drrs-1p-offscren-pri-shrfb-draw-mmap-wc:
> >     - shard-adlp:         [SKIP][195] ([Intel XE#651]) -> [TIMEOUT][196] ([Intel XE#1033])
> >    [195]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-adlp-9/igt@kms_frontbuffer_tracking@drrs-1p-offscren-pri-shrfb-draw-mmap-wc.html
> >    [196]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-9/igt@kms_frontbuffer_tracking@drrs-1p-offscren-pri-shrfb-draw-mmap-wc.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render:
> >     - shard-adlp:         [FAIL][197] ([Intel XE#1861]) -> [TIMEOUT][198] ([Intel XE#1033])
> >    [197]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-adlp-9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html
> >    [198]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
> >     - shard-adlp:         [SKIP][199] ([Intel XE#656]) -> [TIMEOUT][200] ([Intel XE#1033])
> >    [199]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-adlp-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html
> >    [200]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-adlp-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html
> > 
> >   * igt@kms_tiled_display@basic-test-pattern:
> >     - shard-dg2-set2:     [FAIL][201] ([Intel XE#1729]) -> [SKIP][202] ([Intel XE#362])
> >    [201]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-dg2-432/igt@kms_tiled_display@basic-test-pattern.html
> >    [202]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-463/igt@kms_tiled_display@basic-test-pattern.html
> > 
> >   * igt@xe_exec_reset@parallel-gt-reset:
> >     - shard-dg2-set2:     [DMESG-WARN][203] ([Intel XE#358]) -> [TIMEOUT][204] ([Intel XE#2105])
> >    [203]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852/shard-dg2-463/igt@xe_exec_reset@parallel-gt-reset.html
> >    [204]: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/shard-dg2-435/igt@xe_exec_reset@parallel-gt-reset.html
> > 
> >   
> >   {name}: This element is suppressed. This means it is ignored when computing
> >           the status of the difference (SUCCESS, WARNING, or FAILURE).
> > 
> >   [Intel XE#1033]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1033
> >   [Intel XE#1061]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1061
> >   [Intel XE#1123]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1123
> >   [Intel XE#1124]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1124
> >   [Intel XE#1128]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1128
> >   [Intel XE#1188]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1188
> >   [Intel XE#1195]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1195
> >   [Intel XE#1204]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1204
> >   [Intel XE#1231]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1231
> >   [Intel XE#1242]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1242
> >   [Intel XE#1358]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1358
> >   [Intel XE#1392]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1392
> >   [Intel XE#1397]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1397
> >   [Intel XE#1401]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1401
> >   [Intel XE#1406]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1406
> >   [Intel XE#1407]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1407
> >   [Intel XE#1421]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1421
> >   [Intel XE#1424]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1424
> >   [Intel XE#1426]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1426
> >   [Intel XE#1430]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1430
> >   [Intel XE#1437]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1437
> >   [Intel XE#1467]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1467
> >   [Intel XE#1469]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1469
> >   [Intel XE#1473]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1473
> >   [Intel XE#1475]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1475
> >   [Intel XE#1489]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1489
> >   [Intel XE#1512]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1512
> >   [Intel XE#1600]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1600
> >   [Intel XE#1607]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1607
> >   [Intel XE#1620]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1620
> >   [Intel XE#1659]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1659
> >   [Intel XE#1727]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1727
> >   [Intel XE#1729]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1729
> >   [Intel XE#1745]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1745
> >   [Intel XE#1794]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1794
> >   [Intel XE#1861]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/1861
> >   [Intel XE#2055]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2055
> >   [Intel XE#2105]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2105
> >   [Intel XE#2191]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2191
> >   [Intel XE#2234]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2234
> >   [Intel XE#2244]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2244
> >   [Intel XE#2252]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2252
> >   [Intel XE#2284]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2284
> >   [Intel XE#2311]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2311
> >   [Intel XE#2313]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2313
> >   [Intel XE#2320]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2320
> >   [Intel XE#2333]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2333
> >   [Intel XE#2387]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2387
> >   [Intel XE#2426]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2426
> >   [Intel XE#2436]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2436
> >   [Intel XE#2514]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2514
> >   [Intel XE#2541]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2541
> >   [Intel XE#2577]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2577
> >   [Intel XE#2597]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2597
> >   [Intel XE#261]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/261
> >   [Intel XE#2625]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2625
> >   [Intel XE#2667]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2667
> >   [Intel XE#2754]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2754
> >   [Intel XE#2763]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2763
> >   [Intel XE#2791]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2791
> >   [Intel XE#2850]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2850
> >   [Intel XE#2864]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2864
> >   [Intel XE#288]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/288
> >   [Intel XE#2882]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2882
> >   [Intel XE#2883]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2883
> >   [Intel XE#2887]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2887
> >   [Intel XE#2893]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2893
> >   [Intel XE#2905]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2905
> >   [Intel XE#2907]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2907
> >   [Intel XE#2919]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2919
> >   [Intel XE#2931]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2931
> >   [Intel XE#2947]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2947
> >   [Intel XE#2948]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2948
> >   [Intel XE#2957]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/2957
> >   [Intel XE#301]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/301
> >   [Intel XE#3010]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/3010
> >   [Intel XE#306]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/306
> >   [Intel XE#307]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/307
> >   [Intel XE#308]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/308
> >   [Intel XE#309]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/309
> >   [Intel XE#316]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/316
> >   [Intel XE#323]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/323
> >   [Intel XE#324]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/324
> >   [Intel XE#358]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/358
> >   [Intel XE#361]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/361
> >   [Intel XE#362]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/362
> >   [Intel XE#366]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/366
> >   [Intel XE#367]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/367
> >   [Intel XE#373]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/373
> >   [Intel XE#378]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/378
> >   [Intel XE#402]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/402
> >   [Intel XE#455]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/455
> >   [Intel XE#488]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/488
> >   [Intel XE#579]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/579
> >   [Intel XE#599]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/599
> >   [Intel XE#651]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/651
> >   [Intel XE#653]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/653
> >   [Intel XE#656]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/656
> >   [Intel XE#688]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/688
> >   [Intel XE#787]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/787
> >   [Intel XE#877]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/877
> >   [Intel XE#886]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/886
> >   [Intel XE#899]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/899
> >   [Intel XE#908]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/908
> >   [Intel XE#911]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/911
> >   [Intel XE#929]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/929
> >   [Intel XE#944]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/944
> > 
> > 
> > Build changes
> > -------------
> > 
> >   * Linux: xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852 -> xe-pw-139812v1
> > 
> >   IGT_8061: 8061
> >   xe-2042-e1aba2bf4f79f2f8ae7ce538124d445fc91df852: e1aba2bf4f79f2f8ae7ce538124d445fc91df852
> >   xe-pw-139812v1: 139812v1
> > 
> > == Logs ==
> > 
> > For more details see: https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-139812v1/index.html
