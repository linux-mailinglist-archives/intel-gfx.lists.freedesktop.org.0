Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C29410AAB0
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 07:39:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8EA16E0D4;
	Wed, 27 Nov 2019 06:39:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 64FFB6E0D2;
 Wed, 27 Nov 2019 06:39:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C1ACA363E;
 Wed, 27 Nov 2019 06:39:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 27 Nov 2019 06:39:52 -0000
Message-ID: <157483679235.17774.6153843334685732769@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191126182523.2930760-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191126182523.2930760-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_i915?=
 =?utf-8?q?/gem=5Fctx=5Fpersistence=3A_Bump_the_reset_timeout?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogaTkxNS9nZW1fY3R4X3BlcnNpc3RlbmNlOiBC
dW1wIHRoZSByZXNldCB0aW1lb3V0ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3Nlcmllcy83MDA2Ni8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDSSBC
dWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV83NDI2X2Z1bGwgLT4gSUdUUFdfMzc2Ml9mdWxs
Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KClN1
bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBj
b21pbmcgd2l0aCBJR1RQV18zNzYyX2Z1bGwgYWJzb2x1dGVseSBuZWVkIHRvIGJlCiAgdmVyaWZp
ZWQgbWFudWFsbHkuCiAgCiAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUg
bm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzCiAgaW50cm9kdWNlZCBpbiBJR1RQV18zNzYy
X2Z1bGwsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtCiAgdG8gZG9j
dW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3Np
dGl2ZXMgaW4gQ0kuCgogIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9JR1RQV18zNzYyL2luZGV4Lmh0bWwKClBvc3NpYmxlIG5ldyBpc3N1ZXMK
LS0tLS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQg
bWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIElHVFBXXzM3NjJfZnVsbDoKCiMjIyBJR1QgY2hh
bmdlcyAjIyMKCiMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIwoKICAqIGlndEBnZW1fY3R4
X3BlcnNpc3RlbmNlQHZjczAtaG9zdGlsZS1wcmVlbXB0OgogICAgLSBzaGFyZC1pY2xiOiAgICAg
ICAgIE5PVFJVTiAtPiBbRkFJTF1bMV0gKzEgc2ltaWxhciBpc3N1ZQogICBbMV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvSUdUUFdfMzc2Mi9zaGFyZC1pY2xiMi9p
Z3RAZ2VtX2N0eF9wZXJzaXN0ZW5jZUB2Y3MwLWhvc3RpbGUtcHJlZW1wdC5odG1sCgogICogaWd0
QGdlbV9jdHhfcGVyc2lzdGVuY2VAdmVjczAtaG9zdGlsZS1wcmVlbXB0OgogICAgLSBzaGFyZC10
Z2xiOiAgICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bMl0gKzEgc2ltaWxhciBpc3N1ZQogICBbMl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvSUdUUFdfMzc2Mi9zaGFy
ZC10Z2xiNy9pZ3RAZ2VtX2N0eF9wZXJzaXN0ZW5jZUB2ZWNzMC1ob3N0aWxlLXByZWVtcHQuaHRt
bAoKICAKS25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBm
b3VuZCBpbiBJR1RQV18zNzYyX2Z1bGwgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMj
IElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAZ2VtX2V4ZWNf
Y3JlYXRlQGJhc2ljOgogICAgLSBzaGFyZC10Z2xiOiAgICAgICAgIFtQQVNTXVszXSAtPiBbSU5D
T01QTEVURV1bNF0gKFtmZG8jMTExNzM2XSkKICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDI2L3NoYXJkLXRnbGIxL2lndEBnZW1fZXhlY19j
cmVhdGVAYmFzaWMuaHRtbAogICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvSUdUUFdfMzc2Mi9zaGFyZC10Z2xiNi9pZ3RAZ2VtX2V4ZWNfY3JlYXRlQGJhc2lj
Lmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1vdGhlci1ic2QxOgogICAg
LSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVs1XSAtPiBbU0tJUF1bNl0gKFtmZG8jMTA5Mjc2
XSkKICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV83NDI2L3NoYXJkLWljbGIyL2lndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LW90aGVyLWJz
ZDEuaHRtbAogICBbNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
SUdUUFdfMzc2Mi9zaGFyZC1pY2xiNS9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1vdGhl
ci1ic2QxLmh0bWwKCiAgKiBpZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1mYXVsdGlu
Zy1yZWxvYy10aHJhc2gtaW5hY3RpdmU6CiAgICAtIHNoYXJkLWtibDogICAgICAgICAgW1BBU1Nd
WzddIC0+IFtUSU1FT1VUXVs4XSAoW2ZkbyMxMTIwNjggXSkKICAgWzddOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDI2L3NoYXJkLWtibDcvaWd0QGdl
bV9wZXJzaXN0ZW50X3JlbG9jc0Bmb3JrZWQtZmF1bHRpbmctcmVsb2MtdGhyYXNoLWluYWN0aXZl
Lmh0bWwKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0lH
VFBXXzM3NjIvc2hhcmQta2JsMi9pZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1mYXVs
dGluZy1yZWxvYy10aHJhc2gtaW5hY3RpdmUuaHRtbAoKICAqIGlndEBnZW1fc29mdHBpbkBub3Jl
bG9jLXMzOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVs5XSAtPiBbRE1FU0ctV0FS
Tl1bMTBdIChbZmRvIzEwODU2Nl0pICsyIHNpbWlsYXIgaXNzdWVzCiAgIFs5XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQyNi9zaGFyZC1hcGwxL2ln
dEBnZW1fc29mdHBpbkBub3JlbG9jLXMzLmh0bWwKICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9JR1RQV18zNzYyL3NoYXJkLWFwbDQvaWd0QGdlbV9zb2Z0
cGluQG5vcmVsb2MtczMuaHRtbAoKICAqIGlndEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVubWFw
OgogICAgLSBzaGFyZC1zbmI6ICAgICAgICAgIFtQQVNTXVsxMV0gLT4gW0RNRVNHLVdBUk5dWzEy
XSAoW2ZkbyMxMTE4NzBdKQogICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV83NDI2L3NoYXJkLXNuYjUvaWd0QGdlbV91c2VycHRyX2JsaXRzQHN5
bmMtdW5tYXAuaHRtbAogICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0lHVFBXXzM3NjIvc2hhcmQtc25iNy9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAc3luYy11
bm1hcC5odG1sCgogICogaWd0QGdlbV91c2VycHRyX2JsaXRzQHN5bmMtdW5tYXAtYWZ0ZXItY2xv
c2U6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW1BBU1NdWzEzXSAtPiBbRE1FU0ctV0FSTl1b
MTRdIChbZmRvIzExMTg3MF0pCiAgIFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzc0MjYvc2hhcmQtaHN3OC9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNA
c3luYy11bm1hcC1hZnRlci1jbG9zZS5odG1sCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvSUdUUFdfMzc2Mi9zaGFyZC1oc3cxL2lndEBnZW1fdXNlcnB0
cl9ibGl0c0BzeW5jLXVubWFwLWFmdGVyLWNsb3NlLmh0bWwKICAgIC0gc2hhcmQtc25iOiAgICAg
ICAgICBbUEFTU11bMTVdIC0+IFtETUVTRy1XQVJOXVsxNl0gKFtmZG8jMTEwNzg5XSAvIFtmZG8j
MTExODcwXSkKICAgWzE1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzQyNi9zaGFyZC1zbmIxL2lndEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVubWFw
LWFmdGVyLWNsb3NlLmh0bWwKICAgWzE2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9JR1RQV18zNzYyL3NoYXJkLXNuYjEvaWd0QGdlbV91c2VycHRyX2JsaXRzQHN5
bmMtdW5tYXAtYWZ0ZXItY2xvc2UuaHRtbAoKICAqIGlndEBnZW1fd2FpdEBidXN5LXZjczE6CiAg
ICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzE3XSAtPiBbU0tJUF1bMThdIChbZmRvIzEx
MjA4MF0pCiAgIFsxN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzc0MjYvc2hhcmQtaWNsYjIvaWd0QGdlbV93YWl0QGJ1c3ktdmNzMS5odG1sCiAgIFsx
OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvSUdUUFdfMzc2Mi9z
aGFyZC1pY2xiNi9pZ3RAZ2VtX3dhaXRAYnVzeS12Y3MxLmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxm
dGVzdEBsaXZlX3BlcmY6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW1BBU1NdWzE5XSAtPiBb
SU5DT01QTEVURV1bMjBdIChbZmRvIzEwMzU0MF0pCiAgIFsxOV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MjYvc2hhcmQtaHN3OC9pZ3RAaTkxNV9z
ZWxmdGVzdEBsaXZlX3BlcmYuaHRtbAogICBbMjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0lHVFBXXzM3NjIvc2hhcmQtaHN3Ny9pZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlX3BlcmYuaHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWEtY3Vyc29yLXN1c3Bl
bmQ6CiAgICAtIHNoYXJkLWtibDogICAgICAgICAgW1BBU1NdWzIxXSAtPiBbRE1FU0ctV0FSTl1b
MjJdIChbZmRvIzEwODU2Nl0pICszIHNpbWlsYXIgaXNzdWVzCiAgIFsyMV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MjYvc2hhcmQta2JsMi9pZ3RA
a21zX2N1cnNvcl9jcmNAcGlwZS1hLWN1cnNvci1zdXNwZW5kLmh0bWwKICAgWzIyXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9JR1RQV18zNzYyL3NoYXJkLWtibDcv
aWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYS1jdXJzb3Itc3VzcGVuZC5odG1sCgogICogaWd0QGtt
c19jdXJzb3JfY3JjQHBpcGUtYi1jdXJzb3ItNjR4NjQtc2xpZGluZzoKICAgIC0gc2hhcmQtYXBs
OiAgICAgICAgICBbUEFTU11bMjNdIC0+IFtGQUlMXVsyNF0gKFtmZG8jMTAzMjMyXSkgKzEgc2lt
aWxhciBpc3N1ZQogICBbMjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV83NDI2L3NoYXJkLWFwbDMvaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYi1jdXJz
b3ItNjR4NjQtc2xpZGluZy5odG1sCiAgIFsyNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvSUdUUFdfMzc2Mi9zaGFyZC1hcGwyL2lndEBrbXNfY3Vyc29yX2NyY0Bw
aXBlLWItY3Vyc29yLTY0eDY0LXNsaWRpbmcuaHRtbAogICAgLSBzaGFyZC1rYmw6ICAgICAgICAg
IFtQQVNTXVsyNV0gLT4gW0ZBSUxdWzI2XSAoW2ZkbyMxMDMyMzJdKQogICBbMjVdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDI2L3NoYXJkLWtibDMv
aWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYi1jdXJzb3ItNjR4NjQtc2xpZGluZy5odG1sCiAgIFsy
Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvSUdUUFdfMzc2Mi9z
aGFyZC1rYmw3L2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWItY3Vyc29yLTY0eDY0LXNsaWRpbmcu
aHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWItY3Vyc29yLWRwbXM6CiAgICAtIHNo
YXJkLWdsazogICAgICAgICAgW1BBU1NdWzI3XSAtPiBbRkFJTF1bMjhdIChbZmRvIzEwMzIzMl0p
CiAgIFsyN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
Xzc0MjYvc2hhcmQtZ2xrMy9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1iLWN1cnNvci1kcG1zLmh0
bWwKICAgWzI4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9JR1RQ
V18zNzYyL3NoYXJkLWdsazcvaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYi1jdXJzb3ItZHBtcy5o
dG1sCgogICogaWd0QGttc19kcmF3X2NyY0BkcmF3LW1ldGhvZC14cmdiMjEwMTAxMC1ibHQtdW50
aWxlZDoKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbUEFTU11bMjldIC0+IFtJTkNPTVBMRVRF
XVszMF0gKFtmZG8jMTAzNjY1XSkKICAgWzI5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQyNi9zaGFyZC1rYmwyL2lndEBrbXNfZHJhd19jcmNAZHJh
dy1tZXRob2QteHJnYjIxMDEwMTAtYmx0LXVudGlsZWQuaHRtbAogICBbMzBdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0lHVFBXXzM3NjIvc2hhcmQta2JsMy9pZ3RA
a21zX2RyYXdfY3JjQGRyYXctbWV0aG9kLXhyZ2IyMTAxMDEwLWJsdC11bnRpbGVkLmh0bWwKCiAg
KiBpZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVycnVwdGlibGU6CiAgICAtIHNoYXJk
LXRnbGI6ICAgICAgICAgW1BBU1NdWzMxXSAtPiBbSU5DT01QTEVURV1bMzJdIChbZmRvIzExMTgz
Ml0gLyBbZmRvIzExMTg1MF0gLyBbZmRvIzExMjAzMV0pCiAgIFszMV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MjYvc2hhcmQtdGdsYjYvaWd0QGtt
c19mbGlwQGZsaXAtdnMtc3VzcGVuZC1pbnRlcnJ1cHRpYmxlLmh0bWwKICAgWzMyXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9JR1RQV18zNzYyL3NoYXJkLXRnbGIx
L2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQtaW50ZXJydXB0aWJsZS5odG1sCgogICogaWd0
QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItcmdiNTY1LWRyYXctcmVuZGVyOgogICAg
LSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVszM10gLT4gW0ZBSUxdWzM0XSAoW2ZkbyMxMDMx
NjddKQogICBbMzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV83NDI2L3NoYXJkLWljbGIyL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNy
LXJnYjU2NS1kcmF3LXJlbmRlci5odG1sCiAgIFszNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvSUdUUFdfMzc2Mi9zaGFyZC1pY2xiMi9pZ3RAa21zX2Zyb250YnVm
ZmVyX3RyYWNraW5nQGZiY3Bzci1yZ2I1NjUtZHJhdy1yZW5kZXIuaHRtbAoKICAqIGlndEBrbXNf
cHNyQHBzcjJfc3ByaXRlX21tYXBfY3B1OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNT
XVszNV0gLT4gW1NLSVBdWzM2XSAoW2ZkbyMxMDk0NDFdKQogICBbMzVdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDI2L3NoYXJkLWljbGIyL2lndEBr
bXNfcHNyQHBzcjJfc3ByaXRlX21tYXBfY3B1Lmh0bWwKICAgWzM2XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9JR1RQV18zNzYyL3NoYXJkLWljbGI2L2lndEBrbXNf
cHNyQHBzcjJfc3ByaXRlX21tYXBfY3B1Lmh0bWwKCiAgCiMjIyMgUG9zc2libGUgZml4ZXMgIyMj
IwoKICAqIGlndEBkcm1faW1wb3J0X2V4cG9ydEBpbXBvcnQtY2xvc2UtcmFjZS1wcmltZToKICAg
IC0gc2hhcmQtaHN3OiAgICAgICAgICBbSU5DT01QTEVURV1bMzddIChbZmRvIzEwMzU0MF0pIC0+
IFtQQVNTXVszOF0KICAgWzM3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNzQyNi9zaGFyZC1oc3cyL2lndEBkcm1faW1wb3J0X2V4cG9ydEBpbXBvcnQt
Y2xvc2UtcmFjZS1wcmltZS5odG1sCiAgIFszOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvSUdUUFdfMzc2Mi9zaGFyZC1oc3c4L2lndEBkcm1faW1wb3J0X2V4cG9y
dEBpbXBvcnQtY2xvc2UtcmFjZS1wcmltZS5odG1sCgogICogaWd0QGdlbV9idXN5QGNsb3NlLXJh
Y2U6CiAgICAtIHNoYXJkLXRnbGI6ICAgICAgICAgW0lOQ09NUExFVEVdWzM5XSAoW2ZkbyMxMTE3
NDddKSAtPiBbUEFTU11bNDBdCiAgIFszOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzc0MjYvc2hhcmQtdGdsYjYvaWd0QGdlbV9idXN5QGNsb3NlLXJh
Y2UuaHRtbAogICBbNDBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0lHVFBXXzM3NjIvc2hhcmQtdGdsYjQvaWd0QGdlbV9idXN5QGNsb3NlLXJhY2UuaHRtbAoKICAq
IGlndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MxLXMzOgogICAgLSBzaGFyZC10Z2xiOiAgICAgICAg
IFtJTkNPTVBMRVRFXVs0MV0gKFtmZG8jMTExODMyXSkgLT4gW1BBU1NdWzQyXQogICBbNDFdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDI2L3NoYXJk
LXRnbGI1L2lndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MxLXMzLmh0bWwKICAgWzQyXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9JR1RQV18zNzYyL3NoYXJkLXRnbGI1
L2lndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MxLXMzLmh0bWwKCiAgKiBpZ3RAZ2VtX2N0eF9wZXJz
aXN0ZW5jZUBzbW9rZXRlc3Q6CiAgICAtIHNoYXJkLWdsazogICAgICAgICAgW1RJTUVPVVRdWzQz
XSAtPiBbUEFTU11bNDRdCiAgIFs0M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzc0MjYvc2hhcmQtZ2xrNy9pZ3RAZ2VtX2N0eF9wZXJzaXN0ZW5jZUBz
bW9rZXRlc3QuaHRtbAogICBbNDRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0lHVFBXXzM3NjIvc2hhcmQtZ2xrNy9pZ3RAZ2VtX2N0eF9wZXJzaXN0ZW5jZUBzbW9r
ZXRlc3QuaHRtbAoKICAqIGlndEBnZW1fZWlvQGluLWZsaWdodC1zdXNwZW5kOgogICAgLSBzaGFy
ZC10Z2xiOiAgICAgICAgIFtJTkNPTVBMRVRFXVs0NV0gKFtmZG8jMTExODMyXSAvIFtmZG8jMTEx
ODUwXSAvIFtmZG8jMTEyMDgxXSkgLT4gW1BBU1NdWzQ2XQogICBbNDVdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDI2L3NoYXJkLXRnbGIyL2lndEBn
ZW1fZWlvQGluLWZsaWdodC1zdXNwZW5kLmh0bWwKICAgWzQ2XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9JR1RQV18zNzYyL3NoYXJkLXRnbGIxL2lndEBnZW1fZWlv
QGluLWZsaWdodC1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1w
dC1xdWV1ZS1ic2QyOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVs0N10gKFtmZG8j
MTA5Mjc2XSkgLT4gW1BBU1NdWzQ4XSArMSBzaW1pbGFyIGlzc3VlCiAgIFs0N106IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MjYvc2hhcmQtaWNsYjMv
aWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtcXVldWUtYnNkMi5odG1sCiAgIFs0OF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvSUdUUFdfMzc2Mi9zaGFyZC1p
Y2xiMi9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1xdWV1ZS1ic2QyLmh0bWwKCiAgKiBp
Z3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1pbnRlcnJ1cHRpYmxlLWZhdWx0aW5nLXJl
bG9jLXRocmFzaC1pbmFjdGl2ZToKICAgIC0gc2hhcmQtaHN3OiAgICAgICAgICBbVElNRU9VVF1b
NDldIChbZmRvIzExMjA2OCBdKSAtPiBbUEFTU11bNTBdCiAgIFs0OV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MjYvc2hhcmQtaHN3Mi9pZ3RAZ2Vt
X3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1pbnRlcnJ1cHRpYmxlLWZhdWx0aW5nLXJlbG9jLXRo
cmFzaC1pbmFjdGl2ZS5odG1sCiAgIFs1MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvSUdUUFdfMzc2Mi9zaGFyZC1oc3c1L2lndEBnZW1fcGVyc2lzdGVudF9yZWxv
Y3NAZm9ya2VkLWludGVycnVwdGlibGUtZmF1bHRpbmctcmVsb2MtdGhyYXNoLWluYWN0aXZlLmh0
bWwKCiAgKiBpZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAbWFwLWZpeGVkLWludmFsaWRhdGUtYnVzeS1n
dXA6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW0RNRVNHLVdBUk5dWzUxXSAoW2ZkbyMxMTE4
NzBdKSAtPiBbUEFTU11bNTJdICsxIHNpbWlsYXIgaXNzdWUKICAgWzUxXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQyNi9zaGFyZC1zbmI0L2lndEBn
ZW1fdXNlcnB0cl9ibGl0c0BtYXAtZml4ZWQtaW52YWxpZGF0ZS1idXN5LWd1cC5odG1sCiAgIFs1
Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvSUdUUFdfMzc2Mi9z
aGFyZC1zbmI2L2lndEBnZW1fdXNlcnB0cl9ibGl0c0BtYXAtZml4ZWQtaW52YWxpZGF0ZS1idXN5
LWd1cC5odG1sCgogICogaWd0QGdlbV91c2VycHRyX2JsaXRzQG1hcC1maXhlZC1pbnZhbGlkYXRl
LW92ZXJsYXAtYnVzeToKICAgIC0gc2hhcmQtaHN3OiAgICAgICAgICBbRE1FU0ctV0FSTl1bNTNd
IChbZmRvIzExMTg3MF0pIC0+IFtQQVNTXVs1NF0gKzMgc2ltaWxhciBpc3N1ZXMKICAgWzUzXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQyNi9zaGFy
ZC1oc3c0L2lndEBnZW1fdXNlcnB0cl9ibGl0c0BtYXAtZml4ZWQtaW52YWxpZGF0ZS1vdmVybGFw
LWJ1c3kuaHRtbAogICBbNTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0lHVFBXXzM3NjIvc2hhcmQtaHN3OC9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAbWFwLWZpeGVk
LWludmFsaWRhdGUtb3ZlcmxhcC1idXN5Lmh0bWwKCiAgKiBpZ3RAaTkxNV9wbV9iYWNrbGlnaHRA
ZmFkZV93aXRoX3N1c3BlbmQ6CiAgICAtIHNoYXJkLXRnbGI6ICAgICAgICAgW0lOQ09NUExFVEVd
WzU1XSAoW2ZkbyMxMTE4MzJdIC8gW2ZkbyMxMTE4NTBdKSAtPiBbUEFTU11bNTZdICsxIHNpbWls
YXIgaXNzdWUKICAgWzU1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzQyNi9zaGFyZC10Z2xiMS9pZ3RAaTkxNV9wbV9iYWNrbGlnaHRAZmFkZV93aXRo
X3N1c3BlbmQuaHRtbAogICBbNTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0lHVFBXXzM3NjIvc2hhcmQtdGdsYjEvaWd0QGk5MTVfcG1fYmFja2xpZ2h0QGZhZGVf
d2l0aF9zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1jLWN1cnNvci0x
Mjh4MTI4LW9uc2NyZWVuOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtGQUlMXVs1N10gKFtm
ZG8jMTAzMjMyXSkgLT4gW1BBU1NdWzU4XSArMSBzaW1pbGFyIGlzc3VlCiAgIFs1N106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MjYvc2hhcmQta2Js
MS9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1jLWN1cnNvci0xMjh4MTI4LW9uc2NyZWVuLmh0bWwK
ICAgWzU4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9JR1RQV18z
NzYyL3NoYXJkLWtibDcvaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYy1jdXJzb3ItMTI4eDEyOC1v
bnNjcmVlbi5odG1sCiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW0ZBSUxdWzU5XSAoW2ZkbyMx
MDMyMzJdKSAtPiBbUEFTU11bNjBdICsxIHNpbWlsYXIgaXNzdWUKICAgWzU5XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQyNi9zaGFyZC1hcGwxL2ln
dEBrbXNfY3Vyc29yX2NyY0BwaXBlLWMtY3Vyc29yLTEyOHgxMjgtb25zY3JlZW4uaHRtbAogICBb
NjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0lHVFBXXzM3NjIv
c2hhcmQtYXBsNi9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1jLWN1cnNvci0xMjh4MTI4LW9uc2Ny
ZWVuLmh0bWwKICAgIC0gc2hhcmQtZ2xrOiAgICAgICAgICBbRkFJTF1bNjFdIChbZmRvIzEwMzIz
Ml0pIC0+IFtQQVNTXVs2Ml0KICAgWzYxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNzQyNi9zaGFyZC1nbGs0L2lndEBrbXNfY3Vyc29yX2NyY0BwaXBl
LWMtY3Vyc29yLTEyOHgxMjgtb25zY3JlZW4uaHRtbAogICBbNjJdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0lHVFBXXzM3NjIvc2hhcmQtZ2xrNy9pZ3RAa21zX2N1
cnNvcl9jcmNAcGlwZS1jLWN1cnNvci0xMjh4MTI4LW9uc2NyZWVuLmh0bWwKCiAgKiBpZ3RAa21z
X2N1cnNvcl9sZWdhY3lAY3Vyc29yLXZzLWZsaXAtdmFyeWluZy1zaXplOgogICAgLSBzaGFyZC1o
c3c6ICAgICAgICAgIFtGQUlMXVs2M10gKFtmZG8jMTAzMzU1XSkgLT4gW1BBU1NdWzY0XQogICBb
NjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDI2
L3NoYXJkLWhzdzUvaWd0QGttc19jdXJzb3JfbGVnYWN5QGN1cnNvci12cy1mbGlwLXZhcnlpbmct
c2l6ZS5odG1sCiAgIFs2NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvSUdUUFdfMzc2Mi9zaGFyZC1oc3c2L2lndEBrbXNfY3Vyc29yX2xlZ2FjeUBjdXJzb3ItdnMt
ZmxpcC12YXJ5aW5nLXNpemUuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQ6
CiAgICAtIHNoYXJkLXRnbGI6ICAgICAgICAgW0lOQ09NUExFVEVdWzY1XSAoW2ZkbyMxMTE4NTBd
IC8gW2ZkbyMxMTIwMzFdKSAtPiBbUEFTU11bNjZdCiAgIFs2NV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MjYvc2hhcmQtdGdsYjgvaWd0QGttc19m
bGlwQGZsaXAtdnMtc3VzcGVuZC5odG1sCiAgIFs2Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvSUdUUFdfMzc2Mi9zaGFyZC10Z2xiNi9pZ3RAa21zX2ZsaXBAZmxp
cC12cy1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVy
cnVwdGlibGU6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW0RNRVNHLVdBUk5dWzY3XSAoW2Zk
byMxMDg1NjZdKSAtPiBbUEFTU11bNjhdICsxIHNpbWlsYXIgaXNzdWUKICAgWzY3XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQyNi9zaGFyZC1hcGw0
L2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQtaW50ZXJydXB0aWJsZS5odG1sCiAgIFs2OF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvSUdUUFdfMzc2Mi9zaGFy
ZC1hcGw4L2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQtaW50ZXJydXB0aWJsZS5odG1sCgog
ICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtaW5kZmItc2NhbGVkcHJpbWFyeToK
ICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbSU5DT01QTEVURV1bNjldIChbZmRvIzEwMzY2NV0p
IC0+IFtQQVNTXVs3MF0gKzEgc2ltaWxhciBpc3N1ZQogICBbNjldOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDI2L3NoYXJkLWtibDcvaWd0QGttc19m
cm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtaW5kZmItc2NhbGVkcHJpbWFyeS5odG1sCiAgIFs3MF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvSUdUUFdfMzc2Mi9zaGFy
ZC1rYmwyL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLWluZGZiLXNjYWxlZHByaW1h
cnkuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLXN1c3BlbmQ6CiAg
ICAtIHNoYXJkLXRnbGI6ICAgICAgICAgW0lOQ09NUExFVEVdWzcxXSAoW2ZkbyMxMTE4MzJdIC8g
W2ZkbyMxMTE4NTBdIC8gW2ZkbyMxMTE4ODRdKSAtPiBbUEFTU11bNzJdCiAgIFs3MV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MjYvc2hhcmQtdGds
YjEvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtc3VzcGVuZC5odG1sCiAgIFs3Ml06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvSUdUUFdfMzc2Mi9zaGFy
ZC10Z2xiNC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy1zdXNwZW5kLmh0bWwKCiAg
KiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1zcHItaW5k
ZmItZHJhdy1ibHQ6CiAgICAtIHNoYXJkLXRnbGI6ICAgICAgICAgW0ZBSUxdWzczXSAoW2ZkbyMx
MDMxNjddKSAtPiBbUEFTU11bNzRdICsxIHNpbWlsYXIgaXNzdWUKICAgWzczXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQyNi9zaGFyZC10Z2xiNi9p
Z3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1zcHItaW5kZmIt
ZHJhdy1ibHQuaHRtbAogICBbNzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0lHVFBXXzM3NjIvc2hhcmQtdGdsYjgvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2lu
Z0BmYmNwc3ItMXAtcHJpbXNjcm4tc3ByLWluZGZiLWRyYXctYmx0Lmh0bWwKCiAgKiBpZ3RAa21z
X3ZibGFua0BwaXBlLWEtdHMtY29udGludWF0aW9uLXN1c3BlbmQ6CiAgICAtIHNoYXJkLWtibDog
ICAgICAgICAgW0RNRVNHLVdBUk5dWzc1XSAoW2ZkbyMxMDg1NjZdKSAtPiBbUEFTU11bNzZdICsy
IHNpbWlsYXIgaXNzdWVzCiAgIFs3NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzc0MjYvc2hhcmQta2JsNC9pZ3RAa21zX3ZibGFua0BwaXBlLWEtdHMt
Y29udGludWF0aW9uLXN1c3BlbmQuaHRtbAogICBbNzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0lHVFBXXzM3NjIvc2hhcmQta2JsNy9pZ3RAa21zX3ZibGFua0Bw
aXBlLWEtdHMtY29udGludWF0aW9uLXN1c3BlbmQuaHRtbAoKICAKIyMjIyBXYXJuaW5ncyAjIyMj
CgogICogaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZjczEtbm9ucHJpdjoKICAgIC0gc2hhcmQtaWNs
YjogICAgICAgICBbU0tJUF1bNzddIChbZmRvIzEwOTI3Nl0gLyBbZmRvIzExMjA4MF0pIC0+IFtG
QUlMXVs3OF0gKFtmZG8jMTExMzI5XSkKICAgWzc3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQyNi9zaGFyZC1pY2xiMy9pZ3RAZ2VtX2N0eF9pc29s
YXRpb25AdmNzMS1ub25wcml2Lmh0bWwKICAgWzc4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9JR1RQV18zNzYyL3NoYXJkLWljbGIyL2lndEBnZW1fY3R4X2lzb2xh
dGlvbkB2Y3MxLW5vbnByaXYuaHRtbAoKICAKICBbZmRvIzEwMzE2N106IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzE2NwogIFtmZG8jMTAzMjMyXTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMjMyCiAgW2ZkbyMx
MDMzNTVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMz
NTUKICBbZmRvIzEwMzU0MF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTEwMzU0MAogIFtmZG8jMTAzNjY1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTAzNjY1CiAgW2ZkbyMxMDg1NjZdOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg1NjYKICBbZmRvIzEwOTI3Nl06IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3NgogIFtmZG8jMTA5
NDQxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5NDQx
CiAgW2ZkbyMxMTA3ODldOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMTA3ODkKICBbZmRvIzExMTMyOV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTExMTMyOQogIFtmZG8jMTExNzM2XTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNzM2CiAgW2ZkbyMxMTE3NDddOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE3NDcKICBbZmRvIzExMTgz
Ml06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTgzMgog
IFtmZG8jMTExODUwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTExODUwCiAgW2ZkbyMxMTE4NzBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMTE4NzAKICBbZmRvIzExMTg4NF06IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTg4NAogIFtmZG8jMTEyMDMxXTogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMDMxCiAgW2ZkbyMxMTIwNjgg
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMDY4IAog
IFtmZG8jMTEyMDgwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTEyMDgwCiAgW2ZkbyMxMTIwODFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMTIwODEKCgpQYXJ0aWNpcGF0aW5nIGhvc3RzICgxMSAtPiA4KQotLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTWlzc2luZyAgICAoMyk6IHBpZy1za2wtNjI2
MHUgcGlnLWdsay1qNTAwNSBwaWctaHN3LTQ3NzByIAoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0t
LS0tLQoKICAqIENJOiBDSS0yMDE5MDUyOSAtPiBOb25lCiAgKiBJR1Q6IElHVF81MzEwIC0+IElH
VFBXXzM3NjIKICAqIFBpZ2xpdDogcGlnbGl0XzQ1MDkgLT4gTm9uZQoKICBDSS0yMDE5MDUyOTog
MjAxOTA1MjkKICBDSV9EUk1fNzQyNjogYjIwNGQ3MmQzNDg1YTE0ODQ1NmUyMDc3NjgzOTc0NzM5
YjY3NWIyMSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElH
VFBXXzM3NjI6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvSUdUUFdf
Mzc2Mi9pbmRleC5odG1sCiAgSUdUXzUzMTA6IGQxZWE2MmIzZjc1OWYxMGZmNjg2MDU2MWJhODJl
NWM0OTAyNTExZDMgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRl
bC1ncHUtdG9vbHMKICBwaWdsaXRfNDUwOTogZmRjNWE0Y2ExMTEyNGFiODQxM2M3OTg4ODk2ZWVj
NGM5NzMzNjY5NCBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3BpZ2xpdAoKPT0gTG9n
cyA9PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvSUdUUFdfMzc2Mi9pbmRleC5odG1sCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
