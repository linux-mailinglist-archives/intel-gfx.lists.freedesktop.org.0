Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCFFDB18CB
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2019 09:20:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 456476EE94;
	Fri, 13 Sep 2019 07:20:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 11F5D6EE93;
 Fri, 13 Sep 2019 07:20:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DE77CA0096;
 Fri, 13 Sep 2019 07:20:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 13 Sep 2019 07:20:53 -0000
Message-ID: <20190913072053.32423.13497@emeril.freedesktop.org>
References: <20190913064200.24297-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190913064200.24297-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915/gtt=3A_Make_sure_the_gen6_ppgtt_is_bound_before_first_use_?=
 =?utf-8?b?KHJldjMp?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3R0OiBNYWtlIHN1cmUgdGhl
IGdlbjYgcHBndHQgaXMgYm91bmQgYmVmb3JlIGZpcnN0IHVzZSAocmV2MykKVVJMICAgOiBodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY2NTUxLwpTdGF0ZSA6IHN1Y2Nl
c3MKCj09IFN1bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzY4ODUg
LT4gUGF0Y2h3b3JrXzE0MzkzCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKlNVQ0NFU1MqKgoKICBObyByZWdy
ZXNzaW9ucyBmb3VuZC4KCiAgRXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDM5My8KClBvc3NpYmxlIG5ldyBpc3N1ZXMKLS0t
LS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5
IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDM5MzoKCiMjIyBJR1QgY2hhbmdl
cyAjIyMKCiMjIyMgU3VwcHJlc3NlZCAjIyMjCgogIFRoZSBmb2xsb3dpbmcgcmVzdWx0cyBjb21l
IGZyb20gdW50cnVzdGVkIG1hY2hpbmVzLCB0ZXN0cywgb3Igc3RhdHVzZXMuCiAgVGhleSBkbyBu
b3QgYWZmZWN0IHRoZSBvdmVyYWxsIHJlc3VsdC4KCiAgKiBpZ3RAaTkxNV9wbV9ycG1AYmFzaWMt
cGNpLWQzLXN0YXRlOgogICAgLSB7ZmktdGdsLXV9OiAgICAgICAgIE5PVFJVTiAtPiBbU0tJUF1b
MV0KICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDM5My9maS10Z2wtdS9pZ3RAaTkxNV9wbV9ycG1AYmFzaWMtcGNpLWQzLXN0YXRlLmh0
bWwKCiAgKiBpZ3RAaTkxNV9wbV9ycG1AYmFzaWMtcnRlOgogICAgLSB7ZmktdGdsLXV9OiAgICAg
ICAgIE5PVFJVTiAtPiBbRkFJTF1bMl0KICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDM5My9maS10Z2wtdS9pZ3RAaTkxNV9wbV9ycG1A
YmFzaWMtcnRlLmh0bWwKCiAgCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUg
dGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE0MzkzIHRoYXQgY29tZSBmcm9tIGtub3du
IGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAjIyMjCgogICog
aWd0QGdlbV9mbGlua19iYXNpY0BiYWQtZmxpbms6CiAgICAtIGZpLWljbC11MzogICAgICAgICAg
W1BBU1NdWzNdIC0+IFtETUVTRy1XQVJOXVs0XSAoW2ZkbyMxMDc3MjRdKSArMSBzaW1pbGFyIGlz
c3VlCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNjg4NS9maS1pY2wtdTMvaWd0QGdlbV9mbGlua19iYXNpY0BiYWQtZmxpbmsuaHRtbAogICBb
NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
MzkzL2ZpLWljbC11My9pZ3RAZ2VtX2ZsaW5rX2Jhc2ljQGJhZC1mbGluay5odG1sCgogICogaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV9oYW5nY2hlY2s6CiAgICAtIGZpLWljbC11MzogICAgICAgICAg
W1BBU1NdWzVdIC0+IFtJTkNPTVBMRVRFXVs2XSAoW2ZkbyMxMDc3MTNdIC8gW2ZkbyMxMDg1Njld
KQogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzY4ODUvZmktaWNsLXUzL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2NoZWNrLmh0bWwKICAg
WzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NDM5My9maS1pY2wtdTMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9oYW5nY2hlY2suaHRtbAogICAg
LSBmaS1ic3cta2Vma2E6ICAgICAgIFtQQVNTXVs3XSAtPiBbSU5DT01QTEVURV1bOF0gKFtmZG8j
MTA1ODc2XSkKICAgWzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82ODg1L2ZpLWJzdy1rZWZrYS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVj
ay5odG1sCiAgIFs4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTQzOTMvZmktYnN3LWtlZmthL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2No
ZWNrLmh0bWwKCiAgCiMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGlndEBkZWJ1Z2ZzX3Rl
c3RAcmVhZF9hbGxfZW50cmllczoKICAgIC0ge2ZpLXRnbC11Mn06ICAgICAgICBbRE1FU0ctV0FS
Tl1bOV0gKFtmZG8jMTExNjAwXSkgLT4gW1BBU1NdWzEwXQogICBbOV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY4ODUvZmktdGdsLXUyL2lndEBkZWJ1
Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5odG1sCiAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MzkzL2ZpLXRnbC11Mi9pZ3RAZGVi
dWdmc190ZXN0QHJlYWRfYWxsX2VudHJpZXMuaHRtbAoKICAqIGlndEBnZW1fZXhlY19zdXNwZW5k
QGJhc2ljLXMzOgogICAgLSB7ZmktdGdsLXV9OiAgICAgICAgIFtJTkNPTVBMRVRFXVsxMV0gLT4g
W1BBU1NdWzEyXQogICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82ODg1L2ZpLXRnbC11L2lndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXMzLmh0
bWwKICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQzOTMvZmktdGdsLXUvaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczMuaHRtbAoK
ICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3RzOgogICAgLSBmaS1za2wtZ3Z0ZHZt
OiAgICAgIFtETUVTRy1GQUlMXVsxM10gKFtmZG8jMTExMTA4XSkgLT4gW1BBU1NdWzE0XQogICBb
MTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82ODg1
L2ZpLXNrbC1ndnRkdm0vaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRtbAogICBb
MTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NDM5My9maS1za2wtZ3Z0ZHZtL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3RzLmh0bWwK
CiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2ljOgogICAgLSB7ZmktaWNsLXU0
fTogICAgICAgIFtGQUlMXVsxNV0gKFtmZG8jMTAzMTY3XSkgLT4gW1BBU1NdWzE2XQogICBbMTVd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82ODg1L2Zp
LWljbC11NC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2ljLmh0bWwKICAgWzE2XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQzOTMv
ZmktaWNsLXU0L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAYmFzaWMuaHRtbAogICAgLSBm
aS1pY2wtdTI6ICAgICAgICAgIFtGQUlMXVsxN10gKFtmZG8jMTAzMTY3XSkgLT4gW1BBU1NdWzE4
XQogICBbMTddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82ODg1L2ZpLWljbC11Mi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2ljLmh0bWwK
ICAgWzE4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTQzOTMvZmktaWNsLXUyL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAYmFzaWMuaHRt
bAoKICAqIGlndEBwcmltZV92Z2VtQGJhc2ljLWJ1c3ktZGVmYXVsdDoKICAgIC0gZmktaWNsLXUz
OiAgICAgICAgICBbRE1FU0ctV0FSTl1bMTldIChbZmRvIzEwNzcyNF0pIC0+IFtQQVNTXVsyMF0K
ICAgWzE5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
Njg4NS9maS1pY2wtdTMvaWd0QHByaW1lX3ZnZW1AYmFzaWMtYnVzeS1kZWZhdWx0Lmh0bWwKICAg
WzIwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQzOTMvZmktaWNsLXUzL2lndEBwcmltZV92Z2VtQGJhc2ljLWJ1c3ktZGVmYXVsdC5odG1sCgog
IAogIHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRoaXMgbWVhbnMgaXQgaXMg
aWdub3JlZCB3aGVuIGNvbXB1dGluZwogICAgICAgICAgdGhlIHN0YXR1cyBvZiB0aGUgZGlmZmVy
ZW5jZSAoU1VDQ0VTUywgV0FSTklORywgb3IgRkFJTFVSRSkuCgogIFtmZG8jMTAzMTY3XTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTY3CiAgW2ZkbyMx
MDU4NzZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDU4
NzYKICBbZmRvIzEwNzcxM106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTEwNzcxMwogIFtmZG8jMTA3NzI0XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzI0CiAgW2ZkbyMxMDg1NjldOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg1NjkKICBbZmRvIzExMTEwOF06IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTEwOAogIFtmZG8jMTEx
NjAwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNjAw
CgoKUGFydGljaXBhdGluZyBob3N0cyAoNTUgLT4gNDcpCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQoKICBNaXNzaW5nICAgICg4KTogZmkta2JsLXNvcmFrYSBmaS1pbGstbTU0MCBmaS1o
c3ctNDIwMHUgZmktYnl0LXNxdWF3a3MgZmktYnN3LWN5YW4gZmktaWNsLXkgZmktYnl0LWNsYXBw
ZXIgZmktYmR3LXNhbXVzIAoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoKICAqIENJOiBD
SS0yMDE5MDUyOSAtPiBOb25lCiAgKiBMaW51eDogQ0lfRFJNXzY4ODUgLT4gUGF0Y2h3b3JrXzE0
MzkzCgogIENJLTIwMTkwNTI5OiAyMDE5MDUyOQogIENJX0RSTV82ODg1OiAxMTc4NmQyN2NiMDI5
YTA4MzU1NmFjOWI4MmUzM2Q3NGUyNTBjZTI2IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5v
cmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzUxNzg6IGVmYjQ1Mzk0OTRkOTRmMDMzNzQ4NzRkM2I2MWJk
MDRlZjM4MDJhYWEgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRl
bC1ncHUtdG9vbHMKICBQYXRjaHdvcmtfMTQzOTM6IDk2NjAxOWQ2OTUxNGJkYWMyYTI2NDRjNDNl
Y2Q1YWM1MWJkMWY1YjkgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGlu
dXgKCgo9PSBMaW51eCBjb21taXRzID09Cgo5NjYwMTlkNjk1MTQgZHJtL2k5MTUvZ3R0OiBNYWtl
IHN1cmUgdGhlIGdlbjYgcHBndHQgaXMgYm91bmQgYmVmb3JlIGZpcnN0IHVzZQoKPT0gTG9ncyA9
PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0MzkzLwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
