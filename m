Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CB96BEDC
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 17:13:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 211F86E15E;
	Wed, 17 Jul 2019 15:13:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1C1776E0F8;
 Wed, 17 Jul 2019 15:13:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 12E21A0109;
 Wed, 17 Jul 2019 15:13:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 17 Jul 2019 15:13:09 -0000
Message-ID: <20190717151309.5424.85005@emeril.freedesktop.org>
References: <20190717111303.29051-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190717111303.29051-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EIGT=3A_success_for_drm/?=
 =?utf-8?q?i915=3A_Move_aliasing=5Fppgtt_underneath_its_i915=5Fggtt?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IE1vdmUgYWxpYXNpbmdfcHBn
dHQgdW5kZXJuZWF0aCBpdHMgaTkxNV9nZ3R0ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJl
ZWRlc2t0b3Aub3JnL3Nlcmllcy82MzgwNi8KU3RhdGUgOiBzdWNjZXNzCgo9PSBTdW1tYXJ5ID09
CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV82NDk4X2Z1bGwgLT4gUGF0Y2h3b3Jr
XzEzNjcwX2Z1bGwKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PQoKU3VtbWFyeQotLS0tLS0tCgogICoqU1VDQ0VTUyoqCgogIE5vIHJlZ3Jlc3Npb25z
IGZvdW5kLgoKICAKCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIGNo
YW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzEzNjcwX2Z1bGwgdGhhdCBjb21lIGZyb20ga25vd24g
aXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBp
Z3RAaTkxNV9wbV9yYzZfcmVzaWRlbmN5QHJjNi1hY2N1cmFjeToKICAgIC0gc2hhcmQta2JsOiAg
ICAgICAgICBbUEFTU11bMV0gLT4gW1NLSVBdWzJdIChbZmRvIzEwOTI3MV0pCiAgIFsxXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjQ5OC9zaGFyZC1r
Ymw0L2lndEBpOTE1X3BtX3JjNl9yZXNpZGVuY3lAcmM2LWFjY3VyYWN5Lmh0bWwKICAgWzJdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzY3MC9z
aGFyZC1rYmw3L2lndEBpOTE1X3BtX3JjNl9yZXNpZGVuY3lAcmM2LWFjY3VyYWN5Lmh0bWwKCiAg
KiBpZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1hLWN1cnNvci1zdXNwZW5kOgogICAgLSBzaGFyZC1r
Ymw6ICAgICAgICAgIFtQQVNTXVszXSAtPiBbRE1FU0ctV0FSTl1bNF0gKFtmZG8jMTA4NTY2XSkg
KzIgc2ltaWxhciBpc3N1ZXMKICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82NDk4L3NoYXJkLWtibDMvaWd0QGttc19jdXJzb3JfY3JjQHBpcGUt
YS1jdXJzb3Itc3VzcGVuZC5odG1sCiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM2NzAvc2hhcmQta2JsMy9pZ3RAa21zX2N1cnNvcl9j
cmNAcGlwZS1hLWN1cnNvci1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9sZWdhY3lA
Y3Vyc29yLXZzLWZsaXAtdG9nZ2xlOgogICAgLSBzaGFyZC1oc3c6ICAgICAgICAgIFtQQVNTXVs1
XSAtPiBbRkFJTF1bNl0gKFtmZG8jMTAzMzU1XSkKICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NDk4L3NoYXJkLWhzdzQvaWd0QGttc19jdXJz
b3JfbGVnYWN5QGN1cnNvci12cy1mbGlwLXRvZ2dsZS5odG1sCiAgIFs2XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM2NzAvc2hhcmQtaHN3NS9p
Z3RAa21zX2N1cnNvcl9sZWdhY3lAY3Vyc29yLXZzLWZsaXAtdG9nZ2xlLmh0bWwKCiAgKiBpZ3RA
a21zX2ZsaXBAMngtcGxhaW4tZmxpcC1mYi1yZWNyZWF0ZToKICAgIC0gc2hhcmQtaHN3OiAgICAg
ICAgICBbUEFTU11bN10gLT4gW0lOQ09NUExFVEVdWzhdIChbZmRvIzEwMzU0MF0pCiAgIFs3XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjQ5OC9zaGFy
ZC1oc3c0L2lndEBrbXNfZmxpcEAyeC1wbGFpbi1mbGlwLWZiLXJlY3JlYXRlLmh0bWwKICAgWzhd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzY3
MC9zaGFyZC1oc3c0L2lndEBrbXNfZmxpcEAyeC1wbGFpbi1mbGlwLWZiLXJlY3JlYXRlLmh0bWwK
CiAgKiBpZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kOgogICAgLSBzaGFyZC1zbmI6ICAgICAg
ICAgIFtQQVNTXVs5XSAtPiBbSU5DT01QTEVURV1bMTBdIChbZmRvIzEwNTQxMV0pCiAgIFs5XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjQ5OC9zaGFy
ZC1zbmI3L2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQuaHRtbAogICBbMTBdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzY3MC9zaGFyZC1z
bmIxL2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBw
bGFpbi1mbGlwLXRzLWNoZWNrOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsxMV0g
LT4gW0ZBSUxdWzEyXSAoW2ZkbyMxMDAzNjhdKQogICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NDk4L3NoYXJkLXNrbDIvaWd0QGttc19mbGlw
QHBsYWluLWZsaXAtdHMtY2hlY2suaHRtbAogICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzY3MC9zaGFyZC1za2w0L2lndEBrbXNfZmxp
cEBwbGFpbi1mbGlwLXRzLWNoZWNrLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNr
aW5nQGZiYy0xcC1vZmZzY3Jlbi1wcmktc2hyZmItZHJhdy1wd3JpdGU6CiAgICAtIHNoYXJkLWlj
bGI6ICAgICAgICAgW1BBU1NdWzEzXSAtPiBbRkFJTF1bMTRdIChbZmRvIzEwMzE2N10pICszIHNp
bWlsYXIgaXNzdWVzCiAgIFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzY0OTgvc2hhcmQtaWNsYjcvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2lu
Z0BmYmMtMXAtb2Zmc2NyZW4tcHJpLXNocmZiLWRyYXctcHdyaXRlLmh0bWwKICAgWzE0XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM2NzAvc2hh
cmQtaWNsYjcvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtb2Zmc2NyZW4tcHJp
LXNocmZiLWRyYXctcHdyaXRlLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lQHBsYW5lLXBhbm5pbmct
Ym90dG9tLXJpZ2h0LXN1c3BlbmQtcGlwZS1iLXBsYW5lczoKICAgIC0gc2hhcmQtYXBsOiAgICAg
ICAgICBbUEFTU11bMTVdIC0+IFtETUVTRy1XQVJOXVsxNl0gKFtmZG8jMTA4NTY2XSkgKzIgc2lt
aWxhciBpc3N1ZXMKICAgWzE1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjQ5OC9zaGFyZC1hcGw0L2lndEBrbXNfcGxhbmVAcGxhbmUtcGFubmluZy1i
b3R0b20tcmlnaHQtc3VzcGVuZC1waXBlLWItcGxhbmVzLmh0bWwKICAgWzE2XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM2NzAvc2hhcmQtYXBs
NC9pZ3RAa21zX3BsYW5lQHBsYW5lLXBhbm5pbmctYm90dG9tLXJpZ2h0LXN1c3BlbmQtcGlwZS1i
LXBsYW5lcy5odG1sCgogICogaWd0QGttc19wbGFuZV9sb3dyZXNAcGlwZS1hLXRpbGluZy15Ogog
ICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsxN10gLT4gW0ZBSUxdWzE4XSAoW2ZkbyMx
MDMxNjZdKQogICBbMTddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82NDk4L3NoYXJkLWljbGI0L2lndEBrbXNfcGxhbmVfbG93cmVzQHBpcGUtYS10aWxp
bmcteS5odG1sCiAgIFsxOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEzNjcwL3NoYXJkLWljbGI2L2lndEBrbXNfcGxhbmVfbG93cmVzQHBpcGUt
YS10aWxpbmcteS5odG1sCgogICogaWd0QGttc19wc3JAcHNyMl9jdXJzb3JfYmx0OgogICAgLSBz
aGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsxOV0gLT4gW1NLSVBdWzIwXSAoW2ZkbyMxMDk0NDFd
KSArMyBzaW1pbGFyIGlzc3VlcwogICBbMTldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82NDk4L3NoYXJkLWljbGIyL2lndEBrbXNfcHNyQHBzcjJfY3Vy
c29yX2JsdC5odG1sCiAgIFsyMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzEzNjcwL3NoYXJkLWljbGIxL2lndEBrbXNfcHNyQHBzcjJfY3Vyc29y
X2JsdC5odG1sCgogIAojIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMKCiAgKiBpZ3RAZ2VtX2V4ZWNf
c2NoZWR1bGVAc21va2V0ZXN0LXJlbmRlcjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbSU5D
T01QTEVURV1bMjFdIChbZmRvIzEwNzcxM10pIC0+IFtQQVNTXVsyMl0KICAgWzIxXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjQ5OC9zaGFyZC1pY2xi
Ny9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAc21va2V0ZXN0LXJlbmRlci5odG1sCiAgIFsyMl06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNjcwL3No
YXJkLWljbGIzL2lndEBnZW1fZXhlY19zY2hlZHVsZUBzbW9rZXRlc3QtcmVuZGVyLmh0bWwKCiAg
KiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVjazoKICAgIC0gc2hhcmQtaWNsYjogICAg
ICAgICBbSU5DT01QTEVURV1bMjNdIChbZmRvIzEwNzcxM10gLyBbZmRvIzEwODU2OV0pIC0+IFtQ
QVNTXVsyNF0KICAgWzIzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNjQ5OC9zaGFyZC1pY2xiNC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVj
ay5odG1sCiAgIFsyNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEzNjcwL3NoYXJkLWljbGI4L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2No
ZWNrLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9sZWdhY3lAMngtbG9uZy1jdXJzb3ItdnMtZmxp
cC1hdG9taWM6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW0ZBSUxdWzI1XSAoW2ZkbyMxMDU3
NjddKSAtPiBbUEFTU11bMjZdCiAgIFsyNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzY0OTgvc2hhcmQtaHN3Ni9pZ3RAa21zX2N1cnNvcl9sZWdhY3lA
MngtbG9uZy1jdXJzb3ItdnMtZmxpcC1hdG9taWMuaHRtbAogICBbMjZdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzY3MC9zaGFyZC1oc3c1L2ln
dEBrbXNfY3Vyc29yX2xlZ2FjeUAyeC1sb25nLWN1cnNvci12cy1mbGlwLWF0b21pYy5odG1sCgog
ICogaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZDoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAg
ICBbSU5DT01QTEVURV1bMjddIChbZmRvIzEwOTUwN10pIC0+IFtQQVNTXVsyOF0KICAgWzI3XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjQ5OC9zaGFy
ZC1za2wxMC9pZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLmh0bWwKICAgWzI4XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM2NzAvc2hhcmQt
c2tsOS9pZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBA
ZmxpcC12cy1zdXNwZW5kLWludGVycnVwdGlibGU6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAg
W0RNRVNHLVdBUk5dWzI5XSAoW2ZkbyMxMDg1NjZdKSAtPiBbUEFTU11bMzBdICsyIHNpbWlsYXIg
aXNzdWVzCiAgIFsyOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzY0OTgvc2hhcmQtYXBsMS9pZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVy
cnVwdGlibGUuaHRtbAogICBbMzBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMzY3MC9zaGFyZC1hcGw2L2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1
c3BlbmQtaW50ZXJydXB0aWJsZS5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2lu
Z0BmYmMtMXAtcHJpbXNjcm4tcHJpLWluZGZiLWRyYXctcHdyaXRlOgogICAgLSBzaGFyZC1pY2xi
OiAgICAgICAgIFtGQUlMXVszMV0gKFtmZG8jMTAzMTY3XSkgLT4gW1BBU1NdWzMyXSArNCBzaW1p
bGFyIGlzc3VlcwogICBbMzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82NDk4L3NoYXJkLWljbGI0L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdA
ZmJjLTFwLXByaW1zY3JuLXByaS1pbmRmYi1kcmF3LXB3cml0ZS5odG1sCiAgIFszMl06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNjcwL3NoYXJk
LWljbGI2L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3JuLXByaS1p
bmRmYi1kcmF3LXB3cml0ZS5odG1sCgogICogaWd0QGttc19waXBlX2NyY19iYXNpY0BzdXNwZW5k
LXJlYWQtY3JjLXBpcGUtYToKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbRE1FU0ctV0FSTl1b
MzNdIChbZmRvIzEwODU2Nl0pIC0+IFtQQVNTXVszNF0gKzIgc2ltaWxhciBpc3N1ZXMKICAgWzMz
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjQ5OC9z
aGFyZC1rYmwzL2lndEBrbXNfcGlwZV9jcmNfYmFzaWNAc3VzcGVuZC1yZWFkLWNyYy1waXBlLWEu
aHRtbAogICBbMzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMzY3MC9zaGFyZC1rYmwyL2lndEBrbXNfcGlwZV9jcmNfYmFzaWNAc3VzcGVuZC1y
ZWFkLWNyYy1waXBlLWEuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfbG93cmVzQHBpcGUtYS10aWxp
bmcteDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbRkFJTF1bMzVdIChbZmRvIzEwMzE2Nl0p
IC0+IFtQQVNTXVszNl0KICAgWzM1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjQ5OC9zaGFyZC1pY2xiMS9pZ3RAa21zX3BsYW5lX2xvd3Jlc0BwaXBl
LWEtdGlsaW5nLXguaHRtbAogICBbMzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xMzY3MC9zaGFyZC1pY2xiNi9pZ3RAa21zX3BsYW5lX2xvd3Jl
c0BwaXBlLWEtdGlsaW5nLXguaHRtbAoKICAqIGlndEBrbXNfcHNyQHBzcjJfcHJpbWFyeV9tbWFw
X2NwdToKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1bMzddIChbZmRvIzEwOTQ0MV0p
IC0+IFtQQVNTXVszOF0gKzEgc2ltaWxhciBpc3N1ZQogICBbMzddOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NDk4L3NoYXJkLWljbGI1L2lndEBrbXNf
cHNyQHBzcjJfcHJpbWFyeV9tbWFwX2NwdS5odG1sCiAgIFszOF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNjcwL3NoYXJkLWljbGIyL2lndEBr
bXNfcHNyQHBzcjJfcHJpbWFyeV9tbWFwX2NwdS5odG1sCgogIAojIyMjIFdhcm5pbmdzICMjIyMK
CiAgKiBpZ3RAa21zX2RwX2RzY0BiYXNpYy1kc2MtZW5hYmxlLWVkcDoKICAgIC0gc2hhcmQtaWNs
YjogICAgICAgICBbRE1FU0ctV0FSTl1bMzldIChbZmRvIzEwNzcyNF0pIC0+IFtTS0lQXVs0MF0g
KFtmZG8jMTA5MzQ5XSkKICAgWzM5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjQ5OC9zaGFyZC1pY2xiMi9pZ3RAa21zX2RwX2RzY0BiYXNpYy1kc2Mt
ZW5hYmxlLWVkcC5odG1sCiAgIFs0MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzNjcwL3NoYXJkLWljbGIxL2lndEBrbXNfZHBfZHNjQGJhc2lj
LWRzYy1lbmFibGUtZWRwLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZi
Y3Bzci0xcC1vZmZzY3Jlbi1wcmktc2hyZmItZHJhdy1tbWFwLXdjOgogICAgLSBzaGFyZC1za2w6
ICAgICAgICAgIFtGQUlMXVs0MV0gKFtmZG8jMTA4MDQwXSkgLT4gW0ZBSUxdWzQyXSAoW2ZkbyMx
MDMxNjddKQogICBbNDFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82NDk4L3NoYXJkLXNrbDEwL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJj
cHNyLTFwLW9mZnNjcmVuLXByaS1zaHJmYi1kcmF3LW1tYXAtd2MuaHRtbAogICBbNDJdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzY3MC9zaGFy
ZC1za2w5L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLW9mZnNjcmVuLXBy
aS1zaHJmYi1kcmF3LW1tYXAtd2MuaHRtbAoKICAKICBbZmRvIzEwMDM2OF06IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMDM2OAogIFtmZG8jMTAzMTY2XTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTY2CiAgW2Zk
byMxMDMxNjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MDMxNjcKICBbZmRvIzEwMzM1NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTEwMzM1NQogIFtmZG8jMTAzNTQwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzNTQwCiAgW2ZkbyMxMDU0MTFdOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDU0MTEKICBbZmRvIzEwNTc2N106IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNTc2NwogIFtmZG8j
MTA3NzEzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3
NzEzCiAgW2ZkbyMxMDc3MjRdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMDc3MjQKICBbZmRvIzEwODA0MF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTEwODA0MAogIFtmZG8jMTA4NTY2XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4NTY2CiAgW2ZkbyMxMDg1NjldOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg1NjkKICBbZmRvIzEw
OTI3MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3
MQogIFtmZG8jMTA5MzQ5XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA5MzQ5CiAgW2ZkbyMxMDk0NDFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMDk0NDEKICBbZmRvIzEwOTUwN106IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTUwNwoKClBhcnRpY2lwYXRpbmcgaG9zdHMg
KDEwIC0+IDEwKQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTm8gY2hhbmdlcyBp
biBwYXJ0aWNpcGF0aW5nIGhvc3RzCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICog
TGludXg6IENJX0RSTV82NDk4IC0+IFBhdGNod29ya18xMzY3MAoKICBDSV9EUk1fNjQ5ODogZDhi
NTNiMGVhYmJkMDFmNGVmYzA5MWU5Y2FkYzVjZGU0MWE2MzYyYSBAIGdpdDovL2Fub25naXQuZnJl
ZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElHVF81MTAwOiAwZWE2OGExZWZiZmNjNDk2MWYy
ZjgxNmFiNTllNGFkODEzNmM2MjUwIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9y
Zy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzEzNjcwOiBiMmUwNzc1MzgyYzFjYmJm
NGVkMDg5ZTdjZWZkZDdlMTc5OWUxNmIxIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcv
Z2Z4LWNpL2xpbnV4CiAgcGlnbGl0XzQ1MDk6IGZkYzVhNGNhMTExMjRhYjg0MTNjNzk4ODg5NmVl
YzRjOTczMzY2OTQgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9waWdsaXQKCj09IExv
Z3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzY3MC8KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
