Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA92BAF030
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 19:12:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 687506E945;
	Tue, 10 Sep 2019 17:12:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 378796E943;
 Tue, 10 Sep 2019 17:12:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3189BA363B;
 Tue, 10 Sep 2019 17:12:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Simon Ser" <contact@emersion.fr>
Date: Tue, 10 Sep 2019 17:12:40 -0000
Message-ID: <20190910171240.31036.22@emeril.freedesktop.org>
References: <FP-q2bMX9wd_xahtrbX09Axlcfxg0hElk2Bs68pWgxpbwTHGKR3yAUIyWdjgqM8XSid0cM8JAtujhN3t_XGU_8yPqNAwhzCdZRc_80IwEk0=@emersion.fr>
X-Patchwork-Hint: ignore
In-Reply-To: <FP-q2bMX9wd_xahtrbX09Axlcfxg0hElk2Bs68pWgxpbwTHGKR3yAUIyWdjgqM8XSid0cM8JAtujhN3t_XGU_8yPqNAwhzCdZRc_80IwEk0=@emersion.fr>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_two_planes_with_the_same_zpos_have_undefined_ordering?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtOiB0d28gcGxhbmVzIHdpdGggdGhlIHNh
bWUgenBvcyBoYXZlIHVuZGVmaW5lZCBvcmRlcmluZwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3Jr
LmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjY0ODAvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFy
eSA9PQoKQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNjg2MF9mdWxsIC0+IFBhdGNo
d29ya18xNDMzN19mdWxsCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVu
a25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTQzMzdfZnVsbCBhYnNvbHV0ZWx5
IG5lZWQgdG8gYmUKICB2ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhlIHJl
cG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBpbnRy
b2R1Y2VkIGluIFBhdGNod29ya18xNDMzN19mdWxsLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRl
YW0gdG8gYWxsb3cgdGhlbQogIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hp
Y2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLgoKICAKClBvc3NpYmxlIG5ldyBp
c3N1ZXMKLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2Vz
IHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDMzN19mdWxsOgoK
IyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjCgogICog
aWd0QGdlbV9wZXJzaXN0ZW50X3JlbG9jc0Bmb3JrZWQtdGhyYXNoLWluYWN0aXZlOgogICAgLSBz
aGFyZC1rYmw6ICAgICAgICAgIFtQQVNTXVsxXSAtPiBbRE1FU0ctV0FSTl1bMl0KICAgWzFdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82ODYwL3NoYXJk
LWtibDMvaWd0QGdlbV9wZXJzaXN0ZW50X3JlbG9jc0Bmb3JrZWQtdGhyYXNoLWluYWN0aXZlLmh0
bWwKICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDMzNy9zaGFyZC1rYmw2L2lndEBnZW1fcGVyc2lzdGVudF9yZWxvY3NAZm9ya2VkLXRo
cmFzaC1pbmFjdGl2ZS5odG1sCgogIApLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUg
YXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xNDMzN19mdWxsIHRoYXQgY29tZSBm
cm9tIGtub3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAj
IyMjCgogICogaWd0QGdlbV9jdHhfc2hhcmVkQGV4ZWMtc2luZ2xlLXRpbWVsaW5lLWJzZDoKICAg
IC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bM10gLT4gW1NLSVBdWzRdIChbZmRvIzExMDg0
MV0pCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNjg2MC9zaGFyZC1pY2xiNy9pZ3RAZ2VtX2N0eF9zaGFyZWRAZXhlYy1zaW5nbGUtdGltZWxp
bmUtYnNkLmh0bWwKICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNDMzNy9zaGFyZC1pY2xiNC9pZ3RAZ2VtX2N0eF9zaGFyZWRAZXhlYy1z
aW5nbGUtdGltZWxpbmUtYnNkLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfYmFsYW5jZXJAc21va2U6
CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzVdIC0+IFtTS0lQXVs2XSAoW2ZkbyMx
MTA4NTRdKQogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzY4NjAvc2hhcmQtaWNsYjIvaWd0QGdlbV9leGVjX2JhbGFuY2VyQHNtb2tlLmh0bWwK
ICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNDMzNy9zaGFyZC1pY2xiMy9pZ3RAZ2VtX2V4ZWNfYmFsYW5jZXJAc21va2UuaHRtbAoKICAq
IGlndEBnZW1fZXhlY19zY2hlZHVsZUBkZWVwLWJzZDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAg
ICBbUEFTU11bN10gLT4gW1NLSVBdWzhdIChbZmRvIzExMTMyNV0pICszIHNpbWlsYXIgaXNzdWVz
CiAgIFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
Njg2MC9zaGFyZC1pY2xiNy9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAZGVlcC1ic2QuaHRtbAogICBb
OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
MzM3L3NoYXJkLWljbGI0L2lndEBnZW1fZXhlY19zY2hlZHVsZUBkZWVwLWJzZC5odG1sCgogICog
aWd0QGdlbV9leGVjX3NjaGVkdWxlQHByb21vdGlvbi1ic2QxOgogICAgLSBzaGFyZC1pY2xiOiAg
ICAgICAgIFtQQVNTXVs5XSAtPiBbU0tJUF1bMTBdIChbZmRvIzEwOTI3Nl0pICsxNiBzaW1pbGFy
IGlzc3VlcwogICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzY4NjAvc2hhcmQtaWNsYjIvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByb21vdGlvbi1i
c2QxLmh0bWwKICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQzMzcvc2hhcmQtaWNsYjgvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByb21v
dGlvbi1ic2QxLmh0bWwKCiAgKiBpZ3RAZ2VtX3RpbGVkX3N3YXBwaW5nQG5vbi10aHJlYWRlZDoK
ICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbUEFTU11bMTFdIC0+IFtETUVTRy1XQVJOXVsxMl0g
KFtmZG8jMTA4Njg2XSkKICAgWzExXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjg2MC9zaGFyZC1rYmwyL2lndEBnZW1fdGlsZWRfc3dhcHBpbmdAbm9u
LXRocmVhZGVkLmh0bWwKICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQzMzcvc2hhcmQta2JsNC9pZ3RAZ2VtX3RpbGVkX3N3YXBwaW5n
QG5vbi10aHJlYWRlZC5odG1sCgogICogaWd0QGk5MTVfcG1fcnBtQGdlbS1leGVjYnVmLXN0cmVz
czoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMTNdIC0+IFtJTkNPTVBMRVRFXVsx
NF0gKFtmZG8jMTA3NzEzXSAvIFtmZG8jMTA4ODQwXSkKICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjg2MC9zaGFyZC1pY2xiMS9pZ3RAaTkx
NV9wbV9ycG1AZ2VtLWV4ZWNidWYtc3RyZXNzLmh0bWwKICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQzMzcvc2hhcmQtaWNsYjIvaWd0
QGk5MTVfcG1fcnBtQGdlbS1leGVjYnVmLXN0cmVzcy5odG1sCgogICogaWd0QGk5MTVfc3VzcGVu
ZEBmZW5jZS1yZXN0b3JlLXRpbGVkMnVudGlsZWQ6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAg
W1BBU1NdWzE1XSAtPiBbRE1FU0ctV0FSTl1bMTZdIChbZmRvIzEwODU2Nl0pICszIHNpbWlsYXIg
aXNzdWVzCiAgIFsxNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzY4NjAvc2hhcmQtYXBsMi9pZ3RAaTkxNV9zdXNwZW5kQGZlbmNlLXJlc3RvcmUtdGls
ZWQydW50aWxlZC5odG1sCiAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0MzM3L3NoYXJkLWFwbDYvaWd0QGk5MTVfc3VzcGVuZEBmZW5j
ZS1yZXN0b3JlLXRpbGVkMnVudGlsZWQuaHRtbAoKICAqIGlndEBrbXNfZmJjb25fZmJ0QGZiYy1z
dXNwZW5kOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsxN10gLT4gW0RNRVNHLVdB
Uk5dWzE4XSAoW2ZkbyMxMDYxMDddKQogICBbMTddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82ODYwL3NoYXJkLXNrbDEwL2lndEBrbXNfZmJjb25fZmJ0
QGZiYy1zdXNwZW5kLmh0bWwKICAgWzE4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQzMzcvc2hhcmQtc2tsMy9pZ3RAa21zX2ZiY29uX2ZidEBm
YmMtc3VzcGVuZC5odG1sCgogICogaWd0QGttc19mbGlwQDJ4LW1vZGVzZXQtdnMtdmJsYW5rLXJh
Y2U6CiAgICAtIHNoYXJkLWdsazogICAgICAgICAgW1BBU1NdWzE5XSAtPiBbRkFJTF1bMjBdIChb
ZmRvIzExMTYwOV0pCiAgIFsxOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzY4NjAvc2hhcmQtZ2xrMy9pZ3RAa21zX2ZsaXBAMngtbW9kZXNldC12cy12
YmxhbmstcmFjZS5odG1sCiAgIFsyMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0MzM3L3NoYXJkLWdsazEvaWd0QGttc19mbGlwQDJ4LW1vZGVz
ZXQtdnMtdmJsYW5rLXJhY2UuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQt
dmJsYW5rOgogICAgLSBzaGFyZC1nbGs6ICAgICAgICAgIFtQQVNTXVsyMV0gLT4gW0ZBSUxdWzIy
XSAoW2ZkbyMxMDUzNjNdKQogICBbMjFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82ODYwL3NoYXJkLWdsazEvaWd0QGttc19mbGlwQGZsaXAtdnMtZXhw
aXJlZC12YmxhbmsuaHRtbAogICBbMjJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNDMzNy9zaGFyZC1nbGs5L2lndEBrbXNfZmxpcEBmbGlwLXZz
LWV4cGlyZWQtdmJsYW5rLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZi
Y3Bzci0xcC1wcmltc2Nybi1zaHJmYi1tc2ZsaXAtYmx0OgogICAgLSBzaGFyZC1pY2xiOiAgICAg
ICAgIFtQQVNTXVsyM10gLT4gW0ZBSUxdWzI0XSAoW2ZkbyMxMDMxNjddKSArMiBzaW1pbGFyIGlz
c3VlcwogICBbMjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82ODYwL3NoYXJkLWljbGI1L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNy
LTFwLXByaW1zY3JuLXNocmZiLW1zZmxpcC1ibHQuaHRtbAogICBbMjRdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDMzNy9zaGFyZC1pY2xiNS9p
Z3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1zaHJmYi1tc2Zs
aXAtYmx0Lmh0bWwKCiAgKiBpZ3RAa21zX3BzckBwc3IyX3ByaW1hcnlfbW1hcF9jcHU6CiAgICAt
IHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzI1XSAtPiBbU0tJUF1bMjZdIChbZmRvIzEwOTQ0
MV0pICsyIHNpbWlsYXIgaXNzdWVzCiAgIFsyNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzY4NjAvc2hhcmQtaWNsYjIvaWd0QGttc19wc3JAcHNyMl9w
cmltYXJ5X21tYXBfY3B1Lmh0bWwKICAgWzI2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQzMzcvc2hhcmQtaWNsYjEvaWd0QGttc19wc3JAcHNy
Ml9wcmltYXJ5X21tYXBfY3B1Lmh0bWwKCiAgKiBpZ3RAa21zX3NldG1vZGVAYmFzaWM6CiAgICAt
IHNoYXJkLWFwbDogICAgICAgICAgW1BBU1NdWzI3XSAtPiBbRkFJTF1bMjhdIChbZmRvIzk5OTEy
XSkKICAgWzI3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNjg2MC9zaGFyZC1hcGw1L2lndEBrbXNfc2V0bW9kZUBiYXNpYy5odG1sCiAgIFsyOF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MzM3L3No
YXJkLWFwbDIvaWd0QGttc19zZXRtb2RlQGJhc2ljLmh0bWwKCiAgKiBpZ3RAcGVyZkBibG9ja2lu
ZzoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMjldIC0+IFtGQUlMXVszMF0gKFtm
ZG8jMTEwNzI4XSkgKzEgc2ltaWxhciBpc3N1ZQogICBbMjldOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82ODYwL3NoYXJkLXNrbDkvaWd0QHBlcmZAYmxv
Y2tpbmcuaHRtbAogICBbMzBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNDMzNy9zaGFyZC1za2wyL2lndEBwZXJmQGJsb2NraW5nLmh0bWwKCiAg
KiBpZ3RAcHJpbWVfYnVzeUBoYW5nLXJlbmRlcjoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBb
UEFTU11bMzFdIC0+IFtJTkNPTVBMRVRFXVszMl0gKFtmZG8jMTAzOTI3XSkgKzIgc2ltaWxhciBp
c3N1ZXMKICAgWzMxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjg2MC9zaGFyZC1hcGw2L2lndEBwcmltZV9idXN5QGhhbmctcmVuZGVyLmh0bWwKICAg
WzMyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQzMzcvc2hhcmQtYXBsOC9pZ3RAcHJpbWVfYnVzeUBoYW5nLXJlbmRlci5odG1sCgogIAojIyMj
IFBvc3NpYmxlIGZpeGVzICMjIyMKCiAgKiBpZ3RAZ2VtX2N0eF9pc29sYXRpb25AYmNzMC1zMzoK
ICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbRE1FU0ctV0FSTl1bMzNdIChbZmRvIzEwODU2Nl0p
IC0+IFtQQVNTXVszNF0gKzMgc2ltaWxhciBpc3N1ZXMKICAgWzMzXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjg2MC9zaGFyZC1hcGwzL2lndEBnZW1f
Y3R4X2lzb2xhdGlvbkBiY3MwLXMzLmh0bWwKICAgWzM0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQzMzcvc2hhcmQtYXBsNC9pZ3RAZ2VtX2N0
eF9pc29sYXRpb25AYmNzMC1zMy5odG1sCgogICogaWd0QGdlbV9jdHhfc2hhcmVkQGV4ZWMtc2lu
Z2xlLXRpbWVsaW5lLWJzZDE6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NLSVBdWzM1XSAo
W2ZkbyMxMDkyNzZdKSAtPiBbUEFTU11bMzZdICsxOCBzaW1pbGFyIGlzc3VlcwogICBbMzVdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82ODYwL3NoYXJk
LWljbGI1L2lndEBnZW1fY3R4X3NoYXJlZEBleGVjLXNpbmdsZS10aW1lbGluZS1ic2QxLmh0bWwK
ICAgWzM2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTQzMzcvc2hhcmQtaWNsYjEvaWd0QGdlbV9jdHhfc2hhcmVkQGV4ZWMtc2luZ2xlLXRpbWVs
aW5lLWJzZDEuaHRtbAoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LW90aGVyLWNo
YWluLWJzZDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1bMzddIChbZmRvIzExMTMy
NV0pIC0+IFtQQVNTXVszOF0gKzMgc2ltaWxhciBpc3N1ZXMKICAgWzM3XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjg2MC9zaGFyZC1pY2xiMi9pZ3RA
Z2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1vdGhlci1jaGFpbi1ic2QuaHRtbAogICBbMzhdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDMzNy9z
aGFyZC1pY2xiMy9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1vdGhlci1jaGFpbi1ic2Qu
aHRtbAoKICAqIGlndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQ6CiAgICAtIHNoYXJkLXNrbDog
ICAgICAgICAgW0lOQ09NUExFVEVdWzM5XSAoW2ZkbyMxMDk1MDddKSAtPiBbUEFTU11bNDBdCiAg
IFszOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY4
NjAvc2hhcmQtc2tsMTAvaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZC5odG1sCiAgIFs0MF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MzM3
L3NoYXJkLXNrbDMvaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZC5odG1sCgogICogaWd0QGtt
c19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtb2Zmc2NyZW4tcHJpLWluZGZiLWRyYXctcmVu
ZGVyOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtGQUlMXVs0MV0gKFtmZG8jMTAzMTY3XSkg
LT4gW1BBU1NdWzQyXSArNSBzaW1pbGFyIGlzc3VlcwogICBbNDFdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82ODYwL3NoYXJkLWljbGIyL2lndEBrbXNf
ZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLW9mZnNjcmVuLXByaS1pbmRmYi1kcmF3LXJlbmRl
ci5odG1sCiAgIFs0Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE0MzM3L3NoYXJkLWljbGIxL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdA
ZmJjLTFwLW9mZnNjcmVuLXByaS1pbmRmYi1kcmF3LXJlbmRlci5odG1sCgogICogaWd0QGttc19w
bGFuZV9hbHBoYV9ibGVuZEBwaXBlLWMtY292ZXJhZ2UtN2VmYzoKICAgIC0gc2hhcmQtc2tsOiAg
ICAgICAgICBbRkFJTF1bNDNdIChbZmRvIzEwODE0NV0gLyBbZmRvIzExMDQwM10pIC0+IFtQQVNT
XVs0NF0gKzEgc2ltaWxhciBpc3N1ZQogICBbNDNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82ODYwL3NoYXJkLXNrbDkvaWd0QGttc19wbGFuZV9hbHBo
YV9ibGVuZEBwaXBlLWMtY292ZXJhZ2UtN2VmYy5odG1sCiAgIFs0NF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MzM3L3NoYXJkLXNrbDIvaWd0
QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWMtY292ZXJhZ2UtN2VmYy5odG1sCgogICogaWd0
QGttc19wc3IyX3N1QHBhZ2VfZmxpcDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1b
NDVdIChbZmRvIzEwOTY0Ml0gLyBbZmRvIzExMTA2OF0pIC0+IFtQQVNTXVs0Nl0KICAgWzQ1XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjg2MC9zaGFy
ZC1pY2xiMS9pZ3RAa21zX3BzcjJfc3VAcGFnZV9mbGlwLmh0bWwKICAgWzQ2XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQzMzcvc2hhcmQtaWNs
YjIvaWd0QGttc19wc3IyX3N1QHBhZ2VfZmxpcC5odG1sCgogICogaWd0QGttc19wc3JAcHNyMl9i
YXNpYzoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1bNDddIChbZmRvIzEwOTQ0MV0p
IC0+IFtQQVNTXVs0OF0gKzEgc2ltaWxhciBpc3N1ZQogICBbNDddOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82ODYwL3NoYXJkLWljbGI4L2lndEBrbXNf
cHNyQHBzcjJfYmFzaWMuaHRtbAogICBbNDhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDMzNy9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzckBwc3Iy
X2Jhc2ljLmh0bWwKCiAgKiBpZ3RAa21zX3NldG1vZGVAYmFzaWM6CiAgICAtIHNoYXJkLWtibDog
ICAgICAgICAgW0ZBSUxdWzQ5XSAoW2ZkbyM5OTkxMl0pIC0+IFtQQVNTXVs1MF0KICAgWzQ5XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjg2MC9zaGFy
ZC1rYmwzL2lndEBrbXNfc2V0bW9kZUBiYXNpYy5odG1sCiAgIFs1MF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MzM3L3NoYXJkLWtibDYvaWd0
QGttc19zZXRtb2RlQGJhc2ljLmh0bWwKCiAgKiBpZ3RAa21zX3ZibGFua0BwaXBlLWEtdHMtY29u
dGludWF0aW9uLWRwbXMtc3VzcGVuZDoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbSU5DT01Q
TEVURV1bNTFdIChbZmRvIzEwNDEwOF0pIC0+IFtQQVNTXVs1Ml0gKzEgc2ltaWxhciBpc3N1ZQog
ICBbNTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
ODYwL3NoYXJkLXNrbDkvaWd0QGttc192YmxhbmtAcGlwZS1hLXRzLWNvbnRpbnVhdGlvbi1kcG1z
LXN1c3BlbmQuaHRtbAogICBbNTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNDMzNy9zaGFyZC1za2w0L2lndEBrbXNfdmJsYW5rQHBpcGUtYS10
cy1jb250aW51YXRpb24tZHBtcy1zdXNwZW5kLmh0bWwKCiAgCiMjIyMgV2FybmluZ3MgIyMjIwoK
ICAqIGlndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MxLW5vbnByaXY6CiAgICAtIHNoYXJkLWljbGI6
ICAgICAgICAgW1NLSVBdWzUzXSAoW2ZkbyMxMDkyNzZdKSAtPiBbRkFJTF1bNTRdIChbZmRvIzEx
MTMyOV0pCiAgIFs1M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzY4NjAvc2hhcmQtaWNsYjMvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZjczEtbm9ucHJp
di5odG1sCiAgIFs1NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE0MzM3L3NoYXJkLWljbGIxL2lndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MxLW5v
bnByaXYuaHRtbAoKICAqIGlndEBnZW1fbW9jc19zZXR0aW5nc0Btb2NzLWlzb2xhdGlvbi1ic2Qy
OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVs1NV0gKFtmZG8jMTA5Mjc2XSkgLT4g
W0ZBSUxdWzU2XSAoW2ZkbyMxMTEzMzBdKQogICBbNTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82ODYwL3NoYXJkLWljbGI4L2lndEBnZW1fbW9jc19z
ZXR0aW5nc0Btb2NzLWlzb2xhdGlvbi1ic2QyLmh0bWwKICAgWzU2XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQzMzcvc2hhcmQtaWNsYjIvaWd0
QGdlbV9tb2NzX3NldHRpbmdzQG1vY3MtaXNvbGF0aW9uLWJzZDIuaHRtbAoKICAqIGlndEBnZW1f
bW9jc19zZXR0aW5nc0Btb2NzLXJjNi1ic2QyOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtG
QUlMXVs1N10gKFtmZG8jMTExMzMwXSkgLT4gW1NLSVBdWzU4XSAoW2ZkbyMxMDkyNzZdKQogICBb
NTddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82ODYw
L3NoYXJkLWljbGIyL2lndEBnZW1fbW9jc19zZXR0aW5nc0Btb2NzLXJjNi1ic2QyLmh0bWwKICAg
WzU4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQzMzcvc2hhcmQtaWNsYjgvaWd0QGdlbV9tb2NzX3NldHRpbmdzQG1vY3MtcmM2LWJzZDIuaHRt
bAoKICAKICBbZmRvIzEwMzE2N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTEwMzE2NwogIFtmZG8jMTAzOTI3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzOTI3CiAgW2ZkbyMxMDQxMDhdOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDQxMDgKICBbZmRvIzEwNTM2M106IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNTM2MwogIFtmZG8j
MTA2MTA3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA2
MTA3CiAgW2ZkbyMxMDc3MTNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMDc3MTMKICBbZmRvIzEwODE0NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTEwODE0NQogIFtmZG8jMTA4NTY2XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4NTY2CiAgW2ZkbyMxMDg2ODZdOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg2ODYKICBbZmRvIzEw
ODg0MF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODg0
MAogIFtmZG8jMTA5Mjc2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA5Mjc2CiAgW2ZkbyMxMDk0NDFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMDk0NDEKICBbZmRvIzEwOTUwN106IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTUwNwogIFtmZG8jMTA5NjQyXTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5NjQyCiAgW2ZkbyMxMTA0
MDNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA0MDMK
ICBbZmRvIzExMDcyOF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTExMDcyOAogIFtmZG8jMTEwODQxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTEwODQxCiAgW2ZkbyMxMTA4NTRdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA4NTQKICBbZmRvIzExMTA2OF06IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTA2OAogIFtmZG8jMTExMzI1
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMzI1CiAg
W2ZkbyMxMTEzMjldOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMTEzMjkKICBbZmRvIzExMTMzMF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTExMTMzMAogIFtmZG8jMTExNjA5XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNjA5CiAgW2ZkbyM5OTkxMl06IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTk5OTEyCgoKUGFydGljaXBhdGluZyBo
b3N0cyAoMTAgLT4gMTApCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBObyBjaGFu
Z2VzIGluIHBhcnRpY2lwYXRpbmcgaG9zdHMKCgpCdWlsZCBjaGFuZ2VzCi0tLS0tLS0tLS0tLS0K
CiAgKiBDSTogQ0ktMjAxOTA1MjkgLT4gTm9uZQogICogTGludXg6IENJX0RSTV82ODYwIC0+IFBh
dGNod29ya18xNDMzNwoKICBDSS0yMDE5MDUyOTogMjAxOTA1MjkKICBDSV9EUk1fNjg2MDogMzNj
MDAwNTliMDg0ZjQyZjAxYTE2OGI1ZjY3ZTRkZjY3MDI5M2UyYyBAIGdpdDovL2Fub25naXQuZnJl
ZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElHVF81MTc3OiA4ZjM1MWQ2OTMzNTJkMjFjOTZj
ZWYzOGMzZmQ3N2Y3NzhjNmQ3YzMzIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9y
Zy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzE0MzM3OiA3YjhmMWMyYTk0MTVjZDU0
YzFlZWJiZGYyY2I1MDU4NmVkMGNjYjZkIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcv
Z2Z4LWNpL2xpbnV4CiAgcGlnbGl0XzQ1MDk6IGZkYzVhNGNhMTExMjRhYjg0MTNjNzk4ODg5NmVl
YzRjOTczMzY2OTQgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9waWdsaXQKCj09IExv
Z3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDMzNy8KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
