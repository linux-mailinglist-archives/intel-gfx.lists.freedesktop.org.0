Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29303D5E31
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 11:08:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CD106E178;
	Mon, 14 Oct 2019 09:08:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 066B96E178
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 09:08:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18828682-1500050 
 for multiple; Mon, 14 Oct 2019 10:07:58 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Oct 2019 10:07:43 +0100
Message-Id: <20191014090757.32111-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/15] drm/i915/display: Squelch kerneldoc
 warnings
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

SnVzdCBhIHBhcmFtZXRlciByZW5hbWUsCgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYzoxNDQyNTogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJl
ciAnX25ld19wbGFuZV9zdGF0ZScgbm90IGRlc2NyaWJlZCBpbiAnaW50ZWxfcHJlcGFyZV9wbGFu
ZV9mYicKZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmM6MTQ0MjU6
IHdhcm5pbmc6IEV4Y2VzcyBmdW5jdGlvbiBwYXJhbWV0ZXIgJ25ld19zdGF0ZScgZGVzY3JpcHRp
b24gaW4gJ2ludGVsX3ByZXBhcmVfcGxhbmVfZmInCmRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jOjE0NTM0OiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIgb3Ig
bWVtYmVyICdfb2xkX3BsYW5lX3N0YXRlJyBub3QgZGVzY3JpYmVkIGluICdpbnRlbF9jbGVhbnVw
X3BsYW5lX2ZiJwpkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYzox
NDUzNDogd2FybmluZzogRXhjZXNzIGZ1bmN0aW9uIHBhcmFtZXRlciAnb2xkX3N0YXRlJyBkZXNj
cmlwdGlvbiBpbiAnaW50ZWxfY2xlYW51cF9wbGFuZV9mYicKClNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWFhcnRlbiBMYW5raG9yc3Qg
PG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQu
cm9wZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKaW5kZXggYTE0NmVjMDJhMGMxLi4zY2YzOWZjMTUzYjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNDQxMCw3ICsxNDQxMCw3IEBAIHN0
YXRpYyB2b2lkIGZiX29ial9idW1wX3JlbmRlcl9wcmlvcml0eShzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqKQogLyoqCiAgKiBpbnRlbF9wcmVwYXJlX3BsYW5lX2ZiIC0gUHJlcGFyZSBm
YiBmb3IgdXNhZ2Ugb24gcGxhbmUKICAqIEBwbGFuZTogZHJtIHBsYW5lIHRvIHByZXBhcmUgZm9y
Ci0gKiBAbmV3X3N0YXRlOiB0aGUgcGxhbmUgc3RhdGUgYmVpbmcgcHJlcGFyZWQKKyAqIEBfbmV3
X3BsYW5lX3N0YXRlOiB0aGUgcGxhbmUgc3RhdGUgYmVpbmcgcHJlcGFyZWQKICAqCiAgKiBQcmVw
YXJlcyBhIGZyYW1lYnVmZmVyIGZvciB1c2FnZSBvbiBhIGRpc3BsYXkgcGxhbmUuICBHZW5lcmFs
bHkgdGhpcwogICogaW52b2x2ZXMgcGlubmluZyB0aGUgdW5kZXJseWluZyBvYmplY3QgYW5kIHVw
ZGF0aW5nIHRoZSBmcm9udGJ1ZmZlciB0cmFja2luZwpAQCAtMTQ1MjQsNyArMTQ1MjQsNyBAQCBp
bnRlbF9wcmVwYXJlX3BsYW5lX2ZiKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLAogLyoqCiAgKiBp
bnRlbF9jbGVhbnVwX3BsYW5lX2ZiIC0gQ2xlYW5zIHVwIGFuIGZiIGFmdGVyIHBsYW5lIHVzZQog
ICogQHBsYW5lOiBkcm0gcGxhbmUgdG8gY2xlYW4gdXAgZm9yCi0gKiBAb2xkX3N0YXRlOiB0aGUg
c3RhdGUgZnJvbSB0aGUgcHJldmlvdXMgbW9kZXNldAorICogQF9vbGRfcGxhbmVfc3RhdGU6IHRo
ZSBzdGF0ZSBmcm9tIHRoZSBwcmV2aW91cyBtb2Rlc2V0CiAgKgogICogQ2xlYW5zIHVwIGEgZnJh
bWVidWZmZXIgdGhhdCBoYXMganVzdCBiZWVuIHJlbW92ZWQgZnJvbSBhIHBsYW5lLgogICovCi0t
IAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
