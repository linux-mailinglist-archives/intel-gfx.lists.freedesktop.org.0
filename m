Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A3FB8006
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 19:31:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08E896F7DB;
	Thu, 19 Sep 2019 17:31:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1ABB06F7DB;
 Thu, 19 Sep 2019 17:31:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1331DA0119;
 Thu, 19 Sep 2019 17:31:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 19 Sep 2019 17:31:21 -0000
Message-ID: <20190919173121.23915.42059@emeril.freedesktop.org>
References: <cover.1568901239.git.jani.nikula@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <cover.1568901239.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_modeset_probe/remove_path_refactoring?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IG1vZGVzZXQgcHJvYmUvcmVt
b3ZlIHBhdGggcmVmYWN0b3JpbmcKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3Rv
cC5vcmcvc2VyaWVzLzY2OTMzLwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkNJIEJ1
ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzY5MjIgLT4gUGF0Y2h3b3JrXzE0NDU3Cj09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KClN1bW1hcnkK
LS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcg
d2l0aCBQYXRjaHdvcmtfMTQ0NTcgYWJzb2x1dGVseSBuZWVkIHRvIGJlCiAgdmVyaWZpZWQgbWFu
dWFsbHkuCiAgCiAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGlu
ZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzCiAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQ0NTcs
IHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtCiAgdG8gZG9jdW1lbnQg
dGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMg
aW4gQ0kuCgogIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQ0NTcvCgpQb3NzaWJsZSBuZXcgaXNzdWVzCi0tLS0tLS0tLS0t
LS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJl
ZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQ0NTc6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgoj
IyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMKCiAgKiBpZ3RAaTkxNV9wbV9ycG1AbW9kdWxl
LXJlbG9hZDoKICAgIC0gZmktaWNsLXUzOiAgICAgICAgICBbUEFTU11bMV0gLT4gW1NLSVBdWzJd
CiAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjkyMi9maS1pY2wtdTMvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbAogICBbMl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDU3
L2ZpLWljbC11My9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sCiAgICAtIGZpLWNt
bC11MjogICAgICAgICAgW1BBU1NdWzNdIC0+IFtTS0lQXVs0XQogICBbM106IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5MjIvZmktY21sLXUyL2lndEBp
OTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwKICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQ1Ny9maS1jbWwtdTIvaWd0QGk5MTVf
cG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbAoKICAqIGlndEBpOTE1X3BtX3Jwc0BiYXNpYy1hcGk6
CiAgICAtIGZpLWJzdy1rZWZrYTogICAgICAgW1BBU1NdWzVdIC0+IFtJTkNPTVBMRVRFXVs2XQog
ICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5
MjIvZmktYnN3LWtlZmthL2lndEBpOTE1X3BtX3Jwc0BiYXNpYy1hcGkuaHRtbAogICBbNl06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDU3L2Zp
LWJzdy1rZWZrYS9pZ3RAaTkxNV9wbV9ycHNAYmFzaWMtYXBpLmh0bWwKICAgIC0gZmktYnN3LW4z
MDUwOiAgICAgICBbUEFTU11bN10gLT4gW0lOQ09NUExFVEVdWzhdCiAgIFs3XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkyMi9maS1ic3ctbjMwNTAv
aWd0QGk5MTVfcG1fcnBzQGJhc2ljLWFwaS5odG1sCiAgIFs4XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0NTcvZmktYnN3LW4zMDUwL2lndEBp
OTE1X3BtX3Jwc0BiYXNpYy1hcGkuaHRtbAoKICAqIGlndEBydW5uZXJAYWJvcnRlZDoKICAgIC0g
ZmktYnl0LWoxOTAwOiAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzldCiAgIFs5XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0NTcvZmktYnl0LWox
OTAwL2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAtIGZpLWJzdy1uMzA1MDogICAgICAgTk9U
UlVOIC0+IFtGQUlMXVsxMF0KICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0NTcvZmktYnN3LW4zMDUwL2lndEBydW5uZXJAYWJvcnRl
ZC5odG1sCiAgICAtIGZpLWJzdy1rZWZrYTogICAgICAgTk9UUlVOIC0+IFtGQUlMXVsxMV0KICAg
WzExXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQ0NTcvZmktYnN3LWtlZmthL2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAtIGZpLWJ5dC1u
MjgyMDogICAgICAgTk9UUlVOIC0+IFtGQUlMXVsxMl0KICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0NTcvZmktYnl0LW4yODIwL2ln
dEBydW5uZXJAYWJvcnRlZC5odG1sCgogIAojIyMjIFdhcm5pbmdzICMjIyMKCiAgKiBpZ3RAaTkx
NV9wbV9ycG1AbW9kdWxlLXJlbG9hZDoKICAgIC0gZmktaWNsLXUyOiAgICAgICAgICBbRE1FU0ct
V0FSTl1bMTNdIChbZmRvIzExMDU5NV0pIC0+IFtTS0lQXVsxNF0KICAgWzEzXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkyMi9maS1pY2wtdTIvaWd0
QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbAogICBbMTRdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQ1Ny9maS1pY2wtdTIvaWd0QGk5
MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbAoKICAKIyMjIyBTdXBwcmVzc2VkICMjIyMKCiAg
VGhlIGZvbGxvd2luZyByZXN1bHRzIGNvbWUgZnJvbSB1bnRydXN0ZWQgbWFjaGluZXMsIHRlc3Rz
LCBvciBzdGF0dXNlcy4KICBUaGV5IGRvIG5vdCBhZmZlY3QgdGhlIG92ZXJhbGwgcmVzdWx0LgoK
ICAqIGlndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkOgogICAgLSB7ZmktaWNsLWRzaX06ICAg
ICAgIE5PVFJVTiAtPiBbU0tJUF1bMTVdCiAgIFsxNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDU3L2ZpLWljbC1kc2kvaWd0QGk5MTVfcG1f
cnBtQG1vZHVsZS1yZWxvYWQuaHRtbAogICAgLSB7ZmktY21sLXN9OiAgICAgICAgIFtQQVNTXVsx
Nl0gLT4gW1NLSVBdWzE3XQogICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82OTIyL2ZpLWNtbC1zL2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVs
b2FkLmh0bWwKICAgWzE3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQ0NTcvZmktY21sLXMvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQu
aHRtbAogICAgLSB7ZmktY21sLWh9OiAgICAgICAgIFtQQVNTXVsxOF0gLT4gW1NLSVBdWzE5XQog
ICBbMThdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
OTIyL2ZpLWNtbC1oL2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwKICAgWzE5XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0NTcv
ZmktY21sLWgvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbAoKICAKS25vd24gaXNz
dWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdv
cmtfMTQ0NTcgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMj
IwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYzoK
ICAgIC0gZmktaWNsLXUyOiAgICAgICAgICBbUEFTU11bMjBdIC0+IFtGQUlMXVsyMV0gKFtmZG8j
MTExNjk5XSkKICAgWzIwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNjkyMi9maS1pY2wtdTIvaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMuaHRtbAog
ICBbMjFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNDQ1Ny9maS1pY2wtdTIvaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMuaHRtbAoKICAqIGln
dEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXMzOgogICAgLSBmaS1ibGItZTY4NTA6ICAgICAgIFtQ
QVNTXVsyMl0gLT4gW0lOQ09NUExFVEVdWzIzXSAoW2ZkbyMxMDc3MThdKQogICBbMjJdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTIyL2ZpLWJsYi1l
Njg1MC9pZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zMy5odG1sCiAgIFsyM106IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDU3L2ZpLWJsYi1l
Njg1MC9pZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zMy5odG1sCgogICogaWd0QGdlbV9mbGlu
a19iYXNpY0BiYWQtZmxpbms6CiAgICAtIGZpLWljbC11MzogICAgICAgICAgW1BBU1NdWzI0XSAt
PiBbRE1FU0ctV0FSTl1bMjVdIChbZmRvIzEwNzcyNF0pICsyIHNpbWlsYXIgaXNzdWVzCiAgIFsy
NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5MjIv
ZmktaWNsLXUzL2lndEBnZW1fZmxpbmtfYmFzaWNAYmFkLWZsaW5rLmh0bWwKICAgWzI1XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0NTcvZmkt
aWNsLXUzL2lndEBnZW1fZmxpbmtfYmFzaWNAYmFkLWZsaW5rLmh0bWwKCiAgKiBpZ3RAaTkxNV9w
bV9ycG1AbW9kdWxlLXJlbG9hZDoKICAgIC0gZmktY2ZsLTg3MDBrOiAgICAgICBbUEFTU11bMjZd
IC0+IFtTS0lQXVsyN10gKFtmZG8jMTA5MjcxXSkKICAgWzI2XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkyMi9maS1jZmwtODcwMGsvaWd0QGk5MTVf
cG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbAogICBbMjddOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQ1Ny9maS1jZmwtODcwMGsvaWd0QGk5MTVf
cG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbAogICAgLSBmaS1rYmwteDEyNzU6ICAgICAgIFtQQVNT
XVsyOF0gLT4gW1NLSVBdWzI5XSAoW2ZkbyMxMDkyNzFdKQogICBbMjhdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTIyL2ZpLWtibC14MTI3NS9pZ3RA
aTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sCiAgIFsyOV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDU3L2ZpLWtibC14MTI3NS9pZ3RA
aTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sCiAgICAtIGZpLXNrbC1ndWM6ICAgICAgICAg
W1BBU1NdWzMwXSAtPiBbU0tJUF1bMzFdIChbZmRvIzEwOTI3MV0pCiAgIFszMF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5MjIvZmktc2tsLWd1Yy9p
Z3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sCiAgIFszMV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDU3L2ZpLXNrbC1ndWMvaWd0
QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbAogICAgLSBmaS1jZmwtZ3VjOiAgICAgICAg
IFtQQVNTXVszMl0gLT4gW1NLSVBdWzMzXSAoW2ZkbyMxMDkyNzFdKQogICBbMzJdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTIyL2ZpLWNmbC1ndWMv
aWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbAogICBbMzNdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQ1Ny9maS1jZmwtZ3VjL2ln
dEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwKICAgIC0gZmktc2tsLWlvbW11OiAgICAg
ICBbUEFTU11bMzRdIC0+IFtTS0lQXVszNV0gKFtmZG8jMTA5MjcxXSkKICAgWzM0XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkyMi9maS1za2wtaW9t
bXUvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbAogICBbMzVdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQ1Ny9maS1za2wtaW9t
bXUvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbAogICAgLSBmaS13aGwtdTogICAg
ICAgICAgIFtQQVNTXVszNl0gLT4gW1NLSVBdWzM3XSAoW2ZkbyMxMDkyNzFdKQogICBbMzZdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTIyL2ZpLXdo
bC11L2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwKICAgWzM3XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0NTcvZmktd2hsLXUv
aWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbAogICAgLSBmaS1za2wtNjI2MHU6ICAg
ICAgIFtQQVNTXVszOF0gLT4gW1NLSVBdWzM5XSAoW2ZkbyMxMDkyNzFdKQogICBbMzhdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTIyL2ZpLXNrbC02
MjYwdS9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sCiAgIFszOV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDU3L2ZpLXNrbC02
MjYwdS9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sCiAgICAtIGZpLXNrbC02Nzcw
aHE6ICAgICAgW1BBU1NdWzQwXSAtPiBbU0tJUF1bNDFdIChbZmRvIzEwOTI3MV0pCiAgIFs0MF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5MjIvZmkt
c2tsLTY3NzBocS9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sCiAgIFs0MV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDU3L2Zp
LXNrbC02NzcwaHEvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbAogICAgLSBmaS1i
ZHctNTU1N3U6ICAgICAgIFtQQVNTXVs0Ml0gLT4gW1NLSVBdWzQzXSAoW2ZkbyMxMDkyNzFdKQog
ICBbNDJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
OTIyL2ZpLWJkdy01NTU3dS9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sCiAgIFs0
M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
NDU3L2ZpLWJkdy01NTU3dS9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sCiAgICAt
IGZpLWtibC1yOiAgICAgICAgICAgW1BBU1NdWzQ0XSAtPiBbU0tJUF1bNDVdIChbZmRvIzEwOTI3
MV0pCiAgIFs0NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzY5MjIvZmkta2JsLXIvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbAogICBb
NDVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NDQ1Ny9maS1rYmwtci9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sCiAgICAtIGZp
LWFwbC1ndWM6ICAgICAgICAgW1BBU1NdWzQ2XSAtPiBbU0tJUF1bNDddIChbZmRvIzEwOTI3MV0p
CiAgIFs0Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzY5MjIvZmktYXBsLWd1Yy9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sCiAgIFs0
N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
NDU3L2ZpLWFwbC1ndWMvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbAogICAgLSBm
aS1oc3ctcGVwcHk6ICAgICAgIFtQQVNTXVs0OF0gLT4gW1NLSVBdWzQ5XSAoW2ZkbyMxMDkyNzFd
KQogICBbNDhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82OTIyL2ZpLWhzdy1wZXBweS9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sCiAg
IFs0OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE0NDU3L2ZpLWhzdy1wZXBweS9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sCiAg
ICAtIGZpLWNmbC04MTA5dTogICAgICAgW1BBU1NdWzUwXSAtPiBbU0tJUF1bNTFdIChbZmRvIzEw
OTI3MV0pCiAgIFs1MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzY5MjIvZmktY2ZsLTgxMDl1L2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0
bWwKICAgWzUxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQ0NTcvZmktY2ZsLTgxMDl1L2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0
bWwKICAgIC0gZmktc2tsLTY2MDB1OiAgICAgICBbUEFTU11bNTJdIC0+IFtTS0lQXVs1M10gKFtm
ZG8jMTA5MjcxXSkKICAgWzUyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjkyMi9maS1za2wtNjYwMHUvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxv
YWQuaHRtbAogICBbNTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNDQ1Ny9maS1za2wtNjYwMHUvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxv
YWQuaHRtbAogICAgLSBmaS1za2wtNjcwMGsyOiAgICAgIFtQQVNTXVs1NF0gLT4gW1NLSVBdWzU1
XSAoW2ZkbyMxMDkyNzFdKQogICBbNTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82OTIyL2ZpLXNrbC02NzAwazIvaWd0QGk5MTVfcG1fcnBtQG1vZHVs
ZS1yZWxvYWQuaHRtbAogICBbNTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNDQ1Ny9maS1za2wtNjcwMGsyL2lndEBpOTE1X3BtX3JwbUBtb2R1
bGUtcmVsb2FkLmh0bWwKICAgIC0gZmktYnh0LWRzaTogICAgICAgICBbUEFTU11bNTZdIC0+IFtT
S0lQXVs1N10gKFtmZG8jMTA5MjcxXSkKICAgWzU2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkyMi9maS1ieHQtZHNpL2lndEBpOTE1X3BtX3JwbUBt
b2R1bGUtcmVsb2FkLmh0bWwKICAgWzU3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0NTcvZmktYnh0LWRzaS9pZ3RAaTkxNV9wbV9ycG1AbW9k
dWxlLXJlbG9hZC5odG1sCiAgICAtIGZpLWtibC1ndWM6ICAgICAgICAgW1BBU1NdWzU4XSAtPiBb
U0tJUF1bNTldIChbZmRvIzEwOTI3MV0pCiAgIFs1OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5MjIvZmkta2JsLWd1Yy9pZ3RAaTkxNV9wbV9ycG1A
bW9kdWxlLXJlbG9hZC5odG1sCiAgIFs1OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDU3L2ZpLWtibC1ndWMvaWd0QGk5MTVfcG1fcnBtQG1v
ZHVsZS1yZWxvYWQuaHRtbAogICAgLSBmaS1rYmwtNzUwMHU6ICAgICAgIFtQQVNTXVs2MF0gLT4g
W1NLSVBdWzYxXSAoW2ZkbyMxMDkyNzFdKQogICBbNjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTIyL2ZpLWtibC03NTAwdS9pZ3RAaTkxNV9wbV9y
cG1AbW9kdWxlLXJlbG9hZC5odG1sCiAgIFs2MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDU3L2ZpLWtibC03NTAwdS9pZ3RAaTkxNV9wbV9y
cG1AbW9kdWxlLXJlbG9hZC5odG1sCiAgICAtIGZpLWhzdy00NzcwOiAgICAgICAgW1BBU1NdWzYy
XSAtPiBbU0tJUF1bNjNdIChbZmRvIzEwOTI3MV0pCiAgIFs2Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5MjIvZmktaHN3LTQ3NzAvaWd0QGk5MTVf
cG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbAogICBbNjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQ1Ny9maS1oc3ctNDc3MC9pZ3RAaTkxNV9w
bV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sCiAgICAtIGZpLWtibC04ODA5ZzogICAgICAgW1BBU1Nd
WzY0XSAtPiBbU0tJUF1bNjVdIChbZmRvIzEwOTI3MV0pCiAgIFs2NF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5MjIvZmkta2JsLTg4MDlnL2lndEBp
OTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwKICAgWzY1XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0NTcvZmkta2JsLTg4MDlnL2lndEBp
OTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwKICAgIC0gZmktZ2xrLWRzaTogICAgICAgICBb
UEFTU11bNjZdIC0+IFtTS0lQXVs2N10gKFtmZG8jMTA5MjcxXSkKICAgWzY2XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkyMi9maS1nbGstZHNpL2ln
dEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwKICAgWzY3XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0NTcvZmktZ2xrLWRzaS9pZ3RA
aTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sCgogICogaWd0QGk5MTVfcG1fcnBzQGJhc2lj
LWFwaToKICAgIC0gZmktYnl0LW4yODIwOiAgICAgICBbUEFTU11bNjhdIC0+IFtJTkNPTVBMRVRF
XVs2OV0gKFtmZG8jMTAyNjU3XSkKICAgWzY4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkyMi9maS1ieXQtbjI4MjAvaWd0QGk5MTVfcG1fcnBzQGJh
c2ljLWFwaS5odG1sCiAgIFs2OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE0NDU3L2ZpLWJ5dC1uMjgyMC9pZ3RAaTkxNV9wbV9ycHNAYmFzaWMt
YXBpLmh0bWwKCiAgCiMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGlndEBnZW1fY3R4X2Ny
ZWF0ZUBiYXNpYy1maWxlczoKICAgIC0ge2ZpLWljbC1kc2l9OiAgICAgICBbSU5DT01QTEVURV1b
NzBdIChbZmRvIzEwNzcxM10gLyBbZmRvIzEwOTEwMF0pIC0+IFtQQVNTXVs3MV0KICAgWzcwXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkyMi9maS1p
Y2wtZHNpL2lndEBnZW1fY3R4X2NyZWF0ZUBiYXNpYy1maWxlcy5odG1sCiAgIFs3MV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDU3L2ZpLWlj
bC1kc2kvaWd0QGdlbV9jdHhfY3JlYXRlQGJhc2ljLWZpbGVzLmh0bWwKCiAgKiBpZ3RAZ2VtX3Jl
bmRlcl90aWxlZF9ibGl0c0BiYXNpYzoKICAgIC0ge2ZpLXRnbC11Mn06ICAgICAgICBbRkFJTF1b
NzJdIChbZmRvIzExMTczOV0pIC0+IFtQQVNTXVs3M10KICAgWzcyXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkyMi9maS10Z2wtdTIvaWd0QGdlbV9y
ZW5kZXJfdGlsZWRfYmxpdHNAYmFzaWMuaHRtbAogICBbNzNdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQ1Ny9maS10Z2wtdTIvaWd0QGdlbV9y
ZW5kZXJfdGlsZWRfYmxpdHNAYmFzaWMuaHRtbAogICAgLSB7ZmktdGdsLXV9OiAgICAgICAgIFtG
QUlMXVs3NF0gKFtmZG8jMTExNzM5XSkgLT4gW1BBU1NdWzc1XQogICBbNzRdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTIyL2ZpLXRnbC11L2lndEBn
ZW1fcmVuZGVyX3RpbGVkX2JsaXRzQGJhc2ljLmh0bWwKICAgWzc1XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0NTcvZmktdGdsLXUvaWd0QGdl
bV9yZW5kZXJfdGlsZWRfYmxpdHNAYmFzaWMuaHRtbAoKICAqIGlndEBnZW1fcmluZ2ZpbGxAYmFz
aWMtZGVmYXVsdC1pbnRlcnJ1cHRpYmxlOgogICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtETUVT
Ry1XQVJOXVs3Nl0gKFtmZG8jMTA3NzI0XSkgLT4gW1BBU1NdWzc3XSArMSBzaW1pbGFyIGlzc3Vl
CiAgIFs3Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzY5MjIvZmktaWNsLXUzL2lndEBnZW1fcmluZ2ZpbGxAYmFzaWMtZGVmYXVsdC1pbnRlcnJ1cHRp
YmxlLmh0bWwKICAgWzc3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQ0NTcvZmktaWNsLXUzL2lndEBnZW1fcmluZ2ZpbGxAYmFzaWMtZGVmYXVs
dC1pbnRlcnJ1cHRpYmxlLmh0bWwKCiAgKiBpZ3RAa21zX2NoYW1lbGl1bUBoZG1pLWhwZC1mYXN0
OgogICAgLSBmaS1rYmwtNzUwMHU6ICAgICAgIFtGQUlMXVs3OF0gKFtmZG8jMTExNDA3XSkgLT4g
W1BBU1NdWzc5XQogICBbNzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82OTIyL2ZpLWtibC03NTAwdS9pZ3RAa21zX2NoYW1lbGl1bUBoZG1pLWhwZC1m
YXN0Lmh0bWwKICAgWzc5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQ0NTcvZmkta2JsLTc1MDB1L2lndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBk
LWZhc3QuaHRtbAoKICAKICB7bmFtZX06IFRoaXMgZWxlbWVudCBpcyBzdXBwcmVzc2VkLiBUaGlz
IG1lYW5zIGl0IGlzIGlnbm9yZWQgd2hlbiBjb21wdXRpbmcKICAgICAgICAgIHRoZSBzdGF0dXMg
b2YgdGhlIGRpZmZlcmVuY2UgKFNVQ0NFU1MsIFdBUk5JTkcsIG9yIEZBSUxVUkUpLgoKICBbZmRv
IzEwMjY1N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEw
MjY1NwogIFtmZG8jMTAzMTY3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTAzMTY3CiAgW2ZkbyMxMDU2MDJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMDU2MDIKICBbZmRvIzEwNzcxM106IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzcxMwogIFtmZG8jMTA3NzE4XTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzE4CiAgW2ZkbyMx
MDc3MjRdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3
MjQKICBbZmRvIzEwOTEwMF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTEwOTEwMAogIFtmZG8jMTA5MjcxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTA5MjcxCiAgW2ZkbyMxMTA1OTVdOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA1OTUKICBbZmRvIzExMTA0NV06IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTA0NQogIFtmZG8jMTEx
NDA3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNDA3
CiAgW2ZkbyMxMTE1NjJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMTE1NjIKICBbZmRvIzExMTU5N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTExMTU5NwogIFtmZG8jMTExNjk5XTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNjk5CiAgW2ZkbyMxMTE3MTRdOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE3MTQKICBbZmRvIzExMTcz
OV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTczOQoK
ClBhcnRpY2lwYXRpbmcgaG9zdHMgKDUyIC0+IDQ3KQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KCiAgQWRkaXRpb25hbCAoMik6IGZpLWJ5dC1qMTkwMCBmaS1za2wtbG1lbSAKICBNaXNz
aW5nICAgICg3KTogZmktaWxrLW01NDAgZmktaHN3LTQyMDB1IGZpLWJ5dC1zcXVhd2tzIGZpLWJz
dy1jeWFuIGZpLWljbC15IGZpLWJ5dC1jbGFwcGVyIGZpLWJkdy1zYW11cyAKCgpCdWlsZCBjaGFu
Z2VzCi0tLS0tLS0tLS0tLS0KCiAgKiBDSTogQ0ktMjAxOTA1MjkgLT4gTm9uZQogICogTGludXg6
IENJX0RSTV82OTIyIC0+IFBhdGNod29ya18xNDQ1NwoKICBDSS0yMDE5MDUyOTogMjAxOTA1MjkK
ICBDSV9EUk1fNjkyMjogN2I3YzY3NmI5NTVkZjM2NDhmYmFkOWQwZmZkMWYxMjNlYzNmZWViNSBA
IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElHVF81MTkzOiA5
MjRlNWM1OWRiYjgyOTM4ZTc0M2VmZDZiMDgxMmVlYjU3NjBiNzBkIEAgZ2l0Oi8vYW5vbmdpdC5m
cmVlZGVza3RvcC5vcmcveG9yZy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzE0NDU3
OiAyZjVlMzI4YzdmMmQ4MzY1MDE5MGM3NjVhYzM4Y2ZmNTNmZmRiOGVjIEAgZ2l0Oi8vYW5vbmdp
dC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CgoKPT0gTGludXggY29tbWl0cyA9PQoKMmY1
ZTMyOGM3ZjJkIGRybS9pOTE1OiBzcGxpdCBpbnRlbF9tb2Rlc2V0X2luaXQoKSB0byBwcmUvcG9z
dCBpcnEgaW5zdGFsbAoxZmEzZjIwM2NiZTcgZHJtL2k5MTU6IHB1c2ggaW50ZWxfb3ZlcmxheV9p
bml0KCkgZG93biB0byBpbnRlbF9tb2Rlc2V0X2luaXQoKQo4YzM2N2YwMThhOWEgZHJtL2k5MTU6
IG1vdmUgZ2VtIGluaXQgdXAgZnJvbSBtb2Rlc2V0IGluaXQKODUwODBjNmFhYzdiIGRybS9pOTE1
OiBzcGxpdCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3Byb2JlKCkgdG8gcHJlL3Bvc3QgaXJxIGluc3Rh
bGwKZjBhNDEyMzlmZTUzIGRybS9pOTE1OiBtb3ZlIGdtYnVzIHNldHVwIGRvd24gdG8gaW50ZWxf
bW9kZXNldF9pbml0KCkKZTBlYjFiNTFmNTU1IGRybS9pOTE1OiBzcGxpdCBpOTE1X2RyaXZlcl9t
b2Rlc2V0X3JlbW92ZSgpIHRvIHByZS9wb3N0IGlycSB1bmluc3RhbGwKZTA0NTliZTE5NjQ4IGRy
bS9pOTE1OiBzcGxpdCBpbnRlbF9tb2Rlc2V0X2RyaXZlcl9yZW1vdmUoKSB0byBwcmUvcG9zdCBp
cnEgdW5pbnN0YWxsCjdhODcxNjBiMWQ5NSBkcm0vaTkxNTogcGFzcyBpOTE1IHRvIGludGVsX21v
ZGVzZXRfaW5pdCgpIGFuZCBpbnRlbF9tb2Rlc2V0X2luaXRfaHcoKQpmMDQ4NjJkYWQ0MzMgZHJt
L2k5MTU6IGFic3RyYWN0IGludGVsX21vZGVfY29uZmlnX2luaXQoKSBmcm9tIGludGVsX21vZGVz
ZXRfaW5pdCgpCjIyNzQ1MjU5M2JiNCBkcm0vaTkxNTogYWJzdHJhY3QgaW50ZWxfcGFuZWxfc2Fu
aXRpemVfc3NjKCkgZnJvbSBpbnRlbF9tb2Rlc2V0X2luaXQoKQoyMzBhYjQyOTZhOTEgZHJtL2k5
MTU6IHBhc3MgaTkxNSB0byBpbnRlbF9tb2Rlc2V0X2RyaXZlcl9yZW1vdmUoKQo1MDE2ZWEzZjAy
MjYgZHJtL2k5MTU6IHBhc3MgaTkxNSB0byBpOTE1X2RyaXZlcl9tb2Rlc2V0X3Byb2JlKCkKMzc0
MDdlZTc3ZTNkIGRybS9pOTE1OiBhZGQgaTkxNV9kcml2ZXJfbW9kZXNldF9yZW1vdmUoKQoKPT0g
TG9ncyA9PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDU3L2luZGV4Lmh0bWwKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
