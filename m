Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0708A17F3F2
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 10:46:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78F3589DE3;
	Tue, 10 Mar 2020 09:46:22 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E46FB89DE3
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 09:46:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 02:46:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,536,1574150400"; d="scan'208";a="388868937"
Received: from irsmsx154.ger.corp.intel.com ([163.33.192.96])
 by orsmga004.jf.intel.com with ESMTP; 10 Mar 2020 02:46:20 -0700
Received: from irsmsx603.ger.corp.intel.com (163.33.146.9) by
 IRSMSX154.ger.corp.intel.com (163.33.192.96) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 10 Mar 2020 09:46:19 +0000
Received: from irsmsx601.ger.corp.intel.com (163.33.146.7) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 10 Mar 2020 09:46:19 +0000
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7]) by
 irsmsx601.ger.corp.intel.com ([163.33.146.7]) with mapi id 15.01.1713.004;
 Tue, 10 Mar 2020 09:46:19 +0000
From: "Mrozek, Michal" <michal.mrozek@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/tgl: WaEnablePreemptionGranularityControlByUMD
Thread-Index: AQHV9r0EfAGU10muHE+E5Cnz+MKNDKhBk7HA
Date: Tue, 10 Mar 2020 09:46:19 +0000
Message-ID: <3b8b27b2d31d4477a94e4fad9309a995@intel.com>
References: <20200310091927.27401-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200310091927.27401-1-tvrtko.ursulin@linux.intel.com>
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
 WaEnablePreemptionGranularityControlByUMD
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

>> We need confirmation and acks from all three userspace components here.
>> Especially since my impression was some are for and some were against whitelisting this one.

Acked-by: Michal Mrozek <Michal.mrozek@intel.com>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
