Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B02FDE57C3
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 03:24:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81ED06EBE1;
	Sat, 26 Oct 2019 01:24:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9A6106EBE0;
 Sat, 26 Oct 2019 01:24:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 906D7A0093;
 Sat, 26 Oct 2019 01:24:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 26 Oct 2019 01:24:32 -0000
Message-ID: <20191026012432.22474.31350@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191025210546.27511-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191025210546.27511-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/gem=3A_Limit_the_blitter_sizes_to_ensure_low_preemption_la?=
 =?utf-8?q?tency?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ2VtOiBMaW1pdCB0aGUgYmxp
dHRlciBzaXplcyB0byBlbnN1cmUgbG93IHByZWVtcHRpb24gbGF0ZW5jeQpVUkwgICA6IGh0dHBz
Oi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjg1ODQvClN0YXRlIDogZmFpbHVy
ZQoKPT0gU3VtbWFyeSA9PQoKQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNzE5MSAt
PiBQYXRjaHdvcmtfMTQ5OTIKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PQoKU3VtbWFyeQotLS0tLS0tCgogICoqRkFJTFVSRSoqCgogIFNlcmlvdXMg
dW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xNDk5MiBhYnNvbHV0ZWx5IG5l
ZWQgdG8gYmUKICB2ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9y
dGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBpbnRyb2R1
Y2VkIGluIFBhdGNod29ya18xNDk5MiwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFs
bG93IHRoZW0KICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwg
cmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4KCiAgRXh0ZXJuYWwgVVJMOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDk5Mi9pbmRleC5odG1s
CgpQb3NzaWJsZSBuZXcgaXNzdWVzCi0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhl
IHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdv
cmtfMTQ5OTI6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25z
ICMjIyMKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2JsdDoKICAgIC0gZmkta2JsLTg4MDln
OiAgICAgICBbUEFTU11bMV0gLT4gW1RJTUVPVVRdWzJdCiAgIFsxXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE5MS9maS1rYmwtODgwOWcvaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZV9ibHQuaHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0OTkyL2ZpLWtibC04ODA5Zy9pZ3RAaTkxNV9z
ZWxmdGVzdEBsaXZlX2JsdC5odG1sCiAgICAtIGZpLWNtbC11MjogICAgICAgICAgW1BBU1NdWzNd
IC0+IFtUSU1FT1VUXVs0XQogICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzcxOTEvZmktY21sLXUyL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfYmx0
Lmh0bWwKICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNDk5Mi9maS1jbWwtdTIvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ibHQuaHRtbAog
ICAgLSBmaS1jZmwtZ3VjOiAgICAgICAgIFtQQVNTXVs1XSAtPiBbVElNRU9VVF1bNl0KICAgWzVd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MTkxL2Zp
LWNmbC1ndWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ibHQuaHRtbAogICBbNl06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0OTkyL2ZpLWNmbC1n
dWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ibHQuaHRtbAoKICAqIGlndEBydW5uZXJAYWJvcnRl
ZDoKICAgIC0gZmkta2JsLTg4MDlnOiAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzddCiAgIFs3XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ5OTIv
Zmkta2JsLTg4MDlnL2lndEBydW5uZXJAYWJvcnRlZC5odG1sCgogIApLbm93biBpc3N1ZXMKLS0t
LS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xNDk5
MiB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMj
IElzc3VlcyBoaXQgIyMjIwoKICAqIGlndEBnZW1fYmFzaWNAY3JlYXRlLWNsb3NlOgogICAgLSBm
aS1pY2wtdTM6ICAgICAgICAgIFtQQVNTXVs4XSAtPiBbRE1FU0ctV0FSTl1bOV0gKFtmZG8jMTA3
NzI0XSkKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV83MTkxL2ZpLWljbC11My9pZ3RAZ2VtX2Jhc2ljQGNyZWF0ZS1jbG9zZS5odG1sCiAgIFs5
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ5
OTIvZmktaWNsLXUzL2lndEBnZW1fYmFzaWNAY3JlYXRlLWNsb3NlLmh0bWwKCiAgKiBpZ3RAa21z
X2NoYW1lbGl1bUBkcC1lZGlkLXJlYWQ6CiAgICAtIGZpLWtibC03NTAwdTogICAgICAgW1BBU1Nd
WzEwXSAtPiBbV0FSTl1bMTFdIChbZmRvIzEwOTQ4M10pCiAgIFsxMF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxOTEvZmkta2JsLTc1MDB1L2lndEBr
bXNfY2hhbWVsaXVtQGRwLWVkaWQtcmVhZC5odG1sCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0OTkyL2ZpLWtibC03NTAwdS9pZ3RA
a21zX2NoYW1lbGl1bUBkcC1lZGlkLXJlYWQuaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAj
IyMjCgogICogaWd0QGdlbV9jbG9zZV9yYWNlQGJhc2ljLXByb2Nlc3M6CiAgICAtIGZpLWljbC11
MzogICAgICAgICAgW0lOQ09NUExFVEVdWzEyXSAoW2ZkbyMxMDc3MTNdKSAtPiBbUEFTU11bMTNd
CiAgIFsxMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzcxOTEvZmktaWNsLXUzL2lndEBnZW1fY2xvc2VfcmFjZUBiYXNpYy1wcm9jZXNzLmh0bWwKICAg
WzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQ5OTIvZmktaWNsLXUzL2lndEBnZW1fY2xvc2VfcmFjZUBiYXNpYy1wcm9jZXNzLmh0bWwKCiAg
KiBpZ3RAZ2VtX2N0eF9zd2l0Y2hAcmNzMDoKICAgIC0gZmktaWNsLXUyOiAgICAgICAgICBbSU5D
T01QTEVURV1bMTRdIChbZmRvIzEwNzcxM10pIC0+IFtQQVNTXVsxNV0KICAgWzE0XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE5MS9maS1pY2wtdTIv
aWd0QGdlbV9jdHhfc3dpdGNoQHJjczAuaHRtbAogICBbMTVdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDk5Mi9maS1pY2wtdTIvaWd0QGdlbV9j
dHhfc3dpdGNoQHJjczAuaHRtbAoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ2VtX2NvbnRl
eHRzOgogICAgLSBmaS1ic3cta2Vma2E6ICAgICAgIFtJTkNPTVBMRVRFXVsxNl0gLT4gW1BBU1Nd
WzE3XQogICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV83MTkxL2ZpLWJzdy1rZWZrYS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9jb250ZXh0
cy5odG1sCiAgIFsxN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE0OTkyL2ZpLWJzdy1rZWZrYS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9j
b250ZXh0cy5odG1sCgogIAogIHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRo
aXMgbWVhbnMgaXQgaXMgaWdub3JlZCB3aGVuIGNvbXB1dGluZwogICAgICAgICAgdGhlIHN0YXR1
cyBvZiB0aGUgZGlmZmVyZW5jZSAoU1VDQ0VTUywgV0FSTklORywgb3IgRkFJTFVSRSkuCgogIFtm
ZG8jMTA3NzEzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTA3NzEzCiAgW2ZkbyMxMDc3MjRdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDc3MjQKICBbZmRvIzEwOTQ4M106IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTQ4MwogIFtmZG8jMTExNjAwXTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNjAwCiAgW2ZkbyMxMTE4MzFdOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE4MzEKCgpQYXJ0
aWNpcGF0aW5nIGhvc3RzICg1MCAtPiA0MykKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
CgogIE1pc3NpbmcgICAgKDcpOiBmaS1pbGstbTU0MCBmaS1oc3ctNDIwMHUgZmktYnl0LXNxdWF3
a3MgZmktYnN3LWN5YW4gZmktaWNsLXkgZmktYnl0LWNsYXBwZXIgZmktYmR3LXNhbXVzIAoKCkJ1
aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoKICAqIENJOiBDSS0yMDE5MDUyOSAtPiBOb25lCiAg
KiBMaW51eDogQ0lfRFJNXzcxOTEgLT4gUGF0Y2h3b3JrXzE0OTkyCgogIENJLTIwMTkwNTI5OiAy
MDE5MDUyOQogIENJX0RSTV83MTkxOiA1OWM1ODc4NDAxMWRiZWM5YTc0MmQzM2IzZDhkNjczMzkz
Yjk1MTEyIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdU
XzUyNDI6IDE1YzExZTJkZjc3Zjc2OWI1ZmE5Y2E1YjQwYTk0ZjI2NjM3MGE0NzkgQCBnaXQ6Ly9h
bm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdv
cmtfMTQ5OTI6IGQwZjBiMWU5NDVlY2I2MjA3ODJlOGRhYmRhODdmNGRjYTgzOTA2MGQgQCBnaXQ6
Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKCgo9PSBMaW51eCBjb21taXRz
ID09CgpkMGYwYjFlOTQ1ZWMgZHJtL2k5MTUvZ2VtOiBMaW1pdCB0aGUgYmxpdHRlciBzaXplcyB0
byBlbnN1cmUgbG93IHByZWVtcHRpb24gbGF0ZW5jeQoKPT0gTG9ncyA9PQoKRm9yIG1vcmUgZGV0
YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0OTkyL2luZGV4Lmh0bWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
