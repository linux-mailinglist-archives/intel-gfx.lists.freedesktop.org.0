Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5DD7B1D95
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2019 14:22:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC4046F38E;
	Fri, 13 Sep 2019 12:22:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 60D596F38D;
 Fri, 13 Sep 2019 12:22:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5E508A0087;
 Fri, 13 Sep 2019 12:22:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 13 Sep 2019 12:22:23 -0000
Message-ID: <20190913122223.32426.73304@emeril.freedesktop.org>
References: <20190911104011.22860-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190911104011.22860-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EIGT=3A_success_for_drm/?=
 =?utf-8?q?i915=3A_Don=27t_mix_srcu_tag_and_negative_error_codes_=28rev2?=
 =?utf-8?q?=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IERvbid0IG1peCBzcmN1IHRh
ZyBhbmQgbmVnYXRpdmUgZXJyb3IgY29kZXMgKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NjUyNC8KU3RhdGUgOiBzdWNjZXNzCgo9PSBTdW1t
YXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV82ODg1X2Z1bGwgLT4gUGF0
Y2h3b3JrXzE0Mzg2X2Z1bGwKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PQoKU3VtbWFyeQotLS0tLS0tCgogICoqU1VDQ0VTUyoqCgogIE5vIHJlZ3Jl
c3Npb25zIGZvdW5kLgoKICAKCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUg
dGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE0Mzg2X2Z1bGwgdGhhdCBjb21lIGZyb20g
a25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMK
CiAgKiBpZ3RAZ2VtX2N0eF9pc29sYXRpb25AcmNzMC1zMzoKICAgIC0gc2hhcmQtYXBsOiAgICAg
ICAgICBbUEFTU11bMV0gLT4gW0lOQ09NUExFVEVdWzJdIChbZmRvIzEwMzkyN10pICs1IHNpbWls
YXIgaXNzdWVzCiAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNjg4NS9zaGFyZC1hcGw4L2lndEBnZW1fY3R4X2lzb2xhdGlvbkByY3MwLXMzLmh0
bWwKICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDM4Ni9zaGFyZC1hcGw0L2lndEBnZW1fY3R4X2lzb2xhdGlvbkByY3MwLXMzLmh0bWwK
CiAgKiBpZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAZmlmby1ic2QxOgogICAgLSBzaGFyZC1pY2xiOiAg
ICAgICAgIFtQQVNTXVszXSAtPiBbU0tJUF1bNF0gKFtmZG8jMTA5Mjc2XSkgKzEyIHNpbWlsYXIg
aXNzdWVzCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjg4NS9zaGFyZC1pY2xiNC9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAZmlmby1ic2QxLmh0
bWwKICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDM4Ni9zaGFyZC1pY2xiNy9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAZmlmby1ic2QxLmh0
bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcmVvcmRlci13aWRlLWJzZDoKICAgIC0gc2hh
cmQtaWNsYjogICAgICAgICBbUEFTU11bNV0gLT4gW1NLSVBdWzZdIChbZmRvIzExMTMyNV0pICs1
IHNpbWlsYXIgaXNzdWVzCiAgIFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjg4NS9zaGFyZC1pY2xiOC9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcmVv
cmRlci13aWRlLWJzZC5odG1sCiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQzODYvc2hhcmQtaWNsYjQvaWd0QGdlbV9leGVjX3NjaGVk
dWxlQHJlb3JkZXItd2lkZS1ic2QuaHRtbAoKICAqIGlndEBrbXNfYXRvbWljX3RyYW5zaXRpb25A
cGxhbmUtYWxsLXRyYW5zaXRpb24tZmVuY2luZzoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBb
UEFTU11bN10gLT4gW0lOQ09NUExFVEVdWzhdIChbZmRvIzEwNzcxM10pCiAgIFs3XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjg4NS9zaGFyZC1pY2xi
NC9pZ3RAa21zX2F0b21pY190cmFuc2l0aW9uQHBsYW5lLWFsbC10cmFuc2l0aW9uLWZlbmNpbmcu
aHRtbAogICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE0Mzg2L3NoYXJkLWljbGI3L2lndEBrbXNfYXRvbWljX3RyYW5zaXRpb25AcGxhbmUt
YWxsLXRyYW5zaXRpb24tZmVuY2luZy5odG1sCgogICogaWd0QGttc19idXN5QGV4dGVuZGVkLXBh
Z2VmbGlwLW1vZGVzZXQtaGFuZy1vbGRmYi1yZW5kZXItYToKICAgIC0gc2hhcmQta2JsOiAgICAg
ICAgICBbUEFTU11bOV0gLT4gW0RNRVNHLVdBUk5dWzEwXSAoW2ZkbyMxMDM1NThdIC8gW2ZkbyMx
MDU2MDJdIC8gW2ZkbyMxMTAyMjJdKQogICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzY4ODUvc2hhcmQta2JsMy9pZ3RAa21zX2J1c3lAZXh0ZW5k
ZWQtcGFnZWZsaXAtbW9kZXNldC1oYW5nLW9sZGZiLXJlbmRlci1hLmh0bWwKICAgWzEwXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQzODYvc2hh
cmQta2JsMi9pZ3RAa21zX2J1c3lAZXh0ZW5kZWQtcGFnZWZsaXAtbW9kZXNldC1oYW5nLW9sZGZi
LXJlbmRlci1hLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1jLWN1cnNvci1zdXNw
ZW5kOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVsxMV0gLT4gW0RNRVNHLVdBUk5d
WzEyXSAoW2ZkbyMxMDg1NjZdKSArMSBzaW1pbGFyIGlzc3VlCiAgIFsxMV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY4ODUvc2hhcmQtYXBsNi9pZ3RA
a21zX2N1cnNvcl9jcmNAcGlwZS1jLWN1cnNvci1zdXNwZW5kLmh0bWwKICAgWzEyXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQzODYvc2hhcmQt
YXBsNi9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1jLWN1cnNvci1zdXNwZW5kLmh0bWwKCiAgKiBp
Z3RAa21zX2ZsaXBAMngtZmxpcC12cy1leHBpcmVkLXZibGFuay1pbnRlcnJ1cHRpYmxlOgogICAg
LSBzaGFyZC1nbGs6ICAgICAgICAgIFtQQVNTXVsxM10gLT4gW0ZBSUxdWzE0XSAoW2ZkbyMxMDUz
NjNdKQogICBbMTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82ODg1L3NoYXJkLWdsazIvaWd0QGttc19mbGlwQDJ4LWZsaXAtdnMtZXhwaXJlZC12Ymxh
bmstaW50ZXJydXB0aWJsZS5odG1sCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0Mzg2L3NoYXJkLWdsazEvaWd0QGttc19mbGlwQDJ4
LWZsaXAtdnMtZXhwaXJlZC12YmxhbmstaW50ZXJydXB0aWJsZS5odG1sCgogICogaWd0QGttc19m
cm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtcmdiNTY1LWRyYXctcmVuZGVyOgogICAgLSBzaGFyZC1r
Ymw6ICAgICAgICAgIFtQQVNTXVsxNV0gLT4gW0RNRVNHLUZBSUxdWzE2XSAoW2ZkbyMxMDM1NThd
IC8gW2ZkbyMxMDU2MDJdKQogICBbMTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82ODg1L3NoYXJkLWtibDMvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFj
a2luZ0BmYmMtcmdiNTY1LWRyYXctcmVuZGVyLmh0bWwKICAgWzE2XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQzODYvc2hhcmQta2JsMi9pZ3RA
a21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy1yZ2I1NjUtZHJhdy1yZW5kZXIuaHRtbAoKICAq
IGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLWN1ci1pbmRm
Yi1kcmF3LWJsdDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMTddIC0+IFtGQUlM
XVsxOF0gKFtmZG8jMTAzMTY3XSkgKzIgc2ltaWxhciBpc3N1ZXMKICAgWzE3XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjg4NS9zaGFyZC1pY2xiNS9p
Z3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1jdXItaW5kZmIt
ZHJhdy1ibHQuaHRtbAogICBbMThdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNDM4Ni9zaGFyZC1pY2xiOC9pZ3RAa21zX2Zyb250YnVmZmVyX3Ry
YWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1jdXItaW5kZmItZHJhdy1ibHQuaHRtbAoKICAqIGln
dEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1hLWNvbnN0YW50LWFscGhhLW1pbjoKICAgIC0g
c2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMTldIC0+IFtGQUlMXVsyMF0gKFtmZG8jMTA4MTQ1
XSkKICAgWzE5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNjg4NS9zaGFyZC1za2w3L2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1hLWNvbnN0
YW50LWFscGhhLW1pbi5odG1sCiAgIFsyMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0Mzg2L3NoYXJkLXNrbDIvaWd0QGttc19wbGFuZV9hbHBo
YV9ibGVuZEBwaXBlLWEtY29uc3RhbnQtYWxwaGEtbWluLmh0bWwKCiAgKiBpZ3RAa21zX3BzcjJf
c3VAcGFnZV9mbGlwOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsyMV0gLT4gW1NL
SVBdWzIyXSAoW2ZkbyMxMDk2NDJdIC8gW2ZkbyMxMTEwNjhdKQogICBbMjFdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82ODg1L3NoYXJkLWljbGIyL2ln
dEBrbXNfcHNyMl9zdUBwYWdlX2ZsaXAuaHRtbAogICBbMjJdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDM4Ni9zaGFyZC1pY2xiMy9pZ3RAa21z
X3BzcjJfc3VAcGFnZV9mbGlwLmh0bWwKCiAgKiBpZ3RAa21zX3BzckBwc3IyX3ByaW1hcnlfcGFn
ZV9mbGlwOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsyM10gLT4gW1NLSVBdWzI0
XSAoW2ZkbyMxMDk0NDFdKSArMSBzaW1pbGFyIGlzc3VlCiAgIFsyM106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY4ODUvc2hhcmQtaWNsYjIvaWd0QGtt
c19wc3JAcHNyMl9wcmltYXJ5X3BhZ2VfZmxpcC5odG1sCiAgIFsyNF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0Mzg2L3NoYXJkLWljbGI3L2ln
dEBrbXNfcHNyQHBzcjJfcHJpbWFyeV9wYWdlX2ZsaXAuaHRtbAoKICAqIGlndEBrbXNfcm90YXRp
b25fY3JjQGJhZC1waXhlbC1mb3JtYXQ6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1Nd
WzI1XSAtPiBbSU5DT01QTEVURV1bMjZdIChbZmRvIzEwNzcxM10gLyBbZmRvIzExMDAyNl0pCiAg
IFsyNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY4
ODUvc2hhcmQtaWNsYjIvaWd0QGttc19yb3RhdGlvbl9jcmNAYmFkLXBpeGVsLWZvcm1hdC5odG1s
CiAgIFsyNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0Mzg2L3NoYXJkLWljbGI3L2lndEBrbXNfcm90YXRpb25fY3JjQGJhZC1waXhlbC1mb3Jt
YXQuaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICogaWd0QGdlbV9leGVjX2Jh
bGFuY2VyQHNtb2tlOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVsyN10gKFtmZG8j
MTEwODU0XSkgLT4gW1BBU1NdWzI4XQogICBbMjddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82ODg1L3NoYXJkLWljbGI2L2lndEBnZW1fZXhlY19iYWxh
bmNlckBzbW9rZS5odG1sCiAgIFsyOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0Mzg2L3NoYXJkLWljbGIyL2lndEBnZW1fZXhlY19iYWxhbmNl
ckBzbW9rZS5odG1sCgogICogaWd0QGdlbV9leGVjX3NjaGVkdWxlQGluZGVwZW5kZW50LWJzZDoK
ICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1bMjldIChbZmRvIzExMTMyNV0pIC0+IFtQ
QVNTXVszMF0KICAgWzI5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNjg4NS9zaGFyZC1pY2xiMi9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAaW5kZXBlbmRl
bnQtYnNkLmh0bWwKICAgWzMwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTQzODYvc2hhcmQtaWNsYjMvaWd0QGdlbV9leGVjX3NjaGVkdWxlQGlu
ZGVwZW5kZW50LWJzZC5odG1sCgogICogaWd0QGdlbV9zb2Z0cGluQG5vcmVsb2MtczM6CiAgICAt
IHNoYXJkLXNrbDogICAgICAgICAgW0lOQ09NUExFVEVdWzMxXSAoW2ZkbyMxMDQxMDhdKSAtPiBb
UEFTU11bMzJdCiAgIFszMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzY4ODUvc2hhcmQtc2tsOS9pZ3RAZ2VtX3NvZnRwaW5Abm9yZWxvYy1zMy5odG1s
CiAgIFszMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0Mzg2L3NoYXJkLXNrbDUvaWd0QGdlbV9zb2Z0cGluQG5vcmVsb2MtczMuaHRtbAoKICAq
IGlndEBpOTE1X3BtX3JwbUBzeXN0ZW0tc3VzcGVuZC1leGVjYnVmOgogICAgLSBzaGFyZC1za2w6
ICAgICAgICAgIFtJTkNPTVBMRVRFXVszM10gKFtmZG8jMTA0MTA4XSAvIFtmZG8jMTA3ODA3XSkg
LT4gW1BBU1NdWzM0XQogICBbMzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV82ODg1L3NoYXJkLXNrbDcvaWd0QGk5MTVfcG1fcnBtQHN5c3RlbS1zdXNw
ZW5kLWV4ZWNidWYuaHRtbAogICBbMzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNDM4Ni9zaGFyZC1za2w3L2lndEBpOTE1X3BtX3JwbUBzeXN0
ZW0tc3VzcGVuZC1leGVjYnVmLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9sZWdhY3lAMngtbG9u
Zy1mbGlwLXZzLWN1cnNvci1sZWdhY3k6CiAgICAtIHNoYXJkLWdsazogICAgICAgICAgW0ZBSUxd
WzM1XSAoW2ZkbyMxMDQ4NzNdKSAtPiBbUEFTU11bMzZdCiAgIFszNV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY4ODUvc2hhcmQtZ2xrNi9pZ3RAa21z
X2N1cnNvcl9sZWdhY3lAMngtbG9uZy1mbGlwLXZzLWN1cnNvci1sZWdhY3kuaHRtbAogICBbMzZd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDM4
Ni9zaGFyZC1nbGs4L2lndEBrbXNfY3Vyc29yX2xlZ2FjeUAyeC1sb25nLWZsaXAtdnMtY3Vyc29y
LWxlZ2FjeS5odG1sCgogICogaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12Ymxhbms6CiAg
ICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzM3XSAoW2ZkbyMxMDI4ODddKSAtPiBbUEFT
U11bMzhdCiAgIFszN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzY4ODUvc2hhcmQtc2tsNy9pZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFu
ay5odG1sCiAgIFszOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE0Mzg2L3NoYXJkLXNrbDIvaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12
YmxhbmsuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLWludGVy
cnVwdGlibGU6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzM5XSAoW2ZkbyMxMDUz
NjNdKSAtPiBbUEFTU11bNDBdCiAgIFszOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzY4ODUvc2hhcmQtc2tsMy9pZ3RAa21zX2ZsaXBAZmxpcC12cy1l
eHBpcmVkLXZibGFuay1pbnRlcnJ1cHRpYmxlLmh0bWwKICAgWzQwXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQzODYvc2hhcmQtc2tsNC9pZ3RA
a21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuay1pbnRlcnJ1cHRpYmxlLmh0bWwKCiAgKiBp
Z3RAa21zX2ZsaXBAZmxpcC12cy1mZW5jZXMtaW50ZXJydXB0aWJsZToKICAgIC0gc2hhcmQtaWNs
YjogICAgICAgICBbSU5DT01QTEVURV1bNDFdIChbZmRvIzEwNzcxM10pIC0+IFtQQVNTXVs0Ml0g
KzEgc2ltaWxhciBpc3N1ZQogICBbNDFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82ODg1L3NoYXJkLWljbGIxL2lndEBrbXNfZmxpcEBmbGlwLXZzLWZl
bmNlcy1pbnRlcnJ1cHRpYmxlLmh0bWwKICAgWzQyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQzODYvc2hhcmQtaWNsYjYvaWd0QGttc19mbGlw
QGZsaXAtdnMtZmVuY2VzLWludGVycnVwdGlibGUuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBmbGlw
LXZzLXBhbm5pbmctaW50ZXJydXB0aWJsZToKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbRE1F
U0ctV0FSTl1bNDNdIChbZmRvIzEwNjEwN10pIC0+IFtQQVNTXVs0NF0KICAgWzQzXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjg4NS9zaGFyZC1za2wx
L2lndEBrbXNfZmxpcEBmbGlwLXZzLXBhbm5pbmctaW50ZXJydXB0aWJsZS5odG1sCiAgIFs0NF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0Mzg2
L3NoYXJkLXNrbDgvaWd0QGttc19mbGlwQGZsaXAtdnMtcGFubmluZy1pbnRlcnJ1cHRpYmxlLmh0
bWwKCiAgKiBpZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kOgogICAgLSBzaGFyZC1za2w6ICAg
ICAgICAgIFtJTkNPTVBMRVRFXVs0NV0gKFtmZG8jMTA5NTA3XSkgLT4gW1BBU1NdWzQ2XSArMSBz
aW1pbGFyIGlzc3VlCiAgIFs0NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzY4ODUvc2hhcmQtc2tsMS9pZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5k
Lmh0bWwKICAgWzQ2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTQzODYvc2hhcmQtc2tsOC9pZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLmh0
bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy1yZ2I1NjUtZHJhdy1wd3Jp
dGU6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW0ZBSUxdWzQ3XSAoW2ZkbyMxMDMxNjddKSAt
PiBbUEFTU11bNDhdICs3IHNpbWlsYXIgaXNzdWVzCiAgIFs0N106IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY4ODUvc2hhcmQtaWNsYjQvaWd0QGttc19m
cm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtcmdiNTY1LWRyYXctcHdyaXRlLmh0bWwKICAgWzQ4XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQzODYv
c2hhcmQtaWNsYjgvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtcmdiNTY1LWRyYXct
cHdyaXRlLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lQHBsYW5lLXBhbm5pbmctYm90dG9tLXJpZ2h0
LXN1c3BlbmQtcGlwZS1hLXBsYW5lczoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbRE1FU0ct
V0FSTl1bNDldIChbZmRvIzEwODU2Nl0pIC0+IFtQQVNTXVs1MF0gKzIgc2ltaWxhciBpc3N1ZXMK
ICAgWzQ5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
Njg4NS9zaGFyZC1hcGwxL2lndEBrbXNfcGxhbmVAcGxhbmUtcGFubmluZy1ib3R0b20tcmlnaHQt
c3VzcGVuZC1waXBlLWEtcGxhbmVzLmh0bWwKICAgWzUwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQzODYvc2hhcmQtYXBsNC9pZ3RAa21zX3Bs
YW5lQHBsYW5lLXBhbm5pbmctYm90dG9tLXJpZ2h0LXN1c3BlbmQtcGlwZS1hLXBsYW5lcy5odG1s
CgogICogaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWMtY292ZXJhZ2UtN2VmYzoKICAg
IC0gc2hhcmQtc2tsOiAgICAgICAgICBbRkFJTF1bNTFdIChbZmRvIzEwODE0NV0gLyBbZmRvIzEx
MDQwM10pIC0+IFtQQVNTXVs1Ml0KICAgWzUxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNjg4NS9zaGFyZC1za2wxL2lndEBrbXNfcGxhbmVfYWxwaGFf
YmxlbmRAcGlwZS1jLWNvdmVyYWdlLTdlZmMuaHRtbAogICBbNTJdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDM4Ni9zaGFyZC1za2w3L2lndEBr
bXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1jLWNvdmVyYWdlLTdlZmMuaHRtbAoKICAqIGlndEBr
bXNfcHNyQHBzcjJfcHJpbWFyeV9tbWFwX2d0dDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBb
U0tJUF1bNTNdIChbZmRvIzEwOTQ0MV0pIC0+IFtQQVNTXVs1NF0KICAgWzUzXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjg4NS9zaGFyZC1pY2xiNi9p
Z3RAa21zX3BzckBwc3IyX3ByaW1hcnlfbW1hcF9ndHQuaHRtbAogICBbNTRdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDM4Ni9zaGFyZC1pY2xi
Mi9pZ3RAa21zX3BzckBwc3IyX3ByaW1hcnlfbW1hcF9ndHQuaHRtbAoKICAqIGlndEBrbXNfdmJs
YW5rQHBpcGUtYy10cy1jb250aW51YXRpb24tbW9kZXNldC1oYW5nOgogICAgLSBzaGFyZC1hcGw6
ICAgICAgICAgIFtJTkNPTVBMRVRFXVs1NV0gKFtmZG8jMTAzOTI3XSkgLT4gW1BBU1NdWzU2XSAr
MSBzaW1pbGFyIGlzc3VlCiAgIFs1NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzY4ODUvc2hhcmQtYXBsMS9pZ3RAa21zX3ZibGFua0BwaXBlLWMtdHMt
Y29udGludWF0aW9uLW1vZGVzZXQtaGFuZy5odG1sCiAgIFs1Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0Mzg2L3NoYXJkLWFwbDEvaWd0QGtt
c192YmxhbmtAcGlwZS1jLXRzLWNvbnRpbnVhdGlvbi1tb2Rlc2V0LWhhbmcuaHRtbAoKICAqIGln
dEBwZXJmQHBvbGxpbmc6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzU3XSAoW2Zk
byMxMTA3MjhdKSAtPiBbUEFTU11bNThdCiAgIFs1N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY4ODUvc2hhcmQtc2tsMS9pZ3RAcGVyZkBwb2xsaW5n
Lmh0bWwKICAgWzU4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTQzODYvc2hhcmQtc2tsOC9pZ3RAcGVyZkBwb2xsaW5nLmh0bWwKCiAgKiBpZ3RA
cHJpbWVfdmdlbUBmZW5jZS13YWl0LWJzZDI6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NL
SVBdWzU5XSAoW2ZkbyMxMDkyNzZdKSAtPiBbUEFTU11bNjBdICsxNSBzaW1pbGFyIGlzc3Vlcwog
ICBbNTldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
ODg1L3NoYXJkLWljbGI4L2lndEBwcmltZV92Z2VtQGZlbmNlLXdhaXQtYnNkMi5odG1sCiAgIFs2
MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
Mzg2L3NoYXJkLWljbGI0L2lndEBwcmltZV92Z2VtQGZlbmNlLXdhaXQtYnNkMi5odG1sCgogIAoj
IyMjIFdhcm5pbmdzICMjIyMKCiAgKiBpZ3RAZ2VtX21vY3Nfc2V0dGluZ3NAbW9jcy1yZXNldC1i
c2QyOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVs2MV0gKFtmZG8jMTA5Mjc2XSkg
LT4gW0ZBSUxdWzYyXSAoW2ZkbyMxMTEzMzBdKQogICBbNjFdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82ODg1L3NoYXJkLWljbGI2L2lndEBnZW1fbW9j
c19zZXR0aW5nc0Btb2NzLXJlc2V0LWJzZDIuaHRtbAogICBbNjJdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDM4Ni9zaGFyZC1pY2xiMi9pZ3RA
Z2VtX21vY3Nfc2V0dGluZ3NAbW9jcy1yZXNldC1ic2QyLmh0bWwKCiAgKiBpZ3RAa21zX2J1c3lA
YmFzaWMtbW9kZXNldC1lOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtTS0lQXVs2M10gKFtm
ZG8jMTA5MjcxXSAvIFtmZG8jMTA5Mjc4XSkgLT4gW1NLSVBdWzY0XSAoW2ZkbyMxMDU2MDJdIC8g
W2ZkbyMxMDkyNzFdIC8gW2ZkbyMxMDkyNzhdKQogICBbNjNdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82ODg1L3NoYXJkLWtibDMvaWd0QGttc19idXN5
QGJhc2ljLW1vZGVzZXQtZS5odG1sCiAgIFs2NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0Mzg2L3NoYXJkLWtibDIvaWd0QGttc19idXN5QGJh
c2ljLW1vZGVzZXQtZS5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bwc3It
MnAtc2NuZHNjcm4tc2hyZmItbXNmbGlwLWJsdDoKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBb
U0tJUF1bNjVdIChbZmRvIzEwOTI3MV0pIC0+IFtTS0lQXVs2Nl0gKFtmZG8jMTA1NjAyXSAvIFtm
ZG8jMTA5MjcxXSkgKzEgc2ltaWxhciBpc3N1ZQogICBbNjVdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82ODg1L3NoYXJkLWtibDMvaWd0QGttc19mcm9u
dGJ1ZmZlcl90cmFja2luZ0Bwc3ItMnAtc2NuZHNjcm4tc2hyZmItbXNmbGlwLWJsdC5odG1sCiAg
IFs2Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE0Mzg2L3NoYXJkLWtibDIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bwc3ItMnAtc2Nu
ZHNjcm4tc2hyZmItbXNmbGlwLWJsdC5odG1sCgogIAogIFtmZG8jMTAyODg3XTogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAyODg3CiAgW2ZkbyMxMDMxNjdd
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxNjcKICBb
ZmRvIzEwMzU1OF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTEwMzU1OAogIFtmZG8jMTAzOTI3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MTAzOTI3CiAgW2ZkbyMxMDQxMDhdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDQxMDgKICBbZmRvIzEwNDg3M106IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNDg3MwogIFtmZG8jMTA1MzYzXTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA1MzYzCiAgW2Zk
byMxMDU2MDJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MDU2MDIKICBbZmRvIzEwNjEwN106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTEwNjEwNwogIFtmZG8jMTA3NzEzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzEzCiAgW2ZkbyMxMDc4MDddOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc4MDcKICBbZmRvIzEwODE0NV06IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODE0NQogIFtmZG8j
MTA4NTY2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4
NTY2CiAgW2ZkbyMxMDkyNzFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMDkyNzEKICBbZmRvIzEwOTI3Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTEwOTI3NgogIFtmZG8jMTA5Mjc4XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5Mjc4CiAgW2ZkbyMxMDk0NDFdOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk0NDEKICBbZmRvIzEw
OTUwN106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTUw
NwogIFtmZG8jMTA5NjQyXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA5NjQyCiAgW2ZkbyMxMTAwMjZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMTAwMjYKICBbZmRvIzExMDIyMl06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDIyMgogIFtmZG8jMTEwNDAzXTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwNDAzCiAgW2ZkbyMxMTA3
MjhdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA3MjgK
ICBbZmRvIzExMDg1NF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTExMDg1NAogIFtmZG8jMTExMDY4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTExMDY4CiAgW2ZkbyMxMTEzMjVdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEzMjUKICBbZmRvIzExMTMzMF06IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTMzMAoKClBhcnRpY2lwYXRp
bmcgaG9zdHMgKDEwIC0+IDEwKQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTm8g
Y2hhbmdlcyBpbiBwYXJ0aWNpcGF0aW5nIGhvc3RzCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0t
LS0tCgogICogQ0k6IENJLTIwMTkwNTI5IC0+IE5vbmUKICAqIExpbnV4OiBDSV9EUk1fNjg4NSAt
PiBQYXRjaHdvcmtfMTQzODYKCiAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5CiAgQ0lfRFJNXzY4ODU6
IDExNzg2ZDI3Y2IwMjlhMDgzNTU2YWM5YjgyZTMzZDc0ZTI1MGNlMjYgQCBnaXQ6Ly9hbm9uZ2l0
LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBJR1RfNTE3ODogZWZiNDUzOTQ5NGQ5NGYw
MzM3NDg3NGQzYjYxYmQwNGVmMzgwMmFhYSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3Jn
L3hvcmcvYXBwL2ludGVsLWdwdS10b29scwogIFBhdGNod29ya18xNDM4NjogMWQ3YjliYjEyNWVj
OTkzMDJlMDNlMjBiZmU2MjNlNTJjZDIzMjczYiBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Au
b3JnL2dmeC1jaS9saW51eAogIHBpZ2xpdF80NTA5OiBmZGM1YTRjYTExMTI0YWI4NDEzYzc5ODg4
OTZlZWM0Yzk3MzM2Njk0IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvcGlnbGl0Cgo9
PSBMb2dzID09CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQzODYvCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
