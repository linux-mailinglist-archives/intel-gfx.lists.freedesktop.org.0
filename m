Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1ED0E1B84
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 14:58:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD9DD6EA94;
	Wed, 23 Oct 2019 12:58:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 23E166EA94;
 Wed, 23 Oct 2019 12:58:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1C681A0003;
 Wed, 23 Oct 2019 12:58:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Abdiel Janulgue" <abdiel.janulgue@linux.intel.com>
Date: Wed, 23 Oct 2019 12:58:25 -0000
Message-ID: <20191023125825.3025.27760@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191023083030.27892-1-abdiel.janulgue@linux.intel.com>
In-Reply-To: <20191023083030.27892-1-abdiel.janulgue@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/5=5D_drm/i915=3A_Allow_i915_to_man?=
 =?utf-8?q?age_the_vma_offset_nodes_instead_of_drm_core?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNV0g
ZHJtL2k5MTU6IEFsbG93IGk5MTUgdG8gbWFuYWdlIHRoZSB2bWEgb2Zmc2V0IG5vZGVzIGluc3Rl
YWQgb2YgZHJtIGNvcmUKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcv
c2VyaWVzLzY4NDQ0LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNr
cGF0Y2ggb3JpZ2luL2RybS10aXAKODhlYjAzOWU5YTA0IGRybS9pOTE1OiBBbGxvdyBpOTE1IHRv
IG1hbmFnZSB0aGUgdm1hIG9mZnNldCBub2RlcyBpbnN0ZWFkIG9mIGRybSBjb3JlCi06MzM1OiBD
SEVDSzpCUkFDRVM6IEJsYW5rIGxpbmVzIGFyZW4ndCBuZWNlc3NhcnkgYmVmb3JlIGEgY2xvc2Ug
YnJhY2UgJ30nCiMzMzU6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9t
bWFuLmM6NjQzOgorCisJfQoKLTo1MDE6IENIRUNLOkxJTkVfU1BBQ0lORzogUGxlYXNlIGRvbid0
IHVzZSBtdWx0aXBsZSBibGFuayBsaW5lcwojNTAxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYzo1NzM6CiAKKwoKdG90YWw6IDAgZXJyb3Jz
LCAwIHdhcm5pbmdzLCAyIGNoZWNrcywgNTUzIGxpbmVzIGNoZWNrZWQKN2RkNjcyYzNhZmY3IGRy
bS9pOTE1OiBkZWZpbmUgaTkxNV9nZ3R0X2hhc19hcGVydHVyZQo5MDU1NWMwOTkyNWMgZHJtL2k5
MTU6IEludHJvZHVjZSBEUk1fSTkxNV9HRU1fTU1BUF9PRkZTRVQKLToxMjg6IFdBUk5JTkc6TE9O
R19MSU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzEyODogRklMRTogaW5jbHVkZS91YXBp
L2RybS9pOTE1X2RybS5oOjM5NzoKKyNkZWZpbmUgRFJNX0lPQ1RMX0k5MTVfR0VNX01NQVBfR1RU
CURSTV9JT1dSKERSTV9DT01NQU5EX0JBU0UgKyBEUk1fSTkxNV9HRU1fTU1BUF9HVFQsIHN0cnVj
dCBkcm1faTkxNV9nZW1fbW1hcF9vZmZzZXQpCgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3Ms
IDAgY2hlY2tzLCAxMTYgbGluZXMgY2hlY2tlZAowMjc4NDBmODU0NDYgZHJtL2k5MTU6IGNwdS1t
YXAgYmFzZWQgZHVtYiBidWZmZXJzCi06MjI6IENIRUNLOlBBUkVOVEhFU0lTX0FMSUdOTUVOVDog
QWxpZ25tZW50IHNob3VsZCBtYXRjaCBvcGVuIHBhcmVudGhlc2lzCiMyMjogRklMRTogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYzo1NzE6CitpOTE1X2dlbV9tbWFwX2R1
bWIoc3RydWN0IGRybV9maWxlICpmaWxlLAorCQkgIHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCgot
OjU3OiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2gg
b3BlbiBwYXJlbnRoZXNpcwojNTc6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
Lmg6MTkzNjoKK2ludCBpOTE1X2dlbV9tbWFwX2R1bWIoc3RydWN0IGRybV9maWxlICpmaWxlX3By
aXYsIHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCisJCSAgICAgIHUzMiBoYW5kbGUsIHU2NCAqb2Zm
c2V0KTsKCnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywgMiBjaGVja3MsIDM0IGxpbmVzIGNo
ZWNrZWQKMmNhNjBlYThmYWVkIGRybS9pOTE1OiBBZGQgY3B1IGZhdWx0IGhhbmRsZXIgZm9yIG1t
YXBfb2Zmc2V0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
