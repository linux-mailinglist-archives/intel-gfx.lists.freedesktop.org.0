Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FB5B353F
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2019 09:12:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 509806E117;
	Mon, 16 Sep 2019 07:11:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBF2E6E117;
 Mon, 16 Sep 2019 07:11:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Sep 2019 00:11:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,510,1559545200"; d="scan'208";a="337565192"
Received: from helsinki.fi.intel.com ([10.237.66.162])
 by orsmga004.jf.intel.com with ESMTP; 16 Sep 2019 00:11:54 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Sep 2019 10:11:43 +0300
Message-Id: <20190916071150.9309-1-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 0/7] drm/i915/dp: Support for DP HDR outputs
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
Cc: dri-devel@lists.freedesktop.org, imirkin@alum.mit.edu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U3VwcG9ydCBmb3IgSERSMTAgdmlkZW8gd2FzIGludHJvZHVjZWQgaW4gRGlzcGxheVBvcnQgMS40
LgpPbiBHTEsrIHBsYXRmb3JtLCBpbiBvcmRlciB0byB1c2UgRGlzcGxheVBvcnQgSERSMTAsIHdl
IG5lZWQgdG8gc3VwcG9ydApCVC4yMDIwIGNvbG9yaW1ldHJ5IGFuZCBIRFIgU3RhdGljIG1ldGFk
YXRhLgpJdCBpbXBsZW1lbnRzIHRoZSBDVEEtODYxLUcgc3RhbmRhcmQgZm9yIHRyYW5zcG9ydCBv
ZiBzdGF0aWMgSERSIG1ldGFkYXRhLgpJdCBlbmFibGVzIHdyaXRpbmcgb2YgSERSIG1ldGFkYXRh
IGluZm9mcmFtZSBTRFAgdG8gdGhlIHBhbmVsLgpUaGUgSERSIE1ldGFkYXRhIHdpbGwgYmUgcHJv
dmlkZWQgYnkgdXNlcnNwYWNlIGNvbXBvc2l0b3JzLCBiYXNlZCBvbgpibGVuZGluZyBwb2xpY2ll
cyBhbmQgcGFzc2VkIHRvIHRoZSBkcml2ZXIgdGhyb3VnaCBhIGJsb2IgcHJvcGVydHkuCkFuZCBJ
dCByZWZhY3RvcnMsIHJlbmFtZXMgYW5kIGV4dGVuZHMgYSBmdW5jdGlvbiB3aGljaCBoYW5kbGVk
IHZzYyBzZHAKaGVhZGVyIGFuZCBkYXRhIGJsb2NrIHNldHVwIGZvciBzdXBwb3J0aW5nIGNvbG9y
aW1ldHJ5IGZvcm1hdC4KQW5kIEl0IGF0dGFjaGVzIHRoZSBjb2xvcnNwYWNlIGNvbm5lY3RvciBw
cm9wZXJ0eSBhbmQgSERSIG1ldGFkYXRhIHByb3BlcnR5CnRvIGEgRGlzcGxheVBvcnQgY29ubmVj
dG9yLgoKVGhlc2UgcGF0Y2hlcyB0ZXN0ZWQgb24gYmVsb3cgdGVzdCBlbnZpcm9ubWVudC4KVGVz
dCBFbnZpcm9ubWVudDoKIC0gVGVzdGVkIFN5c3RlbTogR0xLIGFuZCBHZW4xMSBwbGF0Zm9ybS4K
IC0gTW9uaXRvcjogRGVsbCBVUDI3MThRIDRLIEhEUiBNb25pdG9yLgogLSBJbiBvcmRlciB0byB0
ZXN0IERQIEhEUjEwLCB0ZXN0IGVudmlyb25tZW50IHVzZXMgcGF0Y2hlZCBLb2RpLWdibSwKICAg
cGF0Y2hlZCBNZWRpYSBkcml2ZXIgYW5kIEhEUjEwIHZpZGVvLgoKICAgWW91IGNhbiBmaW5kIHRo
ZXNlIG9uIGJlbG93LgogICBbcGF0Y2hlZCBLb2RpLWdibV0KICAgIC0gcmVwbzogaHR0cHM6Ly9n
aXRodWIuY29tL0t3aWJvby94Ym1jL3RyZWUvZHJtcHJpbWUtaGRyIAogICBbZG93bmxvYWQgNEsg
SERSIHZpZGVvIGZpbGVdCiAgICAtIGxpbms6IGh0dHBzOi8vNGttZWRpYS5vcmcvbGctbmV3LXlv
cmstaGRyLXVoZC00ay1kZW1vLwogICBbTWVkaWEgRHJpdmVyIGZvciBHTEtdCiAgICAtIHJlcG8g
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2VtZXJzaW9uL2ludGVsLXZhYXBpLWRyaXZl
cgogIAkgIG1hc3RlciBicmFuY2gKICAgW01lZGlhIERyaXZlciBmb3IgSUNMXQogICAgLSByZXBv
OiBodHRwczovL2dpdGh1Yi5jb20vaGFyaXNoa3J1cG8vbWVkaWEtZHJpdmVyL3RyZWUvcDAxMF9j
b21wb3NpdGUKCnYyOgogLSBBZGQgYSBtaXNzZWQgYmxhbmsgbGluZSBhZnRlciBmdW5jdGlvbiBk
ZWNsYXJhdGlvbi4KIC0gUmVtb3ZlIHVzZWxlc3MgcGFyZW50aGVzZXMuCiAtIE1pbm9yIHN0eWxl
IGZpeC4KCnYzOgogLSBSZW1vdmUgbm90IGhhbmRsZWQgcmV0dXJuIHZhbHVlcyBmcm9tCiAgIGlu
dGVsX2RwX3NldHVwX2hkcl9tZXRhZGF0YV9pbmZvZnJhbWVfc2RwKCkuIFtVbWFdCiAtIEFkZCBo
YW5kbGluZyBvZiBkaWZmZXJlbnQgcmVnaXN0ZXIgc2l6ZSBmb3IKICAgSERNSV9QQUNLRVRfVFlQ
RV9HQU1VVF9NRVRBREFUQSBvbiBoc3dfZGlwX2RhdGFfc2l6ZSgpIGZvciBlYWNoIEdFTgogICBw
bGF0Zm9ybXMgW1VtYV0KIC0gQWRkIG5ldyBjb2xvcmltZXRyeSBvcHRpb25zIGZvciBEUCAxLjRh
IHNwZWMuIFtWaWxsZV0KIC0gU2VwYXJhdGUgc2V0IG9mIGNvbG9yaW1ldHJ5IGVudW0gdmFsdWVz
IGZvciBEUC4gW1ZpbGxlXQogLSBJbiBvcmRlciB0byBjaGVja2luZyBvdXRwdXQgZm9ybWF0IGFu
ZCBvdXRwdXQgY29sb3JzcGFjZSBvbgogICBpbnRlbF9kcF9uZWVkc192c2Nfc2RwKCksIGl0IHBh
c3NlcyBlbnRpcmUgaW50ZWxfY3J0Y19zdGF0ZSBzdHVjdHVyZS5bVmlsbGVdCiAtIFJlbW92ZSBh
IHBvaW50bGVzcyB2YXJpYWJsZS4gW1ZpbGxlXQoKdjQ6CiAtIEFkZCBhZGRpdGlvbmFsIGNvbW1l
bnRzIHRvIHN0cnVjdCBkcm1fcHJvcF9lbnVtX2xpc3QuCiAtIFBvbGlzaGluZyBhbiBlbnVtIHN0
cmluZyBvZiBzdHJ1Y3QgZHJtX3Byb3BfZW51bV9saXN0LgoKdjU6CiAtIENoYW5nZSBkZWZpbml0
aW9ucyBvZiBEUk1fTU9ERV9DT0xPUklNRVRSWXMgdG8gZm9sbG93IEhETUkgcHJlZml4IGFuZAog
ICBEUCBhYmJyZXZpYXRpb25zLgogLSBBZGQgbWlzc2VkIHZhcmlhYmxlcyBvbiBkcF9jb2xvcnNw
YWNlcy4KIC0gRml4IHR5cG8uIFtVbWFdCgp2NjoKIC0gQWRkcmVzc2VkIHJldmlldyBjb21tZW50
cyBmcm9tIElsaWEgYW5kIFZpbGxlCiAgIFNwbGl0IGRybV9tb2RlX2NyZWF0ZV9jb2xvcnNwYWNl
X3Byb3BlcnR5KCkgdG8gRFAgYW5kIEhETUkgY29ubmVjdG9yLgogICBCZWNhc3VlIGJldHdlZW4g
SERNSSBhbmQgRFAgaGF2ZSBkaWZmZXJlbnQgY29sb3JzcGFjZXMsIGl0IHJlbmFtZXMKICAgZHJt
X21vZGVfY3JlYXRlX2NvbG9yc3BhY2VfcHJvcGVydHkoKSBmdW5jdGlvbiB0bwogICBkcm1fbW9k
ZV9jcmVhdGVfaGRtaV9jb2xvcnNwYWNlX3Byb3BlcnR5KCkgZnVuY3Rpb24gZm9yIEhETUkgY29u
bmVjdG9yLgogICBBbmQgaXQgYWRkcyBkcm1fbW9kZV9jcmVhdGVfZHBfY29sb3JzcGFjZV9wcm9w
ZXJ0eSgpIGZ1bmN0aW9uIGZvcgogICBjcmVhdGluZyBvZiBEUCBjb2xvcnNwYWNlIHByb3BlcnR5
LgogICBJbiBvcmRlciB0byBhcHBseSBjaGFuZ2VkIGFuZCBhZGRlZCBkcm0gYXBpLCBpOTE1IGRy
aXZlciBoYXMgY2hhbm5nZWQuCgp2NzoKIC0gRml4IHR5cG8gW0phbmkgU2FhcmluZW5dCiAtIEZp
eCB3aGl0ZSBzcGFjZS4KCnY4OgogLSBBZGRyZXNzZWQgcmV2aWV3IGNvbW1lbnRzIGZyb20gVmls
bGUKICAgRHJvcCBjb2xvcmltZXRyaWVzIHdoaWNoIGhhdmUgYW5vdGhlciB3YXkgdG8gZGlzdGlu
Z3Vpc2ggb3Igd2hpY2ggd291bGQKICAgbm90IGJlIHVzZWQuCgpHd2FuLWd5ZW9uZyBNdW4gKDcp
OgogIGRybS9pOTE1L2RwOiBFeHRlbmQgcHJvZ3JhbSBvZiBWU0MgSGVhZGVyIGFuZCBEQiBmb3Ig
Q29sb3JpbWV0cnkKICAgIEZvcm1hdAogIGRybS9pOTE1L2RwOiBBZGQgc3VwcG9ydCBvZiBCVC4y
MDIwIENvbG9yaW1ldHJ5IHRvIERQIE1TQQogIGRybTogQWRkIERpc3BsYXlQb3J0IGNvbG9yc3Bh
Y2UgcHJvcGVydHkKICBkcm0vaTkxNS9kcDogQXR0YWNoIGNvbG9yc3BhY2UgcHJvcGVydHkKICBk
cm0vaTkxNTogQWRkIG5ldyBHTVAgcmVnaXN0ZXIgc2l6ZSBmb3IgR0VOMTEKICBkcm0vaTkxNS9k
cDogUHJvZ3JhbSBhbiBJbmZvZnJhbWUgU0RQIEhlYWRlciBhbmQgREIgZm9yIEhEUiBTdGF0aWMK
ICAgIE1ldGFkYXRhCiAgZHJtL2k5MTUvZHA6IEF0dGFjaCBIRFIgbWV0YWRhdGEgcHJvcGVydHkg
dG8gRFAgY29ubmVjdG9yCgogZHJpdmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3IuYyAgICAgICAg
ICAgICAgIHwgMTAxICsrKysrKystLQogLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nv
bm5lY3Rvci5jICAgIHwgIDIxICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jICAgICAgfCAgMTAgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5oICB8ICAgMiAtCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmggICAgfCAgIDMgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
ICAgICAgIHwgMTkzICsrKysrKysrKysrKysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5oICAgICAgIHwgICA3ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfaGRtaS5jICAgICB8ICAxMCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaCAgICAgICAgICAgICAgIHwgICAxICsKIGluY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaCAg
ICAgICAgICAgICAgICAgICB8ICAgNyArLQogMTAgZmlsZXMgY2hhbmdlZCwgMzEzIGluc2VydGlv
bnMoKyksIDQyIGRlbGV0aW9ucygtKQoKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
