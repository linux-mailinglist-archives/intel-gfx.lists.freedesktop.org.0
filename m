Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A572727DCB6
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 01:34:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91DA789EA6;
	Tue, 29 Sep 2020 23:34:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8263989EA6
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 23:34:52 +0000 (UTC)
IronPort-SDR: zZ9iKSbhe6Y6EBzSxHswFy9JRyIC9aw1I/Io5NSHW7efW2ifZt5O0J6e6BCZMErcKeq3U54mTM
 Xc2e+7pdBniA==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="159651524"
X-IronPort-AV: E=Sophos;i="5.77,320,1596524400"; d="scan'208";a="159651524"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 16:34:51 -0700
IronPort-SDR: uqnACh/PXh6JpP9kgVmF71HzqcgKXfM1UJlMlCMY0+Bp5Cp5mwAK4m2GCLqWdgxJ/r9v1SgijY
 0kt2UUn9pHpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,320,1596524400"; d="scan'208";a="312389169"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 29 Sep 2020 16:34:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 30 Sep 2020 02:34:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Sep 2020 02:34:38 +0300
Message-Id: <20200929233449.32323-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 00/11] drm/i915: Plumb crtc state to link
 training code
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFu
b3RoZXIgYXR0ZW1wdCBhdCBwbHVtYmluZyB0aGUgY3J0YyBzdGF0ZSB0byB0aGUgZGVwdGhzIG9m
CnRoZSBsaW5rIHRyYWluaW5nIGNvZGUuIFRoaXMgdGltZSBJIHRyaWVkIHRvIHByZXNlcnZlIHRo
ZQpQSFkgdGVzdCBzdHVmZiBpbiBhIHNvbWV3aGF0IHdvcmtpbmcgY29uZGl0aW9uLgoKVGhlIERE
SSBidWYgdHJhbnMgc3R1ZmYgYWxzbyBzdGFydGVkIHRvIGJ1ZyBtZSBhZ2FpbiBzbyBoYWQgCnRv
IHRvc3MgaW4gYSBmZXcgY2xlYW51cHMgaW4gdGhhdCBhcmVhLiBTdGlsbCBwcmV0dHkgbWVzc3ks
CmJ1dCB3aXRoIGEgYml0IG1vcmUgcmVndWxhciBzdHJ1Y3R1cmUgd2UgY291bGQgcGVyaGFwcyB0
b3NzCmluIGEgZmV3IHZmdW5jcyB0byBnZXQgcmlkIG9mIHNvbWUgaWYgbGFkZGVycyBhdCBsZWFz
dC4KTm90IGVudGlyZWx5IHN1cmUgeWV0Li4uCgpWaWxsZSBTeXJqw6Rsw6QgKDExKToKICBkcm0v
aTkxNTogcy9wcmVfZW1wZW1waC9wcmVlbXBoLwogIGRybS9pOTE1OiBzL29sZF9jcnRjX3N0YXRl
L2NydGNfc3RhdGUvCiAgZHJtL2k5MTU6IE1ha2UgaW50ZWxfZHBfcHJvY2Vzc19waHlfcmVxdWVz
dCgpIHN0YXRpYwogIGRybS9pOTE1OiBTaG92ZSB0aGUgUEhZIHRlc3QgaW50byB0aGUgaG90cGx1
ZyB3b3JrCiAgZHJtL2k5MTU6IFNwbGl0IElDTCBjb21ibyBQSFkgYnVmIHRyYW5zIHBlciBvdXRw
dXQgdHlwZQogIGRybS9pOTE1OiBTcGxpdCBJQ0wgTUcgUEhZIGJ1ZiB0cmFucyBwZXIgb3V0cHV0
IHR5cGUKICBkcm0vaTkxNTogU3BsaXQgRUhMIGNvbWJvIFBIWSBidWYgdHJhbnMgcGVyIG91dHB1
dCB0eXBlCiAgZHJtL2k5MTU6IFNwbGl0IFRHTCBjb21ibyBQSFkgYnVmIHRyYW5zIHBlciBvdXRw
dXQgdHlwZQogIGRybS9pOTE1OiBTcGxpdCBUR0wgREtMIFBIWSBidWYgdHJhbnMgcGVyIG91dHB1
dCB0eXBlCiAgZHJtL2k5MTU6IFBsdW1iIGNydGNfc3RhdGUgdG8gbGluayB0cmFpbmluZwogIGRy
bS9pOTE1OiBFbGltaW5hdGUgaW50ZWxfZHAucmVncy5kcF90cF97Y3RsLHN0YXR1c30KCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICAgfCA2NzcgKysrKysrKysr
Ky0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5oICAgICAg
fCAgMTEgKy0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8
ICAyNSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAgIHwg
Mjg5ICsrKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmggICAg
ICAgfCAgMTEgKy0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcu
YyB8IDEwMiArLS0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcu
aCB8ICAgOCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyAg
IHwgIDI0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwaW9fcGh5LmMg
fCAgMjMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBpb19waHkuaCB8
ICAgMiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyAgICAgfCAg
IDcgKy0KIDExIGZpbGVzIGNoYW5nZWQsIDcxOCBpbnNlcnRpb25zKCspLCA0NjEgZGVsZXRpb25z
KC0pCgotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
