Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83FFC5B57E
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 09:09:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15FDF89E15;
	Mon,  1 Jul 2019 07:09:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 31EB089E15;
 Mon,  1 Jul 2019 07:09:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2381AA011B;
 Mon,  1 Jul 2019 07:09:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Mon, 01 Jul 2019 07:09:13 -0000
Message-ID: <20190701070913.12149.24438@emeril.freedesktop.org>
References: <20190701062632.456-1-animesh.manna@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190701062632.456-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_DSB_enablement=2E?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogRFNCIGVuYWJsZW1lbnQuClVSTCAgIDogaHR0
cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MzAxMy8KU3RhdGUgOiB3YXJu
aW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmQxYjJi
NGQyYjIyYiBkcm0vaTkxNS9kc2I6IGZlYXR1cmUgZmxhZyBhZGRlZCBmb3IgZGlzcGxheSBzdGF0
ZSBidWZmZXIuCmY5MTBlNjI2Yzg1MiBkcm0vaTkxNS9kc2I6IERTQiBjb250ZXh0IGNyZWF0aW9u
LgotOjU1OiBXQVJOSU5HOkZJTEVfUEFUSF9DSEFOR0VTOiBhZGRlZCwgbW92ZWQgb3IgZGVsZXRl
ZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJTIG5lZWQgdXBkYXRpbmc/CiM1NTogCm5ldyBmaWxl
IG1vZGUgMTAwNjQ0Cgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAxMjAg
bGluZXMgY2hlY2tlZAoyMDhkMmE3ODNlMDggZHJtL2k5MTUvZHNiOiBzaW5nbGUgcmVnaXN0ZXIg
d3JpdGUgZnVuY3Rpb24gZm9yIERTQi4KZWZjMmUwZDkzMWVlIGRybS9pOTE1L2RzYjogQWRkZWQg
ZW51bSBmb3IgcmVnIHdyaXRlIGNhcGFiaWxpdHkuCjA4MGE0NThhN2MwMiBkcm0vaTkxNS9kc2I6
IEluZGV4ZWQgcmVnaXN0ZXIgd3JpdGUgZnVuY3Rpb24gZm9yIERTQi4KZDNlODIwMTk2MmViIGRy
bS9pOTE1L2RzYjogVXBkYXRlIGk5MTVfd3JpdGUgdG8gY2FsbCBkc2Itd3JpdGUuCi06NDI6IEVS
Uk9SOkNPTVBMRVhfTUFDUk86IE1hY3JvcyB3aXRoIGNvbXBsZXggdmFsdWVzIHNob3VsZCBiZSBl
bmNsb3NlZCBpbiBwYXJlbnRoZXNlcwojNDI6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2Lmg6MjcyMToKKyNkZWZpbmUgSTkxNV9XUklURShyZWdfXywgdmFsX18pIFwKKwkocmVn
X18uY2FwKSA/IGludGVsX2RzYl9yZWdfd3JpdGUoZGV2X3ByaXYtPmRzYiwgKHJlZ19fKSwgKHZh
bF9fKSkgOiBcCisJX19JOTE1X1JFR19PUCh3cml0ZSwgZGV2X3ByaXYsIChyZWdfXyksICh2YWxf
XykpCgotOjQyOiBDSEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdy
ZWdfXycgLSBwb3NzaWJsZSBzaWRlLWVmZmVjdHM/CiM0MjogRklMRTogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaDoyNzIxOgorI2RlZmluZSBJOTE1X1dSSVRFKHJlZ19fLCB2YWxfXykg
XAorCShyZWdfXy5jYXApID8gaW50ZWxfZHNiX3JlZ193cml0ZShkZXZfcHJpdi0+ZHNiLCAocmVn
X18pLCAodmFsX18pKSA6IFwKKwlfX0k5MTVfUkVHX09QKHdyaXRlLCBkZXZfcHJpdiwgKHJlZ19f
KSwgKHZhbF9fKSkKCi06NDI6IENIRUNLOk1BQ1JPX0FSR19SRVVTRTogTWFjcm8gYXJndW1lbnQg
cmV1c2UgJ3ZhbF9fJyAtIHBvc3NpYmxlIHNpZGUtZWZmZWN0cz8KIzQyOiBGSUxFOiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oOjI3MjE6CisjZGVmaW5lIEk5MTVfV1JJVEUocmVnX18s
IHZhbF9fKSBcCisJKHJlZ19fLmNhcCkgPyBpbnRlbF9kc2JfcmVnX3dyaXRlKGRldl9wcml2LT5k
c2IsIChyZWdfXyksICh2YWxfXykpIDogXAorCV9fSTkxNV9SRUdfT1Aod3JpdGUsIGRldl9wcml2
LCAocmVnX18pLCAodmFsX18pKQoKdG90YWw6IDEgZXJyb3JzLCAwIHdhcm5pbmdzLCAyIGNoZWNr
cywgMjYgbGluZXMgY2hlY2tlZAphYTlhMTA4Y2Y3YTkgZHJtL2k5MTUvZHNiOiBSZWdpc3RlciBk
ZWZpbml0aW9uIG9mIERTQiByZWdpc3RlcnMuCjVmMTlkNmMwOWEwOCBkcm0vaTkxNS9kc2I6IENo
ZWNrIERTQiBlbmdpbmUgc3RhdHVzLgo5MDU5NDhkYTE5M2EgZHJtL2k5MTUvZHNiOiBmdW5jdGlv
bnMgdG8gZW5hYmxlL2Rpc2FibGUgRFNCIGVuZ2luZS4KNTMxYTM3MjE2MjNhIGRybS9pOTE1L2Rz
YjogZnVuY3Rpb24gdG8gdHJpZ2dlciB3b3JrbG9hZCBleGVjdXRpb24gb2YgRFNCLgo2YzViNmMy
ODc1NDUgZHJtL2k5MTUvZHNiOiBmdW5jdGlvbiB0byBkZXN0cm95IERTQiBjb250ZXh0LgpjZTJk
ZDcxNTkyZGQgZHJtL2k5MTUvZHNiOiBFYXJseSBwcmVwYXJlIG9mIGRzYiBjb250ZXh0LgpmMTAy
YzgyYmUzOTcgZHJtL2k5MTUvZHNiOiBDbGVhbnVwIG9mIERTQiBjb250ZXh0LgplOTYwNDZjYjhm
NGYgZHJtL2k5MTUvZHNiOiBEb2N1bWVudGF0aW9uIGZvciBEU0IuCjVmY2FhNjg0MmI2MyBkcm0v
aTkxNS9kc2I6IEVuYWJsZSBnYW1tYSBsdXQgcHJvZ3JhbW1pbmcgdXNpbmcgRFNCLgotOjY2OiBX
QVJOSU5HOkxPTkdfTElORTogbGluZSBvdmVyIDEwMCBjaGFyYWN0ZXJzCiM2NjogRklMRTogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaDoxMDE5NDoKKyNkZWZpbmUgUFJFQ19QQUxfR0Nf
TUFYKHBpcGUsIGkpCV9NTUlPKF9QSVBFKHBpcGUsIF9QQUxfUFJFQ19HQ19NQVhfQSwgX1BBTF9Q
UkVDX0dDX01BWF9CKSArIChpKSAqIDQsIFwKCi06Njg6IFdBUk5JTkc6TE9OR19MSU5FOiBsaW5l
IG92ZXIgMTAwIGNoYXJhY3RlcnMKIzY4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oOjEwMTk2OgorI2RlZmluZSBQUkVDX1BBTF9FWFRfR0NfTUFYKHBpcGUsIGkpCV9NTUlP
KF9QSVBFKHBpcGUsIF9QQUxfUFJFQ19FWFRfR0NfTUFYX0EsIF9QQUxfUFJFQ19FWFRfR0NfTUFY
X0IpICsgKGkpICogNCwgXAoKLTo3MDogV0FSTklORzpMT05HX0xJTkU6IGxpbmUgb3ZlciAxMDAg
Y2hhcmFjdGVycwojNzA6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmg6MTAx
OTg6CisjZGVmaW5lIFBSRUNfUEFMX0VYVDJfR0NfTUFYKHBpcGUsIGkpCV9NTUlPKF9QSVBFKHBp
cGUsIF9QQUxfUFJFQ19FWFQyX0dDX01BWF9BLCBfUEFMX1BSRUNfRVhUMl9HQ19NQVhfQikgKyAo
aSkgKiA0LCBcCgp0b3RhbDogMCBlcnJvcnMsIDMgd2FybmluZ3MsIDAgY2hlY2tzLCA2MiBsaW5l
cyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
