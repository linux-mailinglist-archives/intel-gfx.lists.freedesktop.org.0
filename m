Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BCF8F1AD
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 19:13:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C0F66EA04;
	Thu, 15 Aug 2019 17:13:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F3B256EA03;
 Thu, 15 Aug 2019 17:13:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ECD81A363B;
 Thu, 15 Aug 2019 17:13:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 15 Aug 2019 17:13:26 -0000
Message-ID: <20190815171326.31007.51104@emeril.freedesktop.org>
References: <20190815163524.12304-1-matthew.d.roper@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190815163524.12304-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/gen11=3A_Allow_usage_of_all_GPIO_pins?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ2VuMTE6IEFsbG93IHVzYWdl
IG9mIGFsbCBHUElPIHBpbnMKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvc2VyaWVzLzY1MjYxLwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkNJIEJ1ZyBM
b2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzY3MTIgLT4gUGF0Y2h3b3JrXzE0MDMxCj09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KClN1bW1hcnkKLS0t
LS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcgd2l0
aCBQYXRjaHdvcmtfMTQwMzEgYWJzb2x1dGVseSBuZWVkIHRvIGJlCiAgdmVyaWZpZWQgbWFudWFs
bHkuCiAgCiAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0
byBkbyB3aXRoIHRoZSBjaGFuZ2VzCiAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQwMzEsIHBs
ZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtCiAgdG8gZG9jdW1lbnQgdGhp
cyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4g
Q0kuCgogIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTQwMzEvCgpQb3NzaWJsZSBuZXcgaXNzdWVzCi0tLS0tLS0tLS0tLS0t
LS0tLS0KCiAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4g
aW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQwMzE6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMj
IFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMKCiAgKiBpZ3RAa21zX2NoYW1lbGl1bUBjb21tb24t
aHBkLWFmdGVyLXN1c3BlbmQ6CiAgICAtIGZpLXNrbC02NzAwazI6ICAgICAgW1BBU1NdWzFdIC0+
IFtGQUlMXVsyXQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzY3MTIvZmktc2tsLTY3MDBrMi9pZ3RAa21zX2NoYW1lbGl1bUBjb21tb24taHBk
LWFmdGVyLXN1c3BlbmQuaHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MDMxL2ZpLXNrbC02NzAwazIvaWd0QGttc19jaGFtZWxp
dW1AY29tbW9uLWhwZC1hZnRlci1zdXNwZW5kLmh0bWwKCiAgCiMjIyMgV2FybmluZ3MgIyMjIwoK
ICAqIGlndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3Q6CiAgICAtIGZpLXNrbC02NzAwazI6
ICAgICAgW0ZBSUxdWzNdIChbZmRvIzExMTQwN10pIC0+IFtGQUlMXVs0XQogICBbM106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3MTIvZmktc2tsLTY3
MDBrMi9pZ3RAa21zX2NoYW1lbGl1bUBoZG1pLWhwZC1mYXN0Lmh0bWwKICAgWzRdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDAzMS9maS1za2wt
NjcwMGsyL2lndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3QuaHRtbAoKICAKS25vd24gaXNz
dWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdv
cmtfMTQwMzEgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMj
IwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAaTkxNV9wbV9ycG1AYmFzaWMtcGNpLWQz
LXN0YXRlOgogICAgLSBmaS1oc3ctNDc3MDogICAgICAgIFtQQVNTXVs1XSAtPiBbU0tJUF1bNl0g
KFtmZG8jMTA5MjcxXSkKICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV82NzEyL2ZpLWhzdy00NzcwL2lndEBpOTE1X3BtX3JwbUBiYXNpYy1wY2kt
ZDMtc3RhdGUuaHRtbAogICBbNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE0MDMxL2ZpLWhzdy00NzcwL2lndEBpOTE1X3BtX3JwbUBiYXNpYy1w
Y2ktZDMtc3RhdGUuaHRtbAoKICAqIGlndEBrbXNfYnVzeUBiYXNpYy1mbGlwLWE6CiAgICAtIGZp
LXNrbC1pb21tdTogICAgICAgW1BBU1NdWzddIC0+IFtTS0lQXVs4XSAoW2ZkbyMxMDkyNzFdIC8g
W2ZkbyMxMDkyNzhdKSArMiBzaW1pbGFyIGlzc3VlcwogICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3MTIvZmktc2tsLWlvbW11L2lndEBrbXNf
YnVzeUBiYXNpYy1mbGlwLWEuaHRtbAogICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MDMxL2ZpLXNrbC1pb21tdS9pZ3RAa21zX2J1c3lA
YmFzaWMtZmxpcC1hLmh0bWwKICAgIC0gZmktc2tsLTYyNjB1OiAgICAgICBbUEFTU11bOV0gLT4g
W1NLSVBdWzEwXSAoW2ZkbyMxMDkyNzFdIC8gW2ZkbyMxMDkyNzhdKSArMiBzaW1pbGFyIGlzc3Vl
cwogICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzY3MTIvZmktc2tsLTYyNjB1L2lndEBrbXNfYnVzeUBiYXNpYy1mbGlwLWEuaHRtbAogICBbMTBd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDAz
MS9maS1za2wtNjI2MHUvaWd0QGttc19idXN5QGJhc2ljLWZsaXAtYS5odG1sCiAgICAtIGZpLWJk
dy1ndnRkdm06ICAgICAgW1BBU1NdWzExXSAtPiBbU0tJUF1bMTJdIChbZmRvIzEwOTI3MV0gLyBb
ZmRvIzEwOTI3OF0pICsyIHNpbWlsYXIgaXNzdWVzCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3MTIvZmktYmR3LWd2dGR2bS9pZ3RAa21z
X2J1c3lAYmFzaWMtZmxpcC1hLmh0bWwKICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQwMzEvZmktYmR3LWd2dGR2bS9pZ3RAa21zX2J1
c3lAYmFzaWMtZmxpcC1hLmh0bWwKCiAgKiBpZ3RAa21zX2J1c3lAYmFzaWMtZmxpcC1iOgogICAg
LSBmaS1iZHctNTU1N3U6ICAgICAgIFtQQVNTXVsxM10gLT4gW1NLSVBdWzE0XSAoW2ZkbyMxMDky
NzFdIC8gW2ZkbyMxMDkyNzhdKSArMiBzaW1pbGFyIGlzc3VlcwogICBbMTNdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzEyL2ZpLWJkdy01NTU3dS9p
Z3RAa21zX2J1c3lAYmFzaWMtZmxpcC1iLmh0bWwKICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQwMzEvZmktYmR3LTU1NTd1L2lndEBr
bXNfYnVzeUBiYXNpYy1mbGlwLWIuaHRtbAogICAgLSBmaS1za2wtZ3Z0ZHZtOiAgICAgIFtQQVNT
XVsxNV0gLT4gW1NLSVBdWzE2XSAoW2ZkbyMxMDkyNzFdIC8gW2ZkbyMxMDkyNzhdKSArMiBzaW1p
bGFyIGlzc3VlcwogICBbMTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82NzEyL2ZpLXNrbC1ndnRkdm0vaWd0QGttc19idXN5QGJhc2ljLWZsaXAtYi5o
dG1sCiAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE0MDMxL2ZpLXNrbC1ndnRkdm0vaWd0QGttc19idXN5QGJhc2ljLWZsaXAtYi5odG1s
CiAgICAtIGZpLWNmbC1ndWM6ICAgICAgICAgW1BBU1NdWzE3XSAtPiBbU0tJUF1bMThdIChbZmRv
IzEwOTI3MV0gLyBbZmRvIzEwOTI3OF0pICsyIHNpbWlsYXIgaXNzdWVzCiAgIFsxN106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3MTIvZmktY2ZsLWd1
Yy9pZ3RAa21zX2J1c3lAYmFzaWMtZmxpcC1iLmh0bWwKICAgWzE4XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQwMzEvZmktY2ZsLWd1Yy9pZ3RA
a21zX2J1c3lAYmFzaWMtZmxpcC1iLmh0bWwKICAgIC0gZmktY2ZsLTg3MDBrOiAgICAgICBbUEFT
U11bMTldIC0+IFtTS0lQXVsyMF0gKFtmZG8jMTA5MjcxXSAvIFtmZG8jMTA5Mjc4XSkgKzIgc2lt
aWxhciBpc3N1ZXMKICAgWzE5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjcxMi9maS1jZmwtODcwMGsvaWd0QGttc19idXN5QGJhc2ljLWZsaXAtYi5o
dG1sCiAgIFsyMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE0MDMxL2ZpLWNmbC04NzAway9pZ3RAa21zX2J1c3lAYmFzaWMtZmxpcC1iLmh0bWwK
CiAgKiBpZ3RAa21zX2NoYW1lbGl1bUBoZG1pLWNyYy1mYXN0OgogICAgLSBmaS1za2wtNjcwMGsy
OiAgICAgIFtQQVNTXVsyMV0gLT4gW0ZBSUxdWzIyXSAoW2ZkbyMxMTExOTBdKSArMSBzaW1pbGFy
IGlzc3VlCiAgIFsyMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzY3MTIvZmktc2tsLTY3MDBrMi9pZ3RAa21zX2NoYW1lbGl1bUBoZG1pLWNyYy1mYXN0
Lmh0bWwKICAgWzIyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTQwMzEvZmktc2tsLTY3MDBrMi9pZ3RAa21zX2NoYW1lbGl1bUBoZG1pLWNyYy1m
YXN0Lmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9sZWdhY3lAYmFzaWMtZmxpcC1iZWZvcmUtY3Vy
c29yLXZhcnlpbmctc2l6ZToKICAgIC0gZmktc2tsLWlvbW11OiAgICAgICBbUEFTU11bMjNdIC0+
IFtTS0lQXVsyNF0gKFtmZG8jMTA5MjcxXSkgKzIzIHNpbWlsYXIgaXNzdWVzCiAgIFsyM106IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3MTIvZmktc2ts
LWlvbW11L2lndEBrbXNfY3Vyc29yX2xlZ2FjeUBiYXNpYy1mbGlwLWJlZm9yZS1jdXJzb3ItdmFy
eWluZy1zaXplLmh0bWwKICAgWzI0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQwMzEvZmktc2tsLWlvbW11L2lndEBrbXNfY3Vyc29yX2xlZ2Fj
eUBiYXNpYy1mbGlwLWJlZm9yZS1jdXJzb3ItdmFyeWluZy1zaXplLmh0bWwKICAgIC0gZmktYmR3
LWd2dGR2bTogICAgICBbUEFTU11bMjVdIC0+IFtTS0lQXVsyNl0gKFtmZG8jMTA5MjcxXSkgKzIx
IHNpbWlsYXIgaXNzdWVzCiAgIFsyNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzY3MTIvZmktYmR3LWd2dGR2bS9pZ3RAa21zX2N1cnNvcl9sZWdhY3lA
YmFzaWMtZmxpcC1iZWZvcmUtY3Vyc29yLXZhcnlpbmctc2l6ZS5odG1sCiAgIFsyNl06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MDMxL2ZpLWJk
dy1ndnRkdm0vaWd0QGttc19jdXJzb3JfbGVnYWN5QGJhc2ljLWZsaXAtYmVmb3JlLWN1cnNvci12
YXJ5aW5nLXNpemUuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBiYXNpYy1mbGlwLXZzLXdmX3ZibGFu
azoKICAgIC0gZmktc2tsLTYyNjB1OiAgICAgICBbUEFTU11bMjddIC0+IFtTS0lQXVsyOF0gKFtm
ZG8jMTA5MjcxXSkgKzIzIHNpbWlsYXIgaXNzdWVzCiAgIFsyN106IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3MTIvZmktc2tsLTYyNjB1L2lndEBrbXNf
ZmxpcEBiYXNpYy1mbGlwLXZzLXdmX3ZibGFuay5odG1sCiAgIFsyOF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MDMxL2ZpLXNrbC02MjYwdS9p
Z3RAa21zX2ZsaXBAYmFzaWMtZmxpcC12cy13Zl92YmxhbmsuaHRtbAoKICAqIGlndEBrbXNfcGlw
ZV9jcmNfYmFzaWNAcmVhZC1jcmMtcGlwZS1hLWZyYW1lLXNlcXVlbmNlOgogICAgLSBmaS1jZmwt
Z3VjOiAgICAgICAgIFtQQVNTXVsyOV0gLT4gW1NLSVBdWzMwXSAoW2ZkbyMxMDkyNzFdKSArMjMg
c2ltaWxhciBpc3N1ZXMKICAgWzI5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjcxMi9maS1jZmwtZ3VjL2lndEBrbXNfcGlwZV9jcmNfYmFzaWNAcmVh
ZC1jcmMtcGlwZS1hLWZyYW1lLXNlcXVlbmNlLmh0bWwKICAgWzMwXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQwMzEvZmktY2ZsLWd1Yy9pZ3RA
a21zX3BpcGVfY3JjX2Jhc2ljQHJlYWQtY3JjLXBpcGUtYS1mcmFtZS1zZXF1ZW5jZS5odG1sCgog
ICogaWd0QGttc19waXBlX2NyY19iYXNpY0ByZWFkLWNyYy1waXBlLWM6CiAgICAtIGZpLWJkdy01
NTU3dTogICAgICAgW1BBU1NdWzMxXSAtPiBbU0tJUF1bMzJdIChbZmRvIzEwOTI3MV0pICsyMyBz
aW1pbGFyIGlzc3VlcwogICBbMzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV82NzEyL2ZpLWJkdy01NTU3dS9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQHJl
YWQtY3JjLXBpcGUtYy5odG1sCiAgIFszMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MDMxL2ZpLWJkdy01NTU3dS9pZ3RAa21zX3BpcGVfY3Jj
X2Jhc2ljQHJlYWQtY3JjLXBpcGUtYy5odG1sCiAgICAtIGZpLXNrbC1ndnRkdm06ICAgICAgW1BB
U1NdWzMzXSAtPiBbU0tJUF1bMzRdIChbZmRvIzEwOTI3MV0pICsyMSBzaW1pbGFyIGlzc3Vlcwog
ICBbMzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
NzEyL2ZpLXNrbC1ndnRkdm0vaWd0QGttc19waXBlX2NyY19iYXNpY0ByZWFkLWNyYy1waXBlLWMu
aHRtbAogICBbMzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNDAzMS9maS1za2wtZ3Z0ZHZtL2lndEBrbXNfcGlwZV9jcmNfYmFzaWNAcmVhZC1j
cmMtcGlwZS1jLmh0bWwKCiAgKiBpZ3RAcHJpbWVfdmdlbUBiYXNpYy1mZW5jZS1mbGlwOgogICAg
LSBmaS1jZmwtODcwMGs6ICAgICAgIFtQQVNTXVszNV0gLT4gW1NLSVBdWzM2XSAoW2ZkbyMxMDky
NzFdKSArMjMgc2ltaWxhciBpc3N1ZXMKICAgWzM1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjcxMi9maS1jZmwtODcwMGsvaWd0QHByaW1lX3ZnZW1A
YmFzaWMtZmVuY2UtZmxpcC5odG1sCiAgIFszNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MDMxL2ZpLWNmbC04NzAway9pZ3RAcHJpbWVfdmdl
bUBiYXNpYy1mZW5jZS1mbGlwLmh0bWwKCiAgCiMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAq
IGlndEBrbXNfYnVzeUBiYXNpYy1mbGlwLWE6CiAgICAtIGZpLWtibC03NTY3dTogICAgICAgW1NL
SVBdWzM3XSAoW2ZkbyMxMDkyNzFdIC8gW2ZkbyMxMDkyNzhdKSAtPiBbUEFTU11bMzhdICsyIHNp
bWlsYXIgaXNzdWVzCiAgIFszN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzY3MTIvZmkta2JsLTc1Njd1L2lndEBrbXNfYnVzeUBiYXNpYy1mbGlwLWEu
aHRtbAogICBbMzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNDAzMS9maS1rYmwtNzU2N3UvaWd0QGttc19idXN5QGJhc2ljLWZsaXAtYS5odG1s
CgogICogaWd0QGttc19jaGFtZWxpdW1AaGRtaS1lZGlkLXJlYWQ6CiAgICAtIHtmaS1pY2wtdTR9
OiAgICAgICAgW0ZBSUxdWzM5XSAoW2ZkbyMxMTEwNDVdKSAtPiBbUEFTU11bNDBdCiAgIFszOV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3MTIvZmkt
aWNsLXU0L2lndEBrbXNfY2hhbWVsaXVtQGhkbWktZWRpZC1yZWFkLmh0bWwKICAgWzQwXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQwMzEvZmkt
aWNsLXU0L2lndEBrbXNfY2hhbWVsaXVtQGhkbWktZWRpZC1yZWFkLmh0bWwKCiAgCiAge25hbWV9
OiBUaGlzIGVsZW1lbnQgaXMgc3VwcHJlc3NlZC4gVGhpcyBtZWFucyBpdCBpcyBpZ25vcmVkIHdo
ZW4gY29tcHV0aW5nCiAgICAgICAgICB0aGUgc3RhdHVzIG9mIHRoZSBkaWZmZXJlbmNlIChTVUND
RVNTLCBXQVJOSU5HLCBvciBGQUlMVVJFKS4KCiAgW2ZkbyMxMDI1MDVdOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDI1MDUKICBbZmRvIzEwOTI3MV06IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3MQogIFtmZG8j
MTA5Mjc4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5
Mjc4CiAgW2ZkbyMxMTEwNDVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMTEwNDUKICBbZmRvIzExMTA0OV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTExMTA0OQogIFtmZG8jMTExMTkwXTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMTkwCiAgW2ZkbyMxMTE0MDddOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE0MDcKCgpQYXJ0aWNp
cGF0aW5nIGhvc3RzICg1MyAtPiA0MikKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgog
IEFkZGl0aW9uYWwgKDEpOiBmaS1nZGctNTUxIAogIE1pc3NpbmcgICAgKDEyKTogZmkta2JsLXNv
cmFrYSBmaS1pbGstbTU0MCBmaS1oc3ctNDIwMHUgZmktYnl0LXNxdWF3a3MgZmktYnN3LWN5YW4g
ZmktaWxrLTY1MCBmaS1zbmItMjUyMG0gZmktaXZiLTM3NzAgZmktaWNsLXkgZmktYnl0LWNsYXBw
ZXIgZmktYmR3LXNhbXVzIGZpLXNuYi0yNjAwIAoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0t
LQoKICAqIENJOiBDSS0yMDE5MDUyOSAtPiBOb25lCiAgKiBMaW51eDogQ0lfRFJNXzY3MTIgLT4g
UGF0Y2h3b3JrXzE0MDMxCgogIENJLTIwMTkwNTI5OiAyMDE5MDUyOQogIENJX0RSTV82NzEyOiBj
ZDdiM2E1YTlkM2IyMDY4NGE2MmI4YzFhMzM3MDdjMTYyZWUzNjI5IEAgZ2l0Oi8vYW5vbmdpdC5m
cmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzUxMzg6IGI5YWJlMGJmNmM0NzhjNGY2
Y2FjNTZiZmYyODZkNjkyNmFkOGMwYWIgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94
b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdvcmtfMTQwMzE6IDY0NWE2OGNkNTBhZDk0
OTU5MDE4ZWExNDhkNzJmOTlkNjhmYTcwZjkgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9y
Zy9nZngtY2kvbGludXgKCgo9PSBMaW51eCBjb21taXRzID09Cgo2NDVhNjhjZDUwYWQgZHJtL2k5
MTUvZ2VuMTE6IEFsbG93IHVzYWdlIG9mIGFsbCBHUElPIHBpbnMKCj09IExvZ3MgPT0KCkZvciBt
b3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNDAzMS8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
