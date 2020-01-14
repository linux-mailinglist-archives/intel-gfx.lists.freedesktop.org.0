Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06ED113B516
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 23:07:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8F036E5A1;
	Tue, 14 Jan 2020 22:07:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69A17895A8;
 Tue, 14 Jan 2020 22:07:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 14:07:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,320,1574150400"; d="scan'208";a="217896775"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.29.74])
 by orsmga008.jf.intel.com with ESMTP; 14 Jan 2020 14:07:36 -0800
From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
To: akeem.g.abodunrin@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, omer.aran@intel.com,
 pragyansri.pathi@intel.com, d.scott.phillips@intel.com,
 david.c.stewart@intel.com, tony.luck@intel.com, jon.bloomfield@intel.com,
 sudeep.dutt@intel.com, daniel.vetter@intel.com, joonas.lahtinen@intel.com,
 jani.nikula@intel.com, chris.p.wilson@intel.com,
 prathap.kumar.valsan@intel.com, mika.kuoppala@intel.com,
 francesco.balestrieri@intel.com
Date: Tue, 14 Jan 2020 06:51:36 -0800
Message-Id: <20200114145136.65373-3-akeem.g.abodunrin@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200114145136.65373-1-akeem.g.abodunrin@intel.com>
References: <20200114145136.65373-1-akeem.g.abodunrin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 2/2] drm/i915/gen7: Clear all EU/L3 residual
 contexts
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

RnJvbTogUHJhdGhhcCBLdW1hciBWYWxzYW4gPHByYXRoYXAua3VtYXIudmFsc2FuQGludGVsLmNv
bT4KCk9uIGdlbjcgYW5kIGdlbjcuNSBkZXZpY2VzLCB0aGVyZSBjb3VsZCBiZSBsZWZ0b3ZlciBk
YXRhIHJlc2lkdWFscyBpbgpFVS9MMyBmcm9tIHRoZSByZXRpcmluZyBjb250ZXh0LiBUaGlzIHBh
dGNoIGludHJvZHVjZXMgd29ya2Fyb3VuZCB0byBjbGVhcgp0aGF0IHJlc2lkdWFsIGNvbnRleHRz
LCBieSBzdWJtaXR0aW5nIGEgYmF0Y2ggYnVmZmVyIHdpdGggZGVkaWNhdGVkIEhXCmNvbnRleHQg
dG8gdGhlIEdQVSB3aXRoIHJpbmcgYWxsb2NhdGlvbiBmb3IgZWFjaCBjb250ZXh0IHN3aXRjaGlu
Zy4KClNpZ25lZC1vZmYtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBQcmF0aGFwIEt1bWFyIFZhbHNhbiA8cHJhdGhhcC5rdW1h
ci52YWxzYW5AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBa2VlbSBHIEFib2R1bnJpbiA8YWtl
ZW0uZy5hYm9kdW5yaW5AaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpcy5wLndpbHNv
bkBpbnRlbC5jb20+CkNjOiBCYWxlc3RyaWVyaSBGcmFuY2VzY28gPGZyYW5jZXNjby5iYWxlc3Ry
aWVyaUBpbnRlbC5jb20+CkNjOiBCbG9vbWZpZWxkIEpvbiA8am9uLmJsb29tZmllbGRAaW50ZWwu
Y29tPgpDYzogRHV0dCBTdWRlZXAgPHN1ZGVlcC5kdXR0QGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvZ2VuN19yZW5kZXJjbGVhci5jICAgIHwgNTE0ICsrKysrKysrKysrKysr
KysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuN19yZW5kZXJjbGVhci5oICAgIHwgIDE1
ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oICB8ICAxNyAr
LQogLi4uL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYyAgIHwgICAzICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmggICAgICAgICAgICAgfCAgIDUgKwog
NiBmaWxlcyBjaGFuZ2VkLCA1NTEgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9nZW43X3JlbmRlcmNsZWFyLmMK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9nZW43X3JlbmRlcmNs
ZWFyLmgKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCmluZGV4IGI4YzVmODkzNGRiZC4uZTUzODY4NzFmMDE1
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9NYWtlZmlsZQpAQCAtNzUsNiArNzUsNyBAQCBndC15ICs9IFwKIAlndC9k
ZWJ1Z2ZzX2d0Lm8gXAogCWd0L2RlYnVnZnNfZ3RfcG0ubyBcCiAJZ3QvZ2VuNl9wcGd0dC5vIFwK
KwlndC9nZW43X3JlbmRlcmNsZWFyLm8gXAogCWd0L2dlbjhfcHBndHQubyBcCiAJZ3QvaW50ZWxf
YnJlYWRjcnVtYnMubyBcCiAJZ3QvaW50ZWxfY29udGV4dC5vIFwKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2dlbjdfcmVuZGVyY2xlYXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2dlbjdfcmVuZGVyY2xlYXIuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAw
MDAwMDAwMDAuLjNlOWZjMmMwNWZiYgotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2dlbjdfcmVuZGVyY2xlYXIuYwpAQCAtMCwwICsxLDUxNCBAQAorLy8gU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IE1JVAorLyoKKyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENv
cnBvcmF0aW9uCisgKi8KKworI2luY2x1ZGUgImdlbjdfcmVuZGVyY2xlYXIuaCIKKyNpbmNsdWRl
ICJpOTE1X2Rydi5oIgorI2luY2x1ZGUgImk5MTVfdXRpbHMuaCIKKyNpbmNsdWRlICJpbnRlbF9n
cHVfY29tbWFuZHMuaCIKKworI2RlZmluZSBNQVhfVVJCX0VOVFJJRVMgNjQKKyNkZWZpbmUgU1RB
VEVfU0laRSAoNCAqIDEwMjQpCisKKy8qIE1lZGlhIENCIEtlcm5lbCBmb3IgZ2VuNyBkZXZpY2Vz
ICovCitzdGF0aWMgY29uc3QgdTMyIGNiN19rZXJuZWxbXVs0XSA9IHsKKwl7IDB4MDAwMDAwMDEs
IDB4MjYwMjAxMjgsIDB4MDAwMDAwMjQsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwNDAsIDB4
MjAyODBjMjEsIDB4MDAwMDAwMjgsIDB4MDAwMDAwMDEgfSwKKwl7IDB4MDEwMDAwMTAsIDB4MjAw
MDBjMjAsIDB4MDAwMDAwMmMsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMTAyMjAsIDB4MzQwMDFj
MDAsIDB4MDAwMDE0MDAsIDB4MDAwMDAwMmMgfSwKKwl7IDB4MDA2MDAwMDEsIDB4MjA2MDAwNjEs
IDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDgsIDB4MjA2MDFjODUsIDB4
MDAwMDBlMDAsIDB4MDAwMDAwMGMgfSwKKwl7IDB4MDAwMDAwMDUsIDB4MjA2MDFjYTUsIDB4MDAw
MDAwNjAsIDB4MDAwMDAwMDEgfSwKKwl7IDB4MDAwMDAwMDgsIDB4MjA2NDFjODUsIDB4MDAwMDBl
MDAsIDB4MDAwMDAwMGQgfSwKKwl7IDB4MDAwMDAwMDUsIDB4MjA2NDFjYTUsIDB4MDAwMDAwNjQs
IDB4MDAwMDAwMDMgfSwKKwl7IDB4MDAwMDAwNDEsIDB4MjA3NDI0YTUsIDB4MDAwMDAwNjQsIDB4
MDAwMDAwMzQgfSwKKwl7IDB4MDAwMDAwNDAsIDB4MjA2MDE0YTUsIDB4MDAwMDAwNjAsIDB4MDAw
MDAwNzQgfSwKKwl7IDB4MDAwMDAwMDgsIDB4MjA2ODFjODUsIDB4MDAwMDBlMDAsIDB4MDAwMDAw
MDggfSwKKwl7IDB4MDAwMDAwMDUsIDB4MjA2ODFjYTUsIDB4MDAwMDAwNjgsIDB4MDAwMDAwMGYg
fSwKKwl7IDB4MDAwMDAwNDEsIDB4MjA3MDFjYTUsIDB4MDAwMDAwNjAsIDB4MDAwMDAwMTAgfSwK
Kwl7IDB4MDAwMDAwNDAsIDB4MjA2ODE0YTUsIDB4MDAwMDAwNjgsIDB4MDAwMDAwNzAgfSwKKwl7
IDB4MDA2MDAwMDEsIDB4MjBhMDAwNjEsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4
MDAwMDAwMDUsIDB4MjA2YzFjODUsIDB4MDAwMDBlMDAsIDB4MDAwMDAwMDcgfSwKKwl7IDB4MDAw
MDAwNDEsIDB4MjA2YzFjYTUsIDB4MDAwMDAwNmMsIDB4MDAwMDAwMDQgfSwKKwl7IDB4MDA2MDAw
MDEsIDB4MjA4MDAwMjEsIDB4MDA4ZDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDEs
IDB4MjA4MDAwMjEsIDB4MDAwMDAwNmMsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDEsIDB4
MjA4NDAwMjEsIDB4MDAwMDAwNjgsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDEsIDB4MjA4
ODAwNjEsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDMgfSwKKwl7IDB4MDAwMDAwMDUsIDB4MjA4YzBk
MjEsIDB4MDAwMDAwODYsIDB4ZmZmZmZmZmYgfSwKKwl7IDB4MDU2MDAwMzIsIDB4MjBhMDFmYTEs
IDB4MDA4ZDAwODAsIDB4MDIxOTAwMDEgfSwKKwl7IDB4MDAwMDAwNDAsIDB4MjBhMDFjYTUsIDB4
MDAwMDAwYTAsIDB4MDAwMDAwMDEgfSwKKwl7IDB4MDU2MDAwMzIsIDB4MjBhMDFmYTEsIDB4MDA4
ZDAwODAsIDB4MDQwYTgwMDEgfSwKKwl7IDB4MDIwMDAwNDAsIDB4MjAyODFjMjEsIDB4MDAwMDAw
MjgsIDB4ZmZmZmZmZmYgfSwKKwl7IDB4MDAwMTAyMjAsIDB4MzQwMDFjMDAsIDB4MDAwMDE0MDAs
IDB4ZmZmZmZmZmMgfSwKKwl7IDB4MDAwMDAwMDEsIDB4MjYwMjAxMjgsIDB4MDAwMDAwMjQsIDB4
MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDEsIDB4MjIwMDAwZTQsIDB4MDAwMDAwMDAsIDB4MDAw
MDAwMDAgfSwKKwl7IDB4MDAwMDAwMDEsIDB4MjIwODAxZWMsIDB4MDAwMDAwMDAsIDB4MDA3ZjAw
N2YgfSwKKwl7IDB4MDA2MDAwMDEsIDB4MjA0MDAwMjEsIDB4MDA4ZDAwMDAsIDB4MDAwMDAwMDAg
fSwKKwl7IDB4MDA2MDAwMDEsIDB4MmZlMDAwMjEsIDB4MDA4ZDAwMDAsIDB4MDAwMDAwMDAgfSwK
Kwl7IDB4MDAyMDAwMDEsIDB4MjA0MDAxMjEsIDB4MDA0NTAwMjAsIDB4MDAwMDAwMDAgfSwKKwl7
IDB4MDAwMDAwMDEsIDB4MjA0ODAwNjEsIDB4MDAwMDAwMDAsIDB4MDAwZjAwMGYgfSwKKwl7IDB4
MDAwMDAwMDUsIDB4MjA0YzBkMjEsIDB4MDAwMDAwNDYsIDB4ZmZmZmZmZWYgfSwKKwl7IDB4MDA4
MDAwMDEsIDB4MjA2MDAwNjEsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDA4MDAw
MDEsIDB4MjA4MDAwNjEsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDA4MDAwMDEs
IDB4MjBhMDAwNjEsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDA4MDAwMDEsIDB4
MjBjMDAwNjEsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDA4MDAwMDEsIDB4MjBl
MDAwNjEsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDA4MDAwMDEsIDB4MjEwMDAw
NjEsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDA4MDAwMDEsIDB4MjEyMDAwNjEs
IDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDA4MDAwMDEsIDB4MjE0MDAwNjEsIDB4
MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDU2MDAwMzIsIDB4MjAwMDFmYTAsIDB4MDA4
ZDAwNDAsIDB4MTIwYTgwMDAgfSwKKwl7IDB4MDAwMDAwNDAsIDB4MjA0MDJkMjEsIDB4MDAwMDAw
MjAsIDB4MDAxMDAwMTAgfSwKKwl7IDB4MDU2MDAwMzIsIDB4MjAwMDFmYTAsIDB4MDA4ZDAwNDAs
IDB4MTIwYTgwMDAgfSwKKwl7IDB4MDIwMDAwNDAsIDB4MjIwODNkOGMsIDB4MDAwMDAyMDgsIDB4
ZmZmZmZmZmYgfSwKKwl7IDB4MDA4MDAwMDEsIDB4YTAwMDAxMDksIDB4MDAwMDA2MDIsIDB4MDAw
MDAwMDAgfSwKKwl7IDB4MDAwMDAwNDAsIDB4MjIwMDFjODQsIDB4MDAwMDAyMDAsIDB4MDAwMDAw
MjAgfSwKKwl7IDB4MDAwMTAyMjAsIDB4MzQwMDFjMDAsIDB4MDAwMDE0MDAsIDB4ZmZmZmZmZjgg
fSwKKwl7IDB4MDc2MDAwMzIsIDB4MjAwMDFmYTAsIDB4MDA4ZDBmZTAsIDB4ODIwMDAwMTAgfSwK
Kwl7IDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7
IDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4
MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAw
MDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAw
MDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDAs
IDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDAsIDB4
MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDAsIDB4MDAw
MDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKK307CisKKy8qIE1lZGlhIENCIEtlcm5l
bCBmb3IgZ2VuNy41IGRldmljZXMgKi8KK3N0YXRpYyBjb25zdCB1MzIgY2I3NV9rZXJuZWxbXVs0
XSA9IHsKKwl7IDB4MDAwMDAwMDEsIDB4MjYwMjAxMjgsIDB4MDAwMDAwMjQsIDB4MDAwMDAwMDAg
fSwKKwl7IDB4MDAwMDAwNDAsIDB4MjAyODBjMjEsIDB4MDAwMDAwMjgsIDB4MDAwMDAwMDEgfSwK
Kwl7IDB4MDEwMDAwMTAsIDB4MjAwMDBjMjAsIDB4MDAwMDAwMmMsIDB4MDAwMDAwMDAgfSwKKwl7
IDB4MDAwMTAyMjAsIDB4MzQwMDFjMDAsIDB4MDAwMDE0MDAsIDB4MDAwMDAxNjAgfSwKKwl7IDB4
MDA2MDAwMDEsIDB4MjA2MDAwNjEsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAw
MDAwMDgsIDB4MjA2MDFjODUsIDB4MDAwMDBlMDAsIDB4MDAwMDAwMGMgfSwKKwl7IDB4MDAwMDAw
MDUsIDB4MjA2MDFjYTUsIDB4MDAwMDAwNjAsIDB4MDAwMDAwMDEgfSwKKwl7IDB4MDAwMDAwMDgs
IDB4MjA2NDFjODUsIDB4MDAwMDBlMDAsIDB4MDAwMDAwMGQgfSwKKwl7IDB4MDAwMDAwMDUsIDB4
MjA2NDFjYTUsIDB4MDAwMDAwNjQsIDB4MDAwMDAwMDMgfSwKKwl7IDB4MDAwMDAwNDEsIDB4MjA3
NDI0YTUsIDB4MDAwMDAwNjQsIDB4MDAwMDAwMzQgfSwKKwl7IDB4MDAwMDAwNDAsIDB4MjA2MDE0
YTUsIDB4MDAwMDAwNjAsIDB4MDAwMDAwNzQgfSwKKwl7IDB4MDAwMDAwMDgsIDB4MjA2ODFjODUs
IDB4MDAwMDBlMDAsIDB4MDAwMDAwMDggfSwKKwl7IDB4MDAwMDAwMDUsIDB4MjA2ODFjYTUsIDB4
MDAwMDAwNjgsIDB4MDAwMDAwMGYgfSwKKwl7IDB4MDAwMDAwNDEsIDB4MjA3MDFjYTUsIDB4MDAw
MDAwNjAsIDB4MDAwMDAwMTAgfSwKKwl7IDB4MDAwMDAwNDAsIDB4MjA2ODE0YTUsIDB4MDAwMDAw
NjgsIDB4MDAwMDAwNzAgfSwKKwl7IDB4MDA2MDAwMDEsIDB4MjBhMDAwNjEsIDB4MDAwMDAwMDAs
IDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDUsIDB4MjA2YzFjODUsIDB4MDAwMDBlMDAsIDB4
MDAwMDAwMDcgfSwKKwl7IDB4MDAwMDAwNDEsIDB4MjA2YzFjYTUsIDB4MDAwMDAwNmMsIDB4MDAw
MDAwMDQgfSwKKwl7IDB4MDA2MDAwMDEsIDB4MjA4MDAwMjEsIDB4MDA4ZDAwMDAsIDB4MDAwMDAw
MDAgfSwKKwl7IDB4MDAwMDAwMDEsIDB4MjA4MDAwMjEsIDB4MDAwMDAwNmMsIDB4MDAwMDAwMDAg
fSwKKwl7IDB4MDAwMDAwMDEsIDB4MjA4NDAwMjEsIDB4MDAwMDAwNjgsIDB4MDAwMDAwMDAgfSwK
Kwl7IDB4MDAwMDAwMDEsIDB4MjA4ODAwNjEsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDMgfSwKKwl7
IDB4MDAwMDAwMDUsIDB4MjA4YzBkMjEsIDB4MDAwMDAwODYsIDB4ZmZmZmZmZmYgfSwKKwl7IDB4
MDU2MDAwMzIsIDB4MjBhMDFmYTEsIDB4MDA4ZDAwODAsIDB4MDIxOTAwMDEgfSwKKwl7IDB4MDAw
MDAwNDAsIDB4MjBhMDFjYTUsIDB4MDAwMDAwYTAsIDB4MDAwMDAwMDEgfSwKKwl7IDB4MDU2MDAw
MzIsIDB4MjBhMDFmYTEsIDB4MDA4ZDAwODAsIDB4MDQwYTgwMDEgfSwKKwl7IDB4MDIwMDAwNDAs
IDB4MjAyODFjMjEsIDB4MDAwMDAwMjgsIDB4ZmZmZmZmZmYgfSwKKwl7IDB4MDAwMTAyMjAsIDB4
MzQwMDFjMDAsIDB4MDAwMDE0MDAsIDB4ZmZmZmZmZTAgfSwKKwl7IDB4MDAwMDAwMDEsIDB4MjYw
MjAxMjgsIDB4MDAwMDAwMjQsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDEsIDB4MjIwMDAw
ZTQsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDEsIDB4MjIwODAxZWMs
IDB4MDAwMDAwMDAsIDB4MDA3ZjAwN2YgfSwKKwl7IDB4MDA2MDAwMDEsIDB4MjA0MDAwMjEsIDB4
MDA4ZDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDA2MDAwMDEsIDB4MmZlMDAwMjEsIDB4MDA4
ZDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAyMDAwMDEsIDB4MjA0MDAxMjEsIDB4MDA0NTAw
MjAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDEsIDB4MjA0ODAwNjEsIDB4MDAwMDAwMDAs
IDB4MDAwZjAwMGYgfSwKKwl7IDB4MDAwMDAwMDUsIDB4MjA0YzBkMjEsIDB4MDAwMDAwNDYsIDB4
ZmZmZmZmZWYgfSwKKwl7IDB4MDA4MDAwMDEsIDB4MjA2MDAwNjEsIDB4MDAwMDAwMDAsIDB4MDAw
MDAwMDAgfSwKKwl7IDB4MDA4MDAwMDEsIDB4MjA4MDAwNjEsIDB4MDAwMDAwMDAsIDB4MDAwMDAw
MDAgfSwKKwl7IDB4MDA4MDAwMDEsIDB4MjBhMDAwNjEsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAg
fSwKKwl7IDB4MDA4MDAwMDEsIDB4MjBjMDAwNjEsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwK
Kwl7IDB4MDA4MDAwMDEsIDB4MjBlMDAwNjEsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7
IDB4MDA4MDAwMDEsIDB4MjEwMDAwNjEsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4
MDA4MDAwMDEsIDB4MjEyMDAwNjEsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDA4
MDAwMDEsIDB4MjE0MDAwNjEsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDU2MDAw
MzIsIDB4MjAwMDFmYTAsIDB4MDA4ZDAwNDAsIDB4MTIwYTgwMDAgfSwKKwl7IDB4MDAwMDAwNDAs
IDB4MjA0MDJkMjEsIDB4MDAwMDAwMjAsIDB4MDAxMDAwMTAgfSwKKwl7IDB4MDU2MDAwMzIsIDB4
MjAwMDFmYTAsIDB4MDA4ZDAwNDAsIDB4MTIwYTgwMDAgfSwKKwl7IDB4MDIwMDAwNDAsIDB4MjIw
ODNkOGMsIDB4MDAwMDAyMDgsIDB4ZmZmZmZmZmYgfSwKKwl7IDB4MDA4MDAwMDEsIDB4YTAwMDAx
MDksIDB4MDAwMDA2MDIsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwNDAsIDB4MjIwMDFjODQs
IDB4MDAwMDAyMDAsIDB4MDAwMDAwMjAgfSwKKwl7IDB4MDAwMTAyMjAsIDB4MzQwMDFjMDAsIDB4
MDAwMDE0MDAsIDB4ZmZmZmZmYzAgfSwKKwl7IDB4MDc2MDAwMzIsIDB4MjAwMDFmYTAsIDB4MDA4
ZDBmZTAsIDB4ODIwMDAwMTAgfSwKKwl7IDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAw
MDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAs
IDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4
MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAw
MDAwMDAgfSwKKwl7IDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAw
MDAgfSwKKwl7IDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAg
fSwKKwl7IDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwK
Kwl7IDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKK307
CisKK3N0cnVjdCBjYl9rZXJuZWwgeworCWNvbnN0IHZvaWQgKmRhdGE7CisJdTMyIHNpemU7Cit9
OworCisjZGVmaW5lIENCX0tFUk5FTChuYW1lKSB7IC5kYXRhID0gKG5hbWUpLCAuc2l6ZSA9IHNp
emVvZihuYW1lKSB9CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgY2Jfa2VybmVsIGNiX2tlcm5lbF9n
ZW43ID0gQ0JfS0VSTkVMKGNiN19rZXJuZWwpOworc3RhdGljIGNvbnN0IHN0cnVjdCBjYl9rZXJu
ZWwgY2Jfa2VybmVsX2hzdyA9IENCX0tFUk5FTChjYjc1X2tlcm5lbCk7CisKK3N0cnVjdCBiYXRj
aF9jaHVuayB7CisJc3RydWN0IGk5MTVfdm1hICp2bWE7CisJdTMyIG9mZnNldDsKKwl1MzIgKnN0
YXJ0OworCXUzMiAqZW5kOworCXUzMiBtYXhfaXRlbXM7Cit9OworCitzdHJ1Y3QgYmF0Y2hfdmFs
cyB7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTU7CisJdTMyIG1heF9wcmltaXRpdmVz
OworCXUzMiBtYXhfdXJiX2VudHJpZXM7CisJdTMyIGNtZF9zaXplOworCXUzMiBzdGF0ZV9zaXpl
OworCXUzMiBzdGF0ZV9zdGFydDsKKwl1MzIgYmF0Y2hfc2l6ZTsKKwl1MzIgc3VyZmFjZV9oZWln
aHQ7CisJdTMyIHN1cmZhY2Vfd2lkdGg7CisJdTMyIHNjcmF0Y2hfc2l6ZTsKKwl1MzIgbWF4X3Np
emU7Cit9OworCitzdGF0aWMgdm9pZAorYmF0Y2hfZ2V0X2RlZmF1bHRzKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1LCBzdHJ1Y3QgYmF0Y2hfdmFscyAqYnYpCit7CisJaWYgKElTX0hBU1dF
TEwoaTkxNSkpIHsKKwkJYnYtPm1heF9wcmltaXRpdmVzID0gMjgwOworCQlidi0+bWF4X3VyYl9l
bnRyaWVzID0gTUFYX1VSQl9FTlRSSUVTOworCQlidi0+c3VyZmFjZV9oZWlnaHQgPSAxNiAqIDE2
OworCQlidi0+c3VyZmFjZV93aWR0aCA9IDMyICogMiAqIDE2OworCX0gZWxzZSB7CisJCWJ2LT5t
YXhfcHJpbWl0aXZlcyA9IDEyODsKKwkJYnYtPm1heF91cmJfZW50cmllcyA9IE1BWF9VUkJfRU5U
UklFUyAvIDI7CisJCWJ2LT5zdXJmYWNlX2hlaWdodCA9IDE2ICogODsKKwkJYnYtPnN1cmZhY2Vf
d2lkdGggPSAzMiAqIDE2OworCX0KKwlidi0+Y21kX3NpemUgPSBidi0+bWF4X3ByaW1pdGl2ZXMg
KiA0MDk2OworCWJ2LT5zdGF0ZV9zaXplID0gU1RBVEVfU0laRTsKKwlidi0+c3RhdGVfc3RhcnQg
PSBidi0+Y21kX3NpemU7CisJYnYtPmJhdGNoX3NpemUgPSBidi0+Y21kX3NpemUgKyBidi0+c3Rh
dGVfc2l6ZTsKKwlidi0+c2NyYXRjaF9zaXplID0gYnYtPnN1cmZhY2VfaGVpZ2h0ICogYnYtPnN1
cmZhY2Vfd2lkdGg7CisJYnYtPm1heF9zaXplID0gYnYtPmJhdGNoX3NpemUgKyBidi0+c2NyYXRj
aF9zaXplOworfQorCitzdGF0aWMgdm9pZCBiYXRjaF9pbml0KHN0cnVjdCBiYXRjaF9jaHVuayAq
YmMsCisJCSAgICAgICBzdHJ1Y3QgaTkxNV92bWEgKnZtYSwKKwkJICAgICAgIHUzMiAqc3RhcnQs
IHUzMiBvZmZzZXQsIHUzMiBtYXhfYnl0ZXMpCit7CisJYmMtPnZtYSA9IHZtYTsKKwliYy0+b2Zm
c2V0ID0gb2Zmc2V0OworCWJjLT5zdGFydCA9IHN0YXJ0ICsgYmMtPm9mZnNldCAvIHNpemVvZigq
YmMtPnN0YXJ0KTsKKwliYy0+ZW5kID0gYmMtPnN0YXJ0OworCWJjLT5tYXhfaXRlbXMgPSBtYXhf
Ynl0ZXMgLyBzaXplb2YoKmJjLT5zdGFydCk7Cit9CisKK3N0YXRpYyB1MzIgYmF0Y2hfb2Zmc2V0
KGNvbnN0IHN0cnVjdCBiYXRjaF9jaHVuayAqYmMsIHUzMiAqY3MpCit7CisJcmV0dXJuIChjcyAt
IGJjLT5zdGFydCkgKiBzaXplb2YoKmJjLT5zdGFydCkgKyBiYy0+b2Zmc2V0OworfQorCitzdGF0
aWMgdTMyIGJhdGNoX2FkZHIoY29uc3Qgc3RydWN0IGJhdGNoX2NodW5rICpiYykKK3sKKwlyZXR1
cm4gYmMtPnZtYS0+bm9kZS5zdGFydDsKK30KKworc3RhdGljIHZvaWQgYmF0Y2hfYWRkKHN0cnVj
dCBiYXRjaF9jaHVuayAqYmMsIGNvbnN0IHUzMiBkKQoreworCUdFTV9ERUJVR19XQVJOX09OKChi
Yy0+ZW5kIC0gYmMtPnN0YXJ0KSA+PSBiYy0+bWF4X2l0ZW1zKTsKKwkqYmMtPmVuZCsrID0gZDsK
K30KKworc3RhdGljIHUzMiAqYmF0Y2hfYWxsb2NfaXRlbXMoc3RydWN0IGJhdGNoX2NodW5rICpi
YywgdTMyIGFsaWduLCB1MzIgaXRlbXMpCit7CisJdTMyICptYXA7CisKKwlpZiAoYWxpZ24pIHsK
KwkJdTMyICplbmQgPSBwdHJfYWxpZ24oYmMtPmVuZCwgYWxpZ24pOworCisJCW1lbXNldDMyKGJj
LT5lbmQsIDAsIChlbmQgLSBiYy0+ZW5kKSAvIHNpemVvZih1MzIpKTsKKwkJYmMtPmVuZCA9IGVu
ZDsKKwl9CisKKwltYXAgPSBiYy0+ZW5kOworCWJjLT5lbmQgKz0gaXRlbXM7CisKKwlyZXR1cm4g
bWFwOworfQorCitzdGF0aWMgdTMyICpiYXRjaF9hbGxvY19ieXRlcyhzdHJ1Y3QgYmF0Y2hfY2h1
bmsgKmJjLCB1MzIgYWxpZ24sIHUzMiBieXRlcykKK3sKKwlHRU1fQlVHX09OKCFJU19BTElHTkVE
KGJ5dGVzLCBzaXplb2YoKmJjLT5zdGFydCkpKTsKKwlyZXR1cm4gYmF0Y2hfYWxsb2NfaXRlbXMo
YmMsIGFsaWduLCBieXRlcyAvIHNpemVvZigqYmMtPnN0YXJ0KSk7Cit9CisKK3N0YXRpYyB1MzIK
K2dlbjdfZmlsbF9zdXJmYWNlX3N0YXRlKHN0cnVjdCBiYXRjaF9jaHVuayAqc3RhdGUsCisJCQlj
b25zdCB1MzIgZHN0X29mZnNldCwKKwkJCWNvbnN0IHN0cnVjdCBiYXRjaF92YWxzICpidikKK3sK
Kwl1MzIgc3VyZmFjZV9oID0gYnYtPnN1cmZhY2VfaGVpZ2h0OworCXUzMiBzdXJmYWNlX3cgPSBi
di0+c3VyZmFjZV93aWR0aDsKKwl1MzIgKmNzID0gYmF0Y2hfYWxsb2NfaXRlbXMoc3RhdGUsIDMy
LCA4KTsKKwl1MzIgb2Zmc2V0ID0gYmF0Y2hfb2Zmc2V0KHN0YXRlLCBjcyk7CisKKyNkZWZpbmUg
U1VSRkFDRV8yRCAxCisjZGVmaW5lIFNVUkZBQ0VGT1JNQVRfQjhHOFI4QThfVU5PUk0gMHgwQzAK
KyNkZWZpbmUgUkVOREVSX0NBQ0hFX1JFQURfV1JJVEUgMQorCisJKmNzKysgPSBTVVJGQUNFXzJE
IDw8IDI5IHwKKwkJKFNVUkZBQ0VGT1JNQVRfQjhHOFI4QThfVU5PUk0gPDwgMTgpIHwKKwkJKFJF
TkRFUl9DQUNIRV9SRUFEX1dSSVRFIDw8IDgpOworCisJKmNzKysgPSBiYXRjaF9hZGRyKHN0YXRl
KSArIGRzdF9vZmZzZXQ7CisKKwkqY3MrKyA9ICgoc3VyZmFjZV9oIC8gNCAtIDEpIDw8IDE2KSB8
IChzdXJmYWNlX3cgLyA0IC0gMSk7CisJKmNzKysgPSBzdXJmYWNlX3c7CisJKmNzKysgPSAwOwor
CSpjcysrID0gMDsKKwkqY3MrKyA9IDA7CisjZGVmaW5lIFNIQURFUl9DSEFOTkVMUyhyLCBnLCBi
LCBhKSBcCisJKCgocikgPDwgMjUpIHwgKChnKSA8PCAyMikgfCAoKGIpIDw8IDE5KSB8ICgoYSkg
PDwgMTYpKQorCSpjcysrID0gU0hBREVSX0NIQU5ORUxTKDQsIDUsIDYsIDcpOworCisJcmV0dXJu
IG9mZnNldDsKK30KKworc3RhdGljIHUzMgorZ2VuN19maWxsX2JpbmRpbmdfdGFibGUoc3RydWN0
IGJhdGNoX2NodW5rICpzdGF0ZSwKKwkJCWNvbnN0IHN0cnVjdCBiYXRjaF92YWxzICpidikKK3sK
Kwl1MzIgKmNzID0gYmF0Y2hfYWxsb2NfaXRlbXMoc3RhdGUsIDMyLCA4KTsKKwl1MzIgb2Zmc2V0
ID0gYmF0Y2hfb2Zmc2V0KHN0YXRlLCBjcyk7CisJdTMyIHN1cmZhY2Vfc3RhcnQ7CisKKwlzdXJm
YWNlX3N0YXJ0ID0gZ2VuN19maWxsX3N1cmZhY2Vfc3RhdGUoc3RhdGUsIGJ2LT5iYXRjaF9zaXpl
LCBidik7CisJKmNzKysgPSBzdXJmYWNlX3N0YXJ0IC0gc3RhdGUtPm9mZnNldDsKKwkqY3MrKyA9
IDA7CisJKmNzKysgPSAwOworCSpjcysrID0gMDsKKwkqY3MrKyA9IDA7CisJKmNzKysgPSAwOwor
CSpjcysrID0gMDsKKwkqY3MrKyA9IDA7CisKKwlyZXR1cm4gb2Zmc2V0OworfQorCitzdGF0aWMg
dTMyCitnZW43X2ZpbGxfa2VybmVsX2RhdGEoc3RydWN0IGJhdGNoX2NodW5rICpzdGF0ZSwKKwkJ
ICAgICAgY29uc3QgdTMyICpkYXRhLAorCQkgICAgICBjb25zdCB1MzIgc2l6ZSkKK3sKKwlyZXR1
cm4gYmF0Y2hfb2Zmc2V0KHN0YXRlLAorCQkJICAgIG1lbWNweShiYXRjaF9hbGxvY19ieXRlcyhz
dGF0ZSwgNjQsIHNpemUpLAorCQkJCSAgIGRhdGEsIHNpemUpKTsKK30KKworc3RhdGljIHUzMgor
Z2VuN19maWxsX2ludGVyZmFjZV9kZXNjcmlwdG9yKHN0cnVjdCBiYXRjaF9jaHVuayAqc3RhdGUs
CisJCQkgICAgICAgY29uc3Qgc3RydWN0IGJhdGNoX3ZhbHMgKmJ2LAorCQkJICAgICAgIGNvbnN0
IHN0cnVjdCBjYl9rZXJuZWwgKmtlcm5lbCwKKwkJCSAgICAgICB1bnNpZ25lZCBpbnQgY291bnQp
Cit7CisJdTMyICpjcyA9IGJhdGNoX2FsbG9jX2l0ZW1zKHN0YXRlLCAzMiwgOCAqIGNvdW50KTsK
Kwl1MzIgb2Zmc2V0ID0gYmF0Y2hfb2Zmc2V0KHN0YXRlLCBjcyk7CisKKwkqY3MrKyA9IGdlbjdf
ZmlsbF9rZXJuZWxfZGF0YShzdGF0ZSwga2VybmVsLT5kYXRhLCBrZXJuZWwtPnNpemUpOworCSpj
cysrID0gKDEgPDwgNykgfCAoMSA8PCAxMyk7CisJKmNzKysgPSAwOworCSpjcysrID0gKGdlbjdf
ZmlsbF9iaW5kaW5nX3RhYmxlKHN0YXRlLCBidikgLSBzdGF0ZS0+b2Zmc2V0KSB8IDE7CisJKmNz
KysgPSAwOworCSpjcysrID0gMDsKKwkqY3MrKyA9IDA7CisJKmNzKysgPSAwOworCS8qIDEgLSA2
M2R1bW15IGlkZHMgKi8KKwltZW1zZXQzMihjcywgMHgwMCwgKGNvdW50IC0gMSkgKiA4KTsKKwor
CXJldHVybiBvZmZzZXQ7Cit9CisKK3N0YXRpYyB2b2lkCitnZW43X2VtaXRfc3RhdGVfYmFzZV9h
ZGRyZXNzKHN0cnVjdCBiYXRjaF9jaHVuayAqYmF0Y2gsCisJCQkgICAgIHUzMiBzdXJmYWNlX3N0
YXRlX2Jhc2UpCit7CisJdTMyICpjcyA9IGJhdGNoX2FsbG9jX2l0ZW1zKGJhdGNoLCAwLCAxMik7
CisKKwkqY3MrKyA9IFNUQVRFX0JBU0VfQUREUkVTUyB8ICgxMiAtIDIpOworCS8qIGdlbmVyYWwg
Ki8KKwkqY3MrKyA9IGJhdGNoX2FkZHIoYmF0Y2gpIHwgQkFTRV9BRERSRVNTX01PRElGWTsKKwkv
KiBzdXJmYWNlICovCisJKmNzKysgPSBiYXRjaF9hZGRyKGJhdGNoKSB8IHN1cmZhY2Vfc3RhdGVf
YmFzZSB8IEJBU0VfQUREUkVTU19NT0RJRlk7CisJLyogZHluYW1pYyAqLworCSpjcysrID0gYmF0
Y2hfYWRkcihiYXRjaCkgfCBCQVNFX0FERFJFU1NfTU9ESUZZOworCS8qIGluZGlyZWN0ICovCisJ
KmNzKysgPSBiYXRjaF9hZGRyKGJhdGNoKSB8IEJBU0VfQUREUkVTU19NT0RJRlk7CisJLyogaW5z
dHJ1Y3Rpb24gKi8KKwkqY3MrKyA9IGJhdGNoX2FkZHIoYmF0Y2gpIHwgQkFTRV9BRERSRVNTX01P
RElGWTsKKworCS8qIGdlbmVyYWwvZHluYW1pYy9pbmRpcmVjdC9pbnN0cnVjdGlvbiBhY2Nlc3Mg
Qm91bmQgKi8KKwkqY3MrKyA9IDA7CisJKmNzKysgPSBCQVNFX0FERFJFU1NfTU9ESUZZOworCSpj
cysrID0gMDsKKwkqY3MrKyA9IEJBU0VfQUREUkVTU19NT0RJRlk7CisJKmNzKysgPSAwOworCSpj
cysrID0gMDsKK30KKworc3RhdGljIHZvaWQKK2dlbjdfZW1pdF92ZmVfc3RhdGUoc3RydWN0IGJh
dGNoX2NodW5rICpiYXRjaCwKKwkJICAgIGNvbnN0IHN0cnVjdCBiYXRjaF92YWxzICpidiwKKwkJ
ICAgIHUzMiB1cmJfc2l6ZSwgdTMyIGN1cmJlX3NpemUsCisJCSAgICB1MzIgbW9kZSkKK3sKKwl1
MzIgdXJiX2VudHJpZXMgPSBidi0+bWF4X3VyYl9lbnRyaWVzOworCXUzMiB0aHJlYWRzID0gYnYt
Pm1heF9wcmltaXRpdmVzIC0gMTsKKwl1MzIgKmNzID0gYmF0Y2hfYWxsb2NfaXRlbXMoYmF0Y2gs
IDMyLCA4KTsKKworCSpjcysrID0gTUVESUFfVkZFX1NUQVRFIHwgKDggLSAyKTsKKworCS8qIHNj
cmF0Y2ggYnVmZmVyICovCisJKmNzKysgPSAwOworCisJLyogbnVtYmVyIG9mIHRocmVhZHMgJiB1
cmIgZW50cmllcyAqLworCSpjcysrID0gdGhyZWFkcyA8PCAxNiB8CisJCXVyYl9lbnRyaWVzIDw8
IDggfAorCQltb2RlIDw8IDI7IC8qIEdQR1BVIHZzIG1lZGlhIG1vZGUgKi8KKworCSpjcysrID0g
MDsKKworCS8qIHVyYiBlbnRyeSBzaXplICYgY3VyYmUgc2l6ZSAqLworCSpjcysrID0gdXJiX3Np
emUgPDwgMTYgfCAgICAgIC8qIGluIDI1NiBiaXRzIHVuaXQgKi8KKwkJY3VyYmVfc2l6ZTsgICAg
ICAgICAgLyogaW4gMjU2IGJpdHMgdW5pdCAqLworCisJLyogc2NvcmVib2FyZCAqLworCSpjcysr
ID0gMDsKKwkqY3MrKyA9IDA7CisJKmNzKysgPSAwOworfQorCitzdGF0aWMgdm9pZAorZ2VuN19l
bWl0X2ludGVyZmFjZV9kZXNjcmlwdG9yX2xvYWQoc3RydWN0IGJhdGNoX2NodW5rICpiYXRjaCwK
KwkJCQkgICAgY29uc3QgdTMyIGludGVyZmFjZV9kZXNjcmlwdG9yLAorCQkJCSAgICB1bnNpZ25l
ZCBpbnQgY291bnQpCit7CisJdTMyICpjcyA9IGJhdGNoX2FsbG9jX2l0ZW1zKGJhdGNoLCA4LCA0
KTsKKworCSpjcysrID0gTUVESUFfSU5URVJGQUNFX0RFU0NSSVBUT1JfTE9BRCB8ICg0IC0gMik7
CisJKmNzKysgPSAwOworCSpjcysrID0gY291bnQgKiA4ICogc2l6ZW9mKCpjcyk7CisKKwkvKiBp
bnRlcmZhY2UgZGVzY3JpcHRvciBhZGRyZXNzLCBpcyByZWxhdGl2ZSB0byB0aGUgZHluYW1pY3Mg
YmFzZQorCSAqIGFkZHJlc3MKKwkgKi8KKwkqY3MrKyA9IGludGVyZmFjZV9kZXNjcmlwdG9yOwor
fQorCitzdGF0aWMgdm9pZAorZ2VuN19lbWl0X21lZGlhX29iamVjdChzdHJ1Y3QgYmF0Y2hfY2h1
bmsgKmJhdGNoLAorCQkgICAgICAgdW5zaWduZWQgaW50IG1lZGlhX29iamVjdF9pbmRleCkKK3sK
Kwl1bnNpZ25lZCBpbnQgeF9vZmZzZXQgPSAobWVkaWFfb2JqZWN0X2luZGV4ICUgMTYpICogNjQ7
CisJdW5zaWduZWQgaW50IHlfb2Zmc2V0ID0gKG1lZGlhX29iamVjdF9pbmRleCAvIDE2KSAqIDE2
OworCXVuc2lnbmVkIGludCBpbmxpbmVfZGF0YV9zaXplOworCXVuc2lnbmVkIGludCBtZWRpYV9i
YXRjaF9zaXplOworCXVuc2lnbmVkIGludCBpOworCXUzMiAqY3M7CisKKwlpbmxpbmVfZGF0YV9z
aXplID0gMTEyICogODsKKwltZWRpYV9iYXRjaF9zaXplID0gaW5saW5lX2RhdGFfc2l6ZSArIDY7
CisKKwljcyA9IGJhdGNoX2FsbG9jX2l0ZW1zKGJhdGNoLCA4LCBtZWRpYV9iYXRjaF9zaXplKTsK
KworCSpjcysrID0gTUVESUFfT0JKRUNUIHwgKG1lZGlhX2JhdGNoX3NpemUgLSAyKTsKKworCS8q
IGludGVyZmFjZSBkZXNjcmlwdG9yIG9mZnNldCAqLworCSpjcysrID0gMDsKKworCS8qIHdpdGhv
dXQgaW5kaXJlY3QgZGF0YSAqLworCSpjcysrID0gMDsKKwkqY3MrKyA9IDA7CisKKwkvKiBzY29y
ZWJvYXJkICovCisJKmNzKysgPSAwOworCSpjcysrID0gMDsKKworCS8qIGlubGluZSAqLworCSpj
cysrID0gKHlfb2Zmc2V0IDw8IDE2KSB8ICh4X29mZnNldCk7CisJKmNzKysgPSAwOworCSpjcysr
ID0gMHgxRTAwOworCWZvciAoaSA9IDM7IGkgPCBpbmxpbmVfZGF0YV9zaXplOyBpKyspCisJCSpj
cysrID0gMDsKK30KKworc3RhdGljIHZvaWQgZ2VuN19lbWl0X3BpcGVsaW5lX2ZsdXNoKHN0cnVj
dCBiYXRjaF9jaHVuayAqYmF0Y2gpCit7CisJdTMyICpjcyA9IGJhdGNoX2FsbG9jX2l0ZW1zKGJh
dGNoLCAwLCA1KTsKKworCSpjcysrID0gR0ZYX09QX1BJUEVfQ09OVFJPTCg1KTsKKwkqY3MrKyA9
IFBJUEVfQ09OVFJPTF9TVEFURV9DQUNIRV9JTlZBTElEQVRFIHwKKwkJUElQRV9DT05UUk9MX0dM
T0JBTF9HVFRfSVZCOworCSpjcysrID0gMDsKKwkqY3MrKyA9IDA7CisJKmNzKysgPSAwOworfQor
CitzdGF0aWMgdm9pZCBlbWl0X2JhdGNoKHN0cnVjdCBpOTE1X3ZtYSAqIGNvbnN0IHZtYSwKKwkJ
ICAgICAgIHUzMiAqc3RhcnQsCisJCSAgICAgICBjb25zdCBzdHJ1Y3QgYmF0Y2hfdmFscyAqYnYp
Cit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB2bWEtPnZtLT5pOTE1OworCXVu
c2lnbmVkIGludCBkZXNjX2NvdW50ID0gNjQ7CisJY29uc3QgdTMyIHVyYl9zaXplID0gMTEyOwor
CXN0cnVjdCBiYXRjaF9jaHVuayBjbWRzLCBzdGF0ZTsKKwl1MzIgaW50ZXJmYWNlX2Rlc2NyaXB0
b3I7CisJdW5zaWduZWQgaW50IGk7CisKKwliYXRjaF9pbml0KCZjbWRzLCB2bWEsIHN0YXJ0LCAw
LCBidi0+Y21kX3NpemUpOworCWJhdGNoX2luaXQoJnN0YXRlLCB2bWEsIHN0YXJ0LCBidi0+c3Rh
dGVfc3RhcnQsIGJ2LT5zdGF0ZV9zaXplKTsKKworCWludGVyZmFjZV9kZXNjcmlwdG9yID0KKwkJ
Z2VuN19maWxsX2ludGVyZmFjZV9kZXNjcmlwdG9yKCZzdGF0ZSwgYnYsCisJCQkJCSAgICAgICBJ
U19IQVNXRUxMKGk5MTUpID8KKwkJCQkJICAgICAgICZjYl9rZXJuZWxfaHN3IDogJmNiX2tlcm5l
bF9nZW43LAorCQkJCQkgICAgICAgZGVzY19jb3VudCk7CisJZ2VuN19lbWl0X3BpcGVsaW5lX2Zs
dXNoKCZjbWRzKTsKKwliYXRjaF9hZGQoJmNtZHMsIFBJUEVMSU5FX1NFTEVDVCB8IFBJUEVMSU5F
X1NFTEVDVF9NRURJQSk7CisJYmF0Y2hfYWRkKCZjbWRzLCBNSV9OT09QKTsKKwlnZW43X2VtaXRf
c3RhdGVfYmFzZV9hZGRyZXNzKCZjbWRzLCBpbnRlcmZhY2VfZGVzY3JpcHRvcik7CisJZ2VuN19l
bWl0X3BpcGVsaW5lX2ZsdXNoKCZjbWRzKTsKKworCWdlbjdfZW1pdF92ZmVfc3RhdGUoJmNtZHMs
IGJ2LCB1cmJfc2l6ZSAtIDEsIDAsIDApOworCisJZ2VuN19lbWl0X2ludGVyZmFjZV9kZXNjcmlw
dG9yX2xvYWQoJmNtZHMsCisJCQkJCSAgICBpbnRlcmZhY2VfZGVzY3JpcHRvciwKKwkJCQkJICAg
IGRlc2NfY291bnQpOworCisJZm9yIChpID0gMDsgaSA8IGJ2LT5tYXhfcHJpbWl0aXZlczsgaSsr
KQorCQlnZW43X2VtaXRfbWVkaWFfb2JqZWN0KCZjbWRzLCBpKTsKKworCWJhdGNoX2FkZCgmY21k
cywgTUlfQkFUQ0hfQlVGRkVSX0VORCk7Cit9CisKK2ludCBnZW43X3NldHVwX2NsZWFyX2dwcl9i
YihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICogY29uc3QgZW5naW5lLAorCQkJICAgIHN0cnVjdCBp
OTE1X3ZtYSAqIGNvbnN0IHZtYSkKK3sKKwlzdHJ1Y3QgYmF0Y2hfdmFscyBidjsKKwl1MzIgKmJh
dGNoOworCisJYmF0Y2hfZ2V0X2RlZmF1bHRzKGVuZ2luZS0+aTkxNSwgJmJ2KTsKKwlpZiAoIXZt
YSkKKwkJcmV0dXJuIGJ2Lm1heF9zaXplOworCisJYmF0Y2ggPSBpOTE1X2dlbV9vYmplY3RfcGlu
X21hcCh2bWEtPm9iaiwgSTkxNV9NQVBfV0MpOworCWlmIChJU19FUlIoYmF0Y2gpKQorCQlyZXR1
cm4gUFRSX0VSUihiYXRjaCk7CisKKwllbWl0X2JhdGNoKHZtYSwgbWVtc2V0KGJhdGNoLCAwLCBi
di5tYXhfc2l6ZSksICZidik7CisKKwlpOTE1X2dlbV9vYmplY3RfZmx1c2hfbWFwKHZtYS0+b2Jq
KTsKKwlpOTE1X2dlbV9vYmplY3RfdW5waW5fbWFwKHZtYS0+b2JqKTsKKworCXJldHVybiAwOwor
fQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuN19yZW5kZXJjbGVhci5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuN19yZW5kZXJjbGVhci5oCm5ldyBmaWxlIG1v
ZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uYmIxMDA3NDhlMmM2Ci0tLSAvZGV2L251bGwK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuN19yZW5kZXJjbGVhci5oCkBAIC0wLDAg
KzEsMTUgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQgKi8KKy8qCisgKiBDb3B5
cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbgorICovCisKKyNpZm5kZWYgX19HRU43X1JF
TkRFUkNMRUFSX0hfXworI2RlZmluZSBfX0dFTjdfUkVOREVSQ0xFQVJfSF9fCisKK3N0cnVjdCBp
bnRlbF9lbmdpbmVfY3M7CitzdHJ1Y3QgaTkxNV92bWE7CisKK2ludCBnZW43X3NldHVwX2NsZWFy
X2dwcl9iYihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICogY29uc3QgZW5naW5lLAorCQkJICAgIHN0
cnVjdCBpOTE1X3ZtYSAqIGNvbnN0IHZtYSk7CisKKyNlbmRpZiAvKiBfX0dFTjdfUkVOREVSQ0xF
QVJfSF9fICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVf
Y29tbWFuZHMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5o
CmluZGV4IDUxYjg3MTg1MTNiYy4uZjA0MjE0YTU0Zjc1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaApAQCAtMjkyLDEwICsyOTIsMjEgQEAKICNkZWZp
bmUgTUlfU1RPUkVfVVJCX01FTSAgICAgICAgTUlfSU5TVFIoMHgyRCwgMCkKICNkZWZpbmUgTUlf
Q09ORElUSU9OQUxfQkFUQ0hfQlVGRkVSX0VORCBNSV9JTlNUUigweDM2LCAwKQogCi0jZGVmaW5l
IFBJUEVMSU5FX1NFTEVDVCAgICAgICAgICAgICAgICAoKDB4Mzw8MjkpfCgweDE8PDI3KXwoMHgx
PDwyNCl8KDB4NDw8MTYpKQotI2RlZmluZSBHRlhfT1BfM0RTVEFURV9WRl9TVEFUSVNUSUNTICAg
KCgweDM8PDI5KXwoMHgxPDwyNyl8KDB4MDw8MjQpfCgweEI8PDE2KSkKLSNkZWZpbmUgTUVESUFf
VkZFX1NUQVRFICAgICAgICAgICAgICAgICgoMHgzPDwyOSl8KDB4Mjw8MjcpfCgweDA8PDI0KXwo
MHgwPDwxNikpCisjZGVmaW5lIFNUQVRFX0JBU0VfQUREUkVTUyBcCisJKCgweDMgPDwgMjkpIHwg
KDB4MCA8PCAyNykgfCAoMHgxIDw8IDI0KSB8ICgweDEgPDwgMTYpKQorI2RlZmluZSBCQVNFX0FE
RFJFU1NfTU9ESUZZCQlSRUdfQklUKDApCisjZGVmaW5lIFBJUEVMSU5FX1NFTEVDVCBcCisJKCgw
eDMgPDwgMjkpIHwgKDB4MSA8PCAyNykgfCAoMHgxIDw8IDI0KSB8ICgweDQgPDwgMTYpKQorI2Rl
ZmluZSBQSVBFTElORV9TRUxFQ1RfTUVESUEJICAgICAgIFJFR19CSVQoMCkKKyNkZWZpbmUgR0ZY
X09QXzNEU1RBVEVfVkZfU1RBVElTVElDUyBcCisJKCgweDMgPDwgMjkpIHwgKDB4MSA8PCAyNykg
fCAoMHgwIDw8IDI0KSB8ICgweEIgPDwgMTYpKQorI2RlZmluZSBNRURJQV9WRkVfU1RBVEUgXAor
CSgoMHgzIDw8IDI5KSB8ICgweDIgPDwgMjcpIHwgKDB4MCA8PCAyNCkgfCAoMHgwIDw8IDE2KSkK
ICNkZWZpbmUgIE1FRElBX1ZGRV9TVEFURV9NTUlPX0FDQ0VTU19NQVNLICgweDE4KQorI2RlZmlu
ZSBNRURJQV9JTlRFUkZBQ0VfREVTQ1JJUFRPUl9MT0FEIFwKKwkoKDB4MyA8PCAyOSkgfCAoMHgy
IDw8IDI3KSB8ICgweDAgPDwgMjQpIHwgKDB4MiA8PCAxNikpCisjZGVmaW5lIE1FRElBX09CSkVD
VCBcCisJKCgweDMgPDwgMjkpIHwgKDB4MiA8PCAyNykgfCAoMHgxIDw8IDI0KSB8ICgweDAgPDwg
MTYpKQogI2RlZmluZSBHUEdQVV9PQkpFQ1QgICAgICAgICAgICAgICAgICAgKCgweDM8PDI5KXwo
MHgyPDwyNyl8KDB4MTw8MjQpfCgweDQ8PDE2KSkKICNkZWZpbmUgR1BHUFVfV0FMS0VSICAgICAg
ICAgICAgICAgICAgICgoMHgzPDwyOSl8KDB4Mjw8MjcpfCgweDE8PDI0KXwoMHg1PDwxNikpCiAj
ZGVmaW5lIEdGWF9PUF8zRFNUQVRFX0RYOV9DT05TVEFOVEZfVlMgXApkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNzaW9uLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYwppbmRleCAyMDRjNDUwYjdjNDIu
Ljg1NDk3OWI3OWExZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cmluZ19zdWJtaXNzaW9uLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmlu
Z19zdWJtaXNzaW9uLmMKQEAgLTM0LDYgKzM0LDcgQEAKICNpbmNsdWRlICJnZW0vaTkxNV9nZW1f
Y29udGV4dC5oIgogCiAjaW5jbHVkZSAiZ2VuNl9wcGd0dC5oIgorI2luY2x1ZGUgImdlbjdfcmVu
ZGVyY2xlYXIuaCIKICNpbmNsdWRlICJpOTE1X2Rydi5oIgogI2luY2x1ZGUgImk5MTVfdHJhY2Uu
aCIKICNpbmNsdWRlICJpbnRlbF9jb250ZXh0LmgiCkBAIC0xOTg0LDcgKzE5ODUsNyBAQCBzdGF0
aWMgdm9pZCBzZXR1cF92ZWNzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIHN0YXRp
YyBpbnQgZ2VuN19jdHhfc3dpdGNoX2JiX3NldHVwKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKiBj
b25zdCBlbmdpbmUsCiAJCQkJICAgIHN0cnVjdCBpOTE1X3ZtYSAqIGNvbnN0IHZtYSkKIHsKLQly
ZXR1cm4gMDsKKwlyZXR1cm4gZ2VuN19zZXR1cF9jbGVhcl9ncHJfYmIoZW5naW5lLCB2bWEpOwog
fQogCiBzdGF0aWMgaW50IGdlbjdfY3R4X3N3aXRjaF9iYl9pbml0KHN0cnVjdCBpbnRlbF9lbmdp
bmVfY3MgKmVuZ2luZSkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRp
bHMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaAppbmRleCBiMGFkZTc2YmVj
OTAuLjdhYzViMzU2NTg0NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91
dGlscy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaApAQCAtMTcyLDYg
KzE3MiwxMSBAQCBfX2NoZWNrX3N0cnVjdF9zaXplKHNpemVfdCBiYXNlLCBzaXplX3QgYXJyLCBz
aXplX3QgY291bnQsIHNpemVfdCAqc2l6ZSkKIAkodHlwZW9mKHB0cikpKF9fdiArIDEpOwkJCQkJ
CVwKIH0pCiAKKyNkZWZpbmUgcHRyX2FsaWduKHB0ciwgYWxpZ24pICh7CQkJCQlcCisJdW5zaWdu
ZWQgbG9uZyBfX3YgPSAodW5zaWduZWQgbG9uZykocHRyKTsJCQlcCisJKHR5cGVvZihwdHIpKXJv
dW5kX3VwKF9fdiwgKGFsaWduKSk7CQkJCVwKK30pCisKICNkZWZpbmUgcGFnZV9tYXNrX2JpdHMo
cHRyKSBwdHJfbWFza19iaXRzKHB0ciwgUEFHRV9TSElGVCkKICNkZWZpbmUgcGFnZV91bm1hc2tf
Yml0cyhwdHIpIHB0cl91bm1hc2tfYml0cyhwdHIsIFBBR0VfU0hJRlQpCiAjZGVmaW5lIHBhZ2Vf
cGFja19iaXRzKHB0ciwgYml0cykgcHRyX3BhY2tfYml0cyhwdHIsIGJpdHMsIFBBR0VfU0hJRlQp
Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
