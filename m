Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87BBAF0E1C
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 06:13:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 903456E18F;
	Wed,  6 Nov 2019 05:13:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A79806E18F;
 Wed,  6 Nov 2019 05:13:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A0390A0087;
 Wed,  6 Nov 2019 05:13:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Wed, 06 Nov 2019 05:13:21 -0000
Message-ID: <157301720165.12033.17462951175402835237@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191105113029.4328-1-ramalingam.c@intel.com>
In-Reply-To: <20191105113029.4328-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Create_dumb_buffer_from_LMEM_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IENyZWF0ZSBkdW1iIGJ1ZmZl
ciBmcm9tIExNRU0gKHJldjMpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy82Njk1MC8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDSSBCdWcg
TG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV83MjYyX2Z1bGwgLT4gUGF0Y2h3b3JrXzE1MTMwX2Z1
bGwKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoK
U3VtbWFyeQotLS0tLS0tCgogICoqRkFJTFVSRSoqCgogIFNlcmlvdXMgdW5rbm93biBjaGFuZ2Vz
IGNvbWluZyB3aXRoIFBhdGNod29ya18xNTEzMF9mdWxsIGFic29sdXRlbHkgbmVlZCB0byBiZQog
IHZlcmlmaWVkIG1hbnVhbGx5LgogIAogIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdl
cyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4gUGF0
Y2h3b3JrXzE1MTMwX2Z1bGwsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0
aGVtCiAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVj
ZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuCgogIAoKUG9zc2libGUgbmV3IGlzc3VlcwotLS0tLS0t
LS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2
ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE1MTMwX2Z1bGw6CgojIyMgSUdUIGNoYW5n
ZXMgIyMjCgojIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMKCiAgKiBpZ3RAcnVubmVyQGFi
b3J0ZWQ6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgTk9UUlVOIC0+IFtGQUlMXVsxXQogICBb
MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1
MTMwL3NoYXJkLWFwbDEvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKCiAgCiMjIyMgU3VwcHJlc3Nl
ZCAjIyMjCgogIFRoZSBmb2xsb3dpbmcgcmVzdWx0cyBjb21lIGZyb20gdW50cnVzdGVkIG1hY2hp
bmVzLCB0ZXN0cywgb3Igc3RhdHVzZXMuCiAgVGhleSBkbyBub3QgYWZmZWN0IHRoZSBvdmVyYWxs
IHJlc3VsdC4KCiAgKiB7aWd0QGdlbV9jdHhfcGVyc2lzdGVuY2VAc21va2V0ZXN0fToKICAgIC0g
c2hhcmQtYXBsOiAgICAgICAgICBbUEFTU11bMl0gLT4gW0RNRVNHLVdBUk5dWzNdCiAgIFsyXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzI2Mi9zaGFy
ZC1hcGw3L2lndEBnZW1fY3R4X3BlcnNpc3RlbmNlQHNtb2tldGVzdC5odG1sCiAgIFszXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUxMzAvc2hh
cmQtYXBsMS9pZ3RAZ2VtX2N0eF9wZXJzaXN0ZW5jZUBzbW9rZXRlc3QuaHRtbAoKICAqIHtpZ3RA
aTkxNV9wbV9kY0BkYzNjby12cGItc2ltdWxhdGlvbn06CiAgICAtIHNoYXJkLWljbGI6ICAgICAg
ICAgW0ZBSUxdWzRdIC0+IFtTS0lQXVs1XQogICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcyNjIvc2hhcmQtaWNsYjIvaWd0QGk5MTVfcG1fZGNA
ZGMzY28tdnBiLXNpbXVsYXRpb24uaHRtbAogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MTMwL3NoYXJkLWljbGI2L2lndEBpOTE1X3Bt
X2RjQGRjM2NvLXZwYi1zaW11bGF0aW9uLmh0bWwKCiAgCktub3duIGlzc3VlcwotLS0tLS0tLS0t
LS0KCiAgSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE1MTMwX2Z1bGwg
dGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJ
c3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAZ2VtX2N0eF9leGVjQGJhc2ljLWludmFsaWQtY29udGV4
dC12Y3MxOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVs2XSAtPiBbU0tJUF1bN10g
KFtmZG8jMTEyMDgwXSkgKzE0IHNpbWlsYXIgaXNzdWVzCiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzI2Mi9zaGFyZC1pY2xiMS9pZ3RAZ2Vt
X2N0eF9leGVjQGJhc2ljLWludmFsaWQtY29udGV4dC12Y3MxLmh0bWwKICAgWzddOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTEzMC9zaGFyZC1p
Y2xiNS9pZ3RAZ2VtX2N0eF9leGVjQGJhc2ljLWludmFsaWQtY29udGV4dC12Y3MxLmh0bWwKCiAg
KiBpZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAb3V0LW9yZGVyLWJzZDI6CiAgICAtIHNoYXJkLWljbGI6
ICAgICAgICAgW1BBU1NdWzhdIC0+IFtTS0lQXVs5XSAoW2ZkbyMxMDkyNzZdKSArMTYgc2ltaWxh
ciBpc3N1ZXMKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV83MjYyL3NoYXJkLWljbGIyL2lndEBnZW1fZXhlY19zY2hlZHVsZUBvdXQtb3JkZXIt
YnNkMi5odG1sCiAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTUxMzAvc2hhcmQtaWNsYjYvaWd0QGdlbV9leGVjX3NjaGVkdWxlQG91dC1v
cmRlci1ic2QyLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdGl2ZS1oYW5n
LWJzZDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMTBdIC0+IFtTS0lQXVsxMV0g
KFtmZG8jMTEyMTQ2XSkgKzUgc2ltaWxhciBpc3N1ZXMKICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzI2Mi9zaGFyZC1pY2xiOC9pZ3RAZ2Vt
X2V4ZWNfc2NoZWR1bGVAcHJlZW1wdGl2ZS1oYW5nLWJzZC5odG1sCiAgIFsxMV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MTMwL3NoYXJkLWlj
bGI0L2lndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0aXZlLWhhbmctYnNkLmh0bWwKCiAgKiBp
Z3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1pbnRlcnJ1cHRpYmxlLXRocmFzaGluZzoK
ICAgIC0gc2hhcmQtaHN3OiAgICAgICAgICBbUEFTU11bMTJdIC0+IFtGQUlMXVsxM10gKFtmZG8j
MTEyMDM3XSkKICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzI2Mi9zaGFyZC1oc3cxL2lndEBnZW1fcGVyc2lzdGVudF9yZWxvY3NAZm9ya2Vk
LWludGVycnVwdGlibGUtdGhyYXNoaW5nLmh0bWwKICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUxMzAvc2hhcmQtaHN3Mi9pZ3RAZ2Vt
X3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1pbnRlcnJ1cHRpYmxlLXRocmFzaGluZy5odG1sCgog
ICogaWd0QGdlbV9zb2Z0cGluQG5vcmVsb2MtczM6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAg
W1BBU1NdWzE0XSAtPiBbSU5DT01QTEVURV1bMTVdIChbZmRvIzEwNDEwOF0pICsyIHNpbWlsYXIg
aXNzdWVzCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzcyNjIvc2hhcmQtc2tsNC9pZ3RAZ2VtX3NvZnRwaW5Abm9yZWxvYy1zMy5odG1sCiAg
IFsxNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE1MTMwL3NoYXJkLXNrbDQvaWd0QGdlbV9zb2Z0cGluQG5vcmVsb2MtczMuaHRtbAoKICAqIGln
dEBrbXNfY3Vyc29yX2NyY0BwaXBlLWEtY3Vyc29yLXN1c3BlbmQ6CiAgICAtIHNoYXJkLWtibDog
ICAgICAgICAgW1BBU1NdWzE2XSAtPiBbRE1FU0ctV0FSTl1bMTddIChbZmRvIzEwODU2Nl0pICsy
IHNpbWlsYXIgaXNzdWVzCiAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzcyNjIvc2hhcmQta2JsNy9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1h
LWN1cnNvci1zdXNwZW5kLmh0bWwKICAgWzE3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUxMzAvc2hhcmQta2JsNC9pZ3RAa21zX2N1cnNvcl9j
cmNAcGlwZS1hLWN1cnNvci1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3Ry
YWNraW5nQGZiYy1zdXNwZW5kOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVsxOF0g
LT4gW0RNRVNHLVdBUk5dWzE5XSAoW2ZkbyMxMDg1NjZdKSArMSBzaW1pbGFyIGlzc3VlCiAgIFsx
OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcyNjIv
c2hhcmQtYXBsMS9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy1zdXNwZW5kLmh0bWwK
ICAgWzE5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTUxMzAvc2hhcmQtYXBsMS9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy1zdXNw
ZW5kLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmlt
c2Nybi1wcmktaW5kZmItZHJhdy1wd3JpdGU6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BB
U1NdWzIwXSAtPiBbRkFJTF1bMjFdIChbZmRvIzEwMzE2N10pICs1IHNpbWlsYXIgaXNzdWVzCiAg
IFsyMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcy
NjIvc2hhcmQtaWNsYjYvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJp
bXNjcm4tcHJpLWluZGZiLWRyYXctcHdyaXRlLmh0bWwKICAgWzIxXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUxMzAvc2hhcmQtaWNsYjYvaWd0
QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tcHJpLWluZGZiLWRy
YXctcHdyaXRlLmh0bWwKCiAgKiBpZ3RAa21zX3BzckBwc3IyX2N1cnNvcl9yZW5kZXI6CiAgICAt
IHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzIyXSAtPiBbU0tJUF1bMjNdIChbZmRvIzEwOTQ0
MV0pICsxIHNpbWlsYXIgaXNzdWUKICAgWzIyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNzI2Mi9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzckBwc3IyX2N1
cnNvcl9yZW5kZXIuaHRtbAogICBbMjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNTEzMC9zaGFyZC1pY2xiNi9pZ3RAa21zX3BzckBwc3IyX2N1
cnNvcl9yZW5kZXIuaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICoge2lndEBn
ZW1fY3R4X3BlcnNpc3RlbmNlQHZjczEtcXVldWVkfToKICAgIC0gc2hhcmQtaWNsYjogICAgICAg
ICBbU0tJUF1bMjRdIChbZmRvIzEwOTI3Nl0gLyBbZmRvIzExMjA4MF0pIC0+IFtQQVNTXVsyNV0g
KzUgc2ltaWxhciBpc3N1ZXMKICAgWzI0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNzI2Mi9zaGFyZC1pY2xiNy9pZ3RAZ2VtX2N0eF9wZXJzaXN0ZW5j
ZUB2Y3MxLXF1ZXVlZC5odG1sCiAgIFsyNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MTMwL3NoYXJkLWljbGIxL2lndEBnZW1fY3R4X3BlcnNp
c3RlbmNlQHZjczEtcXVldWVkLmh0bWwKCiAgKiBpZ3RAZ2VtX2N0eF9zaGFyZWRAZXhlYy1zaW5n
bGUtdGltZWxpbmUtYnNkOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVsyNl0gKFtm
ZG8jMTEwODQxXSkgLT4gW1BBU1NdWzI3XQogICBbMjZdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MjYyL3NoYXJkLWljbGIxL2lndEBnZW1fY3R4X3No
YXJlZEBleGVjLXNpbmdsZS10aW1lbGluZS1ic2QuaHRtbAogICBbMjddOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTEzMC9zaGFyZC1pY2xiOC9p
Z3RAZ2VtX2N0eF9zaGFyZWRAZXhlYy1zaW5nbGUtdGltZWxpbmUtYnNkLmh0bWwKCiAgKiBpZ3RA
Z2VtX2V4ZWNfcGFyYWxsZWxAdmNzMS1mZHM6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NL
SVBdWzI4XSAoW2ZkbyMxMTIwODBdKSAtPiBbUEFTU11bMjldICs3IHNpbWlsYXIgaXNzdWVzCiAg
IFsyOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcy
NjIvc2hhcmQtaWNsYjgvaWd0QGdlbV9leGVjX3BhcmFsbGVsQHZjczEtZmRzLmh0bWwKICAgWzI5
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUx
MzAvc2hhcmQtaWNsYjQvaWd0QGdlbV9leGVjX3BhcmFsbGVsQHZjczEtZmRzLmh0bWwKCiAgKiBp
Z3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1xdWV1ZS1ic2QxOgogICAgLSBzaGFyZC1pY2xi
OiAgICAgICAgIFtTS0lQXVszMF0gKFtmZG8jMTA5Mjc2XSkgLT4gW1BBU1NdWzMxXSArMTcgc2lt
aWxhciBpc3N1ZXMKICAgWzMwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNzI2Mi9zaGFyZC1pY2xiNy9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1w
dC1xdWV1ZS1ic2QxLmh0bWwKICAgWzMxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUxMzAvc2hhcmQtaWNsYjEvaWd0QGdlbV9leGVjX3NjaGVk
dWxlQHByZWVtcHQtcXVldWUtYnNkMS5odG1sCgogICogaWd0QGdlbV9leGVjX3NjaGVkdWxlQHBy
ZWVtcHQtcXVldWUtY2hhaW4tYnNkOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVsz
Ml0gKFtmZG8jMTEyMTQ2XSkgLT4gW1BBU1NdWzMzXSArMiBzaW1pbGFyIGlzc3VlcwogICBbMzJd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MjYyL3No
YXJkLWljbGIxL2lndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LXF1ZXVlLWNoYWluLWJzZC5o
dG1sCiAgIFszM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE1MTMwL3NoYXJkLWljbGI4L2lndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LXF1
ZXVlLWNoYWluLWJzZC5odG1sCgogICogaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczM6CiAg
ICAtIHNoYXJkLWtibDogICAgICAgICAgW0RNRVNHLVdBUk5dWzM0XSAoW2ZkbyMxMDg1NjZdKSAt
PiBbUEFTU11bMzVdICsxIHNpbWlsYXIgaXNzdWUKICAgWzM0XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzI2Mi9zaGFyZC1rYmwzL2lndEBnZW1fZXhl
Y19zdXNwZW5kQGJhc2ljLXMzLmh0bWwKICAgWzM1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUxMzAvc2hhcmQta2JsNy9pZ3RAZ2VtX2V4ZWNf
c3VzcGVuZEBiYXNpYy1zMy5odG1sCgogICoge2lndEBpOTE1X3BtX2RjQGRjNi1wc3J9OgogICAg
LSBzaGFyZC1pY2xiOiAgICAgICAgIFtGQUlMXVszNl0gKFtmZG8jMTEwNTQ4XSkgLT4gW1BBU1Nd
WzM3XQogICBbMzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV83MjYyL3NoYXJkLWljbGI4L2lndEBpOTE1X3BtX2RjQGRjNi1wc3IuaHRtbAogICBbMzdd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTEz
MC9zaGFyZC1pY2xiNC9pZ3RAaTkxNV9wbV9kY0BkYzYtcHNyLmh0bWwKCiAgKiBpZ3RAaTkxNV9z
ZWxmdGVzdEBsaXZlX2V4ZWNsaXN0czoKICAgIC0ge3NoYXJkLXRnbGJ9OiAgICAgICBbSU5DT01Q
TEVURV1bMzhdIChbZmRvIzExMTkzNF0pIC0+IFtQQVNTXVszOV0KICAgWzM4XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzI2Mi9zaGFyZC10Z2xiMS9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5odG1sCiAgIFszOV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MTMwL3NoYXJkLXRnbGI3
L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3RzLmh0bWwKCiAgKiBpZ3RAaTkxNV9zdXNw
ZW5kQHN5c2ZzLXJlYWRlcjoKICAgIC0gc2hhcmQtc25iOiAgICAgICAgICBbRE1FU0ctV0FSTl1b
NDBdIChbZmRvIzEwMjM2NV0pIC0+IFtQQVNTXVs0MV0KICAgWzQwXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzI2Mi9zaGFyZC1zbmIxL2lndEBpOTE1
X3N1c3BlbmRAc3lzZnMtcmVhZGVyLmh0bWwKICAgWzQxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUxMzAvc2hhcmQtc25iMi9pZ3RAaTkxNV9z
dXNwZW5kQHN5c2ZzLXJlYWRlci5odG1sCgogICogaWd0QGttc19mYmNvbl9mYnRAZmJjLXN1c3Bl
bmQ6CiAgICAtIHtzaGFyZC10Z2xifTogICAgICAgW0lOQ09NUExFVEVdWzQyXSAoW2ZkbyMxMTE3
NDddIC8gW2ZkbyMxMTE4MzJdIC8gW2ZkbyMxMTE4NTBdKSAtPiBbUEFTU11bNDNdCiAgIFs0Ml06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcyNjIvc2hh
cmQtdGdsYjEvaWd0QGttc19mYmNvbl9mYnRAZmJjLXN1c3BlbmQuaHRtbAogICBbNDNdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTEzMC9zaGFy
ZC10Z2xiNC9pZ3RAa21zX2ZiY29uX2ZidEBmYmMtc3VzcGVuZC5odG1sCgogICogaWd0QGttc19m
bGlwQGZsaXAtdnMtZXhwaXJlZC12YmxhbmstaW50ZXJydXB0aWJsZToKICAgIC0gc2hhcmQtc2ts
OiAgICAgICAgICBbRkFJTF1bNDRdIChbZmRvIzEwNTM2M10pIC0+IFtQQVNTXVs0NV0KICAgWzQ0
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzI2Mi9z
aGFyZC1za2w3L2lndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLWludGVycnVwdGli
bGUuaHRtbAogICBbNDVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNTEzMC9zaGFyZC1za2wyL2lndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQt
dmJsYW5rLWludGVycnVwdGlibGUuaHRtbAogICAgLSBzaGFyZC1nbGs6ICAgICAgICAgIFtGQUlM
XVs0Nl0gKFtmZG8jMTA1MzYzXSkgLT4gW1BBU1NdWzQ3XQogICBbNDZdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MjYyL3NoYXJkLWdsazUvaWd0QGtt
c19mbGlwQGZsaXAtdnMtZXhwaXJlZC12YmxhbmstaW50ZXJydXB0aWJsZS5odG1sCiAgIFs0N106
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MTMw
L3NoYXJkLWdsazcvaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12YmxhbmstaW50ZXJydXB0
aWJsZS5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNj
cm4tc2hyZmItcGdmbGlwLWJsdDoKICAgIC0ge3NoYXJkLXRnbGJ9OiAgICAgICBbRkFJTF1bNDhd
IChbZmRvIzEwMzE2N10pIC0+IFtQQVNTXVs0OV0gKzMgc2ltaWxhciBpc3N1ZXMKICAgWzQ4XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzI2Mi9zaGFy
ZC10Z2xiMy9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmltc2Nybi1zaHJm
Yi1wZ2ZsaXAtYmx0Lmh0bWwKICAgWzQ5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUxMzAvc2hhcmQtdGdsYjUvaWd0QGttc19mcm9udGJ1ZmZl
cl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4tc2hyZmItcGdmbGlwLWJsdC5odG1sCgogICogaWd0
QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tY3VyLWluZGZiLWRy
YXctcmVuZGVyOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtGQUlMXVs1MF0gKFtmZG8jMTAz
MTY3XSkgLT4gW1BBU1NdWzUxXSArNiBzaW1pbGFyIGlzc3VlcwogICBbNTBdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MjYyL3NoYXJkLWljbGIyL2ln
dEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1k
cmF3LXJlbmRlci5odG1sCiAgIFs1MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE1MTMwL3NoYXJkLWljbGIyL2lndEBrbXNfZnJvbnRidWZmZXJf
dHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1kcmF3LXJlbmRlci5odG1sCgog
ICogaWd0QGttc19wbGFuZUBwbGFuZS1wYW5uaW5nLWJvdHRvbS1yaWdodC1zdXNwZW5kLXBpcGUt
Yi1wbGFuZXM6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW0RNRVNHLVdBUk5dWzUyXSAoW2Zk
byMxMDg1NjZdKSAtPiBbUEFTU11bNTNdICsxIHNpbWlsYXIgaXNzdWUKICAgWzUyXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzI2Mi9zaGFyZC1hcGw2
L2lndEBrbXNfcGxhbmVAcGxhbmUtcGFubmluZy1ib3R0b20tcmlnaHQtc3VzcGVuZC1waXBlLWIt
cGxhbmVzLmh0bWwKICAgWzUzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTUxMzAvc2hhcmQtYXBsNi9pZ3RAa21zX3BsYW5lQHBsYW5lLXBhbm5p
bmctYm90dG9tLXJpZ2h0LXN1c3BlbmQtcGlwZS1iLXBsYW5lcy5odG1sCgogICogaWd0QGttc19w
bGFuZV9hbHBoYV9ibGVuZEBwaXBlLWItY29uc3RhbnQtYWxwaGEtbWluOgogICAgLSBzaGFyZC1z
a2w6ICAgICAgICAgIFtGQUlMXVs1NF0gKFtmZG8jMTA4MTQ1XSkgLT4gW1BBU1NdWzU1XQogICBb
NTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MjYy
L3NoYXJkLXNrbDUvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWItY29uc3RhbnQtYWxw
aGEtbWluLmh0bWwKICAgWzU1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTUxMzAvc2hhcmQtc2tsOC9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5k
QHBpcGUtYi1jb25zdGFudC1hbHBoYS1taW4uaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfYWxwaGFf
YmxlbmRAcGlwZS1jLWNvdmVyYWdlLTdlZmM6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZB
SUxdWzU2XSAoW2ZkbyMxMDgxNDVdIC8gW2ZkbyMxMTA0MDNdKSAtPiBbUEFTU11bNTddICsxIHNp
bWlsYXIgaXNzdWUKICAgWzU2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNzI2Mi9zaGFyZC1za2wxL2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlw
ZS1jLWNvdmVyYWdlLTdlZmMuaHRtbAogICBbNTddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTEzMC9zaGFyZC1za2wxL2lndEBrbXNfcGxhbmVf
YWxwaGFfYmxlbmRAcGlwZS1jLWNvdmVyYWdlLTdlZmMuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVf
bG93cmVzQHBpcGUtYS10aWxpbmcteToKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbRkFJTF1b
NThdIChbZmRvIzEwMzE2Nl0pIC0+IFtQQVNTXVs1OV0KICAgWzU4XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzI2Mi9zaGFyZC1pY2xiNi9pZ3RAa21z
X3BsYW5lX2xvd3Jlc0BwaXBlLWEtdGlsaW5nLXkuaHRtbAogICBbNTldOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTEzMC9zaGFyZC1pY2xiNy9p
Z3RAa21zX3BsYW5lX2xvd3Jlc0BwaXBlLWEtdGlsaW5nLXkuaHRtbAoKICAqIGlndEBrbXNfcHNy
QHBzcjJfc3ByaXRlX3BsYW5lX21vdmU6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NLSVBd
WzYwXSAoW2ZkbyMxMDk0NDFdKSAtPiBbUEFTU11bNjFdICsxIHNpbWlsYXIgaXNzdWUKICAgWzYw
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzI2Mi9z
aGFyZC1pY2xiOC9pZ3RAa21zX3BzckBwc3IyX3Nwcml0ZV9wbGFuZV9tb3ZlLmh0bWwKICAgWzYx
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUx
MzAvc2hhcmQtaWNsYjIvaWd0QGttc19wc3JAcHNyMl9zcHJpdGVfcGxhbmVfbW92ZS5odG1sCgog
ICogaWd0QGttc192YmxhbmtAcGlwZS1iLXRzLWNvbnRpbnVhdGlvbi1kcG1zLXN1c3BlbmQ6CiAg
ICAtIHtzaGFyZC10Z2xifTogICAgICAgW0lOQ09NUExFVEVdWzYyXSAoW2ZkbyMxMTE4MzJdIC8g
W2ZkbyMxMTE4NTBdKSAtPiBbUEFTU11bNjNdCiAgIFs2Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcyNjIvc2hhcmQtdGdsYjEvaWd0QGttc192Ymxh
bmtAcGlwZS1iLXRzLWNvbnRpbnVhdGlvbi1kcG1zLXN1c3BlbmQuaHRtbAogICBbNjNdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTEzMC9zaGFy
ZC10Z2xiMi9pZ3RAa21zX3ZibGFua0BwaXBlLWItdHMtY29udGludWF0aW9uLWRwbXMtc3VzcGVu
ZC5odG1sCgogIAojIyMjIFdhcm5pbmdzICMjIyMKCiAgKiBpZ3RAZ2VtX21vY3Nfc2V0dGluZ3NA
bW9jcy1yYzYtYnNkMjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1bNjRdIChbZmRv
IzEwOTI3Nl0pIC0+IFtGQUlMXVs2NV0gKFtmZG8jMTExMzMwXSkKICAgWzY0XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzI2Mi9zaGFyZC1pY2xiNy9p
Z3RAZ2VtX21vY3Nfc2V0dGluZ3NAbW9jcy1yYzYtYnNkMi5odG1sCiAgIFs2NV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MTMwL3NoYXJkLWlj
bGIxL2lndEBnZW1fbW9jc19zZXR0aW5nc0Btb2NzLXJjNi1ic2QyLmh0bWwKCiAgKiBpZ3RAZ2Vt
X21vY3Nfc2V0dGluZ3NAbW9jcy1zZXR0aW5ncy1ic2QyOgogICAgLSBzaGFyZC1pY2xiOiAgICAg
ICAgIFtGQUlMXVs2Nl0gKFtmZG8jMTExMzMwXSkgLT4gW1NLSVBdWzY3XSAoW2ZkbyMxMDkyNzZd
KSArMSBzaW1pbGFyIGlzc3VlCiAgIFs2Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzcyNjIvc2hhcmQtaWNsYjIvaWd0QGdlbV9tb2NzX3NldHRpbmdz
QG1vY3Mtc2V0dGluZ3MtYnNkMi5odG1sCiAgIFs2N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MTMwL3NoYXJkLWljbGI2L2lndEBnZW1fbW9j
c19zZXR0aW5nc0Btb2NzLXNldHRpbmdzLWJzZDIuaHRtbAoKICAKICB7bmFtZX06IFRoaXMgZWxl
bWVudCBpcyBzdXBwcmVzc2VkLiBUaGlzIG1lYW5zIGl0IGlzIGlnbm9yZWQgd2hlbiBjb21wdXRp
bmcKICAgICAgICAgIHRoZSBzdGF0dXMgb2YgdGhlIGRpZmZlcmVuY2UgKFNVQ0NFU1MsIFdBUk5J
TkcsIG9yIEZBSUxVUkUpLgoKICBbZmRvIzEwMjM2NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMjM2NQogIFtmZG8jMTAzMTY2XTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTY2CiAgW2ZkbyMxMDMxNjddOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxNjcKICBbZmRv
IzEwNDEwOF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEw
NDEwOAogIFtmZG8jMTA1MzYzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTA1MzYzCiAgW2ZkbyMxMDgxNDVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMDgxNDUKICBbZmRvIzEwODU2Nl06IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODU2NgogIFtmZG8jMTA5Mjc2XTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5Mjc2CiAgW2ZkbyMx
MDk0NDFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk0
NDEKICBbZmRvIzExMDQwM106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTExMDQwMwogIFtmZG8jMTEwNTQ4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTEwNTQ4CiAgW2ZkbyMxMTA4NDFdOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA4NDEKICBbZmRvIzExMTMyOV06IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTMyOQogIFtmZG8jMTEx
MzMwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMzMw
CiAgW2ZkbyMxMTE2NDZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMTE2NDYKICBbZmRvIzExMTY3MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTExMTY3MQogIFtmZG8jMTExNzAzXTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNzAzCiAgW2ZkbyMxMTE3NDddOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE3NDcKICBbZmRvIzExMTgz
Ml06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTgzMgog
IFtmZG8jMTExODUwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTExODUwCiAgW2ZkbyMxMTE5MzRdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMTE5MzQKICBbZmRvIzExMjAzN106IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjAzNwogIFtmZG8jMTEyMDgwXTogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMDgwCiAgW2ZkbyMxMTIxNDZd
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTIxNDYKCgpQ
YXJ0aWNpcGF0aW5nIGhvc3RzICgxMSAtPiAxMSkKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCgogIE5vIGNoYW5nZXMgaW4gcGFydGljaXBhdGluZyBob3N0cwoKCkJ1aWxkIGNoYW5nZXMK
LS0tLS0tLS0tLS0tLQoKICAqIENJOiBDSS0yMDE5MDUyOSAtPiBOb25lCiAgKiBMaW51eDogQ0lf
RFJNXzcyNjIgLT4gUGF0Y2h3b3JrXzE1MTMwCgogIENJLTIwMTkwNTI5OiAyMDE5MDUyOQogIENJ
X0RSTV83MjYyOiA2ZDkwMzM4NTgxNzVmYzBlMWVmNWY3N2Q2YmQ2MDM1NmU2YjcwZWU0IEAgZ2l0
Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzUyNjM6IDhhNWQ0
NGRjNWU1MTYyMmNkNDNmMjNjMmNmMjRkNDRjMjRhMDU2NGQgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVk
ZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdvcmtfMTUxMzA6IGQw
YzQxYzA3MGZmMDMxMjQ5NjdjNjMxMzJmMGMwNDNkYjc5OGM0YjQgQCBnaXQ6Ly9hbm9uZ2l0LmZy
ZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBwaWdsaXRfNDUwOTogZmRjNWE0Y2ExMTEyNGFi
ODQxM2M3OTg4ODk2ZWVjNGM5NzMzNjY5NCBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3Jn
L3BpZ2xpdAoKPT0gTG9ncyA9PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MTMwL2luZGV4Lmh0bWwKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
