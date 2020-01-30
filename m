Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 003F414E669
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 01:13:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 784FF6E932;
	Fri, 31 Jan 2020 00:13:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B7EC6E0E8;
 Fri, 31 Jan 2020 00:13:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 16:13:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,383,1574150400"; d="scan'208";a="218453693"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.29.74])
 by orsmga007.jf.intel.com with ESMTP; 30 Jan 2020 16:13:17 -0800
From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
To: akeem.g.abodunrin@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, omer.aran@intel.com,
 pragyansri.pathi@intel.com, d.scott.phillips@intel.com,
 david.c.stewart@intel.com, tony.luck@intel.com, jon.bloomfield@intel.com,
 sudeep.dutt@intel.com, daniel.vetter@intel.com,
 joonas.lahtinen@linux.intel.com, jani.nikula@intel.com,
 chris.p.wilson@intel.com, prathap.kumar.valsan@intel.com,
 mika.kuoppala@intel.com, francesco.balestrieri@intel.com
Date: Thu, 30 Jan 2020 08:57:21 -0800
Message-Id: <20200130165721.20342-3-akeem.g.abodunrin@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200130165721.20342-1-akeem.g.abodunrin@intel.com>
References: <20200130165721.20342-1-akeem.g.abodunrin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gen7: Clear all EU/L3 residual
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
Zy4KClRoaXMgc2VjdXJpdHkgbWl0aWdhdGlvbiBjaGFuZ2UgZG9lcyBub3QgdHJpZ2dlciBhbnkg
cGVyZm9ybWFuY2UKcmVncmVzc2lvbi4gUGVyZm9ybWFuY2UgaXMgb24gcGFyIHdpdGggY3VycmVu
dCBtYWlubGluZS9kcm0tdGlwLgoKU2lnbmVkLW9mZi1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5r
dW9wcGFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFByYXRoYXAgS3VtYXIgVmFs
c2FuIDxwcmF0aGFwLmt1bWFyLnZhbHNhbkBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFrZWVt
IEcgQWJvZHVucmluIDxha2VlbS5nLmFib2R1bnJpbkBpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxz
b24gPGNocmlzLnAud2lsc29uQGludGVsLmNvbT4KQ2M6IEJhbGVzdHJpZXJpIEZyYW5jZXNjbyA8
ZnJhbmNlc2NvLmJhbGVzdHJpZXJpQGludGVsLmNvbT4KQ2M6IEJsb29tZmllbGQgSm9uIDxqb24u
Ymxvb21maWVsZEBpbnRlbC5jb20+CkNjOiBEdXR0IFN1ZGVlcCA8c3VkZWVwLmR1dHRAaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICB8
ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9nZW43X3JlbmRlcmNsZWFyLmMgICAgfCA1
MzUgKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9nZW43X3JlbmRl
cmNsZWFyLmggICAgfCAgMTUgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2Nv
bW1hbmRzLmggIHwgIDE3ICstCiAuLi4vZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdfc3VibWlz
c2lvbi5jICAgfCAgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaCAgICAg
ICAgICAgICB8ICAgNSArCiA2IGZpbGVzIGNoYW5nZWQsIDU3MiBpbnNlcnRpb25zKCspLCA0IGRl
bGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2dl
bjdfcmVuZGVyY2xlYXIuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2dlbjdfcmVuZGVyY2xlYXIuaAoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKaW5kZXggM2M4OGQ3ZDhj
NzY0Li5mOTZiYWU2NjRhMDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2Vm
aWxlCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCkBAIC03OCw2ICs3OCw3IEBA
IGd0LXkgKz0gXAogCWd0L2RlYnVnZnNfZ3QubyBcCiAJZ3QvZGVidWdmc19ndF9wbS5vIFwKIAln
dC9nZW42X3BwZ3R0Lm8gXAorCWd0L2dlbjdfcmVuZGVyY2xlYXIubyBcCiAJZ3QvZ2VuOF9wcGd0
dC5vIFwKIAlndC9pbnRlbF9icmVhZGNydW1icy5vIFwKIAlndC9pbnRlbF9jb250ZXh0Lm8gXApk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuN19yZW5kZXJjbGVhci5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuN19yZW5kZXJjbGVhci5jCm5ldyBmaWxlIG1vZGUg
MTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uYTZmNWYxNjAyZTMzCi0tLSAvZGV2L251bGwKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuN19yZW5kZXJjbGVhci5jCkBAIC0wLDAgKzEs
NTM1IEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCisvKgorICogQ29weXJpZ2h0
IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24KKyAqLworCisjaW5jbHVkZSAiZ2VuN19yZW5kZXJj
bGVhci5oIgorI2luY2x1ZGUgImk5MTVfZHJ2LmgiCisjaW5jbHVkZSAiaTkxNV91dGlscy5oIgor
I2luY2x1ZGUgImludGVsX2dwdV9jb21tYW5kcy5oIgorCisjZGVmaW5lIE1BWF9VUkJfRU5UUklF
UyA2NAorI2RlZmluZSBTVEFURV9TSVpFICg0ICogMTAyNCkKKyNkZWZpbmUgR1QzX0lOTElORV9E
QVRBX0RFTEFZUyAweDFFMDAKKyNkZWZpbmUgYmF0Y2hfYWR2YW5jZShZLCBDUykgR0VNX0JVR19P
TigoWSktPmVuZCAhPSAoQ1MpKQorCisvKgorICogTWVkaWEgQ0IgS2VybmVsIGZvciBnZW43IGRl
dmljZXMKKyAqIFRPRE86IEFkZCBjb21tZW50cyB0byBrZXJuZWwsIGluZGljYXRpbmcgd2hhdCBl
YWNoIGFycmF5IG9mIGhleCBkb2VzIG9yCisgKiBpbmNsdWRlIGhlYWRlciBmaWxlLCB3aGljaCBo
YXMgYXNzZW1ibHkgc291cmNlIGFuZCBzdXBwb3J0IGluIGlndCB0byBiZQorICogYWJsZSB0byBn
ZW5lcmF0ZSBrZXJuZWwgaW4gdGhpcyBzYW1lIGZvcm1hdAorICovCitzdGF0aWMgY29uc3QgdTMy
IGNiN19rZXJuZWxbXVs0XSA9IHsKKwl7IDB4MDAwMDAwMDEsIDB4MjYwMjAxMjgsIDB4MDAwMDAw
MjQsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwNDAsIDB4MjAyODBjMjEsIDB4MDAwMDAwMjgs
IDB4MDAwMDAwMDEgfSwKKwl7IDB4MDEwMDAwMTAsIDB4MjAwMDBjMjAsIDB4MDAwMDAwMmMsIDB4
MDAwMDAwMDAgfSwKKwl7IDB4MDAwMTAyMjAsIDB4MzQwMDFjMDAsIDB4MDAwMDE0MDAsIDB4MDAw
MDAwMmMgfSwKKwl7IDB4MDA2MDAwMDEsIDB4MjA2MDAwNjEsIDB4MDAwMDAwMDAsIDB4MDAwMDAw
MDAgfSwKKwl7IDB4MDAwMDAwMDgsIDB4MjA2MDFjODUsIDB4MDAwMDBlMDAsIDB4MDAwMDAwMGMg
fSwKKwl7IDB4MDAwMDAwMDUsIDB4MjA2MDFjYTUsIDB4MDAwMDAwNjAsIDB4MDAwMDAwMDEgfSwK
Kwl7IDB4MDAwMDAwMDgsIDB4MjA2NDFjODUsIDB4MDAwMDBlMDAsIDB4MDAwMDAwMGQgfSwKKwl7
IDB4MDAwMDAwMDUsIDB4MjA2NDFjYTUsIDB4MDAwMDAwNjQsIDB4MDAwMDAwMDMgfSwKKwl7IDB4
MDAwMDAwNDEsIDB4MjA3NDI0YTUsIDB4MDAwMDAwNjQsIDB4MDAwMDAwMzQgfSwKKwl7IDB4MDAw
MDAwNDAsIDB4MjA2MDE0YTUsIDB4MDAwMDAwNjAsIDB4MDAwMDAwNzQgfSwKKwl7IDB4MDAwMDAw
MDgsIDB4MjA2ODFjODUsIDB4MDAwMDBlMDAsIDB4MDAwMDAwMDggfSwKKwl7IDB4MDAwMDAwMDUs
IDB4MjA2ODFjYTUsIDB4MDAwMDAwNjgsIDB4MDAwMDAwMGYgfSwKKwl7IDB4MDAwMDAwNDEsIDB4
MjA3MDFjYTUsIDB4MDAwMDAwNjAsIDB4MDAwMDAwMTAgfSwKKwl7IDB4MDAwMDAwNDAsIDB4MjA2
ODE0YTUsIDB4MDAwMDAwNjgsIDB4MDAwMDAwNzAgfSwKKwl7IDB4MDA2MDAwMDEsIDB4MjBhMDAw
NjEsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDUsIDB4MjA2YzFjODUs
IDB4MDAwMDBlMDAsIDB4MDAwMDAwMDcgfSwKKwl7IDB4MDAwMDAwNDEsIDB4MjA2YzFjYTUsIDB4
MDAwMDAwNmMsIDB4MDAwMDAwMDQgfSwKKwl7IDB4MDA2MDAwMDEsIDB4MjA4MDAwMjEsIDB4MDA4
ZDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDEsIDB4MjA4MDAwMjEsIDB4MDAwMDAw
NmMsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDEsIDB4MjA4NDAwMjEsIDB4MDAwMDAwNjgs
IDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDEsIDB4MjA4ODAwNjEsIDB4MDAwMDAwMDAsIDB4
MDAwMDAwMDMgfSwKKwl7IDB4MDAwMDAwMDUsIDB4MjA4YzBkMjEsIDB4MDAwMDAwODYsIDB4ZmZm
ZmZmZmYgfSwKKwl7IDB4MDU2MDAwMzIsIDB4MjBhMDFmYTEsIDB4MDA4ZDAwODAsIDB4MDIxOTAw
MDEgfSwKKwl7IDB4MDAwMDAwNDAsIDB4MjBhMDFjYTUsIDB4MDAwMDAwYTAsIDB4MDAwMDAwMDEg
fSwKKwl7IDB4MDU2MDAwMzIsIDB4MjBhMDFmYTEsIDB4MDA4ZDAwODAsIDB4MDQwYTgwMDEgfSwK
Kwl7IDB4MDIwMDAwNDAsIDB4MjAyODFjMjEsIDB4MDAwMDAwMjgsIDB4ZmZmZmZmZmYgfSwKKwl7
IDB4MDAwMTAyMjAsIDB4MzQwMDFjMDAsIDB4MDAwMDE0MDAsIDB4ZmZmZmZmZmMgfSwKKwl7IDB4
MDAwMDAwMDEsIDB4MjYwMjAxMjgsIDB4MDAwMDAwMjQsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAw
MDAwMDEsIDB4MjIwMDAwZTQsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAw
MDEsIDB4MjIwODAxZWMsIDB4MDAwMDAwMDAsIDB4MDA3ZjAwN2YgfSwKKwl7IDB4MDA2MDAwMDEs
IDB4MjA0MDAwMjEsIDB4MDA4ZDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDA2MDAwMDEsIDB4
MmZlMDAwMjEsIDB4MDA4ZDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAyMDAwMDEsIDB4MjA0
MDAxMjEsIDB4MDA0NTAwMjAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDEsIDB4MjA0ODAw
NjEsIDB4MDAwMDAwMDAsIDB4MDAwZjAwMGYgfSwKKwl7IDB4MDAwMDAwMDUsIDB4MjA0YzBkMjEs
IDB4MDAwMDAwNDYsIDB4ZmZmZmZmZWYgfSwKKwl7IDB4MDA4MDAwMDEsIDB4MjA2MDAwNjEsIDB4
MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDA4MDAwMDEsIDB4MjA4MDAwNjEsIDB4MDAw
MDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDA4MDAwMDEsIDB4MjBhMDAwNjEsIDB4MDAwMDAw
MDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDA4MDAwMDEsIDB4MjBjMDAwNjEsIDB4MDAwMDAwMDAs
IDB4MDAwMDAwMDAgfSwKKwl7IDB4MDA4MDAwMDEsIDB4MjBlMDAwNjEsIDB4MDAwMDAwMDAsIDB4
MDAwMDAwMDAgfSwKKwl7IDB4MDA4MDAwMDEsIDB4MjEwMDAwNjEsIDB4MDAwMDAwMDAsIDB4MDAw
MDAwMDAgfSwKKwl7IDB4MDA4MDAwMDEsIDB4MjEyMDAwNjEsIDB4MDAwMDAwMDAsIDB4MDAwMDAw
MDAgfSwKKwl7IDB4MDA4MDAwMDEsIDB4MjE0MDAwNjEsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAg
fSwKKwl7IDB4MDU2MDAwMzIsIDB4MjAwMDFmYTAsIDB4MDA4ZDAwNDAsIDB4MTIwYTgwMDAgfSwK
Kwl7IDB4MDAwMDAwNDAsIDB4MjA0MDJkMjEsIDB4MDAwMDAwMjAsIDB4MDAxMDAwMTAgfSwKKwl7
IDB4MDU2MDAwMzIsIDB4MjAwMDFmYTAsIDB4MDA4ZDAwNDAsIDB4MTIwYTgwMDAgfSwKKwl7IDB4
MDIwMDAwNDAsIDB4MjIwODNkOGMsIDB4MDAwMDAyMDgsIDB4ZmZmZmZmZmYgfSwKKwl7IDB4MDA4
MDAwMDEsIDB4YTAwMDAxMDksIDB4MDAwMDA2MDIsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAw
NDAsIDB4MjIwMDFjODQsIDB4MDAwMDAyMDAsIDB4MDAwMDAwMjAgfSwKKwl7IDB4MDAwMTAyMjAs
IDB4MzQwMDFjMDAsIDB4MDAwMDE0MDAsIDB4ZmZmZmZmZjggfSwKKwl7IDB4MDc2MDAwMzIsIDB4
MjAwMDFmYTAsIDB4MDA4ZDBmZTAsIDB4ODIwMDAwMTAgfSwKKwl7IDB4MDAwMDAwMDAsIDB4MDAw
MDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDAsIDB4MDAwMDAw
MDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAs
IDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4
MDAwMDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAw
MDAwMDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAw
MDAsIDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAs
IDB4MDAwMDAwMDAgfSwKKwl7IDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4MDAwMDAwMDAsIDB4
MDAwMDAwMDAgfSwKK307CisKKy8qCisgKiBNZWRpYSBDQiBLZXJuZWwgZm9yIGdlbjcuNSBkZXZp
Y2VzCisgKiBUT0RPOiBBZGQgY29tbWVudHMgdG8ga2VybmVsLCBpbmRpY2F0aW5nIHdoYXQgZWFj
aCBhcnJheSBvZiBoZXggZG9lcyBvcgorICogaW5jbHVkZSBoZWFkZXIgZmlsZSwgd2hpY2ggaGFz
IGFzc2VtYmx5IHNvdXJjZSBhbmQgc3VwcG9ydCBpbiBpZ3QgdG8gYmUKKyAqIGFibGUgdG8gZ2Vu
ZXJhdGUga2VybmVsIGluIHRoaXMgc2FtZSBmb3JtYXQKKyAqLworc3RhdGljIGNvbnN0IHUzMiBj
Yjc1X2tlcm5lbFtdWzRdID0geworCXsgMHgwMDAwMDAwMSwgMHgyNjAyMDEyOCwgMHgwMDAwMDAy
NCwgMHgwMDAwMDAwMCB9LAorCXsgMHgwMDAwMDA0MCwgMHgyMDI4MGMyMSwgMHgwMDAwMDAyOCwg
MHgwMDAwMDAwMSB9LAorCXsgMHgwMTAwMDAxMCwgMHgyMDAwMGMyMCwgMHgwMDAwMDAyYywgMHgw
MDAwMDAwMCB9LAorCXsgMHgwMDAxMDIyMCwgMHgzNDAwMWMwMCwgMHgwMDAwMTQwMCwgMHgwMDAw
MDE2MCB9LAorCXsgMHgwMDYwMDAwMSwgMHgyMDYwMDA2MSwgMHgwMDAwMDAwMCwgMHgwMDAwMDAw
MCB9LAorCXsgMHgwMDAwMDAwOCwgMHgyMDYwMWM4NSwgMHgwMDAwMGUwMCwgMHgwMDAwMDAwYyB9
LAorCXsgMHgwMDAwMDAwNSwgMHgyMDYwMWNhNSwgMHgwMDAwMDA2MCwgMHgwMDAwMDAwMSB9LAor
CXsgMHgwMDAwMDAwOCwgMHgyMDY0MWM4NSwgMHgwMDAwMGUwMCwgMHgwMDAwMDAwZCB9LAorCXsg
MHgwMDAwMDAwNSwgMHgyMDY0MWNhNSwgMHgwMDAwMDA2NCwgMHgwMDAwMDAwMyB9LAorCXsgMHgw
MDAwMDA0MSwgMHgyMDc0MjRhNSwgMHgwMDAwMDA2NCwgMHgwMDAwMDAzNCB9LAorCXsgMHgwMDAw
MDA0MCwgMHgyMDYwMTRhNSwgMHgwMDAwMDA2MCwgMHgwMDAwMDA3NCB9LAorCXsgMHgwMDAwMDAw
OCwgMHgyMDY4MWM4NSwgMHgwMDAwMGUwMCwgMHgwMDAwMDAwOCB9LAorCXsgMHgwMDAwMDAwNSwg
MHgyMDY4MWNhNSwgMHgwMDAwMDA2OCwgMHgwMDAwMDAwZiB9LAorCXsgMHgwMDAwMDA0MSwgMHgy
MDcwMWNhNSwgMHgwMDAwMDA2MCwgMHgwMDAwMDAxMCB9LAorCXsgMHgwMDAwMDA0MCwgMHgyMDY4
MTRhNSwgMHgwMDAwMDA2OCwgMHgwMDAwMDA3MCB9LAorCXsgMHgwMDYwMDAwMSwgMHgyMGEwMDA2
MSwgMHgwMDAwMDAwMCwgMHgwMDAwMDAwMCB9LAorCXsgMHgwMDAwMDAwNSwgMHgyMDZjMWM4NSwg
MHgwMDAwMGUwMCwgMHgwMDAwMDAwNyB9LAorCXsgMHgwMDAwMDA0MSwgMHgyMDZjMWNhNSwgMHgw
MDAwMDA2YywgMHgwMDAwMDAwNCB9LAorCXsgMHgwMDYwMDAwMSwgMHgyMDgwMDAyMSwgMHgwMDhk
MDAwMCwgMHgwMDAwMDAwMCB9LAorCXsgMHgwMDAwMDAwMSwgMHgyMDgwMDAyMSwgMHgwMDAwMDA2
YywgMHgwMDAwMDAwMCB9LAorCXsgMHgwMDAwMDAwMSwgMHgyMDg0MDAyMSwgMHgwMDAwMDA2OCwg
MHgwMDAwMDAwMCB9LAorCXsgMHgwMDAwMDAwMSwgMHgyMDg4MDA2MSwgMHgwMDAwMDAwMCwgMHgw
MDAwMDAwMyB9LAorCXsgMHgwMDAwMDAwNSwgMHgyMDhjMGQyMSwgMHgwMDAwMDA4NiwgMHhmZmZm
ZmZmZiB9LAorCXsgMHgwNTYwMDAzMiwgMHgyMGEwMWZhMSwgMHgwMDhkMDA4MCwgMHgwMjE5MDAw
MSB9LAorCXsgMHgwMDAwMDA0MCwgMHgyMGEwMWNhNSwgMHgwMDAwMDBhMCwgMHgwMDAwMDAwMSB9
LAorCXsgMHgwNTYwMDAzMiwgMHgyMGEwMWZhMSwgMHgwMDhkMDA4MCwgMHgwNDBhODAwMSB9LAor
CXsgMHgwMjAwMDA0MCwgMHgyMDI4MWMyMSwgMHgwMDAwMDAyOCwgMHhmZmZmZmZmZiB9LAorCXsg
MHgwMDAxMDIyMCwgMHgzNDAwMWMwMCwgMHgwMDAwMTQwMCwgMHhmZmZmZmZlMCB9LAorCXsgMHgw
MDAwMDAwMSwgMHgyNjAyMDEyOCwgMHgwMDAwMDAyNCwgMHgwMDAwMDAwMCB9LAorCXsgMHgwMDAw
MDAwMSwgMHgyMjAwMDBlNCwgMHgwMDAwMDAwMCwgMHgwMDAwMDAwMCB9LAorCXsgMHgwMDAwMDAw
MSwgMHgyMjA4MDFlYywgMHgwMDAwMDAwMCwgMHgwMDdmMDA3ZiB9LAorCXsgMHgwMDYwMDAwMSwg
MHgyMDQwMDAyMSwgMHgwMDhkMDAwMCwgMHgwMDAwMDAwMCB9LAorCXsgMHgwMDYwMDAwMSwgMHgy
ZmUwMDAyMSwgMHgwMDhkMDAwMCwgMHgwMDAwMDAwMCB9LAorCXsgMHgwMDIwMDAwMSwgMHgyMDQw
MDEyMSwgMHgwMDQ1MDAyMCwgMHgwMDAwMDAwMCB9LAorCXsgMHgwMDAwMDAwMSwgMHgyMDQ4MDA2
MSwgMHgwMDAwMDAwMCwgMHgwMDBmMDAwZiB9LAorCXsgMHgwMDAwMDAwNSwgMHgyMDRjMGQyMSwg
MHgwMDAwMDA0NiwgMHhmZmZmZmZlZiB9LAorCXsgMHgwMDgwMDAwMSwgMHgyMDYwMDA2MSwgMHgw
MDAwMDAwMCwgMHgwMDAwMDAwMCB9LAorCXsgMHgwMDgwMDAwMSwgMHgyMDgwMDA2MSwgMHgwMDAw
MDAwMCwgMHgwMDAwMDAwMCB9LAorCXsgMHgwMDgwMDAwMSwgMHgyMGEwMDA2MSwgMHgwMDAwMDAw
MCwgMHgwMDAwMDAwMCB9LAorCXsgMHgwMDgwMDAwMSwgMHgyMGMwMDA2MSwgMHgwMDAwMDAwMCwg
MHgwMDAwMDAwMCB9LAorCXsgMHgwMDgwMDAwMSwgMHgyMGUwMDA2MSwgMHgwMDAwMDAwMCwgMHgw
MDAwMDAwMCB9LAorCXsgMHgwMDgwMDAwMSwgMHgyMTAwMDA2MSwgMHgwMDAwMDAwMCwgMHgwMDAw
MDAwMCB9LAorCXsgMHgwMDgwMDAwMSwgMHgyMTIwMDA2MSwgMHgwMDAwMDAwMCwgMHgwMDAwMDAw
MCB9LAorCXsgMHgwMDgwMDAwMSwgMHgyMTQwMDA2MSwgMHgwMDAwMDAwMCwgMHgwMDAwMDAwMCB9
LAorCXsgMHgwNTYwMDAzMiwgMHgyMDAwMWZhMCwgMHgwMDhkMDA0MCwgMHgxMjBhODAwMCB9LAor
CXsgMHgwMDAwMDA0MCwgMHgyMDQwMmQyMSwgMHgwMDAwMDAyMCwgMHgwMDEwMDAxMCB9LAorCXsg
MHgwNTYwMDAzMiwgMHgyMDAwMWZhMCwgMHgwMDhkMDA0MCwgMHgxMjBhODAwMCB9LAorCXsgMHgw
MjAwMDA0MCwgMHgyMjA4M2Q4YywgMHgwMDAwMDIwOCwgMHhmZmZmZmZmZiB9LAorCXsgMHgwMDgw
MDAwMSwgMHhhMDAwMDEwOSwgMHgwMDAwMDYwMiwgMHgwMDAwMDAwMCB9LAorCXsgMHgwMDAwMDA0
MCwgMHgyMjAwMWM4NCwgMHgwMDAwMDIwMCwgMHgwMDAwMDAyMCB9LAorCXsgMHgwMDAxMDIyMCwg
MHgzNDAwMWMwMCwgMHgwMDAwMTQwMCwgMHhmZmZmZmZjMCB9LAorCXsgMHgwNzYwMDAzMiwgMHgy
MDAwMWZhMCwgMHgwMDhkMGZlMCwgMHg4MjAwMDAxMCB9LAorCXsgMHgwMDAwMDAwMCwgMHgwMDAw
MDAwMCwgMHgwMDAwMDAwMCwgMHgwMDAwMDAwMCB9LAorCXsgMHgwMDAwMDAwMCwgMHgwMDAwMDAw
MCwgMHgwMDAwMDAwMCwgMHgwMDAwMDAwMCB9LAorCXsgMHgwMDAwMDAwMCwgMHgwMDAwMDAwMCwg
MHgwMDAwMDAwMCwgMHgwMDAwMDAwMCB9LAorCXsgMHgwMDAwMDAwMCwgMHgwMDAwMDAwMCwgMHgw
MDAwMDAwMCwgMHgwMDAwMDAwMCB9LAorCXsgMHgwMDAwMDAwMCwgMHgwMDAwMDAwMCwgMHgwMDAw
MDAwMCwgMHgwMDAwMDAwMCB9LAorCXsgMHgwMDAwMDAwMCwgMHgwMDAwMDAwMCwgMHgwMDAwMDAw
MCwgMHgwMDAwMDAwMCB9LAorCXsgMHgwMDAwMDAwMCwgMHgwMDAwMDAwMCwgMHgwMDAwMDAwMCwg
MHgwMDAwMDAwMCB9LAorCXsgMHgwMDAwMDAwMCwgMHgwMDAwMDAwMCwgMHgwMDAwMDAwMCwgMHgw
MDAwMDAwMCB9LAorfTsKKworc3RydWN0IGNiX2tlcm5lbCB7CisJY29uc3Qgdm9pZCAqZGF0YTsK
Kwl1MzIgc2l6ZTsKK307CisKKyNkZWZpbmUgQ0JfS0VSTkVMKG5hbWUpIHsgLmRhdGEgPSAobmFt
ZSksIC5zaXplID0gc2l6ZW9mKG5hbWUpIH0KKworc3RhdGljIGNvbnN0IHN0cnVjdCBjYl9rZXJu
ZWwgY2Jfa2VybmVsX2dlbjcgPSBDQl9LRVJORUwoY2I3X2tlcm5lbCk7CitzdGF0aWMgY29uc3Qg
c3RydWN0IGNiX2tlcm5lbCBjYl9rZXJuZWxfaHN3ID0gQ0JfS0VSTkVMKGNiNzVfa2VybmVsKTsK
Kworc3RydWN0IGJhdGNoX2NodW5rIHsKKwlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKKwl1MzIgb2Zm
c2V0OworCXUzMiAqc3RhcnQ7CisJdTMyICplbmQ7CisJdTMyIG1heF9pdGVtczsKK307CisKK3N0
cnVjdCBiYXRjaF92YWxzIHsKKwl1MzIgbWF4X3ByaW1pdGl2ZXM7CisJdTMyIG1heF91cmJfZW50
cmllczsKKwl1MzIgY21kX3NpemU7CisJdTMyIHN0YXRlX3NpemU7CisJdTMyIHN0YXRlX3N0YXJ0
OworCXUzMiBiYXRjaF9zaXplOworCXUzMiBzdXJmYWNlX2hlaWdodDsKKwl1MzIgc3VyZmFjZV93
aWR0aDsKKwl1MzIgc2NyYXRjaF9zaXplOworCXUzMiBtYXhfc2l6ZTsKK307CisKK3N0YXRpYyB2
b2lkCitiYXRjaF9nZXRfZGVmYXVsdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHN0
cnVjdCBiYXRjaF92YWxzICpidikKK3sKKwlpZiAoSVNfSEFTV0VMTChpOTE1KSkgeworCQlidi0+
bWF4X3ByaW1pdGl2ZXMgPSAyODA7CisJCWJ2LT5tYXhfdXJiX2VudHJpZXMgPSBNQVhfVVJCX0VO
VFJJRVM7CisJCWJ2LT5zdXJmYWNlX2hlaWdodCA9IDE2ICogMTY7CisJCWJ2LT5zdXJmYWNlX3dp
ZHRoID0gMzIgKiAyICogMTY7CisJfSBlbHNlIHsKKwkJYnYtPm1heF9wcmltaXRpdmVzID0gMTI4
OworCQlidi0+bWF4X3VyYl9lbnRyaWVzID0gTUFYX1VSQl9FTlRSSUVTIC8gMjsKKwkJYnYtPnN1
cmZhY2VfaGVpZ2h0ID0gMTYgKiA4OworCQlidi0+c3VyZmFjZV93aWR0aCA9IDMyICogMTY7CisJ
fQorCWJ2LT5jbWRfc2l6ZSA9IGJ2LT5tYXhfcHJpbWl0aXZlcyAqIDQwOTY7CisJYnYtPnN0YXRl
X3NpemUgPSBTVEFURV9TSVpFOworCWJ2LT5zdGF0ZV9zdGFydCA9IGJ2LT5jbWRfc2l6ZTsKKwli
di0+YmF0Y2hfc2l6ZSA9IGJ2LT5jbWRfc2l6ZSArIGJ2LT5zdGF0ZV9zaXplOworCWJ2LT5zY3Jh
dGNoX3NpemUgPSBidi0+c3VyZmFjZV9oZWlnaHQgKiBidi0+c3VyZmFjZV93aWR0aDsKKwlidi0+
bWF4X3NpemUgPSBidi0+YmF0Y2hfc2l6ZSArIGJ2LT5zY3JhdGNoX3NpemU7Cit9CisKK3N0YXRp
YyB2b2lkIGJhdGNoX2luaXQoc3RydWN0IGJhdGNoX2NodW5rICpiYywKKwkJICAgICAgIHN0cnVj
dCBpOTE1X3ZtYSAqdm1hLAorCQkgICAgICAgdTMyICpzdGFydCwgdTMyIG9mZnNldCwgdTMyIG1h
eF9ieXRlcykKK3sKKwliYy0+dm1hID0gdm1hOworCWJjLT5vZmZzZXQgPSBvZmZzZXQ7CisJYmMt
PnN0YXJ0ID0gc3RhcnQgKyBiYy0+b2Zmc2V0IC8gc2l6ZW9mKCpiYy0+c3RhcnQpOworCWJjLT5l
bmQgPSBiYy0+c3RhcnQ7CisJYmMtPm1heF9pdGVtcyA9IG1heF9ieXRlcyAvIHNpemVvZigqYmMt
PnN0YXJ0KTsKK30KKworc3RhdGljIHUzMiBiYXRjaF9vZmZzZXQoY29uc3Qgc3RydWN0IGJhdGNo
X2NodW5rICpiYywgdTMyICpjcykKK3sKKwlyZXR1cm4gKGNzIC0gYmMtPnN0YXJ0KSAqIHNpemVv
ZigqYmMtPnN0YXJ0KSArIGJjLT5vZmZzZXQ7Cit9CisKK3N0YXRpYyB1MzIgYmF0Y2hfYWRkcihj
b25zdCBzdHJ1Y3QgYmF0Y2hfY2h1bmsgKmJjKQoreworCXJldHVybiBiYy0+dm1hLT5ub2RlLnN0
YXJ0OworfQorCitzdGF0aWMgdm9pZCBiYXRjaF9hZGQoc3RydWN0IGJhdGNoX2NodW5rICpiYywg
Y29uc3QgdTMyIGQpCit7CisJR0VNX0RFQlVHX1dBUk5fT04oKGJjLT5lbmQgLSBiYy0+c3RhcnQp
ID49IGJjLT5tYXhfaXRlbXMpOworCSpiYy0+ZW5kKysgPSBkOworfQorCitzdGF0aWMgdTMyICpi
YXRjaF9hbGxvY19pdGVtcyhzdHJ1Y3QgYmF0Y2hfY2h1bmsgKmJjLCB1MzIgYWxpZ24sIHUzMiBp
dGVtcykKK3sKKwl1MzIgKm1hcDsKKworCWlmIChhbGlnbikgeworCQl1MzIgKmVuZCA9IHB0cl9h
bGlnbihiYy0+ZW5kLCBhbGlnbik7CisKKwkJbWVtc2V0MzIoYmMtPmVuZCwgMCwgZW5kIC0gYmMt
PmVuZCk7CisJCWJjLT5lbmQgPSBlbmQ7CisJfQorCisJbWFwID0gYmMtPmVuZDsKKwliYy0+ZW5k
ICs9IGl0ZW1zOworCisJcmV0dXJuIG1hcDsKK30KKworc3RhdGljIHUzMiAqYmF0Y2hfYWxsb2Nf
Ynl0ZXMoc3RydWN0IGJhdGNoX2NodW5rICpiYywgdTMyIGFsaWduLCB1MzIgYnl0ZXMpCit7CisJ
R0VNX0JVR19PTighSVNfQUxJR05FRChieXRlcywgc2l6ZW9mKCpiYy0+c3RhcnQpKSk7CisJcmV0
dXJuIGJhdGNoX2FsbG9jX2l0ZW1zKGJjLCBhbGlnbiwgYnl0ZXMgLyBzaXplb2YoKmJjLT5zdGFy
dCkpOworfQorCitzdGF0aWMgdTMyCitnZW43X2ZpbGxfc3VyZmFjZV9zdGF0ZShzdHJ1Y3QgYmF0
Y2hfY2h1bmsgKnN0YXRlLAorCQkJY29uc3QgdTMyIGRzdF9vZmZzZXQsCisJCQljb25zdCBzdHJ1
Y3QgYmF0Y2hfdmFscyAqYnYpCit7CisJdTMyIHN1cmZhY2VfaCA9IGJ2LT5zdXJmYWNlX2hlaWdo
dDsKKwl1MzIgc3VyZmFjZV93ID0gYnYtPnN1cmZhY2Vfd2lkdGg7CisJdTMyICpjcyA9IGJhdGNo
X2FsbG9jX2l0ZW1zKHN0YXRlLCAzMiwgOCk7CisJdTMyIG9mZnNldCA9IGJhdGNoX29mZnNldChz
dGF0ZSwgY3MpOworCisjZGVmaW5lIFNVUkZBQ0VfMkQgMQorI2RlZmluZSBTVVJGQUNFRk9STUFU
X0I4RzhSOEE4X1VOT1JNIDB4MEMwCisjZGVmaW5lIFJFTkRFUl9DQUNIRV9SRUFEX1dSSVRFIDEK
KworCSpjcysrID0gU1VSRkFDRV8yRCA8PCAyOSB8CisJCShTVVJGQUNFRk9STUFUX0I4RzhSOEE4
X1VOT1JNIDw8IDE4KSB8CisJCShSRU5ERVJfQ0FDSEVfUkVBRF9XUklURSA8PCA4KTsKKworCSpj
cysrID0gYmF0Y2hfYWRkcihzdGF0ZSkgKyBkc3Rfb2Zmc2V0OworCisJKmNzKysgPSAoKHN1cmZh
Y2VfaCAvIDQgLSAxKSA8PCAxNikgfCAoc3VyZmFjZV93IC8gNCAtIDEpOworCSpjcysrID0gc3Vy
ZmFjZV93OworCSpjcysrID0gMDsKKwkqY3MrKyA9IDA7CisJKmNzKysgPSAwOworI2RlZmluZSBT
SEFERVJfQ0hBTk5FTFMociwgZywgYiwgYSkgXAorCSgoKHIpIDw8IDI1KSB8ICgoZykgPDwgMjIp
IHwgKChiKSA8PCAxOSkgfCAoKGEpIDw8IDE2KSkKKwkqY3MrKyA9IFNIQURFUl9DSEFOTkVMUyg0
LCA1LCA2LCA3KTsKKwliYXRjaF9hZHZhbmNlKHN0YXRlLCBjcyk7CisKKwlyZXR1cm4gb2Zmc2V0
OworfQorCitzdGF0aWMgdTMyCitnZW43X2ZpbGxfYmluZGluZ190YWJsZShzdHJ1Y3QgYmF0Y2hf
Y2h1bmsgKnN0YXRlLAorCQkJY29uc3Qgc3RydWN0IGJhdGNoX3ZhbHMgKmJ2KQoreworCXUzMiAq
Y3MgPSBiYXRjaF9hbGxvY19pdGVtcyhzdGF0ZSwgMzIsIDgpOworCXUzMiBvZmZzZXQgPSBiYXRj
aF9vZmZzZXQoc3RhdGUsIGNzKTsKKwl1MzIgc3VyZmFjZV9zdGFydDsKKworCXN1cmZhY2Vfc3Rh
cnQgPSBnZW43X2ZpbGxfc3VyZmFjZV9zdGF0ZShzdGF0ZSwgYnYtPmJhdGNoX3NpemUsIGJ2KTsK
KwkqY3MrKyA9IHN1cmZhY2Vfc3RhcnQgLSBzdGF0ZS0+b2Zmc2V0OworCSpjcysrID0gMDsKKwkq
Y3MrKyA9IDA7CisJKmNzKysgPSAwOworCSpjcysrID0gMDsKKwkqY3MrKyA9IDA7CisJKmNzKysg
PSAwOworCSpjcysrID0gMDsKKwliYXRjaF9hZHZhbmNlKHN0YXRlLCBjcyk7CisKKwlyZXR1cm4g
b2Zmc2V0OworfQorCitzdGF0aWMgdTMyCitnZW43X2ZpbGxfa2VybmVsX2RhdGEoc3RydWN0IGJh
dGNoX2NodW5rICpzdGF0ZSwKKwkJICAgICAgY29uc3QgdTMyICpkYXRhLAorCQkgICAgICBjb25z
dCB1MzIgc2l6ZSkKK3sKKwlyZXR1cm4gYmF0Y2hfb2Zmc2V0KHN0YXRlLAorCQkJICAgIG1lbWNw
eShiYXRjaF9hbGxvY19ieXRlcyhzdGF0ZSwgNjQsIHNpemUpLAorCQkJCSAgIGRhdGEsIHNpemUp
KTsKK30KKworc3RhdGljIHUzMgorZ2VuN19maWxsX2ludGVyZmFjZV9kZXNjcmlwdG9yKHN0cnVj
dCBiYXRjaF9jaHVuayAqc3RhdGUsCisJCQkgICAgICAgY29uc3Qgc3RydWN0IGJhdGNoX3ZhbHMg
KmJ2LAorCQkJICAgICAgIGNvbnN0IHN0cnVjdCBjYl9rZXJuZWwgKmtlcm5lbCwKKwkJCSAgICAg
ICB1bnNpZ25lZCBpbnQgY291bnQpCit7CisJdTMyICpjcyA9IGJhdGNoX2FsbG9jX2l0ZW1zKHN0
YXRlLCAzMiwgOCAqIGNvdW50KTsKKwl1MzIgb2Zmc2V0ID0gYmF0Y2hfb2Zmc2V0KHN0YXRlLCBj
cyk7CisKKwkqY3MrKyA9IGdlbjdfZmlsbF9rZXJuZWxfZGF0YShzdGF0ZSwga2VybmVsLT5kYXRh
LCBrZXJuZWwtPnNpemUpOworCSpjcysrID0gKDEgPDwgNykgfCAoMSA8PCAxMyk7CisJKmNzKysg
PSAwOworCSpjcysrID0gKGdlbjdfZmlsbF9iaW5kaW5nX3RhYmxlKHN0YXRlLCBidikgLSBzdGF0
ZS0+b2Zmc2V0KSB8IDE7CisJKmNzKysgPSAwOworCSpjcysrID0gMDsKKwkqY3MrKyA9IDA7CisJ
KmNzKysgPSAwOworCWJhdGNoX2FkdmFuY2Uoc3RhdGUsIGNzKTsKKworCS8qIDEgLSA2M2R1bW15
IGlkZHMgKi8KKwltZW1zZXQzMihjcywgMHgwMCwgKGNvdW50IC0gMSkgKiA4KTsKKworCXJldHVy
biBvZmZzZXQ7Cit9CisKK3N0YXRpYyB2b2lkCitnZW43X2VtaXRfc3RhdGVfYmFzZV9hZGRyZXNz
KHN0cnVjdCBiYXRjaF9jaHVuayAqYmF0Y2gsCisJCQkgICAgIHUzMiBzdXJmYWNlX3N0YXRlX2Jh
c2UpCit7CisJdTMyICpjcyA9IGJhdGNoX2FsbG9jX2l0ZW1zKGJhdGNoLCAwLCAxMik7CisKKwkq
Y3MrKyA9IFNUQVRFX0JBU0VfQUREUkVTUyB8ICgxMiAtIDIpOworCS8qIGdlbmVyYWwgKi8KKwkq
Y3MrKyA9IGJhdGNoX2FkZHIoYmF0Y2gpIHwgQkFTRV9BRERSRVNTX01PRElGWTsKKwkvKiBzdXJm
YWNlICovCisJKmNzKysgPSBiYXRjaF9hZGRyKGJhdGNoKSB8IHN1cmZhY2Vfc3RhdGVfYmFzZSB8
IEJBU0VfQUREUkVTU19NT0RJRlk7CisJLyogZHluYW1pYyAqLworCSpjcysrID0gYmF0Y2hfYWRk
cihiYXRjaCkgfCBCQVNFX0FERFJFU1NfTU9ESUZZOworCS8qIGluZGlyZWN0ICovCisJKmNzKysg
PSBiYXRjaF9hZGRyKGJhdGNoKSB8IEJBU0VfQUREUkVTU19NT0RJRlk7CisJLyogaW5zdHJ1Y3Rp
b24gKi8KKwkqY3MrKyA9IGJhdGNoX2FkZHIoYmF0Y2gpIHwgQkFTRV9BRERSRVNTX01PRElGWTsK
KworCS8qIGdlbmVyYWwvZHluYW1pYy9pbmRpcmVjdC9pbnN0cnVjdGlvbiBhY2Nlc3MgQm91bmQg
Ki8KKwkqY3MrKyA9IDA7CisJKmNzKysgPSBCQVNFX0FERFJFU1NfTU9ESUZZOworCSpjcysrID0g
MDsKKwkqY3MrKyA9IEJBU0VfQUREUkVTU19NT0RJRlk7CisJKmNzKysgPSAwOworCSpjcysrID0g
MDsKKwliYXRjaF9hZHZhbmNlKGJhdGNoLCBjcyk7Cit9CisKK3N0YXRpYyB2b2lkCitnZW43X2Vt
aXRfdmZlX3N0YXRlKHN0cnVjdCBiYXRjaF9jaHVuayAqYmF0Y2gsCisJCSAgICBjb25zdCBzdHJ1
Y3QgYmF0Y2hfdmFscyAqYnYsCisJCSAgICB1MzIgdXJiX3NpemUsIHUzMiBjdXJiZV9zaXplLAor
CQkgICAgdTMyIG1vZGUpCit7CisJdTMyIHVyYl9lbnRyaWVzID0gYnYtPm1heF91cmJfZW50cmll
czsKKwl1MzIgdGhyZWFkcyA9IGJ2LT5tYXhfcHJpbWl0aXZlcyAtIDE7CisJdTMyICpjcyA9IGJh
dGNoX2FsbG9jX2l0ZW1zKGJhdGNoLCAzMiwgOCk7CisKKwkqY3MrKyA9IE1FRElBX1ZGRV9TVEFU
RSB8ICg4IC0gMik7CisKKwkvKiBzY3JhdGNoIGJ1ZmZlciAqLworCSpjcysrID0gMDsKKworCS8q
IG51bWJlciBvZiB0aHJlYWRzICYgdXJiIGVudHJpZXMgZm9yIEdQR1BVIHZzIE1lZGlhIE1vZGUg
Ki8KKwkqY3MrKyA9IHRocmVhZHMgPDwgMTYgfCB1cmJfZW50cmllcyA8PCA4IHwgbW9kZSA8PCAy
OworCisJKmNzKysgPSAwOworCisJLyogdXJiIGVudHJ5IHNpemUgJiBjdXJiZSBzaXplIGluIDI1
NiBiaXRzIHVuaXQgKi8KKwkqY3MrKyA9IHVyYl9zaXplIDw8IDE2IHwgY3VyYmVfc2l6ZTsKKwor
CS8qIHNjb3JlYm9hcmQgKi8KKwkqY3MrKyA9IDA7CisJKmNzKysgPSAwOworCSpjcysrID0gMDsK
KwliYXRjaF9hZHZhbmNlKGJhdGNoLCBjcyk7Cit9CisKK3N0YXRpYyB2b2lkCitnZW43X2VtaXRf
aW50ZXJmYWNlX2Rlc2NyaXB0b3JfbG9hZChzdHJ1Y3QgYmF0Y2hfY2h1bmsgKmJhdGNoLAorCQkJ
CSAgICBjb25zdCB1MzIgaW50ZXJmYWNlX2Rlc2NyaXB0b3IsCisJCQkJICAgIHVuc2lnbmVkIGlu
dCBjb3VudCkKK3sKKwl1MzIgKmNzID0gYmF0Y2hfYWxsb2NfaXRlbXMoYmF0Y2gsIDgsIDQpOwor
CisJKmNzKysgPSBNRURJQV9JTlRFUkZBQ0VfREVTQ1JJUFRPUl9MT0FEIHwgKDQgLSAyKTsKKwkq
Y3MrKyA9IDA7CisJKmNzKysgPSBjb3VudCAqIDggKiBzaXplb2YoKmNzKTsKKworCS8qCisJICog
aW50ZXJmYWNlIGRlc2NyaXB0b3IgYWRkcmVzcyAtIGl0IGlzIHJlbGF0aXZlIHRvIHRoZSBkeW5h
bWljcyBiYXNlCisJICogYWRkcmVzcworCSAqLworCSpjcysrID0gaW50ZXJmYWNlX2Rlc2NyaXB0
b3I7CisJYmF0Y2hfYWR2YW5jZShiYXRjaCwgY3MpOworfQorCitzdGF0aWMgdm9pZAorZ2VuN19l
bWl0X21lZGlhX29iamVjdChzdHJ1Y3QgYmF0Y2hfY2h1bmsgKmJhdGNoLAorCQkgICAgICAgdW5z
aWduZWQgaW50IG1lZGlhX29iamVjdF9pbmRleCkKK3sKKwl1bnNpZ25lZCBpbnQgeF9vZmZzZXQg
PSAobWVkaWFfb2JqZWN0X2luZGV4ICUgMTYpICogNjQ7CisJdW5zaWduZWQgaW50IHlfb2Zmc2V0
ID0gKG1lZGlhX29iamVjdF9pbmRleCAvIDE2KSAqIDE2OworCXVuc2lnbmVkIGludCBpbmxpbmVf
ZGF0YV9zaXplOworCXVuc2lnbmVkIGludCBtZWRpYV9iYXRjaF9zaXplOworCXVuc2lnbmVkIGlu
dCBpOworCXUzMiAqY3M7CisKKwlpbmxpbmVfZGF0YV9zaXplID0gMTEyICogODsKKwltZWRpYV9i
YXRjaF9zaXplID0gaW5saW5lX2RhdGFfc2l6ZSArIDY7CisKKwljcyA9IGJhdGNoX2FsbG9jX2l0
ZW1zKGJhdGNoLCA4LCBtZWRpYV9iYXRjaF9zaXplKTsKKworCSpjcysrID0gTUVESUFfT0JKRUNU
IHwgKG1lZGlhX2JhdGNoX3NpemUgLSAyKTsKKworCS8qIGludGVyZmFjZSBkZXNjcmlwdG9yIG9m
ZnNldCAqLworCSpjcysrID0gMDsKKworCS8qIHdpdGhvdXQgaW5kaXJlY3QgZGF0YSAqLworCSpj
cysrID0gMDsKKwkqY3MrKyA9IDA7CisKKwkvKiBzY29yZWJvYXJkICovCisJKmNzKysgPSAwOwor
CSpjcysrID0gMDsKKworCS8qIGlubGluZSAqLworCSpjcysrID0gKHlfb2Zmc2V0IDw8IDE2KSB8
ICh4X29mZnNldCk7CisJKmNzKysgPSAwOworCSpjcysrID0gR1QzX0lOTElORV9EQVRBX0RFTEFZ
UzsKKwlmb3IgKGkgPSAzOyBpIDwgaW5saW5lX2RhdGFfc2l6ZTsgaSsrKQorCQkqY3MrKyA9IDA7
CisKKwliYXRjaF9hZHZhbmNlKGJhdGNoLCBjcyk7Cit9CisKK3N0YXRpYyB2b2lkIGdlbjdfZW1p
dF9waXBlbGluZV9mbHVzaChzdHJ1Y3QgYmF0Y2hfY2h1bmsgKmJhdGNoKQoreworCXUzMiAqY3Mg
PSBiYXRjaF9hbGxvY19pdGVtcyhiYXRjaCwgMCwgNSk7CisKKwkqY3MrKyA9IEdGWF9PUF9QSVBF
X0NPTlRST0woNSk7CisJKmNzKysgPSBQSVBFX0NPTlRST0xfU1RBVEVfQ0FDSEVfSU5WQUxJREFU
RSB8CisJCVBJUEVfQ09OVFJPTF9HTE9CQUxfR1RUX0lWQjsKKwkqY3MrKyA9IDA7CisJKmNzKysg
PSAwOworCSpjcysrID0gMDsKKwliYXRjaF9hZHZhbmNlKGJhdGNoLCBjcyk7Cit9CisKK3N0YXRp
YyB2b2lkIGVtaXRfYmF0Y2goc3RydWN0IGk5MTVfdm1hICogY29uc3Qgdm1hLAorCQkgICAgICAg
dTMyICpzdGFydCwKKwkJICAgICAgIGNvbnN0IHN0cnVjdCBiYXRjaF92YWxzICpidikKK3sKKwlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHZtYS0+dm0tPmk5MTU7CisJdW5zaWduZWQg
aW50IGRlc2NfY291bnQgPSA2NDsKKwljb25zdCB1MzIgdXJiX3NpemUgPSAxMTI7CisJc3RydWN0
IGJhdGNoX2NodW5rIGNtZHMsIHN0YXRlOworCXUzMiBpbnRlcmZhY2VfZGVzY3JpcHRvcjsKKwl1
bnNpZ25lZCBpbnQgaTsKKworCWJhdGNoX2luaXQoJmNtZHMsIHZtYSwgc3RhcnQsIDAsIGJ2LT5j
bWRfc2l6ZSk7CisJYmF0Y2hfaW5pdCgmc3RhdGUsIHZtYSwgc3RhcnQsIGJ2LT5zdGF0ZV9zdGFy
dCwgYnYtPnN0YXRlX3NpemUpOworCisJaW50ZXJmYWNlX2Rlc2NyaXB0b3IgPQorCQlnZW43X2Zp
bGxfaW50ZXJmYWNlX2Rlc2NyaXB0b3IoJnN0YXRlLCBidiwKKwkJCQkJICAgICAgIElTX0hBU1dF
TEwoaTkxNSkgPworCQkJCQkgICAgICAgJmNiX2tlcm5lbF9oc3cgOiAmY2Jfa2VybmVsX2dlbjcs
CisJCQkJCSAgICAgICBkZXNjX2NvdW50KTsKKwlnZW43X2VtaXRfcGlwZWxpbmVfZmx1c2goJmNt
ZHMpOworCWJhdGNoX2FkZCgmY21kcywgUElQRUxJTkVfU0VMRUNUIHwgUElQRUxJTkVfU0VMRUNU
X01FRElBKTsKKwliYXRjaF9hZGQoJmNtZHMsIE1JX05PT1ApOworCWdlbjdfZW1pdF9zdGF0ZV9i
YXNlX2FkZHJlc3MoJmNtZHMsIGludGVyZmFjZV9kZXNjcmlwdG9yKTsKKwlnZW43X2VtaXRfcGlw
ZWxpbmVfZmx1c2goJmNtZHMpOworCisJZ2VuN19lbWl0X3ZmZV9zdGF0ZSgmY21kcywgYnYsIHVy
Yl9zaXplIC0gMSwgMCwgMCk7CisKKwlnZW43X2VtaXRfaW50ZXJmYWNlX2Rlc2NyaXB0b3JfbG9h
ZCgmY21kcywKKwkJCQkJICAgIGludGVyZmFjZV9kZXNjcmlwdG9yLAorCQkJCQkgICAgZGVzY19j
b3VudCk7CisKKwlmb3IgKGkgPSAwOyBpIDwgYnYtPm1heF9wcmltaXRpdmVzOyBpKyspCisJCWdl
bjdfZW1pdF9tZWRpYV9vYmplY3QoJmNtZHMsIGkpOworCisJYmF0Y2hfYWRkKCZjbWRzLCBNSV9C
QVRDSF9CVUZGRVJfRU5EKTsKK30KKworaW50IGdlbjdfc2V0dXBfY2xlYXJfZ3ByX2JiKHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKiBjb25zdCBlbmdpbmUsCisJCQkgICAgc3RydWN0IGk5MTVfdm1h
ICogY29uc3Qgdm1hKQoreworCXN0cnVjdCBiYXRjaF92YWxzIGJ2OworCXUzMiAqYmF0Y2g7CisK
KwliYXRjaF9nZXRfZGVmYXVsdHMoZW5naW5lLT5pOTE1LCAmYnYpOworCWlmICghdm1hKQorCQly
ZXR1cm4gYnYubWF4X3NpemU7CisKKwlHRU1fQlVHX09OKHZtYS0+b2JqLT5iYXNlLnNpemUgPCBi
di5tYXhfc2l6ZSk7CisKKwliYXRjaCA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKHZtYS0+b2Jq
LCBJOTE1X01BUF9XQyk7CisJaWYgKElTX0VSUihiYXRjaCkpCisJCXJldHVybiBQVFJfRVJSKGJh
dGNoKTsKKworCWVtaXRfYmF0Y2godm1hLCBtZW1zZXQoYmF0Y2gsIDAsIGJ2Lm1heF9zaXplKSwg
JmJ2KTsKKworCWk5MTVfZ2VtX29iamVjdF9mbHVzaF9tYXAodm1hLT5vYmopOworCWk5MTVfZ2Vt
X29iamVjdF91bnBpbl9tYXAodm1hLT5vYmopOworCisJcmV0dXJuIDA7Cit9CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9nZW43X3JlbmRlcmNsZWFyLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9nZW43X3JlbmRlcmNsZWFyLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5k
ZXggMDAwMDAwMDAwMDAwLi5iYjEwMDc0OGUyYzYKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9nZW43X3JlbmRlcmNsZWFyLmgKQEAgLTAsMCArMSwxNSBAQAorLyog
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLworLyoKKyAqIENvcHlyaWdodCDCqSAyMDE5
IEludGVsIENvcnBvcmF0aW9uCisgKi8KKworI2lmbmRlZiBfX0dFTjdfUkVOREVSQ0xFQVJfSF9f
CisjZGVmaW5lIF9fR0VON19SRU5ERVJDTEVBUl9IX18KKworc3RydWN0IGludGVsX2VuZ2luZV9j
czsKK3N0cnVjdCBpOTE1X3ZtYTsKKworaW50IGdlbjdfc2V0dXBfY2xlYXJfZ3ByX2JiKHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKiBjb25zdCBlbmdpbmUsCisJCQkgICAgc3RydWN0IGk5MTVfdm1h
ICogY29uc3Qgdm1hKTsKKworI2VuZGlmIC8qIF9fR0VON19SRU5ERVJDTEVBUl9IX18gKi8KZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmgKaW5kZXggNTFiODcx
ODUxM2JjLi5mMDQyMTRhNTRmNzUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2dwdV9jb21tYW5kcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2dwdV9jb21tYW5kcy5oCkBAIC0yOTIsMTAgKzI5MiwyMSBAQAogI2RlZmluZSBNSV9TVE9SRV9V
UkJfTUVNICAgICAgICBNSV9JTlNUUigweDJELCAwKQogI2RlZmluZSBNSV9DT05ESVRJT05BTF9C
QVRDSF9CVUZGRVJfRU5EIE1JX0lOU1RSKDB4MzYsIDApCiAKLSNkZWZpbmUgUElQRUxJTkVfU0VM
RUNUICAgICAgICAgICAgICAgICgoMHgzPDwyOSl8KDB4MTw8MjcpfCgweDE8PDI0KXwoMHg0PDwx
NikpCi0jZGVmaW5lIEdGWF9PUF8zRFNUQVRFX1ZGX1NUQVRJU1RJQ1MgICAoKDB4Mzw8MjkpfCgw
eDE8PDI3KXwoMHgwPDwyNCl8KDB4Qjw8MTYpKQotI2RlZmluZSBNRURJQV9WRkVfU1RBVEUgICAg
ICAgICAgICAgICAgKCgweDM8PDI5KXwoMHgyPDwyNyl8KDB4MDw8MjQpfCgweDA8PDE2KSkKKyNk
ZWZpbmUgU1RBVEVfQkFTRV9BRERSRVNTIFwKKwkoKDB4MyA8PCAyOSkgfCAoMHgwIDw8IDI3KSB8
ICgweDEgPDwgMjQpIHwgKDB4MSA8PCAxNikpCisjZGVmaW5lIEJBU0VfQUREUkVTU19NT0RJRlkJ
CVJFR19CSVQoMCkKKyNkZWZpbmUgUElQRUxJTkVfU0VMRUNUIFwKKwkoKDB4MyA8PCAyOSkgfCAo
MHgxIDw8IDI3KSB8ICgweDEgPDwgMjQpIHwgKDB4NCA8PCAxNikpCisjZGVmaW5lIFBJUEVMSU5F
X1NFTEVDVF9NRURJQQkgICAgICAgUkVHX0JJVCgwKQorI2RlZmluZSBHRlhfT1BfM0RTVEFURV9W
Rl9TVEFUSVNUSUNTIFwKKwkoKDB4MyA8PCAyOSkgfCAoMHgxIDw8IDI3KSB8ICgweDAgPDwgMjQp
IHwgKDB4QiA8PCAxNikpCisjZGVmaW5lIE1FRElBX1ZGRV9TVEFURSBcCisJKCgweDMgPDwgMjkp
IHwgKDB4MiA8PCAyNykgfCAoMHgwIDw8IDI0KSB8ICgweDAgPDwgMTYpKQogI2RlZmluZSAgTUVE
SUFfVkZFX1NUQVRFX01NSU9fQUNDRVNTX01BU0sgKDB4MTgpCisjZGVmaW5lIE1FRElBX0lOVEVS
RkFDRV9ERVNDUklQVE9SX0xPQUQgXAorCSgoMHgzIDw8IDI5KSB8ICgweDIgPDwgMjcpIHwgKDB4
MCA8PCAyNCkgfCAoMHgyIDw8IDE2KSkKKyNkZWZpbmUgTUVESUFfT0JKRUNUIFwKKwkoKDB4MyA8
PCAyOSkgfCAoMHgyIDw8IDI3KSB8ICgweDEgPDwgMjQpIHwgKDB4MCA8PCAxNikpCiAjZGVmaW5l
IEdQR1BVX09CSkVDVCAgICAgICAgICAgICAgICAgICAoKDB4Mzw8MjkpfCgweDI8PDI3KXwoMHgx
PDwyNCl8KDB4NDw8MTYpKQogI2RlZmluZSBHUEdQVV9XQUxLRVIgICAgICAgICAgICAgICAgICAg
KCgweDM8PDI5KXwoMHgyPDwyNyl8KDB4MTw8MjQpfCgweDU8PDE2KSkKICNkZWZpbmUgR0ZYX09Q
XzNEU1RBVEVfRFg5X0NPTlNUQU5URl9WUyBcCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5jCmluZGV4IDlmM2JmZTQ5OTQ0Ni4uZGMwNjMyZWE5ZmRl
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Np
b24uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24u
YwpAQCAtMzQsNiArMzQsNyBAQAogI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9jb250ZXh0LmgiCiAK
ICNpbmNsdWRlICJnZW42X3BwZ3R0LmgiCisjaW5jbHVkZSAiZ2VuN19yZW5kZXJjbGVhci5oIgog
I2luY2x1ZGUgImk5MTVfZHJ2LmgiCiAjaW5jbHVkZSAiaTkxNV90cmFjZS5oIgogI2luY2x1ZGUg
ImludGVsX2NvbnRleHQuaCIKQEAgLTIwMDgsNyArMjAwOSw3IEBAIHN0YXRpYyB2b2lkIHNldHVw
X3ZlY3Moc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogc3RhdGljIGludCBnZW43X2N0
eF9zd2l0Y2hfYmJfc2V0dXAoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqIGNvbnN0IGVuZ2luZSwK
IAkJCQkgICAgc3RydWN0IGk5MTVfdm1hICogY29uc3Qgdm1hKQogewotCXJldHVybiAwOworCXJl
dHVybiBnZW43X3NldHVwX2NsZWFyX2dwcl9iYihlbmdpbmUsIHZtYSk7CiB9CiAKIHN0YXRpYyBp
bnQgZ2VuN19jdHhfc3dpdGNoX2JiX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
KQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oCmluZGV4IGIwYWRlNzZiZWM5MC4uN2FjNWIzNTY1
ODQ1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmgKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oCkBAIC0xNzIsNiArMTcyLDExIEBAIF9f
Y2hlY2tfc3RydWN0X3NpemUoc2l6ZV90IGJhc2UsIHNpemVfdCBhcnIsIHNpemVfdCBjb3VudCwg
c2l6ZV90ICpzaXplKQogCSh0eXBlb2YocHRyKSkoX192ICsgMSk7CQkJCQkJXAogfSkKIAorI2Rl
ZmluZSBwdHJfYWxpZ24ocHRyLCBhbGlnbikgKHsJCQkJCVwKKwl1bnNpZ25lZCBsb25nIF9fdiA9
ICh1bnNpZ25lZCBsb25nKShwdHIpOwkJCVwKKwkodHlwZW9mKHB0cikpcm91bmRfdXAoX192LCAo
YWxpZ24pKTsJCQkJXAorfSkKKwogI2RlZmluZSBwYWdlX21hc2tfYml0cyhwdHIpIHB0cl9tYXNr
X2JpdHMocHRyLCBQQUdFX1NISUZUKQogI2RlZmluZSBwYWdlX3VubWFza19iaXRzKHB0cikgcHRy
X3VubWFza19iaXRzKHB0ciwgUEFHRV9TSElGVCkKICNkZWZpbmUgcGFnZV9wYWNrX2JpdHMocHRy
LCBiaXRzKSBwdHJfcGFja19iaXRzKHB0ciwgYml0cywgUEFHRV9TSElGVCkKLS0gCjIuMjAuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
