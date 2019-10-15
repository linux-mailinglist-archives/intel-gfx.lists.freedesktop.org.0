Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA42D7AB6
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 18:01:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3AA66E842;
	Tue, 15 Oct 2019 16:01:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5EAF16E842;
 Tue, 15 Oct 2019 16:01:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 57B55A41FB;
 Tue, 15 Oct 2019 16:01:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 15 Oct 2019 16:01:46 -0000
Message-ID: <20191015160146.22842.89748@emeril.freedesktop.org>
References: <20191015135013.10630-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191015135013.10630-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Refactor_Gen11+_SAGV_support?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogUmVmYWN0b3IgR2VuMTErIFNBR1Ygc3VwcG9y
dApVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjgwMjgv
ClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4v
ZHJtLXRpcAoyNDhjYmFmNzQxZDAgZHJtL2k5MTU6IFJlZmFjdG9yIGludGVsX2Nhbl9lbmFibGVf
c2FndgotOjMzOiBXQVJOSU5HOlNVU1BFQ1RfQ09ERV9JTkRFTlQ6IHN1c3BlY3QgY29kZSBpbmRl
bnQgZm9yIGNvbmRpdGlvbmFsIHN0YXRlbWVudHMgKDE2LCAzMikKIzMzOiBGSUxFOiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jOjM4MDI6CiAJCWlmIChza2xfbmVlZHNfbWVtb3J5X2J3
X3dhKGRldl9wcml2KSAmJgpbLi4uXQorCQkJCWxhdGVuY3kgKz0gMTU7CgotOjY2OiBDSEVDSzpQ
QVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRo
ZXNpcwojNjY6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmM6MzgzOToKKwlm
b3JfZWFjaF9uZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0YywKKwkJCQkJICAgICBu
ZXdfY3J0Y19zdGF0ZSwgaSkgewoKLTo2NzogQ0hFQ0s6QlJBQ0VTOiBCbGFuayBsaW5lcyBhcmVu
J3QgbmVjZXNzYXJ5IGFmdGVyIGFuIG9wZW4gYnJhY2UgJ3snCiM2NzogRklMRTogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcG0uYzozODQwOgorCQkJCQkgICAgIG5ld19jcnRjX3N0YXRlLCBp
KSB7CisKCi06ODM6IEVSUk9SOk9QRU5fQlJBQ0U6IHRoYXQgb3BlbiBicmFjZSB7IHNob3VsZCBi
ZSBvbiB0aGUgcHJldmlvdXMgbGluZQojODM6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmM6Mzg1NjoKKwkJCWZvciAobGV2ZWwgPSBpbGtfd21fbWF4X2xldmVsKGRldl9wcml2
KTsKKwkJCSAgICAgIXdtLT53bVtsZXZlbF0ucGxhbmVfZW47IC0tbGV2ZWwpCisJCQkgICAgIHsg
fQoKdG90YWw6IDEgZXJyb3JzLCAxIHdhcm5pbmdzLCAyIGNoZWNrcywgOTEgbGluZXMgY2hlY2tl
ZAo0Yjg3ZjUzMGYxMDggZHJtL2k5MTU6IFJlc3RyaWN0IHFndiBwb2ludHMgd2hpY2ggZG9uJ3Qg
aGF2ZSBlbm91Z2ggYmFuZHdpZHRoLgotOjEyNDogQ0hFQ0s6TElORV9TUEFDSU5HOiBQbGVhc2Ug
ZG9uJ3QgdXNlIG11bHRpcGxlIGJsYW5rIGxpbmVzCiMxMjQ6IEZJTEU6IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYzoxMzg6CisKKwoKLTozMjk6IENIRUNLOkJSQUNFUzog
YnJhY2VzIHt9IHNob3VsZCBiZSB1c2VkIG9uIGFsbCBhcm1zIG9mIHRoaXMgc3RhdGVtZW50CiMz
Mjk6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jOjE0
MjA4OgorCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgMTEpIHsKWy4uLl0KKwllbHNlClsuLi5d
CgotOjMzMzogRVJST1I6RUxTRV9BRlRFUl9CUkFDRTogZWxzZSBzaG91bGQgZm9sbG93IGNsb3Nl
IGJyYWNlICd9JwojMzMzOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYzoxNDIxMjoKKwl9CisJZWxzZQoKdG90YWw6IDEgZXJyb3JzLCAwIHdhcm5pbmdz
LCAyIGNoZWNrcywgMjk4IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
