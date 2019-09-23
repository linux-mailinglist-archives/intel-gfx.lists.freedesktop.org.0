Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5FBBB243
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 12:30:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D53B6E863;
	Mon, 23 Sep 2019 10:30:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 934046E854
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 10:30:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 03:30:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,539,1559545200"; d="scan'208";a="182494671"
Received: from mrnaghsh-mobl1.amr.corp.intel.com (HELO
 dk-ThinkPad-X260.fios-router.home) ([10.254.177.243])
 by orsmga008.jf.intel.com with ESMTP; 23 Sep 2019 03:30:13 -0700
From: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Sep 2019 03:29:32 -0700
Message-Id: <20190923102935.5860-7-dhinakaran.pandiyan@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190923102935.5860-1-dhinakaran.pandiyan@intel.com>
References: <20190923102935.5860-1-dhinakaran.pandiyan@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC v3 6/9] drm/framebuffer: Format modifier for Intel
 Gen-12 media compression
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
Cc: Nanley G Chery <nanley.g.chery@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

R2VuLTEyIGRpc3BsYXkgY2FuIGRlY29tcHJlc3Mgc3VyZmFjZXMgY29tcHJlc3NlZCBieSB0aGUg
bWVkaWEgZW5naW5lLCBhZGQKYSBuZXcgbW9kaWZpZXIgYXMgdGhlIGRyaXZlciBuZWVkcyB0byBr
bm93IHRoZSBzdXJmYWNlIHdhcyBjb21wcmVzc2VkIGJ5CnRoZSBtZWRpYSBvciByZW5kZXIgZW5n
aW5lLgoKQ2M6IE5hbmxleSBHIENoZXJ5IDxuYW5sZXkuZy5jaGVyeUBpbnRlbC5jb20+CkNjOiBN
YXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogRGhpbmFrYXJh
biBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6
IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGluY2x1ZGUv
dWFwaS9kcm0vZHJtX2ZvdXJjYy5oIHwgMTMgKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQs
IDEzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvZHJtL2RybV9mb3Vy
Y2MuaCBiL2luY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5oCmluZGV4IDFmMGZiZjAzOThmNi4u
YzRhNGUwZmRiZWU1IDEwMDY0NAotLS0gYS9pbmNsdWRlL3VhcGkvZHJtL2RybV9mb3VyY2MuaAor
KysgYi9pbmNsdWRlL3VhcGkvZHJtL2RybV9mb3VyY2MuaApAQCAtNDIxLDYgKzQyMSwxOSBAQCBl
eHRlcm4gIkMiIHsKICAqLwogI2RlZmluZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9S
Q19DQ1MgZm91cmNjX21vZF9jb2RlKElOVEVMLCA2KQogCisvKgorICogSW50ZWwgY29sb3IgY29u
dHJvbCBzdXJmYWNlcyAoQ0NTKSBmb3IgR2VuLTEyIG1lZGlhIGNvbXByZXNzaW9uCisgKgorICog
VGhlIG1haW4gc3VyZmFjZSBpcyBZLXRpbGVkIGFuZCBhdCBwbGFuZSBpbmRleCAwLCB0aGUgQ0NT
IGlzIGxpbmVhciBhbmQKKyAqIGF0IGluZGV4IDEuIEEgNjRCIENDUyBjYWNoZSBsaW5lIGNvcnJl
c3BvbmRzIHRvIGFuIGFyZWEgb2YgNHgxIHRpbGVzIGluCisgKiBtYWluIHN1cmZhY2UuIEluIG90
aGVyIHdvcmRzLCA0IGJpdHMgaW4gQ0NTIG1hcCB0byBhIG1haW4gc3VyZmFjZSBjYWNoZQorICog
bGluZSBwYWlyLiBUaGUgbWFpbiBzdXJmYWNlIHBpdGNoIGlzIHJlcXVpcmVkIHRvIGJlIGEgbXVs
dGlwbGUgb2YgZm91cgorICogWS10aWxlIHdpZHRocy4gRm9yIHNlbWktcGxhbmFyIGZvcm1hdHMg
bGlrZSBOVjEyLCBDQ1MgcGxhbmUgZm9sbG93cyB0aGUKKyAqIFkgYW5kIFVWIHBsYW5lcyBpLmUu
LCBwbGFuZXMgMCBhbmQgMiBhcmUgdXNlZCBmb3IgWSBhbmQgVVYgc3VyZmFjZXMsCisgKiBwbGFu
ZXMgMSBhbmQgMyBmb3IgdGhlIHJlc3BlY3RpdmUgQ0NTLgorICovCisjZGVmaW5lIEk5MTVfRk9S
TUFUX01PRF9ZX1RJTEVEX0dFTjEyX01DX0NDUyBmb3VyY2NfbW9kX2NvZGUoSU5URUwsIDcpCisK
IC8qCiAgKiBUaWxlZCwgTlYxMk1ULCBncm91cGVkIGluIDY0IChwaXhlbHMpIHggMzIgKGxpbmVz
KSAtc2l6ZWQgbWFjcm9ibG9ja3MKICAqCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
