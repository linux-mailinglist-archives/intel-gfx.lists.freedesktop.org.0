Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2966110C143
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 02:07:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D62896E369;
	Thu, 28 Nov 2019 01:07:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4928D6E123;
 Thu, 28 Nov 2019 01:07:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 401C9A0BCB;
 Thu, 28 Nov 2019 01:07:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 28 Nov 2019 01:07:20 -0000
Message-ID: <157490324023.21450.17666827319263779130@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191127223252.3777141-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191127223252.3777141-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5BCI=2C1/3=5D_drm/i915/selftests=3A_Count_the?=
 =?utf-8?q?_number_of_engines_used?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
M10gZHJtL2k5MTUvc2VsZnRlc3RzOiBDb3VudCB0aGUgbnVtYmVyIG9mIGVuZ2luZXMgdXNlZApV
UkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNzAxMzEvClN0
YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBD
SV9EUk1fNzQzNCAtPiBQYXRjaHdvcmtfMTU0NzgKPT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PQoKU3VtbWFyeQotLS0tLS0tCgogICoqRkFJTFVSRSoq
CgogIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xNTQ3OCBh
YnNvbHV0ZWx5IG5lZWQgdG8gYmUKICB2ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhp
bmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5n
ZXMKICBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNTQ3OCwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1
ZyB0ZWFtIHRvIGFsbG93IHRoZW0KICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUs
IHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4KCiAgRXh0ZXJuYWwgVVJM
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ3
OC9pbmRleC5odG1sCgpQb3NzaWJsZSBuZXcgaXNzdWVzCi0tLS0tLS0tLS0tLS0tLS0tLS0KCiAg
SGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNl
ZCBpbiBQYXRjaHdvcmtfMTU0Nzg6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIFBvc3NpYmxl
IHJlZ3Jlc3Npb25zICMjIyMKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0czoK
ICAgIC0gZmktYnh0LWRzaTogICAgICAgICBbUEFTU11bMV0gLT4gW0RNRVNHLVdBUk5dWzJdCiAg
IFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQz
NC9maS1ieHQtZHNpL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3RzLmh0bWwKICAgWzJd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ3
OC9maS1ieHQtZHNpL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3RzLmh0bWwKCiAgKiBp
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9jb250ZXh0czoKICAgIC0gZmktYnl0LWoxOTAwOiAg
ICAgICBbUEFTU11bM10gLT4gW0RNRVNHLVdBUk5dWzRdCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQzNC9maS1ieXQtajE5MDAvaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMuaHRtbAogICBbNF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NDc4L2ZpLWJ5dC1qMTkwMC9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9jb250ZXh0cy5odG1sCiAgICAtIGZpLWl2Yi0zNzcw
OiAgICAgICAgW1BBU1NdWzVdIC0+IFtETUVTRy1XQVJOXVs2XQogICBbNV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MzQvZmktaXZiLTM3NzAvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMuaHRtbAogICBbNl06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NDc4L2ZpLWl2Yi0zNzcw
L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ2VtX2NvbnRleHRzLmh0bWwKICAgIC0gZmktaHN3LTQ3
NzA6ICAgICAgICBbUEFTU11bN10gLT4gW0RNRVNHLVdBUk5dWzhdCiAgIFs3XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQzNC9maS1oc3ctNDc3MC9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9jb250ZXh0cy5odG1sCiAgIFs4XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU0NzgvZmktaHN3LTQ3
NzAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMuaHRtbAogICAgLSBmaS1oc3ct
cGVwcHk6ICAgICAgIFtQQVNTXVs5XSAtPiBbRE1FU0ctV0FSTl1bMTBdCiAgIFs5XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQzNC9maS1oc3ctcGVw
cHkvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMuaHRtbAogICBbMTBdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ3OC9maS1o
c3ctcGVwcHkvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMuaHRtbAogICAgLSBm
aS1oc3ctNDc3MHI6ICAgICAgIFtQQVNTXVsxMV0gLT4gW0RNRVNHLVdBUk5dWzEyXQogICBbMTFd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDM0L2Zp
LWhzdy00Nzcwci9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9jb250ZXh0cy5odG1sCiAgIFsx
Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1
NDc4L2ZpLWhzdy00Nzcwci9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9jb250ZXh0cy5odG1s
CgogIApLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZv
dW5kIGluIFBhdGNod29ya18xNTQ3OCB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6CgojIyMg
SUdUIGNoYW5nZXMgIyMjCgojIyMjIElzc3VlcyBoaXQgIyMjIwoKICAqIGlndEBrbXNfY2hhbWVs
aXVtQGhkbWktY3JjLWZhc3Q6CiAgICAtIGZpLWljbC11MjogICAgICAgICAgW1BBU1NdWzEzXSAt
PiBbRkFJTF1bMTRdIChbZmRvIzEwOTYzNSBdKQogICBbMTNdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDM0L2ZpLWljbC11Mi9pZ3RAa21zX2NoYW1l
bGl1bUBoZG1pLWNyYy1mYXN0Lmh0bWwKICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU0NzgvZmktaWNsLXUyL2lndEBrbXNfY2hhbWVs
aXVtQGhkbWktY3JjLWZhc3QuaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICog
aWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLW5vLWRpc3BsYXk6CiAgICAtIGZpLXNrbC1sbWVt
OiAgICAgICAgW0RNRVNHLVdBUk5dWzE1XSAoW2ZkbyMxMTIyNjFdKSAtPiBbUEFTU11bMTZdCiAg
IFsxNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0
MzQvZmktc2tsLWxtZW0vaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLW5vLWRpc3BsYXkuaHRt
bAogICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNTQ3OC9maS1za2wtbG1lbS9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtbm8tZGlz
cGxheS5odG1sCgogICogaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLXdpdGgtZmF1bHQtaW5q
ZWN0aW9uOgogICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtJTkNPTVBMRVRFXVsxN10gKFtmZG8j
MTA3NzEzXSkgLT4gW1BBU1NdWzE4XQogICBbMTddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDM0L2ZpLWljbC11My9pZ3RAaTkxNV9tb2R1bGVfbG9h
ZEByZWxvYWQtd2l0aC1mYXVsdC1pbmplY3Rpb24uaHRtbAogICBbMThdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ3OC9maS1pY2wtdTMvaWd0
QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLXdpdGgtZmF1bHQtaW5qZWN0aW9uLmh0bWwKCiAgKiBp
Z3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZDoKICAgIC0gZmktc2tsLTY3NzBocTogICAgICBb
RE1FU0ctV0FSTl1bMTldIChbZmRvIzExMjI2MV0pIC0+IFtQQVNTXVsyMF0KICAgWzE5XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQzNC9maS1za2wt
Njc3MGhxL2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwKICAgWzIwXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU0NzgvZmktc2ts
LTY3NzBocS9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sCgogIAojIyMjIFdhcm5p
bmdzICMjIyMKCiAgKiBpZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zNC1kZXZpY2VzOgogICAg
LSBmaS1rYmwteDEyNzU6ICAgICAgIFtETUVTRy1XQVJOXVsyMV0gKFtmZG8jMTAzNTU4XSAvIFtm
ZG8jMTA1NjAyXSAvIFtmZG8jMTA3MTM5XSkgLT4gW0RNRVNHLVdBUk5dWzIyXSAoW2ZkbyMxMDM1
NThdIC8gW2ZkbyMxMDU2MDJdIC8gW2ZkbyMxMDU3NjNdIC8gW2ZkbyMxMDcxMzldKQogICBbMjFd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDM0L2Zp
LWtibC14MTI3NS9pZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zNC1kZXZpY2VzLmh0bWwKICAg
WzIyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTU0NzgvZmkta2JsLXgxMjc1L2lndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXM0LWRldmljZXMu
aHRtbAoKICAqIGlndEBpOTE1X3BtX3JwbUBiYXNpYy1wY2ktZDMtc3RhdGU6CiAgICAtIGZpLWti
bC14MTI3NTogICAgICAgW0RNRVNHLVdBUk5dWzIzXSAoW2ZkbyMxMDM1NThdIC8gW2ZkbyMxMDU2
MDJdIC8gW2ZkbyMxMDU3NjNdKSAtPiBbU0tJUF1bMjRdIChbZmRvIzEwOTI3MV0pCiAgIFsyM106
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MzQvZmkt
a2JsLXgxMjc1L2lndEBpOTE1X3BtX3JwbUBiYXNpYy1wY2ktZDMtc3RhdGUuaHRtbAogICBbMjRd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ3
OC9maS1rYmwteDEyNzUvaWd0QGk5MTVfcG1fcnBtQGJhc2ljLXBjaS1kMy1zdGF0ZS5odG1sCgog
ICogaWd0QGttc19waXBlX2NyY19iYXNpY0ByZWFkLWNyYy1waXBlLWE6CiAgICAtIGZpLWtibC14
MTI3NTogICAgICAgW0RNRVNHLVdBUk5dWzI1XSAoW2ZkbyMxMDM1NThdIC8gW2ZkbyMxMDU2MDJd
IC8gW2ZkbyMxMDU3NjNdKSAtPiBbRE1FU0ctV0FSTl1bMjZdIChbZmRvIzEwMzU1OF0gLyBbZmRv
IzEwNTYwMl0pICsxIHNpbWlsYXIgaXNzdWUKICAgWzI1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQzNC9maS1rYmwteDEyNzUvaWd0QGttc19waXBl
X2NyY19iYXNpY0ByZWFkLWNyYy1waXBlLWEuaHRtbAogICBbMjZdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQ3OC9maS1rYmwteDEyNzUvaWd0
QGttc19waXBlX2NyY19iYXNpY0ByZWFkLWNyYy1waXBlLWEuaHRtbAoKICAqIGlndEBrbXNfcGlw
ZV9jcmNfYmFzaWNAcmVhZC1jcmMtcGlwZS1iOgogICAgLSBmaS1rYmwteDEyNzU6ICAgICAgIFtE
TUVTRy1XQVJOXVsyN10gKFtmZG8jMTAzNTU4XSAvIFtmZG8jMTA1NjAyXSkgLT4gW0RNRVNHLVdB
Uk5dWzI4XSAoW2ZkbyMxMDM1NThdIC8gW2ZkbyMxMDU2MDJdIC8gW2ZkbyMxMDU3NjNdKSArOCBz
aW1pbGFyIGlzc3VlcwogICBbMjddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83NDM0L2ZpLWtibC14MTI3NS9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQHJl
YWQtY3JjLXBpcGUtYi5odG1sCiAgIFsyOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NDc4L2ZpLWtibC14MTI3NS9pZ3RAa21zX3BpcGVfY3Jj
X2Jhc2ljQHJlYWQtY3JjLXBpcGUtYi5odG1sCgogIAogIHtuYW1lfTogVGhpcyBlbGVtZW50IGlz
IHN1cHByZXNzZWQuIFRoaXMgbWVhbnMgaXQgaXMgaWdub3JlZCB3aGVuIGNvbXB1dGluZwogICAg
ICAgICAgdGhlIHN0YXR1cyBvZiB0aGUgZGlmZmVyZW5jZSAoU1VDQ0VTUywgV0FSTklORywgb3Ig
RkFJTFVSRSkuCgogIFtmZG8jMTAzNTU4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTAzNTU4CiAgW2ZkbyMxMDU2MDJdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDU2MDIKICBbZmRvIzEwNTc2M106IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNTc2MwogIFtmZG8jMTA3MTM5
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3MTM5CiAg
W2ZkbyMxMDc3MTNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDc3MTMKICBbZmRvIzEwOTI3MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTEwOTI3MQogIFtmZG8jMTA5NjM1IF06IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTYzNSAKICBbZmRvIzEwOTk2NF06IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTk2NAogIFtmZG8jMTEyMjYx
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMjYxCiAg
W2ZkbyMxMTIyOThdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMTIyOTgKCgpQYXJ0aWNpcGF0aW5nIGhvc3RzICg1MiAtPiA0MikKLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCgogIE1pc3NpbmcgICAgKDEwKTogZmktaWxrLW01NDAgZmktaHN3LTQy
MDB1IGZpLWJ5dC1zcXVhd2tzIGZpLWJzdy1jeWFuIGZpLXNuYi0yNTIwbSBmaS1jdGctcDg2MDAg
ZmktYnl0LW4yODIwIGZpLWJ5dC1jbGFwcGVyIGZpLWJkdy1zYW11cyBmaS1zbmItMjYwMCAKCgpC
dWlsZCBjaGFuZ2VzCi0tLS0tLS0tLS0tLS0KCiAgKiBDSTogQ0ktMjAxOTA1MjkgLT4gTm9uZQog
ICogTGludXg6IENJX0RSTV83NDM0IC0+IFBhdGNod29ya18xNTQ3OAoKICBDSS0yMDE5MDUyOTog
MjAxOTA1MjkKICBDSV9EUk1fNzQzNDogMWJiYzRkMzBjYTlmZDk1MGNiY2I3M2YzMjRlMDBkMGJj
MzU3NzU4ZSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElH
VF81MzEyOiA4NTFjNzU1MzEwNDNjZDkwNmUwMjg2MzJiNjRiMDJiOTMxMmU5OTQ1IEAgZ2l0Oi8v
YW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9yZy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3
b3JrXzE1NDc4OiA0ODMyOWNlOGI5MWVmNTZlMzYzNDYzZTY3NWUxYjcxYjRmMTdhMDRmIEAgZ2l0
Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CgoKPT0gTGludXggY29tbWl0
cyA9PQoKNDgzMjljZThiOTFlIGRybS9pOTE1L2dlbjc6IFJlLWVuYWJsZSBmdWxsLXBwZ3R0IGZv
ciBpdmIsIGJ5dCwgaHN3CjllZTgzYTFkNzc3NCBkcm0vaTkxNS9zZWxmdGVzdHM6IEZsdXNoIGZw
dXQgYWZ0ZXIgcnVubmluZyBzZWxmdGVzdHMKMjk0NzQ4Y2Q0MmZiIGRybS9pOTE1L3NlbGZ0ZXN0
czogQ291bnQgdGhlIG51bWJlciBvZiBlbmdpbmVzIHVzZWQKCj09IExvZ3MgPT0KCkZvciBtb3Jl
IGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNTQ3OC9pbmRleC5odG1sCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
