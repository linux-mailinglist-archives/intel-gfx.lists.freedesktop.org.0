Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4CA5FDB0
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 22:07:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA25A6E3E4;
	Thu,  4 Jul 2019 20:07:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8407A6E38D;
 Thu,  4 Jul 2019 20:07:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 79B67A011B;
 Thu,  4 Jul 2019 20:07:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 04 Jul 2019 20:07:56 -0000
Message-ID: <20190704200756.29488.79244@emeril.freedesktop.org>
References: <20190704192615.15855-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190704192615.15855-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Order_assert_forcewake_test?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IE9yZGVyIGFzc2VydCBmb3Jj
ZXdha2UgdGVzdApVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJp
ZXMvNjMyMzgvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0kgQnVnIExvZyAtIGNo
YW5nZXMgZnJvbSBDSV9EUk1fNjQxOCAtPiBQYXRjaHdvcmtfMTM1MzQKPT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoKU3VtbWFyeQotLS0tLS0tCgog
ICoqRkFJTFVSRSoqCgogIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNo
d29ya18xMzUzNCBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUKICB2ZXJpZmllZCBtYW51YWxseS4KICAK
ICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdp
dGggdGhlIGNoYW5nZXMKICBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xMzUzNCwgcGxlYXNlIG5v
dGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFsbG93IHRoZW0KICB0byBkb2N1bWVudCB0aGlzIG5ldyBm
YWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4KCiAg
RXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMzUzNC8KClBvc3NpYmxlIG5ldyBpc3N1ZXMKLS0tLS0tLS0tLS0tLS0tLS0tLQoK
ICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1
Y2VkIGluIFBhdGNod29ya18xMzUzNDoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgUG9zc2li
bGUgcmVncmVzc2lvbnMgIyMjIwoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfY29udGV4dHM6
CiAgICAtIGZpLXNrbC1ndnRkdm06ICAgICAgW1BBU1NdWzFdIC0+IFtJTkNPTVBMRVRFXVsyXQog
ICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY0
MTgvZmktc2tsLWd2dGR2bS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2NvbnRleHRzLmh0bWwKICAg
WzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MzUzNC9maS1za2wtZ3Z0ZHZtL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfY29udGV4dHMuaHRtbAoK
ICAKS25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3Vu
ZCBpbiBQYXRjaHdvcmtfMTM1MzQgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElH
VCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAZ2VtX2N0eF9jcmVh
dGVAYmFzaWMtZmlsZXM6CiAgICAtIGZpLWljbC1ndWM6ICAgICAgICAgW1BBU1NdWzNdIC0+IFtJ
TkNPTVBMRVRFXVs0XSAoW2ZkbyMxMDc3MTNdIC8gW2ZkbyMxMDkxMDBdKQogICBbM106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY0MTgvZmktaWNsLWd1
Yy9pZ3RAZ2VtX2N0eF9jcmVhdGVAYmFzaWMtZmlsZXMuaHRtbAogICBbNF06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNTM0L2ZpLWljbC1ndWMv
aWd0QGdlbV9jdHhfY3JlYXRlQGJhc2ljLWZpbGVzLmh0bWwKCiAgKiBpZ3RAZ2VtX3JlbmRlcl9s
aW5lYXJfYmxpdHNAYmFzaWM6CiAgICAtIGZpLWljbC11MzogICAgICAgICAgW1BBU1NdWzVdIC0+
IFtETUVTRy1XQVJOXVs2XSAoW2ZkbyMxMDc3MjRdKQogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY0MTgvZmktaWNsLXUzL2lndEBnZW1fcmVu
ZGVyX2xpbmVhcl9ibGl0c0BiYXNpYy5odG1sCiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM1MzQvZmktaWNsLXUzL2lndEBnZW1fcmVu
ZGVyX2xpbmVhcl9ibGl0c0BiYXNpYy5odG1sCgogICogaWd0QGttc19jaGFtZWxpdW1AaGRtaS1o
cGQtZmFzdDoKICAgIC0gZmkta2JsLTc1MDB1OiAgICAgICBbUEFTU11bN10gLT4gW0ZBSUxdWzhd
IChbZmRvIzEwOTQ4NV0pCiAgIFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjQxOC9maS1rYmwtNzUwMHUvaWd0QGttc19jaGFtZWxpdW1AaGRtaS1o
cGQtZmFzdC5odG1sCiAgIFs4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTM1MzQvZmkta2JsLTc1MDB1L2lndEBrbXNfY2hhbWVsaXVtQGhkbWkt
aHBkLWZhc3QuaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICogaWd0QGdlbV9l
eGVjX2NyZWF0ZUBiYXNpYzoKICAgIC0gZmktaWNsLXUzOiAgICAgICAgICBbRE1FU0ctV0FSTl1b
OV0gKFtmZG8jMTA3NzI0XSkgLT4gW1BBU1NdWzEwXSArMSBzaW1pbGFyIGlzc3VlCiAgIFs5XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjQxOC9maS1p
Y2wtdTMvaWd0QGdlbV9leGVjX2NyZWF0ZUBiYXNpYy5odG1sCiAgIFsxMF06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNTM0L2ZpLWljbC11My9p
Z3RAZ2VtX2V4ZWNfY3JlYXRlQGJhc2ljLmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZl
X2hhbmdjaGVjazoKICAgIC0gZmkta2JsLTc1MDB1OiAgICAgICBbRE1FU0ctV0FSTl1bMTFdIC0+
IFtQQVNTXVsxMl0KICAgWzExXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjQxOC9maS1rYmwtNzUwMHUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9oYW5n
Y2hlY2suaHRtbAogICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xMzUzNC9maS1rYmwtNzUwMHUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9o
YW5nY2hlY2suaHRtbAoKICAqIGlndEBrbXNfY2hhbWVsaXVtQGhkbWktZWRpZC1yZWFkOgogICAg
LSB7ZmktaWNsLXU0fTogICAgICAgIFtGQUlMXVsxM10gKFtmZG8jMTExMDQ2IF0pIC0+IFtQQVNT
XVsxNF0KICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjQxOC9maS1pY2wtdTQvaWd0QGttc19jaGFtZWxpdW1AaGRtaS1lZGlkLXJlYWQuaHRt
bAogICBbMTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMzUzNC9maS1pY2wtdTQvaWd0QGttc19jaGFtZWxpdW1AaGRtaS1lZGlkLXJlYWQuaHRt
bAoKICAKICB7bmFtZX06IFRoaXMgZWxlbWVudCBpcyBzdXBwcmVzc2VkLiBUaGlzIG1lYW5zIGl0
IGlzIGlnbm9yZWQgd2hlbiBjb21wdXRpbmcKICAgICAgICAgIHRoZSBzdGF0dXMgb2YgdGhlIGRp
ZmZlcmVuY2UgKFNVQ0NFU1MsIFdBUk5JTkcsIG9yIEZBSUxVUkUpLgoKICBbZmRvIzEwMzE2N106
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzE2NwogIFtm
ZG8jMTA3NzEzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTA3NzEzCiAgW2ZkbyMxMDc3MjRdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDc3MjQKICBbZmRvIzEwOTEwMF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTEwMAogIFtmZG8jMTA5NDg1XTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5NDg1CiAgW2ZkbyMxMTEwNDYgXTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMDQ2IAoKClBh
cnRpY2lwYXRpbmcgaG9zdHMgKDUyIC0+IDQ3KQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0KCiAgQWRkaXRpb25hbCAoMyk6IGZpLWJ5dC1qMTkwMCBmaS1hcGwtZ3VjIGZpLXNrbC02NjAw
dSAKICBNaXNzaW5nICAgICg4KTogZmkta2JsLXNvcmFrYSBmaS1pbGstbTU0MCBmaS1oc3ctNDIw
MHUgZmktYnl0LXNxdWF3a3MgZmktYnN3LWN5YW4gZmktaWNsLXkgZmktYnl0LWNsYXBwZXIgZmkt
YmR3LXNhbXVzIAoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoKICAqIExpbnV4OiBDSV9E
Uk1fNjQxOCAtPiBQYXRjaHdvcmtfMTM1MzQKCiAgQ0lfRFJNXzY0MTg6IDg3NDliY2ZhYWQ3ZThk
YWQ0ZjczYzEzNzIyM2Q0MDA1ZDE2YmNlMjMgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9y
Zy9nZngtY2kvbGludXgKICBJR1RfNTA4NDogOWY0NTA2OWY5YjUxMzZkMDdlMDUzZDgwODZlOGRm
NTFlMTQzMzJlYiBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVs
LWdwdS10b29scwogIFBhdGNod29ya18xMzUzNDogNmUyMWFkOGM2MTE4NDIzZTViNjJjYWMxYzgx
NDhiZTIyYjIxY2FlNCBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51
eAoKCj09IEtlcm5lbCAzMmJpdCBidWlsZCA9PQoKV2FybmluZzogS2VybmVsIDMyYml0IGJ1aWxk
dGVzdCBmYWlsZWQ6Cmh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEzNTM0L2J1aWxkXzMyYml0LmxvZwoKICBDQUxMICAgIHNjcmlwdHMvY2hlY2tzeXNj
YWxscy5zaAogIENBTEwgICAgc2NyaXB0cy9hdG9taWMvY2hlY2stYXRvbWljcy5zaAogIENISyAg
ICAgaW5jbHVkZS9nZW5lcmF0ZWQvY29tcGlsZS5oCktlcm5lbDogYXJjaC94ODYvYm9vdC9ieklt
YWdlIGlzIHJlYWR5ICAoIzEpCiAgQnVpbGRpbmcgbW9kdWxlcywgc3RhZ2UgMi4KICBNT0RQT1NU
IDExMiBtb2R1bGVzCkVSUk9SOiAiX191ZGl2ZGkzIiBbZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1LmtvXSB1bmRlZmluZWQhCkVSUk9SOiAiX19kaXZkaTMiIFtkcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHUua29dIHVuZGVmaW5lZCEKc2NyaXB0cy9NYWtlZmlsZS5tb2Rw
b3N0OjkxOiByZWNpcGUgZm9yIHRhcmdldCAnX19tb2Rwb3N0JyBmYWlsZWQKbWFrZVsxXTogKioq
IFtfX21vZHBvc3RdIEVycm9yIDEKTWFrZWZpbGU6MTI4NzogcmVjaXBlIGZvciB0YXJnZXQgJ21v
ZHVsZXMnIGZhaWxlZAptYWtlOiAqKiogW21vZHVsZXNdIEVycm9yIDIKCgo9PSBMaW51eCBjb21t
aXRzID09Cgo2ZTIxYWQ4YzYxMTggZHJtL2k5MTU6IE9yZGVyIGFzc2VydCBmb3JjZXdha2UgdGVz
dAoKPT0gTG9ncyA9PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNTM0LwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
