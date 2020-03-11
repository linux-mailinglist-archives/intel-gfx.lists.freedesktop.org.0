Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2A71814E2
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 10:33:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7F036E959;
	Wed, 11 Mar 2020 09:33:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1937E6E959
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 09:33:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 02:33:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,540,1574150400"; d="scan'208";a="234658034"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga007.fm.intel.com with ESMTP; 11 Mar 2020 02:33:13 -0700
Received: from fmsmsx125.amr.corp.intel.com (10.18.125.40) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 11 Mar 2020 02:33:12 -0700
Received: from shsmsx107.ccr.corp.intel.com (10.239.4.96) by
 FMSMSX125.amr.corp.intel.com (10.18.125.40) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 11 Mar 2020 02:33:11 -0700
Received: from shsmsx101.ccr.corp.intel.com ([169.254.1.43]) by
 SHSMSX107.ccr.corp.intel.com ([169.254.9.232]) with mapi id 14.03.0439.000;
 Wed, 11 Mar 2020 17:33:09 +0800
From: "Liu, Chuansheng" <chuansheng.liu@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/debugfs: print more workaround
 registers
Thread-Index: AQHV94H5l1oaEPqyOku1Nmpd8kqssahCmN4AgACGhiA=
Date: Wed, 11 Mar 2020 09:33:08 +0000
Message-ID: <27240C0AC20F114CBF8149A2696CBE4A6163F3FA@SHSMSX101.ccr.corp.intel.com>
References: <20200311084704.20468-1-chuansheng.liu@intel.com>
 <158391872698.28297.4099094935804827720@build.alporthouse.com>
In-Reply-To: <158391872698.28297.4099094935804827720@build.alporthouse.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: print more workaround
 registers
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

Hi Chris,

> -----Original Message-----
> From: Chris Wilson <chris@chris-wilson.co.uk>
> Sent: Wednesday, March 11, 2020 5:25 PM
> To: Liu, Chuansheng <chuansheng.liu@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: print more workaround
> registers
> 
> Quoting Chuansheng Liu (2020-03-11 08:47:04)
> > In the node i915_wa_registers, we could print out
> > more information with whitelist, GT workaround and
> > engine workaround.
> 
> Who's the consumer? We've stopped using this file in igt.
For debugging convenience.

I am debugging some customer issues based on older kernel version, with this information,
we can more easily get to know if some HW WAs are missing in their version.

It helps a lot indeed. For example:
Customer is using 4.19.96, which missed your patch of fixing GPU hang:)

Author: Chris Wilson <chris@chris-wilson.co.uk>
Date:   Wed Sep 4 11:07:07 2019 +0100

    drm/i915: Restore relaxed padding (OCL_OOB_SUPPRES_ENABLE) for skl+

Best Regards
Chuansheng

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
