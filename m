Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE588F7C0
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 01:52:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B6906E157;
	Thu, 15 Aug 2019 23:52:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8FE7A6E157;
 Thu, 15 Aug 2019 23:52:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 880A7A0087;
 Thu, 15 Aug 2019 23:52:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 15 Aug 2019 23:52:20 -0000
Message-ID: <20190815235220.31006.57627@emeril.freedesktop.org>
References: <20190815215859.10970-1-matthew.d.roper@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190815215859.10970-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/gen11=3A_Add_Wa=5F1604278689=3Aicl=2Cehl?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ2VuMTE6IEFkZCBXYV8xNjA0
Mjc4Njg5OmljbCxlaGwKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcv
c2VyaWVzLzY1Mjc2LwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkNJIEJ1ZyBMb2cg
LSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzY3MTQgLT4gUGF0Y2h3b3JrXzE0MDQwCj09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KClN1bW1hcnkKLS0tLS0t
LQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQ
YXRjaHdvcmtfMTQwNDAgYWJzb2x1dGVseSBuZWVkIHRvIGJlCiAgdmVyaWZpZWQgbWFudWFsbHku
CiAgCiAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBk
byB3aXRoIHRoZSBjaGFuZ2VzCiAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQwNDAsIHBsZWFz
ZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtCiAgdG8gZG9jdW1lbnQgdGhpcyBu
ZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0ku
CgogIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQwNDAvCgpQb3NzaWJsZSBuZXcgaXNzdWVzCi0tLS0tLS0tLS0tLS0tLS0t
LS0KCiAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50
cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQwNDA6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIFBv
c3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdj
aGVjazoKICAgIC0gZmktaWNsLXUzOiAgICAgICAgICBbUEFTU11bMV0gLT4gW0RNRVNHLUZBSUxd
WzJdCiAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNjcxNC9maS1pY2wtdTMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9oYW5nY2hlY2suaHRtbAog
ICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE0MDQwL2ZpLWljbC11My9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVjay5odG1sCgog
IAojIyMjIFN1cHByZXNzZWQgIyMjIwoKICBUaGUgZm9sbG93aW5nIHJlc3VsdHMgY29tZSBmcm9t
IHVudHJ1c3RlZCBtYWNoaW5lcywgdGVzdHMsIG9yIHN0YXR1c2VzLgogIFRoZXkgZG8gbm90IGFm
ZmVjdCB0aGUgb3ZlcmFsbCByZXN1bHQuCgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9oYW5n
Y2hlY2s6CiAgICAtIHtmaS1pY2wtZHNpfTogICAgICAgW1BBU1NdWzNdIC0+IFtETUVTRy1GQUlM
XVs0XQogICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzY3MTQvZmktaWNsLWRzaS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVjay5odG1s
CiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTQwNDAvZmktaWNsLWRzaS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVjay5odG1s
CiAgICAtIHtmaS1pY2wtdTR9OiAgICAgICAgW1BBU1NdWzVdIC0+IFtETUVTRy1GQUlMXVs2XQog
ICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3
MTQvZmktaWNsLXU0L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2NoZWNrLmh0bWwKICAgWzZd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDA0
MC9maS1pY2wtdTQvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9oYW5nY2hlY2suaHRtbAoKICAKS25v
d24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQ
YXRjaHdvcmtfMTQwNDAgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFu
Z2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAZ2VtX2N0eF9jcmVhdGVAYmFz
aWMtZmlsZXM6CiAgICAtIGZpLWljbC11MjogICAgICAgICAgW1BBU1NdWzddIC0+IFtJTkNPTVBM
RVRFXVs4XSAoW2ZkbyMxMDc3MTNdIC8gW2ZkbyMxMDkxMDBdKQogICBbN106IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3MTQvZmktaWNsLXUyL2lndEBn
ZW1fY3R4X2NyZWF0ZUBiYXNpYy1maWxlcy5odG1sCiAgIFs4XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQwNDAvZmktaWNsLXUyL2lndEBnZW1f
Y3R4X2NyZWF0ZUBiYXNpYy1maWxlcy5odG1sCgogICogaWd0QGttc19waXBlX2NyY19iYXNpY0Bz
dXNwZW5kLXJlYWQtY3JjLXBpcGUtYToKICAgIC0gZmktYXBsLWd1YzogICAgICAgICBbUEFTU11b
OV0gLT4gW0RNRVNHLVdBUk5dWzEwXSAoW2ZkbyMxMDg1NjZdKQogICBbOV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3MTQvZmktYXBsLWd1Yy9pZ3RA
a21zX3BpcGVfY3JjX2Jhc2ljQHN1c3BlbmQtcmVhZC1jcmMtcGlwZS1hLmh0bWwKICAgWzEwXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQwNDAv
ZmktYXBsLWd1Yy9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQHN1c3BlbmQtcmVhZC1jcmMtcGlwZS1h
Lmh0bWwKCiAgKiBpZ3RAcHJpbWVfdmdlbUBiYXNpYy1mZW5jZS1tbWFwOgogICAgLSBmaS1pY2wt
dTM6ICAgICAgICAgIFtQQVNTXVsxMV0gLT4gW0RNRVNHLVdBUk5dWzEyXSAoW2ZkbyMxMDc3MjRd
KQogICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82NzE0L2ZpLWljbC11My9pZ3RAcHJpbWVfdmdlbUBiYXNpYy1mZW5jZS1tbWFwLmh0bWwKICAg
WzEyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQwNDAvZmktaWNsLXUzL2lndEBwcmltZV92Z2VtQGJhc2ljLWZlbmNlLW1tYXAuaHRtbAoKICAK
IyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICogaWd0QGdlbV9tbWFwX2d0dEBiYXNpYy1zbWFs
bC1iby10aWxlZHg6CiAgICAtIGZpLWljbC11MzogICAgICAgICAgW0RNRVNHLVdBUk5dWzEzXSAo
W2ZkbyMxMDc3MjRdKSAtPiBbUEFTU11bMTRdICsxIHNpbWlsYXIgaXNzdWUKICAgWzEzXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjcxNC9maS1pY2wt
dTMvaWd0QGdlbV9tbWFwX2d0dEBiYXNpYy1zbWFsbC1iby10aWxlZHguaHRtbAogICBbMTRdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDA0MC9m
aS1pY2wtdTMvaWd0QGdlbV9tbWFwX2d0dEBiYXNpYy1zbWFsbC1iby10aWxlZHguaHRtbAoKICAq
IGlndEBrbXNfcGlwZV9jcmNfYmFzaWNAc3VzcGVuZC1yZWFkLWNyYy1waXBlLWE6CiAgICAtIGZp
LWJsYi1lNjg1MDogICAgICAgW0lOQ09NUExFVEVdWzE1XSAoW2ZkbyMxMDc3MThdKSAtPiBbUEFT
U11bMTZdCiAgIFsxNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzY3MTQvZmktYmxiLWU2ODUwL2lndEBrbXNfcGlwZV9jcmNfYmFzaWNAc3VzcGVuZC1y
ZWFkLWNyYy1waXBlLWEuaHRtbAogICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDA0MC9maS1ibGItZTY4NTAvaWd0QGttc19waXBlX2Ny
Y19iYXNpY0BzdXNwZW5kLXJlYWQtY3JjLXBpcGUtYS5odG1sCgogIAogIHtuYW1lfTogVGhpcyBl
bGVtZW50IGlzIHN1cHByZXNzZWQuIFRoaXMgbWVhbnMgaXQgaXMgaWdub3JlZCB3aGVuIGNvbXB1
dGluZwogICAgICAgICAgdGhlIHN0YXR1cyBvZiB0aGUgZGlmZmVyZW5jZSAoU1VDQ0VTUywgV0FS
TklORywgb3IgRkFJTFVSRSkuCgogIFtmZG8jMTA3NzEzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzEzCiAgW2ZkbyMxMDc3MThdOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MTgKICBbZmRvIzEwNzcyNF06
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzcyNAogIFtm
ZG8jMTA4NTY2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTA4NTY2CiAgW2ZkbyMxMDkxMDBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDkxMDAKCgpQYXJ0aWNpcGF0aW5nIGhvc3RzICg1MiAtPiA0NCkKLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgogIE1pc3NpbmcgICAgKDgpOiBmaS1rYmwtc29yYWth
IGZpLWJ4dC1kc2kgZmktYnl0LXNxdWF3a3MgZmktYnN3LWN5YW4gZmktaWNsLXkgZmktaWNsLWd1
YyBmaS1ieXQtY2xhcHBlciBmaS1iZHctc2FtdXMgCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0t
LS0tCgogICogQ0k6IENJLTIwMTkwNTI5IC0+IE5vbmUKICAqIExpbnV4OiBDSV9EUk1fNjcxNCAt
PiBQYXRjaHdvcmtfMTQwNDAKCiAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5CiAgQ0lfRFJNXzY3MTQ6
IDkxOTg5NzRmOWZhMzA5YzRjNzQxOTczNjU4NDQ5NzFlMDk0MGIyMjcgQCBnaXQ6Ly9hbm9uZ2l0
LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBJR1RfNTEzODogYjlhYmUwYmY2YzQ3OGM0
ZjZjYWM1NmJmZjI4NmQ2OTI2YWQ4YzBhYiBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3Jn
L3hvcmcvYXBwL2ludGVsLWdwdS10b29scwogIFBhdGNod29ya18xNDA0MDogZjJlYWZjNDk2NTlk
ODZmZTMzMzQ4ZmI3MTNlZjNhZThjNTFjZjE3YyBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Au
b3JnL2dmeC1jaS9saW51eAoKCj09IExpbnV4IGNvbW1pdHMgPT0KCmYyZWFmYzQ5NjU5ZCBkcm0v
aTkxNS9nZW4xMTogQWRkIFdhXzE2MDQyNzg2ODk6aWNsLGVobAoKPT0gTG9ncyA9PQoKRm9yIG1v
cmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE0MDQwLwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
