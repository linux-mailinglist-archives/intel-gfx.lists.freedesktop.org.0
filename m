Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CAFD4E1E
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Oct 2019 09:52:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0AC26E45C;
	Sat, 12 Oct 2019 07:52:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E07796E457;
 Sat, 12 Oct 2019 07:52:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D6317A0088;
 Sat, 12 Oct 2019 07:52:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 12 Oct 2019 07:52:14 -0000
Message-ID: <20191012075214.16284.39006@emeril.freedesktop.org>
References: <20191012072308.30312-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191012072308.30312-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/3=5D_drm/i915/perf=3A_allow_f?=
 =?utf-8?q?or_CS_OA_configs_to_be_created_lazily?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
M10gZHJtL2k5MTUvcGVyZjogYWxsb3cgZm9yIENTIE9BIGNvbmZpZ3MgdG8gYmUgY3JlYXRlZCBs
YXppbHkKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY3
OTQwLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3Jp
Z2luL2RybS10aXAKM2ZjNDBhMjk4Zjc3IGRybS9pOTE1L3BlcmY6IGFsbG93IGZvciBDUyBPQSBj
b25maWdzIHRvIGJlIGNyZWF0ZWQgbGF6aWx5CjkwN2Y0Mzc0MmEzZSBkcm0vaTkxNS9wZXJmOiBp
bXBsZW1lbnQgYWN0aXZlIHdhaXQgZm9yIG5vYSBjb25maWd1cmF0aW9ucwotOjQ2OiBDSEVDSzpT
UEFDSU5HOiBzcGFjZXMgcHJlZmVycmVkIGFyb3VuZCB0aGF0ICc8PCcgKGN0eDpWeFYpCiM0Njog
RklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmg6MjI4Ogor
I2RlZmluZSAgIFBJUEVfQ09OVFJPTF9XUklURV9USU1FU1RBTVAJCQkoMzw8MTQpCiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAkJCSAgXgoKLToxODE6IENIRUNLOk9QRU5f
RU5ERURfTElORTogTGluZXMgc2hvdWxkIG5vdCBlbmQgd2l0aCBhICcoJwojMTgxOiBGSUxFOiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYzoxNTY4OgorCQlESVY2NF9VNjRfUk9VTkRf
VVAoCgotOjIxNTogQ0hFQ0s6TVVMVElQTEVfQVNTSUdOTUVOVFM6IG11bHRpcGxlIGFzc2lnbm1l
bnRzIHNob3VsZCBiZSBhdm9pZGVkCiMyMTU6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGVyZi5jOjE2MDI6CisJYmF0Y2ggPSBjcyA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKGJv
LCBJOTE1X01BUF9XQik7CgotOjIyMzogQ0hFQ0s6T1BFTl9FTkRFRF9MSU5FOiBMaW5lcyBzaG91
bGQgbm90IGVuZCB3aXRoIGEgJygnCiMyMjM6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGVyZi5jOjE2MTA6CisJCWNzID0gc2F2ZV9yZXN0b3JlX3JlZ2lzdGVyKAoKLToyMjY6IENI
RUNLOk9QRU5fRU5ERURfTElORTogTGluZXMgc2hvdWxkIG5vdCBlbmQgd2l0aCBhICcoJwojMjI2
OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYzoxNjEzOgorCWNzID0gc2F2
ZV9yZXN0b3JlX3JlZ2lzdGVyKAoKLTozMjg6IENIRUNLOk9QRU5fRU5ERURfTElORTogTGluZXMg
c2hvdWxkIG5vdCBlbmQgd2l0aCBhICcoJwojMzI4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BlcmYuYzoxNzE1OgorCQljcyA9IHNhdmVfcmVzdG9yZV9yZWdpc3RlcigKCi06MzMx
OiBDSEVDSzpPUEVOX0VOREVEX0xJTkU6IExpbmVzIHNob3VsZCBub3QgZW5kIHdpdGggYSAnKCcK
IzMzMTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmM6MTcxODoKKwljcyA9
IHNhdmVfcmVzdG9yZV9yZWdpc3RlcigKCi06NDQ4OiBXQVJOSU5HOkZJTEVfUEFUSF9DSEFOR0VT
OiBhZGRlZCwgbW92ZWQgb3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJTIG5lZWQg
dXBkYXRpbmc/CiM0NDg6IApuZXcgZmlsZSBtb2RlIDEwMDY0NAoKLTo0NTM6IFdBUk5JTkc6U1BE
WF9MSUNFTlNFX1RBRzogTWlzc2luZyBvciBtYWxmb3JtZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXIgdGFnIGluIGxpbmUgMQojNDUzOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVz
dHMvaTkxNV9wZXJmLmM6MToKKy8qCgotOjQ1NDogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBN
aXNwbGFjZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIC0gdXNlIGxpbmUgMSBpbnN0ZWFk
CiM0NTQ6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3BlcmYuYzoy
OgorICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAoKdG90YWw6IDAgZXJyb3JzLCAzIHdh
cm5pbmdzLCA3IGNoZWNrcywgNTkwIGxpbmVzIGNoZWNrZWQKOTEzNjYyM2ViNjI3IGRybS9pOTE1
L3BlcmY6IGV4ZWN1dGUgT0EgY29uZmlndXJhdGlvbiBmcm9tIGNvbW1hbmQgc3RyZWFtCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
