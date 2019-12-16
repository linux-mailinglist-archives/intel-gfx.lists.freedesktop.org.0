Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC99121F23
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 00:58:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 448D16E8F7;
	Mon, 16 Dec 2019 23:58:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB28D6E8F7
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 23:58:15 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 15:58:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,323,1571727600"; d="scan'208";a="227293163"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga002.jf.intel.com with ESMTP; 16 Dec 2019 15:58:14 -0800
Date: Mon, 16 Dec 2019 15:59:44 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Tomi Sarvela <tomi.p.sarvela@intel.com>
Message-ID: <20191216235944.GL19224@intel.com>
References: <20191211212433.18185-1-manasi.d.navare@intel.com>
 <157611880961.32008.16220670685103356969@emeril.freedesktop.org>
 <20191212212845.GA24342@intel.com>
 <db330426-2263-b095-8019-9e9415c25901@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <db330426-2263-b095-8019-9e9415c25901@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm=3A_Handle_connector_tile_suppor?=
 =?utf-8?q?t_only_for_modes_that_match_tile_size?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 13, 2019 at 10:54:55AM +0200, Tomi Sarvela wrote:
> On 12/12/19 11:28 PM, Manasi Navare wrote:
> >The KBL failure does not look related to the changes in this patch series.
> >Tomi, could you confirm if this is a false negative?
> >
> >Manasi
> 
> The failures with the patchset seem same as all the other results from
> live_gt_pm: just that kbl-x1275 hasn't been ticked to the bugfilter,
> probably because it hasn't survived the test before (module_reload).
> 
> I've triggered shard-run for this series.

Any updates on the shard-run results?

Manasi

> 
> Tomi
> 
> >On Thu, Dec 12, 2019 at 02:46:49AM +0000, Patchwork wrote:
> >>== Series Details ==
> >>
> >>Series: series starting with [1/2] drm: Handle connector tile support only for modes that match tile size
> >>URL   : https://patchwork.freedesktop.org/series/70790/
> >>State : failure
> >>
> >>== Summary ==
> >>
> >>CI Bug Log - changes from CI_DRM_7545 -> Patchwork_15701
> >>====================================================
> >>
> >>Summary
> >>-------
> >>
> >>   **FAILURE**
> 
> >>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/index.html
> >>
> >>Possible new issues
> >>-------------------
> >>
> >>   Here are the unknown changes that may have been introduced in Patchwork_15701:
> >>
> >>### IGT changes ###
> >>
> >>#### Possible regressions ####
> >>
> >>   * igt@i915_selftest@live_gt_pm:
> >>     - fi-kbl-x1275:       NOTRUN -> [DMESG-FAIL][1]
> >>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/fi-kbl-x1275/igt@i915_selftest@live_gt_pm.html
> 
> >>
> >>== Logs ==
> >>
> >>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/index.html
> 
> 
> -- 
> Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
