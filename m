Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7D09BB9A
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Aug 2019 06:18:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E51EA6E084;
	Sat, 24 Aug 2019 04:18:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 870276E084;
 Sat, 24 Aug 2019 04:18:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5D094A47DA;
 Sat, 24 Aug 2019 04:18:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhang, Xiaolin" <xiaolin.zhang@intel.com>
Date: Sat, 24 Aug 2019 04:18:25 -0000
Message-ID: <20190824041825.27175.95989@emeril.freedesktop.org>
References: <1566537792-12728-1-git-send-email-xiaolin.zhang@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1566537792-12728-1-git-send-email-xiaolin.zhang@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EIGT=3A_success_for_drm/?=
 =?utf-8?q?i915=3A_to_make_vgpu_ppgtt_notificaiton_as_atomic_operation_=28?=
 =?utf-8?q?rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IHRvIG1ha2UgdmdwdSBwcGd0
dCBub3RpZmljYWl0b24gYXMgYXRvbWljIG9wZXJhdGlvbiAocmV2MikKVVJMICAgOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY1NjY5LwpTdGF0ZSA6IHN1Y2Nlc3MK
Cj09IFN1bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzY3NzRfZnVs
bCAtPiBQYXRjaHdvcmtfMTQxNTVfZnVsbAo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAgKipTVUNDRVNTKioKCiAg
Tm8gcmVncmVzc2lvbnMgZm91bmQuCgogIAoKS25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBI
ZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTQxNTVfZnVsbCB0aGF0IGNv
bWUgZnJvbSBrbm93biBpc3N1ZXM6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIElzc3VlcyBo
aXQgIyMjIwoKICAqIGlndEBnZW1fZXhlY19iYWxhbmNlckBzZW1hcGhvcmU6CiAgICAtIHNoYXJk
LWFwbDogICAgICAgICAgW1BBU1NdWzFdIC0+IFtJTkNPTVBMRVRFXVsyXSAoW2ZkbyMxMDM5Mjdd
KSArMSBzaW1pbGFyIGlzc3VlCiAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNjc3NC9zaGFyZC1hcGwyL2lndEBnZW1fZXhlY19iYWxhbmNlckBz
ZW1hcGhvcmUuaHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE0MTU1L3NoYXJkLWFwbDYvaWd0QGdlbV9leGVjX2JhbGFuY2VyQHNl
bWFwaG9yZS5odG1sCgogICogaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtY29udGV4dHMt
YnNkMjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bM10gLT4gW1NLSVBdWzRdIChb
ZmRvIzEwOTI3Nl0pICsyNSBzaW1pbGFyIGlzc3VlcwogICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NzQvc2hhcmQtaWNsYjEvaWd0QGdlbV9l
eGVjX3NjaGVkdWxlQHByZWVtcHQtY29udGV4dHMtYnNkMi5odG1sCiAgIFs0XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxNTUvc2hhcmQtaWNs
YjcvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtY29udGV4dHMtYnNkMi5odG1sCgogICog
aWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHRpdmUtaGFuZy1ic2Q6CiAgICAtIHNoYXJkLWlj
bGI6ICAgICAgICAgW1BBU1NdWzVdIC0+IFtTS0lQXVs2XSAoW2ZkbyMxMTEzMjVdKSArMyBzaW1p
bGFyIGlzc3VlcwogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzY3NzQvc2hhcmQtaWNsYjUvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHRp
dmUtaGFuZy1ic2QuaHRtbAogICBbNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0MTU1L3NoYXJkLWljbGIyL2lndEBnZW1fZXhlY19zY2hlZHVs
ZUBwcmVlbXB0aXZlLWhhbmctYnNkLmh0bWwKCiAgKiBpZ3RAaTkxNV9wbV9ycG1Ac3lzdGVtLXN1
c3BlbmQtbW9kZXNldDoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bN10gLT4gW0lO
Q09NUExFVEVdWzhdIChbZmRvIzEwNDEwOF0gLyBbZmRvIzEwNzgwN10pCiAgIFs3XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc3NC9zaGFyZC1za2w5
L2lndEBpOTE1X3BtX3JwbUBzeXN0ZW0tc3VzcGVuZC1tb2Rlc2V0Lmh0bWwKICAgWzhdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDE1NS9zaGFy
ZC1za2wxMC9pZ3RAaTkxNV9wbV9ycG1Ac3lzdGVtLXN1c3BlbmQtbW9kZXNldC5odG1sCgogICog
aWd0QGk5MTVfc3VzcGVuZEBzeXNmcy1yZWFkZXI6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAg
W1BBU1NdWzldIC0+IFtETUVTRy1XQVJOXVsxMF0gKFtmZG8jMTA4NTY2XSkgKzQgc2ltaWxhciBp
c3N1ZXMKICAgWzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82Nzc0L3NoYXJkLWFwbDEvaWd0QGk5MTVfc3VzcGVuZEBzeXNmcy1yZWFkZXIuaHRtbAog
ICBbMTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNDE1NS9zaGFyZC1hcGwxL2lndEBpOTE1X3N1c3BlbmRAc3lzZnMtcmVhZGVyLmh0bWwKCiAg
KiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmltc2Nybi1jdXItaW5kZmIt
bW92ZToKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMTFdIC0+IFtGQUlMXVsxMl0g
KFtmZG8jMTAzMTY3XSkKICAgWzExXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjc3NC9zaGFyZC1za2wzL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tp
bmdAZmJjLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1tb3ZlLmh0bWwKICAgWzEyXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxNTUvc2hhcmQtc2ts
Ni9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmltc2Nybi1jdXItaW5kZmIt
bW92ZS5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJp
bXNjcm4tY3VyLWluZGZiLWRyYXctYmx0OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNT
XVsxM10gLT4gW0ZBSUxdWzE0XSAoW2ZkbyMxMDMxNjddKSArMiBzaW1pbGFyIGlzc3VlcwogICBb
MTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82Nzc0
L3NoYXJkLWljbGIxL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1z
Y3JuLWN1ci1pbmRmYi1kcmF3LWJsdC5odG1sCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTU1L3NoYXJkLWljbGIyL2lndEBrbXNf
ZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1kcmF3LWJs
dC5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNj
cm4tcHJpLWluZGZiLWRyYXctbW1hcC13YzoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFT
U11bMTVdIC0+IFtGQUlMXVsxNl0gKFtmZG8jMTA4MDQwXSkKICAgWzE1XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc3NC9zaGFyZC1za2w0L2lndEBr
bXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLXByaS1pbmRmYi1kcmF3
LW1tYXAtd2MuaHRtbAogICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNDE1NS9zaGFyZC1za2wyL2lndEBrbXNfZnJvbnRidWZmZXJfdHJh
Y2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLXByaS1pbmRmYi1kcmF3LW1tYXAtd2MuaHRtbAoKICAq
IGlndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1hLWNvbnN0YW50LWFscGhhLW1pbjoKICAg
IC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMTddIC0+IFtGQUlMXVsxOF0gKFtmZG8jMTA4
MTQ1XSkKICAgWzE3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjc3NC9zaGFyZC1za2w0L2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1hLWNv
bnN0YW50LWFscGhhLW1pbi5odG1sCiAgIFsxOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTU1L3NoYXJkLXNrbDIvaWd0QGttc19wbGFuZV9h
bHBoYV9ibGVuZEBwaXBlLWEtY29uc3RhbnQtYWxwaGEtbWluLmh0bWwKCiAgKiBpZ3RAa21zX3Bz
ckBwc3IyX3ByaW1hcnlfbW1hcF9jcHU6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1Nd
WzE5XSAtPiBbU0tJUF1bMjBdIChbZmRvIzEwOTQ0MV0pICsyIHNpbWlsYXIgaXNzdWVzCiAgIFsx
OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NzQv
c2hhcmQtaWNsYjIvaWd0QGttc19wc3JAcHNyMl9wcmltYXJ5X21tYXBfY3B1Lmh0bWwKICAgWzIw
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQx
NTUvc2hhcmQtaWNsYjgvaWd0QGttc19wc3JAcHNyMl9wcmltYXJ5X21tYXBfY3B1Lmh0bWwKCiAg
KiBpZ3RAcGVyZkBibG9ja2luZzoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMjFd
IC0+IFtGQUlMXVsyMl0gKFtmZG8jMTEwNzI4XSkKICAgWzIxXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc3NC9zaGFyZC1za2w1L2lndEBwZXJmQGJs
b2NraW5nLmh0bWwKICAgWzIyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTQxNTUvc2hhcmQtc2tsNC9pZ3RAcGVyZkBibG9ja2luZy5odG1sCgog
IAojIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMKCiAgKiBpZ3RAZ2VtX2N0eF9zaGFyZWRAZXhlYy1z
aW5nbGUtdGltZWxpbmUtYnNkOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVsyM10g
KFtmZG8jMTEwODQxXSkgLT4gW1BBU1NdWzI0XQogICBbMjNdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82Nzc0L3NoYXJkLWljbGIyL2lndEBnZW1fY3R4
X3NoYXJlZEBleGVjLXNpbmdsZS10aW1lbGluZS1ic2QuaHRtbAogICBbMjRdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDE1NS9zaGFyZC1pY2xi
OC9pZ3RAZ2VtX2N0eF9zaGFyZWRAZXhlYy1zaW5nbGUtdGltZWxpbmUtYnNkLmh0bWwKCiAgKiBp
Z3RAZ2VtX2Vpb0ByZXNldC1zdHJlc3M6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW0ZBSUxd
WzI1XSAoW2ZkbyMxMDk2NjFdKSAtPiBbUEFTU11bMjZdCiAgIFsyNV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NzQvc2hhcmQtaWNsYjcvaWd0QGdl
bV9laW9AcmVzZXQtc3RyZXNzLmh0bWwKICAgWzI2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxNTUvc2hhcmQtaWNsYjYvaWd0QGdlbV9laW9A
cmVzZXQtc3RyZXNzLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfcmVsb2NAYmFzaWMtY3B1LXdjLWFj
dGl2ZToKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbRE1FU0ctV0FSTl1bMjddIChbZmRvIzEw
NjEwN10pIC0+IFtQQVNTXVsyOF0KICAgWzI3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc3NC9zaGFyZC1za2wxMC9pZ3RAZ2VtX2V4ZWNfcmVsb2NA
YmFzaWMtY3B1LXdjLWFjdGl2ZS5odG1sCiAgIFsyOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTU1L3NoYXJkLXNrbDUvaWd0QGdlbV9leGVj
X3JlbG9jQGJhc2ljLWNwdS13Yy1hY3RpdmUuaHRtbAoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVs
ZUBpbmRlcGVuZGVudC1ic2QyOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVsyOV0g
KFtmZG8jMTA5Mjc2XSkgLT4gW1BBU1NdWzMwXSArMTYgc2ltaWxhciBpc3N1ZXMKICAgWzI5XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc3NC9zaGFy
ZC1pY2xiOC9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAaW5kZXBlbmRlbnQtYnNkMi5odG1sCiAgIFsz
MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
MTU1L3NoYXJkLWljbGI0L2lndEBnZW1fZXhlY19zY2hlZHVsZUBpbmRlcGVuZGVudC1ic2QyLmh0
bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcmVvcmRlci13aWRlLWJzZDoKICAgIC0gc2hh
cmQtaWNsYjogICAgICAgICBbU0tJUF1bMzFdIChbZmRvIzExMTMyNV0pIC0+IFtQQVNTXVszMl0g
KzMgc2ltaWxhciBpc3N1ZXMKICAgWzMxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNjc3NC9zaGFyZC1pY2xiMi9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVA
cmVvcmRlci13aWRlLWJzZC5odG1sCiAgIFszMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTU1L3NoYXJkLWljbGI4L2lndEBnZW1fZXhlY19z
Y2hlZHVsZUByZW9yZGVyLXdpZGUtYnNkLmh0bWwKCiAgKiBpZ3RAZ2VtX3RpbGVkX3diOgogICAg
LSBzaGFyZC1oc3c6ICAgICAgICAgIFtJTkNPTVBMRVRFXVszM10gKFtmZG8jMTAzNTQwXSkgLT4g
W1BBU1NdWzM0XQogICBbMzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82Nzc0L3NoYXJkLWhzdzEvaWd0QGdlbV90aWxlZF93Yi5odG1sCiAgIFszNF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTU1
L3NoYXJkLWhzdzIvaWd0QGdlbV90aWxlZF93Yi5odG1sCgogICogaWd0QGk5MTVfcG1fcnBtQGky
YzoKICAgIC0gc2hhcmQtaHN3OiAgICAgICAgICBbRkFJTF1bMzVdIChbZmRvIzEwNDA5N10pIC0+
IFtQQVNTXVszNl0KICAgWzM1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjc3NC9zaGFyZC1oc3cyL2lndEBpOTE1X3BtX3JwbUBpMmMuaHRtbAogICBb
MzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NDE1NS9zaGFyZC1oc3cxL2lndEBpOTE1X3BtX3JwbUBpMmMuaHRtbAoKICAqIGlndEBrbXNfY3Vy
c29yX2NyY0BwaXBlLWItY3Vyc29yLTY0eDY0LXNsaWRpbmc6CiAgICAtIHNoYXJkLXNuYjogICAg
ICAgICAgW0lOQ09NUExFVEVdWzM3XSAoW2ZkbyMxMDU0MTFdKSAtPiBbUEFTU11bMzhdCiAgIFsz
N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NzQv
c2hhcmQtc25iMS9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1iLWN1cnNvci02NHg2NC1zbGlkaW5n
Lmh0bWwKICAgWzM4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTQxNTUvc2hhcmQtc25iMi9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1iLWN1cnNv
ci02NHg2NC1zbGlkaW5nLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9sZWdhY3lAbG9uZy1ub25i
bG9ja2luZy1tb2Rlc2V0LXZzLWN1cnNvci1hdG9taWM6CiAgICAtIHNoYXJkLXNrbDogICAgICAg
ICAgW0RNRVNHLVdBUk5dWzM5XSAoW2ZkbyMxMDU1NDFdKSAtPiBbUEFTU11bNDBdCiAgIFszOV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NzQvc2hh
cmQtc2tsOS9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAbG9uZy1ub25ibG9ja2luZy1tb2Rlc2V0LXZz
LWN1cnNvci1hdG9taWMuaHRtbAogICBbNDBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDE1NS9zaGFyZC1za2wxMC9pZ3RAa21zX2N1cnNvcl9s
ZWdhY3lAbG9uZy1ub25ibG9ja2luZy1tb2Rlc2V0LXZzLWN1cnNvci1hdG9taWMuaHRtbAoKICAq
IGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3JuLWluZGZiLXBsZmxp
cC1ibHQ6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW0ZBSUxdWzQxXSAoW2ZkbyMxMDMxNjdd
KSAtPiBbUEFTU11bNDJdCiAgIFs0MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzY3NzQvc2hhcmQtYXBsNC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNr
aW5nQGZiYy0xcC1wcmltc2Nybi1pbmRmYi1wbGZsaXAtYmx0Lmh0bWwKICAgWzQyXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxNTUvc2hhcmQt
YXBsNi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmltc2Nybi1pbmRmYi1w
bGZsaXAtYmx0Lmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0ycC1z
Y25kc2Nybi1zaHJmYi1wbGZsaXAtYmx0OgogICAgLSBzaGFyZC1oc3c6ICAgICAgICAgIFtTS0lQ
XVs0M10gKFtmZG8jMTA5MjcxXSkgLT4gW1BBU1NdWzQ0XQogICBbNDNdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82Nzc0L3NoYXJkLWhzdzYvaWd0QGtt
c19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMnAtc2NuZHNjcm4tc2hyZmItcGxmbGlwLWJsdC5o
dG1sCiAgIFs0NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE0MTU1L3NoYXJkLWhzdzEvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMt
MnAtc2NuZHNjcm4tc2hyZmItcGxmbGlwLWJsdC5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZl
cl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tY3VyLWluZGZiLWRyYXctcmVuZGVyOgogICAg
LSBzaGFyZC1pY2xiOiAgICAgICAgIFtGQUlMXVs0NV0gKFtmZG8jMTAzMTY3XSkgLT4gW1BBU1Nd
WzQ2XSArMiBzaW1pbGFyIGlzc3VlcwogICBbNDVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82Nzc0L3NoYXJkLWljbGIyL2lndEBrbXNfZnJvbnRidWZm
ZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1kcmF3LXJlbmRlci5odG1s
CiAgIFs0Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0MTU1L3NoYXJkLWljbGI4L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNy
LTFwLXByaW1zY3JuLWN1ci1pbmRmYi1kcmF3LXJlbmRlci5odG1sCgogICogaWd0QGttc19wbGFu
ZUBwbGFuZS1wYW5uaW5nLWJvdHRvbS1yaWdodC1zdXNwZW5kLXBpcGUtYi1wbGFuZXM6CiAgICAt
IHNoYXJkLWtibDogICAgICAgICAgW0ZBSUxdWzQ3XSAoW2ZkbyMxMDMzNzVdKSAtPiBbUEFTU11b
NDhdCiAgIFs0N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzY3NzQvc2hhcmQta2JsNC9pZ3RAa21zX3BsYW5lQHBsYW5lLXBhbm5pbmctYm90dG9tLXJp
Z2h0LXN1c3BlbmQtcGlwZS1iLXBsYW5lcy5odG1sCiAgIFs0OF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTU1L3NoYXJkLWtibDcvaWd0QGtt
c19wbGFuZUBwbGFuZS1wYW5uaW5nLWJvdHRvbS1yaWdodC1zdXNwZW5kLXBpcGUtYi1wbGFuZXMu
aHRtbAoKICAqIGlndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1iLWNvdmVyYWdlLTdlZmM6
CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzQ5XSAoW2ZkbyMxMDgxNDVdIC8gW2Zk
byMxMTA0MDNdKSAtPiBbUEFTU11bNTBdCiAgIFs0OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NzQvc2hhcmQtc2tsNi9pZ3RAa21zX3BsYW5lX2Fs
cGhhX2JsZW5kQHBpcGUtYi1jb3ZlcmFnZS03ZWZjLmh0bWwKICAgWzUwXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxNTUvc2hhcmQtc2tsMS9p
Z3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYi1jb3ZlcmFnZS03ZWZjLmh0bWwKCiAgKiBp
Z3RAa21zX3BsYW5lX2xvd3Jlc0BwaXBlLWEtdGlsaW5nLXg6CiAgICAtIHNoYXJkLWljbGI6ICAg
ICAgICAgW0ZBSUxdWzUxXSAoW2ZkbyMxMDMxNjZdKSAtPiBbUEFTU11bNTJdCiAgIFs1MV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NzQvc2hhcmQt
aWNsYjQvaWd0QGttc19wbGFuZV9sb3dyZXNAcGlwZS1hLXRpbGluZy14Lmh0bWwKICAgWzUyXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxNTUv
c2hhcmQtaWNsYjUvaWd0QGttc19wbGFuZV9sb3dyZXNAcGlwZS1hLXRpbGluZy14Lmh0bWwKCiAg
KiBpZ3RAa21zX3BsYW5lX211bHRpcGxlQGF0b21pYy1waXBlLWEtdGlsaW5nLXlmOgogICAgLSBz
aGFyZC1za2w6ICAgICAgICAgIFtETUVTRy1XQVJOXVs1M10gKFtmZG8jMTA2ODg1XSkgLT4gW1BB
U1NdWzU0XQogICBbNTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82Nzc0L3NoYXJkLXNrbDMvaWd0QGttc19wbGFuZV9tdWx0aXBsZUBhdG9taWMtcGlw
ZS1hLXRpbGluZy15Zi5odG1sCiAgIFs1NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTU1L3NoYXJkLXNrbDYvaWd0QGttc19wbGFuZV9tdWx0
aXBsZUBhdG9taWMtcGlwZS1hLXRpbGluZy15Zi5odG1sCgogICogaWd0QGttc19wc3JAcHNyMl9i
YXNpYzoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1bNTVdIChbZmRvIzEwOTQ0MV0p
IC0+IFtQQVNTXVs1Nl0gKzEgc2ltaWxhciBpc3N1ZQogICBbNTVdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82Nzc0L3NoYXJkLWljbGIxL2lndEBrbXNf
cHNyQHBzcjJfYmFzaWMuaHRtbAogICBbNTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDE1NS9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzckBwc3Iy
X2Jhc2ljLmh0bWwKCiAgKiBpZ3RAa21zX3ZibGFua0BwaXBlLWEtdHMtY29udGludWF0aW9uLXN1
c3BlbmQ6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW0RNRVNHLVdBUk5dWzU3XSAoW2ZkbyMx
MDg1NjZdKSAtPiBbUEFTU11bNThdICsyIHNpbWlsYXIgaXNzdWVzCiAgIFs1N106IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NzQvc2hhcmQtYXBsNy9p
Z3RAa21zX3ZibGFua0BwaXBlLWEtdHMtY29udGludWF0aW9uLXN1c3BlbmQuaHRtbAogICBbNThd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDE1
NS9zaGFyZC1hcGwxL2lndEBrbXNfdmJsYW5rQHBpcGUtYS10cy1jb250aW51YXRpb24tc3VzcGVu
ZC5odG1sCgogICogaWd0QHByaW1lX2J1c3lAd2FpdC1oYW5nLXZlYm94OgogICAgLSBzaGFyZC1h
cGw6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs1OV0gKFtmZG8jMTAzOTI3XSkgLT4gW1BBU1NdWzYw
XSArMiBzaW1pbGFyIGlzc3VlcwogICBbNTldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82Nzc0L3NoYXJkLWFwbDgvaWd0QHByaW1lX2J1c3lAd2FpdC1o
YW5nLXZlYm94Lmh0bWwKICAgWzYwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQxNTUvc2hhcmQtYXBsMy9pZ3RAcHJpbWVfYnVzeUB3YWl0LWhh
bmctdmVib3guaHRtbAoKICAqIGlndEB0b29sc190ZXN0QHRvb2xzX3Rlc3Q6CiAgICAtIHNoYXJk
LXNrbDogICAgICAgICAgW1NLSVBdWzYxXSAoW2ZkbyMxMDkyNzFdKSAtPiBbUEFTU11bNjJdCiAg
IFs2MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3
NzQvc2hhcmQtc2tsNC9pZ3RAdG9vbHNfdGVzdEB0b29sc190ZXN0Lmh0bWwKICAgWzYyXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxNTUvc2hh
cmQtc2tsNy9pZ3RAdG9vbHNfdGVzdEB0b29sc190ZXN0Lmh0bWwKCiAgCiMjIyMgV2FybmluZ3Mg
IyMjIwoKICAqIGlndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MxLW5vbnByaXY6CiAgICAtIHNoYXJk
LWljbGI6ICAgICAgICAgW0ZBSUxdWzYzXSAoW2ZkbyMxMTEzMjldKSAtPiBbU0tJUF1bNjRdIChb
ZmRvIzEwOTI3Nl0pCiAgIFs2M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzY3NzQvc2hhcmQtaWNsYjQvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZjczEt
bm9ucHJpdi5odG1sCiAgIFs2NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE0MTU1L3NoYXJkLWljbGI1L2lndEBnZW1fY3R4X2lzb2xhdGlvbkB2
Y3MxLW5vbnByaXYuaHRtbAoKICAqIGlndEBnZW1fZXhlY19wYXJhbGxlbEBjb250ZXh0czoKICAg
IC0gc2hhcmQtaHN3OiAgICAgICAgICBbVElNRU9VVF1bNjVdIC0+IFtGQUlMXVs2Nl0gKFtmZG8j
MTExNDY5XSkKICAgWzY1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNjc3NC9zaGFyZC1oc3cxL2lndEBnZW1fZXhlY19wYXJhbGxlbEBjb250ZXh0cy5o
dG1sCiAgIFs2Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE0MTU1L3NoYXJkLWhzdzEvaWd0QGdlbV9leGVjX3BhcmFsbGVsQGNvbnRleHRzLmh0
bWwKCiAgKiBpZ3RAZ2VtX21vY3Nfc2V0dGluZ3NAbW9jcy1yYzYtYnNkMjoKICAgIC0gc2hhcmQt
aWNsYjogICAgICAgICBbRkFJTF1bNjddIChbZmRvIzExMTMzMF0pIC0+IFtTS0lQXVs2OF0gKFtm
ZG8jMTA5Mjc2XSkKICAgWzY3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjc3NC9zaGFyZC1pY2xiMS9pZ3RAZ2VtX21vY3Nfc2V0dGluZ3NAbW9jcy1y
YzYtYnNkMi5odG1sCiAgIFs2OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE0MTU1L3NoYXJkLWljbGI3L2lndEBnZW1fbW9jc19zZXR0aW5nc0Bt
b2NzLXJjNi1ic2QyLmh0bWwKCiAgKiBpZ3RAZ2VtX3RpbGVkX3N3YXBwaW5nQG5vbi10aHJlYWRl
ZDoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbU0tJUF1bNjldIChbZmRvIzEwOTI3MV0pIC0+
IFtGQUlMXVs3MF0gKFtmZG8jMTA4Njg2XSkKICAgWzY5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc3NC9zaGFyZC1za2w4L2lndEBnZW1fdGlsZWRf
c3dhcHBpbmdAbm9uLXRocmVhZGVkLmh0bWwKICAgWzcwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxNTUvc2hhcmQtc2tsOS9pZ3RAZ2VtX3Rp
bGVkX3N3YXBwaW5nQG5vbi10aHJlYWRlZC5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90
cmFja2luZ0BmYmMtMXAtcnRlOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlMXVs3MV0g
KFtmZG8jMTA4MDQwXSkgLT4gW0ZBSUxdWzcyXSAoW2ZkbyMxMDMxNjddIC8gW2ZkbyMxMTAzNzhd
KQogICBbNzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82Nzc0L3NoYXJkLXNrbDcvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcnRl
Lmh0bWwKICAgWzcyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTQxNTUvc2hhcmQtc2tsMTAvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bm
YmMtMXAtcnRlLmh0bWwKCiAgCiAge25hbWV9OiBUaGlzIGVsZW1lbnQgaXMgc3VwcHJlc3NlZC4g
VGhpcyBtZWFucyBpdCBpcyBpZ25vcmVkIHdoZW4gY29tcHV0aW5nCiAgICAgICAgICB0aGUgc3Rh
dHVzIG9mIHRoZSBkaWZmZXJlbmNlIChTVUNDRVNTLCBXQVJOSU5HLCBvciBGQUlMVVJFKS4KCiAg
W2ZkbyMxMDMxNjZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDMxNjYKICBbZmRvIzEwMzE2N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTEwMzE2NwogIFtmZG8jMTAzMzc1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMzc1CiAgW2ZkbyMxMDM1NDBdOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDM1NDAKICBbZmRvIzEwMzkyN106
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzkyNwogIFtm
ZG8jMTA0MDk3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTA0MDk3CiAgW2ZkbyMxMDQxMDhdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDQxMDgKICBbZmRvIzEwNTQxMV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNTQxMQogIFtmZG8jMTA1NTQxXTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA1NTQxCiAgW2ZkbyMxMDYxMDddOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDYxMDcKICBbZmRv
IzEwNjg4NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEw
Njg4NQogIFtmZG8jMTA3ODA3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTA3ODA3CiAgW2ZkbyMxMDgwNDBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMDgwNDAKICBbZmRvIzEwODE0NV06IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODE0NQogIFtmZG8jMTA4NTY2XTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4NTY2CiAgW2ZkbyMx
MDg2ODZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg2
ODYKICBbZmRvIzEwOTI3MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTEwOTI3MQogIFtmZG8jMTA5Mjc2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTA5Mjc2CiAgW2ZkbyMxMDk0NDFdOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk0NDEKICBbZmRvIzEwOTY2MV06IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTY2MQogIFtmZG8jMTEw
Mzc4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwMzc4
CiAgW2ZkbyMxMTA0MDNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMTA0MDMKICBbZmRvIzExMDcyOF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTExMDcyOAogIFtmZG8jMTEwODQxXTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwODQxCiAgW2ZkbyMxMTEzMjVdOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEzMjUKICBbZmRvIzExMTMy
OV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTMyOQog
IFtmZG8jMTExMzMwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTExMzMwCiAgW2ZkbyMxMTE0NjldOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMTE0NjkKICBbZmRvIzExMTQ3MyBdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE0NzMgCgoKUGFydGljaXBhdGluZyBob3N0cyAo
OSAtPiA5KQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTm8gY2hhbmdlcyBpbiBw
YXJ0aWNpcGF0aW5nIGhvc3RzCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICogQ0k6
IENJLTIwMTkwNTI5IC0+IE5vbmUKICAqIExpbnV4OiBDSV9EUk1fNjc3NCAtPiBQYXRjaHdvcmtf
MTQxNTUKCiAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5CiAgQ0lfRFJNXzY3NzQ6IDE1YzcxZDBmZjVh
OTlmZDZmYjA4ODAwZmYxNjg5YTUyMTBkY2JiMzcgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9w
Lm9yZy9nZngtY2kvbGludXgKICBJR1RfNTE0ODogNTAzOTBkZDdhZGFjY2FlMjFjYWZhODViODY2
YzE3NjA2Y2VjOTRjMyBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2lu
dGVsLWdwdS10b29scwogIFBhdGNod29ya18xNDE1NTogNGIzMThkNjdlNmYwMDZjMGQyZWI3OTkw
NDkyYzNlZjVmOTQ4MGE3NSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9s
aW51eAogIHBpZ2xpdF80NTA5OiBmZGM1YTRjYTExMTI0YWI4NDEzYzc5ODg4OTZlZWM0Yzk3MzM2
Njk0IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvcGlnbGl0Cgo9PSBMb2dzID09CgpG
b3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTQxNTUvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
