Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8217EDA472
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 05:59:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 311256E25C;
	Thu, 17 Oct 2019 03:59:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6A7116E0EB;
 Thu, 17 Oct 2019 03:59:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 64F04A0071;
 Thu, 17 Oct 2019 03:59:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 17 Oct 2019 03:59:16 -0000
Message-ID: <20191017035916.14699.54704@emeril.freedesktop.org>
References: <20191016195251.17863-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191016195251.17863-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/execlists=3A_Don=27t_merely_skip_submission_if_maybe_times?=
 =?utf-8?q?licing_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZXhlY2xpc3RzOiBEb24ndCBt
ZXJlbHkgc2tpcCBzdWJtaXNzaW9uIGlmIG1heWJlIHRpbWVzbGljaW5nIChyZXYyKQpVUkwgICA6
IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjgxMjIvClN0YXRlIDog
ZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1f
NzExNCAtPiBQYXRjaHdvcmtfMTQ4NDcKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PQoKU3VtbWFyeQotLS0tLS0tCgogICoqRkFJTFVSRSoqCgogIFNl
cmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xNDg0NyBhYnNvbHV0
ZWx5IG5lZWQgdG8gYmUKICB2ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhl
IHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBp
bnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDg0NywgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFt
IHRvIGFsbG93IHRoZW0KICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNo
IHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4KCiAgRXh0ZXJuYWwgVVJMOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDg0Ny9pbmRl
eC5odG1sCgpQb3NzaWJsZSBuZXcgaXNzdWVzCi0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgSGVyZSBh
cmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQ
YXRjaHdvcmtfMTQ4NDc6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIFBvc3NpYmxlIHJlZ3Jl
c3Npb25zICMjIyMKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0czoKICAgIC0g
Zmktc2tsLTYyNjB1OiAgICAgICBbUEFTU11bMV0gLT4gW0RNRVNHLUZBSUxdWzJdCiAgIFsxXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzExNC9maS1z
a2wtNjI2MHUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRtbAogICBbMl06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODQ3L2Zp
LXNrbC02MjYwdS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5odG1sCgogICogaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHM6CiAgICAtIGZpLWNmbC04MTA5dTogICAg
ICAgW1BBU1NdWzNdIC0+IFtETUVTRy1GQUlMXVs0XSArMSBzaW1pbGFyIGlzc3VlCiAgIFszXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzExNC9maS1j
ZmwtODEwOXUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMuaHRtbAogICBbNF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODQ3
L2ZpLWNmbC04MTA5dS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9jb250ZXh0cy5odG1sCgog
IApLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5k
IGluIFBhdGNod29ya18xNDg0NyB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6CgojIyMgSUdU
IGNoYW5nZXMgIyMjCgojIyMjIElzc3VlcyBoaXQgIyMjIwoKICAqIGlndEBnZW1fY3R4X3N3aXRj
aEBsZWdhY3ktcmVuZGVyOgogICAgLSBmaS1hcGwtZ3VjOiAgICAgICAgIFtQQVNTXVs1XSAtPiBb
SU5DT01QTEVURV1bNl0gKFtmZG8jMTAzOTI3XSAvIFtmZG8jMTExMzgxXSkKICAgWzVdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MTE0L2ZpLWFwbC1n
dWMvaWd0QGdlbV9jdHhfc3dpdGNoQGxlZ2FjeS1yZW5kZXIuaHRtbAogICBbNl06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODQ3L2ZpLWFwbC1n
dWMvaWd0QGdlbV9jdHhfc3dpdGNoQGxlZ2FjeS1yZW5kZXIuaHRtbAoKICAqIGlndEBnZW1fcmlu
Z2ZpbGxAYmFzaWMtZGVmYXVsdDoKICAgIC0gZmktaWNsLXUzOiAgICAgICAgICBbUEFTU11bN10g
LT4gW0RNRVNHLVdBUk5dWzhdIChbZmRvIzEwNzcyNF0pCiAgIFs3XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzExNC9maS1pY2wtdTMvaWd0QGdlbV9y
aW5nZmlsbEBiYXNpYy1kZWZhdWx0Lmh0bWwKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDg0Ny9maS1pY2wtdTMvaWd0QGdlbV9yaW5n
ZmlsbEBiYXNpYy1kZWZhdWx0Lmh0bWwKCiAgCiMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAq
IGlndEBnZW1fY3R4X2NyZWF0ZUBiYXNpYy1maWxlczoKICAgIC0gZmktYmR3LWd2dGR2bTogICAg
ICBbRE1FU0ctV0FSTl1bOV0gLT4gW1BBU1NdWzEwXQogICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxMTQvZmktYmR3LWd2dGR2bS9pZ3RAZ2Vt
X2N0eF9jcmVhdGVAYmFzaWMtZmlsZXMuaHRtbAogICBbMTBdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDg0Ny9maS1iZHctZ3Z0ZHZtL2lndEBn
ZW1fY3R4X2NyZWF0ZUBiYXNpYy1maWxlcy5odG1sCgogICogaWd0QGdlbV9mbGlua19iYXNpY0Bk
b3VibGUtZmxpbms6CiAgICAtIGZpLWljbC11MzogICAgICAgICAgW0RNRVNHLVdBUk5dWzExXSAo
W2ZkbyMxMDc3MjRdKSAtPiBbUEFTU11bMTJdICsxIHNpbWlsYXIgaXNzdWUKICAgWzExXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzExNC9maS1pY2wt
dTMvaWd0QGdlbV9mbGlua19iYXNpY0Bkb3VibGUtZmxpbmsuaHRtbAogICBbMTJdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDg0Ny9maS1pY2wt
dTMvaWd0QGdlbV9mbGlua19iYXNpY0Bkb3VibGUtZmxpbmsuaHRtbAoKICAqIGlndEBpOTE1X3Nl
bGZ0ZXN0QGxpdmVfZXhlY2xpc3RzOgogICAgLSBmaS1jZmwtZ3VjOiAgICAgICAgIFtETUVTRy1G
QUlMXVsxM10gLT4gW1BBU1NdWzE0XQogICBbMTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MTE0L2ZpLWNmbC1ndWMvaWd0QGk5MTVfc2VsZnRlc3RA
bGl2ZV9leGVjbGlzdHMuaHRtbAogICBbMTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDg0Ny9maS1jZmwtZ3VjL2lndEBpOTE1X3NlbGZ0ZXN0
QGxpdmVfZXhlY2xpc3RzLmh0bWwKICAgIC0gZmktY21sLXU6ICAgICAgICAgICBbRE1FU0ctRkFJ
TF1bMTVdIC0+IFtQQVNTXVsxNl0KICAgWzE1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNzExNC9maS1jbWwtdS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZl
X2V4ZWNsaXN0cy5odG1sCiAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0ODQ3L2ZpLWNtbC11L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVf
ZXhlY2xpc3RzLmh0bWwKICAgIC0gZmktd2hsLXU6ICAgICAgICAgICBbSU5DT01QTEVURV1bMTdd
IC0+IFtQQVNTXVsxOF0KICAgWzE3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNzExNC9maS13aGwtdS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNs
aXN0cy5odG1sCiAgIFsxOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE0ODQ3L2ZpLXdobC11L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xp
c3RzLmh0bWwKCiAgCiMjIyMgV2FybmluZ3MgIyMjIwoKICAqIGlndEBrbXNfY2hhbWVsaXVtQGhk
bWktaHBkLWZhc3Q6CiAgICAtIGZpLWtibC03NTAwdTogICAgICAgW0ZBSUxdWzE5XSAoW2ZkbyMx
MTE0MDddKSAtPiBbRkFJTF1bMjBdIChbZmRvIzExMTA0NV0gLyBbZmRvIzExMTA5Nl0pCiAgIFsx
OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxMTQv
Zmkta2JsLTc1MDB1L2lndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3QuaHRtbAogICBbMjBd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDg0
Ny9maS1rYmwtNzUwMHUvaWd0QGttc19jaGFtZWxpdW1AaGRtaS1ocGQtZmFzdC5odG1sCgogIAog
IHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRoaXMgbWVhbnMgaXQgaXMgaWdu
b3JlZCB3aGVuIGNvbXB1dGluZwogICAgICAgICAgdGhlIHN0YXR1cyBvZiB0aGUgZGlmZmVyZW5j
ZSAoU1VDQ0VTUywgV0FSTklORywgb3IgRkFJTFVSRSkuCgogIFtmZG8jMTAzOTI3XTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzOTI3CiAgW2ZkbyMxMDc3
MTNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MTMK
ICBbZmRvIzEwNzcyNF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTEwNzcyNAogIFtmZG8jMTExMDQ1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTExMDQ1CiAgW2ZkbyMxMTEwOTZdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEwOTYKICBbZmRvIzExMTM4MV06IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTM4MQogIFtmZG8jMTExNDA3
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNDA3CiAg
W2ZkbyMxMTE4MzNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMTE4MzMKCgpQYXJ0aWNpcGF0aW5nIGhvc3RzICg1MiAtPiA0NCkKLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCgogIE1pc3NpbmcgICAgKDgpOiBmaS1pbGstbTU0MCBmaS1oc3ctNDIw
MHUgZmktdGdsLXUyIGZpLWJ5dC1zcXVhd2tzIGZpLWJ5dC1jbGFwcGVyIGZpLWljbC15IGZpLWlj
bC1kc2kgZmktYmR3LXNhbXVzIAoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoKICAqIENJ
OiBDSS0yMDE5MDUyOSAtPiBOb25lCiAgKiBMaW51eDogQ0lfRFJNXzcxMTQgLT4gUGF0Y2h3b3Jr
XzE0ODQ3CgogIENJLTIwMTkwNTI5OiAyMDE5MDUyOQogIENJX0RSTV83MTE0OiBkOWU5MDkyNzJh
MDIyNTk3MDY3ZDNhYzJkZmNlZGFjZDYzYzYxYWY5IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3Rv
cC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzUyMzE6IGUyOTMwNTFmOGY5OWM3MmNiMDFkMjFlNGI3
M2E1OTI4ZWEzNTFlYjMgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9p
bnRlbC1ncHUtdG9vbHMKICBQYXRjaHdvcmtfMTQ4NDc6IDllMDc0OWEzN2RmYmE3NGE0NzAwYzRm
ZDU3NDY3ODQ1ZGE3MGZhOWEgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kv
bGludXgKCgo9PSBMaW51eCBjb21taXRzID09Cgo5ZTA3NDlhMzdkZmIgZHJtL2k5MTUvZXhlY2xp
c3RzOiBEb24ndCBtZXJlbHkgc2tpcCBzdWJtaXNzaW9uIGlmIG1heWJlIHRpbWVzbGljaW5nCgo9
PSBMb2dzID09CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4NDcvaW5kZXguaHRtbApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
