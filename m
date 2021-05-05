Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B0D37438F
	for <lists+intel-gfx@lfdr.de>; Wed,  5 May 2021 19:37:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2A396EC2E;
	Wed,  5 May 2021 17:37:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F3CD6EC27
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 May 2021 17:36:59 +0000 (UTC)
IronPort-SDR: xBg2suzRD3SqrGyXMs+XFQZoTbNklNl+c2HKdaUbUipK8im/KAR/Cj1Ix16tzh9o9CX6lcFLKx
 UoJY3TghEIzg==
X-IronPort-AV: E=McAfee;i="6200,9189,9975"; a="198319364"
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; d="scan'208";a="198319364"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2021 10:36:44 -0700
IronPort-SDR: dvOf49XmUOgycLYYuv1VzyqnUTalb6mIo10eLnoGILaPxumAjLZSNapHnBY6w4OSYAagI3Hhm6
 AuIoMSr4i08w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; d="scan'208";a="433932193"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 05 May 2021 10:36:44 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 5 May 2021 10:36:44 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 5 May 2021 10:36:43 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2106.013;
 Wed, 5 May 2021 10:36:43 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 0/3] Pipe DMC Prep patches
Thread-Index: AQHXPHNFcoW8PxQ9BEypxmNctvpWIqrSjD2AgAJjXQCAAEBGsA==
Date: Wed, 5 May 2021 17:36:43 +0000
Message-ID: <8235ee914ee5408199275b3573dfead9@intel.com>
References: <20210428211249.11037-1-anusha.srivatsa@intel.com>
 <87fsz3znxm.fsf@intel.com> <87lf8ty975.fsf@intel.com>
In-Reply-To: <87lf8ty975.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 0/3] Pipe DMC Prep patches
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Tuesday, May 4, 2021 11:41 PM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 0/3] Pipe DMC Prep patches
> 
> On Mon, 03 May 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> > On Wed, 28 Apr 2021, Anusha Srivatsa <anusha.srivatsa@intel.com>
> wrote:
> >> This series adds the prep work needed before the actual Pipe DMC
> >> implementation.
> >
> > When should we rename csr to dmc all over the place?
> 
> To elaborate, I think it's pretty confusing that we use both CSR and DMC
> acronyms in code. There may be a distinction, but we don't respect that in
> the usage. Sure, the spec mentions both, but I don't think we follow the
> naming there either.
> 
> I think we should just rename all CSR references to DMC, including the file
> name and the function and struct names.
>
Just eyeballing the source file, it looks like it is a good way to go. We have function names like parse_csr_fw_dmc which can be changed to just parse_dmc_fw_header or something on those lines...

> I wonder if it would be better to do the renames first before starting to build
> a lot of changes on top.

Yes. The renames will affect some things that this series touches as well.

Anusha
> BR,
> Jani.
> 
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
