Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7981ECEC0
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Nov 2019 13:50:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46D826E459;
	Sat,  2 Nov 2019 12:50:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E773C6E454;
 Sat,  2 Nov 2019 12:50:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DD85DA0096;
 Sat,  2 Nov 2019 12:50:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 02 Nov 2019 12:50:32 -0000
Message-ID: <20191102125032.9336.65723@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191102121631.8137-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191102121631.8137-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/execlists=3A_Verify_context_register_state_before_executio?=
 =?utf-8?q?n_=28rev5=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZXhlY2xpc3RzOiBWZXJpZnkg
Y29udGV4dCByZWdpc3RlciBzdGF0ZSBiZWZvcmUgZXhlY3V0aW9uIChyZXY1KQpVUkwgICA6IGh0
dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjg1OTkvClN0YXRlIDogZmFp
bHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNzI0
NSAtPiBQYXRjaHdvcmtfMTUxMTcKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PQoKU3VtbWFyeQotLS0tLS0tCgogICoqRkFJTFVSRSoqCgogIFNlcmlv
dXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xNTExNyBhYnNvbHV0ZWx5
IG5lZWQgdG8gYmUKICB2ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhlIHJl
cG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBpbnRy
b2R1Y2VkIGluIFBhdGNod29ya18xNTExNywgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRv
IGFsbG93IHRoZW0KICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdp
bGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4KCiAgRXh0ZXJuYWwgVVJMOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTExNy9pbmRleC5o
dG1sCgpQb3NzaWJsZSBuZXcgaXNzdWVzCi0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUg
dGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRj
aHdvcmtfMTUxMTc6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIFBvc3NpYmxlIHJlZ3Jlc3Np
b25zICMjIyMKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVjazoKICAgIC0gZmkt
YmR3LTU1NTd1OiAgICAgICBbUEFTU11bMV0gLT4gW0RNRVNHLVdBUk5dWzJdCiAgIFsxXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzI0NS9maS1iZHct
NTU1N3UvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9oYW5nY2hlY2suaHRtbAogICBbMl06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MTE3L2ZpLWJk
dy01NTU3dS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVjay5odG1sCiAgICAtIGZpLWti
bC1yOiAgICAgICAgICAgW1BBU1NdWzNdIC0+IFtETUVTRy1XQVJOXVs0XQogICBbM106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcyNDUvZmkta2JsLXIv
aWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9oYW5nY2hlY2suaHRtbAogICBbNF06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MTE3L2ZpLWtibC1yL2ln
dEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2NoZWNrLmh0bWwKICAgIC0gZmktc2tsLWd1YzogICAg
ICAgICBbUEFTU11bNV0gLT4gW0RNRVNHLVdBUk5dWzZdCiAgIFs1XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzI0NS9maS1za2wtZ3VjL2lndEBpOTE1
X3NlbGZ0ZXN0QGxpdmVfaGFuZ2NoZWNrLmh0bWwKICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTExNy9maS1za2wtZ3VjL2lndEBpOTE1
X3NlbGZ0ZXN0QGxpdmVfaGFuZ2NoZWNrLmh0bWwKICAgIC0gZmktYnN3LW5pY2s6ICAgICAgICBO
T1RSVU4gLT4gW0RNRVNHLVdBUk5dWzddCiAgIFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUxMTcvZmktYnN3LW5pY2svaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZV9oYW5nY2hlY2suaHRtbAogICAgLSBmaS1jZmwtODcwMGs6ICAgICAgIFtQQVNT
XVs4XSAtPiBbRE1FU0ctV0FSTl1bOV0KICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MjQ1L2ZpLWNmbC04NzAway9pZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlX2hhbmdjaGVjay5odG1sCiAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUxMTcvZmktY2ZsLTg3MDBrL2lndEBpOTE1X3NlbGZ0
ZXN0QGxpdmVfaGFuZ2NoZWNrLmh0bWwKICAgIC0gZmktd2hsLXU6ICAgICAgICAgICBbUEFTU11b
MTBdIC0+IFtETUVTRy1XQVJOXVsxMV0KICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzI0NS9maS13aGwtdS9pZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlX2hhbmdjaGVjay5odG1sCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MTE3L2ZpLXdobC11L2lndEBpOTE1X3NlbGZ0ZXN0QGxp
dmVfaGFuZ2NoZWNrLmh0bWwKICAgIC0gZmktY2ZsLWd1YzogICAgICAgICBbUEFTU11bMTJdIC0+
IFtETUVTRy1XQVJOXVsxM10KICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNzI0NS9maS1jZmwtZ3VjL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVf
aGFuZ2NoZWNrLmh0bWwKICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTUxMTcvZmktY2ZsLWd1Yy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZl
X2hhbmdjaGVjay5odG1sCiAgICAtIGZpLWtibC1zb3Jha2E6ICAgICAgW1BBU1NdWzE0XSAtPiBb
RE1FU0ctV0FSTl1bMTVdCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzcyNDUvZmkta2JsLXNvcmFrYS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZl
X2hhbmdjaGVjay5odG1sCiAgIFsxNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE1MTE3L2ZpLWtibC1zb3Jha2EvaWd0QGk5MTVfc2VsZnRlc3RA
bGl2ZV9oYW5nY2hlY2suaHRtbAogICAgLSBmaS1nbGstZHNpOiAgICAgICAgIFtQQVNTXVsxNl0g
LT4gW0RNRVNHLVdBUk5dWzE3XQogICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV83MjQ1L2ZpLWdsay1kc2kvaWd0QGk5MTVfc2VsZnRlc3RAbGl2
ZV9oYW5nY2hlY2suaHRtbAogICBbMTddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNTExNy9maS1nbGstZHNpL2lndEBpOTE1X3NlbGZ0ZXN0QGxp
dmVfaGFuZ2NoZWNrLmh0bWwKICAgIC0gZmktaWNsLXUzOiAgICAgICAgICBbUEFTU11bMThdIC0+
IFtETUVTRy1XQVJOXVsxOV0KICAgWzE4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNzI0NS9maS1pY2wtdTMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9o
YW5nY2hlY2suaHRtbAogICBbMTldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNTExNy9maS1pY2wtdTMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9o
YW5nY2hlY2suaHRtbAogICAgLSBmaS1rYmwtNzUwMHU6ICAgICAgIFtQQVNTXVsyMF0gLT4gW0RN
RVNHLVdBUk5dWzIxXQogICBbMjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83MjQ1L2ZpLWtibC03NTAwdS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hh
bmdjaGVjay5odG1sCiAgIFsyMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE1MTE3L2ZpLWtibC03NTAwdS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZl
X2hhbmdjaGVjay5odG1sCiAgICAtIGZpLWtibC1ndWM6ICAgICAgICAgW1BBU1NdWzIyXSAtPiBb
RE1FU0ctV0FSTl1bMjNdCiAgIFsyMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzcyNDUvZmkta2JsLWd1Yy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hh
bmdjaGVjay5odG1sCiAgIFsyM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE1MTE3L2ZpLWtibC1ndWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9o
YW5nY2hlY2suaHRtbAogICAgLSBmaS1rYmwtODgwOWc6ICAgICAgIFtQQVNTXVsyNF0gLT4gW0RN
RVNHLVdBUk5dWzI1XQogICBbMjRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83MjQ1L2ZpLWtibC04ODA5Zy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hh
bmdjaGVjay5odG1sCiAgIFsyNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE1MTE3L2ZpLWtibC04ODA5Zy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZl
X2hhbmdjaGVjay5odG1sCiAgICAtIGZpLWJzdy1rZWZrYTogICAgICAgW1BBU1NdWzI2XSAtPiBb
RE1FU0ctV0FSTl1bMjddCiAgIFsyNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzcyNDUvZmktYnN3LWtlZmthL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVf
aGFuZ2NoZWNrLmh0bWwKICAgWzI3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTUxMTcvZmktYnN3LWtlZmthL2lndEBpOTE1X3NlbGZ0ZXN0QGxp
dmVfaGFuZ2NoZWNrLmh0bWwKICAgIC0gZmktYnh0LWRzaTogICAgICAgICBbUEFTU11bMjhdIC0+
IFtETUVTRy1XQVJOXVsyOV0KICAgWzI4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNzI0NS9maS1ieHQtZHNpL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVf
aGFuZ2NoZWNrLmh0bWwKICAgWzI5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTUxMTcvZmktYnh0LWRzaS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZl
X2hhbmdjaGVjay5odG1sCiAgICAtIGZpLWNtbC11MjogICAgICAgICAgW1BBU1NdWzMwXSAtPiBb
RE1FU0ctV0FSTl1bMzFdCiAgIFszMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzcyNDUvZmktY21sLXUyL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFu
Z2NoZWNrLmh0bWwKICAgWzMxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTUxMTcvZmktY21sLXUyL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFu
Z2NoZWNrLmh0bWwKICAgIC0gZmktc2tsLTY2MDB1OiAgICAgICBbUEFTU11bMzJdIC0+IFtETUVT
Ry1XQVJOXVszM10KICAgWzMyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNzI0NS9maS1za2wtNjYwMHUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9oYW5n
Y2hlY2suaHRtbAogICBbMzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNTExNy9maS1za2wtNjYwMHUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9o
YW5nY2hlY2suaHRtbAogICAgLSBmaS1za2wtNjc3MGhxOiAgICAgIFtQQVNTXVszNF0gLT4gW0RN
RVNHLVdBUk5dWzM1XQogICBbMzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83MjQ1L2ZpLXNrbC02NzcwaHEvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9o
YW5nY2hlY2suaHRtbAogICBbMzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNTExNy9maS1za2wtNjc3MGhxL2lndEBpOTE1X3NlbGZ0ZXN0QGxp
dmVfaGFuZ2NoZWNrLmh0bWwKICAgIC0gZmktc2tsLTY3MDBrMjogICAgICBbUEFTU11bMzZdIC0+
IFtETUVTRy1XQVJOXVszN10gKzEgc2ltaWxhciBpc3N1ZQogICBbMzZdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MjQ1L2ZpLXNrbC02NzAwazIvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV9oYW5nY2hlY2suaHRtbAogICBbMzddOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTExNy9maS1za2wtNjcwMGsy
L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2NoZWNrLmh0bWwKICAgIC0gZmktc2tsLWxtZW06
ICAgICAgICBbUEFTU11bMzhdIC0+IFtETUVTRy1XQVJOXVszOV0KICAgWzM4XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzI0NS9maS1za2wtbG1lbS9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVjay5odG1sCiAgIFszOV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MTE3L2ZpLXNrbC1sbWVt
L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2NoZWNrLmh0bWwKCiAgKiBpZ3RAcnVubmVyQGFi
b3J0ZWQ6CiAgICAtIGZpLWNtbC11MjogICAgICAgICAgTk9UUlVOIC0+IFtGQUlMXVs0MF0KICAg
WzQwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTUxMTcvZmktY21sLXUyL2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAtIGZpLWJ4dC1kc2k6
ICAgICAgICAgTk9UUlVOIC0+IFtGQUlMXVs0MV0KICAgWzQxXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUxMTcvZmktYnh0LWRzaS9pZ3RAcnVu
bmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1jZmwtODcwMGs6ICAgICAgIE5PVFJVTiAtPiBbRkFJ
TF1bNDJdCiAgIFs0Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE1MTE3L2ZpLWNmbC04NzAway9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAoKICAK
IyMjIyBTdXBwcmVzc2VkICMjIyMKCiAgVGhlIGZvbGxvd2luZyByZXN1bHRzIGNvbWUgZnJvbSB1
bnRydXN0ZWQgbWFjaGluZXMsIHRlc3RzLCBvciBzdGF0dXNlcy4KICBUaGV5IGRvIG5vdCBhZmZl
Y3QgdGhlIG92ZXJhbGwgcmVzdWx0LgoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2No
ZWNrOgogICAgLSB7ZmktdGdsLXV9OiAgICAgICAgIE5PVFJVTiAtPiBbRE1FU0ctV0FSTl1bNDNd
CiAgIFs0M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE1MTE3L2ZpLXRnbC11L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2NoZWNrLmh0bWwK
ICAgIC0ge2ZpLWljbC15fTogICAgICAgICBbUEFTU11bNDRdIC0+IFtETUVTRy1XQVJOXVs0NV0K
ICAgWzQ0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NzI0NS9maS1pY2wteS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVjay5odG1sCiAgIFs0
NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1
MTE3L2ZpLWljbC15L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2NoZWNrLmh0bWwKICAgIC0g
e2ZpLWljbC1kc2l9OiAgICAgICBbUEFTU11bNDZdIC0+IFtETUVTRy1XQVJOXVs0N10KICAgWzQ2
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzI0NS9m
aS1pY2wtZHNpL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2NoZWNrLmh0bWwKICAgWzQ3XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUxMTcv
ZmktaWNsLWRzaS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVjay5odG1sCgogICogaWd0
QHJ1bm5lckBhYm9ydGVkOgogICAgLSB7ZmktdGdsLXV9OiAgICAgICAgIE5PVFJVTiAtPiBbRkFJ
TF1bNDhdCiAgIFs0OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE1MTE3L2ZpLXRnbC11L2lndEBydW5uZXJAYWJvcnRlZC5odG1sCgogIApLbm93
biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBh
dGNod29ya18xNTExNyB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6CgojIyMgSUdUIGNoYW5n
ZXMgIyMjCgojIyMjIElzc3VlcyBoaXQgIyMjIwoKICAqIGlndEBnZW1fZmxpbmtfYmFzaWNAZG91
YmxlLWZsaW5rOgogICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtQQVNTXVs0OV0gLT4gW0RNRVNH
LVdBUk5dWzUwXSAoW2ZkbyMxMDc3MjRdKSArMSBzaW1pbGFyIGlzc3VlCiAgIFs0OV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcyNDUvZmktaWNsLXUz
L2lndEBnZW1fZmxpbmtfYmFzaWNAZG91YmxlLWZsaW5rLmh0bWwKICAgWzUwXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUxMTcvZmktaWNsLXUz
L2lndEBnZW1fZmxpbmtfYmFzaWNAZG91YmxlLWZsaW5rLmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxm
dGVzdEBsaXZlX2dlbV9jb250ZXh0czoKICAgIC0gZmktYnN3LW4zMDUwOiAgICAgICBbUEFTU11b
NTFdIC0+IFtJTkNPTVBMRVRFXVs1Ml0gKFtmZG8jIDExMTU0Ml0pCiAgIFs1MV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcyNDUvZmktYnN3LW4zMDUw
L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ2VtX2NvbnRleHRzLmh0bWwKICAgWzUyXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUxMTcvZmktYnN3
LW4zMDUwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ2VtX2NvbnRleHRzLmh0bWwKCiAgCiMjIyMg
UG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGlndEBnZW1fZmxpbmtfYmFzaWNAYmFkLW9wZW46CiAg
ICAtIGZpLWljbC11MzogICAgICAgICAgW0RNRVNHLVdBUk5dWzUzXSAoW2ZkbyMxMDc3MjRdKSAt
PiBbUEFTU11bNTRdCiAgIFs1M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzcyNDUvZmktaWNsLXUzL2lndEBnZW1fZmxpbmtfYmFzaWNAYmFkLW9wZW4u
aHRtbAogICBbNTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNTExNy9maS1pY2wtdTMvaWd0QGdlbV9mbGlua19iYXNpY0BiYWQtb3Blbi5odG1s
CgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHM6CiAgICAtIGZpLWJzdy1u
aWNrOiAgICAgICAgW0lOQ09NUExFVEVdWzU1XSAoW2ZkbyMgMTExNTQyXSkgLT4gW1BBU1NdWzU2
XQogICBbNTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV83MjQ1L2ZpLWJzdy1uaWNrL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ2VtX2NvbnRleHRzLmh0
bWwKICAgWzU2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTUxMTcvZmktYnN3LW5pY2svaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4
dHMuaHRtbAoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfcmVxdWVzdHM6CiAgICAtIHtmaS10
Z2wtdX06ICAgICAgICAgW0lOQ09NUExFVEVdWzU3XSAoW2ZkbyMxMTIwNTddKSAtPiBbUEFTU11b
NThdCiAgIFs1N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzcyNDUvZmktdGdsLXUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9yZXF1ZXN0cy5odG1sCiAg
IFs1OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE1MTE3L2ZpLXRnbC11L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfcmVxdWVzdHMuaHRtbAoKICAq
IGlndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3Q6CiAgICAtIGZpLWtibC03NTAwdTogICAg
ICAgW0ZBSUxdWzU5XSAoW2ZkbyMxMTEwNDVdIC8gW2ZkbyMxMTEwOTZdKSAtPiBbUEFTU11bNjBd
CiAgIFs1OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzcyNDUvZmkta2JsLTc1MDB1L2lndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3QuaHRtbAog
ICBbNjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNTExNy9maS1rYmwtNzUwMHUvaWd0QGttc19jaGFtZWxpdW1AaGRtaS1ocGQtZmFzdC5odG1s
CgogICogaWd0QGttc19mbGlwQGJhc2ljLWZsaXAtdnMtZHBtczoKICAgIC0gZmktc2tsLTY3NzBo
cTogICAgICBbU0tJUF1bNjFdIChbZmRvIzEwOTI3MV0pIC0+IFtQQVNTXVs2Ml0gKzI2IHNpbWls
YXIgaXNzdWVzCiAgIFs2MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzcyNDUvZmktc2tsLTY3NzBocS9pZ3RAa21zX2ZsaXBAYmFzaWMtZmxpcC12cy1k
cG1zLmh0bWwKICAgWzYyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTUxMTcvZmktc2tsLTY3NzBocS9pZ3RAa21zX2ZsaXBAYmFzaWMtZmxpcC12
cy1kcG1zLmh0bWwKCiAgCiAge25hbWV9OiBUaGlzIGVsZW1lbnQgaXMgc3VwcHJlc3NlZC4gVGhp
cyBtZWFucyBpdCBpcyBpZ25vcmVkIHdoZW4gY29tcHV0aW5nCiAgICAgICAgICB0aGUgc3RhdHVz
IG9mIHRoZSBkaWZmZXJlbmNlIChTVUNDRVNTLCBXQVJOSU5HLCBvciBGQUlMVVJFKS4KCiAgW2Zk
byMgMTExNTQyXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
IDExMTU0MgogIFtmZG8jMTAyNTA1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MTAyNTA1CiAgW2ZkbyMxMDMxNjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxNjcKICBbZmRvIzEwNTYwMl06IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNTYwMgogIFtmZG8jMTA2MTA3XTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA2MTA3CiAgW2Zk
byMxMDYzNTBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MDYzNTAKICBbZmRvIzEwNzcyNF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTEwNzcyNAogIFtmZG8jMTA5MjcxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5MjcxCiAgW2ZkbyMxMDkyODVdOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyODUKICBbZmRvIzExMDU2Nl06IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDU2NgogIFtmZG8j
MTExMDQ1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEx
MDQ1CiAgW2ZkbyMxMTEwNDldOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMTEwNDkKICBbZmRvIzExMTA5Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTExMTA5NgogIFtmZG8jMTEyMDU3XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMDU3CgoKUGFydGljaXBhdGluZyBob3N0
cyAoNTAgLT4gNDEpCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBNaXNzaW5nICAg
ICg5KTogZmktaHN3LTQyMDB1IGZpLWJ5dC1zcXVhd2tzIGZpLWljbC11MiBmaS1id3ItMjE2MCBm
aS1hcGwtZ3VjIGZpLWJzdy1jeWFuIGZpLWN0Zy1wODYwMCBmaS1nZGctNTUxIGZpLWJ5dC1jbGFw
cGVyIAoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoKICAqIENJOiBDSS0yMDE5MDUyOSAt
PiBOb25lCiAgKiBMaW51eDogQ0lfRFJNXzcyNDUgLT4gUGF0Y2h3b3JrXzE1MTE3CgogIENJLTIw
MTkwNTI5OiAyMDE5MDUyOQogIENJX0RSTV83MjQ1OiAyYjEwMzczMWE2Zjc0ZTY4MTU5OTgyMzk5
N2NkODE0YjNkODc5ZThhIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xp
bnV4CiAgSUdUXzUyNTg6IGM4YTg4YjYxNGFjMDU3YjAxODA5YTE3YjllODdhMTk3MTk1YjQ0YWQg
QCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMK
ICBQYXRjaHdvcmtfMTUxMTc6IDIwZTBhODdjODAwZTU0M2Y2NTI0N2FhZWM3YzU5N2Y5ZGM2YjBh
YTUgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKCgo9PSBMaW51
eCBjb21taXRzID09CgoyMGUwYTg3YzgwMGUgZHJtL2k5MTUvZXhlY2xpc3RzOiBWZXJpZnkgY29u
dGV4dCByZWdpc3RlciBzdGF0ZSBiZWZvcmUgZXhlY3V0aW9uCgo9PSBMb2dzID09CgpGb3IgbW9y
ZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTUxMTcvaW5kZXguaHRtbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
