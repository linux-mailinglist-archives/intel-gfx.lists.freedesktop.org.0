Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E59F6A64B
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2019 12:16:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B2D06E103;
	Tue, 16 Jul 2019 10:16:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BCC16E103
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2019 10:16:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jul 2019 03:16:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,498,1557212400"; d="scan'208";a="187312123"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga001.fm.intel.com with ESMTP; 16 Jul 2019 03:16:09 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 16 Jul 2019 03:16:10 -0700
Received: from BGSMSX108.gar.corp.intel.com (10.223.4.192) by
 fmsmsx101.amr.corp.intel.com (10.18.124.199) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 16 Jul 2019 03:16:10 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.156]) by
 BGSMSX108.gar.corp.intel.com ([169.254.8.155]) with mapi id 14.03.0439.000;
 Tue, 16 Jul 2019 15:46:07 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 3/4] drm/i915/tgl/dsi: Do not override TA_SURE
Thread-Index: AQHVMJDYEshfexz5f0maTjTBhEbzB6bNHZQg
Date: Tue, 16 Jul 2019 10:16:07 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8212ECA4@BGSMSX104.gar.corp.intel.com>
References: <20190702041850.4293-1-vandita.kulkarni@intel.com>
 <20190702041850.4293-4-vandita.kulkarni@intel.com>
In-Reply-To: <20190702041850.4293-4-vandita.kulkarni@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMDhjZWIxODgtNjQ1ZS00NmU4LTgxZTktNmZhZWZiMzQ0NjQ2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRVNRMHlRdnRLK3QxXC8wdm8rRWxlVDZac3VDXC9IdFoyeXphVjdab3RxSlEzY1pQV2dkbkx5c0R4akdQb0FVRW1vIn0=
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/tgl/dsi: Do not override
 TA_SURE
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
b20+Cj5TdWJqZWN0OiBbUEFUQ0ggMy80XSBkcm0vaTkxNS90Z2wvZHNpOiBEbyBub3Qgb3ZlcnJp
ZGUgVEFfU1VSRQo+Cj5EbyBub3Qgb3ZlcnJpZGUgVEFfU1VSRSB0aW1pbmcgcGFyYW1ldGVyIHRv
IHplcm8gZm9yIERTSSA4WCBmcmVxdWVuY3kgODAwTUh6IG9yCj5iZWxvdyBvbiBUR0wuCgpMb29r
cyBnb29kIHRvIG1lLgpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVs
LmNvbT4KCj5TaWduZWQtb2ZmLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5p
QGludGVsLmNvbT4KPi0tLQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5j
IHwgMjYgKysrKysrKysrKysrKystLS0tLS0tLS0tLS0KPiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5z
ZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCj4KPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwo+Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ljbF9kc2kuYwo+aW5kZXggZTM5ODA2NzZiY2VmLi5kMWM1MGE0MTg2ZjAgMTAwNjQ0Cj4tLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwo+KysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKPkBAIC01MzAsMTggKzUzMCwyMCBAQCBzdGF0
aWMgdm9pZCBnZW4xMV9kc2lfc2V0dXBfZHBoeV90aW1pbmdzKHN0cnVjdAo+aW50ZWxfZW5jb2Rl
ciAqZW5jb2RlcikKPiAJICogYSB2YWx1ZSAnMCcgaW5zaWRlIFRBX1BBUkFNX1JFR0lTVEVSUyBv
dGhlcndpc2UKPiAJICogbGVhdmUgYWxsIGZpZWxkcyBhdCBIVyBkZWZhdWx0IHZhbHVlcy4KPiAJ
ICovCj4tCWlmIChpbnRlbF9kc2lfYml0cmF0ZShpbnRlbF9kc2kpIDw9IDgwMDAwMCkgewo+LQkJ
Zm9yX2VhY2hfZHNpX3BvcnQocG9ydCwgaW50ZWxfZHNpLT5wb3J0cykgewo+LQkJCXRtcCA9IEk5
MTVfUkVBRChEUEhZX1RBX1RJTUlOR19QQVJBTShwb3J0KSk7Cj4tCQkJdG1wICY9IH5UQV9TVVJF
X01BU0s7Cj4tCQkJdG1wIHw9IFRBX1NVUkVfT1ZFUlJJREUgfCBUQV9TVVJFKDApOwo+LQkJCUk5
MTVfV1JJVEUoRFBIWV9UQV9USU1JTkdfUEFSQU0ocG9ydCksIHRtcCk7Cj4tCj4tCQkJLyogc2hh
ZG93IHJlZ2lzdGVyIGluc2lkZSBkaXNwbGF5IGNvcmUgKi8KPi0JCQl0bXAgPSBJOTE1X1JFQUQo
RFNJX1RBX1RJTUlOR19QQVJBTShwb3J0KSk7Cj4tCQkJdG1wICY9IH5UQV9TVVJFX01BU0s7Cj4t
CQkJdG1wIHw9IFRBX1NVUkVfT1ZFUlJJREUgfCBUQV9TVVJFKDApOwo+LQkJCUk5MTVfV1JJVEUo
RFNJX1RBX1RJTUlOR19QQVJBTShwb3J0KSwgdG1wKTsKPisJaWYgKElTX0dFTihkZXZfcHJpdiwg
MTEpKSB7Cj4rCQlpZiAoaW50ZWxfZHNpX2JpdHJhdGUoaW50ZWxfZHNpKSA8PSA4MDAwMDApIHsK
PisJCQlmb3JfZWFjaF9kc2lfcG9ydChwb3J0LCBpbnRlbF9kc2ktPnBvcnRzKSB7Cj4rCQkJCXRt
cCA9IEk5MTVfUkVBRChEUEhZX1RBX1RJTUlOR19QQVJBTShwb3J0KSk7Cj4rCQkJCXRtcCAmPSB+
VEFfU1VSRV9NQVNLOwo+KwkJCQl0bXAgfD0gVEFfU1VSRV9PVkVSUklERSB8IFRBX1NVUkUoMCk7
Cj4rCQkJCUk5MTVfV1JJVEUoRFBIWV9UQV9USU1JTkdfUEFSQU0ocG9ydCksIHRtcCk7Cj4rCj4r
CQkJCS8qIHNoYWRvdyByZWdpc3RlciBpbnNpZGUgZGlzcGxheSBjb3JlICovCj4rCQkJCXRtcCA9
IEk5MTVfUkVBRChEU0lfVEFfVElNSU5HX1BBUkFNKHBvcnQpKTsKPisJCQkJdG1wICY9IH5UQV9T
VVJFX01BU0s7Cj4rCQkJCXRtcCB8PSBUQV9TVVJFX09WRVJSSURFIHwgVEFfU1VSRSgwKTsKPisJ
CQkJSTkxNV9XUklURShEU0lfVEFfVElNSU5HX1BBUkFNKHBvcnQpLCB0bXApOwo+KwkJCX0KPiAJ
CX0KPiAJfQo+Cj4tLQo+Mi4yMS4wLjUuZ2FlYjU4MmEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
