Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7D98F6A4
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 23:51:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 889D56EA92;
	Thu, 15 Aug 2019 21:51:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 21EFA6E442;
 Thu, 15 Aug 2019 21:51:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1913DA47ED;
 Thu, 15 Aug 2019 21:51:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 15 Aug 2019 21:51:30 -0000
Message-ID: <20190815215130.31006.93579@emeril.freedesktop.org>
References: <20190815075948.9256-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190815075948.9256-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EIGT=3A_success_for_drm/?=
 =?utf-8?q?i915=3A_Replace_PIN=5FNONFAULT_with_calls_to_PIN=5FNOEVICT_=28r?=
 =?utf-8?q?ev2=29?=
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
VUxUIHdpdGggY2FsbHMgdG8gUElOX05PRVZJQ1QgKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NTIyMi8KU3RhdGUgOiBzdWNjZXNzCgo9PSBT
dW1tYXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV82NzExX2Z1bGwgLT4g
UGF0Y2h3b3JrXzE0MDI0X2Z1bGwKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PQoKU3VtbWFyeQotLS0tLS0tCgogICoqU1VDQ0VTUyoqCgogIE5vIHJl
Z3Jlc3Npb25zIGZvdW5kLgoKICAKCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBh
cmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE0MDI0X2Z1bGwgdGhhdCBjb21lIGZy
b20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMj
IyMKCiAgKiBpZ3RAZ2VtX2V4ZWNfYXN5bmNAY29uY3VycmVudC13cml0ZXMtYnNkOgogICAgLSBz
aGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsxXSAtPiBbU0tJUF1bMl0gKFtmZG8jMTExMzI1XSkg
KzMgc2ltaWxhciBpc3N1ZXMKICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82NzExL3NoYXJkLWljbGI3L2lndEBnZW1fZXhlY19hc3luY0Bjb25j
dXJyZW50LXdyaXRlcy1ic2QuaHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MDI0L3NoYXJkLWljbGI0L2lndEBnZW1fZXhlY19h
c3luY0Bjb25jdXJyZW50LXdyaXRlcy1ic2QuaHRtbAoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVs
ZUBwcmVlbXB0LWNvbnRleHRzLWJzZDI6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1Nd
WzNdIC0+IFtTS0lQXVs0XSAoW2ZkbyMxMDkyNzZdKSArMTQgc2ltaWxhciBpc3N1ZXMKICAgWzNd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzExL3No
YXJkLWljbGIyL2lndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LWNvbnRleHRzLWJzZDIuaHRt
bAogICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0MDI0L3NoYXJkLWljbGI1L2lndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LWNvbnRl
eHRzLWJzZDIuaHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWItY3Vyc29yLXN1c3Bl
bmQ6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzVdIC0+IFtJTkNPTVBMRVRFXVs2
XSAoW2ZkbyMxMTA3NDFdKQogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzY3MTEvc2hhcmQtc2tsOS9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1i
LWN1cnNvci1zdXNwZW5kLmh0bWwKICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDAyNC9zaGFyZC1za2wzL2lndEBrbXNfY3Vyc29yX2Ny
Y0BwaXBlLWItY3Vyc29yLXN1c3BlbmQuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBmbGlwLXZzLWV4
cGlyZWQtdmJsYW5rLWludGVycnVwdGlibGU6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BB
U1NdWzddIC0+IFtGQUlMXVs4XSAoW2ZkbyMxMDUzNjNdKQogICBbN106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3MTEvc2hhcmQtc2tsNS9pZ3RAa21z
X2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuay1pbnRlcnJ1cHRpYmxlLmh0bWwKICAgWzhdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDAyNC9z
aGFyZC1za2w4L2lndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLWludGVycnVwdGli
bGUuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1z
Y3JuLXByaS1pbmRmYi1kcmF3LWJsdDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11b
OV0gLT4gW0ZBSUxdWzEwXSAoW2ZkbyMxMDMxNjddKQogICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3MTEvc2hhcmQtaWNsYjEvaWd0QGttc19m
cm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tcHJpLWluZGZiLWRyYXctYmx0
Lmh0bWwKICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTQwMjQvc2hhcmQtaWNsYjIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bm
YmNwc3ItMXAtcHJpbXNjcm4tcHJpLWluZGZiLWRyYXctYmx0Lmh0bWwKCiAgKiBpZ3RAa21zX3Bp
cGVfY3JjX2Jhc2ljQHN1c3BlbmQtcmVhZC1jcmMtcGlwZS1jOgogICAgLSBzaGFyZC1hcGw6ICAg
ICAgICAgIFtQQVNTXVsxMV0gLT4gW0RNRVNHLVdBUk5dWzEyXSAoW2ZkbyMxMDg1NjZdKSArMSBz
aW1pbGFyIGlzc3VlCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzY3MTEvc2hhcmQtYXBsNC9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQHN1c3Bl
bmQtcmVhZC1jcmMtcGlwZS1jLmh0bWwKICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQwMjQvc2hhcmQtYXBsNS9pZ3RAa21zX3BpcGVf
Y3JjX2Jhc2ljQHN1c3BlbmQtcmVhZC1jcmMtcGlwZS1jLmh0bWwKCiAgKiBpZ3RAa21zX3BzckBw
c3IyX2N1cnNvcl9wbGFuZV9tb3ZlOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsx
M10gLT4gW1NLSVBdWzE0XSAoW2ZkbyMxMDk0NDFdKSArMSBzaW1pbGFyIGlzc3VlCiAgIFsxM106
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3MTEvc2hh
cmQtaWNsYjIvaWd0QGttc19wc3JAcHNyMl9jdXJzb3JfcGxhbmVfbW92ZS5odG1sCiAgIFsxNF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MDI0
L3NoYXJkLWljbGI1L2lndEBrbXNfcHNyQHBzcjJfY3Vyc29yX3BsYW5lX21vdmUuaHRtbAoKICAq
IGlndEBrbXNfdmJsYW5rQHBpcGUtYy13YWl0LWJ1c3ktaGFuZzoKICAgIC0gc2hhcmQtaHN3OiAg
ICAgICAgICBbUEFTU11bMTVdIC0+IFtJTkNPTVBMRVRFXVsxNl0gKFtmZG8jMTAzNTQwXSkKICAg
WzE1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjcx
MS9zaGFyZC1oc3c2L2lndEBrbXNfdmJsYW5rQHBpcGUtYy13YWl0LWJ1c3ktaGFuZy5odG1sCiAg
IFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE0MDI0L3NoYXJkLWhzdzUvaWd0QGttc192YmxhbmtAcGlwZS1jLXdhaXQtYnVzeS1oYW5nLmh0
bWwKCiAgCiMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVs
ZUBpbi1vcmRlci1ic2Q6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NLSVBdWzE3XSAoW2Zk
byMxMTEzMjVdKSAtPiBbUEFTU11bMThdICsyIHNpbWlsYXIgaXNzdWVzCiAgIFsxN106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3MTEvc2hhcmQtaWNs
YjIvaWd0QGdlbV9leGVjX3NjaGVkdWxlQGluLW9yZGVyLWJzZC5odG1sCiAgIFsxOF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MDI0L3NoYXJk
LWljbGI1L2lndEBnZW1fZXhlY19zY2hlZHVsZUBpbi1vcmRlci1ic2QuaHRtbAoKICAqIGlndEBn
ZW1fd29ya2Fyb3VuZHNAc3VzcGVuZC1yZXN1bWUtY29udGV4dDoKICAgIC0gc2hhcmQtYXBsOiAg
ICAgICAgICBbSU5DT01QTEVURV1bMTldIChbZmRvIzEwMzkyN10pIC0+IFtQQVNTXVsyMF0gKzYg
c2ltaWxhciBpc3N1ZXMKICAgWzE5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjcxMS9zaGFyZC1hcGwxL2lndEBnZW1fd29ya2Fyb3VuZHNAc3VzcGVu
ZC1yZXN1bWUtY29udGV4dC5odG1sCiAgIFsyMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MDI0L3NoYXJkLWFwbDYvaWd0QGdlbV93b3JrYXJv
dW5kc0BzdXNwZW5kLXJlc3VtZS1jb250ZXh0Lmh0bWwKCiAgKiBpZ3RAaTkxNV9zdXNwZW5kQGZl
bmNlLXJlc3RvcmUtdGlsZWQydW50aWxlZDoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbRE1F
U0ctV0FSTl1bMjFdIChbZmRvIzEwODU2Nl0pIC0+IFtQQVNTXVsyMl0gKzMgc2ltaWxhciBpc3N1
ZXMKICAgWzIxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNjcxMS9zaGFyZC1hcGw3L2lndEBpOTE1X3N1c3BlbmRAZmVuY2UtcmVzdG9yZS10aWxlZDJ1
bnRpbGVkLmh0bWwKICAgWzIyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTQwMjQvc2hhcmQtYXBsNy9pZ3RAaTkxNV9zdXNwZW5kQGZlbmNlLXJl
c3RvcmUtdGlsZWQydW50aWxlZC5odG1sCgogICogaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYi1j
dXJzb3ItMjU2eDI1Ni1yYW5kb206CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzIz
XSAoW2ZkbyMxMDMyMzJdKSAtPiBbUEFTU11bMjRdCiAgIFsyM106IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3MTEvc2hhcmQtc2tsNC9pZ3RAa21zX2N1
cnNvcl9jcmNAcGlwZS1iLWN1cnNvci0yNTZ4MjU2LXJhbmRvbS5odG1sCiAgIFsyNF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MDI0L3NoYXJk
LXNrbDYvaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYi1jdXJzb3ItMjU2eDI1Ni1yYW5kb20uaHRt
bAoKICAqIGlndEBrbXNfY3Vyc29yX2xlZ2FjeUBjdXJzb3ItdnMtZmxpcC1hdG9taWMtdHJhbnNp
dGlvbnM6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW0ZBSUxdWzI1XSAoW2ZkbyMxMDMzNTVd
KSAtPiBbUEFTU11bMjZdCiAgIFsyNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzY3MTEvc2hhcmQtaHN3OC9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAY3Vy
c29yLXZzLWZsaXAtYXRvbWljLXRyYW5zaXRpb25zLmh0bWwKICAgWzI2XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQwMjQvc2hhcmQtaHN3NS9p
Z3RAa21zX2N1cnNvcl9sZWdhY3lAY3Vyc29yLXZzLWZsaXAtYXRvbWljLXRyYW5zaXRpb25zLmh0
bWwKCiAgKiBpZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuazoKICAgIC0gc2hhcmQt
c2tsOiAgICAgICAgICBbRkFJTF1bMjddIChbZmRvIzEwNTM2M10pIC0+IFtQQVNTXVsyOF0KICAg
WzI3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjcx
MS9zaGFyZC1za2w5L2lndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLmh0bWwKICAg
WzI4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQwMjQvc2hhcmQtc2tsMy9pZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuay5odG1s
CiAgICAtIHNoYXJkLWdsazogICAgICAgICAgW0ZBSUxdWzI5XSAoW2ZkbyMxMDI4ODddKSAtPiBb
UEFTU11bMzBdCiAgIFsyOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzY3MTEvc2hhcmQtZ2xrNy9pZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZi
bGFuay5odG1sCiAgIFszMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE0MDI0L3NoYXJkLWdsazQvaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJl
ZC12YmxhbmsuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLW9m
ZnNjcmVuLXByaS1pbmRmYi1kcmF3LXJlbmRlcjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBb
RkFJTF1bMzFdIChbZmRvIzEwMzE2N10pIC0+IFtQQVNTXVszMl0gKzEgc2ltaWxhciBpc3N1ZQog
ICBbMzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
NzExL3NoYXJkLWljbGI1L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLW9mZnNj
cmVuLXByaS1pbmRmYi1kcmF3LXJlbmRlci5odG1sCiAgIFszMl06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MDI0L3NoYXJkLWljbGI2L2lndEBr
bXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLW9mZnNjcmVuLXByaS1pbmRmYi1kcmF3LXJl
bmRlci5odG1sCgogICogaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWEtY29uc3RhbnQt
YWxwaGEtbWluOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlMXVszM10gKFtmZG8jMTA4
MTQ1XSkgLT4gW1BBU1NdWzM0XSArMSBzaW1pbGFyIGlzc3VlCiAgIFszM106IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3MTEvc2hhcmQtc2tsMS9pZ3RA
a21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYS1jb25zdGFudC1hbHBoYS1taW4uaHRtbAogICBb
MzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NDAyNC9zaGFyZC1za2w4L2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1hLWNvbnN0YW50
LWFscGhhLW1pbi5odG1sCgogICogaWd0QGttc19wc3JAcHNyMl9jdXJzb3JfbW1hcF9jcHU6CiAg
ICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NLSVBdWzM1XSAoW2ZkbyMxMDk0NDFdKSAtPiBbUEFT
U11bMzZdICsxIHNpbWlsYXIgaXNzdWUKICAgWzM1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjcxMS9zaGFyZC1pY2xiMS9pZ3RAa21zX3BzckBwc3Iy
X2N1cnNvcl9tbWFwX2NwdS5odG1sCiAgIFszNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MDI0L3NoYXJkLWljbGIyL2lndEBrbXNfcHNyQHBz
cjJfY3Vyc29yX21tYXBfY3B1Lmh0bWwKCiAgKiBpZ3RAcGVyZkBibG9ja2luZzoKICAgIC0gc2hh
cmQtc2tsOiAgICAgICAgICBbRkFJTF1bMzddIChbZmRvIzExMDcyOF0pIC0+IFtQQVNTXVszOF0g
KzEgc2ltaWxhciBpc3N1ZQogICBbMzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82NzExL3NoYXJkLXNrbDkvaWd0QHBlcmZAYmxvY2tpbmcuaHRtbAog
ICBbMzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNDAyNC9zaGFyZC1za2wyL2lndEBwZXJmQGJsb2NraW5nLmh0bWwKCiAgKiBpZ3RAcHJpbWVf
YnVzeUBoYW5nLWJzZDI6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NLSVBdWzM5XSAoW2Zk
byMxMDkyNzZdKSAtPiBbUEFTU11bNDBdICsxNCBzaW1pbGFyIGlzc3VlcwogICBbMzldOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzExL3NoYXJkLWlj
bGI4L2lndEBwcmltZV9idXN5QGhhbmctYnNkMi5odG1sCiAgIFs0MF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MDI0L3NoYXJkLWljbGIyL2ln
dEBwcmltZV9idXN5QGhhbmctYnNkMi5odG1sCgogIAojIyMjIFdhcm5pbmdzICMjIyMKCiAgKiBp
Z3RAZ2VtX21vY3Nfc2V0dGluZ3NAbW9jcy1pc29sYXRpb24tYnNkMjoKICAgIC0gc2hhcmQtaWNs
YjogICAgICAgICBbU0tJUF1bNDFdIChbZmRvIzEwOTI3Nl0pIC0+IFtGQUlMXVs0Ml0gKFtmZG8j
MTExMzMwXSkKICAgWzQxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNjcxMS9zaGFyZC1pY2xiOC9pZ3RAZ2VtX21vY3Nfc2V0dGluZ3NAbW9jcy1pc29s
YXRpb24tYnNkMi5odG1sCiAgIFs0Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0MDI0L3NoYXJkLWljbGIyL2lndEBnZW1fbW9jc19zZXR0aW5n
c0Btb2NzLWlzb2xhdGlvbi1ic2QyLmh0bWwKCiAgKiBpZ3RAa21zX2RwX2RzY0BiYXNpYy1kc2Mt
ZW5hYmxlLWVkcDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbRE1FU0ctV0FSTl1bNDNdIChb
ZmRvIzEwNzcyNF0pIC0+IFtTS0lQXVs0NF0gKFtmZG8jMTA5MzQ5XSkKICAgWzQzXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjcxMS9zaGFyZC1pY2xi
Mi9pZ3RAa21zX2RwX2RzY0BiYXNpYy1kc2MtZW5hYmxlLWVkcC5odG1sCiAgIFs0NF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MDI0L3NoYXJk
LWljbGIzL2lndEBrbXNfZHBfZHNjQGJhc2ljLWRzYy1lbmFibGUtZWRwLmh0bWwKCiAgCiAgW2Zk
byMxMDI4ODddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MDI4ODcKICBbZmRvIzEwMzE2N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTEwMzE2NwogIFtmZG8jMTAzMjMyXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMjMyCiAgW2ZkbyMxMDMzNTVdOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMzNTUKICBbZmRvIzEwMzU0MF06IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzU0MAogIFtmZG8j
MTAzOTI3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAz
OTI3CiAgW2ZkbyMxMDUzNjNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMDUzNjMKICBbZmRvIzEwNzcyNF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTEwNzcyNAogIFtmZG8jMTA4MTQ1XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4MTQ1CiAgW2ZkbyMxMDg1NjZdOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg1NjYKICBbZmRvIzEw
OTI3Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3
NgogIFtmZG8jMTA5MzQ5XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA5MzQ5CiAgW2ZkbyMxMDk0NDFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMDk0NDEKICBbZmRvIzExMDcyOF06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDcyOAogIFtmZG8jMTEwNzQxXTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwNzQxCiAgW2ZkbyMxMTEz
MjVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEzMjUK
ICBbZmRvIzExMTMzMF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTExMTMzMAoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDEwIC0+IDEwKQotLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KCiAgTm8gY2hhbmdlcyBpbiBwYXJ0aWNpcGF0aW5nIGhvc3RzCgoK
QnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICogQ0k6IENJLTIwMTkwNTI5IC0+IE5vbmUK
ICAqIExpbnV4OiBDSV9EUk1fNjcxMSAtPiBQYXRjaHdvcmtfMTQwMjQKCiAgQ0ktMjAxOTA1Mjk6
IDIwMTkwNTI5CiAgQ0lfRFJNXzY3MTE6IDY2OTkyMDI2ZTY0ZmU0NDA1Y2EyNWIxZTk3OGE5OGM3
ZTEzMjY3M2IgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBJ
R1RfNTEzNDogODFkZjJmMjIzODViYzI3NTk3NWNmMTk5ZDk2MmVlZDliYzEwZjkxNiBAIGdpdDov
L2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVsLWdwdS10b29scwogIFBhdGNo
d29ya18xNDAyNDogZWM2NTIxMjI3NzBiMWU1ZWJmY2YxYzU1ZGUzMWQ1MDFmMzhhMjU1MiBAIGdp
dDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIHBpZ2xpdF80NTA5OiBm
ZGM1YTRjYTExMTI0YWI4NDEzYzc5ODg4OTZlZWM0Yzk3MzM2Njk0IEAgZ2l0Oi8vYW5vbmdpdC5m
cmVlZGVza3RvcC5vcmcvcGlnbGl0Cgo9PSBMb2dzID09CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQwMjQv
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
