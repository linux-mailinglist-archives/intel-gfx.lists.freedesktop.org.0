Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9043184CD2
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 17:48:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EB7D6E2B2;
	Fri, 13 Mar 2020 16:48:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 744A16E2B2
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 16:48:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 09:48:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,549,1574150400"; d="scan'208";a="246737854"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 13 Mar 2020 09:48:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Mar 2020 18:48:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Mar 2020 18:48:18 +0200
Message-Id: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/13] drm/i915: Port sync for skl+
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkkg
Z290IHRpcmVkIG9mIHdhaXRpbmcgZm9yIHRoZSBza2wrIHBvcnQgc3luYyB0byBtYXRlcmlhbGl6
ZSBzbyBJCndlbnQgYWhlYWQgYW5kIGRpZCBpdCBteXNlbGYuIE5vdyB3ZSBjYW4gbWF5YmUgZ2V0
IHRoaXMgaXMgaW50bwp0aGUgaGFuZHMgb2YgYWN0dWFsIHVzZXJzLgoKSW4gdGhlIHByb2Nlc3Mg
SSBhbHNvIGNsZWFyZWQgb3V0IGFsbCB0aGUgY29weSBwYXN0YSB0aGF0IHdhcwphZGRlZCBmb3Ig
cG9ydCBzeW5jLiBMT0Mgc3RpbGwgd2VudCB1cCB0aG91Z2gsIGJ1dCBJIHRoaW5rIHRoYXQncwpq
dXN0IGR1ZSB0byBwbHVtYmluZyB0aGUgYXRvbWljIHN0YXRlIHRvIHRoZSBlbmNvZGVyIGhvb2tz
LiBXaXRob3V0CnRoYXQgcGF0Y2ggSSB0aGluayB0aGlzIHJlc3VsdHMgaW4gYSBzbGlnaHQgbmV0
IHJlZHVjdGlvbiBvZiBjb2RlLgoKTGlnaHRseSB0ZXN0ZWQgb24gYSBLQkwgYnkgZmFraW5nIHRo
ZSB0aWxlIGluZm8gZm9yIGEgcGFpcgpvZiBleHRlbmFsIG1vbml0b3JzICh3ZWxsLCBhY3R1YWxs
eSBhIHNpbmdsZSBtb25pdG9yIHBsdWdnZWQgaW4KdmlhIERQIGFuZCBIRE1JLT5MU1BDT04tPkRQ
IGF0IHRoZSBzYW1lIHRpbWUpLgoKT2gsIGFuZCBJIGluY2x1ZGVkIGEgTVNUIC5jb21wdXRlX2Nv
bmZpZ19sYXRlKCkgY29udmVyc2lvbiBhcyB3ZWxsCnNpbmNlIEkgZmlndXJlZCBJJ2Qgc2F2ZSBD
SSBhIGZldyBjeWNsZXMgb2YgdGVzdGluZyB0aGF0IGFsb25lLiBBbHNvCkkgYWxyZWFkeSBoYWQg
aXQgaW4gbXkgV0lQIGJyYW5jaC4KClZpbGxlIFN5cmrDpGzDpCAoMTMpOgogIGRybS9pOTE1L21z
dDogVXNlIC5jb21wdXRlX2NvbmZpZ19sYXRlKCkgdG8gY29tcHV0ZSBtYXN0ZXIgdHJhbnNjb2Rl
cgogIGRybS9pOTE1OiBNb3ZlIFRSQU5TX0RESV9GVU5DX0NUTDIgcHJvZ3JhbW1pbmcgd2hlcmUg
aXQgYmVsb25ncwogIGRybS9pOTE1OiBEcm9wIHVzbGVzcyBtYXN0ZXJfdHJhbnNjb2RlciBhc3Np
Z25tZW50cwogIGRybS9pOTE1OiBNb3ZlIGljbF9nZXRfdHJhbnNfcG9ydF9zeW5jX2NvbmZpZygp
IGludG8gdGhlIERESSBjb2RlCiAgZHJtL2k5MTU6IFVzZSBSRUdfRklFTERfUFJFUCgpICYgY28u
IGZvciBUUkFOU19ERElfRlVOQ19DVEwyCiAgZHJtL2k5MTU6IEluY2x1ZGUgcG9ydCBzeW5jIHN0
YXRlIGluIHRoZSBzdGF0ZSBkdW1wCiAgZHJtL2k5MTU6IFN0b3JlIGNwdV90cmFuc2NvZGVyX21h
c2sgaW4gZGV2aWNlIGluZm8KICBkcm0vaTkxNTogSW1wbGVtZW50IHBvcnQgc3luYyBmb3IgU0tM
KwogIGRybS9pOTE1OiBFbGltaW5hdGUgcG9ydCBzeW5jIGNvcHkgcGFzdGEKICBkcm0vaTkxNTog
Rml4IHBvcnQgc3luYyBjb2RlIHRvIHdvcmsgd2l0aCA+MiBwaXBlcwogIGRybS9pOTE1OiBEbyBw
aXBlIHVwZGF0ZXMgYWZ0ZXIgZW5hYmxlcyBmb3IgZXZlcnlvbmUKICBkcm0vaTkxNTogUGFzcyBh
dG9taWMgc3RhdGUgdG8gZW5jb2RlciBob29rcwogIGRybS9pOTE1OiBNb3ZlIHRoZSBwb3J0IHN5
bmMgRFBfVFBfQ1RMIHN0dWZmIHRvIHRoZSBlbmNvZGVyIGhvb2sKCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ljbF9kc2kuYyAgICAgICAgfCAgMTUgKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY3J0LmMgICAgICB8ICAzMyArLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgIHwgMjg5ICsrKysrKysrKy0tLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmggICAgICB8ICAgMyArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgMzg0ICsrKysrLS0tLS0tLS0t
LS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggIHwgICA4
ICstCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgMjEg
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAgICB8ICA2MSAr
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgICB8IDExOSAr
KystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHZvLmMgICAgICB8ICAg
OSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMgICAgIHwgICAz
ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuaCAgICAgfCAgIDQg
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jICAgICB8ICA1OSAr
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHZkcy5jICAgICB8ICAyMiAr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jICAgIHwgICAzICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BhbmVsLmggICAgfCAgIDMgKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jICAgICB8ICAxNyArLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90di5jICAgICAgIHwgICA5ICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2kuYyAgICAgICAgfCAgMTIgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICAgMiArLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyAgICAgICAgICAgICAgIHwgIDIzICstCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAgMTMgKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgICAgICB8ICA0MSArLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaCAgICAgIHwgICAxICsKIDI0IGZpbGVz
IGNoYW5nZWQsIDYyMSBpbnNlcnRpb25zKCspLCA1MzMgZGVsZXRpb25zKC0pCgotLSAKMi4yNC4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
