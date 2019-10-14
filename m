Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2A9D5F39
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 11:45:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65F846E218;
	Mon, 14 Oct 2019 09:44:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D30C6E218
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 09:44:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 02:44:57 -0700
X-IronPort-AV: E=Sophos;i="5.67,295,1566889200"; d="scan'208";a="185444713"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO [10.252.31.172])
 ([10.252.31.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 14 Oct 2019 02:44:57 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191012080208.18774-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a764f7d2-fbe7-bcc9-4188-9dde5390ff62@linux.intel.com>
Date: Mon, 14 Oct 2019 10:44:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191012080208.18774-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Squelch kerneldoc warnings
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEyLzEwLzIwMTkgMDk6MDIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBKdXN0IGEgcGFyYW1l
dGVyIHJlbmFtZSwKPiAKPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYzoxNDQyNTogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAnX25ld19w
bGFuZV9zdGF0ZScgbm90IGRlc2NyaWJlZCBpbiAnaW50ZWxfcHJlcGFyZV9wbGFuZV9mYicKPiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYzoxNDQyNTogd2Fybmlu
ZzogRXhjZXNzIGZ1bmN0aW9uIHBhcmFtZXRlciAnbmV3X3N0YXRlJyBkZXNjcmlwdGlvbiBpbiAn
aW50ZWxfcHJlcGFyZV9wbGFuZV9mYicKPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYzoxNDUzNDogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJl
ciAnX29sZF9wbGFuZV9zdGF0ZScgbm90IGRlc2NyaWJlZCBpbiAnaW50ZWxfY2xlYW51cF9wbGFu
ZV9mYicKPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYzoxNDUz
NDogd2FybmluZzogRXhjZXNzIGZ1bmN0aW9uIHBhcmFtZXRlciAnb2xkX3N0YXRlJyBkZXNjcmlw
dGlvbiBpbiAnaW50ZWxfY2xlYW51cF9wbGFuZV9mYicKPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWFhcnRlbiBMYW5raG9y
c3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiBDYzogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogTWF0dCBSb3BlciA8bWF0
dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNCArKy0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggYTE0NmVjMDJhMGMxLi4zY2YzOWZjMTUzYjMg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+
IEBAIC0xNDQxMCw3ICsxNDQxMCw3IEBAIHN0YXRpYyB2b2lkIGZiX29ial9idW1wX3JlbmRlcl9w
cmlvcml0eShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQo+ICAgLyoqCj4gICAgKiBp
bnRlbF9wcmVwYXJlX3BsYW5lX2ZiIC0gUHJlcGFyZSBmYiBmb3IgdXNhZ2Ugb24gcGxhbmUKPiAg
ICAqIEBwbGFuZTogZHJtIHBsYW5lIHRvIHByZXBhcmUgZm9yCj4gLSAqIEBuZXdfc3RhdGU6IHRo
ZSBwbGFuZSBzdGF0ZSBiZWluZyBwcmVwYXJlZAo+ICsgKiBAX25ld19wbGFuZV9zdGF0ZTogdGhl
IHBsYW5lIHN0YXRlIGJlaW5nIHByZXBhcmVkCj4gICAgKgo+ICAgICogUHJlcGFyZXMgYSBmcmFt
ZWJ1ZmZlciBmb3IgdXNhZ2Ugb24gYSBkaXNwbGF5IHBsYW5lLiAgR2VuZXJhbGx5IHRoaXMKPiAg
ICAqIGludm9sdmVzIHBpbm5pbmcgdGhlIHVuZGVybHlpbmcgb2JqZWN0IGFuZCB1cGRhdGluZyB0
aGUgZnJvbnRidWZmZXIgdHJhY2tpbmcKPiBAQCAtMTQ1MjQsNyArMTQ1MjQsNyBAQCBpbnRlbF9w
cmVwYXJlX3BsYW5lX2ZiKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLAo+ICAgLyoqCj4gICAgKiBp
bnRlbF9jbGVhbnVwX3BsYW5lX2ZiIC0gQ2xlYW5zIHVwIGFuIGZiIGFmdGVyIHBsYW5lIHVzZQo+
ICAgICogQHBsYW5lOiBkcm0gcGxhbmUgdG8gY2xlYW4gdXAgZm9yCj4gLSAqIEBvbGRfc3RhdGU6
IHRoZSBzdGF0ZSBmcm9tIHRoZSBwcmV2aW91cyBtb2Rlc2V0Cj4gKyAqIEBfb2xkX3BsYW5lX3N0
YXRlOiB0aGUgc3RhdGUgZnJvbSB0aGUgcHJldmlvdXMgbW9kZXNldAo+ICAgICoKPiAgICAqIENs
ZWFucyB1cCBhIGZyYW1lYnVmZmVyIHRoYXQgaGFzIGp1c3QgYmVlbiByZW1vdmVkIGZyb20gYSBw
bGFuZS4KPiAgICAqLwo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJz
dWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
