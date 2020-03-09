Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D6B17E542
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 18:02:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19DEB6E063;
	Mon,  9 Mar 2020 17:02:36 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7507F6E063
 for <Intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 17:02:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 10:02:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,534,1574150400"; d="scan'208";a="265316237"
Received: from irsmsx106.ger.corp.intel.com ([163.33.3.31])
 by fmsmga004.fm.intel.com with ESMTP; 09 Mar 2020 10:02:34 -0700
Received: from irsmsx601.ger.corp.intel.com (163.33.146.7) by
 IRSMSX106.ger.corp.intel.com (163.33.3.31) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 9 Mar 2020 17:02:33 +0000
Received: from irsmsx601.ger.corp.intel.com (163.33.146.7) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 9 Mar 2020 17:02:33 +0000
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7]) by
 irsmsx601.ger.corp.intel.com ([163.33.146.7]) with mapi id 15.01.1713.004;
 Mon, 9 Mar 2020 17:02:33 +0000
From: "Mrozek, Michal" <michal.mrozek@intel.com>
To: "Antognolli, Rafael" <rafael.antognolli@intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [PATCH] drm/i915/tgl: WaDisableGPGPUMidThreadPreemption
Thread-Index: AQHV8joOatT4aMfviEm7rDbzx46lAag4mDuAgAfq25A=
Date: Mon, 9 Mar 2020 17:02:33 +0000
Message-ID: <299e1f69592d48a7a4e964b6a3d2e7d1@intel.com>
References: <20200304153144.10675-1-tvrtko.ursulin@linux.intel.com>
 <20200304160245.ewy55e2iqtcey6vs@rantogno-mobl4.amr.corp.intel.com>
In-Reply-To: <20200304160245.ewy55e2iqtcey6vs@rantogno-mobl4.amr.corp.intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl:
 WaDisableGPGPUMidThreadPreemption
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
Cc: "Zdunowski, Piotr" <piotr.zdunowski@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>, "Ekstrand,
 Jason" <jason.ekstrand@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

>>But he asked whether it's possible for Media and OpenCL drivers to also disable mid-thread preemption through the INTERFACE_DESCRIPTOR_DATA, instead of from the >>kernel side, so we could try to experiment with it in the future.

Interface Descriptor setting only switches the preemption from mid thread to thread group.
It doesn't allow to disable it completely and there are cases where this is required  (i.e. VME).
For that we need mmio whitelist.

Michal
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
