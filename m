Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D69217F244
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 09:50:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCA5E8982A;
	Tue, 10 Mar 2020 08:50:18 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB7938982A
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 08:50:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 01:50:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,535,1574150400"; d="scan'208";a="234280705"
Received: from irsmsx153.ger.corp.intel.com ([163.33.192.75])
 by fmsmga007.fm.intel.com with ESMTP; 10 Mar 2020 01:50:15 -0700
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX153.ger.corp.intel.com (163.33.192.75) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 10 Mar 2020 08:50:14 +0000
Received: from irsmsx601.ger.corp.intel.com (163.33.146.7) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 10 Mar 2020 08:50:14 +0000
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7]) by
 irsmsx601.ger.corp.intel.com ([163.33.146.7]) with mapi id 15.01.1713.004;
 Tue, 10 Mar 2020 08:50:14 +0000
From: "Mrozek, Michal" <michal.mrozek@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "Antognolli, Rafael"
 <rafael.antognolli@intel.com>
Thread-Topic: [PATCH] drm/i915/tgl: WaDisableGPGPUMidThreadPreemption
Thread-Index: AQHV8joOatT4aMfviEm7rDbzx46lAag4mDuAgAfq25CAAQkNAIAAAOUg
Date: Tue, 10 Mar 2020 08:50:14 +0000
Message-ID: <d1584582bf694008a951e07b7c45de36@intel.com>
References: <20200304153144.10675-1-tvrtko.ursulin@linux.intel.com>
 <20200304160245.ewy55e2iqtcey6vs@rantogno-mobl4.amr.corp.intel.com>
 <299e1f69592d48a7a4e964b6a3d2e7d1@intel.com>
 <ba7c627f-7f3f-12a3-2323-ba068eb6176e@linux.intel.com>
In-Reply-To: <ba7c627f-7f3f-12a3-2323-ba068eb6176e@linux.intel.com>
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

>>With "disable it completely" you mean disable preemption completely - go lower than thread-group in granularity?

Yes, disable it completely.

Michal
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
