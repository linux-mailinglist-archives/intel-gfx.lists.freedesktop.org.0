Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D5A5BD23D
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Sep 2022 18:33:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BDA910E694;
	Mon, 19 Sep 2022 16:33:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AD2B10E694
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Sep 2022 16:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663605199; x=1695141199;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WUgE2kAFMvMmNxp+soTrMEjte6+RiniqHMxacuRTz1s=;
 b=PKhHKvgRVqh7AluR3OchudT+R42KseWfmDk3dh87ilVErKxWRYWX59h7
 S7dg6N09Yrj0qayFKw60AsA/dh0HPcDGoWUEZv+lZLGWmFUhC7eHt/72W
 VbyGOEqP8u8pRcimLm1qEwY031vzPC2hV2AvN6fv/AwOzNQA9lqd10c4b
 IopJcWzkw7Doa2ZBmyzGwf873I0Wss/kVHjyPVK8goV4UGtvuAgIl2JXn
 nxgnYXkFk0ySRMi7iI2pEXdiTTMDr5JRWX7Z3CcPPaqum0Sb9XRv7G+AM
 alDfJrDkOBfdZocjv3oU8jtYH1/O+/49Vgf4xJl0MZuEd65OWRgEqjylh Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="325742368"
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="325742368"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 09:33:18 -0700
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="744174098"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.251.10.194])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 09:33:18 -0700
Date: Mon, 19 Sep 2022 09:33:12 -0700
Message-ID: <871qs7e33r.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
In-Reply-To: <DM4PR11MB62134B8DB956B6658332E70CEC4D9@DM4PR11MB6213.namprd11.prod.outlook.com>
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>	<166337851306.24748.10954630894162317580@emeril.freedesktop.org>	<87sfkqvjln.wl-ashutosh.dixit@intel.com>	<DM4PR11MB62134B8DB956B6658332E70CEC4D9@DM4PR11MB6213.namprd11.prod.outlook.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.1 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgSW50?=
 =?utf-8?q?roduce_struct_cdclk=5Fstep?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, 18 Sep 2022 23:35:56 -0700, Vudum, Lakshminarayana wrote:
>

Hi Lakshmi,

> Filed a couple of issues and re-reported.
>
> This one Likely a regression?
> https://gitlab.freedesktop.org/drm/intel/-/issues/6864
> Few tests - dmesg-warn/dmesg-fail/incomplete -BUG: unable to handle page =
fault for address .*, #PF: supervisor read access in kernel mode, RIP: 0010=
:__list_add_valid, Call Trace: dma_fence_default_wait, dma_fence_add_callba=
ck
>
> https://gitlab.freedesktop.org/drm/intel/-/issues/6863
> igt@debugfs_test@read_all_entries - incomplete - BUG: unable to handle pa=
ge fault for address: ffffc90000bb81a8, RIP: 0010:gen2_read32

Not sure about https://gitlab.freedesktop.org/drm/intel/-/issues/6864, I
didn't see it.

I was mentioning
https://gitlab.freedesktop.org/drm/intel/-/issues/6863. This is a
regression. I have already submitted a fix for it:

https://patchwork.freedesktop.org/series/108747/

Thanks.
--
Ashutosh

> Lakshmi.
>
> -----Original Message-----
> From: Dixit, Ashutosh <ashutosh.dixit@intel.com>
> Sent: Friday, September 16, 2022 7:08 PM
> To: intel-gfx@lists.freedesktop.org; Vudum, Lakshminarayana <lakshminaray=
ana.vudum@intel.com>
> Cc: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Subject: Re: [Intel-gfx] =E2=9C=97 Fi.CI.BAT: failure for Introduce struc=
t cdclk_step
>
> On Fri, 16 Sep 2022 18:35:13 -0700, Patchwork wrote:
> >
>
> Hi Lakshmi,
>
> > Series:  Introduce struct cdclk_step
> > URL:     https://patchwork.freedesktop.org/series/108685/
> > State:   failure
> > Details:
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108685v1/index.html
> >
> > CI Bug Log - changes from CI_DRM_12148 -> Patchwork_108685v1
> >
> > Summary
> >
> > FAILURE
> >
> > Serious unknown changes coming with Patchwork_108685v1 absolutely need
> > to be verified manually.
> >
> > If you think the reported changes have nothing to do with the changes
> > introduced in Patchwork_108685v1, please notify your bug team to allow
> > them to document this new failure mode, which will reduce false positiv=
es in CI.
> >
> > External URL:
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108685v1/index.html
> >
> > Participating hosts (43 -> 41)
> >
> > Additional (2): fi-icl-u2 fi-pnv-d510
> > Missing (4): fi-ctg-p8600 fi-hsw-4200u fi-bdw-samus bat-dg1-5
> >
> > Possible new issues
> >
> > Here are the unknown changes that may have been introduced in Patchwork=
_108685v1:
> >
> > IGT changes
> >
> > Possible regressions
> >
> >   =E2=80=A2 igt@debugfs_test@read_all_entries:
> >       =E2=96=A1 fi-pnv-d510: NOTRUN -> INCOMPLETE
>
> This failure is unrelated and needs a new bug. Seems to be caused by:
>
>	fe5979665f640 ("drm/i915/debugfs: Add perf_limit_reasons in debugfs")
>
> Thanks.
> --
> Ashutosh
