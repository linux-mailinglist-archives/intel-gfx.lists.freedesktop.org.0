Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45170A0160
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 14:12:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41B718970B;
	Wed, 28 Aug 2019 12:12:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9DAA1895EE;
 Wed, 28 Aug 2019 12:12:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 96A07A363D;
 Wed, 28 Aug 2019 12:12:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 28 Aug 2019 12:12:02 -0000
Message-ID: <20190828121202.28914.26095@emeril.freedesktop.org>
References: <20190827120615.31390-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190827120615.31390-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EIGT=3A_success_for_drm/?=
 =?utf-8?q?i915/execlists=3A_Flush_the_post-sync_breadcrumb_write_harder?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZXhlY2xpc3RzOiBGbHVzaCB0
aGUgcG9zdC1zeW5jIGJyZWFkY3J1bWIgd3JpdGUgaGFyZGVyClVSTCAgIDogaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NTg3MS8KU3RhdGUgOiBzdWNjZXNzCgo9PSBT
dW1tYXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV82NzkyX2Z1bGwgLT4g
UGF0Y2h3b3JrXzE0MjAwX2Z1bGwKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PQoKU3VtbWFyeQotLS0tLS0tCgogICoqU1VDQ0VTUyoqCgogIE5vIHJl
Z3Jlc3Npb25zIGZvdW5kLgoKICAKCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBh
cmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE0MjAwX2Z1bGwgdGhhdCBjb21lIGZy
b20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMj
IyMKCiAgKiBpZ3RAZ2VtX2V4ZWNfcGFyYWxsZWxAYmNzMC1jb250ZXh0czoKICAgIC0gc2hhcmQt
aHN3OiAgICAgICAgICBbUEFTU11bMV0gLT4gW0ZBSUxdWzJdIChbZmRvIzExMTQ2OV0pCiAgIFsx
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc5Mi9z
aGFyZC1oc3c3L2lndEBnZW1fZXhlY19wYXJhbGxlbEBiY3MwLWNvbnRleHRzLmh0bWwKICAgWzJd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDIw
MC9zaGFyZC1oc3c2L2lndEBnZW1fZXhlY19wYXJhbGxlbEBiY3MwLWNvbnRleHRzLmh0bWwKCiAg
KiBpZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcmVvcmRlci13aWRlLWJzZDoKICAgIC0gc2hhcmQtaWNs
YjogICAgICAgICBbUEFTU11bM10gLT4gW1NLSVBdWzRdIChbZmRvIzExMTMyNV0pICs2IHNpbWls
YXIgaXNzdWVzCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNjc5Mi9zaGFyZC1pY2xiMy9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcmVvcmRlci13
aWRlLWJzZC5odG1sCiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTQyMDAvc2hhcmQtaWNsYjEvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHJl
b3JkZXItd2lkZS1ic2QuaHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWItY3Vyc29y
LXN1c3BlbmQ6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzVdIC0+IFtJTkNPTVBM
RVRFXVs2XSAoW2ZkbyMxMTA3NDFdKQogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzY3OTIvc2hhcmQtc2tsMi9pZ3RAa21zX2N1cnNvcl9jcmNA
cGlwZS1iLWN1cnNvci1zdXNwZW5kLmh0bWwKICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDIwMC9zaGFyZC1za2wxMC9pZ3RAa21zX2N1
cnNvcl9jcmNAcGlwZS1iLWN1cnNvci1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAZmxp
cC12cy1leHBpcmVkLXZibGFuazoKICAgIC0gc2hhcmQtZ2xrOiAgICAgICAgICBbUEFTU11bN10g
LT4gW0ZBSUxdWzhdIChbZmRvIzEwNTM2M10pCiAgIFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc5Mi9zaGFyZC1nbGszL2lndEBrbXNfZmxpcEBm
bGlwLXZzLWV4cGlyZWQtdmJsYW5rLmh0bWwKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDIwMC9zaGFyZC1nbGszL2lndEBrbXNfZmxp
cEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAZmxpcC12cy1t
b2Rlc2V0LXZzLWhhbmc6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW1BBU1NdWzldIC0+IFtJ
TkNPTVBMRVRFXVsxMF0gKFtmZG8jMTAzOTI3XSkgKzUgc2ltaWxhciBpc3N1ZXMKICAgWzldOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzkyL3NoYXJk
LWFwbDYvaWd0QGttc19mbGlwQGZsaXAtdnMtbW9kZXNldC12cy1oYW5nLmh0bWwKICAgWzEwXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQyMDAv
c2hhcmQtYXBsNS9pZ3RAa21zX2ZsaXBAZmxpcC12cy1tb2Rlc2V0LXZzLWhhbmcuaHRtbAoKICAq
IGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaS1pbmRmYi1tdWx0aWRyYXc6
CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzExXSAtPiBbRkFJTF1bMTJdIChbZmRv
IzEwMzE2N10pICs0IHNpbWlsYXIgaXNzdWVzCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3OTIvc2hhcmQtaWNsYjMvaWd0QGttc19mcm9u
dGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpLWluZGZiLW11bHRpZHJhdy5odG1sCiAgIFsxMl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MjAw
L3NoYXJkLWljbGIxL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaS1pbmRm
Yi1tdWx0aWRyYXcuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLXN1
c3BlbmQ6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW1BBU1NdWzEzXSAtPiBbRE1FU0ctV0FS
Tl1bMTRdIChbZmRvIzEwODU2Nl0pICs0IHNpbWlsYXIgaXNzdWVzCiAgIFsxM106IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3OTIvc2hhcmQtYXBsMi9p
Z3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy1zdXNwZW5kLmh0bWwKICAgWzE0XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQyMDAvc2hh
cmQtYXBsNC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy1zdXNwZW5kLmh0bWwKCiAg
KiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci1yZ2IxMDEwMTAtZHJhdy1tbWFw
LWd0dDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMTVdIC0+IFtJTkNPTVBMRVRF
XVsxNl0gKFtmZG8jMTA2OTc4XSAvIFtmZG8jMTA3NzEzXSkKICAgWzE1XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc5Mi9zaGFyZC1pY2xiMy9pZ3RA
a21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci1yZ2IxMDEwMTAtZHJhdy1tbWFwLWd0dC5o
dG1sCiAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE0MjAwL3NoYXJkLWljbGI3L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJj
cHNyLXJnYjEwMTAxMC1kcmF3LW1tYXAtZ3R0Lmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVy
X3RyYWNraW5nQHBzci0xcC1wcmltc2Nybi1jdXItaW5kZmItZHJhdy1tbWFwLWd0dDoKICAgIC0g
c2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMTddIC0+IFtGQUlMXVsxOF0gKFtmZG8jMTAzMTY3
XSkKICAgWzE3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNjc5Mi9zaGFyZC1za2wzL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAcHNyLTFwLXBy
aW1zY3JuLWN1ci1pbmRmYi1kcmF3LW1tYXAtZ3R0Lmh0bWwKICAgWzE4XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQyMDAvc2hhcmQtc2tsOC9p
Z3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQHBzci0xcC1wcmltc2Nybi1jdXItaW5kZmItZHJh
dy1tbWFwLWd0dC5odG1sCgogICogaWd0QGttc19wc3JAc3VzcGVuZDoKICAgIC0gc2hhcmQtc2ts
OiAgICAgICAgICBbUEFTU11bMTldIC0+IFtJTkNPTVBMRVRFXVsyMF0gKFtmZG8jMTA4OTcyXSkK
ICAgWzE5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
Njc5Mi9zaGFyZC1za2wyL2lndEBrbXNfcHNyQHN1c3BlbmQuaHRtbAogICBbMjBdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDIwMC9zaGFyZC1z
a2wzL2lndEBrbXNfcHNyQHN1c3BlbmQuaHRtbAoKICAqIGlndEBwcmltZV9idXN5QGhhbmctYnNk
MjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMjFdIC0+IFtTS0lQXVsyMl0gKFtm
ZG8jMTA5Mjc2XSkgKzIxIHNpbWlsYXIgaXNzdWVzCiAgIFsyMV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3OTIvc2hhcmQtaWNsYjEvaWd0QHByaW1l
X2J1c3lAaGFuZy1ic2QyLmh0bWwKICAgWzIyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQyMDAvc2hhcmQtaWNsYjcvaWd0QHByaW1lX2J1c3lA
aGFuZy1ic2QyLmh0bWwKCiAgKiBpZ3RAdG9vbHNfdGVzdEBzeXNmc19sM19wYXJpdHk6CiAgICAt
IHNoYXJkLWhzdzogICAgICAgICAgW1BBU1NdWzIzXSAtPiBbU0tJUF1bMjRdIChbZmRvIzEwOTI3
MV0pCiAgIFsyM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzY3OTIvc2hhcmQtaHN3Mi9pZ3RAdG9vbHNfdGVzdEBzeXNmc19sM19wYXJpdHkuaHRtbAog
ICBbMjRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNDIwMC9zaGFyZC1oc3cxL2lndEB0b29sc190ZXN0QHN5c2ZzX2wzX3Bhcml0eS5odG1sCgog
IAojIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMKCiAgKiBpZ3RAZ2VtX2N0eF9zaGFyZWRAZXhlYy1z
aW5nbGUtdGltZWxpbmUtYnNkOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVsyNV0g
KFtmZG8jMTEwODQxXSkgLT4gW1BBU1NdWzI2XQogICBbMjVdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzkyL3NoYXJkLWljbGIxL2lndEBnZW1fY3R4
X3NoYXJlZEBleGVjLXNpbmdsZS10aW1lbGluZS1ic2QuaHRtbAogICBbMjZdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDIwMC9zaGFyZC1pY2xi
Ni9pZ3RAZ2VtX2N0eF9zaGFyZWRAZXhlYy1zaW5nbGUtdGltZWxpbmUtYnNkLmh0bWwKCiAgKiBp
Z3RAZ2VtX2V4ZWNfc2NoZWR1bGVAZmlmby1ic2QxOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAg
IFtTS0lQXVsyN10gKFtmZG8jMTA5Mjc2XSkgLT4gW1BBU1NdWzI4XSArMTcgc2ltaWxhciBpc3N1
ZXMKICAgWzI3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNjc5Mi9zaGFyZC1pY2xiNS9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAZmlmby1ic2QxLmh0bWwK
ICAgWzI4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTQyMDAvc2hhcmQtaWNsYjEvaWd0QGdlbV9leGVjX3NjaGVkdWxlQGZpZm8tYnNkMS5odG1s
CgogICogaWd0QGdlbV9leGVjX3NjaGVkdWxlQHdpZGUtYnNkOgogICAgLSBzaGFyZC1pY2xiOiAg
ICAgICAgIFtTS0lQXVsyOV0gKFtmZG8jMTExMzI1XSkgLT4gW1BBU1NdWzMwXSArOCBzaW1pbGFy
IGlzc3VlcwogICBbMjldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82NzkyL3NoYXJkLWljbGI0L2lndEBnZW1fZXhlY19zY2hlZHVsZUB3aWRlLWJzZC5o
dG1sCiAgIFszMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE0MjAwL3NoYXJkLWljbGI3L2lndEBnZW1fZXhlY19zY2hlZHVsZUB3aWRlLWJzZC5o
dG1sCgogICogaWd0QGdlbV93YWl0QHdyaXRlLXdhaXQtdmVjczA6CiAgICAtIHNoYXJkLXNrbDog
ICAgICAgICAgW0RNRVNHLVdBUk5dWzMxXSAoW2ZkbyMxMDYxMDddKSAtPiBbUEFTU11bMzJdICsx
IHNpbWlsYXIgaXNzdWUKICAgWzMxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjc5Mi9zaGFyZC1za2w3L2lndEBnZW1fd2FpdEB3cml0ZS13YWl0LXZl
Y3MwLmh0bWwKICAgWzMyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQyMDAvc2hhcmQtc2tsNS9pZ3RAZ2VtX3dhaXRAd3JpdGUtd2FpdC12ZWNz
MC5odG1sCgogICogaWd0QGttc19jdXJzb3JfZWRnZV93YWxrQHBpcGUtYi0xMjh4MTI4LXRvcC1l
ZGdlOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtJTkNPTVBMRVRFXVszM10gKFtmZG8jMTAz
OTI3XSkgLT4gW1BBU1NdWzM0XQogICBbMzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82NzkyL3NoYXJkLWFwbDgvaWd0QGttc19jdXJzb3JfZWRnZV93
YWxrQHBpcGUtYi0xMjh4MTI4LXRvcC1lZGdlLmh0bWwKICAgWzM0XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQyMDAvc2hhcmQtYXBsNi9pZ3RA
a21zX2N1cnNvcl9lZGdlX3dhbGtAcGlwZS1iLTEyOHgxMjgtdG9wLWVkZ2UuaHRtbAoKICAqIGln
dEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rOgogICAgLSBzaGFyZC1za2w6ICAgICAg
ICAgIFtGQUlMXVszNV0gKFtmZG8jMTA1MzYzXSkgLT4gW1BBU1NdWzM2XSArMSBzaW1pbGFyIGlz
c3VlCiAgIFszNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzY3OTIvc2hhcmQtc2tsNS9pZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuay5o
dG1sCiAgIFszNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE0MjAwL3NoYXJkLXNrbDQvaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12Ymxh
bmsuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQtaW50ZXJydXB0aWJsZToK
ICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbSU5DT01QTEVURV1bMzddIChbZmRvIzEwOTUwN10p
IC0+IFtQQVNTXVszOF0KICAgWzM3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjc5Mi9zaGFyZC1za2w4L2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3Bl
bmQtaW50ZXJydXB0aWJsZS5odG1sCiAgIFszOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MjAwL3NoYXJkLXNrbDIvaWd0QGttc19mbGlwQGZs
aXAtdnMtc3VzcGVuZC1pbnRlcnJ1cHRpYmxlLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVy
X3RyYWNraW5nQGZiYy0xcC1vZmZzY3Jlbi1wcmktaW5kZmItZHJhdy1yZW5kZXI6CiAgICAtIHNo
YXJkLWljbGI6ICAgICAgICAgW0ZBSUxdWzM5XSAoW2ZkbyMxMDMxNjddKSAtPiBbUEFTU11bNDBd
ICs1IHNpbWlsYXIgaXNzdWVzCiAgIFszOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzY3OTIvc2hhcmQtaWNsYjYvaWd0QGttc19mcm9udGJ1ZmZlcl90
cmFja2luZ0BmYmMtMXAtb2Zmc2NyZW4tcHJpLWluZGZiLWRyYXctcmVuZGVyLmh0bWwKICAgWzQw
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQy
MDAvc2hhcmQtaWNsYjMvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtb2Zmc2Ny
ZW4tcHJpLWluZGZiLWRyYXctcmVuZGVyLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3Ry
YWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1jdXItaW5kZmItZHJhdy1tbWFwLXdjOgogICAgLSBz
aGFyZC1za2w6ICAgICAgICAgIFtGQUlMXVs0MV0gKFtmZG8jMTAzMTY3XSkgLT4gW1BBU1NdWzQy
XSArMiBzaW1pbGFyIGlzc3VlcwogICBbNDFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82NzkyL3NoYXJkLXNrbDQvaWd0QGttc19mcm9udGJ1ZmZlcl90
cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tY3VyLWluZGZiLWRyYXctbW1hcC13Yy5odG1sCiAg
IFs0Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE0MjAwL3NoYXJkLXNrbDUvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAt
cHJpbXNjcm4tY3VyLWluZGZiLWRyYXctbW1hcC13Yy5odG1sCgogICogaWd0QGttc19wbGFuZUBw
bGFuZS1wYW5uaW5nLWJvdHRvbS1yaWdodC1zdXNwZW5kLXBpcGUtYi1wbGFuZXM6CiAgICAtIHNo
YXJkLWFwbDogICAgICAgICAgW0RNRVNHLVdBUk5dWzQzXSAoW2ZkbyMxMDg1NjZdKSAtPiBbUEFT
U11bNDRdICszIHNpbWlsYXIgaXNzdWVzCiAgIFs0M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3OTIvc2hhcmQtYXBsNy9pZ3RAa21zX3BsYW5lQHBs
YW5lLXBhbm5pbmctYm90dG9tLXJpZ2h0LXN1c3BlbmQtcGlwZS1iLXBsYW5lcy5odG1sCiAgIFs0
NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
MjAwL3NoYXJkLWFwbDYvaWd0QGttc19wbGFuZUBwbGFuZS1wYW5uaW5nLWJvdHRvbS1yaWdodC1z
dXNwZW5kLXBpcGUtYi1wbGFuZXMuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRA
cGlwZS1iLWNvdmVyYWdlLTdlZmM6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzQ1
XSAoW2ZkbyMxMDgxNDVdIC8gW2ZkbyMxMTA0MDNdKSAtPiBbUEFTU11bNDZdCiAgIFs0NV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3OTIvc2hhcmQt
c2tsMTAvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWItY292ZXJhZ2UtN2VmYy5odG1s
CiAgIFs0Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0MjAwL3NoYXJkLXNrbDkvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWItY292
ZXJhZ2UtN2VmYy5odG1sCgogICogaWd0QGttc19wbGFuZV9sb3dyZXNAcGlwZS1hLXRpbGluZy14
OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtGQUlMXVs0N10gKFtmZG8jMTAzMTY2XSkgLT4g
W1BBU1NdWzQ4XQogICBbNDddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82NzkyL3NoYXJkLWljbGI3L2lndEBrbXNfcGxhbmVfbG93cmVzQHBpcGUtYS10
aWxpbmcteC5odG1sCiAgIFs0OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE0MjAwL3NoYXJkLWljbGIzL2lndEBrbXNfcGxhbmVfbG93cmVzQHBp
cGUtYS10aWxpbmcteC5odG1sCgogICogaWd0QHBlcmZfcG11QGVuYWJsZS1yYWNlLXJjczA6CiAg
ICAtIHNoYXJkLWljbGI6ICAgICAgICAgW0lOQ09NUExFVEVdWzQ5XSAoW2ZkbyMxMDc3MTNdKSAt
PiBbUEFTU11bNTBdCiAgIFs0OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzY3OTIvc2hhcmQtaWNsYjcvaWd0QHBlcmZfcG11QGVuYWJsZS1yYWNlLXJj
czAuaHRtbAogICBbNTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNDIwMC9zaGFyZC1pY2xiMS9pZ3RAcGVyZl9wbXVAZW5hYmxlLXJhY2UtcmNz
MC5odG1sCgogIAojIyMjIFdhcm5pbmdzICMjIyMKCiAgKiBpZ3RAZ2VtX2N0eF9pc29sYXRpb25A
dmNzMS1ub25wcml2OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtGQUlMXVs1MV0gKFtmZG8j
MTExMzI5XSkgLT4gW1NLSVBdWzUyXSAoW2ZkbyMxMDkyNzZdKQogICBbNTFdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzkyL3NoYXJkLWljbGI0L2ln
dEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MxLW5vbnByaXYuaHRtbAogICBbNTJdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDIwMC9zaGFyZC1pY2xi
OC9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AdmNzMS1ub25wcml2Lmh0bWwKCiAgKiBpZ3RAZ2VtX21v
Y3Nfc2V0dGluZ3NAbW9jcy1yZXNldC1ic2QyOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtT
S0lQXVs1M10gKFtmZG8jMTA5Mjc2XSkgLT4gW0ZBSUxdWzU0XSAoW2ZkbyMxMTEzMzBdKSArMSBz
aW1pbGFyIGlzc3VlCiAgIFs1M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzY3OTIvc2hhcmQtaWNsYjUvaWd0QGdlbV9tb2NzX3NldHRpbmdzQG1vY3Mt
cmVzZXQtYnNkMi5odG1sCiAgIFs1NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0MjAwL3NoYXJkLWljbGI0L2lndEBnZW1fbW9jc19zZXR0aW5n
c0Btb2NzLXJlc2V0LWJzZDIuaHRtbAoKICAqIGlndEBrbXNfY29udGVudF9wcm90ZWN0aW9uQGF0
b21pYzoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbRkFJTF1bNTVdIChbZmRvIzExMDMyMV0g
LyBbZmRvIzExMDMzNl0pIC0+IFtJTkNPTVBMRVRFXVs1Nl0gKFtmZG8jMTAzOTI3XSkKICAgWzU1
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc5Mi9z
aGFyZC1hcGw0L2lndEBrbXNfY29udGVudF9wcm90ZWN0aW9uQGF0b21pYy5odG1sCiAgIFs1Nl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MjAw
L3NoYXJkLWFwbDQvaWd0QGttc19jb250ZW50X3Byb3RlY3Rpb25AYXRvbWljLmh0bWwKCiAgCiAg
W2ZkbyMxMDMxNjZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDMxNjYKICBbZmRvIzEwMzE2N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTEwMzE2NwogIFtmZG8jMTAzOTI3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzOTI3CiAgW2ZkbyMxMDUzNjNdOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDUzNjMKICBbZmRvIzEwNjEwN106
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNjEwNwogIFtm
ZG8jMTA2OTc4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTA2OTc4CiAgW2ZkbyMxMDc3MTNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDc3MTMKICBbZmRvIzEwODE0NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODE0NQogIFtmZG8jMTA4NTY2XTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4NTY2CiAgW2ZkbyMxMDg5NzJdOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg5NzIKICBbZmRv
IzEwOTI3MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEw
OTI3MQogIFtmZG8jMTA5Mjc2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTA5Mjc2CiAgW2ZkbyMxMDk1MDddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk1MDcKICBbZmRvIzExMDMyMV06IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDMyMQogIFtmZG8jMTEwMzM2XTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwMzM2CiAgW2ZkbyMx
MTA0MDNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA0
MDMKICBbZmRvIzExMDc0MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTExMDc0MQogIFtmZG8jMTEwODQxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTEwODQxCiAgW2ZkbyMxMTEzMjVdOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEzMjUKICBbZmRvIzExMTMyOV06IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTMyOQogIFtmZG8jMTEx
MzMwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMzMw
CiAgW2ZkbyMxMTE0NjldOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMTE0NjkKCgpQYXJ0aWNpcGF0aW5nIGhvc3RzICgxMCAtPiAxMCkKLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCgogIE5vIGNoYW5nZXMgaW4gcGFydGljaXBhdGluZyBob3N0cwoK
CkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoKICAqIENJOiBDSS0yMDE5MDUyOSAtPiBOb25l
CiAgKiBMaW51eDogQ0lfRFJNXzY3OTIgLT4gUGF0Y2h3b3JrXzE0MjAwCgogIENJLTIwMTkwNTI5
OiAyMDE5MDUyOQogIENJX0RSTV82NzkyOiA4N2Y3NzkyYmMzODkxZGUzZmFiNGZiNjRkNjZhODVh
NjY3MjllM2Q0IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAg
SUdUXzUxNTA6IGE0ZTgyMTdiY2RmZWY5YmI1MjNmMjZhOTA4NGJiZjYxNWE2ZThhYmIgQCBnaXQ6
Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRj
aHdvcmtfMTQyMDA6IGM0ZDVkYmQyY2ZmMzZkNTA2Y2U1Zjg0ZGE4MTJiNzc0MzRlOTRjZmIgQCBn
aXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBwaWdsaXRfNDUwOTog
ZmRjNWE0Y2ExMTEyNGFiODQxM2M3OTg4ODk2ZWVjNGM5NzMzNjY5NCBAIGdpdDovL2Fub25naXQu
ZnJlZWRlc2t0b3Aub3JnL3BpZ2xpdAoKPT0gTG9ncyA9PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MjAw
LwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
