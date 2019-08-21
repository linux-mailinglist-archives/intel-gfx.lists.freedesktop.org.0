Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE5B97D54
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 16:42:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FBA96E3F9;
	Wed, 21 Aug 2019 14:41:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A1A916E3F9;
 Wed, 21 Aug 2019 14:41:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6E476A0096;
 Wed, 21 Aug 2019 14:41:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 21 Aug 2019 14:41:57 -0000
Message-ID: <20190821144157.4278.75521@emeril.freedesktop.org>
References: <20190821133221.29456-1-maarten.lankhorst@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190821133221.29456-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Bigjoiner_preparations=2E?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEJpZ2pvaW5lciBwcmVwYXJh
dGlvbnMuClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82
NTU0My8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9y
aWdpbi9kcm0tdGlwCmJiOTY3NDk0MzkyMiBkcm0vaTkxNS9kcDogRml4IGRzYyBicHAgY2FsY3Vs
YXRpb25zLgowZTJkNDA1ZjdiYmYgZHJtL2k5MTU6IFByZXBhcmUgdG8gc3BsaXQgY3J0YyBzdGF0
ZSBpbiB1YXBpIGFuZCBodyBzdGF0ZQotOjExOiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9OR19MSU5F
OiBQb3NzaWJsZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0aW9uIChwcmVmZXIgYSBtYXhpbXVt
IDc1IGNoYXJzIHBlciBsaW5lKQojMTE6IAotIGNydGMsICpfY2hhbmdlZCBmbGFncywgZXZlbnQs
IGNvbW1pdCwgc3RhdGUsIG1vZGVfYmxvYiwgKHBsYW5lL2Nvbm5lY3Rvci9lbmNvZGVyKV9tYXNr
LgoKLToxOTc2OiBDSEVDSzpNVUxUSVBMRV9BU1NJR05NRU5UUzogbXVsdGlwbGUgYXNzaWdubWVu
dHMgc2hvdWxkIGJlIGF2b2lkZWQKIzE5NzY6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jOjExMTcxOgorCWNydGNfc3RhdGUtPnVhcGkuYWN0aXZlID0g
Y3J0Y19zdGF0ZS0+dWFwaS5lbmFibGUgPSB0cnVlOwoKLToyNjQ2OiBDSEVDSzpNVUxUSVBMRV9B
U1NJR05NRU5UUzogbXVsdGlwbGUgYXNzaWdubWVudHMgc2hvdWxkIGJlIGF2b2lkZWQKIzI2NDY6
IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jOjE2NjU4
OgorCQljcnRjX3N0YXRlLT5ody5hY3RpdmUgPSBjcnRjX3N0YXRlLT5ody5lbmFibGUgPQoKLToz
Nzk4OiBFUlJPUjpDT0RFX0lOREVOVDogY29kZSBpbmRlbnQgc2hvdWxkIHVzZSB0YWJzIHdoZXJl
IHBvc3NpYmxlCiMzNzk4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Nwcml0ZS5jOjIyNDoKK15JXkleSV5JICAgICAgICAgIG5ld19jcnRjX3N0YXRlLT51YXBpLmV2
ZW50KTskCgotOjM3OTg6IENIRUNLOlBBUkVOVEhFU0lTX0FMSUdOTUVOVDogQWxpZ25tZW50IHNo
b3VsZCBtYXRjaCBvcGVuIHBhcmVudGhlc2lzCiMzNzk4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jOjIyNDoKKwkJZHJtX2NydGNfYXJtX3ZibGFua19l
dmVudCgmY3J0Yy0+YmFzZSwKKwkJCQkgICAgICAgICAgbmV3X2NydGNfc3RhdGUtPnVhcGkuZXZl
bnQpOwoKdG90YWw6IDEgZXJyb3JzLCAxIHdhcm5pbmdzLCAzIGNoZWNrcywgNDE5NCBsaW5lcyBj
aGVja2VkCjE1MzIxZjg2YzJiMyBkcm0vaTkxNTogSGFuZGxlIGEgZmV3IG1vcmUgY2FzZXMgZm9y
IGh3L3N3IHNwbGl0CjRjNGFkMGZlYWRmMiBkcm0vaTkxNTogQ29tcGxldGUgc3cvaHcgc3BsaXQK
OGJjOWMwYjJlMGEwIGRybS9pOTE1OiBLaWxsIG9mZiBpc19wbGFuYXJfeXV2X2Zvcm1hdAo3ODJk
NWY0ZTE5Y2MgZHJtL2k5MTU6IEdldCByaWQgb2YgY3J0Y19zdGF0ZS0+ZmJfY2hhbmdlZAoyYzRm
MDhmY2Y1ZWUgZHJtL2k5MTU6IFJlbW92ZSBiZWdpbi9maW5pc2hfY3J0Y19jb21taXQuCmJiNmVj
MTUzYzc3YyBkcm0vaTkxNTogRG8gbm90IGFkZCBhbGwgcGxhbmVzIHdoZW4gY2hlY2tpbmcgc2Nh
bGVycyBvbiBnbGsrCmMzZTA2NzQ2MTQ1MyBkcm0vaTkxNTogQWRkIGRlYnVnZnMgZW50cmllcyBm
b3IgcmVhZGluZyBvdXQgRFBDRCBEU0MgYW5kIEZFQy4KMWY1MWU4NTM2ZWY5IGRybS9pOTE1OiBN
b3ZlIEZFQyBlbmFibGUgdGltZW91dCB3YWl0IHRvIGVuYWJsZV9kZGlfZHAKLTo2OiBXQVJOSU5H
OkNPTU1JVF9MT0dfTE9OR19MSU5FOiBQb3NzaWJsZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0
aW9uIChwcmVmZXIgYSBtYXhpbXVtIDc1IGNoYXJzIHBlciBsaW5lKQojNjogCkV2ZW4gd2l0aG91
dCBiaWdqb2luZXIgSSBnZXQgYSB0aW1lb3V0IHdoZW4gZW5hYmxpbmcgRkVDLCB0aGUgbGVuZ3Ro
IG9mIHRoZSB0aW1lb3V0Cgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAy
MSBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
