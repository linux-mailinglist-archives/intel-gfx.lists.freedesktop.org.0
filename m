Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D2C8E7C4
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 11:07:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8DAB6E956;
	Thu, 15 Aug 2019 09:07:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BED556E8F4;
 Thu, 15 Aug 2019 09:07:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B5A24A0109;
 Thu, 15 Aug 2019 09:07:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 15 Aug 2019 09:07:41 -0000
Message-ID: <20190815090741.16993.7044@emeril.freedesktop.org>
References: <20190815075948.9256-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190815075948.9256-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915=3A_Replace_PIN=5FNONFAULT_with_calls_to_PIN=5FNOEVICT_=28r?=
 =?utf-8?q?ev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFJlcGxhY2UgUElOX05PTkZB
VUxUIHdpdGggY2FsbHMgdG8gUElOX05PRVZJQ1QgKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NTIyMi8KU3RhdGUgOiBzdWNjZXNzCgo9PSBT
dW1tYXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV82NzExIC0+IFBhdGNo
d29ya18xNDAyNAo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAgKipTVUNDRVNTKioKCiAgTm8gcmVncmVzc2lvbnMg
Zm91bmQuCgogIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQwMjQvCgpLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhl
cmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xNDAyNCB0aGF0IGNvbWUgZnJv
bSBrbm93biBpc3N1ZXM6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIElzc3VlcyBoaXQgIyMj
IwoKICAqIGlndEBnZW1fYmFzaWNAY3JlYXRlLWNsb3NlOgogICAgLSBmaS1pY2wtdTM6ICAgICAg
ICAgIFtQQVNTXVsxXSAtPiBbRE1FU0ctV0FSTl1bMl0gKFtmZG8jMTA3NzI0XSkgKzEgc2ltaWxh
ciBpc3N1ZQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzY3MTEvZmktaWNsLXUzL2lndEBnZW1fYmFzaWNAY3JlYXRlLWNsb3NlLmh0bWwKICAg
WzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NDAyNC9maS1pY2wtdTMvaWd0QGdlbV9iYXNpY0BjcmVhdGUtY2xvc2UuaHRtbAoKICAqIGlndEBr
bXNfYnVzeUBiYXNpYy1mbGlwLWM6CiAgICAtIGZpLXNrbC02NzcwaHE6ICAgICAgW1BBU1NdWzNd
IC0+IFtTS0lQXVs0XSAoW2ZkbyMxMDkyNzFdIC8gW2ZkbyMxMDkyNzhdKSArMiBzaW1pbGFyIGlz
c3VlcwogICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzY3MTEvZmktc2tsLTY3NzBocS9pZ3RAa21zX2J1c3lAYmFzaWMtZmxpcC1jLmh0bWwKICAg
WzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NDAyNC9maS1za2wtNjc3MGhxL2lndEBrbXNfYnVzeUBiYXNpYy1mbGlwLWMuaHRtbAoKICAqIGln
dEBrbXNfZmxpcEBiYXNpYy1mbGlwLXZzLWRwbXM6CiAgICAtIGZpLXNrbC02NzcwaHE6ICAgICAg
W1BBU1NdWzVdIC0+IFtTS0lQXVs2XSAoW2ZkbyMxMDkyNzFdKSArMjMgc2ltaWxhciBpc3N1ZXMK
ICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
NzExL2ZpLXNrbC02NzcwaHEvaWd0QGttc19mbGlwQGJhc2ljLWZsaXAtdnMtZHBtcy5odG1sCiAg
IFs2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQwMjQvZmktc2tsLTY3NzBocS9pZ3RAa21zX2ZsaXBAYmFzaWMtZmxpcC12cy1kcG1zLmh0bWwK
CiAgCiMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGlndEBrbXNfYnVzeUBiYXNpYy1mbGlw
LWE6CiAgICAtIGZpLWtibC03NTY3dTogICAgICAgW1NLSVBdWzddIChbZmRvIzEwOTI3MV0gLyBb
ZmRvIzEwOTI3OF0pIC0+IFtQQVNTXVs4XSArMiBzaW1pbGFyIGlzc3VlcwogICBbN106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3MTEvZmkta2JsLTc1
Njd1L2lndEBrbXNfYnVzeUBiYXNpYy1mbGlwLWEuaHRtbAogICBbOF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MDI0L2ZpLWtibC03NTY3dS9p
Z3RAa21zX2J1c3lAYmFzaWMtZmxpcC1hLmh0bWwKCiAgKiBpZ3RAa21zX2NoYW1lbGl1bUBkcC1j
cmMtZmFzdDoKICAgIC0gZmktY21sLXUyOiAgICAgICAgICBbRkFJTF1bOV0gKFtmZG8jMTEwMzg3
XSkgLT4gW1BBU1NdWzEwXQogICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzY3MTEvZmktY21sLXUyL2lndEBrbXNfY2hhbWVsaXVtQGRwLWNyYy1m
YXN0Lmh0bWwKICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQwMjQvZmktY21sLXUyL2lndEBrbXNfY2hhbWVsaXVtQGRwLWNyYy1mYXN0
Lmh0bWwKCiAgCiAge25hbWV9OiBUaGlzIGVsZW1lbnQgaXMgc3VwcHJlc3NlZC4gVGhpcyBtZWFu
cyBpdCBpcyBpZ25vcmVkIHdoZW4gY29tcHV0aW5nCiAgICAgICAgICB0aGUgc3RhdHVzIG9mIHRo
ZSBkaWZmZXJlbmNlIChTVUNDRVNTLCBXQVJOSU5HLCBvciBGQUlMVVJFKS4KCiAgW2ZkbyMxMDc3
MTNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MTMK
ICBbZmRvIzEwNzcyNF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTEwNzcyNAogIFtmZG8jMTA5MjcxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTA5MjcxCiAgW2ZkbyMxMDkyNzhdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyNzgKICBbZmRvIzExMDM4N106IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDM4NwoKClBhcnRpY2lwYXRp
bmcgaG9zdHMgKDUzIC0+IDQ2KQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTWlz
c2luZyAgICAoNyk6IGZpLWlsay1tNTQwIGZpLWhzdy00MjAwdSBmaS1ieXQtc3F1YXdrcyBmaS1i
c3ctY3lhbiBmaS1pY2wteSBmaS1ieXQtY2xhcHBlciBmaS1iZHctc2FtdXMgCgoKQnVpbGQgY2hh
bmdlcwotLS0tLS0tLS0tLS0tCgogICogQ0k6IENJLTIwMTkwNTI5IC0+IE5vbmUKICAqIExpbnV4
OiBDSV9EUk1fNjcxMSAtPiBQYXRjaHdvcmtfMTQwMjQKCiAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5
CiAgQ0lfRFJNXzY3MTE6IDY2OTkyMDI2ZTY0ZmU0NDA1Y2EyNWIxZTk3OGE5OGM3ZTEzMjY3M2Ig
QCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBJR1RfNTEzNDog
ODFkZjJmMjIzODViYzI3NTk3NWNmMTk5ZDk2MmVlZDliYzEwZjkxNiBAIGdpdDovL2Fub25naXQu
ZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVsLWdwdS10b29scwogIFBhdGNod29ya18xNDAy
NDogZWM2NTIxMjI3NzBiMWU1ZWJmY2YxYzU1ZGUzMWQ1MDFmMzhhMjU1MiBAIGdpdDovL2Fub25n
aXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAoKCj09IExpbnV4IGNvbW1pdHMgPT0KCmVj
NjUyMTIyNzcwYiBkcm0vaTkxNTogUmVwbGFjZSBQSU5fTk9ORkFVTFQgd2l0aCBjYWxscyB0byBQ
SU5fTk9FVklDVAoKPT0gTG9ncyA9PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MDI0LwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
