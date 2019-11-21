Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CEE7104CC8
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 08:45:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 547566EB4A;
	Thu, 21 Nov 2019 07:45:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3A7576EB43;
 Thu, 21 Nov 2019 07:45:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 32D32A01BB;
 Thu, 21 Nov 2019 07:45:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 21 Nov 2019 07:45:31 -0000
Message-ID: <157432233117.19249.631338171784272014@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191121071044.97798-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191121071044.97798-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/5=5D_Revert_=22drm/i915/gt=3A_Wait?=
 =?utf-8?q?_for_new_requests_in_intel=5Fgt=5Fretire=5Frequests=28=29=22?=
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
UmV2ZXJ0ICJkcm0vaTkxNS9ndDogV2FpdCBmb3IgbmV3IHJlcXVlc3RzIGluIGludGVsX2d0X3Jl
dGlyZV9yZXF1ZXN0cygpIgpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9y
Zy9zZXJpZXMvNjk4MDIvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hl
Y2twYXRjaCBvcmlnaW4vZHJtLXRpcAoyODMxMzBmYzQ4Y2QgUmV2ZXJ0ICJkcm0vaTkxNS9ndDog
V2FpdCBmb3IgbmV3IHJlcXVlc3RzIGluIGludGVsX2d0X3JldGlyZV9yZXF1ZXN0cygpIgotOjIw
OiBFUlJPUjpHSVRfQ09NTUlUX0lEOiBQbGVhc2UgdXNlIGdpdCBjb21taXQgZGVzY3JpcHRpb24g
c3R5bGUgJ2NvbW1pdCA8MTIrIGNoYXJzIG9mIHNoYTE+ICgiPHRpdGxlIGxpbmU+IiknIC0gaWU6
ICdjb21taXQgNzkzNmEyMmRkNDY2ICgiZHJtL2k5MTUvZ3Q6IFdhaXQgZm9yIG5ldyByZXF1ZXN0
cyBpbiBpbnRlbF9ndF9yZXRpcmVfcmVxdWVzdHMoKSIpJwojMjA6IApJbiBwcmFjdGljZSwgdGhl
IGVmZmVjdCBjb21taXQgNzkzNmEyMmRkNDY2IHdhcyB0cnlpbmcgdG8gYWNoaWV2ZSBpcwoKLToy
NzogV0FSTklORzpDT01NSVRfTE9HX0xPTkdfTElORTogUG9zc2libGUgdW53cmFwcGVkIGNvbW1p
dCBkZXNjcmlwdGlvbiAocHJlZmVyIGEgbWF4aW11bSA3NSBjaGFycyBwZXIgbGluZSkKIzI3OiAK
UmVmZXJlbmNlczogMTY4M2QyNGMxNDcwICgiZHJtL2k5MTUvZ3Q6IE1vdmUgbmV3IHRpbWVsaW5l
cyB0byB0aGUgZW5kIG9mIGFjdGl2ZV9saXN0IikKCi06Mjc6IEVSUk9SOkdJVF9DT01NSVRfSUQ6
IFBsZWFzZSB1c2UgZ2l0IGNvbW1pdCBkZXNjcmlwdGlvbiBzdHlsZSAnY29tbWl0IDwxMisgY2hh
cnMgb2Ygc2hhMT4gKCI8dGl0bGUgbGluZT4iKScgLSBpZTogJ2NvbW1pdCAxNjgzZDI0YzE0NzAg
KCJkcm0vaTkxNS9ndDogTW92ZSBuZXcgdGltZWxpbmVzIHRvIHRoZSBlbmQgb2YgYWN0aXZlX2xp
c3QiKScKIzI3OiAKUmVmZXJlbmNlczogMTY4M2QyNGMxNDcwICgiZHJtL2k5MTUvZ3Q6IE1vdmUg
bmV3IHRpbWVsaW5lcyB0byB0aGUgZW5kIG9mIGFjdGl2ZV9saXN0IikKCnRvdGFsOiAyIGVycm9y
cywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDM0IGxpbmVzIGNoZWNrZWQKZjc3NmU1MzQwODNhIGRy
bS9pOTE1OiBTZXJpYWxpc2Ugd2l0aCByZW1vdGUgcmV0aXJlbWVudAozYTRhMDU2MTg1YzUgZHJt
L2k5MTUvc2VsZnRlc3RzOiBGb3JjZSBib25kZWQgc3VibWlzc2lvbiB0byBvdmVybGFwCjE0MWI2
MTUxOWQ0NyBkcm0vaTkxNS9zZWxmdGVzdHM6IEFsd2F5cyBob2xkIGEgcmVmZXJlbmNlIG9uIGEg
d2FpdGVkIHVwb24gcmVxdWVzdAowZWE4Y2U4NjMwZDkgZHJtL2k5MTUvZ3Q6IFNjaGVkdWxlIHJl
cXVlc3QgcmV0aXJlbWVudCB3aGVuIHRpbWVsaW5lIGlkbGVzCi06Mjk6IEVSUk9SOkdJVF9DT01N
SVRfSUQ6IFBsZWFzZSB1c2UgZ2l0IGNvbW1pdCBkZXNjcmlwdGlvbiBzdHlsZSAnY29tbWl0IDwx
MisgY2hhcnMgb2Ygc2hhMT4gKCI8dGl0bGUgbGluZT4iKScgLSBpZTogJ2NvbW1pdCA3ZTM0ZjRl
NGFhZDMgKCJkcm0vaTkxNS9nZW44KzogQWRkIFJDNiBDVFggY29ycnVwdGlvbiBXQSIpJwojMjk6
IApSZWZlcmVuY2VzOiA3ZTM0ZjRlNGFhZDMgKCJkcm0vaTkxNS9nZW44KzogQWRkIFJDNiBDVFgg
Y29ycnVwdGlvbiBXQSIpCgotOjMwOiBFUlJPUjpHSVRfQ09NTUlUX0lEOiBQbGVhc2UgdXNlIGdp
dCBjb21taXQgZGVzY3JpcHRpb24gc3R5bGUgJ2NvbW1pdCA8MTIrIGNoYXJzIG9mIHNoYTE+ICgi
PHRpdGxlIGxpbmU+IiknIC0gaWU6ICdjb21taXQgMjI0OGEyODM4NGZlICgiZHJtL2k5MTUvZ2Vu
OCs6IEFkZCBSQzYgQ1RYIGNvcnJ1cHRpb24gV0EiKScKIzMwOiAKUmVmZXJlbmNlczogMjI0OGEy
ODM4NGZlICgiZHJtL2k5MTUvZ2VuOCs6IEFkZCBSQzYgQ1RYIGNvcnJ1cHRpb24gV0EiKQoKdG90
YWw6IDIgZXJyb3JzLCAwIHdhcm5pbmdzLCAwIGNoZWNrcywgMTkwIGxpbmVzIGNoZWNrZWQKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
