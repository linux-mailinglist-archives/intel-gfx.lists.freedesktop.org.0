Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83944100750
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 15:25:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 829426E0F3;
	Mon, 18 Nov 2019 14:25:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DE1FA6E0D3;
 Mon, 18 Nov 2019 14:25:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D27E8A0137;
 Mon, 18 Nov 2019 14:25:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Wang" <jasowang@redhat.com>
Date: Mon, 18 Nov 2019 14:25:15 -0000
Message-ID: <157408711583.2241.815232015535480302@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191118105923.7991-1-jasowang@redhat.com>
In-Reply-To: <20191118105923.7991-1-jasowang@redhat.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_mdev?=
 =?utf-8?q?_based_hardware_virtio_offloading_support?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogbWRldiBiYXNlZCBoYXJkd2FyZSB2aXJ0aW8g
b2ZmbG9hZGluZyBzdXBwb3J0ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy82OTYyMS8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDSSBCdWcg
TG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV83MzYxIC0+IFBhdGNod29ya18xNTMxMwo9PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpTdW1tYXJ5Ci0t
LS0tLS0KCiAgKipGQUlMVVJFKioKCiAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdp
dGggUGF0Y2h3b3JrXzE1MzEzIGFic29sdXRlbHkgbmVlZCB0byBiZQogIHZlcmlmaWVkIG1hbnVh
bGx5LgogIAogIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcg
dG8gZG8gd2l0aCB0aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE1MzEzLCBw
bGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhlbQogIHRvIGRvY3VtZW50IHRo
aXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGlu
IENJLgoKICBFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE1MzEzL2luZGV4Lmh0bWwKClBvc3NpYmxlIG5ldyBpc3N1ZXMKLS0t
LS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5
IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNTMxMzoKCiMjIyBJR1QgY2hhbmdl
cyAjIyMKCiMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIwoKICAqIGlndEBpOTE1X21vZHVs
ZV9sb2FkQHJlbG9hZDoKICAgIC0gZmktYXBsLWd1YzogICAgICAgICBbUEFTU11bMV0gLT4gW0RN
RVNHLVdBUk5dWzJdCiAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNzM2MS9maS1hcGwtZ3VjL2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC5o
dG1sCiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTUzMTMvZmktYXBsLWd1Yy9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQuaHRtbAoK
ICAKS25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3Vu
ZCBpbiBQYXRjaHdvcmtfMTUzMTMgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElH
VCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAaTkxNV9wbV9ycG1A
bW9kdWxlLXJlbG9hZDoKICAgIC0gZmktc2tsLTY3NzBocTogICAgICBbUEFTU11bM10gLT4gW0RN
RVNHLVdBUk5dWzRdIChbZmRvIzExMjI2MV0pCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM2MS9maS1za2wtNjc3MGhxL2lndEBpOTE1X3Bt
X3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwKICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTMxMy9maS1za2wtNjc3MGhxL2lndEBpOTE1X3Bt
X3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwKICAgIC0gZmktc2tsLWxtZW06ICAgICAgICBbUEFTU11b
NV0gLT4gW0RNRVNHLVdBUk5dWzZdIChbZmRvIzExMjI2MV0pCiAgIFs1XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM2MS9maS1za2wtbG1lbS9pZ3RA
aTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sCiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzMTMvZmktc2tsLWxtZW0vaWd0QGk5
MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJh
Y2tpbmdAYmFzaWM6CiAgICAtIGZpLWljbC1ndWM6ICAgICAgICAgW1BBU1NdWzddIC0+IFtGQUlM
XVs4XSAoW2ZkbyMxMDMxNjddKQogICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzczNjEvZmktaWNsLWd1Yy9pZ3RAa21zX2Zyb250YnVmZmVyX3Ry
YWNraW5nQGJhc2ljLmh0bWwKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNTMxMy9maS1pY2wtZ3VjL2lndEBrbXNfZnJvbnRidWZmZXJf
dHJhY2tpbmdAYmFzaWMuaHRtbAogICAgLSBmaS1oc3ctcGVwcHk6ICAgICAgIFtQQVNTXVs5XSAt
PiBbRE1FU0ctV0FSTl1bMTBdIChbZmRvIzEwMjYxNF0pCiAgIFs5XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM2MS9maS1oc3ctcGVwcHkvaWd0QGtt
c19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYy5odG1sCiAgIFsxMF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzEzL2ZpLWhzdy1wZXBweS9p
Z3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2ljLmh0bWwKCiAgCiMjIyMgUG9zc2libGUg
Zml4ZXMgIyMjIwoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfYmx0OgogICAgLSBmaS1oc3ct
NDc3MHI6ICAgICAgIFtETUVTRy1GQUlMXVsxMV0gLT4gW1BBU1NdWzEyXQogICBbMTFdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzYxL2ZpLWhzdy00
Nzcwci9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2JsdC5odG1sCiAgIFsxMl06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzEzL2ZpLWhzdy00Nzcw
ci9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2JsdC5odG1sCiAgICAtIGZpLWhzdy1wZXBweTogICAg
ICAgW0RNRVNHLUZBSUxdWzEzXSAoW2ZkbyMxMTIxNDddKSAtPiBbUEFTU11bMTRdCiAgIFsxM106
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczNjEvZmkt
aHN3LXBlcHB5L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfYmx0Lmh0bWwKICAgWzE0XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzMTMvZmktaHN3
LXBlcHB5L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfYmx0Lmh0bWwKCiAgCiAge25hbWV9OiBUaGlz
IGVsZW1lbnQgaXMgc3VwcHJlc3NlZC4gVGhpcyBtZWFucyBpdCBpcyBpZ25vcmVkIHdoZW4gY29t
cHV0aW5nCiAgICAgICAgICB0aGUgc3RhdHVzIG9mIHRoZSBkaWZmZXJlbmNlIChTVUNDRVNTLCBX
QVJOSU5HLCBvciBGQUlMVVJFKS4KCiAgW2ZkbyMxMDI2MTRdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDI2MTQKICBbZmRvIzEwMzE2N106IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzE2NwogIFtmZG8jMTA5OTY0
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5OTY0CiAg
W2ZkbyMxMTIxNDddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMTIxNDcKICBbZmRvIzExMjI2MF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTExMjI2MAogIFtmZG8jMTEyMjYxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMjYxCiAgW2ZkbyMxMTIyOThdOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTIyOTgKCgpQYXJ0aWNpcGF0aW5n
IGhvc3RzICg1MCAtPiA0NCkKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgogIEFkZGl0
aW9uYWwgKDEpOiBmaS1pY2wteSAKICBNaXNzaW5nICAgICg3KTogZmktdGdsLXUgZmktaHN3LTQy
MDB1IGZpLWJ5dC1zcXVhd2tzIGZpLWJzdy1jeWFuIGZpLWN0Zy1wODYwMCBmaS1ieXQtY2xhcHBl
ciBmaS1iZHctc2FtdXMgCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICogQ0k6IENJ
LTIwMTkwNTI5IC0+IE5vbmUKICAqIExpbnV4OiBDSV9EUk1fNzM2MSAtPiBQYXRjaHdvcmtfMTUz
MTMKCiAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5CiAgQ0lfRFJNXzczNjE6IDlkZmY5ZmRkZmVmYmQ5
YzE4NWI4NGIzMGUyNGE3ODY4N2RjZTYyYzggQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9y
Zy9nZngtY2kvbGludXgKICBJR1RfNTI5MjogZWE5Y2Q0N2ZkYjcyYzE2ZDVlYzg0YzA0YTg1MTIy
YzQ1MWMzMDAyNSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVs
LWdwdS10b29scwogIFBhdGNod29ya18xNTMxMzogOGEzNzI0NWE2MjYwZTQ5Y2QwMWQ4ZDJlMzQ2
YTJjYWY4ZjdjMjQ2MiBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51
eAoKCj09IExpbnV4IGNvbW1pdHMgPT0KCjhhMzcyNDVhNjI2MCBkb2NzOiBzYW1wbGUgZHJpdmVy
IHRvIGRlbW9uc3RyYXRlIGhvdyB0byBpbXBsZW1lbnQgdmlydGlvLW1kZXYgZnJhbWV3b3JrCmJi
YjJmMGVhYzQyOCB2aXJ0aW86IGludHJvZHVjZSBhIG1kZXYgYmFzZWQgdHJhbnNwb3J0CmZlM2Y5
MzU5MDVkMSBtZGV2OiBpbnRyb2R1Y2UgbWVkaWF0ZWQgdmlydGlvIGJ1cwo4NTQ0ZmNkODE2YmMg
bWRldjogbW92ZSB0byBkcml2ZXJzLwpmNjlkOGQ5OTAyZmQgbWRldjogc3BsaXQgb3V0IFZGSU8g
YnVzIHNwZWNpZmljIHBhcmVudCBvcHMKNjdmM2VhM2NkYTcwIG1kZXY6IG1ha2UgbWRldiBidXMg
YWdub3N0aWMKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTMxMy9pbmRleC5odG1sCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
