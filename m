Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E001610605A
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 06:42:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C95BD6E0D4;
	Fri, 22 Nov 2019 05:42:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5C6286E0CA;
 Fri, 22 Nov 2019 05:42:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5341EA00E6;
 Fri, 22 Nov 2019 05:42:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 22 Nov 2019 05:42:51 -0000
Message-ID: <157440137131.23772.15596720629612285947@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191120234608.17775-1-lucas.demarchi@intel.com>
In-Reply-To: <20191120234608.17775-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5B1/3=5D_drm/i915/bios=3A_do_not_discard_addr?=
 =?utf-8?q?ess_space?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvM10g
ZHJtL2k5MTUvYmlvczogZG8gbm90IGRpc2NhcmQgYWRkcmVzcyBzcGFjZQpVUkwgICA6IGh0dHBz
Oi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjk3OTAvClN0YXRlIDogZmFpbHVy
ZQoKPT0gU3VtbWFyeSA9PQoKQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNzM5NF9m
dWxsIC0+IFBhdGNod29ya18xNTM2NF9mdWxsCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoK
ICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTUzNjRfZnVs
bCBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUKICB2ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3Ug
dGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNo
YW5nZXMKICBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNTM2NF9mdWxsLCBwbGVhc2Ugbm90aWZ5
IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhlbQogIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1
cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLgoKICAKClBv
c3NpYmxlIG5ldyBpc3N1ZXMKLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5r
bm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18x
NTM2NF9mdWxsOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9u
cyAjIyMjCgogICogaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYS1jdXJzb3ItNjR4NjQtcmFuZG9t
OgogICAgLSBzaGFyZC10Z2xiOiAgICAgICAgIFtQQVNTXVsxXSAtPiBbSU5DT01QTEVURV1bMl0K
ICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83
Mzk0L3NoYXJkLXRnbGI5L2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWEtY3Vyc29yLTY0eDY0LXJh
bmRvbS5odG1sCiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTUzNjQvc2hhcmQtdGdsYjUvaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYS1j
dXJzb3ItNjR4NjQtcmFuZG9tLmh0bWwKCiAgCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAg
SGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE1MzY0X2Z1bGwgdGhhdCBj
b21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMg
aGl0ICMjIyMKCiAgKiBpZ3RAZ2VtX2J1c3lAY2xvc2UtcmFjZToKICAgIC0gc2hhcmQtdGdsYjog
ICAgICAgICBbUEFTU11bM10gLT4gW0lOQ09NUExFVEVdWzRdIChbZmRvIzExMTc0N10pCiAgIFsz
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM5NC9z
aGFyZC10Z2xiNC9pZ3RAZ2VtX2J1c3lAY2xvc2UtcmFjZS5odG1sCiAgIFs0XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzNjQvc2hhcmQtdGds
YjYvaWd0QGdlbV9idXN5QGNsb3NlLXJhY2UuaHRtbAoKICAqIGlndEBnZW1fY3R4X3BlcnNpc3Rl
bmNlQHZjczEtcXVldWVkOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVs1XSAtPiBb
U0tJUF1bNl0gKFtmZG8jMTA5Mjc2XSAvIFtmZG8jMTEyMDgwXSkgKzMgc2ltaWxhciBpc3N1ZXMK
ICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83
Mzk0L3NoYXJkLWljbGI0L2lndEBnZW1fY3R4X3BlcnNpc3RlbmNlQHZjczEtcXVldWVkLmh0bWwK
ICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNTM2NC9zaGFyZC1pY2xiNS9pZ3RAZ2VtX2N0eF9wZXJzaXN0ZW5jZUB2Y3MxLXF1ZXVlZC5o
dG1sCgogICogaWd0QGdlbV9jdHhfc3dpdGNoQHZjczEtaGVhdnktcXVldWU6CiAgICAtIHNoYXJk
LWljbGI6ICAgICAgICAgW1BBU1NdWzddIC0+IFtTS0lQXVs4XSAoW2ZkbyMxMTIwODBdKSArMTAg
c2ltaWxhciBpc3N1ZXMKICAgWzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83Mzk0L3NoYXJkLWljbGI0L2lndEBnZW1fY3R4X3N3aXRjaEB2Y3MxLWhl
YXZ5LXF1ZXVlLmh0bWwKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNTM2NC9zaGFyZC1pY2xiMy9pZ3RAZ2VtX2N0eF9zd2l0Y2hAdmNz
MS1oZWF2eS1xdWV1ZS5odG1sCgogICogaWd0QGdlbV9leGVjX3NjaGVkdWxlQGZpZm8tYnNkMToK
ICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bOV0gLT4gW1NLSVBdWzEwXSAoW2ZkbyMx
MDkyNzZdKSArMTYgc2ltaWxhciBpc3N1ZXMKICAgWzldOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83Mzk0L3NoYXJkLWljbGI0L2lndEBnZW1fZXhlY19z
Y2hlZHVsZUBmaWZvLWJzZDEuaHRtbAogICBbMTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTM2NC9zaGFyZC1pY2xiMy9pZ3RAZ2VtX2V4ZWNf
c2NoZWR1bGVAZmlmby1ic2QxLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1w
dC1vdGhlci1jaGFpbi1ic2Q6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzExXSAt
PiBbU0tJUF1bMTJdIChbZmRvIzExMjE0Nl0pICs5IHNpbWlsYXIgaXNzdWVzCiAgIFsxMV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczOTQvc2hhcmQt
aWNsYjUvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtb3RoZXItY2hhaW4tYnNkLmh0bWwK
ICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTUzNjQvc2hhcmQtaWNsYjQvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtb3RoZXIt
Y2hhaW4tYnNkLmh0bWwKCiAgKiBpZ3RAZ2VtX3N5bmNAYmFzaWMtc3RvcmUtYWxsOgogICAgLSBz
aGFyZC10Z2xiOiAgICAgICAgIFtQQVNTXVsxM10gLT4gW0lOQ09NUExFVEVdWzE0XSAoW2ZkbyMx
MTE4ODBdKQogICBbMTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV83Mzk0L3NoYXJkLXRnbGI4L2lndEBnZW1fc3luY0BiYXNpYy1zdG9yZS1hbGwuaHRt
bAogICBbMTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNTM2NC9zaGFyZC10Z2xiNi9pZ3RAZ2VtX3N5bmNAYmFzaWMtc3RvcmUtYWxsLmh0bWwK
CiAgKiBpZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAbWFwLWZpeGVkLWludmFsaWRhdGUtYnVzeS1ndXA6
CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW1BBU1NdWzE1XSAtPiBbRE1FU0ctV0FSTl1bMTZd
IChbZmRvIzExMTg3MF0pICsxIHNpbWlsYXIgaXNzdWUKICAgWzE1XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM5NC9zaGFyZC1zbmI1L2lndEBnZW1f
dXNlcnB0cl9ibGl0c0BtYXAtZml4ZWQtaW52YWxpZGF0ZS1idXN5LWd1cC5odG1sCiAgIFsxNl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzY0
L3NoYXJkLXNuYjIvaWd0QGdlbV91c2VycHRyX2JsaXRzQG1hcC1maXhlZC1pbnZhbGlkYXRlLWJ1
c3ktZ3VwLmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVjazoKICAgIC0g
c2hhcmQtaHN3OiAgICAgICAgICBbUEFTU11bMTddIC0+IFtETUVTRy1GQUlMXVsxOF0gKFtmZG8j
MTExOTkxXSkKICAgWzE3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzM5NC9zaGFyZC1oc3c0L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2NoZWNr
Lmh0bWwKICAgWzE4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTUzNjQvc2hhcmQtaHN3NS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVj
ay5odG1sCgogICogaWd0QGk5MTVfc3VzcGVuZEBkZWJ1Z2ZzLXJlYWRlcjoKICAgIC0gc2hhcmQt
dGdsYjogICAgICAgICBbUEFTU11bMTldIC0+IFtJTkNPTVBMRVRFXVsyMF0gKFtmZG8jMTExODMy
XSAvIFtmZG8jMTExODUwXSkgKzMgc2ltaWxhciBpc3N1ZXMKICAgWzE5XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM5NC9zaGFyZC10Z2xiNy9pZ3RA
aTkxNV9zdXNwZW5kQGRlYnVnZnMtcmVhZGVyLmh0bWwKICAgWzIwXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzNjQvc2hhcmQtdGdsYjQvaWd0
QGk5MTVfc3VzcGVuZEBkZWJ1Z2ZzLXJlYWRlci5odG1sCgogICogaWd0QGttc19kcmF3X2NyY0Bk
cmF3LW1ldGhvZC14cmdiMjEwMTAxMC1wd3JpdGUtdW50aWxlZDoKICAgIC0gc2hhcmQtc2tsOiAg
ICAgICAgICBbUEFTU11bMjFdIC0+IFtGQUlMXVsyMl0gKFtmZG8jMTAzMTg0XSAvIFtmZG8jMTAz
MjMyXSAvIFtmZG8jMTA4NDcyXSkgKzEgc2ltaWxhciBpc3N1ZQogICBbMjFdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83Mzk0L3NoYXJkLXNrbDIvaWd0
QGttc19kcmF3X2NyY0BkcmF3LW1ldGhvZC14cmdiMjEwMTAxMC1wd3JpdGUtdW50aWxlZC5odG1s
CiAgIFsyMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE1MzY0L3NoYXJkLXNrbDYvaWd0QGttc19kcmF3X2NyY0BkcmF3LW1ldGhvZC14cmdiMjEw
MTAxMC1wd3JpdGUtdW50aWxlZC5odG1sCgogICogaWd0QGttc19kcmF3X2NyY0BkcmF3LW1ldGhv
ZC14cmdiODg4OC1tbWFwLWd0dC15dGlsZWQ6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BB
U1NdWzIzXSAtPiBbRkFJTF1bMjRdIChbZmRvIzEwMzE4NF0gLyBbZmRvIzEwMzIzMl0gLyBbZmRv
IzEwODE0NV0pCiAgIFsyM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzczOTQvc2hhcmQtc2tsMi9pZ3RAa21zX2RyYXdfY3JjQGRyYXctbWV0aG9kLXhy
Z2I4ODg4LW1tYXAtZ3R0LXl0aWxlZC5odG1sCiAgIFsyNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzY0L3NoYXJkLXNrbDYvaWd0QGttc19k
cmF3X2NyY0BkcmF3LW1ldGhvZC14cmdiODg4OC1tbWFwLWd0dC15dGlsZWQuaHRtbAoKICAqIGln
dEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rOgogICAgLSBzaGFyZC1za2w6ICAgICAg
ICAgIFtQQVNTXVsyNV0gLT4gW0ZBSUxdWzI2XSAoW2ZkbyMxMDUzNjNdKQogICBbMjVdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83Mzk0L3NoYXJkLXNr
bDkvaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12YmxhbmsuaHRtbAogICBbMjZdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTM2NC9zaGFy
ZC1za2wzL2lndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLmh0bWwKCiAgKiBpZ3RA
a21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmktaW5kZmItbXVsdGlkcmF3OgogICAg
LSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsyN10gLT4gW0ZBSUxdWzI4XSAoW2ZkbyMxMDMx
NjddKSArMyBzaW1pbGFyIGlzc3VlcwogICBbMjddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83Mzk0L3NoYXJkLWljbGI4L2lndEBrbXNfZnJvbnRidWZm
ZXJfdHJhY2tpbmdAZmJjLTFwLXByaS1pbmRmYi1tdWx0aWRyYXcuaHRtbAogICBbMjhdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTM2NC9zaGFy
ZC1pY2xiOC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmktaW5kZmItbXVs
dGlkcmF3Lmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmlt
c2Nybi1pbmRmYi1wbGZsaXAtYmx0OgogICAgLSBzaGFyZC10Z2xiOiAgICAgICAgIFtQQVNTXVsy
OV0gLT4gW0ZBSUxdWzMwXSAoW2ZkbyMxMDMxNjddKQogICBbMjldOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83Mzk0L3NoYXJkLXRnbGI2L2lndEBrbXNf
ZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3JuLWluZGZiLXBsZmxpcC1ibHQuaHRt
bAogICBbMzBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNTM2NC9zaGFyZC10Z2xiOC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0x
cC1wcmltc2Nybi1pbmRmYi1wbGZsaXAtYmx0Lmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVy
X3RyYWNraW5nQGZiY3Bzci1zdXNwZW5kOgogICAgLSBzaGFyZC10Z2xiOiAgICAgICAgIFtQQVNT
XVszMV0gLT4gW0lOQ09NUExFVEVdWzMyXSAoW2ZkbyMxMTE4MzJdIC8gW2ZkbyMxMTE4NTBdIC8g
W2ZkbyMxMTE4ODRdKQogICBbMzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83Mzk0L3NoYXJkLXRnbGI5L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tp
bmdAZmJjcHNyLXN1c3BlbmQuaHRtbAogICBbMzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTM2NC9zaGFyZC10Z2xiNy9pZ3RAa21zX2Zyb250
YnVmZmVyX3RyYWNraW5nQGZiY3Bzci1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAa21zX3BpcGVfY3Jj
X2Jhc2ljQHN1c3BlbmQtcmVhZC1jcmMtcGlwZS1hOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAg
IFtQQVNTXVszM10gLT4gW0RNRVNHLVdBUk5dWzM0XSAoW2ZkbyMxMDg1NjZdKSArNiBzaW1pbGFy
IGlzc3VlcwogICBbMzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV83Mzk0L3NoYXJkLWtibDcvaWd0QGttc19waXBlX2NyY19iYXNpY0BzdXNwZW5kLXJl
YWQtY3JjLXBpcGUtYS5odG1sCiAgIFszNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzY0L3NoYXJkLWtibDcvaWd0QGttc19waXBlX2NyY19i
YXNpY0BzdXNwZW5kLXJlYWQtY3JjLXBpcGUtYS5odG1sCgogICogaWd0QGttc19wbGFuZUBwbGFu
ZS1wYW5uaW5nLWJvdHRvbS1yaWdodC1zdXNwZW5kLXBpcGUtYi1wbGFuZXM6CiAgICAtIHNoYXJk
LWFwbDogICAgICAgICAgW1BBU1NdWzM1XSAtPiBbRE1FU0ctV0FSTl1bMzZdIChbZmRvIzEwODU2
Nl0pICszIHNpbWlsYXIgaXNzdWVzCiAgIFszNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzczOTQvc2hhcmQtYXBsMy9pZ3RAa21zX3BsYW5lQHBsYW5l
LXBhbm5pbmctYm90dG9tLXJpZ2h0LXN1c3BlbmQtcGlwZS1iLXBsYW5lcy5odG1sCiAgIFszNl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzY0
L3NoYXJkLWFwbDEvaWd0QGttc19wbGFuZUBwbGFuZS1wYW5uaW5nLWJvdHRvbS1yaWdodC1zdXNw
ZW5kLXBpcGUtYi1wbGFuZXMuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlw
ZS1jLWNvbnN0YW50LWFscGhhLW1pbjoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11b
MzddIC0+IFtGQUlMXVszOF0gKFtmZG8jMTA4MTQ1XSkKICAgWzM3XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM5NC9zaGFyZC1za2wxL2lndEBrbXNf
cGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1jLWNvbnN0YW50LWFscGhhLW1pbi5odG1sCiAgIFszOF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzY0
L3NoYXJkLXNrbDkvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWMtY29uc3RhbnQtYWxw
aGEtbWluLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX2xvd3Jlc0BwaXBlLWEtdGlsaW5nLXg6CiAg
ICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzM5XSAtPiBbRkFJTF1bNDBdIChbZmRvIzEw
MzE2Nl0pCiAgIFszOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzczOTQvc2hhcmQtaWNsYjUvaWd0QGttc19wbGFuZV9sb3dyZXNAcGlwZS1hLXRpbGlu
Zy14Lmh0bWwKICAgWzQwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTUzNjQvc2hhcmQtaWNsYjgvaWd0QGttc19wbGFuZV9sb3dyZXNAcGlwZS1h
LXRpbGluZy14Lmh0bWwKCiAgKiBpZ3RAa21zX3BzckBwc3IyX3ByaW1hcnlfbW1hcF9jcHU6CiAg
ICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzQxXSAtPiBbU0tJUF1bNDJdIChbZmRvIzEw
OTQ0MV0pICsxIHNpbWlsYXIgaXNzdWUKICAgWzQxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM5NC9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzckBwc3Iy
X3ByaW1hcnlfbW1hcF9jcHUuaHRtbAogICBbNDJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTM2NC9zaGFyZC1pY2xiMy9pZ3RAa21zX3BzckBw
c3IyX3ByaW1hcnlfbW1hcF9jcHUuaHRtbAoKICAqIGlndEBrbXNfdmJsYW5rQHBpcGUtYi10cy1j
b250aW51YXRpb24tZHBtcy1zdXNwZW5kOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtQQVNT
XVs0M10gLT4gW0lOQ09NUExFVEVdWzQ0XSAoW2ZkbyMxMDM2NjVdKQogICBbNDNdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83Mzk0L3NoYXJkLWtibDEv
aWd0QGttc192YmxhbmtAcGlwZS1iLXRzLWNvbnRpbnVhdGlvbi1kcG1zLXN1c3BlbmQuaHRtbAog
ICBbNDRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNTM2NC9zaGFyZC1rYmwxL2lndEBrbXNfdmJsYW5rQHBpcGUtYi10cy1jb250aW51YXRpb24t
ZHBtcy1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAa21zX3ZibGFua0BwaXBlLWMtdHMtY29udGludWF0
aW9uLXN1c3BlbmQ6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzQ1XSAtPiBbSU5D
T01QTEVURV1bNDZdIChbZmRvIzEwNDEwOF0pCiAgIFs0NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczOTQvc2hhcmQtc2tsNi9pZ3RAa21zX3ZibGFu
a0BwaXBlLWMtdHMtY29udGludWF0aW9uLXN1c3BlbmQuaHRtbAogICBbNDZdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTM2NC9zaGFyZC1za2wz
L2lndEBrbXNfdmJsYW5rQHBpcGUtYy10cy1jb250aW51YXRpb24tc3VzcGVuZC5odG1sCgogICog
aWd0QHBlcmZAZ2VuOC11bnByaXZpbGVnZWQtc2luZ2xlLWN0eC1jb3VudGVyczoKICAgIC0gc2hh
cmQtc2tsOiAgICAgICAgICBbUEFTU11bNDddIC0+IFtJTkNPTVBMRVRFXVs0OF0gKFtmZG8jMTEx
NzQ3XSkKICAgWzQ3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNzM5NC9zaGFyZC1za2w2L2lndEBwZXJmQGdlbjgtdW5wcml2aWxlZ2VkLXNpbmdsZS1j
dHgtY291bnRlcnMuaHRtbAogICBbNDhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNTM2NC9zaGFyZC1za2w1L2lndEBwZXJmQGdlbjgtdW5wcml2
aWxlZ2VkLXNpbmdsZS1jdHgtY291bnRlcnMuaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAj
IyMjCgogICogaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZjczEtZGlydHktY3JlYXRlOgogICAgLSBz
aGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVs0OV0gKFtmZG8jMTA5Mjc2XSAvIFtmZG8jMTEyMDgw
XSkgLT4gW1BBU1NdWzUwXSArMSBzaW1pbGFyIGlzc3VlCiAgIFs0OV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczOTQvc2hhcmQtaWNsYjgvaWd0QGdl
bV9jdHhfaXNvbGF0aW9uQHZjczEtZGlydHktY3JlYXRlLmh0bWwKICAgWzUwXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzNjQvc2hhcmQtaWNs
YjQvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZjczEtZGlydHktY3JlYXRlLmh0bWwKCiAgKiBpZ3RA
Z2VtX2N0eF9zd2l0Y2hAcXVldWUtaGVhdnk6CiAgICAtIHNoYXJkLXRnbGI6ICAgICAgICAgW0lO
Q09NUExFVEVdWzUxXSAoW2ZkbyMxMTE3NDddKSAtPiBbUEFTU11bNTJdCiAgIFs1MV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczOTQvc2hhcmQtdGds
YjYvaWd0QGdlbV9jdHhfc3dpdGNoQHF1ZXVlLWhlYXZ5Lmh0bWwKICAgWzUyXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzNjQvc2hhcmQtdGds
YjUvaWd0QGdlbV9jdHhfc3dpdGNoQHF1ZXVlLWhlYXZ5Lmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNf
YmFsYW5jZXJAc21va2U6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NLSVBdWzUzXSAoW2Zk
byMxMTA4NTRdKSAtPiBbUEFTU11bNTRdCiAgIFs1M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczOTQvc2hhcmQtaWNsYjYvaWd0QGdlbV9leGVjX2Jh
bGFuY2VyQHNtb2tlLmh0bWwKICAgWzU0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzNjQvc2hhcmQtaWNsYjIvaWd0QGdlbV9leGVjX2JhbGFu
Y2VyQHNtb2tlLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfY3JlYXRlQGZvcmtlZDoKICAgIC0gc2hh
cmQtdGdsYjogICAgICAgICBbSU5DT01QTEVURV1bNTVdIChbZmRvIzEwODgzOF0gLyBbZmRvIzEx
MTc0N10pIC0+IFtQQVNTXVs1Nl0KICAgWzU1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM5NC9zaGFyZC10Z2xiNi9pZ3RAZ2VtX2V4ZWNfY3JlYXRl
QGZvcmtlZC5odG1sCiAgIFs1Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE1MzY0L3NoYXJkLXRnbGI4L2lndEBnZW1fZXhlY19jcmVhdGVAZm9y
a2VkLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfcGFyYWxsZWxAdmNzMS1mZHM6CiAgICAtIHNoYXJk
LWljbGI6ICAgICAgICAgW1NLSVBdWzU3XSAoW2ZkbyMxMTIwODBdKSAtPiBbUEFTU11bNThdICsx
NSBzaW1pbGFyIGlzc3VlcwogICBbNTddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV83Mzk0L3NoYXJkLWljbGI2L2lndEBnZW1fZXhlY19wYXJhbGxlbEB2
Y3MxLWZkcy5odG1sCiAgIFs1OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE1MzY0L3NoYXJkLWljbGIyL2lndEBnZW1fZXhlY19wYXJhbGxlbEB2
Y3MxLWZkcy5odG1sCgogICogaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtY29udGV4dHMt
YnNkMjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1bNTldIChbZmRvIzEwOTI3Nl0p
IC0+IFtQQVNTXVs2MF0gKzE2IHNpbWlsYXIgaXNzdWVzCiAgIFs1OV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczOTQvc2hhcmQtaWNsYjYvaWd0QGdl
bV9leGVjX3NjaGVkdWxlQHByZWVtcHQtY29udGV4dHMtYnNkMi5odG1sCiAgIFs2MF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzY0L3NoYXJk
LWljbGIyL2lndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LWNvbnRleHRzLWJzZDIuaHRtbAoK
ICAqIGlndEBnZW1fZXhlY19zY2hlZHVsZUByZW9yZGVyLXdpZGUtYnNkOgogICAgLSBzaGFyZC1p
Y2xiOiAgICAgICAgIFtTS0lQXVs2MV0gKFtmZG8jMTEyMTQ2XSkgLT4gW1BBU1NdWzYyXSArNyBz
aW1pbGFyIGlzc3VlcwogICBbNjFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83Mzk0L3NoYXJkLWljbGIyL2lndEBnZW1fZXhlY19zY2hlZHVsZUByZW9y
ZGVyLXdpZGUtYnNkLmh0bWwKICAgWzYyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzNjQvc2hhcmQtaWNsYjMvaWd0QGdlbV9leGVjX3NjaGVk
dWxlQHJlb3JkZXItd2lkZS1ic2QuaHRtbAoKICAqIGlndEBnZW1fc29mdHBpbkBub3JlbG9jLXMz
OgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs2M10gKFtmZG8jMTA0MTA4
XSkgLT4gW1BBU1NdWzY0XQogICBbNjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV83Mzk0L3NoYXJkLXNrbDEwL2lndEBnZW1fc29mdHBpbkBub3JlbG9j
LXMzLmh0bWwKICAgWzY0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTUzNjQvc2hhcmQtc2tsOC9pZ3RAZ2VtX3NvZnRwaW5Abm9yZWxvYy1zMy5o
dG1sCgogICogaWd0QGdlbV91c2VycHRyX2JsaXRzQGRtYWJ1Zi1zeW5jOgogICAgLSBzaGFyZC1o
c3c6ICAgICAgICAgIFtETUVTRy1XQVJOXVs2NV0gKFtmZG8jMTExODcwXSkgLT4gW1BBU1NdWzY2
XQogICBbNjVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV83Mzk0L3NoYXJkLWhzdzQvaWd0QGdlbV91c2VycHRyX2JsaXRzQGRtYWJ1Zi1zeW5jLmh0bWwK
ICAgWzY2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTUzNjQvc2hhcmQtaHN3Ny9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAZG1hYnVmLXN5bmMuaHRt
bAoKICAqIGlndEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVubWFwLWN5Y2xlczoKICAgIC0gc2hh
cmQtc25iOiAgICAgICAgICBbRE1FU0ctV0FSTl1bNjddIChbZmRvIzExMTg3MF0pIC0+IFtQQVNT
XVs2OF0KICAgWzY3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNzM5NC9zaGFyZC1zbmIyL2lndEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVubWFwLWN5
Y2xlcy5odG1sCiAgIFs2OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE1MzY0L3NoYXJkLXNuYjYvaWd0QGdlbV91c2VycHRyX2JsaXRzQHN5bmMt
dW5tYXAtY3ljbGVzLmh0bWwKCiAgKiBpZ3RAaTkxNV9wbV9iYWNrbGlnaHRAZmFkZV93aXRoX3N1
c3BlbmQ6CiAgICAtIHNoYXJkLXRnbGI6ICAgICAgICAgW0lOQ09NUExFVEVdWzY5XSAoW2ZkbyMx
MTE4MzJdIC8gW2ZkbyMxMTE4NTBdKSAtPiBbUEFTU11bNzBdICsyIHNpbWlsYXIgaXNzdWVzCiAg
IFs2OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcz
OTQvc2hhcmQtdGdsYjIvaWd0QGk5MTVfcG1fYmFja2xpZ2h0QGZhZGVfd2l0aF9zdXNwZW5kLmh0
bWwKICAgWzcwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTUzNjQvc2hhcmQtdGdsYjgvaWd0QGk5MTVfcG1fYmFja2xpZ2h0QGZhZGVfd2l0aF9z
dXNwZW5kLmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0czoKICAgIC0g
c2hhcmQta2JsOiAgICAgICAgICBbSU5DT01QTEVURV1bNzFdIChbZmRvIzEwMzY2NV0gLyBbZmRv
IzExMjI1OV0pIC0+IFtQQVNTXVs3Ml0KICAgWzcxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM5NC9zaGFyZC1rYmw2L2lndEBpOTE1X3NlbGZ0ZXN0
QGxpdmVfZXhlY2xpc3RzLmh0bWwKICAgWzcyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzNjQvc2hhcmQta2JsMS9pZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlX2V4ZWNsaXN0cy5odG1sCgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29u
dGV4dHM6CiAgICAtIHNoYXJkLXRnbGI6ICAgICAgICAgW0lOQ09NUExFVEVdWzczXSAoW2ZkbyMx
MTE4MzFdKSAtPiBbUEFTU11bNzRdCiAgIFs3M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzczOTQvc2hhcmQtdGdsYjYvaWd0QGk5MTVfc2VsZnRlc3RA
bGl2ZV9nZW1fY29udGV4dHMuaHRtbAogICBbNzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTM2NC9zaGFyZC10Z2xiNy9pZ3RAaTkxNV9zZWxm
dGVzdEBsaXZlX2dlbV9jb250ZXh0cy5odG1sCgogICogaWd0QGttc19jdXJzb3JfY3JjQHBpcGUt
Yy1jdXJzb3Itc3VzcGVuZDoKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbRE1FU0ctV0FSTl1b
NzVdIChbZmRvIzEwODU2Nl0pIC0+IFtQQVNTXVs3Nl0gKzQgc2ltaWxhciBpc3N1ZXMKICAgWzc1
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM5NC9z
aGFyZC1rYmw0L2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWMtY3Vyc29yLXN1c3BlbmQuaHRtbAog
ICBbNzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNTM2NC9zaGFyZC1rYmwyL2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWMtY3Vyc29yLXN1c3Bl
bmQuaHRtbAoKICAqIGlndEBrbXNfZmxpcEAyeC1mbGlwLXZzLXN1c3BlbmQ6CiAgICAtIHNoYXJk
LWhzdzogICAgICAgICAgW0lOQ09NUExFVEVdWzc3XSAoW2ZkbyMxMDM1NDBdKSAtPiBbUEFTU11b
NzhdICsxIHNpbWlsYXIgaXNzdWUKICAgWzc3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM5NC9zaGFyZC1oc3c1L2lndEBrbXNfZmxpcEAyeC1mbGlw
LXZzLXN1c3BlbmQuaHRtbAogICBbNzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNTM2NC9zaGFyZC1oc3c1L2lndEBrbXNfZmxpcEAyeC1mbGlw
LXZzLXN1c3BlbmQuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQtaW50ZXJy
dXB0aWJsZToKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbRE1FU0ctV0FSTl1bNzldIChbZmRv
IzEwODU2Nl0pIC0+IFtQQVNTXVs4MF0gKzMgc2ltaWxhciBpc3N1ZXMKICAgWzc5XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM5NC9zaGFyZC1hcGw0
L2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQtaW50ZXJydXB0aWJsZS5odG1sCiAgIFs4MF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzY0
L3NoYXJkLWFwbDcvaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZC1pbnRlcnJ1cHRpYmxlLmh0
bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmltc2Nybi1jdXIt
aW5kZmItZHJhdy1yZW5kZXI6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW0ZBSUxdWzgxXSAo
W2ZkbyMxMDMxNjddKSAtPiBbUEFTU11bODJdICs2IHNpbWlsYXIgaXNzdWVzCiAgIFs4MV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczOTQvc2hhcmQt
aWNsYjQvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4tY3VyLWlu
ZGZiLWRyYXctcmVuZGVyLmh0bWwKICAgWzgyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzNjQvc2hhcmQtaWNsYjUvaWd0QGttc19mcm9udGJ1
ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4tY3VyLWluZGZiLWRyYXctcmVuZGVyLmh0bWwK
CiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1wcmkt
aW5kZmItZHJhdy1tbWFwLXdjOgogICAgLSBzaGFyZC10Z2xiOiAgICAgICAgIFtGQUlMXVs4M10g
KFtmZG8jMTAzMTY3XSkgLT4gW1BBU1NdWzg0XSArMyBzaW1pbGFyIGlzc3VlcwogICBbODNdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83Mzk0L3NoYXJk
LXRnbGI3L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLXBy
aS1pbmRmYi1kcmF3LW1tYXAtd2MuaHRtbAogICBbODRdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTM2NC9zaGFyZC10Z2xiNC9pZ3RAa21zX2Zy
b250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1wcmktaW5kZmItZHJhdy1tbWFw
LXdjLmh0bWwKCiAgKiBpZ3RAa21zX3BzcjJfc3VAZnJvbnRidWZmZXI6CiAgICAtIHNoYXJkLWlj
bGI6ICAgICAgICAgW1NLSVBdWzg1XSAoW2ZkbyMxMDk2NDJdIC8gW2ZkbyMxMTEwNjhdKSAtPiBb
UEFTU11bODZdCiAgIFs4NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzczOTQvc2hhcmQtaWNsYjYvaWd0QGttc19wc3IyX3N1QGZyb250YnVmZmVyLmh0
bWwKICAgWzg2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTUzNjQvc2hhcmQtaWNsYjIvaWd0QGttc19wc3IyX3N1QGZyb250YnVmZmVyLmh0bWwK
CiAgKiBpZ3RAa21zX3BzckBwc3IyX25vX2RycnM6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAg
W1NLSVBdWzg3XSAoW2ZkbyMxMDk0NDFdKSAtPiBbUEFTU11bODhdCiAgIFs4N106IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczOTQvc2hhcmQtaWNsYjYv
aWd0QGttc19wc3JAcHNyMl9ub19kcnJzLmh0bWwKICAgWzg4XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzNjQvc2hhcmQtaWNsYjIvaWd0QGtt
c19wc3JAcHNyMl9ub19kcnJzLmh0bWwKCiAgKiBpZ3RAa21zX3NldG1vZGVAYmFzaWM6CiAgICAt
IHNoYXJkLWtibDogICAgICAgICAgW0ZBSUxdWzg5XSAoW2ZkbyM5OTkxMl0pIC0+IFtQQVNTXVs5
MF0KICAgWzg5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNzM5NC9zaGFyZC1rYmw0L2lndEBrbXNfc2V0bW9kZUBiYXNpYy5odG1sCiAgIFs5MF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzY0L3No
YXJkLWtibDIvaWd0QGttc19zZXRtb2RlQGJhc2ljLmh0bWwKCiAgKiBpZ3RAa21zX3ZibGFua0Bw
aXBlLWQtdHMtY29udGludWF0aW9uLXN1c3BlbmQ6CiAgICAtIHNoYXJkLXRnbGI6ICAgICAgICAg
W0lOQ09NUExFVEVdWzkxXSAoW2ZkbyMxMTE4NTBdKSAtPiBbUEFTU11bOTJdICsyIHNpbWlsYXIg
aXNzdWVzCiAgIFs5MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzczOTQvc2hhcmQtdGdsYjIvaWd0QGttc192YmxhbmtAcGlwZS1kLXRzLWNvbnRpbnVh
dGlvbi1zdXNwZW5kLmh0bWwKICAgWzkyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzNjQvc2hhcmQtdGdsYjcvaWd0QGttc192YmxhbmtAcGlw
ZS1kLXRzLWNvbnRpbnVhdGlvbi1zdXNwZW5kLmh0bWwKCiAgCiMjIyMgV2FybmluZ3MgIyMjIwoK
ICAqIGlndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MxLW5vbnByaXY6CiAgICAtIHNoYXJkLWljbGI6
ICAgICAgICAgW1NLSVBdWzkzXSAoW2ZkbyMxMDkyNzZdIC8gW2ZkbyMxMTIwODBdKSAtPiBbRkFJ
TF1bOTRdIChbZmRvIzExMTMyOV0pICsxIHNpbWlsYXIgaXNzdWUKICAgWzkzXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM5NC9zaGFyZC1pY2xiNi9p
Z3RAZ2VtX2N0eF9pc29sYXRpb25AdmNzMS1ub25wcml2Lmh0bWwKICAgWzk0XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzNjQvc2hhcmQtaWNs
YjEvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZjczEtbm9ucHJpdi5odG1sCgogICogaWd0QGdlbV9l
aW9Aa21zOgogICAgLSBzaGFyZC1zbmI6ICAgICAgICAgIFtETUVTRy1XQVJOXVs5NV0gKFtmZG8j
MTExNzgxXSAvIFtmZG8jMTEyMDAxXSkgLT4gW0RNRVNHLVdBUk5dWzk2XSAoW2ZkbyMxMTE3ODFd
KQogICBbOTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV83Mzk0L3NoYXJkLXNuYjEvaWd0QGdlbV9laW9Aa21zLmh0bWwKICAgWzk2XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzNjQvc2hhcmQtc25i
NC9pZ3RAZ2VtX2Vpb0BrbXMuaHRtbAoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVsZUBkZWVwLWJz
ZDE6CiAgICAtIHNoYXJkLXRnbGI6ICAgICAgICAgW0ZBSUxdWzk3XSAoW2ZkbyMxMTE2NDZdKSAt
PiBbSU5DT01QTEVURV1bOThdIChbZmRvIzExMTY3MV0pCiAgIFs5N106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczOTQvc2hhcmQtdGdsYjUvaWd0QGdl
bV9leGVjX3NjaGVkdWxlQGRlZXAtYnNkMS5odG1sCiAgIFs5OF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzY0L3NoYXJkLXRnbGIzL2lndEBn
ZW1fZXhlY19zY2hlZHVsZUBkZWVwLWJzZDEuaHRtbAoKICAqIGlndEBrbXNfYXRvbWljX3RyYW5z
aXRpb25ANngtbW9kZXNldC10cmFuc2l0aW9ucy1ub25ibG9ja2luZzoKICAgIC0gc2hhcmQtdGds
YjogICAgICAgICBbU0tJUF1bOTldIChbZmRvIzExMjAxNiBdIC8gW2ZkbyMxMTIwMjEgXSkgLT4g
W1NLSVBdWzEwMF0gKFtmZG8jMTEyMDIxIF0pCiAgIFs5OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczOTQvc2hhcmQtdGdsYjcvaWd0QGttc19hdG9t
aWNfdHJhbnNpdGlvbkA2eC1tb2Rlc2V0LXRyYW5zaXRpb25zLW5vbmJsb2NraW5nLmh0bWwKICAg
WzEwMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE1MzY0L3NoYXJkLXRnbGI5L2lndEBrbXNfYXRvbWljX3RyYW5zaXRpb25ANngtbW9kZXNldC10
cmFuc2l0aW9ucy1ub25ibG9ja2luZy5odG1sCgogIAogIHtuYW1lfTogVGhpcyBlbGVtZW50IGlz
IHN1cHByZXNzZWQuIFRoaXMgbWVhbnMgaXQgaXMgaWdub3JlZCB3aGVuIGNvbXB1dGluZwogICAg
ICAgICAgdGhlIHN0YXR1cyBvZiB0aGUgZGlmZmVyZW5jZSAoU1VDQ0VTUywgV0FSTklORywgb3Ig
RkFJTFVSRSkuCgogIFtmZG8jMTAzMTY2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTAzMTY2CiAgW2ZkbyMxMDMxNjddOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxNjcKICBbZmRvIzEwMzE4NF06IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzE4NAogIFtmZG8jMTAzMjMy
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMjMyCiAg
W2ZkbyMxMDM1NDBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDM1NDAKICBbZmRvIzEwMzY2NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2kKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTM2NC9pbmRleC5odG1s
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
