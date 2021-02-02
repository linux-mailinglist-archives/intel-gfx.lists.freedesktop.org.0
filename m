Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFCE30B444
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 01:46:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B88546E8B8;
	Tue,  2 Feb 2021 00:46:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E1BF6E8B8
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 00:46:13 +0000 (UTC)
IronPort-SDR: kGrap+VruDscdH1RaKMXiwddRgjDOqr0JQNYdb+HU7JeBan7QpKXQ6hlQfcq9EljHIpMNrxAxG
 ogjFfcglY4Qg==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="244858547"
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="244858547"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 16:46:10 -0800
IronPort-SDR: zdkzuiZH3/aD35TJTXoEssc+1cWeTySTPmhoXhtUhzd37Rq6XrvRSodwemz7W/UWx9U9whvAuw
 L20rKMABqVqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="412768171"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 01 Feb 2021 16:46:09 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 1 Feb 2021 16:46:09 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 1 Feb 2021 16:46:09 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2106.002;
 Mon, 1 Feb 2021 16:46:09 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dg1: Add GuC and HuC support
Thread-Index: AQHW+O4x9TRpEz21EkGfw+7ctvI+46pEcXwA//994KCAAIcDgP//kPcg
Date: Tue, 2 Feb 2021 00:46:08 +0000
Message-ID: <6195acd002f64f7b94e3010512e3da68@intel.com>
References: <20210201230133.19221-1-anusha.srivatsa@intel.com>
 <161222068054.27906.16807754158559226361@build.alporthouse.com>
 <e6ddd946b58e4a4792a98d5bca63763d@intel.com>
 <161222172927.27906.13199228862353951269@build.alporthouse.com>
In-Reply-To: <161222172927.27906.13199228862353951269@build.alporthouse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.1.200.100]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg1: Add GuC and HuC support
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
> From: Chris Wilson <chris@chris-wilson.co.uk>
> Sent: Monday, February 1, 2021 3:22 PM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg1: Add GuC and HuC support
> 
> Quoting Srivatsa, Anusha (2021-02-01 23:19:40)
> >
> >
> > > -----Original Message-----
> > > From: Chris Wilson <chris@chris-wilson.co.uk>
> > > Sent: Monday, February 1, 2021 3:05 PM
> > > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> > > gfx@lists.freedesktop.org
> > > Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg1: Add GuC and HuC
> > > support
> > >
> > > Quoting Anusha Srivatsa (2021-02-01 23:01:33)
> > > > Add support to load GuC and HuC firmware for Dg1.
> > >
> > > Do you have the corresponding link for the linux-firmware.git? That
> > > is useful for cross referencing that the target version does exist
> > > in the public repository.
> >
> > I am waiting for CI runs before I can propagate it to linux-firmware.git.
> 
> From upstream CI? We don't have guc loading enabled for dg1, or much of
> dg1 for that matter. Best we can do is compile check :( -Chris

Totally missed that bit. I will go ahead with propagating PR to linux-firmware first. It might be sometime till we have DG1 working on CI.

Anusha
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
