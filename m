Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9CD2D753
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 10:08:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D4FE6E2A2;
	Wed, 29 May 2019 08:08:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 954916E29A;
 Wed, 29 May 2019 08:08:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8B76FA0088;
 Wed, 29 May 2019 08:08:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 29 May 2019 08:08:29 -0000
Message-ID: <20190529080829.29220.50231@emeril.freedesktop.org>
References: <20190528200655.11605-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190528200655.11605-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EIGT=3A_success_for_drm/?=
 =?utf-8?q?i915=3A_Fix_off-by-one_in_looking_up_icl_sseu_slice?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEZpeCBvZmYtYnktb25lIGlu
IGxvb2tpbmcgdXAgaWNsIHNzZXUgc2xpY2UKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVl
ZGVza3RvcC5vcmcvc2VyaWVzLzYxMjc2LwpTdGF0ZSA6IHN1Y2Nlc3MKCj09IFN1bW1hcnkgPT0K
CkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzYxNTlfZnVsbCAtPiBQYXRjaHdvcmtf
MTMxMTlfZnVsbAo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAgKipTVUNDRVNTKioKCiAgTm8gcmVncmVzc2lvbnMg
Zm91bmQuCgogIAoKS25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hh
bmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTMxMTlfZnVsbCB0aGF0IGNvbWUgZnJvbSBrbm93biBp
c3N1ZXM6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIElzc3VlcyBoaXQgIyMjIwoKICAqIGln
dEBnZW1fY3R4X2lzb2xhdGlvbkByY3MwLXMzOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtQ
QVNTXVsxXSAtPiBbSU5DT01QTEVURV1bMl0gKFtmZG8jMTAzNjY1XSkKICAgWzFdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTU5L3NoYXJkLWtibDEv
aWd0QGdlbV9jdHhfaXNvbGF0aW9uQHJjczAtczMuaHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTE5L3NoYXJkLWtibDMvaWd0
QGdlbV9jdHhfaXNvbGF0aW9uQHJjczAtczMuaHRtbAoKICAqIGlndEBnZW1fd29ya2Fyb3VuZHNA
c3VzcGVuZC1yZXN1bWU6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW1BBU1NdWzNdIC0+IFtE
TUVTRy1XQVJOXVs0XSAoW2ZkbyMxMDg1NjZdKSArNSBzaW1pbGFyIGlzc3VlcwogICBbM106IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxNTkvc2hhcmQt
YXBsMS9pZ3RAZ2VtX3dvcmthcm91bmRzQHN1c3BlbmQtcmVzdW1lLmh0bWwKICAgWzRdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzExOS9zaGFy
ZC1hcGw4L2lndEBnZW1fd29ya2Fyb3VuZHNAc3VzcGVuZC1yZXN1bWUuaHRtbAoKICAqIGlndEBr
bXNfZmxpcEAyeC1mbGlwLXZzLWV4cGlyZWQtdmJsYW5rLWludGVycnVwdGlibGU6CiAgICAtIHNo
YXJkLWdsazogICAgICAgICAgW1BBU1NdWzVdIC0+IFtGQUlMXVs2XSAoW2ZkbyMxMDUzNjNdKQog
ICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYx
NTkvc2hhcmQtZ2xrNC9pZ3RAa21zX2ZsaXBAMngtZmxpcC12cy1leHBpcmVkLXZibGFuay1pbnRl
cnJ1cHRpYmxlLmh0bWwKICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMzExOS9zaGFyZC1nbGs5L2lndEBrbXNfZmxpcEAyeC1mbGlwLXZz
LWV4cGlyZWQtdmJsYW5rLWludGVycnVwdGlibGUuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBwbGFp
bi1mbGlwLXRzLWNoZWNrOgogICAgLSBzaGFyZC1nbGs6ICAgICAgICAgIFtQQVNTXVs3XSAtPiBb
RkFJTF1bOF0gKFtmZG8jMTAwMzY4XSkKICAgWzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTU5L3NoYXJkLWdsazMvaWd0QGttc19mbGlwQHBsYWlu
LWZsaXAtdHMtY2hlY2suaHRtbAogICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTE5L3NoYXJkLWdsazgvaWd0QGttc19mbGlwQHBsYWlu
LWZsaXAtdHMtY2hlY2suaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJj
LTJwLXNjbmRzY3JuLWN1ci1pbmRmYi1kcmF3LWJsdDoKICAgIC0gc2hhcmQtaHN3OiAgICAgICAg
ICBbUEFTU11bOV0gLT4gW1NLSVBdWzEwXSAoW2ZkbyMxMDkyNzFdKSArMjYgc2ltaWxhciBpc3N1
ZXMKICAgWzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82MTU5L3NoYXJkLWhzdzYvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMnAtc2Nu
ZHNjcm4tY3VyLWluZGZiLWRyYXctYmx0Lmh0bWwKICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMxMTkvc2hhcmQtaHN3MS9pZ3RAa21z
X2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0ycC1zY25kc2Nybi1jdXItaW5kZmItZHJhdy1ibHQu
aHRtbAoKICAqIGlndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1jLWNvdmVyYWdlLTdlZmM6
CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzExXSAtPiBbRkFJTF1bMTJdIChbZmRv
IzEwODE0NV0gLyBbZmRvIzExMDQwM10pICsxIHNpbWlsYXIgaXNzdWUKICAgWzExXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjE1OS9zaGFyZC1za2w0
L2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1jLWNvdmVyYWdlLTdlZmMuaHRtbAogICBb
MTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MzExOS9zaGFyZC1za2wzL2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1jLWNvdmVyYWdl
LTdlZmMuaHRtbAoKICAqIGlndEBrbXNfc2V0bW9kZUBiYXNpYzoKICAgIC0gc2hhcmQtYXBsOiAg
ICAgICAgICBbUEFTU11bMTNdIC0+IFtGQUlMXVsxNF0gKFtmZG8jOTk5MTJdKQogICBbMTNdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTU5L3NoYXJk
LWFwbDQvaWd0QGttc19zZXRtb2RlQGJhc2ljLmh0bWwKICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMxMTkvc2hhcmQtYXBsOC9pZ3RA
a21zX3NldG1vZGVAYmFzaWMuaHRtbAogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtQQVNTXVsx
NV0gLT4gW0ZBSUxdWzE2XSAoW2ZkbyM5OTkxMl0pCiAgIFsxNV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxNTkvc2hhcmQta2JsNC9pZ3RAa21zX3Nl
dG1vZGVAYmFzaWMuaHRtbAogICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xMzExOS9zaGFyZC1rYmw3L2lndEBrbXNfc2V0bW9kZUBiYXNp
Yy5odG1sCgogICogaWd0QGttc192YmxhbmtAcGlwZS1jLXRzLWNvbnRpbnVhdGlvbi1zdXNwZW5k
OgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtQQVNTXVsxN10gLT4gW0RNRVNHLVdBUk5dWzE4
XSAoW2ZkbyMxMDg1NjZdKSArMSBzaW1pbGFyIGlzc3VlCiAgIFsxN106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxNTkvc2hhcmQta2JsMy9pZ3RAa21z
X3ZibGFua0BwaXBlLWMtdHMtY29udGludWF0aW9uLXN1c3BlbmQuaHRtbAogICBbMThdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzExOS9zaGFy
ZC1rYmw3L2lndEBrbXNfdmJsYW5rQHBpcGUtYy10cy1jb250aW51YXRpb24tc3VzcGVuZC5odG1s
CgogICogaWd0QHRvb2xzX3Rlc3RAdG9vbHNfdGVzdDoKICAgIC0gc2hhcmQta2JsOiAgICAgICAg
ICBbUEFTU11bMTldIC0+IFtTS0lQXVsyMF0gKFtmZG8jMTA5MjcxXSkKICAgWzE5XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjE1OS9zaGFyZC1rYmwz
L2lndEB0b29sc190ZXN0QHRvb2xzX3Rlc3QuaHRtbAogICBbMjBdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzExOS9zaGFyZC1rYmw3L2lndEB0
b29sc190ZXN0QHRvb2xzX3Rlc3QuaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjCgog
ICogaWd0QGdlbV9laW9AaW4tZmxpZ2h0LXN1c3BlbmQ6CiAgICAtIHNoYXJkLXNrbDogICAgICAg
ICAgW0lOQ09NUExFVEVdWzIxXSAoW2ZkbyMxMDQxMDhdKSAtPiBbUEFTU11bMjJdICsxIHNpbWls
YXIgaXNzdWUKICAgWzIxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNjE1OS9zaGFyZC1za2wzL2lndEBnZW1fZWlvQGluLWZsaWdodC1zdXNwZW5kLmh0
bWwKICAgWzIyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTMxMTkvc2hhcmQtc2tsNS9pZ3RAZ2VtX2Vpb0Bpbi1mbGlnaHQtc3VzcGVuZC5odG1s
CgogICogaWd0QGk5MTVfcG1fcnBtQGRlYnVnZnMtcmVhZDoKICAgIC0gc2hhcmQtc2tsOiAgICAg
ICAgICBbSU5DT01QTEVURV1bMjNdIChbZmRvIzEwNzgwN10pIC0+IFtQQVNTXVsyNF0KICAgWzIz
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjE1OS9z
aGFyZC1za2w1L2lndEBpOTE1X3BtX3JwbUBkZWJ1Z2ZzLXJlYWQuaHRtbAogICBbMjRdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzExOS9zaGFy
ZC1za2wyL2lndEBpOTE1X3BtX3JwbUBkZWJ1Z2ZzLXJlYWQuaHRtbAoKICAqIGlndEBpOTE1X3N1
c3BlbmRAZGVidWdmcy1yZWFkZXI6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW0RNRVNHLVdB
Uk5dWzI1XSAoW2ZkbyMxMDg1NjZdKSAtPiBbUEFTU11bMjZdICs1IHNpbWlsYXIgaXNzdWVzCiAg
IFsyNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYx
NTkvc2hhcmQtYXBsMy9pZ3RAaTkxNV9zdXNwZW5kQGRlYnVnZnMtcmVhZGVyLmh0bWwKICAgWzI2
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMx
MTkvc2hhcmQtYXBsMS9pZ3RAaTkxNV9zdXNwZW5kQGRlYnVnZnMtcmVhZGVyLmh0bWwKCiAgKiBp
Z3RAa21zX2ZsaXBAMngtcGxhaW4tZmxpcC1pbnRlcnJ1cHRpYmxlOgogICAgLSBzaGFyZC1oc3c6
ICAgICAgICAgIFtTS0lQXVsyN10gKFtmZG8jMTA5MjcxXSkgLT4gW1BBU1NdWzI4XSArMTUgc2lt
aWxhciBpc3N1ZXMKICAgWzI3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjE1OS9zaGFyZC1oc3cxL2lndEBrbXNfZmxpcEAyeC1wbGFpbi1mbGlwLWlu
dGVycnVwdGlibGUuaHRtbAogICBbMjhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xMzExOS9zaGFyZC1oc3c2L2lndEBrbXNfZmxpcEAyeC1wbGFp
bi1mbGlwLWludGVycnVwdGlibGUuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3Bl
bmQtaW50ZXJydXB0aWJsZToKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbRE1FU0ctV0FSTl1b
MjldIChbZmRvIzEwODU2Nl0pIC0+IFtQQVNTXVszMF0KICAgWzI5XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjE1OS9zaGFyZC1rYmw3L2lndEBrbXNf
ZmxpcEBmbGlwLXZzLXN1c3BlbmQtaW50ZXJydXB0aWJsZS5odG1sCiAgIFszMF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMTE5L3NoYXJkLWti
bDQvaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZC1pbnRlcnJ1cHRpYmxlLmh0bWwKCiAgCiAg
W2ZkbyMxMDAzNjhdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDAzNjgKICBbZmRvIzEwMzY2NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTEwMzY2NQogIFtmZG8jMTA0MTA4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA0MTA4CiAgW2ZkbyMxMDUzNjNdOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDUzNjMKICBbZmRvIzEwNzgwN106
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzgwNwogIFtm
ZG8jMTA4MTQ1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTA4MTQ1CiAgW2ZkbyMxMDg1NjZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDg1NjYKICBbZmRvIzEwOTI3MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3MQogIFtmZG8jMTEwNDAzXTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwNDAzCiAgW2ZkbyM5OTkxMl06IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTk5OTEyCgoKUGFydGlj
aXBhdGluZyBob3N0cyAoOSAtPiA5KQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAg
Tm8gY2hhbmdlcyBpbiBwYXJ0aWNpcGF0aW5nIGhvc3RzCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0t
LS0tLS0tCgogICogTGludXg6IENJX0RSTV82MTU5IC0+IFBhdGNod29ya18xMzExOQoKICBDSV9E
Uk1fNjE1OTogZjI4MGQzM2FlODk1NjI0YTI0N2Q0NDMxZWNlMDliNTA4OGU2ZjAyMSBAIGdpdDov
L2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElHVF81MDIxOiAyZDY0Y2I2
ODA4MDc1YjBkMDY5NmE4OWQyY2UyOTAyMjBlNmVmZjhlIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVz
a3RvcC5vcmcveG9yZy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzEzMTE5OiBkMDVi
MDNjZjFiMjkyNTg0MGJjM2ExNTUzMWI3YmQ2MDg5NmUzNzQ5IEAgZ2l0Oi8vYW5vbmdpdC5mcmVl
ZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgcGlnbGl0XzQ1MDk6IGZkYzVhNGNhMTExMjRhYjg0
MTNjNzk4ODg5NmVlYzRjOTczMzY2OTQgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9w
aWdsaXQKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzExOS8KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
