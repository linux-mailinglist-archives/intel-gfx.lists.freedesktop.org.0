Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F106911006A
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 15:36:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D40F6E7AD;
	Tue,  3 Dec 2019 14:36:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C6A476E7D4;
 Tue,  3 Dec 2019 14:36:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BB138A47EB;
 Tue,  3 Dec 2019 14:36:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 03 Dec 2019 14:36:18 -0000
Message-ID: <157538377876.4660.5667564544585493282@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191203113139.2876291-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191203113139.2876291-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_dr?=
 =?utf-8?q?m/i915/execlists=3A_Add_a_couple_more_validity_checks_to_assert?=
 =?utf-8?q?=5Fpending=28=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZXhlY2xpc3RzOiBBZGQgYSBj
b3VwbGUgbW9yZSB2YWxpZGl0eSBjaGVja3MgdG8gYXNzZXJ0X3BlbmRpbmcoKQpVUkwgICA6IGh0
dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNzAzNTIvClN0YXRlIDogZmFp
bHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0FMTCAgICBzY3JpcHRzL2NoZWNrc3lzY2FsbHMuc2gKICBD
QUxMICAgIHNjcmlwdHMvYXRvbWljL2NoZWNrLWF0b21pY3Muc2gKICBERVNDRU5EICBvYmp0b29s
CiAgQ0hLICAgICBpbmNsdWRlL2dlbmVyYXRlZC9jb21waWxlLmgKICBBUiAgICAgIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2J1aWx0LWluLmEKICBDQyBbTV0gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5vCkluIGZpbGUgaW5jbHVkZWQgZnJvbSAuL2luY2x1ZGUvbGludXgvZXhwb3J0
Lmg6NDI6MCwKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9saW5rYWdlLmg6
NywKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9rZXJuZWwuaDo4LAogICAg
ICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2ludGVycnVwdC5oOjYsCiAgICAgICAg
ICAgICAgICAgZnJvbSBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYzoxMzQ6CmRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jOiBJbiBmdW5jdGlvbiDigJhhc3NlcnRf
cGVuZGluZ192YWxpZOKAmToKZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmM6MTMw
NjozNTogZXJyb3I6IOKAmHN0cnVjdCBkbWFfZmVuY2XigJkgaGFzIG5vIG1lbWJlciBuYW1lZCDi
gJhyZWbigJkKICAgR0VNX0JVR19PTigha3JlZl9yZWFkKCZycS0+ZmVuY2UucmVmKSk7CiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXgouL2luY2x1ZGUvbGludXgvY29tcGlsZXIu
aDo3ODo0Mjogbm90ZTogaW4gZGVmaW5pdGlvbiBvZiBtYWNybyDigJh1bmxpa2VseeKAmQogIyBk
ZWZpbmUgdW5saWtlbHkoeCkgX19idWlsdGluX2V4cGVjdCghISh4KSwgMCkKICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYzoxMzA2OjM6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhHRU1fQlVH
X09O4oCZCiAgIEdFTV9CVUdfT04oIWtyZWZfcmVhZCgmcnEtPmZlbmNlLnJlZikpOwogICBefn5+
fn5+fn5+CnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6MjY1OiByZWNpcGUgZm9yIHRhcmdldCAnZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLm8nIGZhaWxlZAptYWtlWzRdOiAqKiogW2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5vXSBFcnJvciAxCnNjcmlwdHMvTWFrZWZp
bGUuYnVpbGQ6NTA5OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtL2k5MTUnIGZh
aWxlZAptYWtlWzNdOiAqKiogW2RyaXZlcnMvZ3B1L2RybS9pOTE1XSBFcnJvciAyCnNjcmlwdHMv
TWFrZWZpbGUuYnVpbGQ6NTA5OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtJyBm
YWlsZWQKbWFrZVsyXTogKioqIFtkcml2ZXJzL2dwdS9kcm1dIEVycm9yIDIKc2NyaXB0cy9NYWtl
ZmlsZS5idWlsZDo1MDk6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdScgZmFpbGVkCm1h
a2VbMV06ICoqKiBbZHJpdmVycy9ncHVdIEVycm9yIDIKTWFrZWZpbGU6MTY1MjogcmVjaXBlIGZv
ciB0YXJnZXQgJ2RyaXZlcnMnIGZhaWxlZAptYWtlOiAqKiogW2RyaXZlcnNdIEVycm9yIDIKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
