Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 046C82198A
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 16:06:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25D47898EA;
	Fri, 17 May 2019 14:06:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27CD4898EA;
 Fri, 17 May 2019 14:06:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 07:06:45 -0700
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 07:06:42 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2019 16:06:17 +0200
Message-Id: <20190517140617.31187-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH] drm/i915: Tolerate file owned GEM contexts
 on hot unbind
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
Cc: Janusz Krzysztofik <janusz.krzysztofik@intel.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAaW50ZWwuY29tPgoK
RHVyaW5nIGk5MTVfZHJpdmVyX3VubG9hZCgpLCBHRU0gY29udGV4dHMgYXJlIHZlcmlmaWVkIHJl
c3RyaWN0aXZlbHkKaW5zaWRlIGk5MTVfZ2VtX2ZpbmkoKSBpZiB0aGV5IGRvbid0IGNvbnN1bWUg
c2hhcmVkIHJlc291cmNlcyB3aGljaApzaG91bGQgYmUgY2xlYW5lZCB1cCBiZWZvcmUgdGhlIGRy
aXZlciBpcyByZWxlYXNlZC4gIElmIHRob3NlIGNoZWNrcwpkb24ndCByZXN1bHQgaW4ga2VybmVs
IHBhbmljLCBvbmUgbW9yZSBjaGVjayBpcyBwZXJmb3JtZWQgYXQgdGhlIGVuZCBvZgppOTE1X2dl
bV9maW5pKCkgd2hpY2ggaXNzdWVzIGEgV0FSTl9PTigpIGlmIEdFTSBjb250ZXh0cyBzdGlsbCBl
eGlzdC4KClNvbWUgR0VNIGNvbnRleHRzIGFyZSBhbGxvY2F0ZWQgdW5jb25kaXRpb25hbGx5IG9u
IGRldmljZSBmaWxlIG9wZW4sCm9uZSBwZXIgZWFjaCBmaWxlIGRlc2NyaXB0b3IsIGFuZCBhcmUg
a2VwdCBvcGVuIHVudGlsIHRob3NlIGZpbGUKZGVzY3JpcHRvcnMgYXJlIGNsb3NlZC4gIFNpbmNl
IG9wZW4gZmlsZSBkZXNjcmlwdG9ycyBwcmV2ZW50IHRoZSBkcml2ZXIKbW9kdWxlIGZyb20gYmVp
bmcgdW5sb2FkZWQsIHRoYXQgcHJvdGVjdHMgdGhlIGRyaXZlciBmcm9tIGJlaW5nCnJlbGVhc2Vk
IHdoaWxlIGNvbnRleHRzIGFyZSBzdGlsbCBvcGVuLiAgSG93ZXZlciwgdGhhdCdzIG5vdCB0aGUg
Y2FzZQpvbiBkcml2ZXIgdW5iaW5kIG9yIGRldmljZSB1bnBsdWcgc3lzZnMgb3BlcmF0aW9ucyB3
aGljaCBhcmUgZXhlY3V0ZWQKcmVnYXJkbGVzcyBvZiBvcGVuIGZpbGUgZGVzY3JpcHRvcnMuCgpU
byBwcm90ZWN0IGtlcm5lbCByZXNvdXJjZXMgZnJvbSBiZWluZyBhY2Nlc3NlZCBieSB0aG9zZSBv
cGVuIGZpbGUKZGVjcmlwdG9ycyB3aGlsZSBkcml2ZXIgdW5iaW5kIG9yIGRldmljZSB1bnBsdWcg
b3BlcmF0aW9uIGlzIGluCnByb2dyZXNzLCB0aGUgZHJpdmVyIG5vdyBjYWxscyBkcm1fZGV2aWNl
X3VucGx1ZygpIGF0IHRoZSBiZWdpbm5pbmcgb2YKdGhhdCBwcm9jZXNzIGFuZCByZWxpZXMgb24g
dGhlIERSTSBsYXllciB0byBwcm92aWRlIHN1Y2ggcHJvdGVjdGlvbi4KClRha2luZyBhbGwgYWJv
dmUgaW5mb3JtYXRpb24gaW50byBhY2NvdW50LCBhcyBzb29uIGFzIHNoYXJlZCByZXNvdXJjZXMK
bm90IGFzc29jaWF0ZWQgd2l0aCBzcGVjaWZpYyBmaWxlIGRlc2NyaXB0b3JzIGFyZSBjbGVhbmVk
IHVwLCBpdCBzaG91bGQKYmUgc2FmZSB0byBwb3N0cG9uZSBjb21wbGV0aW9uIG9mIGRyaXZlciBy
ZWxlYXNlIHVudGlsIHVzZXJzIG9mIHRob3NlCm9wZW4gZmlsZSBkZWNyaXB0b3JzIGdpdmUgdXAg
b24gZXJyb3JzIGFuZCBjbG9zZSB0aGVtLgoKV2hlbiBkZXZpY2UgaGFzIGJlZW4gbWFya2VkIHVu
cGx1Z2dlZCwgdXNlIFdBUk5fT04oKSBjb25kaXRpb25hbGx5IHNvCnRoZSB3YXJuaW5nIGlzIGRp
c3BsYXllZCBvbmx5IGlmIGEgR0VNIGNvbnRleHQgbm90IGFzc29jaWF0ZWQgd2l0aCBhCmZpbGUg
ZGVzY3JpcHRvciBpcyBzdGlsbCBhbGxvY2F0ZWQuCgpTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6
eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW0uYyB8IDEyICsrKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDEx
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwppbmRl
eCA1NGYyN2NhYmFlMmEuLmMwMGI2ZGJhZjRmNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCkBA
IC00NjcwLDcgKzQ2NzAsMTcgQEAgdm9pZCBpOTE1X2dlbV9maW5pKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKIAogCWk5MTVfZ2VtX2RyYWluX2ZyZWVkX29iamVjdHMoZGV2X3By
aXYpOwogCi0JV0FSTl9PTighbGlzdF9lbXB0eSgmZGV2X3ByaXYtPmNvbnRleHRzLmxpc3QpKTsK
KwlpZiAoZHJtX2Rldl9pc191bnBsdWdnZWQoJmRldl9wcml2LT5kcm0pKSB7CisJCXN0cnVjdCBp
OTE1X2dlbV9jb250ZXh0ICpjdHgsICpjbjsKKworCQlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUo
Y3R4LCBjbiwgJmRldl9wcml2LT5jb250ZXh0cy5saXN0LAorCQkJCQkgbGluaykgeworCQkJV0FS
Tl9PTihJU19FUlJfT1JfTlVMTChjdHgtPmZpbGVfcHJpdikpOworCQkJYnJlYWs7CisJCX0KKwl9
IGVsc2UgeworCQlXQVJOX09OKCFsaXN0X2VtcHR5KCZkZXZfcHJpdi0+Y29udGV4dHMubGlzdCkp
OworCX0KIH0KIAogdm9pZCBpOTE1X2dlbV9pbml0X21taW8oc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
