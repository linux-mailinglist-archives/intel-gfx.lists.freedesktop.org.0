Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 407E210454D
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 21:40:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E5686E7BE;
	Wed, 20 Nov 2019 20:40:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E6406E7BD;
 Wed, 20 Nov 2019 20:40:44 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 12:40:41 -0800
X-IronPort-AV: E=Sophos;i="5.69,223,1571727600"; d="scan'208";a="200864404"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.251.82.140])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 12:40:37 -0800
Date: Wed, 20 Nov 2019 22:40:35 +0200
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20191120204035.GA14908@jlahtine-desk.ger.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: [Intel-gfx] [PULL] drm-intel-next-fixes
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
Cc: dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgRGF2ZSAmIERhbmllbCwKCk5PVEU6IENJIHNoYXJkIHJlc3VsdHMgYXJlIGRlbGF5ZWQsIGJ1
IEknbSBzZW5kaW5nIHRoaXMKYWxyZWFkeSBiZWNhdXNlIEknbGwgdHJhdmVsIHRvbW9ycm93LiBJ
J2xsIGxldCB5b3Uga25vdwppZiB0aGUgcmVzdWx0cyBsb29rIE9LIG9yIG5vdC4gT3IgeW91IGNh
biBsb29rIHVwCkNJX0RJTkZfMTYyIHJlc3VsdHMgY2hlY2sgYXQ6CgpodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0taW50ZWwtbmV4dC1maXhlcy9jb21iaW5lZC1hbHQuaHRtbAoK
VGhpcyB3YXMgcmViYXNlZCBvbiB0b3Agb2YgZHJtLW5leHQgdG8gYXZvaWQgY29uZmxpY3RzIHdp
dGggdGhlIHNlY3VyaXR5CmZpeGVzLgoKV2UgaGF2ZSBtdWx0aXBsZSB1c2VyIHJlcG9ydGVkIEJ1
Z3ppbGxhcyBjbG9zZWQsIGJyb2tlbiBwbHltb3V0aApzcGxhc2gsIFJDNiBsb3N0IHdoZW4gZW5h
YmxpbmcgSHVDIGFuZCBvbmUgZG1lc2cgc3BsYXQuCgpPQS9wZXJmIGNvaGVyZW5jeSBmaXgsIGEg
R1ZUIGRtZXNnIHNwbGF0IGFuZCB0aGVuIENJIGZvdW5kIGNvcm5lcgpjYXNlIGZpeGVzLgoKUmVn
YXJkcywgSm9vbmFzCgoqKioKCmRybS1pbnRlbC1uZXh0LWZpeGVzLTIwMTktMTEtMjA6CgotIElu
Y2x1ZGVzIGd2dC1uZXh0LWZpeGVzLTIwMTktMTEtMTIKLSBGaXggQnVnemlsbGEgIzExMjA1MTog
Rml4IGRldGVjdGlvbiBmb3IgYSBDTVAtViBQQ0gKLSBGaXggQnVnemlsbGEgIzExMjI1NjogQ29y
cnVwdGVkIHBhZ2UgdGFibGUgYXQgYWRkcmVzcyBvbiBwbHltb3V0aCBzcGxhc2gKLSBGaXggQnVn
emlsbGEgIzExMTU5NDogQXZvaWQgbG9zaW5nIFJDNiB3aGVuIEh1QyBhdXRoZW50aWNhdGlvbiBp
cyB1c2VkCi0gRml4IGZvciBPQS9wZXJmIG1ldHJpYyBjb2hlcmVuY3ksIHJlc3RvcmUgR1QgY29h
cnNlIHBvd2VyIGdhdGluZyB3b3JrYXJvdW5kCi0gQXZvaWQgYXRvbWljIGNvbnRleHQgb24gZXJy
b3IgY2FwdHVyZQotIEF2b2lkIE1TVCBiaXRtYXNrIG92ZXJmbG93aW5nIHRvIEVEUC9EUEkgaW5w
dXQgc2VsZWN0Ci0gRml4ZXMgdG8gQ0kgZm91bmQgZG1lc2cgc3BsYXRzCgpUaGUgZm9sbG93aW5n
IGNoYW5nZXMgc2luY2UgY29tbWl0IDE3Y2M1MTM5MGMxNDE2NjI3NDhkYmJjMmZlOThmM2VkMTBm
MmUxM2U6CgogIE1lcmdlIGJyYW5jaCAndm13Z2Z4LW5leHQnIG9mIGdpdDovL3Blb3BsZS5mcmVl
ZGVza3RvcC5vcmcvfnRob21hc2gvbGludXggaW50byBkcm0tbmV4dCAoMjAxOS0xMS0xNSAxMjoz
NDo0NSArMTAwMCkKCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0OgoKICBn
aXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0vZHJtLWludGVsIHRhZ3MvZHJtLWludGVs
LW5leHQtZml4ZXMtMjAxOS0xMS0yMAoKZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIDAx
MjJiYWFhOTNjYzY4MWZhYWNlMDY0ZWMyNWQxNmJiNWM5ODI1YWI6CgogIE1lcmdlIHRhZyAnZ3Z0
LW5leHQtZml4ZXMtMjAxOS0xMS0xMicgb2YgaHR0cHM6Ly9naXRodWIuY29tL2ludGVsL2d2dC1s
aW51eCBpbnRvIGRybS1pbnRlbC1uZXh0LWZpeGVzICgyMDE5LTExLTIwIDEzOjIxOjM4ICswMjAw
KQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQotIEluY2x1ZGVzIGd2dC1uZXh0LWZpeGVzLTIwMTktMTEtMTIKLSBGaXggQnVn
emlsbGEgIzExMjI1NjogQ29ycnVwdGVkIHBhZ2UgdGFibGUgYXQgYWRkcmVzcyBvbiBwbHltb3V0
aCBzcGxhc2gKLSBGaXggQnVnemlsbGEgIzExMTU5NDogQXZvaWQgbG9zaW5nIFJDNiB3aGVuIEh1
QyBhdXRoZW50aWNhdGlvbiBpcyB1c2VkCi0gRml4IEJ1Z3ppbGxhICMxMTIwNTE6IEZpeCBkZXRl
Y3Rpb24gZm9yIGEgQ01QLVYgUENICi0gRml4IGZvciBPQS9wZXJmIG1ldHJpYyBjb2hlcmVuY3ks
IHJlc3RvcmUgR1QgY29hcnNlIHBvd2VyIGdhdGluZyB3b3JrYXJvdW5kCi0gQXZvaWQgYXRvbWlj
IGNvbnRleHQgb24gZXJyb3IgY2FwdHVyZQotIEF2b2lkIE1TVCBiaXRtYXNrIG92ZXJmbG93aW5n
IHRvIEVEUC9EUEkgaW5wdXQgc2VsZWN0Ci0gRml4ZXMgdG8gQ0kgZm91bmQgZG1lc2cgc3BsYXRz
CgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCkJydWNlIENoYW5nICgxKToKICAgICAgZHJtL2k5MTU6IEF2b2lkIGF0b21pYyBj
b250ZXh0IGZvciBlcnJvciBjYXB0dXJlCgpDaHJpcyBXaWxzb24gKDQpOgogICAgICBkcm0vaTkx
NTogRmx1c2ggY29udGV4dCBmcmVlIHdvcmsgb24gY2xlYW51cAogICAgICBkcm0vaTkxNS9mYmRl
djogUmVzdG9yZSBwaHlzaWNhbCBhZGRyZXNzZXMgZm9yIGZiX21tYXAoKQogICAgICBkcm0vaTkx
NS9ndDogV2FpdCBmb3IgbmV3IHJlcXVlc3RzIGluIGludGVsX2d0X3JldGlyZV9yZXF1ZXN0cygp
CiAgICAgIGRybS9pOTE1OiBTcGxpdCBpOTE1X2FjdGl2ZS5tdXRleCBpbnRvIGFuIGlycS1zYWZl
IHNwaW5sb2NrIGZvciB0aGUgcmJ0cmVlCgpEb24gSGlhdHQgKDEpOgogICAgICBkcm0vaTkxNS9n
dWM6IFNraXAgc3VzcGVuZC9yZXN1bWUgR3VDIGFjdGlvbiBvbiBwbGF0Zm9ybXMgdy9vIEd1QyBz
dWJtaXNzaW9uCgpJbXJlIERlYWsgKDIpOgogICAgICBkcm0vaTkxNTogRml4IGRldGVjdGlvbiBm
b3IgYSBDTVAtViBQQ0gKICAgICAgZHJtL2k5MTU6IFJlc3RvcmUgR1QgY29hcnNlIHBvd2VyIGdh
dGluZyB3b3JrYXJvdW5kCgpKYW5pIE5pa3VsYSAoMSk6CiAgICAgIGRybS9pOTE1OiBmaXggYWNj
aWRlbnRhbCBzdGF0aWMgdmFyaWFibGUgdXNlCgpKb29uYXMgTGFodGluZW4gKDEpOgogICAgICBN
ZXJnZSB0YWcgJ2d2dC1uZXh0LWZpeGVzLTIwMTktMTEtMTInIG9mIGh0dHBzOi8vZ2l0aHViLmNv
bS9pbnRlbC9ndnQtbGludXggaW50byBkcm0taW50ZWwtbmV4dC1maXhlcwoKSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSAoMSk6CiAgICAgIGRybS9pOTE1L2Rpc3BsYXk6IEZpeCBUUkFOU19ERElfTVNU
X1RSQU5TUE9SVF9TRUxFQ1QgZGVmaW5pdGlvbgoKTGlvbmVsIExhbmR3ZXJsaW4gKDEpOgogICAg
ICBkcm0vaTkxNS9wZXJmOiBkb24ndCBmb3JnZXQgbm9hIHdhaXQgYWZ0ZXIgb2EgY29uZmlnCgpU
aW5hIFpoYW5nICgxKToKICAgICAgZHJtL2k5MTUvZ3Z0OiBTdG9wIGluaXRpYWxpemluZyBwdmlu
Zm8gdGhyb3VnaCByZWFkaW5nIG1taW8KCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2ZiZGV2LmMgIHwgIDkgKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfc3ByaXRlLmMgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2Nv
bnRleHQuYyB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3JlcXVlc3Rz
LmMgfCAxMSArKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JjNi5jICAgICAg
ICAgfCAgOSArKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMgICAg
ICB8IDE1ICsrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvaGFuZGxlcnMuYyAgICAg
ICAgIHwgIDQgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMgICAgICAgICAg
fCA1NyArKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9hY3RpdmVfdHlwZXMuaCAgICB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmggICAgICAgICAgICAgfCAgNiArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1
X2Vycm9yLmMgICAgICAgfCAgOCArKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYu
YyAgICAgICAgICAgIHwgIDkgKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgg
ICAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMgICAg
ICAgICAgICB8ICA2ICsrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmggICAgICAg
ICAgICB8ICAyICstCiAxNSBmaWxlcyBjaGFuZ2VkLCA4OSBpbnNlcnRpb25zKCspLCA1MyBkZWxl
dGlvbnMoLSkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
