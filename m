Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5F2AC689
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 14:00:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00A9789A74;
	Sat,  7 Sep 2019 12:00:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFA4F89A74;
 Sat,  7 Sep 2019 12:00:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18408375-1500050 
 for multiple; Sat, 07 Sep 2019 12:59:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Sep 2019 12:59:50 +0100
Message-Id: <20190907115952.3227-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190907115952.3227-1-chris@chris-wilson.co.uk>
References: <20190907115952.3227-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/4] i915/gem_exec_schedule: Check
 timeslice
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hlY2sgdGhhdCB3ZSBjYW4gcnVuIGEgc2Vjb25kIHJlcXVlc3QgZXZlbiBpZiBhbiBlcXVhbCBw
cmlvcml0eSBzcGlubmVyCmlzIGhvZ2dpbmcgdGhlIGVuZ2luZS4KCkV4dGVuZCB0aGUgdGVzdGlu
ZyB3aXRoIHNvbWUgdW5keWluZyB0aW1lc2xpY2UgYmVoYXZpb3VyIHRoYXQgcmVxdWlyZXMKaGFu
Z2NoZWNrIHRvIGludGVydmVuZS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3
ZXJsaW5AaW50ZWwuY29tPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVs
LmNvbT4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNv
bT4KLS0tCiB0ZXN0cy9pOTE1L2dlbV9leGVjX3NjaGVkdWxlLmMgfCAxMDkgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTA5IGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9leGVjX3NjaGVkdWxlLmMgYi90ZXN0cy9pOTE1
L2dlbV9leGVjX3NjaGVkdWxlLmMKaW5kZXggZGRjYjFmMjFhLi40NjFlOGRlMDkgMTAwNjQ0Ci0t
LSBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfc2NoZWR1bGUuYworKysgYi90ZXN0cy9pOTE1L2dlbV9l
eGVjX3NjaGVkdWxlLmMKQEAgLTEwNjAsNiArMTA2MCwxMDcgQEAgc3RhdGljIHZvaWQgcHJlZW1w
dF9xdWV1ZShpbnQgZmQsIHVuc2lnbmVkIHJpbmcsIHVuc2lnbmVkIGludCBmbGFncykKIAl9CiB9
CiAKK3N0YXRpYyB2b2lkIHByZWVtcHRfdGltZXNsaWNlKGludCBpOTE1LCB1bnNpZ25lZCByaW5n
KQoreworCWNvbnN0IHVpbnQzMl90IGJiZSA9IE1JX0JBVENIX0JVRkZFUl9FTkQ7CisJc3RydWN0
IGRybV9pOTE1X2dlbV9leGVjX29iamVjdDIgb2JqID0geworCQkuaGFuZGxlID0gZ2VtX2NyZWF0
ZShpOTE1LCA0MDk2KQorCX07CisJc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVyMiBleGVj
YnVmID0geworCQkuYnVmZmVyc19wdHIgPSB0b191c2VyX3BvaW50ZXIoJm9iaiksCisJCS5idWZm
ZXJfY291bnQgPSAxLAorCQkuZmxhZ3MgPSByaW5nLAorCQkucnN2ZDEgPSBnZW1fY29udGV4dF9j
cmVhdGUoaTkxNSksCisJfTsKKwlpZ3Rfc3Bpbl90ICpzcGluOworCisJLyoKKwkgKiBMYXVuY2gg
YSBzcGlubmVyIHRvIG9jY3VweSB0aGUgdGFyZ2V0IGVuZ2luZSwgYW5kIHRoZW4KKwkgKiBjaGVj
ayB3ZSBleGVjdXRlIGEgcGluZyB1bmRlcm5lYXRoIGl0IGZyb20gYSBzZWNvbmQgY29udGV4dC4K
KwkgKi8KKwlzcGluID0gaWd0X3NwaW5fbmV3KGk5MTUsIC5lbmdpbmUgPSByaW5nLCAuZmxhZ3Mg
PSBJR1RfU1BJTl9QT0xMX1JVTik7CisJaWd0X3NwaW5fYnVzeXdhaXRfdW50aWxfc3RhcnRlZChz
cGluKTsKKworCS8qIEJvdGggdGhlIGFjdGl2ZSBzcGlubmVyIGFuZCB0aGlzIGFyZSBhdCB0aGUg
c2FtZSBwcmlvcml0eSAqLworCWdlbV93cml0ZShpOTE1LCBvYmouaGFuZGxlLCAwLCAmYmJlLCBz
aXplb2YoYmJlKSk7CisJZ2VtX2V4ZWNidWYoaTkxNSwgJmV4ZWNidWYpOworCWdlbV9zeW5jKGk5
MTUsIG9iai5oYW5kbGUpOworCisJaWd0X2Fzc2VydChnZW1fYm9fYnVzeShpOTE1LCBzcGluLT5o
YW5kbGUpKTsKKwlpZ3Rfc3Bpbl9mcmVlKGk5MTUsIHNwaW4pOworCisJZ2VtX2NvbnRleHRfZGVz
dHJveShpOTE1LCBleGVjYnVmLnJzdmQxKTsKKwlnZW1fY2xvc2UoaTkxNSwgb2JqLmhhbmRsZSk7
Cit9CisKK3N0YXRpYyB2b2lkIHByZWVtcHRfdGltZXNsaWNlX3VuZHlpbmcoaW50IGk5MTUsIHVu
c2lnbmVkIHJpbmcpCit7CisJc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX29iamVjdDIgb2JqID0g
eworCQkuaGFuZGxlID0gZ2VtX2NyZWF0ZShpOTE1LCA0MDk2KQorCX07CisJc3RydWN0IGRybV9p
OTE1X2dlbV9leGVjYnVmZmVyMiBleGVjYnVmID0geworCQkuYnVmZmVyc19wdHIgPSB0b191c2Vy
X3BvaW50ZXIoJm9iaiksCisJCS5idWZmZXJfY291bnQgPSAxLAorCQkuZmxhZ3MgPSByaW5nLAor
CQkucnN2ZDEgPSBnZW1fY29udGV4dF9jcmVhdGUoaTkxNSksCisJfTsKKwlpZ3Rfc3Bpbl90ICpz
cGluOworCisJLyoKKwkgKiBXZSBzaG91bGQgbm90IGFsbG93IGEgc3Bpbm5lciB0byBldmFkZSBo
YW5nY2hlY2sgYnkgc2ltcGx5CisJICogYmVpbmcgdGltZXNsaWNlZC4KKwkgKi8KKwlzcGluID0g
aWd0X3NwaW5fbmV3KGk5MTUsIC5lbmdpbmUgPSByaW5nLCAuZmxhZ3MgPSBJR1RfU1BJTl9QT0xM
X1JVTik7CisJaWd0X3NwaW5fYnVzeXdhaXRfdW50aWxfc3RhcnRlZChzcGluKTsKKworCWZvciAo
aW50IGkgPSAwOyBpIDwgMTIwOyBpKyspIHsKKwkJY29uc3QgdWludDMyX3QgYmJlID0gTUlfQkFU
Q0hfQlVGRkVSX0VORDsKKworCQlpZiAoIWdlbV9ib19idXN5KGk5MTUsIHNwaW4tPmhhbmRsZSkp
CisJCQlicmVhazsKKworCQlnZW1fd3JpdGUoaTkxNSwgb2JqLmhhbmRsZSwgMCwgJmJiZSwgc2l6
ZW9mKGJiZSkpOworCQlnZW1fZXhlY2J1ZihpOTE1LCAmZXhlY2J1Zik7CisKKwkJdXNsZWVwKDUw
MCAqIDEwMDApOyAvKiAwLjVzICovCisJfQorCisJaWd0X2Fzc2VydCghZ2VtX2JvX2J1c3koaTkx
NSwgc3Bpbi0+aGFuZGxlKSk7CisJaWd0X3NwaW5fZnJlZShpOTE1LCBzcGluKTsKKworCWdlbV9j
b250ZXh0X2Rlc3Ryb3koaTkxNSwgZXhlY2J1Zi5yc3ZkMSk7CisJZ2VtX2Nsb3NlKGk5MTUsIG9i
ai5oYW5kbGUpOworfQorCitzdGF0aWMgdm9pZCBwcmVlbXB0X2FudGl0aW1lc2xpY2UoaW50IGk5
MTUsIHVuc2lnbmVkIHJpbmcpCit7CisJdWludDMyX3QgY3R4WzJdID0geyBnZW1fY29udGV4dF9j
cmVhdGUoaTkxNSksIGdlbV9jb250ZXh0X2NyZWF0ZShpOTE1KSB9OworCWlndF9zcGluX3QgKnNw
aW5bMl07CisKKwkvKgorCSAqIExhdW5jaCB0d28gaW5kZXBlbmRlbnQgc3Bpbm5lcnMgdG8gb2Nj
dXB5IGFuIGVuZ2luZS4gVGltZXNsaWNpbmcKKwkgKiBzaG91bGQgbm90IGFsbG93IHRoZW0gdG8g
YnlwYXNzIGhhbmdjaGVjayBhbmQgcnVuIGluZGVmaW5pdGVseS4KKwkgKi8KKwlmb3IgKGludCBp
ID0gMDsgaSA8IEFSUkFZX1NJWkUoc3Bpbik7IGkrKykKKwkJc3BpbltpXSA9IGlndF9zcGluX25l
dyhpOTE1LCBjdHhbaV0sCisJCQkJICAgICAgIC5lbmdpbmUgPSByaW5nLAorCQkJCSAgICAgICAu
ZmxhZ3MgPSBJR1RfU1BJTl9GRU5DRV9PVVQpOworCisJLyogSGFuZ2NoZWNrIHNob3VsZCBraWxs
IGVhY2ggc3Bpbm5lciBhZnRlciBhYm91dCAxMHMgKi8KKwlmb3IgKGludCBpID0gMDsgaSA8IEFS
UkFZX1NJWkUoc3Bpbik7IGkrKykgeworCQlpbnQ2NF90IHRpbWVvdXQgPSA2MHVsbCAqIE5TRUNf
UEVSX1NFQzsKKwkJaWd0X2Fzc2VydF9lcShnZW1fd2FpdChpOTE1LCBzcGluW2ldLT5oYW5kbGUs
ICZ0aW1lb3V0KSwgMCk7CisJfQorCisJZm9yIChpbnQgaSA9IDA7IGkgPCBBUlJBWV9TSVpFKHNw
aW4pOyBpKyspIHsKKwkJaWd0X2Fzc2VydCghZ2VtX2JvX2J1c3koaTkxNSwgc3BpbltpXS0+aGFu
ZGxlKSk7CisJCWlndF9hc3NlcnRfZXEoc3luY19mZW5jZV9zdGF0dXMoc3BpbltpXS0+b3V0X2Zl
bmNlKSwgLUVJTyk7CisKKwkJaWd0X3NwaW5fZnJlZShpOTE1LCBzcGluW2ldKTsKKwkJZ2VtX2Nv
bnRleHRfZGVzdHJveShpOTE1LCBjdHhbaV0pOworCX0KK30KKwogc3RhdGljIHZvaWQgcHJlZW1w
dF9zZWxmKGludCBmZCwgdW5zaWduZWQgcmluZykKIHsKIAl1aW50MzJfdCByZXN1bHQgPSBnZW1f
Y3JlYXRlKGZkLCA0MDk2KTsKQEAgLTE3NzMsNiArMTg3NCw4IEBAIGlndF9tYWluCiAJCQkJCWln
dF9zdWJ0ZXN0X2YoInByZWVtcHQtcXVldWUtY29udGV4dHMtY2hhaW4tJXMiLCBlLT5uYW1lKQog
CQkJCQkJcHJlZW1wdF9xdWV1ZShmZCwgZS0+ZXhlY19pZCB8IGUtPmZsYWdzLCBDT05URVhUUyB8
IENIQUlOKTsKIAorCQkJCQlpZ3Rfc3VidGVzdF9mKCJwcmVlbXB0LXRpbWVzbGljZS0lcyIsIGUt
Pm5hbWUpCisJCQkJCQlwcmVlbXB0X3RpbWVzbGljZShmZCwgZS0+ZXhlY19pZCB8IGUtPmZsYWdz
KTsKIAkJCQkJaWd0X3N1YnRlc3RfZ3JvdXAgewogCQkJCQkJaWd0X2hhbmdfdCBoYW5nOwogCkBA
IC0xNzg4LDYgKzE4OTEsMTIgQEAgaWd0X21haW4KIAkJCQkJCWlndF9zdWJ0ZXN0X2YoInByZWVt
cHRpdmUtaGFuZy0lcyIsIGUtPm5hbWUpCiAJCQkJCQkJcHJlZW1wdGl2ZV9oYW5nKGZkLCBlLT5l
eGVjX2lkIHwgZS0+ZmxhZ3MpOwogCisJCQkJCQlpZ3Rfc3VidGVzdF9mKCJwcmVlbXB0LXRpbWVz
bGljZS11bmR5aW5nLSVzIiwgZS0+bmFtZSkKKwkJCQkJCQlwcmVlbXB0X3RpbWVzbGljZV91bmR5
aW5nKGZkLCBlLT5leGVjX2lkIHwgZS0+ZmxhZ3MpOworCisJCQkJCQlpZ3Rfc3VidGVzdF9mKCJw
cmVlbXB0LWFudGl0aW1lc2xpY2UtJXMiLCBlLT5uYW1lKQorCQkJCQkJCXByZWVtcHRfYW50aXRp
bWVzbGljZShmZCwgZS0+ZXhlY19pZCB8IGUtPmZsYWdzKTsKKwogCQkJCQkJaWd0X2ZpeHR1cmUg
ewogCQkJCQkJCWlndF9kaXNhbGxvd19oYW5nKGZkLCBoYW5nKTsKIAkJCQkJCQlpZ3RfZm9ya19o
YW5nX2RldGVjdG9yKGZkKTsKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
