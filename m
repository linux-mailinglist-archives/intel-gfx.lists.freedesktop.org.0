Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9AE98898
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 02:41:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BFF76E9B7;
	Thu, 22 Aug 2019 00:41:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1F38C6EA46;
 Thu, 22 Aug 2019 00:41:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 17458A3ECB;
 Thu, 22 Aug 2019 00:41:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 22 Aug 2019 00:41:40 -0000
Message-ID: <20190822004140.4279.66203@emeril.freedesktop.org>
References: <20190821123234.19194-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190821123234.19194-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EIGT=3A_success_for_drm/?=
 =?utf-8?q?i915=3A_Replace_PIN=5FNONFAULT_with_calls_to_PIN=5FNOEVICT_=28r?=
 =?utf-8?q?ev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFJlcGxhY2UgUElOX05PTkZB
VUxUIHdpdGggY2FsbHMgdG8gUElOX05PRVZJQ1QgKHJldjMpClVSTCAgIDogaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NTIyMi8KU3RhdGUgOiBzdWNjZXNzCgo9PSBT
dW1tYXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV82NzU0X2Z1bGwgLT4g
UGF0Y2h3b3JrXzE0MTIwX2Z1bGwKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PQoKU3VtbWFyeQotLS0tLS0tCgogICoqU1VDQ0VTUyoqCgogIE5vIHJl
Z3Jlc3Npb25zIGZvdW5kLgoKICAKCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBh
cmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE0MTIwX2Z1bGwgdGhhdCBjb21lIGZy
b20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMj
IyMKCiAgKiBpZ3RAZ2VtX2N0eF9zaGFyZWRAZXhlYy1zaW5nbGUtdGltZWxpbmUtYnNkOgogICAg
LSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsxXSAtPiBbU0tJUF1bMl0gKFtmZG8jMTEwODQx
XSkKICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82NzU0L3NoYXJkLWljbGI3L2lndEBnZW1fY3R4X3NoYXJlZEBleGVjLXNpbmdsZS10aW1lbGlu
ZS1ic2QuaHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE0MTIwL3NoYXJkLWljbGIxL2lndEBnZW1fY3R4X3NoYXJlZEBleGVjLXNp
bmdsZS10aW1lbGluZS1ic2QuaHRtbAoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0
LWhhbmctYmx0OgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVszXSAtPiBbSU5DT01Q
TEVURV1bNF0gKFtmZG8jMTAzOTI3XSkgKzEgc2ltaWxhciBpc3N1ZQogICBbM106IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NTQvc2hhcmQtYXBsNC9p
Z3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1oYW5nLWJsdC5odG1sCiAgIFs0XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxMjAvc2hhcmQt
YXBsMy9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1oYW5nLWJsdC5odG1sCgogICogaWd0
QGdlbV9leGVjX3NjaGVkdWxlQHJlb3JkZXItd2lkZS1ic2Q6CiAgICAtIHNoYXJkLWljbGI6ICAg
ICAgICAgW1BBU1NdWzVdIC0+IFtTS0lQXVs2XSAoW2ZkbyMxMTEzMjVdKSArMSBzaW1pbGFyIGlz
c3VlCiAgIFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNjc1NC9zaGFyZC1pY2xiMy9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcmVvcmRlci13aWRlLWJz
ZC5odG1sCiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTQxMjAvc2hhcmQtaWNsYjIvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHJlb3JkZXIt
d2lkZS1ic2QuaHRtbAoKICAqIGlndEBnZW1fcGVyc2lzdGVudF9yZWxvY3NAZm9ya2VkLWludGVy
cnVwdGlibGU6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzddIC0+IFtJTkNPTVBM
RVRFXVs4XSAoW2ZkbyMxMDc3MTNdKQogICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NTQvc2hhcmQtaWNsYjUvaWd0QGdlbV9wZXJzaXN0ZW50
X3JlbG9jc0Bmb3JrZWQtaW50ZXJydXB0aWJsZS5odG1sCiAgIFs4XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxMjAvc2hhcmQtaWNsYjcvaWd0
QGdlbV9wZXJzaXN0ZW50X3JlbG9jc0Bmb3JrZWQtaW50ZXJydXB0aWJsZS5odG1sCgogICogaWd0
QGdlbV93b3JrYXJvdW5kc0BzdXNwZW5kLXJlc3VtZS1jb250ZXh0OgogICAgLSBzaGFyZC1hcGw6
ICAgICAgICAgIFtQQVNTXVs5XSAtPiBbRE1FU0ctV0FSTl1bMTBdIChbZmRvIzEwODU2Nl0pICs4
IHNpbWlsYXIgaXNzdWVzCiAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjc1NC9zaGFyZC1hcGw1L2lndEBnZW1fd29ya2Fyb3VuZHNAc3VzcGVu
ZC1yZXN1bWUtY29udGV4dC5odG1sCiAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTIwL3NoYXJkLWFwbDEvaWd0QGdlbV93b3JrYXJv
dW5kc0BzdXNwZW5kLXJlc3VtZS1jb250ZXh0Lmh0bWwKCiAgKiBpZ3RAaTkxNV9wbV9ycHNAbWlu
LW1heC1jb25maWctbG9hZGVkOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsxMV0g
LT4gW0ZBSUxdWzEyXSAoW2ZkbyMxMTE0MDldKQogICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzU0L3NoYXJkLWljbGIzL2lndEBpOTE1X3Bt
X3Jwc0BtaW4tbWF4LWNvbmZpZy1sb2FkZWQuaHRtbAogICBbMTJdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDEyMC9zaGFyZC1pY2xiMi9pZ3RA
aTkxNV9wbV9ycHNAbWluLW1heC1jb25maWctbG9hZGVkLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBA
ZHBtcy12cy12YmxhbmstcmFjZToKICAgIC0gc2hhcmQtZ2xrOiAgICAgICAgICBbUEFTU11bMTNd
IC0+IFtGQUlMXVsxNF0gKFtmZG8jMTAzMDYwXSkKICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc1NC9zaGFyZC1nbGs2L2lndEBrbXNfZmxp
cEBkcG1zLXZzLXZibGFuay1yYWNlLmh0bWwKICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxMjAvc2hhcmQtZ2xrNC9pZ3RAa21zX2Zs
aXBAZHBtcy12cy12YmxhbmstcmFjZS5odG1sCgogICogaWd0QGttc19mbGlwQGZsaXAtdnMtZXhw
aXJlZC12YmxhbmstaW50ZXJydXB0aWJsZToKICAgIC0gc2hhcmQtZ2xrOiAgICAgICAgICBbUEFT
U11bMTVdIC0+IFtGQUlMXVsxNl0gKFtmZG8jMTA1MzYzXSkKICAgWzE1XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc1NC9zaGFyZC1nbGsxL2lndEBr
bXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLWludGVycnVwdGlibGUuaHRtbAogICBbMTZd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDEy
MC9zaGFyZC1nbGsyL2lndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLWludGVycnVw
dGlibGUuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1z
Y3JuLXNwci1pbmRmYi1kcmF3LXJlbmRlcjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFT
U11bMTddIC0+IFtGQUlMXVsxOF0gKFtmZG8jMTAzMTY3XSkgKzIgc2ltaWxhciBpc3N1ZXMKICAg
WzE3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc1
NC9zaGFyZC1pY2xiNS9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmltc2Ny
bi1zcHItaW5kZmItZHJhdy1yZW5kZXIuaHRtbAogICBbMThdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDEyMC9zaGFyZC1pY2xiOC9pZ3RAa21z
X2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmltc2Nybi1zcHItaW5kZmItZHJhdy1yZW5k
ZXIuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1iLWNvbnN0YW50LWFs
cGhhLW1pbjoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMTldIC0+IFtGQUlMXVsy
MF0gKFtmZG8jMTA4MTQ1XSkKICAgWzE5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNjc1NC9zaGFyZC1za2wyL2lndEBrbXNfcGxhbmVfYWxwaGFfYmxl
bmRAcGlwZS1iLWNvbnN0YW50LWFscGhhLW1pbi5odG1sCiAgIFsyMF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTIwL3NoYXJkLXNrbDIvaWd0
QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWItY29uc3RhbnQtYWxwaGEtbWluLmh0bWwKCiAg
KiBpZ3RAa21zX3BzckBwc3IyX3ByaW1hcnlfbW1hcF9jcHU6CiAgICAtIHNoYXJkLWljbGI6ICAg
ICAgICAgW1BBU1NdWzIxXSAtPiBbU0tJUF1bMjJdIChbZmRvIzEwOTQ0MV0pICs2IHNpbWlsYXIg
aXNzdWVzCiAgIFsyMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzY3NTQvc2hhcmQtaWNsYjIvaWd0QGttc19wc3JAcHNyMl9wcmltYXJ5X21tYXBfY3B1
Lmh0bWwKICAgWzIyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTQxMjAvc2hhcmQtaWNsYjQvaWd0QGttc19wc3JAcHNyMl9wcmltYXJ5X21tYXBf
Y3B1Lmh0bWwKCiAgKiBpZ3RAa21zX3NldG1vZGVAYmFzaWM6CiAgICAtIHNoYXJkLWtibDogICAg
ICAgICAgW1BBU1NdWzIzXSAtPiBbRkFJTF1bMjRdIChbZmRvIzk5OTEyXSkKICAgWzIzXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc1NC9zaGFyZC1r
YmwyL2lndEBrbXNfc2V0bW9kZUBiYXNpYy5odG1sCiAgIFsyNF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTIwL3NoYXJkLWtibDMvaWd0QGtt
c19zZXRtb2RlQGJhc2ljLmh0bWwKCiAgKiBpZ3RAcHJpbWVfYnVzeUBoYW5nLWJzZDI6CiAgICAt
IHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzI1XSAtPiBbU0tJUF1bMjZdIChbZmRvIzEwOTI3
Nl0pICsxMCBzaW1pbGFyIGlzc3VlcwogICBbMjVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzU0L3NoYXJkLWljbGIxL2lndEBwcmltZV9idXN5QGhh
bmctYnNkMi5odG1sCiAgIFsyNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE0MTIwL3NoYXJkLWljbGI3L2lndEBwcmltZV9idXN5QGhhbmctYnNk
Mi5odG1sCgogICogaWd0QHRvb2xzX3Rlc3RAdG9vbHNfdGVzdDoKICAgIC0gc2hhcmQta2JsOiAg
ICAgICAgICBbUEFTU11bMjddIC0+IFtTS0lQXVsyOF0gKFtmZG8jMTA5MjcxXSkgKzEgc2ltaWxh
ciBpc3N1ZQogICBbMjddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82NzU0L3NoYXJkLWtibDEvaWd0QHRvb2xzX3Rlc3RAdG9vbHNfdGVzdC5odG1sCiAg
IFsyOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE0MTIwL3NoYXJkLWtibDQvaWd0QHRvb2xzX3Rlc3RAdG9vbHNfdGVzdC5odG1sCgogIAojIyMj
IFBvc3NpYmxlIGZpeGVzICMjIyMKCiAgKiBpZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAaW4tb3JkZXIt
YnNkOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVsyOV0gKFtmZG8jMTExMzI1XSkg
LT4gW1BBU1NdWzMwXSArMiBzaW1pbGFyIGlzc3VlcwogICBbMjldOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzU0L3NoYXJkLWljbGIyL2lndEBnZW1f
ZXhlY19zY2hlZHVsZUBpbi1vcmRlci1ic2QuaHRtbAogICBbMzBdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDEyMC9zaGFyZC1pY2xiOC9pZ3RA
Z2VtX2V4ZWNfc2NoZWR1bGVAaW4tb3JkZXItYnNkLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfc2No
ZWR1bGVAaW5kZXBlbmRlbnQtYnNkMjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1b
MzFdIChbZmRvIzEwOTI3Nl0pIC0+IFtQQVNTXVszMl0gKzcgc2ltaWxhciBpc3N1ZXMKICAgWzMx
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc1NC9z
aGFyZC1pY2xiMy9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAaW5kZXBlbmRlbnQtYnNkMi5odG1sCiAg
IFszMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE0MTIwL3NoYXJkLWljbGIyL2lndEBnZW1fZXhlY19zY2hlZHVsZUBpbmRlcGVuZGVudC1ic2Qy
Lmh0bWwKCiAgKiBpZ3RAZ2VtX3RpbGVkX3N3YXBwaW5nQG5vbi10aHJlYWRlZDoKICAgIC0gc2hh
cmQtZ2xrOiAgICAgICAgICBbRE1FU0ctV0FSTl1bMzNdIChbZmRvIzEwODY4Nl0pIC0+IFtQQVNT
XVszNF0KICAgWzMzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjc1NC9zaGFyZC1nbGs1L2lndEBnZW1fdGlsZWRfc3dhcHBpbmdAbm9uLXRocmVhZGVk
Lmh0bWwKICAgWzM0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTQxMjAvc2hhcmQtZ2xrOC9pZ3RAZ2VtX3RpbGVkX3N3YXBwaW5nQG5vbi10aHJl
YWRlZC5odG1sCgogICogaWd0QGk5MTVfc3VzcGVuZEBzeXNmcy1yZWFkZXI6CiAgICAtIHNoYXJk
LWFwbDogICAgICAgICAgW0RNRVNHLVdBUk5dWzM1XSAoW2ZkbyMxMDg1NjZdKSAtPiBbUEFTU11b
MzZdICs1IHNpbWlsYXIgaXNzdWVzCiAgIFszNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NTQvc2hhcmQtYXBsMy9pZ3RAaTkxNV9zdXNwZW5kQHN5
c2ZzLXJlYWRlci5odG1sCiAgIFszNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0MTIwL3NoYXJkLWFwbDEvaWd0QGk5MTVfc3VzcGVuZEBzeXNm
cy1yZWFkZXIuaHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWMtY3Vyc29yLTI1Nngy
NTYtb25zY3JlZW46CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW0lOQ09NUExFVEVdWzM3XSAo
W2ZkbyMxMDM1NDBdKSAtPiBbUEFTU11bMzhdCiAgIFszN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NTQvc2hhcmQtaHN3OC9pZ3RAa21zX2N1cnNv
cl9jcmNAcGlwZS1jLWN1cnNvci0yNTZ4MjU2LW9uc2NyZWVuLmh0bWwKICAgWzM4XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxMjAvc2hhcmQt
aHN3NC9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1jLWN1cnNvci0yNTZ4MjU2LW9uc2NyZWVuLmh0
bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9sZWdhY3lAMngtbG9uZy1jdXJzb3ItdnMtZmxpcC1sZWdh
Y3k6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW0ZBSUxdWzM5XSAoW2ZkbyMxMDU3NjddKSAt
PiBbUEFTU11bNDBdCiAgIFszOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzY3NTQvc2hhcmQtaHN3OC9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAMngtbG9u
Zy1jdXJzb3ItdnMtZmxpcC1sZWdhY3kuaHRtbAogICBbNDBdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDEyMC9zaGFyZC1oc3cxL2lndEBrbXNf
Y3Vyc29yX2xlZ2FjeUAyeC1sb25nLWN1cnNvci12cy1mbGlwLWxlZ2FjeS5odG1sCgogICogaWd0
QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZDoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbSU5D
T01QTEVURV1bNDFdIChbZmRvIzEwOTUwN10pIC0+IFtQQVNTXVs0Ml0KICAgWzQxXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc1NC9zaGFyZC1za2wx
L2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQuaHRtbAogICBbNDJdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDEyMC9zaGFyZC1za2w3L2ln
dEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBwbGFpbi1m
bGlwLXRzLWNoZWNrLWludGVycnVwdGlibGU6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZB
SUxdWzQzXSAoW2ZkbyMxMDAzNjhdKSAtPiBbUEFTU11bNDRdCiAgIFs0M106IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NTQvc2hhcmQtc2tsMy9pZ3RA
a21zX2ZsaXBAcGxhaW4tZmxpcC10cy1jaGVjay1pbnRlcnJ1cHRpYmxlLmh0bWwKICAgWzQ0XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxMjAv
c2hhcmQtc2tsNS9pZ3RAa21zX2ZsaXBAcGxhaW4tZmxpcC10cy1jaGVjay1pbnRlcnJ1cHRpYmxl
Lmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Ny
bi1jdXItaW5kZmItZHJhdy1yZW5kZXI6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW0ZBSUxd
WzQ1XSAoW2ZkbyMxMDMxNjddKSAtPiBbUEFTU11bNDZdICs4IHNpbWlsYXIgaXNzdWVzCiAgIFs0
NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NTQv
c2hhcmQtaWNsYjIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNj
cm4tY3VyLWluZGZiLWRyYXctcmVuZGVyLmh0bWwKICAgWzQ2XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxMjAvc2hhcmQtaWNsYjgvaWd0QGtt
c19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tY3VyLWluZGZiLWRyYXct
cmVuZGVyLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYi1jb3ZlcmFn
ZS03ZWZjOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlMXVs0N10gKFtmZG8jMTA4MTQ1
XSAvIFtmZG8jMTEwNDAzXSkgLT4gW1BBU1NdWzQ4XQogICBbNDddOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzU0L3NoYXJkLXNrbDQvaWd0QGttc19w
bGFuZV9hbHBoYV9ibGVuZEBwaXBlLWItY292ZXJhZ2UtN2VmYy5odG1sCiAgIFs0OF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTIwL3NoYXJk
LXNrbDQvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWItY292ZXJhZ2UtN2VmYy5odG1s
CgogICogaWd0QGttc19wc3JAcHNyMl9zdXNwZW5kOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAg
IFtTS0lQXVs0OV0gKFtmZG8jMTA5NDQxXSkgLT4gW1BBU1NdWzUwXSArMSBzaW1pbGFyIGlzc3Vl
CiAgIFs0OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzY3NTQvc2hhcmQtaWNsYjMvaWd0QGttc19wc3JAcHNyMl9zdXNwZW5kLmh0bWwKICAgWzUwXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxMjAv
c2hhcmQtaWNsYjIvaWd0QGttc19wc3JAcHNyMl9zdXNwZW5kLmh0bWwKCiAgCiMjIyMgV2Fybmlu
Z3MgIyMjIwoKICAqIGlndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MxLW5vbnByaXY6CiAgICAtIHNo
YXJkLWljbGI6ICAgICAgICAgW1NLSVBdWzUxXSAoW2ZkbyMxMDkyNzZdKSAtPiBbRkFJTF1bNTJd
IChbZmRvIzExMTMyOV0pCiAgIFs1MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzY3NTQvc2hhcmQtaWNsYjMvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZj
czEtbm9ucHJpdi5odG1sCiAgIFs1Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0MTIwL3NoYXJkLWljbGIyL2lndEBnZW1fY3R4X2lzb2xhdGlv
bkB2Y3MxLW5vbnByaXYuaHRtbAoKICAqIGlndEBrbXNfZHBfZHNjQGJhc2ljLWRzYy1lbmFibGUt
ZWRwOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtETUVTRy1XQVJOXVs1M10gKFtmZG8jMTA3
NzI0XSkgLT4gW1NLSVBdWzU0XSAoW2ZkbyMxMDkzNDldKQogICBbNTNdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzU0L3NoYXJkLWljbGIyL2lndEBr
bXNfZHBfZHNjQGJhc2ljLWRzYy1lbmFibGUtZWRwLmh0bWwKICAgWzU0XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxMjAvc2hhcmQtaWNsYjEv
aWd0QGttc19kcF9kc2NAYmFzaWMtZHNjLWVuYWJsZS1lZHAuaHRtbAoKICAKICBbZmRvIzEwMDM2
OF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMDM2OAog
IFtmZG8jMTAzMDYwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTAzMDYwCiAgW2ZkbyMxMDMxNjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMDMxNjcKICBbZmRvIzEwMzU0MF06IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzU0MAogIFtmZG8jMTAzOTI3XTogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzOTI3CiAgW2ZkbyMxMDUzNjNd
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDUzNjMKICBb
ZmRvIzEwNTc2N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTEwNTc2NwogIFtmZG8jMTA3NzEzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MTA3NzEzCiAgW2ZkbyMxMDc3MjRdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MjQKICBbZmRvIzEwODE0NV06IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODE0NQogIFtmZG8jMTA4NTY2XTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4NTY2CiAgW2Zk
byMxMDg2ODZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MDg2ODYKICBbZmRvIzEwOTI3MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTEwOTI3MQogIFtmZG8jMTA5Mjc2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5Mjc2CiAgW2ZkbyMxMDkzNDldOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkzNDkKICBbZmRvIzEwOTQ0MV06IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTQ0MQogIFtmZG8j
MTA5NTA3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5
NTA3CiAgW2ZkbyMxMTA0MDNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMTA0MDMKICBbZmRvIzExMDg0MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTExMDg0MQogIFtmZG8jMTExMzI1XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMzI1CiAgW2ZkbyMxMTEzMjldOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEzMjkKICBbZmRvIzEx
MTQwOV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTQw
OQogIFtmZG8jOTk5MTJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD05OTkxMgoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDEwIC0+IDEwKQotLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KCiAgTm8gY2hhbmdlcyBpbiBwYXJ0aWNpcGF0aW5nIGhvc3RzCgoK
QnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICogQ0k6IENJLTIwMTkwNTI5IC0+IE5vbmUK
ICAqIExpbnV4OiBDSV9EUk1fNjc1NCAtPiBQYXRjaHdvcmtfMTQxMjAKCiAgQ0ktMjAxOTA1Mjk6
IDIwMTkwNTI5CiAgQ0lfRFJNXzY3NTQ6IGY0MTY4ZWNiYTFlNWM0MWNiZjI1ZDdiNWRiMGM2ODVl
ZTc0NzBkNjAgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBJ
R1RfNTE0NjogMzU3ZGJlMTg2OWQ4OGEyZjA4YmNlZTRlZWJjZWZmNGVlOTAxNDQyNCBAIGdpdDov
L2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVsLWdwdS10b29scwogIFBhdGNo
d29ya18xNDEyMDogMDMyNDg4N2M3ZGM5MTZjZWRjYWY0OWU5NDk2ZTc5ZWM1NDI3YThlYSBAIGdp
dDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIHBpZ2xpdF80NTA5OiBm
ZGM1YTRjYTExMTI0YWI4NDEzYzc5ODg4OTZlZWM0Yzk3MzM2Njk0IEAgZ2l0Oi8vYW5vbmdpdC5m
cmVlZGVza3RvcC5vcmcvcGlnbGl0Cgo9PSBMb2dzID09CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxMjAv
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
