Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C61E081C
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 17:59:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6897C6E86F;
	Tue, 22 Oct 2019 15:59:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3DC36E86B
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 15:59:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18927718-1500050 
 for multiple; Tue, 22 Oct 2019 16:59:19 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 16:59:01 +0100
Message-Id: <20191022155907.32203-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
In-Reply-To: <20191022155907.32203-1-chris@chris-wilson.co.uk>
References: <20191022155907.32203-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 04/10] i915_drm.h sync
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

VXBkYXRlIHRvIGNvbW1pdCBmZWY0NzZmM2FiNDc1MjdhMDA4MThkZGFmNGI0NmI4YzA5MzYxMTEx
IChub3QgdXBzdHJlYW0hKQpBdXRob3I6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgpEYXRlOiAgIE1vbiBBdWcgNSAyMjo1NTo0NCAyMDE5ICswMTAwCgogICAgZHJtL2k5
MTU6IENhbmNlbCBub24tcGVyc2lzdGVudCBjb250ZXh0cyBvbiBjbG9zZQoKZm9yIEk5MTVfQ09O
VEVYVF9QQVJBTV9QRVJTSVNURU5DRQotLS0KIGluY2x1ZGUvZHJtLXVhcGkvaTkxNV9kcm0uaCB8
IDIyICsrKysrKysrKysrKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtLXVhcGkvaTkxNV9k
cm0uaCBiL2luY2x1ZGUvZHJtLXVhcGkvaTkxNV9kcm0uaAppbmRleCA3NjE1MTdmMTUuLjdiYWRm
YTBiMSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0tdWFwaS9pOTE1X2RybS5oCisrKyBiL2luY2x1
ZGUvZHJtLXVhcGkvaTkxNV9kcm0uaApAQCAtNTIxLDYgKzUyMSw3IEBAIHR5cGVkZWYgc3RydWN0
IGRybV9pOTE1X2lycV93YWl0IHsKICNkZWZpbmUgICBJOTE1X1NDSEVEVUxFUl9DQVBfUFJJT1JJ
VFkJKDF1bCA8PCAxKQogI2RlZmluZSAgIEk5MTVfU0NIRURVTEVSX0NBUF9QUkVFTVBUSU9OCSgx
dWwgPDwgMikKICNkZWZpbmUgICBJOTE1X1NDSEVEVUxFUl9DQVBfU0VNQVBIT1JFUwkoMXVsIDw8
IDMpCisjZGVmaW5lICAgSTkxNV9TQ0hFRFVMRVJfQ0FQX0VOR0lORV9CVVNZX1NUQVRTCSgxdWwg
PDwgNCkKIAogI2RlZmluZSBJOTE1X1BBUkFNX0hVQ19TVEFUVVMJCSA0MgogCkBAIC0xNTY0LDYg
KzE1NjUsMjEgQEAgc3RydWN0IGRybV9pOTE1X2dlbV9jb250ZXh0X3BhcmFtIHsKICAqICAgaTkx
NV9jb250ZXh0X2VuZ2luZXNfYm9uZCAoSTkxNV9DT05URVhUX0VOR0lORVNfRVhUX0JPTkQpCiAg
Ki8KICNkZWZpbmUgSTkxNV9DT05URVhUX1BBUkFNX0VOR0lORVMJMHhhCisKKy8qCisgKiBJOTE1
X0NPTlRFWFRfUEFSQU1fUEVSU0lTVEVOQ0U6CisgKgorICogQWxsb3cgdGhlIGNvbnRleHQgYW5k
IGFjdGl2ZSByZW5kZXJpbmcgdG8gc3Vydml2ZSB0aGUgcHJvY2VzcyB1bnRpbAorICogY29tcGxl
dGlvbi4gUGVyc2lzdGVuY2UgYWxsb3dzIGZpcmUtYW5kLWZvcmdldCBjbGllbnRzIHRvIHF1ZXVl
IHVwIGEKKyAqIGJ1bmNoIG9mIHdvcmssIGhhbmQgdGhlIG91dHB1dCBvdmVyIHRvIGEgZGlzcGxh
eSBzZXJ2ZXIgYW5kIHRoZSBxdWl0LgorICogSWYgdGhlIGNvbnRleHQgaXMgbm90IG1hcmtlZCBh
cyBwZXJzaXN0ZW50LCB1cG9uIGNsb3NpbmcgKGVpdGhlciB2aWEKKyAqIGFuIGV4cGxpY2l0IERS
TV9JOTE1X0dFTV9DT05URVhUX0RFU1RST1kgb3IgaW1wbGljaXRseSBmcm9tIGZpbGUgY2xvc3Vy
ZQorICogb3IgcHJvY2VzcyB0ZXJtaW5hdGlvbiksIHRoZSBjb250ZXh0IGFuZCBhbnkgb3V0c3Rh
bmRpbmcgcmVxdWVzdHMgd2lsbCBiZQorICogY2FuY2VsbGVkIChhbmQgZXhwb3J0ZWQgZmVuY2Vz
IGZvciBjYW5jZWxsZWQgcmVxdWVzdHMgbWFya2VkIGFzIC1FSU8pLgorICoKKyAqIEJ5IGRlZmF1
bHQsIG5ldyBjb250ZXh0cyBhbGxvdyBwZXJzaXN0ZW5jZS4KKyAqLworI2RlZmluZSBJOTE1X0NP
TlRFWFRfUEFSQU1fUEVSU0lTVEVOQ0UJMHhiCiAvKiBNdXN0IGJlIGtlcHQgY29tcGFjdCAtLSBu
byBob2xlcyBhbmQgd2VsbCBkb2N1bWVudGVkICovCiAKIAlfX3U2NCB2YWx1ZTsKQEAgLTIwMzIs
OCArMjA0OCwxMCBAQCBzdHJ1Y3QgZHJtX2k5MTVfcXVlcnkgewogICogICAgICAgICAgIChkYXRh
W1ggLyA4XSA+PiAoWCAlIDgpKSAmIDEKICAqCiAgKiAtIHRoZSBzdWJzbGljZSBtYXNrIGZvciBl
YWNoIHNsaWNlIHdpdGggb25lIGJpdCBwZXIgc3Vic2xpY2UgdGVsbGluZwotICogICB3aGV0aGVy
IGEgc3Vic2xpY2UgaXMgYXZhaWxhYmxlLiBUaGUgYXZhaWxhYmlsaXR5IG9mIHN1YnNsaWNlIFkg
aW4gc2xpY2UKLSAqICAgWCBjYW4gYmUgcXVlcmllZCB3aXRoIHRoZSBmb2xsb3dpbmcgZm9ybXVs
YSA6CisgKiAgIHdoZXRoZXIgYSBzdWJzbGljZSBpcyBhdmFpbGFibGUuIEdlbjEyIGhhcyBkdWFs
LXN1YnNsaWNlcywgd2hpY2ggYXJlCisgKiAgIHNpbWlsYXIgdG8gdHdvIGdlbjExIHN1YnNsaWNl
cy4gRm9yIGdlbjEyLCB0aGlzIGFycmF5IHJlcHJlc2VudHMgZHVhbC0KKyAqICAgc3Vic2xpY2Vz
LiBUaGUgYXZhaWxhYmlsaXR5IG9mIHN1YnNsaWNlIFkgaW4gc2xpY2UgWCBjYW4gYmUgcXVlcmll
ZAorICogICB3aXRoIHRoZSBmb2xsb3dpbmcgZm9ybXVsYSA6CiAgKgogICogICAgICAgICAgIChk
YXRhW3N1YnNsaWNlX29mZnNldCArCiAgKiAgICAgICAgICAgICAgICAgWCAqIHN1YnNsaWNlX3N0
cmlkZSArCi0tIAoyLjI0LjAucmMwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
