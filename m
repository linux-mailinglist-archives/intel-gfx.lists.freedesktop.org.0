Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 913FCBFEB5
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 07:52:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EC1E6EE4B;
	Fri, 27 Sep 2019 05:52:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82D036EE4B
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 05:52:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 22:52:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,554,1559545200"; d="scan'208";a="180403152"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga007.jf.intel.com with ESMTP; 26 Sep 2019 22:52:53 -0700
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 26 Sep 2019 22:52:53 -0700
Received: from bgsmsx103.gar.corp.intel.com (10.223.4.130) by
 FMSMSX114.amr.corp.intel.com (10.18.116.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 26 Sep 2019 22:52:53 -0700
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.13]) by
 BGSMSX103.gar.corp.intel.com ([169.254.4.16]) with mapi id 14.03.0439.000;
 Fri, 27 Sep 2019 11:22:52 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Karas, Anna" <anna.karas@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/tgl: Fix doc not corresponding to code
Thread-Index: AQHVcgzG5nXtbv+eAEq9E7L+Q8VN7ac9jZmAgAF9oKA=
Date: Fri, 27 Sep 2019 05:52:51 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B8096ACEB@BGSMSX108.gar.corp.intel.com>
References: <20190923124435.21774-1-anna.karas@intel.com>
 <20190926123559.15717-1-anna.karas@intel.com>
In-Reply-To: <20190926123559.15717-1-anna.karas@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTNlZGJiNmUtMTA5NS00YWFhLTlhYjktNmY1N2RmZGM4ZjU4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJxWHZvclhlNkk0eXpwSDJwa3ZnVmI3YlExZDNSWUs4UGhjNzltZmtkYlZLd05LcDQxYnZuUXdhQ2hrSGtsNGoyIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Fix doc not corresponding to
 code
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+IEZyb206IEthcmFzLCBBbm5hIDxhbm5hLmth
cmFzQGludGVsLmNvbT4KPiBTZW50OiBUaHVyc2RheSwgU2VwdGVtYmVyIDI2LCAyMDE5IDY6MDYg
UE0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBLdWxrYXJuaSwg
VmFuZGl0YSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+Cj4gU3ViamVjdDogW1BBVENIXSBk
cm0vaTkxNS90Z2w6IEZpeCBkb2Mgbm90IGNvcnJlc3BvbmRpbmcgdG8gY29kZQo+IAo+IFJlcGxh
Y2UgUExMcyBuYW1lcyB1c2VkIGluIGRvY3VtZW50YXRpb24gdG8gdGhhdCB1c2VkIGluIHRoZSBj
b2RlLgo+IAo+IENjOiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNv
bT4KPiBGaXhlczogY29tbWl0IGQwNTcwNDE0ZjNkMSAoImRybS9pOTE1L3RnbDogQWRkIG5ldyBw
bGwgaWRzIikKPiBTaWduZWQtb2ZmLWJ5OiBBbm5hIEthcmFzIDxhbm5hLmthcmFzQGludGVsLmNv
bT4KCkxvb2tzIGdvb2QgdG8gbWUuClJldmlld2VkLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5k
aXRhLmt1bGthcm5pQGludGVsLmNvbT4KCi1WYW5kaXRhCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuaCB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmgKPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuaAo+IGluZGV4IGU3NTg4Nzk5ZmNlNS4u
MTA0Y2Y2ZDQyMzMzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBsbF9tZ3IuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBsbF9tZ3IuaAo+IEBAIC0xNDcsMTEgKzE0NywxMSBAQCBlbnVtIGludGVsX2RwbGxfaWQg
ewo+ICAJICovCj4gIAlEUExMX0lEX0lDTF9NR1BMTDQgPSA2LAo+ICAJLyoqCj4gLQkgKiBARFBM
TF9JRF9UR0xfVENQTEw1OiBUR0wgVEMgUExMIHBvcnQgNSAoVEM1KQo+ICsJICogQERQTExfSURf
VEdMX01HUExMNTogVEdMIFRDIFBMTCBwb3J0IDUgKFRDNSkKPiAgCSAqLwo+ICAJRFBMTF9JRF9U
R0xfTUdQTEw1ID0gNywKPiAgCS8qKgo+IC0JICogQERQTExfSURfVEdMX1RDUExMNjogVEdMIFRD
IFBMTCBwb3J0IDYgKFRDNikKPiArCSAqIEBEUExMX0lEX1RHTF9NR1BMTDY6IFRHTCBUQyBQTEwg
cG9ydCA2IChUQzYpCj4gIAkgKi8KPiAgCURQTExfSURfVEdMX01HUExMNiA9IDgsCj4gIH07Cj4g
LS0KPiAyLjE5LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
