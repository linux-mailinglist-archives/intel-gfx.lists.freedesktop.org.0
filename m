Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5ED134A4C
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 19:13:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07EAE6E264;
	Wed,  8 Jan 2020 18:13:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B1BB6E225
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 18:13:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 10:13:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,410,1571727600"; d="scan'208";a="223001322"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 08 Jan 2020 10:13:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Jan 2020 20:13:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jan 2020 20:12:40 +0200
Message-Id: <20200108181242.13650-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
References: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/9] drm/i915/sdvo: Make SDVO deal with HDMI
 pixel repeat
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldp
dGggU0RWTyB0aGUgcGlwZSBjb25maWcgcGl4ZWxfbXVsdGlwbGllciBvbmx5IGNvbmNlcm5zIGl0
c2VsZiB3aXRoIHRoZQpkYXRhIG9uIHRoZSBTRFZPIGJ1cy4gQW55IEhETUkgc3BlY2lmaWMgcGl4
ZWwgcmVwZWF0IG11c3QgYmUgaGFuZGxlZCBieQp0aGUgU0RWTyBkZXZpY2UgaXRzZWxmLiBUbyBk
byB0aGF0IHNpbXBseSBjb25maWd1cmUgdGhlIFNEVk8gcGl4ZWwKcmVwbGljYXRpb24gZmFjdG9y
IGFwcHJvcHJpYXRlbHkuIFdlIGFscmVhZHkgc2V0IHVwIHRoZSBpbmZvZnJhbWUgUFJCCnZhbHVl
cyBjb3JyZWN0bHkgdmlhIHRoZSBpbmZvZnJhbWUgaGVscGVycy4KClRoZXJlIGlzIG5vIGNhcCB3
ZSBjYW4gY2hlY2sgZm9yIHRoaXMuIFRoZSBzcGVjIHNheXMgdGhhdCAxWCwyWCw0WCBhcmUKbWFu
ZGF0b3J5LCBhbnl0aGluZyBlbHNlIGlzIG9wdGlvbmFsLiAxWCBhbmQgMlggYXJlIGFsbCB3ZSBu
ZWVkIHNvCndlIHNob3VsZCBiZSBhYmxlIHRvIGFzc3VtZSB0aGV5IHdvcmsuCgpTaWduZWQtb2Zm
LWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jIHwgMjcgKysrKysrKysr
KysrKysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
c2R2by5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMKaW5kZXgg
YTBiYmQ3MjhhYTU0Li4zNGQ1YmQ3NTBkZTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfc2R2by5jCkBAIC05NDMsNiArOTQzLDEzIEBAIHN0YXRpYyBib29sIGludGVsX3Nk
dm9fc2V0X2NvbG9yaW1ldHJ5KHN0cnVjdCBpbnRlbF9zZHZvICppbnRlbF9zZHZvLAogCXJldHVy
biBpbnRlbF9zZHZvX3NldF92YWx1ZShpbnRlbF9zZHZvLCBTRFZPX0NNRF9TRVRfQ09MT1JJTUVU
UlksICZtb2RlLCAxKTsKIH0KIAorc3RhdGljIGJvb2wgaW50ZWxfc2R2b19zZXRfcGl4ZWxfcmVw
bGljYXRpb24oc3RydWN0IGludGVsX3Nkdm8gKmludGVsX3Nkdm8sCisJCQkJCSAgICAgdTggcGl4
ZWxfcmVwZWF0KQoreworCXJldHVybiBpbnRlbF9zZHZvX3NldF92YWx1ZShpbnRlbF9zZHZvLCBT
RFZPX0NNRF9TRVRfUElYRUxfUkVQTEksCisJCQkJICAgICZwaXhlbF9yZXBlYXQsIDEpOworfQor
CiBzdGF0aWMgYm9vbCBpbnRlbF9zZHZvX3NldF9hdWRpb19zdGF0ZShzdHJ1Y3QgaW50ZWxfc2R2
byAqaW50ZWxfc2R2bywKIAkJCQkgICAgICAgdTggYXVkaW9fc3RhdGUpCiB7CkBAIC0xNDkzLDYg
KzE1MDAsOSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9zZHZvX3ByZV9lbmFibGUoc3RydWN0IGludGVs
X2VuY29kZXIgKmludGVsX2VuY29kZXIsCiAJCQkJCSAgIFNEVk9fQ09MT1JJTUVUUllfUkdCMjIw
IDoKIAkJCQkJICAgU0RWT19DT0xPUklNRVRSWV9SR0IyNTYpOwogCQlpbnRlbF9zZHZvX3NldF9h
dmlfaW5mb2ZyYW1lKGludGVsX3Nkdm8sIGNydGNfc3RhdGUpOworCQlpbnRlbF9zZHZvX3NldF9w
aXhlbF9yZXBsaWNhdGlvbihpbnRlbF9zZHZvLAorCQkJCQkJICEhKGFkanVzdGVkX21vZGUtPmZs
YWdzICYKKwkJCQkJCSAgICBEUk1fTU9ERV9GTEFHX0RCTENMSykpOwogCX0gZWxzZQogCQlpbnRl
bF9zZHZvX3NldF9lbmNvZGUoaW50ZWxfc2R2bywgU0RWT19FTkNPREVfRFZJKTsKIApAQCAtMTgz
OSwxNyArMTg0OSwyNiBAQCBpbnRlbF9zZHZvX21vZGVfdmFsaWQoc3RydWN0IGRybV9jb25uZWN0
b3IgKmNvbm5lY3RvciwKIAlzdHJ1Y3QgaW50ZWxfc2R2b19jb25uZWN0b3IgKmludGVsX3Nkdm9f
Y29ubmVjdG9yID0KIAkJdG9faW50ZWxfc2R2b19jb25uZWN0b3IoY29ubmVjdG9yKTsKIAlpbnQg
bWF4X2RvdGNsayA9IHRvX2k5MTUoY29ubmVjdG9yLT5kZXYpLT5tYXhfZG90Y2xrX2ZyZXE7CisJ
Ym9vbCBoYXNfaGRtaV9zaW5rID0gaW50ZWxfaGFzX2hkbWlfc2luayhpbnRlbF9zZHZvLCBjb25u
ZWN0b3ItPnN0YXRlKTsKKwlpbnQgY2xvY2sgPSBtb2RlLT5jbG9jazsKIAogCWlmIChtb2RlLT5m
bGFncyAmIERSTV9NT0RFX0ZMQUdfREJMU0NBTikKIAkJcmV0dXJuIE1PREVfTk9fREJMRVNDQU47
CiAKLQlpZiAoaW50ZWxfc2R2by0+cGl4ZWxfY2xvY2tfbWluID4gbW9kZS0+Y2xvY2spCi0JCXJl
dHVybiBNT0RFX0NMT0NLX0xPVzsKIAotCWlmIChpbnRlbF9zZHZvLT5waXhlbF9jbG9ja19tYXgg
PCBtb2RlLT5jbG9jaykKKwlpZiAoY2xvY2sgPiBtYXhfZG90Y2xrKQogCQlyZXR1cm4gTU9ERV9D
TE9DS19ISUdIOwogCi0JaWYgKG1vZGUtPmNsb2NrID4gbWF4X2RvdGNsaykKKwlpZiAobW9kZS0+
ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX0RCTENMSykgeworCQlpZiAoIWhhc19oZG1pX3NpbmspCisJ
CQlyZXR1cm4gTU9ERV9DTE9DS19MT1c7CisJCWNsb2NrICo9IDI7CisJfQorCisJaWYgKGludGVs
X3Nkdm8tPnBpeGVsX2Nsb2NrX21pbiA+IGNsb2NrKQorCQlyZXR1cm4gTU9ERV9DTE9DS19MT1c7
CisKKwlpZiAoaW50ZWxfc2R2by0+cGl4ZWxfY2xvY2tfbWF4IDwgY2xvY2spCiAJCXJldHVybiBN
T0RFX0NMT0NLX0hJR0g7CiAKIAlpZiAoSVNfTFZEUyhpbnRlbF9zZHZvX2Nvbm5lY3RvcikpIHsK
LS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
