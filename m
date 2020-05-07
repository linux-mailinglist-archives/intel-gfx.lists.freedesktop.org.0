Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B7F1C801B
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 04:44:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 469E86E907;
	Thu,  7 May 2020 02:44:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFE456E907
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 02:44:20 +0000 (UTC)
IronPort-SDR: jzTZhe5LGW5H6SAKZANkqvMLd4ezo7sR1GIwbdyAtJbwrWN6Vh+JPfy9xCUnGGIOj6KGglatBm
 QdsGI3wQ2Ppw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 19:44:20 -0700
IronPort-SDR: Klc3E5mXtQQWSzcGeDziLBXk6sIDmEbZi9idxpFlnQAEXT56CH/cANxevf8aoEJtT2XalDX7gG
 56NRDfapjqKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,361,1583222400"; d="scan'208";a="284841578"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga004.fm.intel.com with ESMTP; 06 May 2020 19:44:19 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 6 May 2020 19:44:19 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 6 May 2020 19:44:19 -0700
Received: from shsmsx107.ccr.corp.intel.com (10.239.4.96) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 6 May 2020 19:44:19 -0700
Received: from shsmsx101.ccr.corp.intel.com ([169.254.1.225]) by
 SHSMSX107.ccr.corp.intel.com ([169.254.9.200]) with mapi id 14.03.0439.000;
 Thu, 7 May 2020 10:44:16 +0800
From: "Liu, Chuansheng" <chuansheng.liu@intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 4/4] drm/i915/gen12: Invalidate aux table entries forcibly
Thread-Index: AQHWI8bvr/EJIOEmiUOSUyNnMs7jL6ib3RqA
Date: Thu, 7 May 2020 02:44:15 +0000
Message-ID: <27240C0AC20F114CBF8149A2696CBE4A6169DECF@SHSMSX101.ccr.corp.intel.com>
References: <158878348241.927.811872095434935872@build.alporthouse.com>
 <20200506165310.1239-1-mika.kuoppala@linux.intel.com>
In-Reply-To: <20200506165310.1239-1-mika.kuoppala@linux.intel.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/gen12: Invalidate aux table
 entries forcibly
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
Cc: "Shi, Yang A" <yang.a.shi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Mika,

> -----Original Message-----
> From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Sent: Thursday, May 7, 2020 12:53 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>; Chris Wilson
> <chris@chris-wilson.co.uk>; Liu, Chuansheng <chuansheng.liu@intel.com>;
> Antognolli, Rafael <rafael.antognolli@intel.com>; Shi, Yang A
> <yang.a.shi@intel.com>
> Subject: [PATCH 4/4] drm/i915/gen12: Invalidate aux table entries forcibly
> 
> Aux table invalidation can fail on update. So
> next access may cause memory access to be into stale entry.
> 
> Proposed workaround is to invalidate entries between
> all batchbuffers.

Thanks for cooking this patch for RCS engine. Similar way applies to all the engines.
Expecting more patches.

VD0_CCS_AUX_NV	04218h
VD1_CCS_AUX_NV	04228h
VE0_CCS_AUX_NV	04238h
VD2_CCS_AUX_NV	04298h
VD3_CCS_AUX_NV	042A8h
VE1_CCS_AUX_NV	042B8h
COMPCS0_CCS_AUX_NV	042C8h
GFX_CCS_AUX_NV	04208h
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
