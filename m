Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB88CC2C0F
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 04:49:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 526B989FDE;
	Tue,  1 Oct 2019 02:49:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A48A489FD9;
 Tue,  1 Oct 2019 02:49:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E078A011B;
 Tue,  1 Oct 2019 02:49:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 01 Oct 2019 02:49:41 -0000
Message-ID: <20191001024941.32579.41637@emeril.freedesktop.org>
References: <20190930194928.1113-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190930194928.1113-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915/tgl=3A_Magic_interrupt_shadow_to_relieve_some_random_locku?=
 =?utf-8?q?ps?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvdGdsOiBNYWdpYyBpbnRlcnJ1
cHQgc2hhZG93IHRvIHJlbGlldmUgc29tZSByYW5kb20gbG9ja3VwcwpVUkwgICA6IGh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjc0MTYvClN0YXRlIDogZmFpbHVyZQoK
PT0gU3VtbWFyeSA9PQoKQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNjk3Nl9mdWxs
IC0+IFBhdGNod29ya18xNDU5Ml9mdWxsCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBT
ZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTQ1OTJfZnVsbCBh
YnNvbHV0ZWx5IG5lZWQgdG8gYmUKICB2ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhp
bmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5n
ZXMKICBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDU5Ml9mdWxsLCBwbGVhc2Ugbm90aWZ5IHlv
dXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhlbQogIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUg
bW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLgoKICAKClBvc3Np
YmxlIG5ldyBpc3N1ZXMKLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93
biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDU5
Ml9mdWxsOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAj
IyMjCgogICogaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHJjczAtczM6CiAgICAtIHNoYXJkLWljbGI6
ICAgICAgICAgW1BBU1NdWzFdIC0+IFtETUVTRy1XQVJOXVsyXQogICBbMV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5NzYvc2hhcmQtaWNsYjEvaWd0
QGdlbV9jdHhfaXNvbGF0aW9uQHJjczAtczMuaHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NTkyL3NoYXJkLWljbGIxL2lndEBn
ZW1fY3R4X2lzb2xhdGlvbkByY3MwLXMzLmh0bWwKCiAgCktub3duIGlzc3VlcwotLS0tLS0tLS0t
LS0KCiAgSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE0NTkyX2Z1bGwg
dGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJ
c3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAZ2VtX2N0eF9pc29sYXRpb25AYmNzMC1zMzoKICAgIC0g
c2hhcmQtYXBsOiAgICAgICAgICBbUEFTU11bM10gLT4gW0RNRVNHLVdBUk5dWzRdIChbZmRvIzEw
ODU2Nl0pICszIHNpbWlsYXIgaXNzdWVzCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjk3Ni9zaGFyZC1hcGw3L2lndEBnZW1fY3R4X2lzb2xh
dGlvbkBiY3MwLXMzLmh0bWwKICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNDU5Mi9zaGFyZC1hcGw3L2lndEBnZW1fY3R4X2lzb2xhdGlv
bkBiY3MwLXMzLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfYXN5bmNAY29uY3VycmVudC13cml0ZXMt
YnNkOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVs1XSAtPiBbU0tJUF1bNl0gKFtm
ZG8jMTExMzI1XSkgKzMgc2ltaWxhciBpc3N1ZXMKICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTc2L3NoYXJkLWljbGIzL2lndEBnZW1fZXhl
Y19hc3luY0Bjb25jdXJyZW50LXdyaXRlcy1ic2QuaHRtbAogICBbNl06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NTkyL3NoYXJkLWljbGIxL2ln
dEBnZW1fZXhlY19hc3luY0Bjb25jdXJyZW50LXdyaXRlcy1ic2QuaHRtbAoKICAqIGlndEBpOTE1
X3BtX3JjNl9yZXNpZGVuY3lAcmM2LWFjY3VyYWN5OgogICAgLSBzaGFyZC1zbmI6ICAgICAgICAg
IFtQQVNTXVs3XSAtPiBbU0tJUF1bOF0gKFtmZG8jMTA5MjcxXSkKICAgWzddOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTc2L3NoYXJkLXNuYjUvaWd0
QGk5MTVfcG1fcmM2X3Jlc2lkZW5jeUByYzYtYWNjdXJhY3kuaHRtbAogICBbOF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NTkyL3NoYXJkLXNu
YjUvaWd0QGk5MTVfcG1fcmM2X3Jlc2lkZW5jeUByYzYtYWNjdXJhY3kuaHRtbAoKICAqIGlndEBr
bXNfY3Vyc29yX2NyY0BwaXBlLWEtY3Vyc29yLTY0eDY0LXNsaWRpbmc6CiAgICAtIHNoYXJkLWlj
bGI6ICAgICAgICAgW1BBU1NdWzldIC0+IFtJTkNPTVBMRVRFXVsxMF0gKFtmZG8jMTA3NzEzXSkg
KzEgc2ltaWxhciBpc3N1ZQogICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzY5NzYvc2hhcmQtaWNsYjIvaWd0QGttc19jdXJzb3JfY3JjQHBpcGUt
YS1jdXJzb3ItNjR4NjQtc2xpZGluZy5odG1sCiAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NTkyL3NoYXJkLWljbGI3L2lndEBrbXNf
Y3Vyc29yX2NyY0BwaXBlLWEtY3Vyc29yLTY0eDY0LXNsaWRpbmcuaHRtbAoKICAqIGlndEBrbXNf
Y3Vyc29yX2NyY0BwaXBlLWItY3Vyc29yLTEyOHgxMjgtb25zY3JlZW46CiAgICAtIHNoYXJkLXNr
bDogICAgICAgICAgW1BBU1NdWzExXSAtPiBbRkFJTF1bMTJdIChbZmRvIzEwMzIzMl0pCiAgIFsx
MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5NzYv
c2hhcmQtc2tsNC9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1iLWN1cnNvci0xMjh4MTI4LW9uc2Ny
ZWVuLmh0bWwKICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQ1OTIvc2hhcmQtc2tsNy9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1iLWN1
cnNvci0xMjh4MTI4LW9uc2NyZWVuLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBp
cmVkLXZibGFuazoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMTNdIC0+IFtGQUlM
XVsxNF0gKFtmZG8jMTA1MzYzXSkgKzEgc2ltaWxhciBpc3N1ZQogICBbMTNdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTc2L3NoYXJkLXNrbDYvaWd0
QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12YmxhbmsuaHRtbAogICBbMTRdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDU5Mi9zaGFyZC1za2wx
L2lndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLmh0bWwKCiAgKiBpZ3RAa21zX2Zs
aXBAZmxpcC12cy1leHBpcmVkLXZibGFuay1pbnRlcnJ1cHRpYmxlOgogICAgLSBzaGFyZC1nbGs6
ICAgICAgICAgIFtQQVNTXVsxNV0gLT4gW0ZBSUxdWzE2XSAoW2ZkbyMxMDUzNjNdKQogICBbMTVd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTc2L3No
YXJkLWdsazkvaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12YmxhbmstaW50ZXJydXB0aWJs
ZS5odG1sCiAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE0NTkyL3NoYXJkLWdsazEvaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12
YmxhbmstaW50ZXJydXB0aWJsZS5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2lu
Z0BmYmMtMXAtcHJpbXNjcm4tc2hyZmItbXNmbGlwLWJsdDoKICAgIC0gc2hhcmQtaWNsYjogICAg
ICAgICBbUEFTU11bMTddIC0+IFtGQUlMXVsxOF0gKFtmZG8jMTAzMTY3XSkgKzMgc2ltaWxhciBp
c3N1ZXMKICAgWzE3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjk3Ni9zaGFyZC1pY2xiNy9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0x
cC1wcmltc2Nybi1zaHJmYi1tc2ZsaXAtYmx0Lmh0bWwKICAgWzE4XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ1OTIvc2hhcmQtaWNsYjUvaWd0
QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4tc2hyZmItbXNmbGlwLWJs
dC5odG1sCgogICogaWd0QGttc19waXBlX2NyY19iYXNpY0Bub25ibG9ja2luZy1jcmMtcGlwZS1i
LWZyYW1lLXNlcXVlbmNlOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsxOV0gLT4g
W0ZBSUxdWzIwXSAoW2ZkbyMxMDMxOTFdKQogICBbMTldOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTc2L3NoYXJkLXNrbDQvaWd0QGttc19waXBlX2Ny
Y19iYXNpY0Bub25ibG9ja2luZy1jcmMtcGlwZS1iLWZyYW1lLXNlcXVlbmNlLmh0bWwKICAgWzIw
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ1
OTIvc2hhcmQtc2tsNy9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQG5vbmJsb2NraW5nLWNyYy1waXBl
LWItZnJhbWUtc2VxdWVuY2UuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlw
ZS1iLWNvbnN0YW50LWFscGhhLW1pbjoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11b
MjFdIC0+IFtGQUlMXVsyMl0gKFtmZG8jMTA4MTQ1XSkKICAgWzIxXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjk3Ni9zaGFyZC1za2w0L2lndEBrbXNf
cGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1iLWNvbnN0YW50LWFscGhhLW1pbi5odG1sCiAgIFsyMl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NTky
L3NoYXJkLXNrbDcvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWItY29uc3RhbnQtYWxw
aGEtbWluLmh0bWwKCiAgKiBpZ3RAa21zX3BzckBwc3IyX3Nwcml0ZV9tbWFwX2d0dDoKICAgIC0g
c2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMjNdIC0+IFtTS0lQXVsyNF0gKFtmZG8jMTA5NDQx
XSkgKzEgc2ltaWxhciBpc3N1ZQogICBbMjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82OTc2L3NoYXJkLWljbGIyL2lndEBrbXNfcHNyQHBzcjJfc3By
aXRlX21tYXBfZ3R0Lmh0bWwKICAgWzI0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ1OTIvc2hhcmQtaWNsYjgvaWd0QGttc19wc3JAcHNyMl9z
cHJpdGVfbW1hcF9ndHQuaHRtbAoKICAqIGlndEBrbXNfc2V0bW9kZUBiYXNpYzoKICAgIC0gc2hh
cmQtaHN3OiAgICAgICAgICBbUEFTU11bMjVdIC0+IFtGQUlMXVsyNl0gKFtmZG8jOTk5MTJdKQog
ICBbMjVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
OTc2L3NoYXJkLWhzdzYvaWd0QGttc19zZXRtb2RlQGJhc2ljLmh0bWwKICAgWzI2XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ1OTIvc2hhcmQt
aHN3MS9pZ3RAa21zX3NldG1vZGVAYmFzaWMuaHRtbAoKICAqIGlndEBwZXJmQGJsb2NraW5nOgog
ICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsyN10gLT4gW0ZBSUxdWzI4XSAoW2ZkbyMx
MTA3MjhdKQogICBbMjddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82OTc2L3NoYXJkLXNrbDgvaWd0QHBlcmZAYmxvY2tpbmcuaHRtbAogICBbMjhdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDU5Mi9z
aGFyZC1za2w3L2lndEBwZXJmQGJsb2NraW5nLmh0bWwKCiAgKiBpZ3RAcHJpbWVfYnVzeUBhZnRl
ci1ic2QyOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsyOV0gLT4gW1NLSVBdWzMw
XSAoW2ZkbyMxMDkyNzZdKSArOSBzaW1pbGFyIGlzc3VlcwogICBbMjldOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTc2L3NoYXJkLWljbGIyL2lndEBw
cmltZV9idXN5QGFmdGVyLWJzZDIuaHRtbAogICBbMzBdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDU5Mi9zaGFyZC1pY2xiOC9pZ3RAcHJpbWVf
YnVzeUBhZnRlci1ic2QyLmh0bWwKCiAgCiMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGln
dEBnZW1fd29ya2Fyb3VuZHNAc3VzcGVuZC1yZXN1bWUtY29udGV4dDoKICAgIC0gc2hhcmQtYXBs
OiAgICAgICAgICBbRE1FU0ctV0FSTl1bMzFdIChbZmRvIzEwODU2Nl0pIC0+IFtQQVNTXVszMl0g
KzMgc2ltaWxhciBpc3N1ZXMKICAgWzMxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNjk3Ni9zaGFyZC1hcGwyL2lndEBnZW1fd29ya2Fyb3VuZHNAc3Vz
cGVuZC1yZXN1bWUtY29udGV4dC5odG1sCiAgIFszMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NTkyL3NoYXJkLWFwbDgvaWd0QGdlbV93b3Jr
YXJvdW5kc0BzdXNwZW5kLXJlc3VtZS1jb250ZXh0Lmh0bWwKCiAgKiB7aWd0QGk5MTVfcG1fZGNA
ZGM1LWRwbXN9OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtGQUlMXVszM10gKFtmZG8jMTEx
Nzk1IF0pIC0+IFtQQVNTXVszNF0KICAgWzMzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNjk3Ni9zaGFyZC1pY2xiMy9pZ3RAaTkxNV9wbV9kY0BkYzUt
ZHBtcy5odG1sCiAgIFszNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE0NTkyL3NoYXJkLWljbGI2L2lndEBpOTE1X3BtX2RjQGRjNS1kcG1zLmh0
bWwKCiAgKiBpZ3RAa21zX2RyYXdfY3JjQGRyYXctbWV0aG9kLXhyZ2IyMTAxMDEwLW1tYXAtY3B1
LXVudGlsZWQ6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzM1XSAoW2ZkbyMxMDMx
ODRdIC8gW2ZkbyMxMDMyMzJdKSAtPiBbUEFTU11bMzZdCiAgIFszNV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5NzYvc2hhcmQtc2tsOC9pZ3RAa21z
X2RyYXdfY3JjQGRyYXctbWV0aG9kLXhyZ2IyMTAxMDEwLW1tYXAtY3B1LXVudGlsZWQuaHRtbAog
ICBbMzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNDU5Mi9zaGFyZC1za2wxL2lndEBrbXNfZHJhd19jcmNAZHJhdy1tZXRob2QteHJnYjIxMDEw
MTAtbW1hcC1jcHUtdW50aWxlZC5odG1sCgogICogaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVu
ZDoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbSU5DT01QTEVURV1bMzddIChbZmRvIzEwOTUw
N10pIC0+IFtQQVNTXVszOF0KICAgWzM3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNjk3Ni9zaGFyZC1za2w4L2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1
c3BlbmQuaHRtbAogICBbMzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNDU5Mi9zaGFyZC1za2w5L2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3Bl
bmQuaHRtbAogICAgLSBzaGFyZC1oc3c6ICAgICAgICAgIFtJTkNPTVBMRVRFXVszOV0gKFtmZG8j
MTAzNTQwXSkgLT4gW1BBU1NdWzQwXQogICBbMzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTc2L3NoYXJkLWhzdzQvaWd0QGttc19mbGlwQGZsaXAt
dnMtc3VzcGVuZC5odG1sCiAgIFs0MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0NTkyL3NoYXJkLWhzdzQvaWd0QGttc19mbGlwQGZsaXAtdnMt
c3VzcGVuZC5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtb2Zm
c2NyZW4tcHJpLXNocmZiLWRyYXctcHdyaXRlOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtG
QUlMXVs0MV0gKFtmZG8jMTAzMTY3XSkgLT4gW1BBU1NdWzQyXSArMiBzaW1pbGFyIGlzc3Vlcwog
ICBbNDFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
OTc2L3NoYXJkLWljbGI2L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLW9mZnNj
cmVuLXByaS1zaHJmYi1kcmF3LXB3cml0ZS5odG1sCiAgIFs0Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NTkyL3NoYXJkLWljbGI2L2lndEBr
bXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLW9mZnNjcmVuLXByaS1zaHJmYi1kcmF3LXB3
cml0ZS5odG1sCgogICogaWd0QGttc19wbGFuZUBwbGFuZS1wYW5uaW5nLWJvdHRvbS1yaWdodC1w
aXBlLWEtcGxhbmVzOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlMXVs0M10gKFtmZG8j
MTAzMTY2XSkgLT4gW1BBU1NdWzQ0XQogICBbNDNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTc2L3NoYXJkLXNrbDgvaWd0QGttc19wbGFuZUBwbGFu
ZS1wYW5uaW5nLWJvdHRvbS1yaWdodC1waXBlLWEtcGxhbmVzLmh0bWwKICAgWzQ0XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ1OTIvc2hhcmQt
c2tsMS9pZ3RAa21zX3BsYW5lQHBsYW5lLXBhbm5pbmctYm90dG9tLXJpZ2h0LXBpcGUtYS1wbGFu
ZXMuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfbG93cmVzQHBpcGUtYS10aWxpbmcteDoKICAgIC0g
c2hhcmQtaWNsYjogICAgICAgICBbRkFJTF1bNDVdIChbZmRvIzEwMzE2Nl0pIC0+IFtQQVNTXVs0
Nl0KICAgWzQ1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNjk3Ni9zaGFyZC1pY2xiNy9pZ3RAa21zX3BsYW5lX2xvd3Jlc0BwaXBlLWEtdGlsaW5nLXgu
aHRtbAogICBbNDZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNDU5Mi9zaGFyZC1pY2xiOC9pZ3RAa21zX3BsYW5lX2xvd3Jlc0BwaXBlLWEtdGls
aW5nLXguaHRtbAoKICAqIGlndEBrbXNfcHNyMl9zdUBwYWdlX2ZsaXA6CiAgICAtIHNoYXJkLWlj
bGI6ICAgICAgICAgW1NLSVBdWzQ3XSAoW2ZkbyMxMDk2NDJdIC8gW2ZkbyMxMTEwNjhdKSAtPiBb
UEFTU11bNDhdCiAgIFs0N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzY5NzYvc2hhcmQtaWNsYjEvaWd0QGttc19wc3IyX3N1QHBhZ2VfZmxpcC5odG1s
CiAgIFs0OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0NTkyL3NoYXJkLWljbGIyL2lndEBrbXNfcHNyMl9zdUBwYWdlX2ZsaXAuaHRtbAoKICAq
IGlndEBrbXNfdmJsYW5rQHBpcGUtYy10cy1jb250aW51YXRpb24tZHBtcy1zdXNwZW5kOgogICAg
LSBzaGFyZC1rYmw6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs0OV0gKFtmZG8jMTAzNjY1XSkgLT4g
W1BBU1NdWzUwXQogICBbNDldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82OTc2L3NoYXJkLWtibDIvaWd0QGttc192YmxhbmtAcGlwZS1jLXRzLWNvbnRp
bnVhdGlvbi1kcG1zLXN1c3BlbmQuaHRtbAogICBbNTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDU5Mi9zaGFyZC1rYmw0L2lndEBrbXNfdmJs
YW5rQHBpcGUtYy10cy1jb250aW51YXRpb24tZHBtcy1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAcHJp
bWVfYnVzeUBoYW5nLWJzZDI6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NLSVBdWzUxXSAo
W2ZkbyMxMDkyNzZdKSAtPiBbUEFTU11bNTJdICsxMSBzaW1pbGFyIGlzc3VlcwogICBbNTFdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTc2L3NoYXJk
LWljbGI2L2lndEBwcmltZV9idXN5QGhhbmctYnNkMi5odG1sCiAgIFs1Ml06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NTkyL3NoYXJkLWljbGI0
L2lndEBwcmltZV9idXN5QGhhbmctYnNkMi5odG1sCgogIAojIyMjIFdhcm5pbmdzICMjIyMKCiAg
KiBpZ3RAZ2VtX21vY3Nfc2V0dGluZ3NAbW9jcy1pc29sYXRpb24tYnNkMjoKICAgIC0gc2hhcmQt
aWNsYjogICAgICAgICBbU0tJUF1bNTNdIChbZmRvIzEwOTI3Nl0pIC0+IFtGQUlMXVs1NF0gKFtm
ZG8jMTExMzMwXSkKICAgWzUzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjk3Ni9zaGFyZC1pY2xiNi9pZ3RAZ2VtX21vY3Nfc2V0dGluZ3NAbW9jcy1p
c29sYXRpb24tYnNkMi5odG1sCiAgIFs1NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NTkyL3NoYXJkLWljbGIxL2lndEBnZW1fbW9jc19zZXR0
aW5nc0Btb2NzLWlzb2xhdGlvbi1ic2QyLmh0bWwKCiAgCiAge25hbWV9OiBUaGlzIGVsZW1lbnQg
aXMgc3VwcHJlc3NlZC4gVGhpcyBtZWFucyBpdCBpcyBpZ25vcmVkIHdoZW4gY29tcHV0aW5nCiAg
ICAgICAgICB0aGUgc3RhdHVzIG9mIHRoZSBkaWZmZXJlbmNlIChTVUNDRVNTLCBXQVJOSU5HLCBv
ciBGQUlMVVJFKS4KCiAgW2ZkbyMxMDMxNjZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMDMxNjYKICBbZmRvIzEwMzE2N106IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzE2NwogIFtmZG8jMTAzMTg0XTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTg0CiAgW2ZkbyMxMDMx
OTFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxOTEK
ICBbZmRvIzEwMzIzMl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTEwMzIzMgogIFtmZG8jMTAzNTQwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTAzNTQwCiAgW2ZkbyMxMDM2NjVdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDM2NjUKICBbZmRvIzEwNTM2M106IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNTM2MwogIFtmZG8jMTA3NzEz
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzEzCiAg
W2ZkbyMxMDgxNDVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDgxNDUKICBbZmRvIzEwODU2Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTEwODU2NgogIFtmZG8jMTA5MjcxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5MjcxCiAgW2ZkbyMxMDkyNzZdOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyNzYKICBbZmRvIzEwOTQ0MV06
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTQ0MQogIFtm
ZG8jMTA5NTA3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTA5NTA3CiAgW2ZkbyMxMDk2NDJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDk2NDIKICBbZmRvIzExMDcyOF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDcyOAogIFtmZG8jMTExMDY4XTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMDY4CiAgW2ZkbyMxMTEzMjVdOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEzMjUKICBbZmRv
IzExMTMzMF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEx
MTMzMAogIFtmZG8jMTExNzgxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTExNzgxCiAgW2ZkbyMxMTE3OTUgXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNzk1IAogIFtmZG8jOTk5MTJdOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD05OTkxMgoKClBhcnRpY2lwYXRpbmcgaG9z
dHMgKDE2IC0+IDEwKQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTWlzc2luZyAg
ICAoNik6IHNoYXJkLXRnbGIxIHNoYXJkLXRnbGIyIHNoYXJkLXRnbGIzIHNoYXJkLXRnbGI0IHNo
YXJkLXRnbGI1IHNoYXJkLXRnbGI2IAoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoKICAq
IENJOiBDSS0yMDE5MDUyOSAtPiBOb25lCiAgKiBMaW51eDogQ0lfRFJNXzY5NzYgLT4gUGF0Y2h3
b3JrXzE0NTkyCgogIENJLTIwMTkwNTI5OiAyMDE5MDUyOQogIENJX0RSTV82OTc2OiBjNjk4OTc5
ZTgyMDdhNGViNTY4YjUzM2YwNWI5ZDQ1ODBmZDVkMDA3IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVz
a3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzUyMDg6IGMwMTMxYjRmMTMyYWNmMjg3ZDlkMDVi
MGY1MDc4MDAzZDMxNTllMWMgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3JnL2Fw
cC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdvcmtfMTQ1OTI6IDc4MWM3NTEwZTRkZmIwZjY4MTVj
ZWU3MGUzMWIwODg4ZGQxY2ZlMjIgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngt
Y2kvbGludXgKICBwaWdsaXRfNDUwOTogZmRjNWE0Y2ExMTEyNGFiODQxM2M3OTg4ODk2ZWVjNGM5
NzMzNjY5NCBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3BpZ2xpdAoKPT0gTG9ncyA9
PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0NTkyLwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
