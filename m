Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 447BEB7403
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 09:27:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BD3E6F9A7;
	Thu, 19 Sep 2019 07:27:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 937A86F8DB;
 Thu, 19 Sep 2019 07:27:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8D0EAA0081;
 Thu, 19 Sep 2019 07:27:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: John.C.Harrison@Intel.com
Date: Thu, 19 Sep 2019 07:27:37 -0000
Message-ID: <20190919072737.23913.30459@emeril.freedesktop.org>
References: <20190919064710.16559-1-John.C.Harrison@Intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190919064710.16559-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Engine_relative_MMIO_=28rev8=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEVuZ2luZSByZWxhdGl2ZSBN
TUlPIChyZXY4KQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJp
ZXMvNTcxMTcvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0kgQnVnIExvZyAtIGNo
YW5nZXMgZnJvbSBDSV9EUk1fNjkxNyAtPiBQYXRjaHdvcmtfMTQ0NTIKPT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoKU3VtbWFyeQotLS0tLS0tCgog
ICoqRkFJTFVSRSoqCgogIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNo
d29ya18xNDQ1MiBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUKICB2ZXJpZmllZCBtYW51YWxseS4KICAK
ICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdp
dGggdGhlIGNoYW5nZXMKICBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDQ1MiwgcGxlYXNlIG5v
dGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFsbG93IHRoZW0KICB0byBkb2N1bWVudCB0aGlzIG5ldyBm
YWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4KCiAg
RXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNDQ1Mi8KClBvc3NpYmxlIG5ldyBpc3N1ZXMKLS0tLS0tLS0tLS0tLS0tLS0tLQoK
ICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1
Y2VkIGluIFBhdGNod29ya18xNDQ1MjoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgUG9zc2li
bGUgcmVncmVzc2lvbnMgIyMjIwoKICAqIGlndEBnZW1fd29ya2Fyb3VuZHNAYmFzaWMtcmVhZDoK
ICAgIC0gZmktaWNsLXUzOiAgICAgICAgICBbUEFTU11bMV0gLT4gW0ZBSUxdWzJdCiAgIFsxXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkxNy9maS1p
Y2wtdTMvaWd0QGdlbV93b3JrYXJvdW5kc0BiYXNpYy1yZWFkLmh0bWwKICAgWzJdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQ1Mi9maS1pY2wt
dTMvaWd0QGdlbV93b3JrYXJvdW5kc0BiYXNpYy1yZWFkLmh0bWwKICAgIC0gZmktaWNsLXUyOiAg
ICAgICAgICBbUEFTU11bM10gLT4gW0ZBSUxdWzRdCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkxNy9maS1pY2wtdTIvaWd0QGdlbV93b3Jr
YXJvdW5kc0BiYXNpYy1yZWFkLmh0bWwKICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQ1Mi9maS1pY2wtdTIvaWd0QGdlbV93b3JrYXJv
dW5kc0BiYXNpYy1yZWFkLmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dvcmthcm91
bmRzOgogICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtQQVNTXVs1XSAtPiBbRE1FU0ctRkFJTF1b
Nl0KICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82OTE3L2ZpLWljbC11My9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dvcmthcm91bmRzLmh0bWwK
ICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNDQ1Mi9maS1pY2wtdTMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1s
CiAgICAtIGZpLWljbC11MjogICAgICAgICAgW1BBU1NdWzddIC0+IFtETUVTRy1GQUlMXVs4XQog
ICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5
MTcvZmktaWNsLXUyL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAogICBb
OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
NDUyL2ZpLWljbC11Mi9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dvcmthcm91bmRzLmh0bWwKCiAg
CiMjIyMgU3VwcHJlc3NlZCAjIyMjCgogIFRoZSBmb2xsb3dpbmcgcmVzdWx0cyBjb21lIGZyb20g
dW50cnVzdGVkIG1hY2hpbmVzLCB0ZXN0cywgb3Igc3RhdHVzZXMuCiAgVGhleSBkbyBub3QgYWZm
ZWN0IHRoZSBvdmVyYWxsIHJlc3VsdC4KCiAgKiBpZ3RAZ2VtX3dvcmthcm91bmRzQGJhc2ljLXJl
YWQ6CiAgICAtIHtmaS1pY2wtdTR9OiAgICAgICAgW1BBU1NdWzldIC0+IFtGQUlMXVsxMF0KICAg
WzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTE3
L2ZpLWljbC11NC9pZ3RAZ2VtX3dvcmthcm91bmRzQGJhc2ljLXJlYWQuaHRtbAogICBbMTBdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQ1Mi9m
aS1pY2wtdTQvaWd0QGdlbV93b3JrYXJvdW5kc0BiYXNpYy1yZWFkLmh0bWwKICAgIC0ge2ZpLWlj
bC1kc2l9OiAgICAgICBbUEFTU11bMTFdIC0+IFtGQUlMXVsxMl0KICAgWzExXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkxNy9maS1pY2wtZHNpL2ln
dEBnZW1fd29ya2Fyb3VuZHNAYmFzaWMtcmVhZC5odG1sCiAgIFsxMl06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDUyL2ZpLWljbC1kc2kvaWd0
QGdlbV93b3JrYXJvdW5kc0BiYXNpYy1yZWFkLmh0bWwKICAgIC0ge2ZpLWljbC1ndWN9OiAgICAg
ICBbUEFTU11bMTNdIC0+IFtGQUlMXVsxNF0KICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkxNy9maS1pY2wtZ3VjL2lndEBnZW1fd29ya2Fy
b3VuZHNAYmFzaWMtcmVhZC5odG1sCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDUyL2ZpLWljbC1ndWMvaWd0QGdlbV93b3JrYXJv
dW5kc0BiYXNpYy1yZWFkLmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dvcmthcm91
bmRzOgogICAgLSB7ZmktaWNsLWRzaX06ICAgICAgIFtQQVNTXVsxNV0gLT4gW0RNRVNHLUZBSUxd
WzE2XQogICBbMTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82OTE3L2ZpLWljbC1kc2kvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5o
dG1sCiAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE0NDUyL2ZpLWljbC1kc2kvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5k
cy5odG1sCiAgICAtIHtmaS1pY2wtZ3VjfTogICAgICAgW1BBU1NdWzE3XSAtPiBbRE1FU0ctRkFJ
TF1bMThdCiAgIFsxN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzY5MTcvZmktaWNsLWd1Yy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dvcmthcm91bmRz
Lmh0bWwKICAgWzE4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTQ0NTIvZmktaWNsLWd1Yy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dvcmthcm91
bmRzLmh0bWwKCiAgCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIGNo
YW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE0NDUyIHRoYXQgY29tZSBmcm9tIGtub3duIGlzc3Vl
czoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAjIyMjCgogICogaWd0QGdl
bV9tbWFwX2d0dEBiYXNpYy1yZWFkLXdyaXRlOgogICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtQ
QVNTXVsxOV0gLT4gW0RNRVNHLVdBUk5dWzIwXSAoW2ZkbyMxMDc3MjRdKQogICBbMTldOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTE3L2ZpLWljbC11
My9pZ3RAZ2VtX21tYXBfZ3R0QGJhc2ljLXJlYWQtd3JpdGUuaHRtbAogICBbMjBdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQ1Mi9maS1pY2wt
dTMvaWd0QGdlbV9tbWFwX2d0dEBiYXNpYy1yZWFkLXdyaXRlLmh0bWwKCiAgCiMjIyMgUG9zc2li
bGUgZml4ZXMgIyMjIwoKICAqIGlndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXMzOgogICAgLSBm
aS1ibGItZTY4NTA6ICAgICAgIFtJTkNPTVBMRVRFXVsyMV0gKFtmZG8jMTA3NzE4XSkgLT4gW1BB
U1NdWzIyXQogICBbMjFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82OTE3L2ZpLWJsYi1lNjg1MC9pZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zMy5o
dG1sCiAgIFsyMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE0NDUyL2ZpLWJsYi1lNjg1MC9pZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zMy5o
dG1sCgogICogaWd0QGdlbV9tbWFwX2d0dEBiYXNpYy13cml0ZS1uby1wcmVmYXVsdDoKICAgIC0g
ZmktaWNsLXUzOiAgICAgICAgICBbRE1FU0ctV0FSTl1bMjNdIChbZmRvIzEwNzcyNF0pIC0+IFtQ
QVNTXVsyNF0gKzEgc2ltaWxhciBpc3N1ZQogICBbMjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTE3L2ZpLWljbC11My9pZ3RAZ2VtX21tYXBfZ3R0
QGJhc2ljLXdyaXRlLW5vLXByZWZhdWx0Lmh0bWwKICAgWzI0XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0NTIvZmktaWNsLXUzL2lndEBnZW1f
bW1hcF9ndHRAYmFzaWMtd3JpdGUtbm8tcHJlZmF1bHQuaHRtbAoKICAKICB7bmFtZX06IFRoaXMg
ZWxlbWVudCBpcyBzdXBwcmVzc2VkLiBUaGlzIG1lYW5zIGl0IGlzIGlnbm9yZWQgd2hlbiBjb21w
dXRpbmcKICAgICAgICAgIHRoZSBzdGF0dXMgb2YgdGhlIGRpZmZlcmVuY2UgKFNVQ0NFU1MsIFdB
Uk5JTkcsIG9yIEZBSUxVUkUpLgoKICBbZmRvIzEwNTYwMl06IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNTYwMgogIFtmZG8jMTA2MTA3XTogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA2MTA3CiAgW2ZkbyMxMDYzNTBd
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDYzNTAKICBb
ZmRvIzEwNzcxOF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTEwNzcxOAogIFtmZG8jMTA3NzI0XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MTA3NzI0CiAgW2ZkbyMxMDkyODVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyODUKICBbZmRvIzEwOTMwOV06IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTMwOQogIFtmZG8jMTExMDQ1XTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMDQ1CiAgW2Zk
byMxMTExNTVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MTExNTUKCgpQYXJ0aWNpcGF0aW5nIGhvc3RzICg1MyAtPiA0NSkKLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCgogIEFkZGl0aW9uYWwgKDEpOiBmaS1ieHQtZHNpIAogIE1pc3NpbmcgICAg
KDkpOiBmaS1pbGstbTU0MCBmaS10Z2wtdSBmaS1oc3ctNDIwMHUgZmktdGdsLXUyIGZpLWJ5dC1z
cXVhd2tzIGZpLWJzdy1jeWFuIGZpLWljbC15IGZpLWJ5dC1jbGFwcGVyIGZpLWJkdy1zYW11cyAK
CgpCdWlsZCBjaGFuZ2VzCi0tLS0tLS0tLS0tLS0KCiAgKiBDSTogQ0ktMjAxOTA1MjkgLT4gTm9u
ZQogICogTGludXg6IENJX0RSTV82OTE3IC0+IFBhdGNod29ya18xNDQ1MgoKICBDSS0yMDE5MDUy
OTogMjAxOTA1MjkKICBDSV9EUk1fNjkxNzogN2NhMmIxMjNhZTk5OTEzMzIyM2I4ODJlMzE5MDk1
NTg5N2RmOGIwMyBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAog
IElHVF81MTkxOiA2M2UzMDEyMmNhZGFmMjc5OGFlMmJkNDRhNTZjZWU4MWEyN2ZiYzQwIEAgZ2l0
Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9yZy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0
Y2h3b3JrXzE0NDUyOiAzOGY0MTQxODBiNzVjMTYwNGQ3YzNlOTFkMDNhMjZjNTA4NmI4MDEzIEAg
Z2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CgoKPT0gTGludXggY29t
bWl0cyA9PQoKMzhmNDE0MTgwYjc1IGRybS9pOTE1OiBFbmdpbmUgcmVsYXRpdmUgTU1JTyBmb3Ig
R2VuMTIKNDNiM2MwYWU1MWRlIGRybS9pOTE1OiBFbmdpbmUgcmVsYXRpdmUgTU1JTwoKPT0gTG9n
cyA9PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDUyL2luZGV4Lmh0bWwKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
