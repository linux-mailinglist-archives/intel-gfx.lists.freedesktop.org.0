Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FEA929CB43
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 22:33:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CB316E0EB;
	Tue, 27 Oct 2020 21:33:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B1FC6E0EB
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 21:33:23 +0000 (UTC)
IronPort-SDR: 4he4sw3PDu11qdqRml9EsqPLCF0bf5IIlV6zhV935WHs3I35tCcjjruCYbmdBFJ9RP9mBX7esx
 wsY93wKkCuyA==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="232349959"
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="232349959"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 14:33:22 -0700
IronPort-SDR: A1haXKy0dHeoMGOaDGk5u8TrcS8qSB7ICFlFJ/Z2bljFtZOgwf2+Qi0gSgRuIjwkRYwetY0vZ3
 KYANvyCwD8kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="323100591"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 27 Oct 2020 14:33:22 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 27 Oct 2020 14:33:22 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 27 Oct 2020 14:33:21 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.1713.004;
 Tue, 27 Oct 2020 14:33:21 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Josh Boyer <jwboyer@kernel.org>
Thread-Topic: i915 Update : DG1 DMC
Thread-Index: Adaea4W6Jtrfz8J7RqGJot9NVZc0zQLAvXsAAM6Q1zA=
Date: Tue, 27 Oct 2020 21:33:21 +0000
Message-ID: <9bd49e7ab68c4ef0b17173cfc9d4ecfa@intel.com>
References: <3997663f047e4ab68fca41e3c8a05671@intel.com>
 <CA+5PVA4tEqub_1KmA9WeRa3WZ4OpDejdBn2FDxZ-LESfFD1Vnw@mail.gmail.com>
In-Reply-To: <CA+5PVA4tEqub_1KmA9WeRa3WZ4OpDejdBn2FDxZ-LESfFD1Vnw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] i915 Update : DG1 DMC
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
Cc: Kyle McMartin <kyle@mcmartin.ca>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "ben@decadent.org.uk" <ben@decadent.org.uk>,
 "linux-firmware@kernel.org" <linux-firmware@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Josh Boyer <jwboyer@kernel.org>
> Sent: Friday, October 23, 2020 4:58 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: linux-firmware@kernel.org; Kyle McMartin <kyle@mcmartin.ca>;
> ben@decadent.org.uk; intel-gfx@lists.freedesktop.org
> Subject: Re: i915 Update : DG1 DMC
> 
> Pulled and pushed out.
> 
> josh
>
Thanks Josh.

> On Fri, Oct 9, 2020 at 2:41 PM Srivatsa, Anusha
> <anusha.srivatsa@intel.com> wrote:
> >
> > Hi Kyle, Ben,
> >
> >
> >
> > Please add the i915 updates to linux-firmware from branch
> > dg1_dmc_v2_02
> >
> >
> >
> > The following changes since commit
> 58d41d0facca2478d3e45f6321224361519aee96:
> >
> >
> >
> >   ice: Add comms package file for Intel E800 series driver (2020-10-05
> > 08:09:03 -0400)
> >
> >
> >
> > are available in the Git repository at: dg1_dmc_v2_02
> >
> >
> >
> >   git://anongit.freedesktop.org/drm/drm-firmware dg1_dmc_v2_02
> >
> >
> >
> > for you to fetch changes up to
> a140ef3eb3746aba2c897db16e02ffb5ffa9e7a2:
> >
> >
> >
> >   i915: Add DG1 DMC v2.02 (2020-10-08 12:13:33 -0700)
> >
> >
> >
> > ----------------------------------------------------------------
> >
> > Anusha Srivatsa (1):
> >
> >       i915: Add DG1 DMC v2.02
> >
> >
> >
> > WHENCE                   |   2 ++
> >
> > i915/dg1_dmc_ver2_02.bin | Bin 0 -> 16624 bytes
> >
> > 2 files changed, 2 insertions(+)
> >
> > create mode 100644 i915/dg1_dmc_ver2_02.bin
> >
> >
> >
> > Thanks,
> >
> > Anusha
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
