Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8E4B44F1
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 02:47:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F9216EABE;
	Tue, 17 Sep 2019 00:47:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 260C66EABE;
 Tue, 17 Sep 2019 00:47:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 20DAFA3ECB;
 Tue, 17 Sep 2019 00:47:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Tue, 17 Sep 2019 00:47:24 -0000
Message-ID: <20190917004724.579.43749@emeril.freedesktop.org>
References: <20190916234506.24955-1-manasi.d.navare@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190916234506.24955-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Handle_connector_tile_support_only_for_modes_that_match_til?=
 =?utf-8?q?e_size?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtOiBIYW5kbGUgY29ubmVjdG9yIHRpbGUg
c3VwcG9ydCBvbmx5IGZvciBtb2RlcyB0aGF0IG1hdGNoIHRpbGUgc2l6ZQpVUkwgICA6IGh0dHBz
Oi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjY3ODQvClN0YXRlIDogc3VjY2Vz
cwoKPT0gU3VtbWFyeSA9PQoKQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNjkwNSAt
PiBQYXRjaHdvcmtfMTQ0MjQKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PQoKU3VtbWFyeQotLS0tLS0tCgogICoqU1VDQ0VTUyoqCgogIE5vIHJlZ3Jl
c3Npb25zIGZvdW5kLgoKICBFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDI0LwoKS25vd24gaXNzdWVzCi0tLS0tLS0tLS0t
LQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTQ0MjQgdGhhdCBj
b21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMg
aGl0ICMjIyMKCiAgKiBpZ3RAZ2VtX2N0eF9jcmVhdGVAYmFzaWMtZmlsZXM6CiAgICAtIGZpLWlj
bC11MjogICAgICAgICAgW1BBU1NdWzFdIC0+IFtJTkNPTVBMRVRFXVsyXSAoW2ZkbyMxMDc3MTNd
IC8gW2ZkbyMxMDkxMDBdKQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzY5MDUvZmktaWNsLXUyL2lndEBnZW1fY3R4X2NyZWF0ZUBiYXNpYy1m
aWxlcy5odG1sCiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQ0MjQvZmktaWNsLXUyL2lndEBnZW1fY3R4X2NyZWF0ZUBiYXNpYy1maWxl
cy5odG1sCgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHM6CiAgICAtIGZpLXNr
bC1ndnRkdm06ICAgICAgW1BBU1NdWzNdIC0+IFtETUVTRy1GQUlMXVs0XSAoW2ZkbyMxMTExMDhd
KQogICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzY5MDUvZmktc2tsLWd2dGR2bS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5odG1s
CiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTQ0MjQvZmktc2tsLWd2dGR2bS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5o
dG1sCgogICogaWd0QGttc19hZGRmYl9iYXNpY0BiYWQtcGl0Y2gtMjU2OgogICAgLSBmaS1pY2wt
dTM6ICAgICAgICAgIFtQQVNTXVs1XSAtPiBbRE1FU0ctV0FSTl1bNl0gKFtmZG8jMTA3NzI0XSkg
KzIgc2ltaWxhciBpc3N1ZXMKICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82OTA1L2ZpLWljbC11My9pZ3RAa21zX2FkZGZiX2Jhc2ljQGJhZC1w
aXRjaC0yNTYuaHRtbAogICBbNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE0NDI0L2ZpLWljbC11My9pZ3RAa21zX2FkZGZiX2Jhc2ljQGJhZC1w
aXRjaC0yNTYuaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICogaWd0QGdlbV9l
eGVjX3N1c3BlbmRAYmFzaWMtczM6CiAgICAtIGZpLWJsYi1lNjg1MDogICAgICAgW0lOQ09NUExF
VEVdWzddIChbZmRvIzEwNzcxOF0pIC0+IFtQQVNTXVs4XQogICBbN106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5MDUvZmktYmxiLWU2ODUwL2lndEBn
ZW1fZXhlY19zdXNwZW5kQGJhc2ljLXMzLmh0bWwKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQyNC9maS1ibGItZTY4NTAvaWd0QGdl
bV9leGVjX3N1c3BlbmRAYmFzaWMtczMuaHRtbAoKICAqIGlndEBpOTE1X21vZHVsZV9sb2FkQHJl
bG9hZDoKICAgIC0gZmktaWNsLXUzOiAgICAgICAgICBbRE1FU0ctV0FSTl1bOV0gKFtmZG8jMTA3
NzI0XSAvIFtmZG8jMTExMjE0XSkgLT4gW1BBU1NdWzEwXQogICBbOV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5MDUvZmktaWNsLXUzL2lndEBpOTE1
X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sCiAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDI0L2ZpLWljbC11My9pZ3RAaTkxNV9tb2R1
bGVfbG9hZEByZWxvYWQuaHRtbAoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfcmVzZXQ6CiAg
ICAtIHtmaS1pY2wtZHNpfTogICAgICAgW0lOQ09NUExFVEVdWzExXSAoW2ZkbyMxMDc3MTNdKSAt
PiBbUEFTU11bMTJdCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzY5MDUvZmktaWNsLWRzaS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3Jlc2V0
Lmh0bWwKICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTQ0MjQvZmktaWNsLWRzaS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3Jlc2V0Lmh0
bWwKCiAgKiBpZ3RAcHJpbWVfdmdlbUBiYXNpYy1mZW5jZS1mbGlwOgogICAgLSBmaS1pbGstNjUw
OiAgICAgICAgIFtETUVTRy1XQVJOXVsxM10gKFtmZG8jMTA2Mzg3XSkgLT4gW1BBU1NdWzE0XSAr
MSBzaW1pbGFyIGlzc3VlCiAgIFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzY5MDUvZmktaWxrLTY1MC9pZ3RAcHJpbWVfdmdlbUBiYXNpYy1mZW5j
ZS1mbGlwLmh0bWwKICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTQ0MjQvZmktaWxrLTY1MC9pZ3RAcHJpbWVfdmdlbUBiYXNpYy1mZW5j
ZS1mbGlwLmh0bWwKCiAgCiMjIyMgV2FybmluZ3MgIyMjIwoKICAqIGlndEBrbXNfY2hhbWVsaXVt
QGhkbWktaHBkLWZhc3Q6CiAgICAtIGZpLWtibC03NTAwdTogICAgICAgW0ZBSUxdWzE1XSAoW2Zk
byMxMTE0MDddKSAtPiBbRkFJTF1bMTZdIChbZmRvIzExMTA5Nl0pCiAgIFsxNV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5MDUvZmkta2JsLTc1MDB1
L2lndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3QuaHRtbAogICBbMTZdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQyNC9maS1rYmwtNzUw
MHUvaWd0QGttc19jaGFtZWxpdW1AaGRtaS1ocGQtZmFzdC5odG1sCgogIAogIHtuYW1lfTogVGhp
cyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRoaXMgbWVhbnMgaXQgaXMgaWdub3JlZCB3aGVuIGNv
bXB1dGluZwogICAgICAgICAgdGhlIHN0YXR1cyBvZiB0aGUgZGlmZmVyZW5jZSAoU1VDQ0VTUywg
V0FSTklORywgb3IgRkFJTFVSRSkuCgogIFtmZG8jMTA2Mzg3XTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA2Mzg3CiAgW2ZkbyMxMDc3MTNdOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MTMKICBbZmRvIzEwNzcx
OF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzcxOAog
IFtmZG8jMTA3NzI0XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTA3NzI0CiAgW2ZkbyMxMDkxMDBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMDkxMDAKICBbZmRvIzExMTA5Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTA5NgogIFtmZG8jMTExMTA4XTogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMTA4CiAgW2ZkbyMxMTEyMTRd
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEyMTQKICBb
ZmRvIzExMTQwN106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTExMTQwNwoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDU1IC0+IDQ3KQotLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KCiAgQWRkaXRpb25hbCAoMSk6IGZpLWFwbC1ndWMgCiAgTWlzc2luZyAg
ICAoOSk6IGZpLWljbC11NCBmaS1pbGstbTU0MCBmaS1oc3ctNDIwMHUgZmktYnl0LXNxdWF3a3Mg
ZmktYnN3LWN5YW4gZmktaWNsLXkgZmktaWNsLWd1YyBmaS1ieXQtY2xhcHBlciBmaS1iZHctc2Ft
dXMgCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICogQ0k6IENJLTIwMTkwNTI5IC0+
IE5vbmUKICAqIExpbnV4OiBDSV9EUk1fNjkwNSAtPiBQYXRjaHdvcmtfMTQ0MjQKCiAgQ0ktMjAx
OTA1Mjk6IDIwMTkwNTI5CiAgQ0lfRFJNXzY5MDU6IGJkNmM1NmY1MGQxNWIyMmUyMzQ4NDg4NzY5
NTgwZThhNmEzNzhmNmIgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGlu
dXgKICBJR1RfNTE4NjogMDAwOGIzZTFiMmNmN2E3M2IxZTk5NTAzMWM5YTczZmM5N2IzNWFhZCBA
IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVsLWdwdS10b29scwog
IFBhdGNod29ya18xNDQyNDogMzIyOGY0MWJkZTlkNGUyM2YzODUxMWM1MzE4N2YxNzA5MDJhYmZl
MSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAoKCj09IExpbnV4
IGNvbW1pdHMgPT0KCjMyMjhmNDFiZGU5ZCBkcm06IEhhbmRsZSBjb25uZWN0b3IgdGlsZSBzdXBw
b3J0IG9ubHkgZm9yIG1vZGVzIHRoYXQgbWF0Y2ggdGlsZSBzaXplCgo9PSBMb2dzID09CgpGb3Ig
bW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQ0MjQvaW5kZXguaHRtbApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
