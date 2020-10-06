Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEA3284DF0
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 16:34:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 681C46E4A2;
	Tue,  6 Oct 2020 14:34:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71D946E4A2
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 14:34:07 +0000 (UTC)
IronPort-SDR: 9ADyBj6ffR3LhBMbaM6JWjvXcGVsNHYBy9ci4OVVaVT8q5fkPvie03N9SXrDZ2UxhU+S9JEGP5
 UJFyUTYp6YVg==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="228651067"
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="228651067"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 07:33:54 -0700
IronPort-SDR: Z/08aO50a+Dk0oXg7ZVsz2HVSpdNt5XoYXv8lHc9En4GxPB6vyyZAIKZWGwv4S3HEnpnoR8rz2
 DI3ZfZMP72mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="343796195"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 06 Oct 2020 07:33:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Oct 2020 17:33:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Oct 2020 17:33:29 +0300
Message-Id: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/20] drm/i915: Futher cleanup around hpd pins
 and port identfiers
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkNv
bnRpbnVpbmcgdGhlIHNhZ2Egb2YgdHJ5aW5nIHRvIHJlbW92ZSBtb3N0IG9mIHRoZSBuYXN0eSBw
bGF0Zm9ybQppZi1sYWRkZXJzIGZyb20gdGhlIGlycSBjb2RlIHdoZXJlIHRoZXkgZG9uJ3QgYmVs
b25nLgoKQWxzbyBhZGRpbmcgc29tZSBhbGlhc2VzIGZvciB0aGUgVEMgRERJcy9BVVggQ0hzIHRv
IG1ha2UKdGhlIGNvZGUgbGVzcyBjb25mdXNpbmcuIEFuZCBzb21lIG90aGVyIGNsZWFudXAgYXJv
dW5kIHRoZSBhZmZlY3RlZAphcmVhcyB0aGF0IGtlcHQgYnVnZ2luZyBtZS4KCkFmdGVyIHRoaXMg
SSB0aGluayBuZXcgcGxhdGZvcm1zIHNob3VsZG4ndCByZWFsbHkgbmVlZCBhbnkgY2hhbmdlcwp0
byB0aGUgSFBEIGlycSBjb2RlIHVubGVzcyB0aGUgYml0cyBnZXQgc2h1ZmZsZWQgYXJvdW5kIHll
dCBhZ2Fpbgood2hpY2ggc2FkbHkgZG9lcyBzZWVtIHRvIGJlIHRoZSBjYXNlIHNvbWV0aW1lcyku
CgpWaWxsZSBTeXJqw6Rsw6QgKDIwKToKICBkcm0vaTkxNTogU29ydCB0aGUgbWVzcyBhcm91bmQg
SUNQIFRDIGhvdHBsdWdzIHJlZ3MKICBkcm0vaTkxNTogcy9QT1JUX1RDL1RDX1BPUlRfVEMvCiAg
ZHJtL2k5MTU6IEFkZCBQT1JUX1RDbiBhbGlhc2VzIHRvIGVudW0gcG9ydAogIGRybS9pOTE1OiBH
aXZlIERESSBlbmNvZGVycyBldmVuIGJldHRlciBuYW1lcwogIGRybS9pOTE1OiBJbnRyb2R1Y2Ug
QVVYX0NIX1VTQkNuCiAgZHJtL2k5MTU6IFBpbXAgQVVYIENIIG5hbWVzCiAgZHJtL2k5MTU6IFVz
ZSBBVVhfQ0hfVVNCQ24gZm9yIHRoZSBSS0wgVkJUIEFVWCBDSCBzZXR1cAogIGRybS9pOTE1OiBQ
YXJhbWV0cml6ZSBCWFRfREVfUE9SVF9IUF9EREkgd2l0aCBocGRfcGluCiAgZHJtL2k5MTU6IElu
dHJvZHVjZSBHRU44X0RFX1BPUlRfSE9UUExVRygpCiAgZHJtL2k5MTU6IHMvcG9ydC9ocGRfcGlu
LyBmb3IgaWNwKyBkZGkgaHBkIGJpdHMKICBkcm0vaTkxNTogcy90Y19wb3J0L2hwZF9waW4vIGlu
IEdFTjExX3tUQyxUQlR9X0hPVFBMVUcoKQogIGRybS9pOTE1OiBzL3RjX3BvcnQvaHBkX3Bpbi8g
aW4gaWNwKyBUQyBob3RwbHVnIGJpdHMKICBkcm0vaTkxNTogUmVsb2NhdGUgaW50ZWxfaHBkX3tl
bmFibGVkLGhvdHBsdWd9X2lycXMoKQogIGRybS9pOTE1OiBTcGxpdCBnZW4xMV9ocGRfZGV0ZWN0
aW9uX3NldHVwKCkgaW50byB0YyB2cy4gdGJ0IHZhcmlhbnRzCiAgZHJtL2k5MTU6IERvbid0IGVu
YWJsZSBocGQgZGV0ZWN0aW9uIGxvZ2ljIGZyb20gaXJxX3Bvc3RpbnN0YWxsKCkKICBkcm0vaTkx
NTogUmVuYW1lICd0bXBfbWFzaycKICBkcm0vaTkxNTogUmVtb3ZlIHRoZSBwZXItcGxhZm9ybSBJ
SVIgSFBEIG1hc2tpbmcKICBkcm0vaTkxNTogRW5hYmxlIGhwZCBsb2dpYyBvbmx5IGZvciBwb3J0
cyB0aGF0IGFyZSBwcmVzZW50CiAgZHJtL2k5MTU6IFVzZSBHRU4zX0lSUV9JTklUKCkgdG8gaW5p
dCBzb3V0aCBpbnRlcnJ1cHRzIGluIGljcCsKICBkcm0vaTkxNTogR2V0IHJpZCBvZiBpYnhfaXJx
X3ByZV9wb3N0aW5zdGFsbCgpCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
aW9zLmMgICAgfCAgMTggKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMgICAgIHwgIDMxICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyB8ICAzMCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmggfCAgMzAgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAg
IHwgIDY2ICsrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jICAgICAg
fCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgICAgICAgICAgICAgIHwg
NTQ5ICsrKysrKysrKystLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgg
ICAgICAgICAgICAgIHwgMzIzICsrKysrLS0tLS0tCiA4IGZpbGVzIGNoYW5nZWQsIDU4OSBpbnNl
cnRpb25zKCspLCA0NjAgZGVsZXRpb25zKC0pCgotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
