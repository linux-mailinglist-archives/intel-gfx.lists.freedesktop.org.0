Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1EC7248F
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 04:26:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCA4489216;
	Wed, 24 Jul 2019 02:26:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C508489216;
 Wed, 24 Jul 2019 02:26:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9C694A010A;
 Wed, 24 Jul 2019 02:26:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Summers, Stuart" <stuart.summers@intel.com>
Date: Wed, 24 Jul 2019 02:26:13 -0000
Message-ID: <20190724022613.27090.44123@emeril.freedesktop.org>
References: <20190723154934.26967-1-stuart.summers@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190723154934.26967-1-stuart.summers@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_Refa?=
 =?utf-8?q?ctor_to_expand_subslice_mask_=28rev_2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogUmVmYWN0b3IgdG8gZXhwYW5kIHN1YnNsaWNl
IG1hc2sgKHJldiAyKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9z
ZXJpZXMvNjQxMDMvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0kgQnVnIExvZyAt
IGNoYW5nZXMgZnJvbSBDSV9EUk1fNjU0M19mdWxsIC0+IFBhdGNod29ya18xMzcyOV9mdWxsCj09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KClN1bW1h
cnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21p
bmcgd2l0aCBQYXRjaHdvcmtfMTM3MjlfZnVsbCBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUKICB2ZXJp
ZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2
ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBpbnRyb2R1Y2VkIGluIFBhdGNod29y
a18xMzcyOV9mdWxsLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhlbQog
IHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFs
c2UgcG9zaXRpdmVzIGluIENJLgoKICAKClBvc3NpYmxlIG5ldyBpc3N1ZXMKLS0tLS0tLS0tLS0t
LS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVl
biBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xMzcyOV9mdWxsOgoKIyMjIElHVCBjaGFuZ2VzICMj
IwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjCgogICogaWd0QGdlbV9wd3JpdGVAYmln
LWNwdS1mYnI6CiAgICAtIHNoYXJkLWdsazogICAgICAgICAgW1BBU1NdWzFdIC0+IFtUSU1FT1VU
XVsyXQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzY1NDMvc2hhcmQtZ2xrNS9pZ3RAZ2VtX3B3cml0ZUBiaWctY3B1LWZici5odG1sCiAgIFsy
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM3
Mjkvc2hhcmQtZ2xrNS9pZ3RAZ2VtX3B3cml0ZUBiaWctY3B1LWZici5odG1sCgogICogaWd0QGk5
MTVfcXVlcnlAcXVlcnktdG9wb2xvZ3ktbWF0Y2hlcy1ldS10b3RhbDoKICAgIC0gc2hhcmQtaHN3
OiAgICAgICAgICBbUEFTU11bM10gLT4gW0ZBSUxdWzRdICszIHNpbWlsYXIgaXNzdWVzCiAgIFsz
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjU0My9z
aGFyZC1oc3c4L2lndEBpOTE1X3F1ZXJ5QHF1ZXJ5LXRvcG9sb2d5LW1hdGNoZXMtZXUtdG90YWwu
aHRtbAogICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEzNzI5L3NoYXJkLWhzdzgvaWd0QGk5MTVfcXVlcnlAcXVlcnktdG9wb2xvZ3ktbWF0
Y2hlcy1ldS10b3RhbC5odG1sCgogIApLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUg
YXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xMzcyOV9mdWxsIHRoYXQgY29tZSBm
cm9tIGtub3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAj
IyMjCgogICogaWd0QGdlbV9leGVjX2ZsdXNoQGJhc2ljLXdiLXJ3LWRlZmF1bHQ6CiAgICAtIHNo
YXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzVdIC0+IFtJTkNPTVBMRVRFXVs2XSAoW2ZkbyMxMDc3
MTNdKSArMSBzaW1pbGFyIGlzc3VlCiAgIFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNjU0My9zaGFyZC1pY2xiNi9pZ3RAZ2VtX2V4ZWNfZmx1c2hA
YmFzaWMtd2ItcnctZGVmYXVsdC5odG1sCiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM3Mjkvc2hhcmQtaWNsYjcvaWd0QGdlbV9leGVj
X2ZsdXNoQGJhc2ljLXdiLXJ3LWRlZmF1bHQuaHRtbAoKICAqIGlndEBnZW1fd29ya2Fyb3VuZHNA
c3VzcGVuZC1yZXN1bWUtY29udGV4dDoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbUEFTU11b
N10gLT4gW0RNRVNHLVdBUk5dWzhdIChbZmRvIzEwODU2Nl0pICsyIHNpbWlsYXIgaXNzdWVzCiAg
IFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjU0
My9zaGFyZC1hcGw3L2lndEBnZW1fd29ya2Fyb3VuZHNAc3VzcGVuZC1yZXN1bWUtY29udGV4dC5o
dG1sCiAgIFs4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTM3Mjkvc2hhcmQtYXBsMy9pZ3RAZ2VtX3dvcmthcm91bmRzQHN1c3BlbmQtcmVzdW1l
LWNvbnRleHQuaHRtbAoKICAqIGlndEBpOTE1X3F1ZXJ5QHF1ZXJ5LXRvcG9sb2d5LWNvaGVyZW50
LXNsaWNlLW1hc2s6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW1BBU1NdWzldIC0+IFtTS0lQ
XVsxMF0gKFtmZG8jMTA5MjcxXSkKICAgWzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82NTQzL3NoYXJkLWhzdzgvaWd0QGk5MTVfcXVlcnlAcXVlcnkt
dG9wb2xvZ3ktY29oZXJlbnQtc2xpY2UtbWFzay5odG1sCiAgIFsxMF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNzI5L3NoYXJkLWhzdzcvaWd0
QGk5MTVfcXVlcnlAcXVlcnktdG9wb2xvZ3ktY29oZXJlbnQtc2xpY2UtbWFzay5odG1sCgogICog
aWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYy1jdXJzb3Itc3VzcGVuZDoKICAgIC0gc2hhcmQta2Js
OiAgICAgICAgICBbUEFTU11bMTFdIC0+IFtETUVTRy1XQVJOXVsxMl0gKFtmZG8jMTA4NTY2XSkg
KzQgc2ltaWxhciBpc3N1ZXMKICAgWzExXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNjU0My9zaGFyZC1rYmwxL2lndEBrbXNfY3Vyc29yX2NyY0BwaXBl
LWMtY3Vyc29yLXN1c3BlbmQuaHRtbAogICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzcyOS9zaGFyZC1rYmwzL2lndEBrbXNfY3Vyc29y
X2NyY0BwaXBlLWMtY3Vyc29yLXN1c3BlbmQuaHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2xlZ2Fj
eUAyeC1ub25ibG9ja2luZy1tb2Rlc2V0LXZzLWN1cnNvci1hdG9taWM6CiAgICAtIHNoYXJkLWds
azogICAgICAgICAgW1BBU1NdWzEzXSAtPiBbRkFJTF1bMTRdIChbZmRvIzEwNjUwOV0gLyBbZmRv
IzEwNzQwOV0pCiAgIFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzY1NDMvc2hhcmQtZ2xrOC9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAMngtbm9uYmxv
Y2tpbmctbW9kZXNldC12cy1jdXJzb3ItYXRvbWljLmh0bWwKICAgWzE0XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM3Mjkvc2hhcmQtZ2xrOC9p
Z3RAa21zX2N1cnNvcl9sZWdhY3lAMngtbm9uYmxvY2tpbmctbW9kZXNldC12cy1jdXJzb3ItYXRv
bWljLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAbW9kZXNldC12cy12YmxhbmstcmFjZToKICAgIC0g
c2hhcmQtZ2xrOiAgICAgICAgICBbUEFTU11bMTVdIC0+IFtGQUlMXVsxNl0gKFtmZG8jMTAzMDYw
XSkKICAgWzE1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNjU0My9zaGFyZC1nbGsxL2lndEBrbXNfZmxpcEBtb2Rlc2V0LXZzLXZibGFuay1yYWNlLmh0
bWwKICAgWzE2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTM3Mjkvc2hhcmQtZ2xrMy9pZ3RAa21zX2ZsaXBAbW9kZXNldC12cy12YmxhbmstcmFj
ZS5odG1sCgogICogaWd0QGttc19mbGlwX3RpbGluZ0BmbGlwLXRvLXgtdGlsZWQ6CiAgICAtIHNo
YXJkLXNrbDogICAgICAgICAgW1BBU1NdWzE3XSAtPiBbRkFJTF1bMThdIChbZmRvIzEwODEzNF0p
CiAgIFsxN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzY1NDMvc2hhcmQtc2tsNS9pZ3RAa21zX2ZsaXBfdGlsaW5nQGZsaXAtdG8teC10aWxlZC5odG1s
CiAgIFsxOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzNzI5L3NoYXJkLXNrbDEwL2lndEBrbXNfZmxpcF90aWxpbmdAZmxpcC10by14LXRpbGVk
Lmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmltc2Nybi1z
cHItaW5kZmItZHJhdy1ibHQ6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzE5XSAt
PiBbRkFJTF1bMjBdIChbZmRvIzEwMzE2N10pICs1IHNpbWlsYXIgaXNzdWVzCiAgIFsxOV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY1NDMvc2hhcmQt
aWNsYjcvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4tc3ByLWlu
ZGZiLWRyYXctYmx0Lmh0bWwKICAgWzIwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM3Mjkvc2hhcmQtaWNsYjMvaWd0QGttc19mcm9udGJ1ZmZl
cl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4tc3ByLWluZGZiLWRyYXctYmx0Lmh0bWwKCiAgKiBp
Z3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYS1jb25zdGFudC1hbHBoYS1taW46CiAgICAt
IHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzIxXSAtPiBbRkFJTF1bMjJdIChbZmRvIzEwODE0
NV0pCiAgIFsyMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzY1NDMvc2hhcmQtc2tsOS9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYS1jb25z
dGFudC1hbHBoYS1taW4uaHRtbAogICBbMjJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzcyOS9zaGFyZC1za2w2L2lndEBrbXNfcGxhbmVfYWxw
aGFfYmxlbmRAcGlwZS1hLWNvbnN0YW50LWFscGhhLW1pbi5odG1sCgogICogaWd0QGttc19wc3JA
cHNyMl9zcHJpdGVfcGxhbmVfbW92ZToKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11b
MjNdIC0+IFtTS0lQXVsyNF0gKFtmZG8jMTA5NDQxXSkgKzIgc2ltaWxhciBpc3N1ZXMKICAgWzIz
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjU0My9z
aGFyZC1pY2xiMi9pZ3RAa21zX3BzckBwc3IyX3Nwcml0ZV9wbGFuZV9tb3ZlLmh0bWwKICAgWzI0
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM3
Mjkvc2hhcmQtaWNsYjgvaWd0QGttc19wc3JAcHNyMl9zcHJpdGVfcGxhbmVfbW92ZS5odG1sCgog
ICogaWd0QGttc19yb3RhdGlvbl9jcmNAbXVsdGlwbGFuZS1yb3RhdGlvbjoKICAgIC0gc2hhcmQt
Z2xrOiAgICAgICAgICBbUEFTU11bMjVdIC0+IFtETUVTRy1GQUlMXVsyNl0gKFtmZG8jMTA1NzYz
XSAvIFtmZG8jMTA2NTM4XSkKICAgWzI1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNjU0My9zaGFyZC1nbGs3L2lndEBrbXNfcm90YXRpb25fY3JjQG11
bHRpcGxhbmUtcm90YXRpb24uaHRtbAogICBbMjZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzcyOS9zaGFyZC1nbGs3L2lndEBrbXNfcm90YXRp
b25fY3JjQG11bHRpcGxhbmUtcm90YXRpb24uaHRtbAoKICAqIGlndEBrbXNfc2V0bW9kZUBiYXNp
YzoKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbUEFTU11bMjddIC0+IFtGQUlMXVsyOF0gKFtm
ZG8jOTk5MTJdKQogICBbMjddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82NTQzL3NoYXJkLWtibDYvaWd0QGttc19zZXRtb2RlQGJhc2ljLmh0bWwKICAg
WzI4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTM3Mjkvc2hhcmQta2JsMS9pZ3RAa21zX3NldG1vZGVAYmFzaWMuaHRtbAoKICAqIGlndEBwZXJm
X3BtdUBidXN5LWRvdWJsZS1zdGFydC12ZWNzMDoKICAgIC0gc2hhcmQtaHN3OiAgICAgICAgICBb
UEFTU11bMjldIC0+IFtJTkNPTVBMRVRFXVszMF0gKFtmZG8jMTAzNTQwXSkKICAgWzI5XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjU0My9zaGFyZC1o
c3c3L2lndEBwZXJmX3BtdUBidXN5LWRvdWJsZS1zdGFydC12ZWNzMC5odG1sCiAgIFszMF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNzI5L3No
YXJkLWhzdzUvaWd0QHBlcmZfcG11QGJ1c3ktZG91YmxlLXN0YXJ0LXZlY3MwLmh0bWwKCiAgCiMj
IyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGlndEBnZW1fY3R4X2lzb2xhdGlvbkBiY3MwLXMz
OgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtETUVTRy1XQVJOXVszMV0gKFtmZG8jMTA4NTY2
XSkgLT4gW1BBU1NdWzMyXSArMiBzaW1pbGFyIGlzc3VlcwogICBbMzFdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NTQzL3NoYXJkLWFwbDgvaWd0QGdl
bV9jdHhfaXNvbGF0aW9uQGJjczAtczMuaHRtbAogICBbMzJdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzcyOS9zaGFyZC1hcGwyL2lndEBnZW1f
Y3R4X2lzb2xhdGlvbkBiY3MwLXMzLmh0bWwKCiAgKiBpZ3RAaTkxNV9wbV9ycG1AZ2VtLWV2aWN0
LXB3cml0ZToKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbSU5DT01QTEVURV1bMzNdIChbZmRv
IzEwNzcxM10gLyBbZmRvIzEwODg0MF0pIC0+IFtQQVNTXVszNF0KICAgWzMzXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjU0My9zaGFyZC1pY2xiNy9p
Z3RAaTkxNV9wbV9ycG1AZ2VtLWV2aWN0LXB3cml0ZS5odG1sCiAgIFszNF06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNzI5L3NoYXJkLWljbGI0
L2lndEBpOTE1X3BtX3JwbUBnZW0tZXZpY3QtcHdyaXRlLmh0bWwKCiAgKiBpZ3RAaTkxNV9wbV9y
cG1AaTJjOgogICAgLSBzaGFyZC1oc3c6ICAgICAgICAgIFtGQUlMXVszNV0gKFtmZG8jMTA0MDk3
XSkgLT4gW1BBU1NdWzM2XQogICBbMzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82NTQzL3NoYXJkLWhzdzUvaWd0QGk5MTVfcG1fcnBtQGkyYy5odG1s
CiAgIFszNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzNzI5L3NoYXJkLWhzdzUvaWd0QGk5MTVfcG1fcnBtQGkyYy5odG1sCgogICogaWd0QGtt
c19jdXJzb3JfY3JjQHBpcGUtYy1jdXJzb3ItNjR4MjEtcmFuZG9tOgogICAgLSBzaGFyZC1pY2xi
OiAgICAgICAgIFtJTkNPTVBMRVRFXVszN10gKFtmZG8jMTA3NzEzXSkgLT4gW1BBU1NdWzM4XSAr
MSBzaW1pbGFyIGlzc3VlCiAgIFszN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzY1NDMvc2hhcmQtaWNsYjcvaWd0QGttc19jdXJzb3JfY3JjQHBpcGUt
Yy1jdXJzb3ItNjR4MjEtcmFuZG9tLmh0bWwKICAgWzM4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM3Mjkvc2hhcmQtaWNsYjMvaWd0QGttc19j
dXJzb3JfY3JjQHBpcGUtYy1jdXJzb3ItNjR4MjEtcmFuZG9tLmh0bWwKCiAgKiBpZ3RAa21zX2N1
cnNvcl9jcmNAcGlwZS1jLWN1cnNvci1zdXNwZW5kOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAg
IFtJTkNPTVBMRVRFXVszOV0gKFtmZG8jMTEwNzQxXSkgLT4gW1BBU1NdWzQwXQogICBbMzldOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NTQzL3NoYXJk
LXNrbDEwL2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWMtY3Vyc29yLXN1c3BlbmQuaHRtbAogICBb
NDBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MzcyOS9zaGFyZC1za2wyL2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWMtY3Vyc29yLXN1c3BlbmQu
aHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2xlZ2FjeUAyeC1sb25nLWN1cnNvci12cy1mbGlwLWF0
b21pYzoKICAgIC0gc2hhcmQtaHN3OiAgICAgICAgICBbRkFJTF1bNDFdIChbZmRvIzEwNTc2N10p
IC0+IFtQQVNTXVs0Ml0KICAgWzQxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjU0My9zaGFyZC1oc3c2L2lndEBrbXNfY3Vyc29yX2xlZ2FjeUAyeC1s
b25nLWN1cnNvci12cy1mbGlwLWF0b21pYy5odG1sCiAgIFs0Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNzI5L3NoYXJkLWhzdzgvaWd0QGtt
c19jdXJzb3JfbGVnYWN5QDJ4LWxvbmctY3Vyc29yLXZzLWZsaXAtYXRvbWljLmh0bWwKCiAgKiBp
Z3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuazoKICAgIC0gc2hhcmQtZ2xrOiAgICAg
ICAgICBbRkFJTF1bNDNdIChbZmRvIzEwNTM2M10pIC0+IFtQQVNTXVs0NF0KICAgWzQzXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjU0My9zaGFyZC1n
bGs1L2lndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLmh0bWwKICAgWzQ0XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM3Mjkvc2hh
cmQtZ2xrNS9pZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuay5odG1sCgogICogaWd0
QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12YmxhbmstaW50ZXJydXB0aWJsZToKICAgIC0gc2hh
cmQtc2tsOiAgICAgICAgICBbRkFJTF1bNDVdIChbZmRvIzEwNTM2M10pIC0+IFtQQVNTXVs0Nl0K
ICAgWzQ1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjU0My9zaGFyZC1za2wzL2lndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLWludGVy
cnVwdGlibGUuaHRtbAogICBbNDZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMzcyOS9zaGFyZC1za2w2L2lndEBrbXNfZmxpcEBmbGlwLXZzLWV4
cGlyZWQtdmJsYW5rLWludGVycnVwdGlibGUuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBmbGlwLXZz
LXN1c3BlbmQ6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW0lOQ09NUExFVEVdWzQ3XSAoW2Zk
byMxMDM1NDBdKSAtPiBbUEFTU11bNDhdCiAgIFs0N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY1NDMvc2hhcmQtaHN3NC9pZ3RAa21zX2ZsaXBAZmxp
cC12cy1zdXNwZW5kLmh0bWwKICAgWzQ4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM3Mjkvc2hhcmQtaHN3Ny9pZ3RAa21zX2ZsaXBAZmxpcC12
cy1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy1zdXNw
ZW5kOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtGQUlMXVs0OV0gKFtmZG8jMTAzMTY3XSkg
LT4gW1BBU1NdWzUwXSArNSBzaW1pbGFyIGlzc3VlcwogICBbNDldOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NTQzL3NoYXJkLWljbGI4L2lndEBrbXNf
ZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLXN1c3BlbmQuaHRtbAogICBbNTBdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzcyOS9zaGFyZC1pY2xi
Ny9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RA
a21zX3BsYW5lQHBsYW5lLXBhbm5pbmctYm90dG9tLXJpZ2h0LXN1c3BlbmQtcGlwZS1hLXBsYW5l
czoKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbRE1FU0ctV0FSTl1bNTFdIChbZmRvIzEwODU2
Nl0pIC0+IFtQQVNTXVs1Ml0gKzMgc2ltaWxhciBpc3N1ZXMKICAgWzUxXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjU0My9zaGFyZC1rYmwzL2lndEBr
bXNfcGxhbmVAcGxhbmUtcGFubmluZy1ib3R0b20tcmlnaHQtc3VzcGVuZC1waXBlLWEtcGxhbmVz
Lmh0bWwKICAgWzUyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTM3Mjkvc2hhcmQta2JsNy9pZ3RAa21zX3BsYW5lQHBsYW5lLXBhbm5pbmctYm90
dG9tLXJpZ2h0LXN1c3BlbmQtcGlwZS1hLXBsYW5lcy5odG1sCgogICogaWd0QGttc19wbGFuZUBw
bGFuZS1wYW5uaW5nLWJvdHRvbS1yaWdodC1zdXNwZW5kLXBpcGUtYy1wbGFuZXM6CiAgICAtIHNo
YXJkLXNrbDogICAgICAgICAgW0lOQ09NUExFVEVdWzUzXSAoW2ZkbyMxMDQxMDhdKSAtPiBbUEFT
U11bNTRdICsxIHNpbWlsYXIgaXNzdWUKICAgWzUzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjU0My9zaGFyZC1za2w1L2lndEBrbXNfcGxhbmVAcGxh
bmUtcGFubmluZy1ib3R0b20tcmlnaHQtc3VzcGVuZC1waXBlLWMtcGxhbmVzLmh0bWwKICAgWzU0
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM3
Mjkvc2hhcmQtc2tsOC9pZ3RAa21zX3BsYW5lQHBsYW5lLXBhbm5pbmctYm90dG9tLXJpZ2h0LXN1
c3BlbmQtcGlwZS1jLXBsYW5lcy5odG1sCgogICogaWd0QGttc19wc3JAcHNyMl9jdXJzb3JfcmVu
ZGVyOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVs1NV0gKFtmZG8jMTA5NDQxXSkg
LT4gW1BBU1NdWzU2XSArMSBzaW1pbGFyIGlzc3VlCiAgIFs1NV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY1NDMvc2hhcmQtaWNsYjcvaWd0QGttc19w
c3JAcHNyMl9jdXJzb3JfcmVuZGVyLmh0bWwKICAgWzU2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM3Mjkvc2hhcmQtaWNsYjIvaWd0QGttc19w
c3JAcHNyMl9jdXJzb3JfcmVuZGVyLmh0bWwKCiAgKiBpZ3RAa21zX3NldG1vZGVAYmFzaWM6CiAg
ICAtIHNoYXJkLWFwbDogICAgICAgICAgW0ZBSUxdWzU3XSAoW2ZkbyM5OTkxMl0pIC0+IFtQQVNT
XVs1OF0KICAgWzU3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjU0My9zaGFyZC1hcGwzL2lndEBrbXNfc2V0bW9kZUBiYXNpYy5odG1sCiAgIFs1OF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNzI5
L3NoYXJkLWFwbDYvaWd0QGttc19zZXRtb2RlQGJhc2ljLmh0bWwKCiAgKiBpZ3RAcGVyZkBibG9j
a2luZzoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbRkFJTF1bNTldIChbZmRvIzExMDcyOF0p
IC0+IFtQQVNTXVs2MF0KICAgWzU5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjU0My9zaGFyZC1za2w1L2lndEBwZXJmQGJsb2NraW5nLmh0bWwKICAg
WzYwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTM3Mjkvc2hhcmQtc2tsMTAvaWd0QHBlcmZAYmxvY2tpbmcuaHRtbAoKICAqIGlndEBwZXJmX3Bt
dUByYzY6CiAgICAtIHNoYXJkLWtibDogICAgICAgICAgW1NLSVBdWzYxXSAoW2ZkbyMxMDkyNzFd
KSAtPiBbUEFTU11bNjJdICsxIHNpbWlsYXIgaXNzdWUKICAgWzYxXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjU0My9zaGFyZC1rYmwyL2lndEBwZXJm
X3BtdUByYzYuaHRtbAogICBbNjJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMzcyOS9zaGFyZC1rYmw0L2lndEBwZXJmX3BtdUByYzYuaHRtbAoK
ICAKIyMjIyBXYXJuaW5ncyAjIyMjCgogICogaWd0QGdlbV90aWxlZF9zd2FwcGluZ0Bub24tdGhy
ZWFkZWQ6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1NLSVBdWzYzXSAoW2ZkbyMxMDkyNzFd
KSAtPiBbRkFJTF1bNjRdIChbZmRvIzEwODY4Nl0pCiAgIFs2M106IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY1NDMvc2hhcmQtc2tsMi9pZ3RAZ2VtX3Rp
bGVkX3N3YXBwaW5nQG5vbi10aHJlYWRlZC5odG1sCiAgIFs2NF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNzI5L3NoYXJkLXNrbDkvaWd0QGdl
bV90aWxlZF9zd2FwcGluZ0Bub24tdGhyZWFkZWQuaHRtbAoKICAKICBbZmRvIzEwMzA2MF06IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzA2MAogIFtmZG8j
MTAzMTY3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAz
MTY3CiAgW2ZkbyMxMDM1NDBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMDM1NDAKICBbZmRvIzEwNDA5N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTEwNDA5NwogIFtmZG8jMTA0MTA4XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA0MTA4CiAgW2ZkbyMxMDUzNjNdOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDUzNjMKICBbZmRvIzEw
NTc2M106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNTc2
MwogIFtmZG8jMTA1NzY3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA1NzY3CiAgW2ZkbyMxMDY1MDldOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMDY1MDkKICBbZmRvIzEwNjUzOF06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNjUzOAogIFtmZG8jMTA3NDA5XTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NDA5CiAgW2ZkbyMxMDc3
MTNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MTMK
ICBbZmRvIzEwODEzNF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTEwODEzNAogIFtmZG8jMTA4MTQ1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTA4MTQ1CiAgW2ZkbyMxMDg1NjZdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg1NjYKICBbZmRvIzEwODY4Nl06IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODY4NgogIFtmZG8jMTA4ODQw
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4ODQwCiAg
W2ZkbyMxMDkyNzFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDkyNzEKICBbZmRvIzEwOTQ0MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTEwOTQ0MQogIFtmZG8jMTEwNzI4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwNzI4CiAgW2ZkbyMxMTA3NDFdOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA3NDEKICBbZmRvIzk5OTEyXTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9OTk5MTIKCgpQYXJ0
aWNpcGF0aW5nIGhvc3RzICg5IC0+IDkpCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoK
ICBObyBjaGFuZ2VzIGluIHBhcnRpY2lwYXRpbmcgaG9zdHMKCgpCdWlsZCBjaGFuZ2VzCi0tLS0t
LS0tLS0tLS0KCiAgKiBDSTogQ0ktMjAxOTA1MjkgLT4gTm9uZQogICogTGludXg6IENJX0RSTV82
NTQzIC0+IFBhdGNod29ya18xMzcyOQoKICBDSS0yMDE5MDUyOTogMjAxOTA1MjkKICBDSV9EUk1f
NjU0MzogZWYxYmI2ZDI3MWZhYjM3NTBjZTIzYjU0ODk1NGRmN2IyOGRhOGNlNyBAIGdpdDovL2Fu
b25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElHVF81MTA5OiBlNWZkNTA5ZTE2
ZWM2NDk0MzZiZTMxZjM4ZWFhNWI4NWNiN2Y3MmYxIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3Rv
cC5vcmcveG9yZy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzEzNzI5OiA1ZmU2YTZj
ODJlYWEyN2MwNjJhOGY0ZWE3NzdjOTcxMGU3MzMyNWJhIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVz
a3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgcGlnbGl0XzQ1MDk6IGZkYzVhNGNhMTExMjRhYjg0MTNj
Nzk4ODg5NmVlYzRjOTczMzY2OTQgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9waWds
aXQKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzcyOS8KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
