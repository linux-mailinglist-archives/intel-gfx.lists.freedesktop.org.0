Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDCEF14FB
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 12:24:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C2AE6ECDF;
	Wed,  6 Nov 2019 11:24:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 157876ECDB;
 Wed,  6 Nov 2019 11:24:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0E1E5A0BCB;
 Wed,  6 Nov 2019 11:24:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 06 Nov 2019 11:24:46 -0000
Message-ID: <157303948605.12035.17047821062461627912@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191106100716.18181-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191106100716.18181-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/3=5D_drm=3A_Expose_a_method_for_cr?=
 =?utf-8?q?eating_anonymous_struct_file_around_drm=5Fminor?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvM10g
ZHJtOiBFeHBvc2UgYSBtZXRob2QgZm9yIGNyZWF0aW5nIGFub255bW91cyBzdHJ1Y3QgZmlsZSBh
cm91bmQgZHJtX21pbm9yClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy82OTA0OC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVj
a3BhdGNoIG9yaWdpbi9kcm0tdGlwCjExNWM0MGQ3ZmVhMyBkcm06IEV4cG9zZSBhIG1ldGhvZCBm
b3IgY3JlYXRpbmcgYW5vbnltb3VzIHN0cnVjdCBmaWxlIGFyb3VuZCBkcm1fbWlub3IKMjA4MTc3
MjYyZmExIGRybS9pOTE1L3NlbGZ0ZXN0czogV3JhcCB2bV9tbWFwKCkgYXJvdW5kIEdFTSBvYmpl
Y3RzCi06NDE6IENIRUNLOk1BQ1JPX0FSR19SRVVTRTogTWFjcm8gYXJndW1lbnQgcmV1c2UgJ3gn
IC0gcG9zc2libGUgc2lkZS1lZmZlY3RzPwojNDE6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jOjY5ODoKKyNkZWZpbmUgZXhwYW5kMzIoeCkg
KCgoeCkgPDwgMCkgfCAoKHgpIDw8IDgpIHwgKCh4KSA8PCAxNikgfCAoKHgpIDw8IDI0KSkKCi06
OTE6IEVSUk9SOlNQQUNJTkc6IHNwYWNlIHJlcXVpcmVkIGJlZm9yZSB0aGF0ICcqJyAoY3R4OlZ4
VikKIzkxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2Vt
X21tYW4uYzo3NDg6CisJCXUzMiBfX3VzZXIgKnV4ID0gdTY0X3RvX3VzZXJfcHRyKCh1NjQpKGFk
ZHIgKyBpICogc2l6ZW9mKih1eCkpKTsKIAkJICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBeCgotOjE0NzogV0FSTklORzpGSUxFX1BBVEhfQ0hB
TkdFUzogYWRkZWQsIG1vdmVkIG9yIGRlbGV0ZWQgZmlsZShzKSwgZG9lcyBNQUlOVEFJTkVSUyBu
ZWVkIHVwZGF0aW5nPwojMTQ3OiAKbmV3IGZpbGUgbW9kZSAxMDA2NDQKCi06MTUyOiBXQVJOSU5H
OlNQRFhfTElDRU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyIHRhZyBpbiBsaW5lIDEKIzE1MjogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2Vs
ZnRlc3RzL2lndF9tbWFwLmM6MToKKy8qCgotOjE1MzogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFH
OiBNaXNwbGFjZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIC0gdXNlIGxpbmUgMSBpbnN0
ZWFkCiMxNTM6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3RfbW1hcC5j
OjI6CisgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCgotOjE5NzogV0FSTklORzpTUERY
X0xJQ0VOU0VfVEFHOiBNaXNzaW5nIG9yIG1hbGZvcm1lZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
ciB0YWcgaW4gbGluZSAxCiMxOTc6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0
cy9pZ3RfbW1hcC5oOjE6CisvKgoKLToxOTg6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlz
cGxhY2VkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyAtIHVzZSBsaW5lIDEgaW5zdGVhZAoj
MTk4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X21tYXAuaDoyOgor
ICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAoKdG90YWw6IDEgZXJyb3JzLCA1IHdhcm5p
bmdzLCAxIGNoZWNrcywgMTgwIGxpbmVzIGNoZWNrZWQKNWM1NTUyNDc4YTc3IGRybS9wcmltZTog
VXNlIGFub25fZHJtX2dldGZpbGUoKSBmb3IgYW4gaW50ZXJuYWwgZHJtIHN0cnVjdCBmaWxlCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
