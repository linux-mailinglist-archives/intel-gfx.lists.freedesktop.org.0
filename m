Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE158A3668
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 14:10:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D900D6E2D8;
	Fri, 30 Aug 2019 12:10:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ABE00896E9;
 Fri, 30 Aug 2019 12:10:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A2ED1A00FD;
 Fri, 30 Aug 2019 12:10:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Joonas Lahtinen" <joonas.lahtinen@linux.intel.com>
Date: Fri, 30 Aug 2019 12:10:18 -0000
Message-ID: <20190830121018.14752.6062@emeril.freedesktop.org>
References: <20190830105053.17491-1-joonas.lahtinen@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190830105053.17491-1-joonas.lahtinen@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915=3A_Document_locking_guidelines?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IERvY3VtZW50IGxvY2tpbmcg
Z3VpZGVsaW5lcwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJp
ZXMvNjYwNTIvClN0YXRlIDogc3VjY2VzcwoKPT0gU3VtbWFyeSA9PQoKQ0kgQnVnIExvZyAtIGNo
YW5nZXMgZnJvbSBDSV9EUk1fNjgwNyAtPiBQYXRjaHdvcmtfMTQyMzYKPT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoKU3VtbWFyeQotLS0tLS0tCgog
ICoqU1VDQ0VTUyoqCgogIE5vIHJlZ3Jlc3Npb25zIGZvdW5kLgoKICBFeHRlcm5hbCBVUkw6IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MjM2LwoK
S25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBp
biBQYXRjaHdvcmtfMTQyMzYgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBj
aGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAZ2VtX2V4ZWNfc3VzcGVu
ZEBiYXNpYy1zNC1kZXZpY2VzOgogICAgLSBmaS1rYmwtODgwOWc6ICAgICAgIFtQQVNTXVsxXSAt
PiBbSU5DT01QTEVURV1bMl0gKFtmZG8jMTAzNjY1XSAvIFtmZG8jMTA3MTM5XSAvIFtmZG8jMTA4
MTI2XSkKICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82ODA3L2ZpLWtibC04ODA5Zy9pZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zNC1kZXZp
Y2VzLmh0bWwKICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNDIzNi9maS1rYmwtODgwOWcvaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMt
czQtZGV2aWNlcy5odG1sCgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndHQ6CiAgICAtIGZp
LWdsay1kc2k6ICAgICAgICAgW1BBU1NdWzNdIC0+IFtETUVTRy1XQVJOXVs0XSAoW2ZkbyMxMTA3
ODhdKQogICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzY4MDcvZmktZ2xrLWRzaS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0dC5odG1sCiAgIFs0
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQy
MzYvZmktZ2xrLWRzaS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0dC5odG1sCgogICogaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZV9yZXNldDoKICAgIC0gZmktYnN3LW4zMDUwOiAgICAgICBbUEFTU11b
NV0gLT4gW0RNRVNHLVdBUk5dWzZdIChbZmRvIzEwNzcwOV0pCiAgIFs1XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjgwNy9maS1ic3ctbjMwNTAvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV9yZXNldC5odG1sCiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQyMzYvZmktYnN3LW4zMDUwL2lndEBp
OTE1X3NlbGZ0ZXN0QGxpdmVfcmVzZXQuaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMj
CgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHM6CiAgICAtIGZpLXNrbC1ndnRk
dm06ICAgICAgW0RNRVNHLUZBSUxdWzddIChbZmRvIzExMTEwOF0pIC0+IFtQQVNTXVs4XQogICBb
N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY4MDcv
Zmktc2tsLWd2dGR2bS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5odG1sCiAgIFs4
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQy
MzYvZmktc2tsLWd2dGR2bS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5odG1sCgog
ICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kczoKICAgIC0gZmktYnN3LWtlZmth
OiAgICAgICBbRE1FU0ctV0FSTl1bOV0gKFtmZG8jMTExMzczXSkgLT4gW1BBU1NdWzEwXQogICBb
OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY4MDcv
ZmktYnN3LWtlZmthL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAogICBb
MTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NDIzNi9maS1ic3cta2Vma2EvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1s
CgogICogaWd0QGttc19mbGlwQGJhc2ljLWZsaXAtdnMtd2ZfdmJsYW5rOgogICAgLSB7Zmkta2Js
LXNvcmFrYX06ICAgIFtGQUlMXVsxMV0gKFtmZG8jMTAwMzY4XSkgLT4gW1BBU1NdWzEyXQogICBb
MTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82ODA3
L2ZpLWtibC1zb3Jha2EvaWd0QGttc19mbGlwQGJhc2ljLWZsaXAtdnMtd2ZfdmJsYW5rLmh0bWwK
ICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTQyMzYvZmkta2JsLXNvcmFrYS9pZ3RAa21zX2ZsaXBAYmFzaWMtZmxpcC12cy13Zl92Ymxh
bmsuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAYmFzaWM6CiAgICAtIHtm
aS1pY2wtdTR9OiAgICAgICAgW0ZBSUxdWzEzXSAoW2ZkbyMxMDMxNjddKSAtPiBbUEFTU11bMTRd
CiAgIFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzY4MDcvZmktaWNsLXU0L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAYmFzaWMuaHRtbAog
ICBbMTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNDIzNi9maS1pY2wtdTQvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYy5odG1s
CgogIAojIyMjIFdhcm5pbmdzICMjIyMKCiAgKiBpZ3RAaTkxNV9wbV9ycG1AYmFzaWMtcGNpLWQz
LXN0YXRlOgogICAgLSBmaS1rYmwtZ3VjOiAgICAgICAgIFtGQUlMXVsxNV0gKFtmZG8jMTA3NzA3
XSkgLT4gW1NLSVBdWzE2XSAoW2ZkbyMxMDkyNzFdKQogICBbMTVdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82ODA3L2ZpLWtibC1ndWMvaWd0QGk5MTVf
cG1fcnBtQGJhc2ljLXBjaS1kMy1zdGF0ZS5odG1sCiAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MjM2L2ZpLWtibC1ndWMvaWd0QGk5
MTVfcG1fcnBtQGJhc2ljLXBjaS1kMy1zdGF0ZS5odG1sCgogIAogIHtuYW1lfTogVGhpcyBlbGVt
ZW50IGlzIHN1cHByZXNzZWQuIFRoaXMgbWVhbnMgaXQgaXMgaWdub3JlZCB3aGVuIGNvbXB1dGlu
ZwogICAgICAgICAgdGhlIHN0YXR1cyBvZiB0aGUgZGlmZmVyZW5jZSAoU1VDQ0VTUywgV0FSTklO
Rywgb3IgRkFJTFVSRSkuCgogIFtmZG8jMTAwMzY4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAwMzY4CiAgW2ZkbyMxMDMxNjddOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxNjcKICBbZmRvIzEwMzY2NV06IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzY2NQogIFtmZG8j
MTA2MTA3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA2
MTA3CiAgW2ZkbyMxMDcxMzldOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMDcxMzkKICBbZmRvIzEwNzcwN106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTEwNzcwNwogIFtmZG8jMTA3NzA5XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzA5CiAgW2ZkbyMxMDc3MTNdOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MTMKICBbZmRvIzEw
ODEyNl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODEy
NgogIFtmZG8jMTA5MTAwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA5MTAwCiAgW2ZkbyMxMDkyNzFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMDkyNzEKICBbZmRvIzExMDc4OF06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDc4OAogIFtmZG8jMTExMTA4XTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMTA4CiAgW2ZkbyMxMTEz
NzNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEzNzMK
CgpQYXJ0aWNpcGF0aW5nIGhvc3RzICg1MSAtPiA0NSkKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCgogIEFkZGl0aW9uYWwgKDIpOiBmaS1oc3ctcGVwcHkgZmktaWNsLXUzIAogIE1pc3Np
bmcgICAgKDgpOiBmaS1pbGstbTU0MCBmaS1oc3ctNDIwMHUgZmktYnl0LXNxdWF3a3MgZmktYnN3
LWN5YW4gZmktYXBsLWd1YyBmaS1pY2wteSBmaS1ieXQtY2xhcHBlciBmaS1iZHctc2FtdXMgCgoK
QnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICogQ0k6IENJLTIwMTkwNTI5IC0+IE5vbmUK
ICAqIExpbnV4OiBDSV9EUk1fNjgwNyAtPiBQYXRjaHdvcmtfMTQyMzYKCiAgQ0ktMjAxOTA1Mjk6
IDIwMTkwNTI5CiAgQ0lfRFJNXzY4MDc6IDdkZmU1Mzk0NGEzMDFmOGI3OTQ2ZTY5ZWRiNTcwNjYx
Nzk4ZGQwYjkgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBJ
R1RfNTE1OTogYzA2ZWUyOTg5YzAxMmZjYzQzY2QzNjFlNzVlOWVlNWEzYTkyOTJkZiBAIGdpdDov
L2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVsLWdwdS10b29scwogIFBhdGNo
d29ya18xNDIzNjogZjdiNDJiZGFiMTJiMGVkMjEwNWQzMjFhY2VjZTJkZTk1YTA4MmZjZCBAIGdp
dDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAoKCj09IExpbnV4IGNvbW1p
dHMgPT0KCmY3YjQyYmRhYjEyYiBkcm0vaTkxNTogRG9jdW1lbnQgbG9ja2luZyBndWlkZWxpbmVz
Cgo9PSBMb2dzID09CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQyMzYvCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
