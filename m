Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F9394B8E
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 19:23:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F7E36E12C;
	Mon, 19 Aug 2019 17:23:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 009FB6E12B;
 Mon, 19 Aug 2019 17:23:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EAC38A0096;
 Mon, 19 Aug 2019 17:23:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 19 Aug 2019 17:23:51 -0000
Message-ID: <20190819172351.21819.24977@emeril.freedesktop.org>
References: <20190819164448.22132-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190819164448.22132-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5B01/10=5D_drm/i915=3A_Use_0_for_the_unordere?=
 =?utf-8?q?d_context?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzEw
XSBkcm0vaTkxNTogVXNlIDAgZm9yIHRoZSB1bm9yZGVyZWQgY29udGV4dApVUkwgICA6IGh0dHBz
Oi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjU0MjYvClN0YXRlIDogZmFpbHVy
ZQoKPT0gU3VtbWFyeSA9PQoKQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNjczNyAt
PiBQYXRjaHdvcmtfMTQwODIKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PQoKU3VtbWFyeQotLS0tLS0tCgogICoqRkFJTFVSRSoqCgogIFNlcmlvdXMg
dW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xNDA4MiBhYnNvbHV0ZWx5IG5l
ZWQgdG8gYmUKICB2ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9y
dGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBpbnRyb2R1
Y2VkIGluIFBhdGNod29ya18xNDA4MiwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFs
bG93IHRoZW0KICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwg
cmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4KCiAgRXh0ZXJuYWwgVVJMOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDA4Mi8KClBvc3NpYmxl
IG5ldyBpc3N1ZXMKLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBj
aGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDA4MjoK
CiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIwoKICAq
IGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ2VtX2NvbnRleHRzOgogICAgLSBmaS1ieXQtajE5MDA6
ICAgICAgIFtQQVNTXVsxXSAtPiBbRE1FU0ctV0FSTl1bMl0KICAgWzFdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzM3L2ZpLWJ5dC1qMTkwMC9pZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9jb250ZXh0cy5odG1sCiAgIFsyXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQwODIvZmktYnl0LWoxOTAw
L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ2VtX2NvbnRleHRzLmh0bWwKICAgIC0gZmktaXZiLTM3
NzA6ICAgICAgICBbUEFTU11bM10gLT4gW0RNRVNHLVdBUk5dWzRdCiAgIFszXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjczNy9maS1pdmItMzc3MC9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9jb250ZXh0cy5odG1sCiAgIFs0XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQwODIvZmktaXZiLTM3
NzAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMuaHRtbAogICAgLSBmaS1oc3ct
NDc3MDogICAgICAgIFtQQVNTXVs1XSAtPiBbRE1FU0ctV0FSTl1bNl0KICAgWzVdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzM3L2ZpLWhzdy00Nzcw
L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ2VtX2NvbnRleHRzLmh0bWwKICAgWzZdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDA4Mi9maS1oc3ct
NDc3MC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9jb250ZXh0cy5odG1sCiAgICAtIGZpLWhz
dy1wZXBweTogICAgICAgW1BBU1NdWzddIC0+IFtETUVTRy1XQVJOXVs4XQogICBbN106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3MzcvZmktaHN3LXBl
cHB5L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ2VtX2NvbnRleHRzLmh0bWwKICAgWzhdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDA4Mi9maS1o
c3ctcGVwcHkvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMuaHRtbAogICAgLSBm
aS1oc3ctNDc3MHI6ICAgICAgIFtQQVNTXVs5XSAtPiBbRE1FU0ctV0FSTl1bMTBdCiAgIFs5XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjczNy9maS1o
c3ctNDc3MHIvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMuaHRtbAogICBbMTBd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDA4
Mi9maS1oc3ctNDc3MHIvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMuaHRtbAog
ICAgLSBmaS1ieXQtbjI4MjA6ICAgICAgIFtQQVNTXVsxMV0gLT4gW0RNRVNHLVdBUk5dWzEyXQog
ICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
NzM3L2ZpLWJ5dC1uMjgyMC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9jb250ZXh0cy5odG1s
CiAgIFsxMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0MDgyL2ZpLWJ5dC1uMjgyMC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9jb250ZXh0
cy5odG1sCgogIAojIyMjIFdhcm5pbmdzICMjIyMKCiAgKiBpZ3RAa21zX2NoYW1lbGl1bUBoZG1p
LWhwZC1mYXN0OgogICAgLSBmaS1rYmwtNzUwMHU6ICAgICAgIFtGQUlMXVsxM10gKFtmZG8jMTEx
NDA3XSkgLT4gW0ZBSUxdWzE0XQogICBbMTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82NzM3L2ZpLWtibC03NTAwdS9pZ3RAa21zX2NoYW1lbGl1bUBo
ZG1pLWhwZC1mYXN0Lmh0bWwKICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQwODIvZmkta2JsLTc1MDB1L2lndEBrbXNfY2hhbWVsaXVt
QGhkbWktaHBkLWZhc3QuaHRtbAoKICAKS25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJl
IGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTQwODIgdGhhdCBjb21lIGZyb20g
a25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMK
CiAgKiBpZ3RAZ2VtX2ZsaW5rX2Jhc2ljQGRvdWJsZS1mbGluazoKICAgIC0gZmktaWNsLXUzOiAg
ICAgICAgICBbUEFTU11bMTVdIC0+IFtETUVTRy1XQVJOXVsxNl0gKFtmZG8jMTA3NzI0XSkKICAg
WzE1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjcz
Ny9maS1pY2wtdTMvaWd0QGdlbV9mbGlua19iYXNpY0Bkb3VibGUtZmxpbmsuaHRtbAogICBbMTZd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDA4
Mi9maS1pY2wtdTMvaWd0QGdlbV9mbGlua19iYXNpY0Bkb3VibGUtZmxpbmsuaHRtbAoKICAqIGln
dEBrbXNfY2hhbWVsaXVtQGRwLWNyYy1mYXN0OgogICAgLSBmaS1jbWwtdTI6ICAgICAgICAgIFtQ
QVNTXVsxN10gLT4gW0ZBSUxdWzE4XSAoW2ZkbyMxMTA2MjddKQogICBbMTddOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzM3L2ZpLWNtbC11Mi9pZ3RA
a21zX2NoYW1lbGl1bUBkcC1jcmMtZmFzdC5odG1sCiAgIFsxOF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MDgyL2ZpLWNtbC11Mi9pZ3RAa21z
X2NoYW1lbGl1bUBkcC1jcmMtZmFzdC5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFj
a2luZ0BiYXNpYzoKICAgIC0gZmktYnh0LWo0MjA1OiAgICAgICBbUEFTU11bMTldIC0+IFtGQUlM
XVsyMF0gKFtmZG8jMTAzMTY3XSkKICAgWzE5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNjczNy9maS1ieHQtajQyMDUvaWd0QGttc19mcm9udGJ1ZmZl
cl90cmFja2luZ0BiYXNpYy5odG1sCiAgIFsyMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MDgyL2ZpLWJ4dC1qNDIwNS9pZ3RAa21zX2Zyb250
YnVmZmVyX3RyYWNraW5nQGJhc2ljLmh0bWwKICAgIC0gZmktYnN3LWtlZmthOiAgICAgICBbUEFT
U11bMjFdIC0+IFtGQUlMXVsyMl0gKFtmZG8jMTAzMTY3XSkKICAgWzIxXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjczNy9maS1ic3cta2Vma2EvaWd0
QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYy5odG1sCiAgIFsyMl06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MDgyL2ZpLWJzdy1rZWZr
YS9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2ljLmh0bWwKICAgIC0gZmktYnh0LWRz
aTogICAgICAgICBbUEFTU11bMjNdIC0+IFtGQUlMXVsyNF0gKFtmZG8jMTAzMTY3XSkKICAgWzIz
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjczNy9m
aS1ieHQtZHNpL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAYmFzaWMuaHRtbAogICBbMjRd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDA4
Mi9maS1ieHQtZHNpL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAYmFzaWMuaHRtbAogICAg
LSBmaS1hcGwtZ3VjOiAgICAgICAgIFtQQVNTXVsyNV0gLT4gW0ZBSUxdWzI2XSAoW2ZkbyMxMDMx
NjddKQogICBbMjVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82NzM3L2ZpLWFwbC1ndWMvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYy5o
dG1sCiAgIFsyNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE0MDgyL2ZpLWFwbC1ndWMvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNp
Yy5odG1sCiAgICAtIGZpLWJ5dC1qMTkwMDogICAgICAgW1BBU1NdWzI3XSAtPiBbRkFJTF1bMjhd
IChbZmRvIzEwMzE2N10pCiAgIFsyN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzY3MzcvZmktYnl0LWoxOTAwL2lndEBrbXNfZnJvbnRidWZmZXJfdHJh
Y2tpbmdAYmFzaWMuaHRtbAogICBbMjhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNDA4Mi9maS1ieXQtajE5MDAvaWd0QGttc19mcm9udGJ1ZmZl
cl90cmFja2luZ0BiYXNpYy5odG1sCiAgICAtIGZpLWlsay02NTA6ICAgICAgICAgW1BBU1NdWzI5
XSAtPiBbRkFJTF1bMzBdIChbZmRvIzEwMzE2N10pCiAgIFsyOV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3MzcvZmktaWxrLTY1MC9pZ3RAa21zX2Zy
b250YnVmZmVyX3RyYWNraW5nQGJhc2ljLmh0bWwKICAgWzMwXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQwODIvZmktaWxrLTY1MC9pZ3RAa21z
X2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2ljLmh0bWwKICAgIC0gZmktYnl0LW4yODIwOiAgICAg
ICBbUEFTU11bMzFdIC0+IFtGQUlMXVszMl0gKFtmZG8jMTAzMTY3XSkKICAgWzMxXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjczNy9maS1ieXQtbjI4
MjAvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYy5odG1sCiAgIFszMl06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MDgyL2ZpLWJ5
dC1uMjgyMC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2ljLmh0bWwKICAgIC0gZmkt
YmR3LWd2dGR2bTogICAgICBbUEFTU11bMzNdIC0+IFtGQUlMXVszNF0gKFtmZG8jMTAzMTY3XSkK
ICAgWzMzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjczNy9maS1iZHctZ3Z0ZHZtL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAYmFzaWMuaHRt
bAogICBbMzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDA4Mi9maS1iZHctZ3Z0ZHZtL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAYmFz
aWMuaHRtbAogICAgLSBmaS1nbGstZHNpOiAgICAgICAgIFtQQVNTXVszNV0gLT4gW0ZBSUxdWzM2
XSAoW2ZkbyMxMDMxNjddKQogICBbMzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82NzM3L2ZpLWdsay1kc2kvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFj
a2luZ0BiYXNpYy5odG1sCiAgIFszNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0MDgyL2ZpLWdsay1kc2kvaWd0QGttc19mcm9udGJ1ZmZlcl90
cmFja2luZ0BiYXNpYy5odG1sCiAgICAtIGZpLXNrbC1ndnRkdm06ICAgICAgW1BBU1NdWzM3XSAt
PiBbRkFJTF1bMzhdIChbZmRvIzEwMzE2N10pCiAgIFszN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3MzcvZmktc2tsLWd2dGR2bS9pZ3RAa21zX2Zy
b250YnVmZmVyX3RyYWNraW5nQGJhc2ljLmh0bWwKICAgWzM4XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQwODIvZmktc2tsLWd2dGR2bS9pZ3RA
a21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2ljLmh0bWwKCiAgCiMjIyMgUG9zc2libGUgZml4
ZXMgIyMjIwoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAYmFzaWM6CiAgICAtIGZp
LWljbC11MzogICAgICAgICAgW0ZBSUxdWzM5XSAoW2ZkbyMxMDMxNjddKSAtPiBbUEFTU11bNDBd
CiAgIFszOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzY3MzcvZmktaWNsLXUzL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAYmFzaWMuaHRtbAog
ICBbNDBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNDA4Mi9maS1pY2wtdTMvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYy5odG1s
CiAgICAtIGZpLWljbC11MjogICAgICAgICAgW0ZBSUxdWzQxXSAoW2ZkbyMxMDMxNjddKSAtPiBb
UEFTU11bNDJdCiAgIFs0MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzY3MzcvZmktaWNsLXUyL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAYmFz
aWMuaHRtbAogICBbNDJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNDA4Mi9maS1pY2wtdTIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bi
YXNpYy5odG1sCgogIAogIHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRoaXMg
bWVhbnMgaXQgaXMgaWdub3JlZCB3aGVuIGNvbXB1dGluZwogICAgICAgICAgdGhlIHN0YXR1cyBv
ZiB0aGUgZGlmZmVyZW5jZSAoU1VDQ0VTUywgV0FSTklORywgb3IgRkFJTFVSRSkuCgogIFtmZG8j
MTAzMTY3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAz
MTY3CiAgW2ZkbyMxMDc3MTNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMDc3MTMKICBbZmRvIzEwNzcyNF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTEwNzcyNAogIFtmZG8jMTEwNjI3XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwNjI3CiAgW2ZkbyMxMTE0MDddOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE0MDcKCgpQYXJ0aWNp
cGF0aW5nIGhvc3RzICg1NSAtPiA0NikKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgog
IE1pc3NpbmcgICAgKDkpOiBmaS1rYmwtc29yYWthIGZpLWlsay1tNTQwIGZpLWhzdy00MjAwdSBm
aS1ic3ctbjMwNTAgZmktYnl0LXNxdWF3a3MgZmktYnN3LWN5YW4gZmktaWNsLXkgZmktYnl0LWNs
YXBwZXIgZmktYmR3LXNhbXVzIAoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoKICAqIENJ
OiBDSS0yMDE5MDUyOSAtPiBOb25lCiAgKiBMaW51eDogQ0lfRFJNXzY3MzcgLT4gUGF0Y2h3b3Jr
XzE0MDgyCgogIENJLTIwMTkwNTI5OiAyMDE5MDUyOQogIENJX0RSTV82NzM3OiA3YzFiNzUwYjM0
MmM3ZGVkNmQ1OTA1ODkzOTNhNDA1OTBlMGJiN2FiIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3Rv
cC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzUxNDE6IDcxMDJiNDE3ZmVkYzJhMWVhNmY3MmQ3Njhh
OWYxYmQxMDBhMzRmMTMgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9p
bnRlbC1ncHUtdG9vbHMKICBQYXRjaHdvcmtfMTQwODI6IDI5NWY4ZWZiNjE3ZDQxZWVhMmQ3NDlk
OGQzZmNkYmIxM2Q0MTUwMTQgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kv
bGludXgKCgo9PSBMaW51eCBjb21taXRzID09CgoyOTVmOGVmYjYxN2QgZHJtL2k5MTU6IEJlIGRl
ZmVuc2l2ZSB3aGVuIHN0YXJ0aW5nIHZtYSBhY3Rpdml0eQo1YjdkZDBmYjVlYjkgZHJtL2k5MTU6
IE1ha2Ugc2hyaW5rL3Vuc2hyaW5rIGJlIGF0b21pYwpkMDQwNWE5MDExYWIgZHJtL2k5MTU6IFJl
cGxhY2UgaTkxNV92bWFfcHV0X2ZlbmNlKCkKOTY1ZjQ0NTNjNjllIGRybS9pOTE1OiBQdWxsIG9i
ai0+dXNlcmZhdWx0IHRyYWNraW5nIHVuZGVyIHRoZSBnZ3R0LT5tdXRleAo4MmYwNjU1NDkxNzkg
ZHJtL2k5MTU6IE9ubHkgdHJhY2sgYm91bmQgZWxlbWVudHMgb2YgdGhlIEdUVAplNmNhY2U2Nzcy
MWEgZHJtL2k5MTU6IFRyYWNrIGdndHQgZmVuY2UgcmVzZXJ2YXRpb25zIHVuZGVyIGl0cyBvd24g
bXV0ZXgKZGM4Yzc5MjY2YWNiIGRybS9pOTE1OiBSZXBsYWNlIFBJTl9OT05GQVVMVCB3aXRoIGNh
bGxzIHRvIFBJTl9OT0VWSUNUCmY5ZWQ2OWFjOWYzYiBkcm0vaTkxNTogQXNzdW1lIGV4Y2x1c2l2
ZSBhY2Nlc3MgdG8gb2JqZWN0cyBpbnNpZGUgcmVzdW1lCjE4Zjg2NDcxMTdjZCBkcm0vaTkxNTog
R2VuZXJhbGlzZSB0aGUgY2xmbHVzaCBkbWEtd29ya2VyCmYzNzQ1NTUwYzk0YiBkcm0vaTkxNTog
VXNlIDAgZm9yIHRoZSB1bm9yZGVyZWQgY29udGV4dAoKPT0gTG9ncyA9PQoKRm9yIG1vcmUgZGV0
YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0MDgyLwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
