Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C3886267
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 14:55:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 264CC6E823;
	Thu,  8 Aug 2019 12:55:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CB2A6E586
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 12:55:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 05:55:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,361,1559545200"; d="scan'208";a="193151951"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga001.fm.intel.com with ESMTP; 08 Aug 2019 05:55:45 -0700
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 8 Aug 2019 05:55:45 -0700
Received: from bgsmsx153.gar.corp.intel.com (10.224.23.4) by
 fmsmsx156.amr.corp.intel.com (10.18.116.74) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 8 Aug 2019 05:55:45 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.178]) by
 BGSMSX153.gar.corp.intel.com ([169.254.2.178]) with mapi id 14.03.0439.000;
 Thu, 8 Aug 2019 18:25:42 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v2 0/6] Support mipi dsi video mode on TGL
Thread-Index: AQHVRq1Bgs5IFTn9t0eV9z9shnyFlabxQ5Nw
Date: Thu, 8 Aug 2019 12:55:41 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F821BA6DF@BGSMSX104.gar.corp.intel.com>
References: <20190730073648.5157-1-vandita.kulkarni@intel.com>
In-Reply-To: <20190730073648.5157-1-vandita.kulkarni@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZTgyMTdmY2ItYTk5MC00NzkwLThmYWItZDBhYTQ4ZTQ2MjJiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiTGhqS3dkbiszNm00T3lvWnpSaXMyckdyaGMwVGcrSnJQaVVmMEtIbld0UVwvK2RCSjVHdk0rdHFqSUxMbmprYVIifQ==
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v2 0/6] Support mipi dsi video mode on TGL
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IEt1bGthcm5pLCBWYW5kaXRhCj5T
ZW50OiBUdWVzZGF5LCBKdWx5IDMwLCAyMDE5IDE6MDcgUE0KPlRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCj5DYzogTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
OyB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbTsgU2hhbmthciwgVW1hCj48dW1hLnNoYW5r
YXJAaW50ZWwuY29tPjsgS3Vsa2FybmksIFZhbmRpdGEgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwu
Y29tPgo+U3ViamVjdDogW3YyIDAvNl0gU3VwcG9ydCBtaXBpIGRzaSB2aWRlbyBtb2RlIG9uIFRH
TAo+Cj5Nb3N0IG9mIHRoZSBzZXF1ZW5jZSByZW1haW5zIGFzIHNhbWUgYXMgdGhhdCBvZiBJQ0wu
Cj5UaGlzIHNlcmllcyBpbmNsdWRlcyB0aGUgY2hhbmdlcyBuZWVkZWQgZm9yIFRHTC4KClNlcmll
cyBwdXNoZWQgdG8gZGlucS4gVGhhbmtzIGZvciB0aGUgcGF0Y2hlcy4KClJlZ2FyZHMsClVtYSBT
aGFua2FyCgo+VmFuZGl0YSBLdWxrYXJuaSAoNik6Cj4gIGRybS9pOTE1L3RnbC9kc2k6IFByb2dy
YW0gVFJBTlNfVkJMQU5LIHJlZ2lzdGVyCj4gIGRybS9pOTE1L3RnbC9kc2k6IFNldCBsYXRlbmN5
IFBDU19EVzEgZm9yIHRnbAo+ICBkcm0vaTkxNS90Z2wvZHNpOiBEbyBub3Qgb3ZlcnJpZGUgVEFf
U1VSRQo+ICBkcm0vaTkxNS90Z2wvZHNpOiBHYXRlIHRoZSBkZGkgY2xvY2tzIGFmdGVyIHBsbCBt
YXBwaW5nCj4gIGRybS9pOTE1L3RnbDogQWRkIG1pcGkgZHNpIHN1cHBvcnQgZm9yIFRHTAo+ICBk
cm0vaTkxNS90Z2wvZHNpOiBFbmFibGUgYmxhbmtpbmcgcGFja2V0cyBkdXJpbmcgQkxMUCBmb3Ig
dmlkZW8gbW9kZQo+Cj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMgICAg
ICAgfCA1NCArKysrKysrKysrKysrKy0tLS0tLQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIHwgIDEgKwo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmggICAgICAgICAgICAgIHwgIDEgKwo+IDMgZmlsZXMgY2hhbmdlZCwgNDAgaW5zZXJ0aW9ucygr
KSwgMTYgZGVsZXRpb25zKC0pCj4KPi0tCj4yLjIxLjAuNS5nYWViNTgyYQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
