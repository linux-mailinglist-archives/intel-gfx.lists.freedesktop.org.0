Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3972A30B350
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 00:19:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DB3A6E89B;
	Mon,  1 Feb 2021 23:19:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6289D6E89B
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 23:19:43 +0000 (UTC)
IronPort-SDR: I5bfwd7pqUhWIB3bnzLxRG+vWIz58AEwrNcGqQzbWB7WymUqU3KqmjV3wMTWk8056Bl6Xs9rPU
 pJVNKFS14nSQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="177259264"
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="177259264"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 15:19:42 -0800
IronPort-SDR: kOsbO/1VfkPVmNRqQdO/cMi8eeYAuE0n1oqVzdCJMXxeEp9MDdo97TyLjWz1IsSJTOYZc8nqhb
 s+psA4WTNY5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="391191226"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga008.jf.intel.com with ESMTP; 01 Feb 2021 15:19:41 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 1 Feb 2021 15:19:41 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 1 Feb 2021 15:19:40 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2106.002;
 Mon, 1 Feb 2021 15:19:40 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dg1: Add GuC and HuC support
Thread-Index: AQHW+O4x9TRpEz21EkGfw+7ctvI+46pEcXwA//994KA=
Date: Mon, 1 Feb 2021 23:19:40 +0000
Message-ID: <e6ddd946b58e4a4792a98d5bca63763d@intel.com>
References: <20210201230133.19221-1-anusha.srivatsa@intel.com>
 <161222068054.27906.16807754158559226361@build.alporthouse.com>
In-Reply-To: <161222068054.27906.16807754158559226361@build.alporthouse.com>
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
> Sent: Monday, February 1, 2021 3:05 PM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg1: Add GuC and HuC support
> 
> Quoting Anusha Srivatsa (2021-02-01 23:01:33)
> > Add support to load GuC and HuC firmware for Dg1.
> 
> Do you have the corresponding link for the linux-firmware.git? That is
> useful for cross referencing that the target version does exist in the public
> repository.

I am waiting for CI runs before I can propagate it to linux-firmware.git. 

Anusha
> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
