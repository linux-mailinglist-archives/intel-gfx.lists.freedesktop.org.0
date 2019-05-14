Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A69171CED1
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 20:15:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D7C08931D;
	Tue, 14 May 2019 18:15:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A3C2089319;
 Tue, 14 May 2019 18:15:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9C581A00EA;
 Tue, 14 May 2019 18:15:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 14 May 2019 18:15:25 -0000
Message-ID: <20190514181525.20124.42018@emeril.freedesktop.org>
References: <20190514175507.30067-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190514175507.30067-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_drm/i915=3A_Mark_semaphores_as_complete?=
 =?utf-8?q?_on_unsubmit_out_if_payload_was_started_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggZHJtL2k5
MTU6IE1hcmsgc2VtYXBob3JlcyBhcyBjb21wbGV0ZSBvbiB1bnN1Ym1pdCBvdXQgaWYgcGF5bG9h
ZCB3YXMgc3RhcnRlZCAocmV2MikKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3Rv
cC5vcmcvc2VyaWVzLzYwNjQyLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGlt
IGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKYjg5NzgwZWQwYTc1IGRybS9pOTE1OiBNYXJrIHNl
bWFwaG9yZXMgYXMgY29tcGxldGUgb24gdW5zdWJtaXQgb3V0IGlmIHBheWxvYWQgd2FzIHN0YXJ0
ZWQKLToxMjogV0FSTklORzpDT01NSVRfTE9HX0xPTkdfTElORTogUG9zc2libGUgdW53cmFwcGVk
IGNvbW1pdCBkZXNjcmlwdGlvbiAocHJlZmVyIGEgbWF4aW11bSA3NSBjaGFycyBwZXIgbGluZSkK
IzEyOiAKUmVmZXJlbmNlczogY2E2ZTU2ZjY1NGU3ICgiZHJtL2k5MTU6IERpc2FibGUgc2VtYXBo
b3JlIGJ1c3l3YWl0cyBvbiBzYXR1cmF0ZWQgc3lzdGVtcyIpCgotOjEyOiBFUlJPUjpHSVRfQ09N
TUlUX0lEOiBQbGVhc2UgdXNlIGdpdCBjb21taXQgZGVzY3JpcHRpb24gc3R5bGUgJ2NvbW1pdCA8
MTIrIGNoYXJzIG9mIHNoYTE+ICgiPHRpdGxlIGxpbmU+IiknIC0gaWU6ICdjb21taXQgY2E2ZTU2
ZjY1NGU3ICgiZHJtL2k5MTU6IERpc2FibGUgc2VtYXBob3JlIGJ1c3l3YWl0cyBvbiBzYXR1cmF0
ZWQgc3lzdGVtcyIpJwojMTI6IApSZWZlcmVuY2VzOiBjYTZlNTZmNjU0ZTcgKCJkcm0vaTkxNTog
RGlzYWJsZSBzZW1hcGhvcmUgYnVzeXdhaXRzIG9uIHNhdHVyYXRlZCBzeXN0ZW1zIikKCnRvdGFs
OiAxIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDEyIGxpbmVzIGNoZWNrZWQKNTU4OTI0
Yzc3MTQ2IGRybS9pOTE1OiBUcnVseSBidW1wIHJlYWR5IHRhc2tzIGFoZWFkIG9mIGJ1c3l3YWl0
cwphZDM2ZTY4ZmFlNDAgZHJtL2k5MTU6IEJ1bXAgc2lnbmFsZXIgcHJpb3JpdHkgb24gYWRkaW5n
IGEgd2FpdGVyCjBiYmMxZmVlMTllZCBkcm0vaTkxNTogRG93bmdyYWRlIE5FV0NMSUVOVCB0byBu
b24tcHJlZW1wdGl2ZQotOjM3OiBFUlJPUjpHSVRfQ09NTUlUX0lEOiBQbGVhc2UgdXNlIGdpdCBj
b21taXQgZGVzY3JpcHRpb24gc3R5bGUgJ2NvbW1pdCA8MTIrIGNoYXJzIG9mIHNoYTE+ICgiPHRp
dGxlIGxpbmU+IiknIC0gaWU6ICdjb21taXQgYjE2Yzc2NTEyMmY5ICgiZHJtL2k5MTU6IFByaW9y
aXR5IGJvb3N0IGZvciBuZXcgY2xpZW50cyIpJwojMzc6IApSZWZlcmVuY2VzOiBiMTZjNzY1MTIy
ZjkgKCJkcm0vaTkxNTogUHJpb3JpdHkgYm9vc3QgZm9yIG5ldyBjbGllbnRzIikKCnRvdGFsOiAx
IGVycm9ycywgMCB3YXJuaW5ncywgMCBjaGVja3MsIDMzIGxpbmVzIGNoZWNrZWQKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
