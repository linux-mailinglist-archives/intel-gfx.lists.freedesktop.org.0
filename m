Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5375006B1
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 09:11:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4CFF10FC8C;
	Thu, 14 Apr 2022 07:11:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B25110FC8C
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 07:11:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649920303; x=1681456303;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=srzJjQwx5q3TN30j/e7q6PUqrKTBFfg3YeNXqlcU7ww=;
 b=XeGFBvTb6Ul94aTJJWZA68ruedfBcDBO4kjo3MpDdTUJBQvN+fQ4lA+W
 r3RMYUytM/QXcEIWfMCs/5ThzoUMpXiM6eIvaY4Z5SDFRvFGC4Cs21tye
 WrAoaWtCVOnd4puAq7ZHxrAArqS+1/ovIKdyiFkIKcGhNYCrTmcNT754X
 4LxVt1Pr3TN/w28T44VB1V9Dw0mz452Ht8pP1ONTXRiMgYZhyM8ZCNSp2
 pE9rH4//DRC+ejiKxKLfXFI0Ul7Uxst3dB/hASjxla2tyXUFd3aTL9ZYZ
 Tu70nWLzgVBMTJyRsq7BWCjRNMkWikuDJ/sUVHBh17njUucG8lY4vQqwJ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="260462233"
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="260462233"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 00:11:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="624004422"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga004.fm.intel.com with ESMTP; 14 Apr 2022 00:11:43 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Apr 2022 00:11:42 -0700
Received: from pgsmsx602.gar.corp.intel.com (10.108.199.137) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Apr 2022 00:11:41 -0700
Received: from pgsmsx602.gar.corp.intel.com ([10.108.199.137]) by
 pgsmsx602.gar.corp.intel.com ([10.108.199.137]) with mapi id 15.01.2308.027;
 Thu, 14 Apr 2022 15:11:39 +0800
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IE1lZGlhIGZy?=
 =?utf-8?Q?eq_factor_and_per-gt_enhancements/fixes?=
Thread-Index: AQHYT8SG5V5l5ZEmKEKZmRhKU5Lq2azu9cBg
Date: Thu, 14 Apr 2022 07:11:39 +0000
Message-ID: <47b8b49116f6491e9802e9a2832cf29a@intel.com>
References: <cover.1649871650.git.ashutosh.dixit@intel.com>
 <164989802924.1345.13710112784362456032@emeril.freedesktop.org>
 <87czhk2omw.wl-ashutosh.dixit@intel.com>
In-Reply-To: <87czhk2omw.wl-ashutosh.dixit@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Media_freq_factor_and_per-gt_enhancements/fixes?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXNzdWUgaXMgcmVsYXRlZCB0byBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2lu
dGVsLy0vaXNzdWVzLzU3MDENClJlLXJlcG9ydGVkLg0KTGFrc2htaS4NCg0KLS0tLS1PcmlnaW5h
bCBNZXNzYWdlLS0tLS0NCkZyb206IERpeGl0LCBBc2h1dG9zaCA8YXNodXRvc2guZGl4aXRAaW50
ZWwuY29tPiANClNlbnQ6IFdlZG5lc2RheSwgQXByaWwgMTMsIDIwMjIgMTA6NTcgUE0NClRvOiBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBWdWR1bSwgTGFrc2htaW5hcmF5YW5hIDxs
YWtzaG1pbmFyYXlhbmEudnVkdW1AaW50ZWwuY29tPg0KU3ViamVjdDogUmU6IOKclyBGaS5DSS5C
QVQ6IGZhaWx1cmUgZm9yIGRybS9pOTE1OiBNZWRpYSBmcmVxIGZhY3RvciBhbmQgcGVyLWd0IGVu
aGFuY2VtZW50cy9maXhlcw0KDQpPbiBXZWQsIDEzIEFwciAyMDIyIDE4OjAwOjI5IC0wNzAwLCBQ
YXRjaHdvcmsgd3JvdGU6DQo+DQo+DQo+IFBvc3NpYmxlIHJlZ3Jlc3Npb25zDQo+DQo+ICogaWd0
QGdlbV9sbWVtX3N3YXBwaW5nQHBhcmFsbGVsLXJhbmRvbS1lbmdpbmVzOg0KPg0KPiAgKiBiYXQt
ZGcxLTU6IE5PVFJVTiAtPiBGQUlMDQo+DQo+ICAqIGJhdC1kZzEtNjogTk9UUlVOIC0+IEZBSUwN
Cg0KVGhlc2UgZmFpbHVyZXMgYXJlIHVucmVsYXRlZC4gVGhleSBhcmUgc2hvd2luZyB1cCBldmVy
eXdoZXJlIGFuZCBjYXVzaW5nIGFsbCByZWNlbnQgcHJlLW1lcmdlIENJIHJlc3VsdHMgdG8gc2hv
dyBmYWxzZSBwb3NpdGl2ZXMuIFBsZWFzZSB0YWtlIGEgbG9vay4gVGhhbmtzLg0K
