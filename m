Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BB9E0F9A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 03:17:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C10566E940;
	Wed, 23 Oct 2019 01:17:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 269936E940;
 Wed, 23 Oct 2019 01:17:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1F4E8A00E9;
 Wed, 23 Oct 2019 01:17:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 23 Oct 2019 01:17:22 -0000
Message-ID: <20191023011722.3024.40836@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191022185643.1483-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191022185643.1483-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Fix_PCH_reference_clock_for_FDI_on_HSW/BDW?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEZpeCBQQ0ggcmVmZXJlbmNl
IGNsb2NrIGZvciBGREkgb24gSFNXL0JEVwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVk
ZXNrdG9wLm9yZy9zZXJpZXMvNjg0MTEvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoK
Q0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNzE1NSAtPiBQYXRjaHdvcmtfMTQ5MzUK
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoKU3Vt
bWFyeQotLS0tLS0tCgogICoqRkFJTFVSRSoqCgogIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNv
bWluZyB3aXRoIFBhdGNod29ya18xNDkzNSBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUKICB2ZXJpZmll
ZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBu
b3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18x
NDkzNSwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFsbG93IHRoZW0KICB0byBkb2N1
bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0
aXZlcyBpbiBDSS4KCiAgRXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDkzNS9pbmRleC5odG1sCgpQb3NzaWJsZSBuZXcgaXNz
dWVzCi0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0
aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQ5MzU6CgojIyMgSUdU
IGNoYW5nZXMgIyMjCgojIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMKCiAgKiBpZ3RAcHJp
bWVfdmdlbUBiYXNpYy13YWl0LWRlZmF1bHQ6CiAgICAtIGZpLWtibC1zb3Jha2E6ICAgICAgW1BB
U1NdWzFdIC0+IFtJTkNPTVBMRVRFXVsyXQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxNTUvZmkta2JsLXNvcmFrYS9pZ3RAcHJpbWVfdmdl
bUBiYXNpYy13YWl0LWRlZmF1bHQuaHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0OTM1L2ZpLWtibC1zb3Jha2EvaWd0QHByaW1l
X3ZnZW1AYmFzaWMtd2FpdC1kZWZhdWx0Lmh0bWwKCiAgCiMjIyMgU3VwcHJlc3NlZCAjIyMjCgog
IFRoZSBmb2xsb3dpbmcgcmVzdWx0cyBjb21lIGZyb20gdW50cnVzdGVkIG1hY2hpbmVzLCB0ZXN0
cywgb3Igc3RhdHVzZXMuCiAgVGhleSBkbyBub3QgYWZmZWN0IHRoZSBvdmVyYWxsIHJlc3VsdC4K
CiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbToKICAgIC0ge2ZpLXRnbC11Mn06ICAgICAg
ICBOT1RSVU4gLT4gW0lOQ09NUExFVEVdWzNdCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ5MzUvZmktdGdsLXUyL2lndEBpOTE1X3Nl
bGZ0ZXN0QGxpdmVfZ2VtLmh0bWwKICAgIC0ge2ZpLXRnbC11fTogICAgICAgICBOT1RSVU4gLT4g
W0lOQ09NUExFVEVdWzRdCiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQ5MzUvZmktdGdsLXUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9n
ZW0uaHRtbAoKICAqIHtpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X2hlYXJ0YmVhdH06CiAgICAt
IGZpLXdobC11OiAgICAgICAgICAgW1BBU1NdWzVdIC0+IFtETUVTRy1GQUlMXVs2XQogICBbNV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxNTUvZmkt
d2hsLXUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9oZWFydGJlYXQuaHRtbAogICBbNl06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0OTM1L2Zp
LXdobC11L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfaGVhcnRiZWF0Lmh0bWwKCiAgCktub3du
IGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0
Y2h3b3JrXzE0OTM1IHRoYXQgY29tZSBmcm9tIGtub3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdl
cyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAjIyMjCgogICogaWd0QGdlbV9jdHhfc3dpdGNoQHJjczA6
CiAgICAtIGZpLWljbC11MjogICAgICAgICAgW1BBU1NdWzddIC0+IFtJTkNPTVBMRVRFXVs4XSAo
W2ZkbyMxMDc3MTNdKQogICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzcxNTUvZmktaWNsLXUyL2lndEBnZW1fY3R4X3N3aXRjaEByY3MwLmh0bWwK
ICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNDkzNS9maS1pY2wtdTIvaWd0QGdlbV9jdHhfc3dpdGNoQHJjczAuaHRtbAoKICAqIGlndEBn
ZW1fbW1hcF9ndHRAYmFzaWMtc21hbGwtYm8tdGlsZWR5OgogICAgLSBmaS1pY2wtdTM6ICAgICAg
ICAgIFtQQVNTXVs5XSAtPiBbRE1FU0ctV0FSTl1bMTBdIChbZmRvIzEwNzcyNF0pICsxIHNpbWls
YXIgaXNzdWUKICAgWzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV83MTU1L2ZpLWljbC11My9pZ3RAZ2VtX21tYXBfZ3R0QGJhc2ljLXNtYWxsLWJvLXRp
bGVkeS5odG1sCiAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE0OTM1L2ZpLWljbC11My9pZ3RAZ2VtX21tYXBfZ3R0QGJhc2ljLXNtYWxs
LWJvLXRpbGVkeS5odG1sCgogIAojIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMKCiAgKiBpZ3RAZ2Vt
X2ZsaW5rX2Jhc2ljQGJhc2ljOgogICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtETUVTRy1XQVJO
XVsxMV0gKFtmZG8jMTA3NzI0XSAvIFtmZG8jMTEyMDUyIF0pIC0+IFtQQVNTXVsxMl0KICAgWzEx
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE1NS9m
aS1pY2wtdTMvaWd0QGdlbV9mbGlua19iYXNpY0BiYXNpYy5odG1sCiAgIFsxMl06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0OTM1L2ZpLWljbC11
My9pZ3RAZ2VtX2ZsaW5rX2Jhc2ljQGJhc2ljLmh0bWwKCiAgKiBpZ3RAZ2VtX3N5bmNAYmFzaWMt
bWFueS1lYWNoOgogICAgLSB7ZmktdGdsLXV9OiAgICAgICAgIFtJTkNPTVBMRVRFXVsxM10gKFtm
ZG8jMTExODgwXSkgLT4gW1BBU1NdWzE0XQogICBbMTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MTU1L2ZpLXRnbC11L2lndEBnZW1fc3luY0BiYXNp
Yy1tYW55LWVhY2guaHRtbAogICBbMTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNDkzNS9maS10Z2wtdS9pZ3RAZ2VtX3N5bmNAYmFzaWMtbWFu
eS1lYWNoLmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3JlcXVlc3RzOgogICAgLSB7
ZmktdGdsLXUyfTogICAgICAgIFtJTkNPTVBMRVRFXVsxNV0gKFtmZG8jMTEyMDU3XSkgLT4gW1BB
U1NdWzE2XQogICBbMTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV83MTU1L2ZpLXRnbC11Mi9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3JlcXVlc3RzLmh0
bWwKICAgWzE2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQ5MzUvZmktdGdsLXUyL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfcmVxdWVzdHMuaHRt
bAoKICAqIGlndEB2Z2VtX2Jhc2ljQHNldHZlcnNpb246CiAgICAtIGZpLWljbC11MzogICAgICAg
ICAgW0RNRVNHLVdBUk5dWzE3XSAoW2ZkbyMxMDc3MjRdKSAtPiBbUEFTU11bMThdCiAgIFsxN106
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxNTUvZmkt
aWNsLXUzL2lndEB2Z2VtX2Jhc2ljQHNldHZlcnNpb24uaHRtbAogICBbMThdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDkzNS9maS1pY2wtdTMv
aWd0QHZnZW1fYmFzaWNAc2V0dmVyc2lvbi5odG1sCgogIAogIHtuYW1lfTogVGhpcyBlbGVtZW50
IGlzIHN1cHByZXNzZWQuIFRoaXMgbWVhbnMgaXQgaXMgaWdub3JlZCB3aGVuIGNvbXB1dGluZwog
ICAgICAgICAgdGhlIHN0YXR1cyBvZiB0aGUgZGlmZmVyZW5jZSAoU1VDQ0VTUywgV0FSTklORywg
b3IgRkFJTFVSRSkuCgogIFtmZG8jMTA3NzEzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzEzCiAgW2ZkbyMxMDc3MjRdOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MjQKICBbZmRvIzExMDU2Nl06IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDU2NgogIFtmZG8jMTEx
ODgwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExODgw
CiAgW2ZkbyMxMTIwNTIgXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTEyMDUyIAogIFtmZG8jMTEyMDU3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMDU3CgoKUGFydGljaXBhdGluZyBob3N0cyAoNTIgLT4gMzcp
Ci0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBNaXNzaW5nICAgICgxNSk6IGZpLWlj
bC11NCBmaS1pbGstbTU0MCBmaS1oc3ctNDIwMHUgZmktYnl0LWoxOTAwIGZpLWhzdy1wZXBweSBm
aS1ieXQtc3F1YXdrcyBmaS1ic3ctY3lhbiBmaS1zbmItMjUyMG0gZmktYnl0LWNsYXBwZXIgZmkt
ZWxrLWU3NTAwIGZpLWljbC15IGZpLWljbC1ndWMgZmktYnN3LWtlZmthIGZpLWJkdy1zYW11cyBm
aS1jbWwtdSAKCgpCdWlsZCBjaGFuZ2VzCi0tLS0tLS0tLS0tLS0KCiAgKiBDSTogQ0ktMjAxOTA1
MjkgLT4gTm9uZQogICogTGludXg6IENJX0RSTV83MTU1IC0+IFBhdGNod29ya18xNDkzNQoKICBD
SS0yMDE5MDUyOTogMjAxOTA1MjkKICBDSV9EUk1fNzE1NTogODdhZmYxMjhmOWJhZmQ5MDg1NGU0
NjkxYzNhZmNkZjdhMGU2MWNlMiBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1j
aS9saW51eAogIElHVF81MjM1OiBkYTlhYmJhYjY5YmU4MGRkMDA4MTJhNDYwN2E0ZWEyZGZmY2M0
NTQ0IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9yZy9hcHAvaW50ZWwtZ3B1LXRv
b2xzCiAgUGF0Y2h3b3JrXzE0OTM1OiA4Y2E3NmNmYjBkOTE4MDkwMDEyOTI0NTk3NjI4NTdhYTkw
NzgwNWI0IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CgoKPT0g
TGludXggY29tbWl0cyA9PQoKOGNhNzZjZmIwZDkxIGRybS9pOTE1OiBGaXggUENIIHJlZmVyZW5j
ZSBjbG9jayBmb3IgRkRJIG9uIEhTVy9CRFcKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMg
c2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NDkzNS9pbmRleC5odG1sCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
