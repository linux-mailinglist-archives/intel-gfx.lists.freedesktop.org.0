Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA69AAA184
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 13:33:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C16F36E079;
	Thu,  5 Sep 2019 11:33:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 235206E079;
 Thu,  5 Sep 2019 11:33:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 149CAA006B;
 Thu,  5 Sep 2019 11:33:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Thu, 05 Sep 2019 11:33:20 -0000
Message-ID: <20190905113320.8132.78698@emeril.freedesktop.org>
References: <20190905104954.31935-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190905104954.31935-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Send_a_hotplug_when_edid_changes_=28rev6=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogU2VuZCBhIGhvdHBsdWcgd2hlbiBlZGlkIGNo
YW5nZXMgKHJldjYpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy82MjgxNi8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3Bh
dGNoIG9yaWdpbi9kcm0tdGlwCjFiM2ExYTZjODY2OSBkcm06IEFkZCBoZWxwZXIgdG8gY29tcGFy
ZSBlZGlkcy4KLTozMjogQ0hFQ0s6Q09NUEFSSVNPTl9UT19OVUxMOiBDb21wYXJpc29uIHRvIE5V
TEwgY291bGQgYmUgd3JpdHRlbiAiZWRpZDEiCiMzMjogRklMRTogZHJpdmVycy9ncHUvZHJtL2Ry
bV9lZGlkLmM6MTM3NToKKwlib29sIGVkaWQxX3ByZXNlbnQgPSBlZGlkMSAhPSBOVUxMOwoKLToz
MzogQ0hFQ0s6Q09NUEFSSVNPTl9UT19OVUxMOiBDb21wYXJpc29uIHRvIE5VTEwgY291bGQgYmUg
d3JpdHRlbiAiZWRpZDIiCiMzMzogRklMRTogZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmM6MTM3
NjoKKwlib29sIGVkaWQyX3ByZXNlbnQgPSBlZGlkMiAhPSBOVUxMOwoKLTozOTogQ0hFQ0s6QlJB
Q0VTOiBCbGFuayBsaW5lcyBhcmVuJ3QgbmVjZXNzYXJ5IGFmdGVyIGFuIG9wZW4gYnJhY2UgJ3sn
CiMzOTogRklMRTogZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmM6MTM4MjoKKwlpZiAoZWRpZDEp
IHsKKwoKLTo1NDogQ0hFQ0s6TElORV9TUEFDSU5HOiBQbGVhc2UgZG9uJ3QgdXNlIG11bHRpcGxl
IGJsYW5rIGxpbmVzCiM1NDogRklMRTogZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmM6MTM5NzoK
KworCgp0b3RhbDogMCBlcnJvcnMsIDAgd2FybmluZ3MsIDQgY2hlY2tzLCA1NCBsaW5lcyBjaGVj
a2VkCjkzOGY1ODVhMTVjMCBkcm06IEludHJvZHVjZSBjaGFuZ2UgY291bnRlciB0byBkcm1fY29u
bmVjdG9yCi06NDI6IENIRUNLOlBSRUZFUl9LRVJORUxfVFlQRVM6IFByZWZlciBrZXJuZWwgdHlw
ZSAndTY0JyBvdmVyICd1aW50NjRfdCcKIzQyOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vZHJtX3By
b2JlX2hlbHBlci5jOjc4MDoKKwl1aW50NjRfdCBvbGRfZXBvY2hfY291bnRlcjsKCi06Njk6IFdB
Uk5JTkc6QlJBQ0VTOiBicmFjZXMge30gYXJlIG5vdCBuZWNlc3NhcnkgZm9yIHNpbmdsZSBzdGF0
ZW1lbnQgYmxvY2tzCiM2OTogRklMRTogZHJpdmVycy9ncHUvZHJtL2RybV9wcm9iZV9oZWxwZXIu
Yzo4MTI6CisJCWlmIChvbGRfc3RhdHVzICE9IGNvbm5lY3Rvci0+c3RhdHVzKSB7CiAJCQljaGFu
Z2VkID0gdHJ1ZTsKKwkJfQoKLToxMDI6IENIRUNLOlBSRUZFUl9LRVJORUxfVFlQRVM6IFByZWZl
ciBrZXJuZWwgdHlwZSAndTY0JyBvdmVyICd1aW50NjRfdCcKIzEwMjogRklMRTogaW5jbHVkZS9k
cm0vZHJtX2Nvbm5lY3Rvci5oOjEyOTI6CisJdWludDY0X3QgZXBvY2hfY291bnRlcjsKCnRvdGFs
OiAwIGVycm9ycywgMSB3YXJuaW5ncywgMiBjaGVja3MsIDY5IGxpbmVzIGNoZWNrZWQKODFmMGU0
MmVkYTRjIGRybS9pOTE1OiBTZW5kIGhvdHBsdWcgZXZlbnQgaWYgZWRpZCBoYWQgY2hhbmdlZC4K
LTo4OiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9OR19MSU5FOiBQb3NzaWJsZSB1bndyYXBwZWQgY29t
bWl0IGRlc2NyaXB0aW9uIChwcmVmZXIgYSBtYXhpbXVtIDc1IGNoYXJzIHBlciBsaW5lKQojODog
CnRvIGNhbGxpbmcgbGF5ZXIgdXNpbmcgZHJtX2Nvbm5lY3Rvci0+Y2hhbmdlX2NvdW50ZXIocHJv
cG9zZWQgYnkgRGFuaWVsIFZldHRlcikuCgotOjYzOiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1F
TlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojNjM6IEZJTEU6IGRy
aXZlcnMvZ3B1L2RybS9kcm1fY29ubmVjdG9yLmM6MTg5NzoKKwkJCQlEUk1fREVCVUdfS01TKCJb
Q09OTkVDVE9SOiVkOiVzXSBFZGlkIHdhcyBjaGFuZ2VkLlxuIiwKKwkJCQkgICAgY29ubmVjdG9y
LT5iYXNlLmlkLCBjb25uZWN0b3ItPm5hbWUpOwoKLTo2NzogQ0hFQ0s6UEFSRU5USEVTSVNfQUxJ
R05NRU5UOiBBbGlnbm1lbnQgc2hvdWxkIG1hdGNoIG9wZW4gcGFyZW50aGVzaXMKIzY3OiBGSUxF
OiBkcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rvci5jOjE5MDE6CisJCQkJRFJNX0RFQlVHX0tN
UygiVXBkYXRpbmcgY2hhbmdlIGNvdW50ZXIgdG8gJWxsdVxuIiwKKwkJCQkgICAgY29ubmVjdG9y
LT5lcG9jaF9jb3VudGVyKTsKCi06MTQxOiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFs
aWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojMTQxOiBGSUxFOiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYzozMDI6CisJCURSTV9ERUJVR19L
TVMoIltDT05ORUNUT1I6JWQ6JXNdIHN0YXR1cyB1cGRhdGVkIGZyb20gJXMgdG8gJXMoY2hhbmdl
IGNvdW50ZXIgJWxsdSlcbiIsCiAJCSAgICAgIGNvbm5lY3Rvci0+YmFzZS5iYXNlLmlkLAoKdG90
YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAzIGNoZWNrcywgOTkgbGluZXMgY2hlY2tlZAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
