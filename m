Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4F0342A96
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Mar 2021 05:43:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 413836EB2B;
	Sat, 20 Mar 2021 04:42:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B6AF6EB33
 for <intel-gfx@lists.freedesktop.org>; Sat, 20 Mar 2021 04:42:57 +0000 (UTC)
IronPort-SDR: JOztrLepeGzVp2xO4mL04MCbEeDmkUqqwW8nObd0nS81HL1Qhk7CIY1gWu3JQ83PvhNUxU3SRk
 x+M5BgUqr6RQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9928"; a="275080365"
X-IronPort-AV: E=Sophos;i="5.81,263,1610438400"; d="scan'208";a="275080365"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 21:42:56 -0700
IronPort-SDR: gVv0XYyfL1Qkbmr2HIvcZDfE/X4MQ+ksLbhWPIHBtBup+iqAQZN22Xl3g7p/0WPQafj662oF+u
 CZYgeQaNowVQ==
X-IronPort-AV: E=Sophos;i="5.81,263,1610438400"; d="scan'208";a="440326966"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 21:42:56 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Mar 2021 21:42:45 -0700
Message-Id: <20210320044245.3920043-7-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210320044245.3920043-1-matthew.d.roper@intel.com>
References: <20210320044245.3920043-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/display: Simplify GLK display
 version tests
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

R0xLIGhhcyBhbHdheXMgYmVlbiBhIGJpdCBvZiBhIHNwZWNpYWwgY2FzZSBzaW5jZSBpdCByZXBv
cnRzIElOVEVMX0dFTigpCmFzIDksIGJ1dCBoYXMgdmVyc2lvbiAxMCBkaXNwbGF5IElQLiAgTm93
IHdlIGNhbiBwcm9wZXJseSByZXByZXNlbnQgdGhlCmRpc3BsYXkgdmVyc2lvbiBhcyAxMCBhbmQg
c2ltcGxpZnkgdGhlIGRpc3BsYXkgZ2VuZXJhdGlvbiB0ZXN0cwp0aHJvdWdob3V0IHRoZSBkaXNw
bGF5IGNvZGUuCgpBc2lkZSBmcm9tIG1hbnVhbGx5IGFkZGluZyB0aGUgdmVyc2lvbiB0byB0aGUg
Z2xrX2luZm8gc3RydWN0dXJlLCB0aGUKcmVzdCBvZiB0aGlzIHBhdGNoIGlzIGdlbmVyYXRlZCB3
aXRoIGEgQ29jY2luZWxsZSBzZW1hbnRpYyBwYXRjaC4gIE5vdGUKdGhhdCB3ZSBhbHNvIG5lZWQg
dG8gc3dpdGNoIGFueSBjb2RlIHRoYXQgbWF0Y2hlcyBnZW4xMCB0b2RheSBidXQgKm5vdCoKR0xL
IHRvIGJlIENOTC1zcGVjaWZpYzoKCiAgICAgICAgLy8KICAgICAgICAvLyBGaXJzdCBjb252ZXJ0
IGdlbjEwICsgZ2xrIHRvIG5ldyBwbGFjZWhvbGRlcnMKICAgICAgICAvLwogICAgICAgIEBAIGV4
cHJlc3Npb24gZGV2X3ByaXYsIEU7IEBACiAgICAgICAgKAogICAgICAgIC0gRElTUExBWV9WRVIo
ZGV2X3ByaXYpID49IDEwIHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpCiAgICAgICAgKyBHVEVf
RDEwKGRldl9wcml2KQogICAgICAgIHwKICAgICAgICAtIEUgfHwgRElTUExBWV9WRVIoZGV2X3By
aXYpID49IDEwIHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpCiAgICAgICAgKyBFIHx8IEdURV9E
MTAoZGV2X3ByaXYpCiAgICAgICAgfAogICAgICAgIC0gKElTX0dFTUlOSUxBS0UoZGV2X3ByaXYp
IHx8IERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMCkKICAgICAgICArIEdURV9EMTAoZGV2X3By
aXYpCiAgICAgICAgfAogICAgICAgIC0gKEUgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikgfHwg
RElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEwKQogICAgICAgICsgRSB8fCBHVEVfRDEwKGRldl9w
cml2KQogICAgICAgIHwKICAgICAgICAtIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPiA5IHx8IElT
X0dFTUlOSUxBS0UoZGV2X3ByaXYpKQogICAgICAgICsgR1RFX0QxMChkZXZfcHJpdikKICAgICAg
ICB8CiAgICAgICAgLSAoSVNfR0VNSU5JTEFLRShkZXZfcHJpdikgfHwgRElTUExBWV9WRVIoZGV2
X3ByaXYpID4gOSkKICAgICAgICArIEdURV9EMTAoZGV2X3ByaXYpCiAgICAgICAgKQoKICAgICAg
ICBAQCBleHByZXNzaW9uIGRldl9wcml2OyBAQAogICAgICAgICgKICAgICAgICAtIChJU19ESVNQ
TEFZX1ZFUihkZXZfcHJpdiwgMTApIHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKQogICAgICAg
ICsgRVFfRDEwKGRldl9wcml2KQogICAgICAgIHwKICAgICAgICAtIChJU19HRU1JTklMQUtFKGRl
dl9wcml2KSB8fCBJU19ESVNQTEFZX1ZFUihkZXZfcHJpdiwgMTApKQogICAgICAgICsgRVFfRDEw
KGRldl9wcml2KQogICAgICAgIHwKICAgICAgICAtIChJU19HRU1JTklMQUtFKGRldl9wcml2KSB8
fCBJU19DQU5OT05MQUtFKGRldl9wcml2KSkKICAgICAgICArIEVRX0QxMChkZXZfcHJpdikKICAg
ICAgICB8CiAgICAgICAgLSAoSVNfQ0FOTk9OTEFLRShkZXZfcHJpdikgfHwgSVNfR0VNSU5JTEFL
RShkZXZfcHJpdikpCiAgICAgICAgKyBFUV9EMTAoZGV2X3ByaXYpCiAgICAgICAgKQoKICAgICAg
ICBAQCBleHByZXNzaW9uIGRldl9wcml2LCBFOyBAQAogICAgICAgICgKICAgICAgICAtIChJU19E
SVNQTEFZX1JBTkdFKGRldl9wcml2LCAxMCwgRSkgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikp
CiAgICAgICAgKyBSQU5HRV9HVEVfRDEwKGRldl9wcml2LCBFKQogICAgICAgIHwKICAgICAgICAt
IChJU19HRU1JTklMQUtFKGRldl9wcml2KSB8fCBJU19ESVNQTEFZX1JBTkdFKGRldl9wcml2LCAx
MCwgRSkpCiAgICAgICAgKyBSQU5HRV9HVEVfRDEwKGRldl9wcml2LCBFKQogICAgICAgIHwKICAg
ICAgICAtIChJU19ESVNQTEFZX1JBTkdFKGRldl9wcml2LCBFLCAxMCkgfHwgSVNfR0VNSU5JTEFL
RShkZXZfcHJpdikpCiAgICAgICAgKyBSQU5HRV9MVEVfRDEwKGRldl9wcml2LCBFKQogICAgICAg
IHwKICAgICAgICAtIChJU19HRU1JTklMQUtFKGRldl9wcml2KSB8fCBJU19ESVNQTEFZX1JBTkdF
KGRldl9wcml2LCBFLCAxMCkpCiAgICAgICAgKyBSQU5HRV9MVEVfRDEwKGRldl9wcml2LCBFKQog
ICAgICAgICkKCiAgICAgICAgQEAgZXhwcmVzc2lvbiBkZXZfcHJpdjsgQEAKICAgICAgICAtIChE
SVNQTEFZX1ZFUihkZXZfcHJpdikgPCAxMCAmJiAhSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpCiAg
ICAgICAgKyBMVF9EMTAoZGV2X3ByaXYpCgogICAgICAgIEBAIGV4cHJlc3Npb24gZGV2X3ByaXY7
IEBACiAgICAgICAgLSAoSVNfRElTUExBWV9WRVIoZGV2X3ByaXYsIDkpKSAmJiAhSVNfR0VNSU5J
TEFLRShkZXZfcHJpdikKICAgICAgICArIEVRX0Q5KGRldl9wcml2KQoKICAgICAgICAvLwogICAg
ICAgIC8vIFJlcGxhY2UgcmVtYWluaW5nIGdlbjEwIHdpdGggY25sCiAgICAgICAgLy8KICAgICAg
ICBAQCBleHByZXNzaW9uIGRldl9wcml2OyBAQAogICAgICAgIC0gSVNfRElTUExBWV9WRVIoZGV2
X3ByaXYsIDEwKQogICAgICAgICsgSVNfQ0FOTk9OTEFLRShkZXZfcHJpdikKCiAgICAgICAgLy8K
ICAgICAgICAvLyBOb3cgcmVwbGFjZSB0aGUgcGxhY2Vob2xkZXJzCiAgICAgICAgLy8KICAgICAg
ICBAQCBleHByZXNzaW9uIGRldl9wcml2LCBFOyBAQAogICAgICAgICgKICAgICAgICAtIEdURV9E
MTAoZGV2X3ByaXYpCiAgICAgICAgKyBESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTAKICAgICAg
ICB8CiAgICAgICAgLSBFUV9EMTAoZGV2X3ByaXYpCiAgICAgICAgKyBJU19ESVNQTEFZX1ZFUihk
ZXZfcHJpdiwgMTApCiAgICAgICAgfAogICAgICAgIC0gUkFOR0VfR1RFX0QxMChkZXZfcHJpdiwg
RSkKICAgICAgICArIElTX0RJU1BMQVlfUkFOR0UoZGV2X3ByaXYsIDEwLCBFKQogICAgICAgIHwK
ICAgICAgICAtIFJBTkdFX0xURV9EMTAoZGV2X3ByaXYsIEUpCiAgICAgICAgKyBJU19ESVNQTEFZ
X1JBTkdFKGRldl9wcml2LCBFLCAxMCkKICAgICAgICB8CiAgICAgICAgLSBMVF9EMTAoZGV2X3By
aXYpCiAgICAgICAgKyBESVNQTEFZX1ZFUihkZXZfcHJpdikgPCAxMAogICAgICAgIHwKICAgICAg
ICAtIEVRX0Q5KGRldl9wcml2KQogICAgICAgICsgSVNfRElTUExBWV9WRVIoZGV2X3ByaXYsIDkp
CiAgICAgICAgKQoKdjI6CiAtIENvbnZlcnQgZ2VuMTAgY29uZGl0aW9ucyB0aGF0IGRvbid0IGlu
Y2x1ZGUgR0xLIGludG8gQ05MIGNvbmRpdGlvbnMuCiAgIChWaWxsZSkKCkNjOiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVy
IDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYXRvbWljLmMgICB8ICA3ICsrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2F1ZGlvLmMgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmMgICAgIHwgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY2RjbGsuYyAgICB8IDEwICsrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY29sb3IuYyAgICB8ICA4ICsrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgIHwgIDQgKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgOSArKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAgICB8ICA2ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZmJjLmMgICAgICB8ICA0ICstLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9oZGNwLmMgICAgIHwgIDEgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9oZG1pLmMgICAgIHwgMTMgKysrKy0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jICAgICAgfCAgNyArKy0tLQogLi4uL2RybS9pOTE1L2Rpc3Bs
YXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jICAgIHwgMjggKysrKysrKysrLS0tLS0tLS0tLQogMTMg
ZmlsZXMgY2hhbmdlZCwgNDggaW5zZXJ0aW9ucygrKSwgNTQgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMKaW5kZXggMmI5Mjg3OTU3NTVl
Li40ZmEzODlmY2U4Y2IgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYXRvbWljLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
dG9taWMuYwpAQCAtMzMyLDggKzMzMiw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19zZXR1
cF9zY2FsZXIoc3RydWN0IGludGVsX2NydGNfc2NhbGVyX3N0YXRlICpzY2FsZXJfc3RhCiAJICAg
IHBsYW5lX3N0YXRlLT5ody5mYi0+Zm9ybWF0LT5pc195dXYgJiYKIAkgICAgcGxhbmVfc3RhdGUt
Pmh3LmZiLT5mb3JtYXQtPm51bV9wbGFuZXMgPiAxKSB7CiAJCXN0cnVjdCBpbnRlbF9wbGFuZSAq
cGxhbmUgPSB0b19pbnRlbF9wbGFuZShwbGFuZV9zdGF0ZS0+dWFwaS5wbGFuZSk7Ci0JCWlmIChJ
U19ESVNQTEFZX1ZFUihkZXZfcHJpdiwgOSkgJiYKLQkJICAgICFJU19HRU1JTklMQUtFKGRldl9w
cml2KSkgeworCQlpZiAoSVNfRElTUExBWV9WRVIoZGV2X3ByaXYsIDkpKSB7CiAJCQltb2RlID0g
U0tMX1BTX1NDQUxFUl9NT0RFX05WMTI7CiAJCX0gZWxzZSBpZiAoaWNsX2lzX2hkcl9wbGFuZShk
ZXZfcHJpdiwgcGxhbmUtPmlkKSkgewogCQkJLyoKQEAgLTM1MSw3ICszNTAsNyBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9hdG9taWNfc2V0dXBfc2NhbGVyKHN0cnVjdCBpbnRlbF9jcnRjX3NjYWxlcl9z
dGF0ZSAqc2NhbGVyX3N0YQogCQkJaWYgKGxpbmtlZCkKIAkJCQltb2RlIHw9IFBTX1BMQU5FX1lf
U0VMKGxpbmtlZC0+aWQpOwogCQl9Ci0JfSBlbHNlIGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikg
PiA5IHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKSB7CisJfSBlbHNlIGlmIChESVNQTEFZX1ZF
UihkZXZfcHJpdikgPj0gMTApIHsKIAkJbW9kZSA9IFBTX1NDQUxFUl9NT0RFX05PUk1BTDsKIAl9
IGVsc2UgaWYgKG51bV9zY2FsZXJzX25lZWQgPT0gMSAmJiBpbnRlbF9jcnRjLT5udW1fc2NhbGVy
cyA+IDEpIHsKIAkJLyoKQEAgLTQ2MCw3ICs0NTksNyBAQCBpbnQgaW50ZWxfYXRvbWljX3NldHVw
X3NjYWxlcnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJCSAqIGlzbid0
IG5lY2Vzc2FyeSB0byBjaGFuZ2UgYmV0d2VlbiBIUSBhbmQgZHluIG1vZGUKIAkJCQkgKiBvbiB0
aG9zZSBwbGF0Zm9ybXMuCiAJCQkJICovCi0JCQkJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+
PSAxMCB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkKKwkJCQlpZiAoRElTUExBWV9WRVIoZGV2
X3ByaXYpID49IDEwKQogCQkJCQljb250aW51ZTsKIAogCQkJCXBsYW5lID0gZHJtX3BsYW5lX2Zy
b21faW5kZXgoJmRldl9wcml2LT5kcm0sIGkpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9hdWRpby5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hdWRpby5jCmluZGV4IDdhYjlkMTY2OWYwOS4uM2VhMjBjODU3NDQwIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdWRpby5jCkBAIC0xMDIyLDcgKzEwMjIs
NyBAQCBzdGF0aWMgdW5zaWduZWQgbG9uZyBpOTE1X2F1ZGlvX2NvbXBvbmVudF9nZXRfcG93ZXIo
c3RydWN0IGRldmljZSAqa2RldikKIAkJaWYgKElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKQogCQkJ
Z2xrX2ZvcmNlX2F1ZGlvX2NkY2xrKGRldl9wcml2LCB0cnVlKTsKIAotCQlpZiAoRElTUExBWV9W
RVIoZGV2X3ByaXYpID49IDEwIHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKQorCQlpZiAoRElT
UExBWV9WRVIoZGV2X3ByaXYpID49IDEwKQogCQkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIEFV
RF9QSU5fQlVGX0NUTCwKIAkJCQkgICAgICAgKGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIEFVRF9Q
SU5fQlVGX0NUTCkgfCBBVURfUElOX0JVRl9FTkFCTEUpKTsKIAl9CmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCmluZGV4IDE4MmRiOWRlMDNjMy4uM2QwYzAzNWI1ZTM4
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwpAQCAtOTE3LDgg
KzkxNyw3IEBAIHBhcnNlX3BzcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgY29uc3Qg
c3RydWN0IGJkYl9oZWFkZXIgKmJkYikKIAkgKiBPbGQgZGVjaW1hbCB2YWx1ZSBpcyB3YWtlIHVw
IHRpbWUgaW4gbXVsdGlwbGVzIG9mIDEwMCB1cy4KIAkgKi8KIAlpZiAoYmRiLT52ZXJzaW9uID49
IDIwNSAmJgotCSAgICAoSVNfR0VOOV9CQyhpOTE1KSB8fCBJU19HRU1JTklMQUtFKGk5MTUpIHx8
Ci0JICAgICBESVNQTEFZX1ZFUihpOTE1KSA+PSAxMCkpIHsKKwkgICAgKElTX0dFTjlfQkMoaTkx
NSkgfHwgRElTUExBWV9WRVIoaTkxNSkgPj0gMTApKSB7CiAJCXN3aXRjaCAocHNyX3RhYmxlLT50
cDFfd2FrZXVwX3RpbWUpIHsKIAkJY2FzZSAwOgogCQkJaTkxNS0+dmJ0LnBzci50cDFfd2FrZXVw
X3RpbWVfdXMgPSA1MDA7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xr
LmMKaW5kZXggNGJlODQ4ZDBkMTU2Li5lYjExMjFlMDVjMGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKQEAgLTE0MzMsNyArMTQzMyw3IEBAIHN0YXRpYyB2
b2lkIGJ4dF9nZXRfY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQli
cmVhazsKIAljYXNlIEJYVF9DRENMS19DRDJYX0RJVl9TRUxfMV81OgogCQlkcm1fV0FSTigmZGV2
X3ByaXYtPmRybSwKLQkJCSBJU19HRU1JTklMQUtFKGRldl9wcml2KSB8fCBESVNQTEFZX1ZFUihk
ZXZfcHJpdikgPj0gMTAsCisJCQkgRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEwLAogCQkJICJV
bnN1cHBvcnRlZCBkaXZpZGVyXG4iKTsKIAkJZGl2ID0gMzsKIAkJYnJlYWs7CkBAIC0xNTkxLDcg
KzE1OTEsNyBAQCBzdGF0aWMgdm9pZCBieHRfc2V0X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKIAkJYnJlYWs7CiAJY2FzZSAzOgogCQlkcm1fV0FSTigmZGV2X3ByaXYt
PmRybSwKLQkJCSBJU19HRU1JTklMQUtFKGRldl9wcml2KSB8fCBESVNQTEFZX1ZFUihkZXZfcHJp
dikgPj0gMTAsCisJCQkgRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEwLAogCQkJICJVbnN1cHBv
cnRlZCBkaXZpZGVyXG4iKTsKIAkJZGl2aWRlciA9IEJYVF9DRENMS19DRDJYX0RJVl9TRUxfMV81
OwogCQlicmVhazsKQEAgLTE5OTgsNyArMTk5OCw3IEBAIHN0YXRpYyBpbnQgaW50ZWxfcGl4ZWxf
cmF0ZV90b19jZGNsayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkK
IAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGNfc3RhdGUt
PnVhcGkuY3J0Yy0+ZGV2KTsKIAlpbnQgcGl4ZWxfcmF0ZSA9IGNydGNfc3RhdGUtPnBpeGVsX3Jh
dGU7CiAKLQlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEwIHx8IElTX0dFTUlOSUxBS0Uo
ZGV2X3ByaXYpKQorCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTApCiAJCXJldHVybiBE
SVZfUk9VTkRfVVAocGl4ZWxfcmF0ZSwgMik7CiAJZWxzZSBpZiAoSVNfRElTUExBWV9WRVIoZGV2
X3ByaXYsIDkpIHx8CiAJCSBJU19CUk9BRFdFTEwoZGV2X3ByaXYpIHx8IElTX0hBU1dFTEwoZGV2
X3ByaXYpKQpAQCAtMjA0OCw3ICsyMDQ4LDcgQEAgaW50IGludGVsX2NydGNfY29tcHV0ZV9taW5f
Y2RjbGsoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJICAgIGNy
dGNfc3RhdGUtPmhhc19hdWRpbyAmJgogCSAgICBjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrID49IDU0
MDAwMCAmJgogCSAgICBjcnRjX3N0YXRlLT5sYW5lX2NvdW50ID09IDQpIHsKLQkJaWYgKElTX0NB
Tk5PTkxBS0UoZGV2X3ByaXYpIHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKSB7CisJCWlmIChJ
U19ESVNQTEFZX1ZFUihkZXZfcHJpdiwgMTApKSB7CiAJCQkvKiBEaXNwbGF5IFdBICMxMTQ1OiBn
bGssY25sICovCiAJCQltaW5fY2RjbGsgPSBtYXgoMzE2ODAwLCBtaW5fY2RjbGspOwogCQl9IGVs
c2UgaWYgKElTX0RJU1BMQVlfVkVSKGRldl9wcml2LCA5KSB8fCBJU19CUk9BRFdFTEwoZGV2X3By
aXYpKSB7CkBAIC0yNTg4LDcgKzI1ODgsNyBAQCBzdGF0aWMgaW50IGludGVsX2NvbXB1dGVfbWF4
X2RvdGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CiAJaW50IG1heF9j
ZGNsa19mcmVxID0gZGV2X3ByaXYtPm1heF9jZGNsa19mcmVxOwogCi0JaWYgKERJU1BMQVlfVkVS
KGRldl9wcml2KSA+PSAxMCB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkKKwlpZiAoRElTUExB
WV9WRVIoZGV2X3ByaXYpID49IDEwKQogCQlyZXR1cm4gMiAqIG1heF9jZGNsa19mcmVxOwogCWVs
c2UgaWYgKElTX0RJU1BMQVlfVkVSKGRldl9wcml2LCA5KSB8fAogCQkgSVNfQlJPQURXRUxMKGRl
dl9wcml2KSB8fCBJU19IQVNXRUxMKGRldl9wcml2KSkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY29sb3IuYwppbmRleCAzN2UyNzU1MDlhMzYuLmM3NWQ3MTI0ZDU3YSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwpAQCAtNzM3LDcgKzcz
Nyw3IEBAIHN0YXRpYyB2b2lkIGl2Yl9sb2FkX2x1dF9leHRfbWF4KGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCSAqIFRvRG86IEV4dGVuZCB0aGUgQUJJIHRvIGJl
IGFibGUgdG8gcHJvZ3JhbSB2YWx1ZXMKIAkgKiBmcm9tIDMuMCB0byA3LjAKIAkgKi8KLQlpZiAo
RElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEwIHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKSB7
CisJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMCkgewogCQlpbnRlbF9kc2JfcmVnX3dy
aXRlKGNydGNfc3RhdGUsIFBSRUNfUEFMX0VYVDJfR0NfTUFYKHBpcGUsIDApLAogCQkJCSAgICAx
IDw8IDE2KTsKIAkJaW50ZWxfZHNiX3JlZ193cml0ZShjcnRjX3N0YXRlLCBQUkVDX1BBTF9FWFQy
X0dDX01BWChwaXBlLCAxKSwKQEAgLTE3MTEsNyArMTcxMSw3IEBAIGludCBpbnRlbF9jb2xvcl9n
ZXRfZ2FtbWFfYml0X3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0CiAJfSBlbHNlIHsKIAkJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMSkKIAkJ
CXJldHVybiBpY2xfZ2FtbWFfcHJlY2lzaW9uKGNydGNfc3RhdGUpOwotCQllbHNlIGlmIChJU19D
QU5OT05MQUtFKGRldl9wcml2KSB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkKKwkJZWxzZSBp
ZiAoSVNfRElTUExBWV9WRVIoZGV2X3ByaXYsIDEwKSkKIAkJCXJldHVybiBnbGtfZ2FtbWFfcHJl
Y2lzaW9uKGNydGNfc3RhdGUpOwogCQllbHNlIGlmIChJU19JUk9OTEFLRShkZXZfcHJpdikpCiAJ
CQlyZXR1cm4gaWxrX2dhbW1hX3ByZWNpc2lvbihjcnRjX3N0YXRlKTsKQEAgLTIxMTksNyArMjEx
OSw3IEBAIHZvaWQgaW50ZWxfY29sb3JfaW5pdChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIAl9
IGVsc2UgewogCQlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDExKQogCQkJZGV2X3ByaXYt
PmRpc3BsYXkuY29sb3JfY2hlY2sgPSBpY2xfY29sb3JfY2hlY2s7Ci0JCWVsc2UgaWYgKERJU1BM
QVlfVkVSKGRldl9wcml2KSA+PSAxMCB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkKKwkJZWxz
ZSBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEwKQogCQkJZGV2X3ByaXYtPmRpc3BsYXku
Y29sb3JfY2hlY2sgPSBnbGtfY29sb3JfY2hlY2s7CiAJCWVsc2UgaWYgKERJU1BMQVlfVkVSKGRl
dl9wcml2KSA+PSA3KQogCQkJZGV2X3ByaXYtPmRpc3BsYXkuY29sb3JfY2hlY2sgPSBpdmJfY29s
b3JfY2hlY2s7CkBAIC0yMTM2LDcgKzIxMzYsNyBAQCB2b2lkIGludGVsX2NvbG9yX2luaXQoc3Ry
dWN0IGludGVsX2NydGMgKmNydGMpCiAJCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTEp
IHsKIAkJCWRldl9wcml2LT5kaXNwbGF5LmxvYWRfbHV0cyA9IGljbF9sb2FkX2x1dHM7CiAJCQlk
ZXZfcHJpdi0+ZGlzcGxheS5yZWFkX2x1dHMgPSBpY2xfcmVhZF9sdXRzOwotCQl9IGVsc2UgaWYg
KElTX0NBTk5PTkxBS0UoZGV2X3ByaXYpIHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKSB7CisJ
CX0gZWxzZSBpZiAoSVNfRElTUExBWV9WRVIoZGV2X3ByaXYsIDEwKSkgewogCQkJZGV2X3ByaXYt
PmRpc3BsYXkubG9hZF9sdXRzID0gZ2xrX2xvYWRfbHV0czsKIAkJCWRldl9wcml2LT5kaXNwbGF5
LnJlYWRfbHV0cyA9IGdsa19yZWFkX2x1dHM7CiAJCX0gZWxzZSBpZiAoRElTUExBWV9WRVIoZGV2
X3ByaXYpID49IDgpIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmlu
ZGV4IDk1M2RlNDJlMjc3Yy4uNmIyZTRkOWM2OWNhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMKQEAgLTE3NCw3ICsxNzQsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF93
YWl0X2RkaV9idWZfYWN0aXZlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJ
CQkgICAgICBlbnVtIHBvcnQgcG9ydCkKIHsKIAkvKiBXYWl0ID4gNTE4IHVzZWNzIGZvciBERElf
QlVGX0NUTCB0byBiZSBub24gaWRsZSAqLwotCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPCAx
MCAmJiAhSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpIHsKKwlpZiAoRElTUExBWV9WRVIoZGV2X3By
aXYpIDwgMTApIHsKIAkJdXNsZWVwX3JhbmdlKDUxOCwgMTAwMCk7CiAJCXJldHVybjsKIAl9CkBA
IC00NjEwLDcgKzQ2MTAsNyBAQCB2b2lkIGludGVsX2RkaV9pbml0KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwgZW51bSBwb3J0IHBvcnQpCiAJCWVuY29kZXItPmhwZF9waW4gPSBl
aGxfaHBkX3BpbihkZXZfcHJpdiwgcG9ydCk7CiAJZWxzZSBpZiAoSVNfRElTUExBWV9WRVIoZGV2
X3ByaXYsIDExKSkKIAkJZW5jb2Rlci0+aHBkX3BpbiA9IGljbF9ocGRfcGluKGRldl9wcml2LCBw
b3J0KTsKLQllbHNlIGlmIChJU19ESVNQTEFZX1ZFUihkZXZfcHJpdiwgMTApKQorCWVsc2UgaWYg
KElTX0NBTk5PTkxBS0UoZGV2X3ByaXYpKQogCQllbmNvZGVyLT5ocGRfcGluID0gY25sX2hwZF9w
aW4oZGV2X3ByaXYsIHBvcnQpOwogCWVsc2UgaWYgKElTX0RJU1BMQVlfVkVSKGRldl9wcml2LCA5
KSkKIAkJZW5jb2Rlci0+aHBkX3BpbiA9IHNrbF9ocGRfcGluKGRldl9wcml2LCBwb3J0KTsKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggOGE1MDE0
ZjRiM2Y0Li5hMWZiNWExMDE5NDIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jCkBAIC0zMjU5LDcgKzMyNTksNyBAQCBzdGF0aWMgYm9vbCBuZWVkc19u
djEyX3dhKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCQlyZXR1
cm4gZmFsc2U7CiAKIAkvKiBXQSBEaXNwbGF5ICMwODI3OiBHZW45OmFsbCAqLwotCWlmIChJU19E
SVNQTEFZX1ZFUihkZXZfcHJpdiwgOSkgJiYgIUlTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKQorCWlm
IChJU19ESVNQTEFZX1ZFUihkZXZfcHJpdiwgOSkpCiAJCXJldHVybiB0cnVlOwogCiAJcmV0dXJu
IGZhbHNlOwpAQCAtMzk4OSw3ICszOTg5LDcgQEAgc3RhdGljIHZvaWQgaHN3X2NydGNfZW5hYmxl
KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCWNydGMtPmFjdGl2ZSA9IHRydWU7
CiAKIAkvKiBEaXNwbGF5IFdBICMxMTgwOiBXYURpc2FibGVTY2FsYXJDbG9ja0dhdGluZzogZ2xr
LCBjbmwgKi8KLQlwc2xfY2xrZ2F0ZV93YSA9IChJU19HRU1JTklMQUtFKGRldl9wcml2KSB8fCBJ
U19DQU5OT05MQUtFKGRldl9wcml2KSkgJiYKKwlwc2xfY2xrZ2F0ZV93YSA9IElTX0RJU1BMQVlf
VkVSKGRldl9wcml2LCAxMCkgJiYKIAkJbmV3X2NydGNfc3RhdGUtPnBjaF9wZml0LmVuYWJsZWQ7
CiAJaWYgKHBzbF9jbGtnYXRlX3dhKQogCQlnbGtfcGlwZV9zY2FsZXJfY2xvY2tfZ2F0aW5nX3dh
KGRldl9wcml2LCBwaXBlLCB0cnVlKTsKQEAgLTEzMzI5LDggKzEzMzI5LDcgQEAgc3RhdGljIHZv
aWQgaW50ZWxfbW9kZXNldF9yZWFkb3V0X2h3X3N0YXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYp
CiAJCQkgKiB1c2UgcGxhbmUtPm1pbl9jZGNsaygpIDooCiAJCQkgKi8KIAkJCWlmIChwbGFuZV9z
dGF0ZS0+dWFwaS52aXNpYmxlICYmIHBsYW5lLT5taW5fY2RjbGspIHsKLQkJCQlpZiAoY3J0Y19z
dGF0ZS0+ZG91YmxlX3dpZGUgfHwKLQkJCQkgICAgRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEw
IHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKQorCQkJCWlmIChjcnRjX3N0YXRlLT5kb3VibGVf
d2lkZSB8fCBESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTApCiAJCQkJCWNydGNfc3RhdGUtPm1p
bl9jZGNsa1twbGFuZS0+aWRdID0KIAkJCQkJCURJVl9ST1VORF9VUChjcnRjX3N0YXRlLT5waXhl
bF9yYXRlLCAyKTsKIAkJCQllbHNlCkBAIC0xMzQyMSw3ICsxMzQyMCw3IEBAIHN0YXRpYyB2b2lk
IGludGVsX2Vhcmx5X2Rpc3BsYXlfd2FzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIAkgKiBEaXNwbGF5IFdBICMxMTg1IFdhRGlzYWJsZURBUkJGQ2xrR2F0aW5nOmNubCxnbGss
aWNsLGVobCx0Z2wKIAkgKiBBbHNvIGtub3duIGFzIFdhXzE0MDEwNDgwMjc4LgogCSAqLwotCWlm
IChJU19ESVNQTEFZX1JBTkdFKGRldl9wcml2LCAxMCwgMTIpIHx8IElTX0dFTUlOSUxBS0UoZGV2
X3ByaXYpKQorCWlmIChJU19ESVNQTEFZX1JBTkdFKGRldl9wcml2LCAxMCwgMTIpKQogCQlpbnRl
bF9kZV93cml0ZShkZXZfcHJpdiwgR0VOOV9DTEtHQVRFX0RJU18wLAogCQkJICAgICAgIGludGVs
X2RlX3JlYWQoZGV2X3ByaXYsIEdFTjlfQ0xLR0FURV9ESVNfMCkgfCBEQVJCRl9HQVRJTkdfRElT
KTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4IDRiYTVlMzdm
MTdkMi4uOGQzOGRhMmU2OGJjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jCkBAIC0yOTUsNyArMjk1LDcgQEAgaW50ZWxfZHBfc2V0X3NvdXJjZV9yYXRlcyhzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwKQogCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTApIHsK
IAkJc291cmNlX3JhdGVzID0gY25sX3JhdGVzOwogCQlzaXplID0gQVJSQVlfU0laRShjbmxfcmF0
ZXMpOwotCQlpZiAoSVNfRElTUExBWV9WRVIoZGV2X3ByaXYsIDEwKSkKKwkJaWYgKElTX0NBTk5P
TkxBS0UoZGV2X3ByaXYpKQogCQkJbWF4X3JhdGUgPSBjbmxfbWF4X3NvdXJjZV9yYXRlKGludGVs
X2RwKTsKIAkJZWxzZSBpZiAoSVNfSlNMX0VITChkZXZfcHJpdikpCiAJCQltYXhfcmF0ZSA9IGVo
bF9tYXhfc291cmNlX3JhdGUoaW50ZWxfZHApOwpAQCAtNzc2LDcgKzc3Niw3IEBAIGludGVsX2Rw
X21vZGVfdmFsaWQoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKIAkgKiBPdXRwdXQg
YnBwIGlzIHN0b3JlZCBpbiA2LjQgZm9ybWF0IHNvIHJpZ2h0IHNoaWZ0IGJ5IDQgdG8gZ2V0IHRo
ZQogCSAqIGludGVnZXIgdmFsdWUgc2luY2Ugd2Ugc3VwcG9ydCBvbmx5IGludGVnZXIgdmFsdWVz
IG9mIGJwcC4KIAkgKi8KLQlpZiAoKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMCB8fCBJU19H
RU1JTklMQUtFKGRldl9wcml2KSkgJiYKKwlpZiAoKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAx
MCkgJiYKIAkgICAgZHJtX2RwX3Npbmtfc3VwcG9ydHNfZHNjKGludGVsX2RwLT5kc2NfZHBjZCkp
IHsKIAkJaWYgKGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpIHsKIAkJCWRzY19tYXhfb3V0cHV0
X2JwcCA9CkBAIC0yNTIzLDcgKzI1MjMsNyBAQCBpbnRlbF9lZHBfaW5pdF9kcGNkKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHApCiAJaW50ZWxfZHBfc2V0X2NvbW1vbl9yYXRlcyhpbnRlbF9kcCk7
CiAKIAkvKiBSZWFkIHRoZSBlRFAgRFNDIERQQ0QgcmVnaXN0ZXJzICovCi0JaWYgKERJU1BMQVlf
VkVSKGRldl9wcml2KSA+PSAxMCB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkKKwlpZiAoRElT
UExBWV9WRVIoZGV2X3ByaXYpID49IDEwKQogCQlpbnRlbF9kcF9nZXRfZHNjX3NpbmtfY2FwKGlu
dGVsX2RwKTsKIAogCS8qCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwpp
bmRleCA1OGY2MDMwNjY3MDAuLjI0YzBkMzZjMDI3NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZiYy5jCkBAIC02NTMsNyArNjUzLDcgQEAgc3RhdGljIGJvb2wgaW50ZWxf
ZmJjX2h3X3RyYWNraW5nX2NvdmVyc19zY3JlZW4oc3RydWN0IGludGVsX2NydGMgKmNydGMpCiAJ
c3RydWN0IGludGVsX2ZiYyAqZmJjID0gJmRldl9wcml2LT5mYmM7CiAJdW5zaWduZWQgaW50IGVm
ZmVjdGl2ZV93LCBlZmZlY3RpdmVfaCwgbWF4X3csIG1heF9oOwogCi0JaWYgKERJU1BMQVlfVkVS
KGRldl9wcml2KSA+PSAxMCB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkgeworCWlmIChESVNQ
TEFZX1ZFUihkZXZfcHJpdikgPj0gMTApIHsKIAkJbWF4X3cgPSA1MTIwOwogCQltYXhfaCA9IDQw
OTY7CiAJfSBlbHNlIGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gOCB8fCBJU19IQVNXRUxM
KGRldl9wcml2KSkgewpAQCAtMTAzNiw3ICsxMDM2LDcgQEAgYm9vbCBpbnRlbF9mYmNfcHJlX3Vw
ZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAkJICogaWYgYXQgbGVhc3Qg
b25lIGZyYW1lIGhhcyBhbHJlYWR5IHBhc3NlZC4KIAkJICovCiAJCWlmIChmYmMtPmFjdGl2YXRl
ZCAmJgotCQkgICAgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMCB8fCBJU19HRU1JTklMQUtF
KGRldl9wcml2KSkpCisJCSAgICAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEwKSkKIAkJCW5l
ZWRfdmJsYW5rX3dhaXQgPSB0cnVlOwogCQlmYmMtPmFjdGl2YXRlZCA9IGZhbHNlOwogCX0KZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMKaW5kZXggZDQxOGZlNzk2MjYz
Li5mMTM3MDQ1NjIwNDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfaGRjcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRj
cC5jCkBAIC0yMTc3LDcgKzIxNzcsNiBAQCBzdGF0aWMgYm9vbCBpc19oZGNwMl9zdXBwb3J0ZWQo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQlyZXR1cm4gZmFsc2U7CiAKIAly
ZXR1cm4gKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMCB8fAotCQlJU19HRU1JTklMQUtFKGRl
dl9wcml2KSB8fAogCQlJU19LQUJZTEFLRShkZXZfcHJpdikgfHwKIAkJSVNfQ09GRkVFTEFLRShk
ZXZfcHJpdikgfHwKIAkJSVNfQ09NRVRMQUtFKGRldl9wcml2KSk7CmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCmluZGV4IGVmNzY2YTdiNmM3MS4uNDI0Nzk4ZmZkOTYy
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwpAQCAtNTY0LDcg
KzU2NCw3IEBAIHN0YXRpYyB1MzIgaHN3X2luZm9mcmFtZXNfZW5hYmxlZChzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlciwKIAkJVklERU9fRElQX0VOQUJMRV9HQ1BfSFNXIHwgVklERU9fRElQ
X0VOQUJMRV9WU19IU1cgfAogCQlWSURFT19ESVBfRU5BQkxFX0dNUF9IU1cgfCBWSURFT19ESVBf
RU5BQkxFX1NQRF9IU1cpOwogCi0JaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMCB8fCBJ
U19HRU1JTklMQUtFKGRldl9wcml2KSkKKwlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEw
KQogCQltYXNrIHw9IFZJREVPX0RJUF9FTkFCTEVfRFJNX0dMSzsKIAogCXJldHVybiB2YWwgJiBt
YXNrOwpAQCAtODIwLDcgKzgyMCw3IEBAIGludGVsX2hkbWlfY29tcHV0ZV9kcm1faW5mb2ZyYW1l
KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwogCWludCByZXQ7CiAKLQlp
ZiAoIShESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTAgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJp
dikpKQorCWlmICghKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMCkpCiAJCXJldHVybiB0cnVl
OwogCiAJaWYgKCFjcnRjX3N0YXRlLT5oYXNfaW5mb2ZyYW1lKQpAQCAtMTc3NSw3ICsxNzc1LDcg
QEAgc3RhdGljIGludCBpbnRlbF9oZG1pX3NvdXJjZV9tYXhfdG1kc19jbG9jayhzdHJ1Y3QgaW50
ZWxfZW5jb2RlciAqZW5jb2RlcikKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKIAlpbnQgbWF4X3RtZHNfY2xvY2ssIHZidF9t
YXhfdG1kc19jbG9jazsKIAotCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTAgfHwgSVNf
R0VNSU5JTEFLRShkZXZfcHJpdikpCisJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMCkK
IAkJbWF4X3RtZHNfY2xvY2sgPSA1OTQwMDA7CiAJZWxzZSBpZiAoRElTUExBWV9WRVIoZGV2X3By
aXYpID49IDggfHwgSVNfSEFTV0VMTChkZXZfcHJpdikpCiAJCW1heF90bWRzX2Nsb2NrID0gMzAw
MDAwOwpAQCAtMjE2NCw4ICsyMTY0LDcgQEAgaW50IGludGVsX2hkbWlfY29tcHV0ZV9jb25maWco
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAKIAlwaXBlX2NvbmZpZy0+bGFuZV9jb3Vu
dCA9IDQ7CiAKLQlpZiAoc2NkYy0+c2NyYW1ibGluZy5zdXBwb3J0ZWQgJiYgKERJU1BMQVlfVkVS
KGRldl9wcml2KSA+PSAxMCB8fAotCQkJCQkgICBJU19HRU1JTklMQUtFKGRldl9wcml2KSkpIHsK
KwlpZiAoc2NkYy0+c2NyYW1ibGluZy5zdXBwb3J0ZWQgJiYgKERJU1BMQVlfVkVSKGRldl9wcml2
KSA+PSAxMCkpIHsKIAkJaWYgKHNjZGMtPnNjcmFtYmxpbmcubG93X3JhdGVzKQogCQkJcGlwZV9j
b25maWctPmhkbWlfc2NyYW1ibGluZyA9IHRydWU7CiAKQEAgLTI0NjAsNyArMjQ1OSw3IEBAIGlu
dGVsX2hkbWlfYWRkX3Byb3BlcnRpZXMoc3RydWN0IGludGVsX2hkbWkgKmludGVsX2hkbWksIHN0
cnVjdCBkcm1fY29ubmVjdG9yICpjCiAJaW50ZWxfYXR0YWNoX2hkbWlfY29sb3JzcGFjZV9wcm9w
ZXJ0eShjb25uZWN0b3IpOwogCWRybV9jb25uZWN0b3JfYXR0YWNoX2NvbnRlbnRfdHlwZV9wcm9w
ZXJ0eShjb25uZWN0b3IpOwogCi0JaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMCB8fCBJ
U19HRU1JTklMQUtFKGRldl9wcml2KSkKKwlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEw
KQogCQlkcm1fb2JqZWN0X2F0dGFjaF9wcm9wZXJ0eSgmY29ubmVjdG9yLT5iYXNlLAogCQkJY29u
bmVjdG9yLT5kZXYtPm1vZGVfY29uZmlnLmhkcl9vdXRwdXRfbWV0YWRhdGFfcHJvcGVydHksIDAp
OwogCkBAIC0yODE1LDcgKzI4MTQsNyBAQCB2b2lkIGludGVsX2hkbWlfaW5pdF9jb25uZWN0b3Io
c3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsCiAJY29ubmVjdG9yLT5kb3VibGVz
Y2FuX2FsbG93ZWQgPSAwOwogCWNvbm5lY3Rvci0+c3RlcmVvX2FsbG93ZWQgPSAxOwogCi0JaWYg
KERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMCB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkK
KwlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEwKQogCQljb25uZWN0b3ItPnljYmNyXzQy
MF9hbGxvd2VkID0gdHJ1ZTsKIAogCWludGVsX2Nvbm5lY3Rvci0+cG9sbGVkID0gRFJNX0NPTk5F
Q1RPUl9QT0xMX0hQRDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCmlu
ZGV4IDRhYjU2OGY4MmRkZi4uOGUwOTc4NTQzODIxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMKQEAgLTUyNCw3ICs1MjQsNyBAQCBzdGF0aWMgdm9pZCBoc3dfYWN0
aXZhdGVfcHNyMihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCXZhbCA9IHBzcl9jb21wdXRl
X2lkbGVfZnJhbWVzKGludGVsX2RwKSA8PCBFRFBfUFNSMl9JRExFX0ZSQU1FX1NISUZUOwogCiAJ
dmFsIHw9IEVEUF9QU1IyX0VOQUJMRSB8IEVEUF9TVV9UUkFDS19FTkFCTEU7Ci0JaWYgKERJU1BM
QVlfVkVSKGRldl9wcml2KSA+PSAxMCB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkKKwlpZiAo
RElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEwKQogCQl2YWwgfD0gRURQX1lfQ09PUkRJTkFURV9F
TkFCTEU7CiAKIAl2YWwgfD0gRURQX1BTUjJfRlJBTUVfQkVGT1JFX1NVKGludGVsX2RwLT5wc3Iu
c2lua19zeW5jX2xhdGVuY3kgKyAxKTsKQEAgLTc2NSw3ICs3NjUsNyBAQCBzdGF0aWMgYm9vbCBp
bnRlbF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCQlwc3Jf
bWF4X2ggPSA1MTIwOwogCQlwc3JfbWF4X3YgPSAzMjAwOwogCQltYXhfYnBwID0gMzA7Ci0JfSBl
bHNlIGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTAgfHwgSVNfR0VNSU5JTEFLRShkZXZf
cHJpdikpIHsKKwl9IGVsc2UgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMCkgewogCQlw
c3JfbWF4X2ggPSA0MDk2OwogCQlwc3JfbWF4X3YgPSAyMzA0OwogCQltYXhfYnBwID0gMjQ7CkBA
IC05MDksOCArOTA5LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9zb3VyY2Uoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCwKIAlpZiAoSVNfSEFTV0VMTChkZXZfcHJpdikgfHwgSVNf
QlJPQURXRUxMKGRldl9wcml2KSkKIAkJaHN3X3Bzcl9zZXR1cF9hdXgoaW50ZWxfZHApOwogCi0J
aWYgKGludGVsX2RwLT5wc3IucHNyMl9lbmFibGVkICYmIChJU19ESVNQTEFZX1ZFUihkZXZfcHJp
diwgOSkgJiYKLQkJCQkJICAgIUlTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKSkgeworCWlmIChpbnRl
bF9kcC0+cHNyLnBzcjJfZW5hYmxlZCAmJiAoSVNfRElTUExBWV9WRVIoZGV2X3ByaXYsIDkpKSkg
ewogCQlpOTE1X3JlZ190IHJlZyA9IENISUNLRU5fVFJBTlMoY3B1X3RyYW5zY29kZXIpOwogCQl1
MzIgY2hpY2tlbiA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIHJlZyk7CiAKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMKaW5kZXggODli
MjQ3NWEzZDYwLi4xMWFiM2JlMDVmODQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jCkBAIC0yOTQsNyArMjk0LDcgQEAgc2tsX3Bs
YW5lX3JhdGlvKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCWNv
bnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiID0gcGxhbmVfc3RhdGUtPmh3LmZiOwogCiAJ
aWYgKGZiLT5mb3JtYXQtPmNwcFswXSA9PSA4KSB7Ci0JCWlmIChESVNQTEFZX1ZFUihkZXZfcHJp
dikgPj0gMTAgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpIHsKKwkJaWYgKERJU1BMQVlfVkVS
KGRldl9wcml2KSA+PSAxMCkgewogCQkJKm51bSA9IDEwOwogCQkJKmRlbiA9IDg7CiAJCX0gZWxz
ZSB7CkBAIC0zMTcsNyArMzE3LDcgQEAgc3RhdGljIGludCBza2xfcGxhbmVfbWluX2NkY2xrKGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCXNrbF9wbGFuZV9yYXRp
byhjcnRjX3N0YXRlLCBwbGFuZV9zdGF0ZSwgJm51bSwgJmRlbik7CiAKIAkvKiB0d28gcGl4ZWxz
IHBlciBjbG9jayBvbiBnbGsrICovCi0JaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMCB8
fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkKKwlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49
IDEwKQogCQlkZW4gKj0gMjsKIAogCXJldHVybiBESVZfUk9VTkRfVVAocGl4ZWxfcmF0ZSAqIG51
bSwgZGVuKTsKQEAgLTgxMCw3ICs4MTAsNyBAQCBzdGF0aWMgdTMyIHNrbF9wbGFuZV9jdGxfY3J0
Yyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGNfc3RhdGUtPnVhcGkuY3J0Yy0+
ZGV2KTsKIAl1MzIgcGxhbmVfY3RsID0gMDsKIAotCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikg
Pj0gMTAgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpCisJaWYgKERJU1BMQVlfVkVSKGRldl9w
cml2KSA+PSAxMCkKIAkJcmV0dXJuIHBsYW5lX2N0bDsKIAogCWlmIChjcnRjX3N0YXRlLT5nYW1t
YV9lbmFibGUpCkBAIC04MzQsNyArODM0LDcgQEAgc3RhdGljIHUzMiBza2xfcGxhbmVfY3RsKGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCiAJcGxhbmVfY3RsID0g
UExBTkVfQ1RMX0VOQUJMRTsKIAotCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPCAxMCAmJiAh
SVNfR0VNSU5JTEFLRShkZXZfcHJpdikpIHsKKwlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpIDwg
MTApIHsKIAkJcGxhbmVfY3RsIHw9IHNrbF9wbGFuZV9jdGxfYWxwaGEocGxhbmVfc3RhdGUpOwog
CQlwbGFuZV9jdGwgfD0gUExBTkVfQ1RMX1BMQU5FX0dBTU1BX0RJU0FCTEU7CiAKQEAgLTk3Niw3
ICs5NzYsNyBAQCBza2xfcHJvZ3JhbV9wbGFuZShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAog
CiAJcGxhbmVfY3RsIHw9IHNrbF9wbGFuZV9jdGxfY3J0YyhjcnRjX3N0YXRlKTsKIAotCWlmIChE
SVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTAgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpCisJ
aWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMCkKIAkJcGxhbmVfY29sb3JfY3RsID0gcGxh
bmVfc3RhdGUtPmNvbG9yX2N0bCB8CiAJCQlnbGtfcGxhbmVfY29sb3JfY3RsX2NydGMoY3J0Y19z
dGF0ZSk7CiAKQEAgLTEwMTcsNyArMTAxNyw3IEBAIHNrbF9wcm9ncmFtX3BsYW5lKHN0cnVjdCBp
bnRlbF9wbGFuZSAqcGxhbmUsCiAJCWludGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2LCBQTEFORV9D
VVNfQ1RMKHBpcGUsIHBsYW5lX2lkKSwKIAkJCQkgIHBsYW5lX3N0YXRlLT5jdXNfY3RsKTsKIAot
CWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTAgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJp
dikpCisJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMCkKIAkJaW50ZWxfZGVfd3JpdGVf
ZncoZGV2X3ByaXYsIFBMQU5FX0NPTE9SX0NUTChwaXBlLCBwbGFuZV9pZCksCiAJCQkJICBwbGFu
ZV9jb2xvcl9jdGwpOwogCkBAIC0xMjIyLDcgKzEyMjIsNyBAQCBzdGF0aWMgaW50IHNrbF9wbGFu
ZV9jaGVja19kc3RfY29vcmRpbmF0ZXMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfcwogCSAqIHRoYW4gdGhlIGN1cnNvciBlbmRpbmcgbGVzcyB0aGFuIDQgcGl4ZWxzIGZyb20g
dGhlIGxlZnQgZWRnZSBvZiB0aGUKIAkgKiBzY3JlZW4gbWF5IGNhdXNlIEZJRk8gdW5kZXJmbG93
IGFuZCBkaXNwbGF5IGNvcnJ1cHRpb24uCiAJICovCi0JaWYgKChJU19HRU1JTklMQUtFKGRldl9w
cml2KSB8fCBJU19DQU5OT05MQUtFKGRldl9wcml2KSkgJiYKKwlpZiAoSVNfRElTUExBWV9WRVIo
ZGV2X3ByaXYsIDEwKSAmJgogCSAgICAoY3J0Y194ICsgY3J0Y193IDwgNCB8fCBjcnRjX3ggPiBw
aXBlX3NyY193IC0gNCkpIHsKIAkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sCiAJCQkgICAg
InJlcXVlc3RlZCBwbGFuZSBYICVzIHBvc2l0aW9uICVkIGludmFsaWQgKHZhbGlkIHJhbmdlICVk
LSVkKVxuIiwKQEAgLTEyNjIsNyArMTI2Miw3IEBAIHN0YXRpYyBpbnQgc2tsX3BsYW5lX21heF9z
Y2FsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJICogdGhlIGJlc3QgY2Fz
ZS4KIAkgKiBGSVhNRSBuZWVkIHRvIHByb3Blcmx5IGNoZWNrIHRoaXMgbGF0ZXIuCiAJICovCi0J
aWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMCB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2
KSB8fAorCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTAgfHwKIAkgICAgIWludGVsX2Zv
cm1hdF9pbmZvX2lzX3l1dl9zZW1pcGxhbmFyKGZiLT5mb3JtYXQsIGZiLT5tb2RpZmllcikpCiAJ
CXJldHVybiAweDMwMDAwIC0gMTsKIAllbHNlCkBAIC0xNjg3LDcgKzE2ODcsNyBAQCBzdGF0aWMg
aW50IHNrbF9wbGFuZV9jaGVjayhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwK
IAogCXBsYW5lX3N0YXRlLT5jdGwgPSBza2xfcGxhbmVfY3RsKGNydGNfc3RhdGUsIHBsYW5lX3N0
YXRlKTsKIAotCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTAgfHwgSVNfR0VNSU5JTEFL
RShkZXZfcHJpdikpCisJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMCkKIAkJcGxhbmVf
c3RhdGUtPmNvbG9yX2N0bCA9IGdsa19wbGFuZV9jb2xvcl9jdGwoY3J0Y19zdGF0ZSwKIAkJCQkJ
CQkgICAgIHBsYW5lX3N0YXRlKTsKIApAQCAtMTcxOSw3ICsxNzE5LDcgQEAgc3RhdGljIGJvb2wg
c2tsX3BsYW5lX2hhc19wbGFuYXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAog
CWlmIChJU19TS1lMQUtFKGRldl9wcml2KSB8fCBJU19CUk9YVE9OKGRldl9wcml2KSkKIAkJcmV0
dXJuIGZhbHNlOwogCi0JaWYgKElTX0RJU1BMQVlfVkVSKGRldl9wcml2LCA5KSAmJiAhSVNfR0VN
SU5JTEFLRShkZXZfcHJpdikgJiYgcGlwZSA9PSBQSVBFX0MpCisJaWYgKElTX0RJU1BMQVlfVkVS
KGRldl9wcml2LCA5KSAmJiBwaXBlID09IFBJUEVfQykKIAkJcmV0dXJuIGZhbHNlOwogCiAJaWYg
KHBsYW5lX2lkICE9IFBMQU5FX1BSSU1BUlkgJiYgcGxhbmVfaWQgIT0gUExBTkVfU1BSSVRFMCkK
QEAgLTIwMTMsNyArMjAxMyw3IEBAIHNrbF91bml2ZXJzYWxfcGxhbmVfY3JlYXRlKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJcGxhbmUtPm1pbl93aWR0aCA9IGljbF9wbGFu
ZV9taW5fd2lkdGg7CiAJCXBsYW5lLT5tYXhfd2lkdGggPSBpY2xfcGxhbmVfbWF4X3dpZHRoOwog
CQlwbGFuZS0+bWF4X2hlaWdodCA9IGljbF9wbGFuZV9tYXhfaGVpZ2h0OwotCX0gZWxzZSBpZiAo
RElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEwIHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKSB7
CisJfSBlbHNlIGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTApIHsKIAkJcGxhbmUtPm1h
eF93aWR0aCA9IGdsa19wbGFuZV9tYXhfd2lkdGg7CiAJCXBsYW5lLT5tYXhfaGVpZ2h0ID0gc2ts
X3BsYW5lX21heF9oZWlnaHQ7CiAJfSBlbHNlIHsKQEAgLTIwMzksNyArMjAzOSw3IEBAIHNrbF91
bml2ZXJzYWxfcGxhbmVfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwK
IAlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDExKQogCQlmb3JtYXRzID0gaWNsX2dldF9w
bGFuZV9mb3JtYXRzKGRldl9wcml2LCBwaXBlLAogCQkJCQkJcGxhbmVfaWQsICZudW1fZm9ybWF0
cyk7Ci0JZWxzZSBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEwIHx8IElTX0dFTUlOSUxB
S0UoZGV2X3ByaXYpKQorCWVsc2UgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMCkKIAkJ
Zm9ybWF0cyA9IGdsa19nZXRfcGxhbmVfZm9ybWF0cyhkZXZfcHJpdiwgcGlwZSwKIAkJCQkJCXBs
YW5lX2lkLCAmbnVtX2Zvcm1hdHMpOwogCWVsc2UKQEAgLTIwODUsNyArMjA4NSw3IEBAIHNrbF91
bml2ZXJzYWxfcGxhbmVfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwK
IAogCXN1cHBvcnRlZF9jc2MgPSBCSVQoRFJNX0NPTE9SX1lDQkNSX0JUNjAxKSB8IEJJVChEUk1f
Q09MT1JfWUNCQ1JfQlQ3MDkpOwogCi0JaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMCB8
fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkKKwlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49
IDEwKQogCQlzdXBwb3J0ZWRfY3NjIHw9IEJJVChEUk1fQ09MT1JfWUNCQ1JfQlQyMDIwKTsKIAog
CWRybV9wbGFuZV9jcmVhdGVfY29sb3JfcHJvcGVydGllcygmcGxhbmUtPmJhc2UsCkBAIC0yMTY1
LDcgKzIxNjUsNyBAQCBza2xfZ2V0X2luaXRpYWxfcGxhbmVfY29uZmlnKHN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjLAogCWVsc2UKIAkJcGl4ZWxfZm9ybWF0ID0gdmFsICYgUExBTkVfQ1RMX0ZPUk1B
VF9NQVNLOwogCi0JaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMCB8fCBJU19HRU1JTklM
QUtFKGRldl9wcml2KSkgeworCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTApIHsKIAkJ
YWxwaGEgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LAogCQkJCSAgICAgIFBMQU5FX0NPTE9SX0NU
TChwaXBlLCBwbGFuZV9pZCkpOwogCQlhbHBoYSAmPSBQTEFORV9DT0xPUl9BTFBIQV9NQVNLOwot
LSAKMi4yNS40CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
