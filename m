Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0143213B642
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 00:57:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2F916E5CC;
	Tue, 14 Jan 2020 23:57:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B51BF6E5CC
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 23:57:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 15:57:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,320,1574150400"; d="scan'208";a="225768066"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga006.jf.intel.com with ESMTP; 14 Jan 2020 15:57:05 -0800
Received: from fmsmsx121.amr.corp.intel.com (10.18.125.36) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 14 Jan 2020 15:57:05 -0800
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.210]) by
 fmsmsx121.amr.corp.intel.com ([169.254.6.186]) with mapi id 14.03.0439.000;
 Tue, 14 Jan 2020 15:57:05 -0800
From: "Tang, CQ" <cq.tang@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "Auld, Matthew"
 <matthew.auld@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/3] drm/i915: make stolen more region centric
Thread-Index: AQHVwnCBNMjurBjxWku9oD12rnCMUafZ6jkAgBD8L/A=
Date: Tue, 14 Jan 2020 23:57:04 +0000
Message-ID: <1D440B9B88E22A4ABEF89F9F1F81BC29E94F6E37@FMSMSX106.amr.corp.intel.com>
References: <20200103200030.334215-1-matthew.auld@intel.com>
 <157808336882.11773.1542979275077374013@skylake-alporthouse-com>
In-Reply-To: <157808336882.11773.1542979275077374013@skylake-alporthouse-com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjcxMWQ4NmUtNjljYS00N2Y3LTljMzYtYTZjMjYxZWU1N2E5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiTjE5VzMxejZTUHpEZjRNd0tEMTNWMDJ4cU5JZ2NiVWUxbXZwTjFIR3hGSFNEaU54bUVab2pWYkNVc012VlRKUyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: make stolen more region
 centric
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
> Sent: Friday, January 3, 2020 12:29 PM
> To: Auld, Matthew <matthew.auld@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Tang, CQ <cq.tang@intel.com>
> Subject: Re: [PATCH 1/3] drm/i915: make stolen more region centric
> 
> Quoting Matthew Auld (2020-01-03 20:00:28)
> > From: CQ Tang <cq.tang@intel.com>
> 
> Just throwing the kitchen sink into intel_memory_region is not very
> appetizing. There seems to be no design behind this -- as foretold by the lack
> of rationale.

For single stolen region, I agreed with you. But this is used to match the other region design, and prepare multiple stolen regions.

--CQ

> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
