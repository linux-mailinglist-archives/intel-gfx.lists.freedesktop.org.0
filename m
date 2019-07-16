Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F30E6A63F
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2019 12:12:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E71046E0FD;
	Tue, 16 Jul 2019 10:12:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EE2D6E0FD
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2019 10:12:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jul 2019 03:12:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,498,1557212400"; d="scan'208";a="172500463"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga006.jf.intel.com with ESMTP; 16 Jul 2019 03:12:47 -0700
Received: from fmsmsx120.amr.corp.intel.com (10.18.124.208) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 16 Jul 2019 03:12:47 -0700
Received: from bgsmsx110.gar.corp.intel.com (10.223.4.212) by
 fmsmsx120.amr.corp.intel.com (10.18.124.208) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 16 Jul 2019 03:12:46 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.156]) by
 BGSMSX110.gar.corp.intel.com ([169.254.11.126]) with mapi id 14.03.0439.000;
 Tue, 16 Jul 2019 15:42:44 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/4] drm/i915/tgl/dsi: Set latency PCS_DW1 for tgl
Thread-Index: AQHVMJDba23wZDBX2E+uGRwKm+I6jqbNG4AQ
Date: Tue, 16 Jul 2019 10:12:43 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8212EC88@BGSMSX104.gar.corp.intel.com>
References: <20190702041850.4293-1-vandita.kulkarni@intel.com>
 <20190702041850.4293-3-vandita.kulkarni@intel.com>
In-Reply-To: <20190702041850.4293-3-vandita.kulkarni@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYWQyOTFmY2EtNDA0Yy00M2YzLWJmNDktNmM1ZGNmNGQ5YmNlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoib3RhVDFJbW5GZGRhVFVDWEs0bndwUEthZmZtT05DTDY1K2xPQkRWRjZxek5IcFNXc3BsdGxKdFg5bURTck8zSSJ9
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/tgl/dsi: Set latency PCS_DW1
 for tgl
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
Cc: "Nikula,
 Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IEt1bGthcm5pLCBWYW5kaXRhCj5T
ZW50OiBUdWVzZGF5LCBKdWx5IDIsIDIwMTkgOTo0OSBBTQo+VG86IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPkNjOiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbTsgTmlrdWxh
LCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+OyBTaGFua2FyLCBVbWEKPjx1bWEuc2hhbmth
ckBpbnRlbC5jb20+OyBLdWxrYXJuaSwgVmFuZGl0YSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5j
b20+Cj5TdWJqZWN0OiBbUEFUQ0ggMi80XSBkcm0vaTkxNS90Z2wvZHNpOiBTZXQgbGF0ZW5jeSBQ
Q1NfRFcxIGZvciB0Z2wKPgo+UmVzdCBvZiB0aGUgbGF0ZW5jeSBwcm9ncmFtbWluZyByZW1haW5z
IHNhbWUgYXMgdGhhdCBvZiBJQ0wuCgpZb3UgY2FuIHB1dCB0aGlzIGFzICJsYXRlbmN5IHByb2dy
YW1taW5nIGZvciBUR0wgcmVtYWlucyBzYW1lIGFzIHRoYXQgb2YgSUNMIGFuZCBFSEwuCkV4dGVu
ZGVkIHRoZSBzYW1lIGZvciBUR0wiCgpXaXRoIHRoaXMgbWlub3Igbml0IGZpeGVkLgpSZXZpZXdl
ZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KCj5TaWduZWQtb2ZmLWJ5
OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KPi0tLQo+IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jIHwgNCArKy0tCj4gMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+ZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCj5iL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaWNsX2RzaS5jCj5pbmRleCA1NTZlYmEyNjM2ZmUuLmUzOTgwNjc2YmNlZiAx
MDA2NDQKPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCj4rKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwo+QEAgLTQwNCw4ICs0MDQs
OCBAQCBzdGF0aWMgdm9pZCBnZW4xMV9kc2lfY29uZmlnX3BoeV9sYW5lc19zZXF1ZW5jZShzdHJ1
Y3QKPmludGVsX2VuY29kZXIgKmVuY29kZXIpCj4gCQl0bXAgfD0gRlJDX0xBVEVOQ1lfT1BUSU1f
VkFMKDB4NSk7Cj4gCQlJOTE1X1dSSVRFKElDTF9QT1JUX1RYX0RXMl9HUlAocG9ydCksIHRtcCk7
Cj4KPi0JCS8qIEZvciBFSEwgc2V0IGxhdGVuY3kgb3B0aW1pemF0aW9uIGZvciBQQ1NfRFcxIGxh
bmVzICovCj4tCQlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKSB7Cj4rCQkvKiBFSEwgYW5k
IFRHTCwgc2V0IGxhdGVuY3kgb3B0aW1pemF0aW9uIGZvciBQQ1NfRFcxIGxhbmVzICovCj4rCQlp
ZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpIHx8IChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEy
KSkgewo+IAkJCXRtcCA9IEk5MTVfUkVBRChJQ0xfUE9SVF9QQ1NfRFcxX0FVWChwb3J0KSk7Cj4g
CQkJdG1wICY9IH5MQVRFTkNZX09QVElNX01BU0s7Cj4gCQkJdG1wIHw9IExBVEVOQ1lfT1BUSU1f
VkFMKDApOwo+LS0KPjIuMjEuMC41LmdhZWI1ODJhCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
