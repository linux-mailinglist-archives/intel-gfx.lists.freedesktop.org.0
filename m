Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1716CCEB4C
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 19:58:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5C8D89E39;
	Mon,  7 Oct 2019 17:58:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC3416E622;
 Mon,  7 Oct 2019 17:33:58 +0000 (UTC)
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9728B206BB;
 Mon,  7 Oct 2019 17:33:56 +0000 (UTC)
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Date: Mon,  7 Oct 2019 19:33:46 +0200
Message-Id: <20191007173346.9379-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Mon, 07 Oct 2019 17:58:46 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1570469638;
 bh=FT+MLA1ZIIX8wzSlmPb5TXiwbG6yez8RYzTLIv6rC7c=;
 h=From:To:Cc:Subject:Date:From;
 b=r0OEN3WU7Q3ZarmeWoLevv5a+93B7NdOU9TMRupipQw2pDKlvCkXHOFaYMrwIBzRv
 cjf020p1xQgq6D/qkoYurtv/dbvUsvD6Qdvv45imHRfguE6pRfyxgwoHvcLEDhyUkU
 0mkpxm/hb0WyBgWF1Uj5I961mCff+vJD9v0GZPVM=
Subject: [Intel-gfx] [PATCH v3] drm/i915: Fix Kconfig indentation
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRqdXN0IGluZGVudGF0aW9uIGZyb20gc3BhY2VzIHRvIHRhYiAoK29wdGlvbmFsIHR3byBzcGFj
ZXMpIGFzIGluCmNvZGluZyBzdHlsZSB3aXRoIGNvbW1hbmQgbGlrZToKICAgICQgc2VkIC1lICdz
L14gICAgICAgIC9cdC8nIC1pICovS2NvbmZpZwoKU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtv
emxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgoKLS0tCgpDaGFuZ2VzIHNpbmNlIHYyOgoxLiBTcGxp
dCBBTUQgYW5kIGk5MTUgdG8gc2VwYXJhdGUgcGF0Y2hlcy4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9LY29uZmlnICAgICAgIHwgIDEyICstLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZp
Zy5kZWJ1ZyB8IDE0NCArKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLQogMiBmaWxlcyBjaGFu
Z2VkLCA3OCBpbnNlcnRpb25zKCspLCA3OCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZwpp
bmRleCAwZDIxNDAyOTQ1YWIuLjNjNmQ1N2RmMjYyZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvS2NvbmZpZworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnCkBAIC03
Niw3ICs3Niw3IEBAIGNvbmZpZyBEUk1fSTkxNV9DQVBUVVJFX0VSUk9SCiAJICBUaGlzIG9wdGlv
biBlbmFibGVzIGNhcHR1cmluZyB0aGUgR1BVIHN0YXRlIHdoZW4gYSBoYW5nIGlzIGRldGVjdGVk
LgogCSAgVGhpcyBpbmZvcm1hdGlvbiBpcyB2aXRhbCBmb3IgdHJpYWdpbmcgaGFuZ3MgYW5kIGFz
c2lzdHMgaW4gZGVidWdnaW5nLgogCSAgUGxlYXNlIHJlcG9ydCBhbnkgaGFuZyB0bwotICAgICAg
ICAgICAgaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9lbnRlcl9idWcuY2dpP3Byb2R1Y3Q9
RFJJCisJICAgIGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvZW50ZXJfYnVnLmNnaT9wcm9k
dWN0PURSSQogCSAgZm9yIHRyaWFnaW5nLgogCiAJICBJZiBpbiBkb3VidCwgc2F5ICJZIi4KQEAg
LTEwNSwxMSArMTA1LDExIEBAIGNvbmZpZyBEUk1fSTkxNV9VU0VSUFRSCiAJICBJZiBpbiBkb3Vi
dCwgc2F5ICJZIi4KIAogY29uZmlnIERSTV9JOTE1X0dWVAotICAgICAgICBib29sICJFbmFibGUg
SW50ZWwgR1ZULWcgZ3JhcGhpY3MgdmlydHVhbGl6YXRpb24gaG9zdCBzdXBwb3J0IgotICAgICAg
ICBkZXBlbmRzIG9uIERSTV9JOTE1Ci0gICAgICAgIGRlcGVuZHMgb24gNjRCSVQKLSAgICAgICAg
ZGVmYXVsdCBuCi0gICAgICAgIGhlbHAKKwlib29sICJFbmFibGUgSW50ZWwgR1ZULWcgZ3JhcGhp
Y3MgdmlydHVhbGl6YXRpb24gaG9zdCBzdXBwb3J0IgorCWRlcGVuZHMgb24gRFJNX0k5MTUKKwlk
ZXBlbmRzIG9uIDY0QklUCisJZGVmYXVsdCBuCisJaGVscAogCSAgQ2hvb3NlIHRoaXMgb3B0aW9u
IGlmIHlvdSB3YW50IHRvIGVuYWJsZSBJbnRlbCBHVlQtZyBncmFwaGljcwogCSAgdmlydHVhbGl6
YXRpb24gdGVjaG5vbG9neSBob3N0IHN1cHBvcnQgd2l0aCBpbnRlZ3JhdGVkIGdyYXBoaWNzLgog
CSAgV2l0aCBHVlQtZywgaXQncyBwb3NzaWJsZSB0byBoYXZlIG9uZSBpbnRlZ3JhdGVkIGdyYXBo
aWNzCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLmRlYnVnIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1ZwppbmRleCAwMDc4NmExNDJmZjAuLmVlYTc5
MTI1YjNlYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1Zwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLmRlYnVnCkBAIC0xLDM0ICsxLDM0IEBA
CiAjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKIGNvbmZpZyBEUk1fSTkx
NV9XRVJST1IKLSAgICAgICAgYm9vbCAiRm9yY2UgR0NDIHRvIHRocm93IGFuIGVycm9yIGluc3Rl
YWQgb2YgYSB3YXJuaW5nIHdoZW4gY29tcGlsaW5nIgotICAgICAgICAjIEFzIHRoaXMgbWF5IGlu
YWR2ZXJ0ZW50bHkgYnJlYWsgdGhlIGJ1aWxkLCBvbmx5IGFsbG93IHRoZSB1c2VyCi0gICAgICAg
ICMgdG8gc2hvb3Qgb25lc2VsZiBpbiB0aGUgZm9vdCBpZmYgdGhleSBhaW0gcmVhbGx5IGhhcmQK
LSAgICAgICAgZGVwZW5kcyBvbiBFWFBFUlQKLSAgICAgICAgIyBXZSB1c2UgdGhlIGRlcGVuZGVu
Y3kgb24gIUNPTVBJTEVfVEVTVCB0byBub3QgYmUgZW5hYmxlZCBpbgotICAgICAgICAjIGFsbG1v
ZGNvbmZpZyBvciBhbGx5ZXNjb25maWcgY29uZmlndXJhdGlvbnMKLSAgICAgICAgZGVwZW5kcyBv
biAhQ09NUElMRV9URVNUCisJYm9vbCAiRm9yY2UgR0NDIHRvIHRocm93IGFuIGVycm9yIGluc3Rl
YWQgb2YgYSB3YXJuaW5nIHdoZW4gY29tcGlsaW5nIgorCSMgQXMgdGhpcyBtYXkgaW5hZHZlcnRl
bnRseSBicmVhayB0aGUgYnVpbGQsIG9ubHkgYWxsb3cgdGhlIHVzZXIKKwkjIHRvIHNob290IG9u
ZXNlbGYgaW4gdGhlIGZvb3QgaWZmIHRoZXkgYWltIHJlYWxseSBoYXJkCisJZGVwZW5kcyBvbiBF
WFBFUlQKKwkjIFdlIHVzZSB0aGUgZGVwZW5kZW5jeSBvbiAhQ09NUElMRV9URVNUIHRvIG5vdCBi
ZSBlbmFibGVkIGluCisJIyBhbGxtb2Rjb25maWcgb3IgYWxseWVzY29uZmlnIGNvbmZpZ3VyYXRp
b25zCisJZGVwZW5kcyBvbiAhQ09NUElMRV9URVNUCiAJc2VsZWN0IEhFQURFUl9URVNUCi0gICAg
ICAgIGRlZmF1bHQgbgotICAgICAgICBoZWxwCi0gICAgICAgICAgQWRkIC1XZXJyb3IgdG8gdGhl
IGJ1aWxkIGZsYWdzIGZvciAoYW5kIG9ubHkgZm9yKSBpOTE1LmtvLgotICAgICAgICAgIERvIG5v
dCBlbmFibGUgdGhpcyB1bmxlc3MgeW91IGFyZSB3cml0aW5nIGNvZGUgZm9yIHRoZSBpOTE1Lmtv
IG1vZHVsZS4KKwlkZWZhdWx0IG4KKwloZWxwCisJICBBZGQgLVdlcnJvciB0byB0aGUgYnVpbGQg
ZmxhZ3MgZm9yIChhbmQgb25seSBmb3IpIGk5MTUua28uCisJICBEbyBub3QgZW5hYmxlIHRoaXMg
dW5sZXNzIHlvdSBhcmUgd3JpdGluZyBjb2RlIGZvciB0aGUgaTkxNS5rbyBtb2R1bGUuCiAKLSAg
ICAgICAgICBSZWNvbW1lbmRlZCBmb3IgZHJpdmVyIGRldmVsb3BlcnMgb25seS4KKwkgIFJlY29t
bWVuZGVkIGZvciBkcml2ZXIgZGV2ZWxvcGVycyBvbmx5LgogCi0gICAgICAgICAgSWYgaW4gZG91
YnQsIHNheSAiTiIuCisJICBJZiBpbiBkb3VidCwgc2F5ICJOIi4KIAogY29uZmlnIERSTV9JOTE1
X0RFQlVHCi0gICAgICAgIGJvb2wgIkVuYWJsZSBhZGRpdGlvbmFsIGRyaXZlciBkZWJ1Z2dpbmci
Ci0gICAgICAgIGRlcGVuZHMgb24gRFJNX0k5MTUKLSAgICAgICAgc2VsZWN0IERFQlVHX0ZTCi0g
ICAgICAgIHNlbGVjdCBQUkVFTVBUX0NPVU5UCi0gICAgICAgIHNlbGVjdCBSRUZDT1VOVF9GVUxM
Ci0gICAgICAgIHNlbGVjdCBJMkNfQ0hBUkRFVgotICAgICAgICBzZWxlY3QgU1RBQ0tERVBPVAot
ICAgICAgICBzZWxlY3QgRFJNX0RQX0FVWF9DSEFSREVWCi0gICAgICAgIHNlbGVjdCBYODZfTVNS
ICMgdXNlZCBieSBpZ3QvcG1fcnBtCi0gICAgICAgIHNlbGVjdCBEUk1fVkdFTSAjIHVzZWQgYnkg
aWd0L3ByaW1lX3ZnZW0gKGRtYWJ1ZiBpbnRlcm9wIGNoZWNrcykKLSAgICAgICAgc2VsZWN0IERS
TV9ERUJVR19NTSBpZiBEUk09eQorCWJvb2wgIkVuYWJsZSBhZGRpdGlvbmFsIGRyaXZlciBkZWJ1
Z2dpbmciCisJZGVwZW5kcyBvbiBEUk1fSTkxNQorCXNlbGVjdCBERUJVR19GUworCXNlbGVjdCBQ
UkVFTVBUX0NPVU5UCisJc2VsZWN0IFJFRkNPVU5UX0ZVTEwKKwlzZWxlY3QgSTJDX0NIQVJERVYK
KwlzZWxlY3QgU1RBQ0tERVBPVAorCXNlbGVjdCBEUk1fRFBfQVVYX0NIQVJERVYKKwlzZWxlY3Qg
WDg2X01TUiAjIHVzZWQgYnkgaWd0L3BtX3JwbQorCXNlbGVjdCBEUk1fVkdFTSAjIHVzZWQgYnkg
aWd0L3ByaW1lX3ZnZW0gKGRtYWJ1ZiBpbnRlcm9wIGNoZWNrcykKKwlzZWxlY3QgRFJNX0RFQlVH
X01NIGlmIERSTT15CiAJc2VsZWN0IERSTV9ERUJVR19TRUxGVEVTVAogCXNlbGVjdCBETUFCVUZf
U0VMRlRFU1RTCiAJc2VsZWN0IFNXX1NZTkMgIyBzaWduYWxpbmcgdmFsaWRhdGlvbiBmcmFtZXdv
cmsgKGlndC9zeW5jb2JqKikKQEAgLTM2LDE0ICszNiwxNCBAQCBjb25maWcgRFJNX0k5MTVfREVC
VUcKIAlzZWxlY3QgRFJNX0k5MTVfU0VMRlRFU1QKIAlzZWxlY3QgRFJNX0k5MTVfREVCVUdfUlVO
VElNRV9QTQogCXNlbGVjdCBEUk1fSTkxNV9ERUJVR19NTUlPCi0gICAgICAgIGRlZmF1bHQgbgot
ICAgICAgICBoZWxwCi0gICAgICAgICAgQ2hvb3NlIHRoaXMgb3B0aW9uIHRvIHR1cm4gb24gZXh0
cmEgZHJpdmVyIGRlYnVnZ2luZyB0aGF0IG1heSBhZmZlY3QKLSAgICAgICAgICBwZXJmb3JtYW5j
ZSBidXQgd2lsbCBjYXRjaCBzb21lIGludGVybmFsIGlzc3Vlcy4KKwlkZWZhdWx0IG4KKwloZWxw
CisJICBDaG9vc2UgdGhpcyBvcHRpb24gdG8gdHVybiBvbiBleHRyYSBkcml2ZXIgZGVidWdnaW5n
IHRoYXQgbWF5IGFmZmVjdAorCSAgcGVyZm9ybWFuY2UgYnV0IHdpbGwgY2F0Y2ggc29tZSBpbnRl
cm5hbCBpc3N1ZXMuCiAKLSAgICAgICAgICBSZWNvbW1lbmRlZCBmb3IgZHJpdmVyIGRldmVsb3Bl
cnMgb25seS4KKwkgIFJlY29tbWVuZGVkIGZvciBkcml2ZXIgZGV2ZWxvcGVycyBvbmx5LgogCi0g
ICAgICAgICAgSWYgaW4gZG91YnQsIHNheSAiTiIuCisJICBJZiBpbiBkb3VidCwgc2F5ICJOIi4K
IAogY29uZmlnIERSTV9JOTE1X0RFQlVHX01NSU8KIAlib29sICJBbHdheXMgaW5zZXJ0IGV4dHJh
IGNoZWNrcyBhcm91bmQgbW1pbyBhY2Nlc3MgYnkgZGVmYXVsdCIKQEAgLTU5LDE2ICs1OSwxNiBA
QCBjb25maWcgRFJNX0k5MTVfREVCVUdfTU1JTwogCSAgSWYgaW4gZG91YnQsIHNheSAiTiIuCiAK
IGNvbmZpZyBEUk1fSTkxNV9ERUJVR19HRU0KLSAgICAgICAgYm9vbCAiSW5zZXJ0IGV4dHJhIGNo
ZWNrcyBpbnRvIHRoZSBHRU0gaW50ZXJuYWxzIgotICAgICAgICBkZWZhdWx0IG4KLSAgICAgICAg
ZGVwZW5kcyBvbiBEUk1fSTkxNV9XRVJST1IKLSAgICAgICAgaGVscAotICAgICAgICAgIEVuYWJs
ZSBleHRyYSBzYW5pdHkgY2hlY2tzIChpbmNsdWRpbmcgQlVHcykgYWxvbmcgdGhlIEdFTSBkcml2
ZXIKLSAgICAgICAgICBwYXRocyB0aGF0IG1heSBzbG93IHRoZSBzeXN0ZW0gZG93biBhbmQgaWYg
aGl0IGhhbmcgdGhlIG1hY2hpbmUuCisJYm9vbCAiSW5zZXJ0IGV4dHJhIGNoZWNrcyBpbnRvIHRo
ZSBHRU0gaW50ZXJuYWxzIgorCWRlZmF1bHQgbgorCWRlcGVuZHMgb24gRFJNX0k5MTVfV0VSUk9S
CisJaGVscAorCSAgRW5hYmxlIGV4dHJhIHNhbml0eSBjaGVja3MgKGluY2x1ZGluZyBCVUdzKSBh
bG9uZyB0aGUgR0VNIGRyaXZlcgorCSAgcGF0aHMgdGhhdCBtYXkgc2xvdyB0aGUgc3lzdGVtIGRv
d24gYW5kIGlmIGhpdCBoYW5nIHRoZSBtYWNoaW5lLgogCi0gICAgICAgICAgUmVjb21tZW5kZWQg
Zm9yIGRyaXZlciBkZXZlbG9wZXJzIG9ubHkuCisJICBSZWNvbW1lbmRlZCBmb3IgZHJpdmVyIGRl
dmVsb3BlcnMgb25seS4KIAotICAgICAgICAgIElmIGluIGRvdWJ0LCBzYXkgIk4iLgorCSAgSWYg
aW4gZG91YnQsIHNheSAiTiIuCiAKIGNvbmZpZyBEUk1fSTkxNV9FUlJMT0dfR0VNCiAJYm9vbCAi
SW5zZXJ0IGV4dHJhIGxvZ2dpbmcgKHZlcnkgdmVyYm9zZSkgZm9yIGNvbW1vbiBHRU0gZXJyb3Jz
IgpAQCAtMTExLDQxICsxMTEsNDEgQEAgY29uZmlnIERSTV9JOTE1X1RSQUNFX0dUVAogCSAgSWYg
aW4gZG91YnQsIHNheSAiTiIuCiAKIGNvbmZpZyBEUk1fSTkxNV9TV19GRU5DRV9ERUJVR19PQkpF
Q1RTCi0gICAgICAgIGJvb2wgIkVuYWJsZSBhZGRpdGlvbmFsIGRyaXZlciBkZWJ1Z2dpbmcgZm9y
IGZlbmNlIG9iamVjdHMiCi0gICAgICAgIGRlcGVuZHMgb24gRFJNX0k5MTUKLSAgICAgICAgc2Vs
ZWN0IERFQlVHX09CSkVDVFMKLSAgICAgICAgZGVmYXVsdCBuCi0gICAgICAgIGhlbHAKLSAgICAg
ICAgICBDaG9vc2UgdGhpcyBvcHRpb24gdG8gdHVybiBvbiBleHRyYSBkcml2ZXIgZGVidWdnaW5n
IHRoYXQgbWF5IGFmZmVjdAotICAgICAgICAgIHBlcmZvcm1hbmNlIGJ1dCB3aWxsIGNhdGNoIHNv
bWUgaW50ZXJuYWwgaXNzdWVzLgorCWJvb2wgIkVuYWJsZSBhZGRpdGlvbmFsIGRyaXZlciBkZWJ1
Z2dpbmcgZm9yIGZlbmNlIG9iamVjdHMiCisJZGVwZW5kcyBvbiBEUk1fSTkxNQorCXNlbGVjdCBE
RUJVR19PQkpFQ1RTCisJZGVmYXVsdCBuCisJaGVscAorCSAgQ2hvb3NlIHRoaXMgb3B0aW9uIHRv
IHR1cm4gb24gZXh0cmEgZHJpdmVyIGRlYnVnZ2luZyB0aGF0IG1heSBhZmZlY3QKKwkgIHBlcmZv
cm1hbmNlIGJ1dCB3aWxsIGNhdGNoIHNvbWUgaW50ZXJuYWwgaXNzdWVzLgogCi0gICAgICAgICAg
UmVjb21tZW5kZWQgZm9yIGRyaXZlciBkZXZlbG9wZXJzIG9ubHkuCisJICBSZWNvbW1lbmRlZCBm
b3IgZHJpdmVyIGRldmVsb3BlcnMgb25seS4KIAotICAgICAgICAgIElmIGluIGRvdWJ0LCBzYXkg
Ik4iLgorCSAgSWYgaW4gZG91YnQsIHNheSAiTiIuCiAKIGNvbmZpZyBEUk1fSTkxNV9TV19GRU5D
RV9DSEVDS19EQUcKLSAgICAgICAgYm9vbCAiRW5hYmxlIGFkZGl0aW9uYWwgZHJpdmVyIGRlYnVn
Z2luZyBmb3IgZGV0ZWN0aW5nIGRlcGVuZGVuY3kgY3ljbGVzIgotICAgICAgICBkZXBlbmRzIG9u
IERSTV9JOTE1Ci0gICAgICAgIGRlZmF1bHQgbgotICAgICAgICBoZWxwCi0gICAgICAgICAgQ2hv
b3NlIHRoaXMgb3B0aW9uIHRvIHR1cm4gb24gZXh0cmEgZHJpdmVyIGRlYnVnZ2luZyB0aGF0IG1h
eSBhZmZlY3QKLSAgICAgICAgICBwZXJmb3JtYW5jZSBidXQgd2lsbCBjYXRjaCBzb21lIGludGVy
bmFsIGlzc3Vlcy4KKwlib29sICJFbmFibGUgYWRkaXRpb25hbCBkcml2ZXIgZGVidWdnaW5nIGZv
ciBkZXRlY3RpbmcgZGVwZW5kZW5jeSBjeWNsZXMiCisJZGVwZW5kcyBvbiBEUk1fSTkxNQorCWRl
ZmF1bHQgbgorCWhlbHAKKwkgIENob29zZSB0aGlzIG9wdGlvbiB0byB0dXJuIG9uIGV4dHJhIGRy
aXZlciBkZWJ1Z2dpbmcgdGhhdCBtYXkgYWZmZWN0CisJICBwZXJmb3JtYW5jZSBidXQgd2lsbCBj
YXRjaCBzb21lIGludGVybmFsIGlzc3Vlcy4KIAotICAgICAgICAgIFJlY29tbWVuZGVkIGZvciBk
cml2ZXIgZGV2ZWxvcGVycyBvbmx5LgorCSAgUmVjb21tZW5kZWQgZm9yIGRyaXZlciBkZXZlbG9w
ZXJzIG9ubHkuCiAKLSAgICAgICAgICBJZiBpbiBkb3VidCwgc2F5ICJOIi4KKwkgIElmIGluIGRv
dWJ0LCBzYXkgIk4iLgogCiBjb25maWcgRFJNX0k5MTVfREVCVUdfR1VDCi0gICAgICAgIGJvb2wg
IkVuYWJsZSBhZGRpdGlvbmFsIGRyaXZlciBkZWJ1Z2dpbmcgZm9yIEd1QyIKLSAgICAgICAgZGVw
ZW5kcyBvbiBEUk1fSTkxNQotICAgICAgICBkZWZhdWx0IG4KLSAgICAgICAgaGVscAotICAgICAg
ICAgIENob29zZSB0aGlzIG9wdGlvbiB0byB0dXJuIG9uIGV4dHJhIGRyaXZlciBkZWJ1Z2dpbmcg
dGhhdCBtYXkgYWZmZWN0Ci0gICAgICAgICAgcGVyZm9ybWFuY2UgYnV0IHdpbGwgaGVscCByZXNv
bHZlIEd1QyByZWxhdGVkIGlzc3Vlcy4KKwlib29sICJFbmFibGUgYWRkaXRpb25hbCBkcml2ZXIg
ZGVidWdnaW5nIGZvciBHdUMiCisJZGVwZW5kcyBvbiBEUk1fSTkxNQorCWRlZmF1bHQgbgorCWhl
bHAKKwkgIENob29zZSB0aGlzIG9wdGlvbiB0byB0dXJuIG9uIGV4dHJhIGRyaXZlciBkZWJ1Z2dp
bmcgdGhhdCBtYXkgYWZmZWN0CisJICBwZXJmb3JtYW5jZSBidXQgd2lsbCBoZWxwIHJlc29sdmUg
R3VDIHJlbGF0ZWQgaXNzdWVzLgogCi0gICAgICAgICAgUmVjb21tZW5kZWQgZm9yIGRyaXZlciBk
ZXZlbG9wZXJzIG9ubHkuCisJICBSZWNvbW1lbmRlZCBmb3IgZHJpdmVyIGRldmVsb3BlcnMgb25s
eS4KIAotICAgICAgICAgIElmIGluIGRvdWJ0LCBzYXkgIk4iLgorCSAgSWYgaW4gZG91YnQsIHNh
eSAiTiIuCiAKIGNvbmZpZyBEUk1fSTkxNV9TRUxGVEVTVAogCWJvb2wgIkVuYWJsZSBzZWxmdGVz
dHMgdXBvbiBkcml2ZXIgbG9hZCIKQEAgLTE3OCwxNSArMTc4LDE1IEBAIGNvbmZpZyBEUk1fSTkx
NV9TRUxGVEVTVF9CUk9LRU4KIAkgIElmIGluIGRvdWJ0LCBzYXkgIk4iLgogCiBjb25maWcgRFJN
X0k5MTVfTE9XX0xFVkVMX1RSQUNFUE9JTlRTCi0gICAgICAgIGJvb2wgIkVuYWJsZSBsb3cgbGV2
ZWwgcmVxdWVzdCB0cmFjaW5nIGV2ZW50cyIKLSAgICAgICAgZGVwZW5kcyBvbiBEUk1fSTkxNQot
ICAgICAgICBkZWZhdWx0IG4KLSAgICAgICAgaGVscAotICAgICAgICAgIENob29zZSB0aGlzIG9w
dGlvbiB0byB0dXJuIG9uIGxvdyBsZXZlbCByZXF1ZXN0IHRyYWNpbmcgZXZlbnRzLgotICAgICAg
ICAgIFRoaXMgcHJvdmlkZXMgdGhlIGFiaWxpdHkgdG8gcHJlY2lzZWx5IG1vbml0b3IgZW5naW5l
IHV0aWxpc2F0aW9uCi0gICAgICAgICAgYW5kIGFsc28gYW5hbHl6ZSB0aGUgcmVxdWVzdCBkZXBl
bmRlbmN5IHJlc29sdmluZyB0aW1lbGluZS4KLQotICAgICAgICAgIElmIGluIGRvdWJ0LCBzYXkg
Ik4iLgorCWJvb2wgIkVuYWJsZSBsb3cgbGV2ZWwgcmVxdWVzdCB0cmFjaW5nIGV2ZW50cyIKKwlk
ZXBlbmRzIG9uIERSTV9JOTE1CisJZGVmYXVsdCBuCisJaGVscAorCSAgQ2hvb3NlIHRoaXMgb3B0
aW9uIHRvIHR1cm4gb24gbG93IGxldmVsIHJlcXVlc3QgdHJhY2luZyBldmVudHMuCisJICBUaGlz
IHByb3ZpZGVzIHRoZSBhYmlsaXR5IHRvIHByZWNpc2VseSBtb25pdG9yIGVuZ2luZSB1dGlsaXNh
dGlvbgorCSAgYW5kIGFsc28gYW5hbHl6ZSB0aGUgcmVxdWVzdCBkZXBlbmRlbmN5IHJlc29sdmlu
ZyB0aW1lbGluZS4KKworCSAgSWYgaW4gZG91YnQsIHNheSAiTiIuCiAKIGNvbmZpZyBEUk1fSTkx
NV9ERUJVR19WQkxBTktfRVZBREUKIAlib29sICJFbmFibGUgZXh0cmEgZGVidWcgd2FybmluZ3Mg
Zm9yIHZibGFuayBldmFzaW9uIgotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
