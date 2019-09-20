Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7ACB989E
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 22:46:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B01536FDE2;
	Fri, 20 Sep 2019 20:46:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E7006EB59;
 Fri, 20 Sep 2019 20:46:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 47CC7A47DC;
 Fri, 20 Sep 2019 20:46:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 20 Sep 2019 20:46:17 -0000
Message-ID: <20190920204617.25912.93718@emeril.freedesktop.org>
References: <20190920195535.26411-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190920195535.26411-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/2=5D_drm/i915/selftests=3A_Verify_?=
 =?utf-8?q?the_LRC_register_layout_between_init_and_HW?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvMl0g
ZHJtL2k5MTUvc2VsZnRlc3RzOiBWZXJpZnkgdGhlIExSQyByZWdpc3RlciBsYXlvdXQgYmV0d2Vl
biBpbml0IGFuZCBIVwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9z
ZXJpZXMvNjcwMTgvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2tw
YXRjaCBvcmlnaW4vZHJtLXRpcAoyYjkxMTdlMjk3NTYgZHJtL2k5MTUvc2VsZnRlc3RzOiBWZXJp
ZnkgdGhlIExSQyByZWdpc3RlciBsYXlvdXQgYmV0d2VlbiBpbml0IGFuZCBIVwotOjYxOiBDSEVD
SzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICd4JyAtIHBvc3NpYmxlIHNp
ZGUtZWZmZWN0cz8KIzYxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
Yzo0NzQ6CisjZGVmaW5lIFJFRyh4KSAoKCh4KSA+PiAyKSB8IEJVSUxEX0JVR19PTl9aRVJPKHgg
Pj0gMHgyMDApKQoKLTo2MjogRVJST1I6Q09NUExFWF9NQUNSTzogTWFjcm9zIHdpdGggY29tcGxl
eCB2YWx1ZXMgc2hvdWxkIGJlIGVuY2xvc2VkIGluIHBhcmVudGhlc2VzCiM2MjogRklMRTogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmM6NDc1OgorI2RlZmluZSBSRUcxNih4KSBc
CisJKCgoeCkgPj4gOSkgfCBCSVQoNykgfCBCVUlMRF9CVUdfT05fWkVSTyh4ID49IDB4MTAwMDAp
KSwgXAorCSgoKHgpID4+IDIpICYgMHg3ZikKCi06NjI6IENIRUNLOk1BQ1JPX0FSR19SRVVTRTog
TWFjcm8gYXJndW1lbnQgcmV1c2UgJ3gnIC0gcG9zc2libGUgc2lkZS1lZmZlY3RzPwojNjI6IEZJ
TEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jOjQ3NToKKyNkZWZpbmUgUkVH
MTYoeCkgXAorCSgoKHgpID4+IDkpIHwgQklUKDcpIHwgQlVJTERfQlVHX09OX1pFUk8oeCA+PSAw
eDEwMDAwKSksIFwKKwkoKCh4KSA+PiAyKSAmIDB4N2YpCgp0b3RhbDogMSBlcnJvcnMsIDAgd2Fy
bmluZ3MsIDIgY2hlY2tzLCAxMTI1IGxpbmVzIGNoZWNrZWQKODRjZjg2NzQyMTkxIGRybS9pOTE1
L3RnbDogU3dhcCBlbmdpbmVzIGZvciByYzYvcG93ZXJzYXZpbmcKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
