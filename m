Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3779EFD8D9
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 10:27:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C1BA6E2B4;
	Fri, 15 Nov 2019 09:26:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B088F6E225;
 Fri, 15 Nov 2019 09:26:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A8142A0118;
 Fri, 15 Nov 2019 09:26:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 15 Nov 2019 09:26:56 -0000
Message-ID: <157381001665.3300.8827494429773015046@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191115081857.683827-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191115081857.683827-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/gt=3A_Track_engine_round-trip_times_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3Q6IFRyYWNrIGVuZ2luZSBy
b3VuZC10cmlwIHRpbWVzIChyZXYyKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9zZXJpZXMvNjk1MTMvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0kg
QnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNzM1MCAtPiBQYXRjaHdvcmtfMTUyNzMKPT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoKU3VtbWFy
eQotLS0tLS0tCgogICoqRkFJTFVSRSoqCgogIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWlu
ZyB3aXRoIFBhdGNod29ya18xNTI3MyBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUKICB2ZXJpZmllZCBt
YW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3Ro
aW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNTI3
MywgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFsbG93IHRoZW0KICB0byBkb2N1bWVu
dCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZl
cyBpbiBDSS4KCiAgRXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNTI3My9pbmRleC5odG1sCgpQb3NzaWJsZSBuZXcgaXNzdWVz
Ci0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0
IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTUyNzM6CgojIyMgSUdUIGNo
YW5nZXMgIyMjCgojIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMKCiAgKiBpZ3RAaTkxNV9t
b2R1bGVfbG9hZEByZWxvYWQtbm8tZGlzcGxheToKICAgIC0gZmktYmxiLWU2ODUwOiAgICAgICBb
UEFTU11bMV0gLT4gW0RNRVNHLVdBUk5dWzJdCiAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM1MC9maS1ibGItZTY4NTAvaWd0QGk5MTVfbW9k
dWxlX2xvYWRAcmVsb2FkLW5vLWRpc3BsYXkuaHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MjczL2ZpLWJsYi1lNjg1MC9pZ3RA
aTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtbm8tZGlzcGxheS5odG1sCiAgICAtIGZpLWtibC04ODA5
ZzogICAgICAgW1BBU1NdWzNdIC0+IFtETUVTRy1XQVJOXVs0XQogICBbM106IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczNTAvZmkta2JsLTg4MDlnL2ln
dEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC1uby1kaXNwbGF5Lmh0bWwKICAgWzRdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI3My9maS1rYmwt
ODgwOWcvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLW5vLWRpc3BsYXkuaHRtbAogICAgLSBm
aS1pY2wteTogICAgICAgICAgIFtQQVNTXVs1XSAtPiBbRE1FU0ctV0FSTl1bNl0KICAgWzVdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzUwL2ZpLWlj
bC15L2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC1uby1kaXNwbGF5Lmh0bWwKICAgWzZdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI3My9m
aS1pY2wteS9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtbm8tZGlzcGxheS5odG1sCgogICog
aWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLXdpdGgtZmF1bHQtaW5qZWN0aW9uOgogICAgLSBm
aS1ic3cta2Vma2E6ICAgICAgIFtQQVNTXVs3XSAtPiBbRE1FU0ctV0FSTl1bOF0KICAgWzddOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzUwL2ZpLWJz
dy1rZWZrYS9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtd2l0aC1mYXVsdC1pbmplY3Rpb24u
aHRtbAogICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE1MjczL2ZpLWJzdy1rZWZrYS9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtd2l0
aC1mYXVsdC1pbmplY3Rpb24uaHRtbAogICAgLSBmaS1ic3ctbmljazogICAgICAgIFtQQVNTXVs5
XSAtPiBbRE1FU0ctV0FSTl1bMTBdCiAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM1MC9maS1ic3ctbmljay9pZ3RAaTkxNV9tb2R1bGVfbG9h
ZEByZWxvYWQtd2l0aC1mYXVsdC1pbmplY3Rpb24uaHRtbAogICBbMTBdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI3My9maS1ic3ctbmljay9p
Z3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtd2l0aC1mYXVsdC1pbmplY3Rpb24uaHRtbAogICAg
LSBmaS1ic3ctbjMwNTA6ICAgICAgIFtQQVNTXVsxMV0gLT4gW0RNRVNHLVdBUk5dWzEyXQogICBb
MTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzUw
L2ZpLWJzdy1uMzA1MC9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtd2l0aC1mYXVsdC1pbmpl
Y3Rpb24uaHRtbAogICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNTI3My9maS1ic3ctbjMwNTAvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVs
b2FkLXdpdGgtZmF1bHQtaW5qZWN0aW9uLmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZl
X2d0X2NvbnRleHRzOgogICAgLSBmaS1nbGstZHNpOiAgICAgICAgIFtQQVNTXVsxM10gLT4gW0RN
RVNHLUZBSUxdWzE0XQogICBbMTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83MzUwL2ZpLWdsay1kc2kvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9j
b250ZXh0cy5odG1sCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE1MjczL2ZpLWdsay1kc2kvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9n
dF9jb250ZXh0cy5odG1sCiAgICAtIGZpLWFwbC1ndWM6ICAgICAgICAgW1BBU1NdWzE1XSAtPiBb
RE1FU0ctRkFJTF1bMTZdCiAgIFsxNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzczNTAvZmktYXBsLWd1Yy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0
X2NvbnRleHRzLmh0bWwKICAgWzE2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTUyNzMvZmktYXBsLWd1Yy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZl
X2d0X2NvbnRleHRzLmh0bWwKICAgIC0gZmktc2tsLTY2MDB1OiAgICAgICBbUEFTU11bMTddIC0+
IFtETUVTRy1GQUlMXVsxOF0KICAgWzE3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNzM1MC9maS1za2wtNjYwMHUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2
ZV9ndF9jb250ZXh0cy5odG1sCiAgIFsxOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MjczL2ZpLXNrbC02NjAwdS9pZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlX2d0X2NvbnRleHRzLmh0bWwKICAgIC0gZmktcG52LWQ1MTA6ICAgICAgICBbUEFTU11b
MTldIC0+IFtETUVTRy1GQUlMXVsyMF0KICAgWzE5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM1MC9maS1wbnYtZDUxMC9pZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlX2d0X2NvbnRleHRzLmh0bWwKICAgWzIwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUyNzMvZmktcG52LWQ1MTAvaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZV9ndF9jb250ZXh0cy5odG1sCiAgICAtIGZpLWJ5dC1qMTkwMDogICAgICAgW1BB
U1NdWzIxXSAtPiBbRE1FU0ctRkFJTF1bMjJdCiAgIFsyMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczNTAvZmktYnl0LWoxOTAwL2lndEBpOTE1X3Nl
bGZ0ZXN0QGxpdmVfZ3RfY29udGV4dHMuaHRtbAogICBbMjJdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI3My9maS1ieXQtajE5MDAvaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZV9ndF9jb250ZXh0cy5odG1sCiAgICAtIGZpLXNrbC02NzAwazI6ICAg
ICAgW1BBU1NdWzIzXSAtPiBbRE1FU0ctRkFJTF1bMjRdCiAgIFsyM106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczNTAvZmktc2tsLTY3MDBrMi9pZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlX2d0X2NvbnRleHRzLmh0bWwKICAgWzI0XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUyNzMvZmktc2tsLTY3MDBr
Mi9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X2NvbnRleHRzLmh0bWwKICAgIC0gZmktZWxrLWU3
NTAwOiAgICAgICBbUEFTU11bMjVdIC0+IFtETUVTRy1GQUlMXVsyNl0KICAgWzI1XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM1MC9maS1lbGstZTc1
MDAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9jb250ZXh0cy5odG1sCiAgIFsyNl06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MjczL2ZpLWVs
ay1lNzUwMC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X2NvbnRleHRzLmh0bWwKICAgIC0gZmkt
c25iLTI2MDA6ICAgICAgICBbUEFTU11bMjddIC0+IFtETUVTRy1GQUlMXVsyOF0KICAgWzI3XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM1MC9maS1z
bmItMjYwMC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X2NvbnRleHRzLmh0bWwKICAgWzI4XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUyNzMv
Zmktc25iLTI2MDAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9jb250ZXh0cy5odG1sCiAgICAt
IGZpLWJ3ci0yMTYwOiAgICAgICAgW1BBU1NdWzI5XSAtPiBbRE1FU0ctRkFJTF1bMzBdCiAgIFsy
OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczNTAv
ZmktYndyLTIxNjAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9jb250ZXh0cy5odG1sCiAgIFsz
MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1
MjczL2ZpLWJ3ci0yMTYwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfY29udGV4dHMuaHRtbAog
ICAgLSBmaS13aGwtdTogICAgICAgICAgIFtQQVNTXVszMV0gLT4gW0RNRVNHLUZBSUxdWzMyXQog
ICBbMzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83
MzUwL2ZpLXdobC11L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfY29udGV4dHMuaHRtbAogICBb
MzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NTI3My9maS13aGwtdS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X2NvbnRleHRzLmh0bWwKICAg
IC0gZmkta2JsLXNvcmFrYTogICAgICBbUEFTU11bMzNdIC0+IFtETUVTRy1GQUlMXVszNF0KICAg
WzMzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM1
MC9maS1rYmwtc29yYWthL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfY29udGV4dHMuaHRtbAog
ICBbMzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNTI3My9maS1rYmwtc29yYWthL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfY29udGV4dHMu
aHRtbAogICAgLSBmaS1za2wtbG1lbTogICAgICAgIFtQQVNTXVszNV0gLT4gW0RNRVNHLUZBSUxd
WzM2XQogICBbMzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV83MzUwL2ZpLXNrbC1sbWVtL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfY29udGV4dHMu
aHRtbAogICBbMzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNTI3My9maS1za2wtbG1lbS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X2NvbnRl
eHRzLmh0bWwKICAgIC0gZmktaWNsLXUzOiAgICAgICAgICBbUEFTU11bMzddIC0+IFtETUVTRy1G
QUlMXVszOF0KICAgWzM3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzM1MC9maS1pY2wtdTMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9jb250ZXh0
cy5odG1sCiAgIFszOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE1MjczL2ZpLWljbC11My9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X2NvbnRl
eHRzLmh0bWwKICAgIC0gZmktYnl0LW4yODIwOiAgICAgICBbUEFTU11bMzldIC0+IFtETUVTRy1G
QUlMXVs0MF0KICAgWzM5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzM1MC9maS1ieXQtbjI4MjAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9jb250
ZXh0cy5odG1sCiAgIFs0MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE1MjczL2ZpLWJ5dC1uMjgyMC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0
X2NvbnRleHRzLmh0bWwKICAgIC0gZmkta2JsLXI6ICAgICAgICAgICBbUEFTU11bNDFdIC0+IFtE
TUVTRy1GQUlMXVs0Ml0KICAgWzQxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNzM1MC9maS1rYmwtci9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X2Nv
bnRleHRzLmh0bWwKICAgWzQyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTUyNzMvZmkta2JsLXIvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9j
b250ZXh0cy5odG1sCiAgICAtIGZpLWdkZy01NTE6ICAgICAgICAgW1BBU1NdWzQzXSAtPiBbRE1F
U0ctRkFJTF1bNDRdCiAgIFs0M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzczNTAvZmktZ2RnLTU1MS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X2Nv
bnRleHRzLmh0bWwKICAgWzQ0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTUyNzMvZmktZ2RnLTU1MS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0
X2NvbnRleHRzLmh0bWwKICAgIC0gZmktY2ZsLTg3MDBrOiAgICAgICBbUEFTU11bNDVdIC0+IFtE
TUVTRy1GQUlMXVs0Nl0KICAgWzQ1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNzM1MC9maS1jZmwtODcwMGsvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9n
dF9jb250ZXh0cy5odG1sCiAgIFs0Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE1MjczL2ZpLWNmbC04NzAway9pZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlX2d0X2NvbnRleHRzLmh0bWwKICAgIC0gZmktaHN3LXBlcHB5OiAgICAgICBbUEFTU11bNDdd
IC0+IFtETUVTRy1GQUlMXVs0OF0KICAgWzQ3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM1MC9maS1oc3ctcGVwcHkvaWd0QGk5MTVfc2VsZnRlc3RA
bGl2ZV9ndF9jb250ZXh0cy5odG1sCiAgIFs0OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MjczL2ZpLWhzdy1wZXBweS9pZ3RAaTkxNV9zZWxm
dGVzdEBsaXZlX2d0X2NvbnRleHRzLmh0bWwKICAgIC0gZmktc2tsLWd1YzogICAgICAgICBbUEFT
U11bNDldIC0+IFtETUVTRy1GQUlMXVs1MF0KICAgWzQ5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM1MC9maS1za2wtZ3VjL2lndEBpOTE1X3NlbGZ0
ZXN0QGxpdmVfZ3RfY29udGV4dHMuaHRtbAogICBbNTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI3My9maS1za2wtZ3VjL2lndEBpOTE1X3Nl
bGZ0ZXN0QGxpdmVfZ3RfY29udGV4dHMuaHRtbAogICAgLSBmaS1jZmwtZ3VjOiAgICAgICAgIFtQ
QVNTXVs1MV0gLT4gW0RNRVNHLUZBSUxdWzUyXQogICBbNTFdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzUwL2ZpLWNmbC1ndWMvaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZV9ndF9jb250ZXh0cy5odG1sCiAgIFs1Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MjczL2ZpLWNmbC1ndWMvaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZV9ndF9jb250ZXh0cy5odG1sCiAgICAtIGZpLWtibC14MTI3NTogICAgICAg
W1BBU1NdWzUzXSAtPiBbRE1FU0ctRkFJTF1bNTRdCiAgIFs1M106IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczNTAvZmkta2JsLXgxMjc1L2lndEBpOTE1
X3NlbGZ0ZXN0QGxpdmVfZ3RfY29udGV4dHMuaHRtbAogICBbNTRdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI3My9maS1rYmwteDEyNzUvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9jb250ZXh0cy5odG1sCiAgICAtIGZpLWlsay02NTA6ICAg
ICAgICAgW1BBU1NdWzU1XSAtPiBbRE1FU0ctRkFJTF1bNTZdCiAgIFs1NV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczNTAvZmktaWxrLTY1MC9pZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlX2d0X2NvbnRleHRzLmh0bWwKICAgWzU2XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUyNzMvZmktaWxrLTY1MC9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X2NvbnRleHRzLmh0bWwKICAgIC0gZmktY21sLXUyOiAg
ICAgICAgICBbUEFTU11bNTddIC0+IFtETUVTRy1GQUlMXVs1OF0KICAgWzU3XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM1MC9maS1jbWwtdTIvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9jb250ZXh0cy5odG1sCiAgIFs1OF06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MjczL2ZpLWNtbC11Mi9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X2NvbnRleHRzLmh0bWwKICAgIC0gZmktYnh0LWRzaTog
ICAgICAgICBbUEFTU11bNTldIC0+IFtETUVTRy1GQUlMXVs2MF0KICAgWzU5XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM1MC9maS1ieHQtZHNpL2ln
dEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfY29udGV4dHMuaHRtbAogICBbNjBdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI3My9maS1ieHQtZHNp
L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfY29udGV4dHMuaHRtbAogICAgLSBmaS1rYmwtNzUw
MHU6ICAgICAgIFtQQVNTXVs2MV0gLT4gW0RNRVNHLUZBSUxdWzYyXQogICBbNjFdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzUwL2ZpLWtibC03NTAw
dS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X2NvbnRleHRzLmh0bWwKICAgWzYyXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUyNzMvZmkta2Js
LTc1MDB1L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfY29udGV4dHMuaHRtbAogICAgLSBmaS1i
ZHctNTU1N3U6ICAgICAgIFtQQVNTXVs2M10gLT4gW0RNRVNHLUZBSUxdWzY0XQogICBbNjNdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzUwL2ZpLWJk
dy01NTU3dS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X2NvbnRleHRzLmh0bWwKICAgWzY0XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUyNzMv
ZmktYmR3LTU1NTd1L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfY29udGV4dHMuaHRtbAogICAg
LSBmaS1rYmwtZ3VjOiAgICAgICAgIFtQQVNTXVs2NV0gLT4gW0RNRVNHLUZBSUxdWzY2XQogICBb
NjVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzUw
L2ZpLWtibC1ndWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9jb250ZXh0cy5odG1sCiAgIFs2
Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1
MjczL2ZpLWtibC1ndWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9jb250ZXh0cy5odG1sCgog
ICogaWd0QHJ1bm5lckBhYm9ydGVkOgogICAgLSBmaS13aGwtdTogICAgICAgICAgIE5PVFJVTiAt
PiBbRkFJTF1bNjddCiAgIFs2N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE1MjczL2ZpLXdobC11L2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAg
ICAtIGZpLWJ4dC1kc2k6ICAgICAgICAgTk9UUlVOIC0+IFtGQUlMXVs2OF0KICAgWzY4XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUyNzMvZmkt
Ynh0LWRzaS9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1ibGItZTY4NTA6ICAgICAg
IE5PVFJVTiAtPiBbRkFJTF1bNjldCiAgIFs2OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MjczL2ZpLWJsYi1lNjg1MC9pZ3RAcnVubmVyQGFi
b3J0ZWQuaHRtbAogICAgLSBmaS1rYmwtODgwOWc6ICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bNzBd
CiAgIFs3MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE1MjczL2ZpLWtibC04ODA5Zy9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1r
YmwtcjogICAgICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bNzFdCiAgIFs3MV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MjczL2ZpLWtibC1yL2ln
dEBydW5uZXJAYWJvcnRlZC5odG1sCgogIAojIyMjIFN1cHByZXNzZWQgIyMjIwoKICBUaGUgZm9s
bG93aW5nIHJlc3VsdHMgY29tZSBmcm9tIHVudHJ1c3RlZCBtYWNoaW5lcywgdGVzdHMsIG9yIHN0
YXR1c2VzLgogIFRoZXkgZG8gbm90IGFmZmVjdCB0aGUgb3ZlcmFsbCByZXN1bHQuCgogICoge2ln
dEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfbW9jc306CiAgICAtIGZpLWtibC1yOiAgICAgICAgICAg
W1BBU1NdWzcyXSAtPiBbRE1FU0ctV0FSTl1bNzNdCiAgIFs3Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczNTAvZmkta2JsLXIvaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZV9ndF9tb2NzLmh0bWwKICAgWzczXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUyNzMvZmkta2JsLXIvaWd0QGk5MTVfc2VsZnRl
c3RAbGl2ZV9ndF9tb2NzLmh0bWwKICAgIC0gZmkta2JsLWd1YzogICAgICAgICBbUEFTU11bNzRd
IC0+IFtETUVTRy1XQVJOXVs3NV0KICAgWzc0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM1MC9maS1rYmwtZ3VjL2lndEBpOTE1X3NlbGZ0ZXN0QGxp
dmVfZ3RfbW9jcy5odG1sCiAgIFs3NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE1MjczL2ZpLWtibC1ndWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2
ZV9ndF9tb2NzLmh0bWwKICAgIC0gZmktaWNsLXUyOiAgICAgICAgICBbUEFTU11bNzZdIC0+IFtE
TUVTRy1XQVJOXVs3N10KICAgWzc2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNzM1MC9maS1pY2wtdTIvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9t
b2NzLmh0bWwKICAgWzc3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTUyNzMvZmktaWNsLXUyL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfbW9j
cy5odG1sCiAgICAtIGZpLWNmbC1ndWM6ICAgICAgICAgW1BBU1NdWzc4XSAtPiBbRE1FU0ctV0FS
Tl1bNzldCiAgIFs3OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzczNTAvZmktY2ZsLWd1Yy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X21vY3MuaHRt
bAogICBbNzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNTI3My9maS1jZmwtZ3VjL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfbW9jcy5odG1s
CgogIApLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZv
dW5kIGluIFBhdGNod29ya18xNTI3MyB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6CgojIyMg
SUdUIGNoYW5nZXMgIyMjCgojIyMjIElzc3VlcyBoaXQgIyMjIwoKICAqIGlndEBrbXNfY2hhbWVs
aXVtQGhkbWktaHBkLWZhc3Q6CiAgICAtIGZpLWtibC03NTAwdTogICAgICAgW1BBU1NdWzgwXSAt
PiBbRkFJTF1bODFdIChbZmRvIzExMTA0NV0gLyBbZmRvIzExMTA5Nl0pCiAgIFs4MF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczNTAvZmkta2JsLTc1
MDB1L2lndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3QuaHRtbAogICBbODFdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI3My9maS1rYmwt
NzUwMHUvaWd0QGttc19jaGFtZWxpdW1AaGRtaS1ocGQtZmFzdC5odG1sCgogICogaWd0QGttc19m
cm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYzoKICAgIC0gZmktaWNsLXUzOiAgICAgICAgICBbUEFT
U11bODJdIC0+IFtGQUlMXVs4M10gKFtmZG8jMTAzMTY3XSkKICAgWzgyXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM1MC9maS1pY2wtdTMvaWd0QGtt
c19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYy5odG1sCiAgIFs4M106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MjczL2ZpLWljbC11My9pZ3RA
a21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2ljLmh0bWwKICAgIC0gZmktaWNsLWd1YzogICAg
ICAgICBbUEFTU11bODRdIC0+IFtGQUlMXVs4NV0gKFtmZG8jMTAzMTY3XSkKICAgWzg0XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM1MC9maS1pY2wt
Z3VjL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAYmFzaWMuaHRtbAogICBbODVdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI3My9maS1p
Y2wtZ3VjL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAYmFzaWMuaHRtbAoKICAKIyMjIyBQ
b3NzaWJsZSBmaXhlcyAjIyMjCgogICogaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQ6CiAg
ICAtIGZpLXNrbC02NzcwaHE6ICAgICAgW0RNRVNHLVdBUk5dWzg2XSAoW2ZkbyMxMTIyNjFdKSAt
PiBbUEFTU11bODddCiAgIFs4Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzczNTAvZmktc2tsLTY3NzBocS9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJl
bG9hZC5odG1sCiAgIFs4N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE1MjczL2ZpLXNrbC02NzcwaHEvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1y
ZWxvYWQuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBiYXNpYy1mbGlwLXZzLW1vZGVzZXQ6CiAgICAt
IGZpLWljbC1kc2k6ICAgICAgICAgW0lOQ09NUExFVEVdWzg4XSAoW2ZkbyMxMDc3MTNdKSAtPiBb
UEFTU11bODldCiAgIFs4OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzczNTAvZmktaWNsLWRzaS9pZ3RAa21zX2ZsaXBAYmFzaWMtZmxpcC12cy1tb2Rl
c2V0Lmh0bWwKICAgWzg5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTUyNzMvZmktaWNsLWRzaS9pZ3RAa21zX2ZsaXBAYmFzaWMtZmxpcC12cy1t
b2Rlc2V0Lmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2ljOgogICAg
LSBmaS1pY2wtdTI6ICAgICAgICAgIFtGQUlMXVs5MF0gKFtmZG8jMTAzMTY3XSkgLT4gW1BBU1Nd
WzkxXQogICBbOTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV83MzUwL2ZpLWljbC11Mi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2ljLmh0
bWwKICAgWzkxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTUyNzMvZmktaWNsLXUyL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAYmFzaWMu
aHRtbAoKICAqIGlndEBrbXNfc2V0bW9kZUBiYXNpYy1jbG9uZS1zaW5nbGUtY3J0YzoKICAgIC0g
Zmktc2tsLTY3NzBocTogICAgICBbV0FSTl1bOTJdIChbZmRvIzExMjI1Ml0pIC0+IFtQQVNTXVs5
M10KICAgWzkyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNzM1MC9maS1za2wtNjc3MGhxL2lndEBrbXNfc2V0bW9kZUBiYXNpYy1jbG9uZS1zaW5nbGUt
Y3J0Yy5odG1sCiAgIFs5M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE1MjczL2ZpLXNrbC02NzcwaHEvaWd0QGttc19zZXRtb2RlQGJhc2ljLWNs
b25lLXNpbmdsZS1jcnRjLmh0bWwKCiAgCiAge25hbWV9OiBUaGlzIGVsZW1lbnQgaXMgc3VwcHJl
c3NlZC4gVGhpcyBtZWFucyBpdCBpcyBpZ25vcmVkIHdoZW4gY29tcHV0aW5nCiAgICAgICAgICB0
aGUgc3RhdHVzIG9mIHRoZSBkaWZmZXJlbmNlIChTVUNDRVNTLCBXQVJOSU5HLCBvciBGQUlMVVJF
KS4KCiAgW2ZkbyMxMDMxNjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMDMxNjcKICBbZmRvIzEwNzcxM106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTEwNzcxMwogIFtmZG8jMTA5OTY0XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5OTY0CiAgW2ZkbyMxMTAzNDNdOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTAzNDMKICBbZmRvIzEx
MTA0NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTA0
NQogIFtmZG8jMTExMDk2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTExMDk2CiAgW2ZkbyMxMTIyNTJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMTIyNTIKICBbZmRvIzExMjI2MV06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjI2MQoKClBhcnRpY2lwYXRpbmcgaG9zdHMg
KDQ5IC0+IDQ0KQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTWlzc2luZyAgICAo
NSk6IGZpLWhzdy00MjAwdSBmaS1ieXQtc3F1YXdrcyBmaS1ic3ctY3lhbiBmaS1pdmItMzc3MCBm
aS1ieXQtY2xhcHBlciAKCgpCdWlsZCBjaGFuZ2VzCi0tLS0tLS0tLS0tLS0KCiAgKiBDSTogQ0kt
MjAxOTA1MjkgLT4gTm9uZQogICogTGludXg6IENJX0RSTV83MzUwIC0+IFBhdGNod29ya18xNTI3
MwoKICBDSS0yMDE5MDUyOTogMjAxOTA1MjkKICBDSV9EUk1fNzM1MDogMTUyZjQ5NzcxNjU0M2I1
NzNhZDcyOWNiZWU4ZGQwZTUxZDZiNGFhZiBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3Jn
L2dmeC1jaS9saW51eAogIElHVF81Mjg3OiA5ZTU3ZjhhNTFkNTliM2ZmZTQwMDJkNzYxZmUwMzE1
ZDczM2JkNjZlIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9yZy9hcHAvaW50ZWwt
Z3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzE1MjczOiBmYWQ0ODg2ZjQ1MDFhNDQyODc2ZTE4OWMxMTA5
ZGZmNWMyNGE3ZDViIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4
CgoKPT0gTGludXggY29tbWl0cyA9PQoKZmFkNDg4NmY0NTAxIGRybS9pOTE1L2d0OiBUcmFjayBl
bmdpbmUgcm91bmQtdHJpcCB0aW1lcwoKPT0gTG9ncyA9PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1Mjcz
L2luZGV4Lmh0bWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
