Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CF310ECC1
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 17:01:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2CC7897B4;
	Mon,  2 Dec 2019 16:01:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAFC3897B4
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 16:01:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 08:01:13 -0800
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; d="scan'208";a="204606643"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 08:01:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Dec 2019 18:00:48 +0200
Message-Id: <cover.1575302334.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 00/10] drm/i915: add display uncore helpers
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWN0dWFsIHYxIGFmdGVyIHRoZSBSRkMgaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy82ODcxMy8KCkdldCByaWQgb2YgSTkxNV9SRUFEX0ZXKCkgYW5kIEk5MTVfV1JJVEVf
RlcoKSBhcyBwYXJ0IG9mIHRoaXMgc2VyaWVzLgoKQlIsCkphbmkuCgpKYW5pIE5pa3VsYSAoMTAp
OgogIGRybS9pOTE1L2d2dDogdXNlIGludGVsIHVuY29yZSBmdW5jdGlvbnMgZm9yIGZvcmNld2Fr
ZSByZWdpc3RlciBhY2Nlc3MKICBkcm0vaTkxNS9kZWJ1Z2ZzOiB1c2UgaW50ZWwgdW5jb3JlIGZ1
bmN0aW9ucyBmb3IgZm9yY2V3YWtlIHJlZ2lzdGVyCiAgICBhY2Nlc3MKICBkcm0vaTkxNS9kbWM6
IHVzZSBpbnRlbCB1bmNvcmUgZnVuY3Rpb25zIGZvciBmb3JjZXdha2UgcmVnaXN0ZXIgYWNjZXNz
CiAgZHJtL2k5MTU6IGFkZCBkaXNwbGF5IGVuZ2luZSB1bmNvcmUgaGVscGVycwogIGRybS9pOTE1
L2Rpc3BsYXk6IHVzZSBpbnRlbCBkZSBmdW5jdGlvbnMgZm9yIGZvcmNld2FrZSByZWdpc3RlciBh
Y2Nlc3MKICBkcm0vaTkxNS9pcnE6IHVzZSBpbnRlbCBkZSBmdW5jdGlvbnMgZm9yIGZvcmNld2Fr
ZSByZWdpc3RlciBhY2Nlc3MKICBkcm0vaTkxNS9nbWJ1czogdXNlIGludGVsIGRlIGZ1bmN0aW9u
cyBmb3IgZm9yY2V3YWtlIHJlZ2lzdGVyIGFjY2VzcwogIGRybS9pOTE1L3Nwcml0ZTogdXNlIGlu
dGVsIGRlIGZ1bmN0aW9ucyBmb3IgZm9yY2V3YWtlIHJlZ2lzdGVyIGFjY2VzcwogIGRybS9pOTE1
L3BtOiB1c2UgaW50ZWwgZGUgZnVuY3Rpb25zIGZvciBmb3JjZXdha2UgcmVnaXN0ZXIgYWNjZXNz
CiAgZHJtL2k5MTU6IHJlbW92ZSBJOTE1X1JFQURfRlcoKSBhbmQgSTkxNV9XUklURV9GVygpIG1h
Y3JvcwoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGUuaCAgICAgICB8ICA3
MiArKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAg
NzkgKysrLS0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8
ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2dtYnVzLmMgICAgfCAg
NzQgKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyAgIHwg
MzIyICsrKysrKysrKystLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L21taW9fY29u
dGV4dC5jICAgICAgIHwgIDE5ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvc2NoZWR1bGVy
LmMgICAgICAgICAgfCAgIDkgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5j
ICAgICAgICAgICB8ICAxNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAg
ICAgICAgICAgIHwgIDQzIC0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyAgICAg
ICAgICAgICAgIHwgIDIyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYyAgICAg
ICAgICAgICAgfCAgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgICAgICAg
ICAgICAgICB8ICAgNyArLQogMTIgZmlsZXMgY2hhbmdlZCwgMzcxIGluc2VydGlvbnMoKyksIDI5
NCBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RlLmgKCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
