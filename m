Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 005D48F3C4
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 20:42:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 297F06EA3A;
	Thu, 15 Aug 2019 18:42:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8448B6EA38;
 Thu, 15 Aug 2019 18:42:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7B37DA0088;
 Thu, 15 Aug 2019 18:42:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 15 Aug 2019 18:42:41 -0000
Message-ID: <20190815184241.31005.303@emeril.freedesktop.org>
References: <20190815181551.28571-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190815181551.28571-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Revert_=22ALSA=3A_hda_-_Drop_unsol_event_handler_for_Intel_H?=
 =?utf-8?q?DMI_codecs=22?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogUmV2ZXJ0ICJBTFNBOiBoZGEgLSBEcm9wIHVu
c29sIGV2ZW50IGhhbmRsZXIgZm9yIEludGVsIEhETUkgY29kZWNzIgpVUkwgICA6IGh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjUyNjcvClN0YXRlIDogd2FybmluZwoK
PT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcApkNGNlZWM2YmMy
MTAgUmV2ZXJ0ICJBTFNBOiBoZGEgLSBEcm9wIHVuc29sIGV2ZW50IGhhbmRsZXIgZm9yIEludGVs
IEhETUkgY29kZWNzIgotOjk6IEVSUk9SOkdJVF9DT01NSVRfSUQ6IFBsZWFzZSB1c2UgZ2l0IGNv
bW1pdCBkZXNjcmlwdGlvbiBzdHlsZSAnY29tbWl0IDwxMisgY2hhcnMgb2Ygc2hhMT4gKCI8dGl0
bGUgbGluZT4iKScgLSBpZTogJ2NvbW1pdCBkZGY3Y2I4M2IwZjQgKCJBTFNBOiBoZGE6IFVuZXhw
b3J0IGEgZmV3IG1vcmUgc3R1ZmYiKScKIzk6IApkZGY3Y2I4M2IwZjQgQUxTQTogaGRhOiBVbmV4
cG9ydCBhIGZldyBtb3JlIHN0dWZmCgotOjEwOiBFUlJPUjpHSVRfQ09NTUlUX0lEOiBQbGVhc2Ug
dXNlIGdpdCBjb21taXQgZGVzY3JpcHRpb24gc3R5bGUgJ2NvbW1pdCA8MTIrIGNoYXJzIG9mIHNo
YTE+ICgiPHRpdGxlIGxpbmU+IiknIC0gaWU6ICdjb21taXQgNTNlZmY3NWU1ZjRkICgiQUxTQTog
aGRhOiBEcm9wIGV4cG9ydCBvZiBzbmRfaGRhY19idXNfYWRkL3JlbW92ZV9kZXZpY2UoKSIpJwoj
MTA6IAo1M2VmZjc1ZTVmNGQgQUxTQTogaGRhOiBEcm9wIGV4cG9ydCBvZiBzbmRfaGRhY19idXNf
YWRkL3JlbW92ZV9kZXZpY2UoKQoKLToxMTogRVJST1I6R0lUX0NPTU1JVF9JRDogUGxlYXNlIHVz
ZSBnaXQgY29tbWl0IGRlc2NyaXB0aW9uIHN0eWxlICdjb21taXQgPDEyKyBjaGFycyBvZiBzaGEx
PiAoIjx0aXRsZSBsaW5lPiIpJyAtIGllOiAnY29tbWl0IGVlNWY4NWQ5MjkwZiAoIkFMU0E6IGhk
YTogQWRkIGNvZGVjIG9uIGJ1cyBhZGRyZXNzIHRhYmxlIGxhdGVseSIpJwojMTE6IAplZTVmODVk
OTI5MGYgQUxTQTogaGRhOiBBZGQgY29kZWMgb24gYnVzIGFkZHJlc3MgdGFibGUgbGF0ZWx5Cgot
OjEyOiBFUlJPUjpHSVRfQ09NTUlUX0lEOiBQbGVhc2UgdXNlIGdpdCBjb21taXQgZGVzY3JpcHRp
b24gc3R5bGUgJ2NvbW1pdCA8MTIrIGNoYXJzIG9mIHNoYTE+ICgiPHRpdGxlIGxpbmU+IiknIC0g
aWU6ICdjb21taXQgZjJkYmU4N2M1YWMxICgiQUxTQTogaGRhIC0gRHJvcCB1bnNvbCBldmVudCBo
YW5kbGVyIGZvciBJbnRlbCBIRE1JIGNvZGVjcyIpJwojMTI6IApmMmRiZTg3YzVhYzEgQUxTQTog
aGRhIC0gRHJvcCB1bnNvbCBldmVudCBoYW5kbGVyIGZvciBJbnRlbCBIRE1JIGNvZGVjcwoKLTox
NjogV0FSTklORzpDT01NSVRfTE9HX0xPTkdfTElORTogUG9zc2libGUgdW53cmFwcGVkIGNvbW1p
dCBkZXNjcmlwdGlvbiAocHJlZmVyIGEgbWF4aW11bSA3NSBjaGFycyBwZXIgbGluZSkKIzE2OiAK
PDE+IFsyODEuOTEyNjg0XSBCVUc6IGtlcm5lbCBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2UsIGFk
ZHJlc3M6IDAwMDAwMDAwMDAwMDAwMDAKCi06ODM6IEVSUk9SOk1JU1NJTkdfU0lHTl9PRkY6IE1p
c3NpbmcgU2lnbmVkLW9mZi1ieTogbGluZShzKQoKdG90YWw6IDUgZXJyb3JzLCAxIHdhcm5pbmdz
LCAwIGNoZWNrcywgMjEgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
