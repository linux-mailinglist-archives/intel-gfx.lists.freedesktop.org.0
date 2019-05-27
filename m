Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD7A2BA2E
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 20:36:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45F0A89A1E;
	Mon, 27 May 2019 18:36:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F3A389A14
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 18:36:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 May 2019 11:36:26 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga002.jf.intel.com with ESMTP; 27 May 2019 11:36:22 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4RIaJD9007368; Mon, 27 May 2019 19:36:21 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 May 2019 18:35:58 +0000
Message-Id: <20190527183613.17076-3-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190527183613.17076-1-michal.wajdeczko@intel.com>
References: <20190527183613.17076-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 02/17] drm/i915/guc: Don't allow GuC
 submission
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RHVlIHRvIHRoZSB1cGNvbWluZyBjaGFuZ2VzIHRvIHRoZSBHdUMgQUJJIGludGVyZmFjZSwgd2Ug
bXVzdApkaXNhYmxlIEd1QyBzdWJtaXNzaW9uIG1vZGUgdW50aWwgZmluYWwgQUJJIHdpbGwgYmUg
YXZhaWxhYmxlCm9uIGFsbCBHdUMgZmlybXdhcmVzLgoKVG8gYXZvaWQgcmVncmVzc2lvbnMgb24g
c3lzdGVtcyBjb25maWd1cmVkIHRvIHJ1biB3aXRoIG5vIGxvbmdlcgpzdXBwb3J0ZWQgY29uZmln
dXJhdGlvbiAiZW5hYmxlX2d1Yz0zIiBvciAiZW5hYmxlX2d1Yz0xIiBjbGVhcgpHdUMgc3VibWlz
c2lvbiBiaXQuCgp2MjogZm9yY2Ugc3dpdGNoIHRvIG5vbi1HdUMgc3VibWlzc2lvbiBtb2RlCnYz
OiB1c2UgR0VNX0JVR19PTiAoSm9vbmFzKQoKU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3pr
byA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CkNjOiBKb29uYXMgTGFodGluZW4gPGpvb25h
cy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4K
Q2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5j
b20+CkNjOiBKb2huIFNwb3Rzd29vZCA8am9obi5hLnNwb3Rzd29vZEBpbnRlbC5jb20+CkNjOiBW
aW5heSBCZWxnYXVta2FyIDx2aW5heS5iZWxnYXVta2FyQGludGVsLmNvbT4KQ2M6IFRvbnkgWWUg
PHRvbnkueWVAaW50ZWwuY29tPgpDYzogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FA
aW50ZWwuY29tPgpDYzogSmVmZiBNY2dlZSA8amVmZi5tY2dlZUBpbnRlbC5jb20+CkNjOiBBbnRv
bmlvIEFyZ2Vuemlhbm8gPGFudG9uaW8uYXJnZW56aWFub0BpbnRlbC5jb20+CkNjOiBTdWphcml0
aGEgU3VuZGFyZXNhbiA8c3VqYXJpdGhhLnN1bmRhcmVzYW5AaW50ZWwuY29tPgpDYzogTWFydGlu
IFBlcmVzIDxtYXJ0aW4ucGVyZXNAbGludXguaW50ZWwuY29tPgpBY2tlZC1ieTogTWFydGluIFBl
cmVzIDxtYXJ0aW4ucGVyZXNAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3VjLmMgfCAxMiArKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMKaW5kZXggMWEyNjVmYmQ5NWM3Li43NTk0
M2VhNGU2NWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYwpAQCAtMTMwLDYgKzEzMCwxNSBAQCBz
dGF0aWMgdm9pZCBzYW5pdGl6ZV9vcHRpb25zX2Vhcmx5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KQogCQkJCQkgICJubyBIdUMgZmlybXdhcmUiKTsKIAl9CiAKKwkvKiBYWFg6IEd1QyBz
dWJtaXNzaW9uIGlzIHVuYXZhaWxhYmxlIGZvciBub3cgKi8KKwlpZiAoaW50ZWxfdWNfaXNfdXNp
bmdfZ3VjX3N1Ym1pc3Npb24oaTkxNSkpIHsKKwkJRFJNX0lORk8oIkluY29tcGF0aWJsZSBvcHRp
b24gZGV0ZWN0ZWQ6ICVzPSVkLCAlcyFcbiIsCisJCQkgImVuYWJsZV9ndWMiLCBpOTE1X21vZHBh
cmFtcy5lbmFibGVfZ3VjLAorCQkJICJHdUMgc3VibWlzc2lvbiBub3Qgc3VwcG9ydGVkIik7CisJ
CURSTV9JTkZPKCJTd2l0Y2hpbmcgdG8gbm9uLUd1QyBzdWJtaXNzaW9uIG1vZGUhXG4iKTsKKwkJ
aTkxNV9tb2RwYXJhbXMuZW5hYmxlX2d1YyAmPSB+RU5BQkxFX0dVQ19TVUJNSVNTSU9OOworCX0K
KwogCS8qIEEgbmVnYXRpdmUgdmFsdWUgbWVhbnMgInVzZSBwbGF0Zm9ybS9jb25maWcgZGVmYXVs
dCIgKi8KIAlpZiAoaTkxNV9tb2RwYXJhbXMuZ3VjX2xvZ19sZXZlbCA8IDApCiAJCWk5MTVfbW9k
cGFyYW1zLmd1Y19sb2dfbGV2ZWwgPQpAQCAtMjk4LDYgKzMwNyw5IEBAIGludCBpbnRlbF91Y19p
bml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCWlmICghSEFTX0dVQyhpOTE1KSkK
IAkJcmV0dXJuIC1FTk9ERVY7CiAKKwkvKiBYWFg6IEd1QyBzdWJtaXNzaW9uIGlzIHVuYXZhaWxh
YmxlIGZvciBub3cgKi8KKwlHRU1fQlVHX09OKFVTRVNfR1VDX1NVQk1JU1NJT04oaTkxNSkpOwor
CiAJcmV0ID0gaW50ZWxfZ3VjX2luaXQoZ3VjKTsKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0Owot
LSAKMi4xOS4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
