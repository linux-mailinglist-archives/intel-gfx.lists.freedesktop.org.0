Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF13FEC162
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 11:51:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 348616F7BE;
	Fri,  1 Nov 2019 10:51:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC7D96E1E0;
 Fri,  1 Nov 2019 10:51:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19044978-1500050 
 for multiple; Fri, 01 Nov 2019 10:51:07 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Nov 2019 10:51:06 +0000
Message-Id: <20191101105106.12297-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] intel-ci: Relegate gem_exec_reloc to the
 shards
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
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>, igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGdlbV9leGVjX3JlbG9jIGJhc2ljIHN1YnRlc3RzIGNvdmVyIGEgY291cGxlIGRvemVuIGJh
c2ljIEFCSQpzYW5pdHljaGVja3MsIGFpbWluZyB0byBwcm92ZSB0aGUgQUJJIHdvcmtzLiBXaGls
ZSByZWxvY2F0aW9ucyB1c2VkIHRvCmJlIGVzc2VudGlhbCwgdGhleSBhcmUgbm8gbG9uZ2VyIHRo
ZSBiYXNpcyBvZiBjdXJyZW50IGNsaWVudHMgd2hvIGFsbApzb2Z0cGluLiBJdCBpcyBhIHN0YWdu
YW50IHBvcnRpb24gb2YgdGhlIEFCSSB0aGF0IGRvZXMgbm90IGNvbnRyaWJ1dGUKbXVjaCB0byBv
dmVyYWxsIGRyaXZlciBoZWFsdGggKHRoZSBjb21wbGljYXRlZCBwb3J0aW9ucyBvZiByZWxvY3Mg
YXJlCmNvdmVyZWQgaW4gdGhlIHNtb2tldGVzdHMgbGlrZSBnZW1fZXhlY19wYXJhbGxlbCBhbmQg
Z2VtX2V4ZWNfZ3R0ZmlsbCkuCkhvd2V2ZXIsIGV2ZW4gdGhvdWdoIGVhY2ggb2YgdGhlIGJhc2lj
IHN1YnRlc3QgaXMgdHJpdmlhbCBhbmQgcnVucyBpbgp2ZXJ5IGxpdHRsZSB0aW1lLCBzaW5jZSBD
SSBpcyBydW5uaW5nIGVhY2ggaW5kaXZpZHVhbGx5IHRoZSB0aW1lIGJldHdlZW4KdGVzdHMgbW91
bnRzIHVwIChlc3BlY2lhbGx5IG9uIGVNTUMgZGV2aWNlcyBsaWtlIGZpLWtibC1zb3Jha2EpLgoK
QnkgbW92aW5nIHRoZXNlIHRlc3RzIHRvIHRoZSBzaGFyZHMgd2Ugc2hvdWxkIHNwZWVkIHVwIEJB
VCBvbiB0aGUKcmF0ZWxpbWl0aW5nIGZpLWtibC1zb3Jha2EsIHdoaWxlIGxvc2luZyBubyBjb3Zl
cmFnZSBvdmVyYWxsIC0tIGFuZApob3BlZnVsbHkgd2l0aG91dCBsb3NpbmcgYW55IG9mIHRoZSBw
cmVkaWN0aXZlIGZhaWx1cmUgY292ZXJhZ2UgaW4gQkFULgpUaGlzIHN0YWduYW50IGJpdCBvZiB1
QVBJL3VBQkkgd2lsbCByZW1haW4gY2hlY2tlZCBieSB0aGUgaXJyZWd1bGFyIGlkbGUKcnVucy4K
ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpD
YzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgpDYzog
VG9taSBTYXJ2ZWxhIDx0b21pLnAuc2FydmVsYUBpbnRlbC5jb20+CkNjOiBQZXRyaSBMYXR2YWxh
IDxwZXRyaS5sYXR2YWxhQGludGVsLmNvbT4KQ2M6IE1hcnRpbiBQZXJlcyA8bWFydGluLnBlcmVz
QGxpbnV4LmludGVsLmNvbT4KLS0tCiB0ZXN0cy9pbnRlbC1jaS9mYXN0LWZlZWRiYWNrLnRlc3Rs
aXN0IHwgMjggLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjgg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMvaW50ZWwtY2kvZmFzdC1mZWVkYmFjay50
ZXN0bGlzdCBiL3Rlc3RzL2ludGVsLWNpL2Zhc3QtZmVlZGJhY2sudGVzdGxpc3QKaW5kZXggMjU1
M2E2OGMzLi5hZGU3Mzk2OTQgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2ludGVsLWNpL2Zhc3QtZmVlZGJh
Y2sudGVzdGxpc3QKKysrIGIvdGVzdHMvaW50ZWwtY2kvZmFzdC1mZWVkYmFjay50ZXN0bGlzdApA
QCAtMjYsMzQgKzI2LDYgQEAgaWd0QGdlbV9leGVjX2d0dGZpbGxAYmFzaWMKIGlndEBnZW1fZXhl
Y19wYXJhbGxlbEBiYXNpYwogaWd0QGdlbV9leGVjX3BhcnNlQGJhc2ljLWFsbG93ZWQKIGlndEBn
ZW1fZXhlY19wYXJzZUBiYXNpYy1yZWplY3RlZAotaWd0QGdlbV9leGVjX3JlbG9jQGJhc2ljLWNw
dQotaWd0QGdlbV9leGVjX3JlbG9jQGJhc2ljLWd0dAotaWd0QGdlbV9leGVjX3JlbG9jQGJhc2lj
LWNwdS1ndHQKLWlndEBnZW1fZXhlY19yZWxvY0BiYXNpYy1ndHQtY3B1Ci1pZ3RAZ2VtX2V4ZWNf
cmVsb2NAYmFzaWMtY3B1LXJlYWQKLWlndEBnZW1fZXhlY19yZWxvY0BiYXNpYy1ndHQtcmVhZAot
aWd0QGdlbV9leGVjX3JlbG9jQGJhc2ljLXdyaXRlLWNwdQotaWd0QGdlbV9leGVjX3JlbG9jQGJh
c2ljLXdyaXRlLWd0dAotaWd0QGdlbV9leGVjX3JlbG9jQGJhc2ljLXdyaXRlLXJlYWQKLWlndEBn
ZW1fZXhlY19yZWxvY0BiYXNpYy1jcHUtbm9yZWxvYwotaWd0QGdlbV9leGVjX3JlbG9jQGJhc2lj
LWd0dC1ub3JlbG9jCi1pZ3RAZ2VtX2V4ZWNfcmVsb2NAYmFzaWMtY3B1LWd0dC1ub3JlbG9jCi1p
Z3RAZ2VtX2V4ZWNfcmVsb2NAYmFzaWMtZ3R0LWNwdS1ub3JlbG9jCi1pZ3RAZ2VtX2V4ZWNfcmVs
b2NAYmFzaWMtY3B1LXJlYWQtbm9yZWxvYwotaWd0QGdlbV9leGVjX3JlbG9jQGJhc2ljLWd0dC1y
ZWFkLW5vcmVsb2MKLWlndEBnZW1fZXhlY19yZWxvY0BiYXNpYy13cml0ZS1jcHUtbm9yZWxvYwot
aWd0QGdlbV9leGVjX3JlbG9jQGJhc2ljLXdyaXRlLWd0dC1ub3JlbG9jCi1pZ3RAZ2VtX2V4ZWNf
cmVsb2NAYmFzaWMtd3JpdGUtcmVhZC1ub3JlbG9jCi1pZ3RAZ2VtX2V4ZWNfcmVsb2NAYmFzaWMt
Y3B1LWFjdGl2ZQotaWd0QGdlbV9leGVjX3JlbG9jQGJhc2ljLWd0dC1hY3RpdmUKLWlndEBnZW1f
ZXhlY19yZWxvY0BiYXNpYy1jcHUtZ3R0LWFjdGl2ZQotaWd0QGdlbV9leGVjX3JlbG9jQGJhc2lj
LWd0dC1jcHUtYWN0aXZlCi1pZ3RAZ2VtX2V4ZWNfcmVsb2NAYmFzaWMtY3B1LXJlYWQtYWN0aXZl
Ci1pZ3RAZ2VtX2V4ZWNfcmVsb2NAYmFzaWMtZ3R0LXJlYWQtYWN0aXZlCi1pZ3RAZ2VtX2V4ZWNf
cmVsb2NAYmFzaWMtd3JpdGUtY3B1LWFjdGl2ZQotaWd0QGdlbV9leGVjX3JlbG9jQGJhc2ljLXdy
aXRlLWd0dC1hY3RpdmUKLWlndEBnZW1fZXhlY19yZWxvY0BiYXNpYy13cml0ZS1yZWFkLWFjdGl2
ZQotaWd0QGdlbV9leGVjX3JlbG9jQGJhc2ljLXNvZnRwaW4KIGlndEBnZW1fZXhlY19zdG9yZUBi
YXNpYy1hbGwKIGlndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljCiBpZ3RAZ2VtX2V4ZWNfc3VzcGVu
ZEBiYXNpYy1zMAotLSAKMi4yNC4wLnJjMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
