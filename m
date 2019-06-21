Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8986F4DF19
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 04:27:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D4486E7F1;
	Fri, 21 Jun 2019 02:27:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4F4BA6E7EF;
 Fri, 21 Jun 2019 02:27:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 44811A00EA;
 Fri, 21 Jun 2019 02:27:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 21 Jun 2019 02:27:38 -0000
Message-ID: <20190621022738.12826.98823@emeril.freedesktop.org>
References: <20190621020132.1164-1-matthew.d.roper@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190621020132.1164-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_EHL_port_programming?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogRUhMIHBvcnQgcHJvZ3JhbW1pbmcKVVJMICAg
OiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYyNDkyLwpTdGF0ZSA6
IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAK
ZTg4MjZmMzJhODc2IGRybS9pOTE1L2ljbDogRHJvcCBwb3J0IHBhcmFtZXRlciB0byBpY2xfZ2V0
X2NvbWJvX2J1Zl90cmFucygpCi06MTA6IFdBUk5JTkc6Q09NTUlUX0xPR19MT05HX0xJTkU6IFBv
c3NpYmxlIHVud3JhcHBlZCBjb21taXQgZGVzY3JpcHRpb24gKHByZWZlciBhIG1heGltdW0gNzUg
Y2hhcnMgcGVyIGxpbmUpCiMxMDogClJlZmVyZW5jZXM6IDk2NTljMWFmNDUxYSAoImRybS9pOTE1
L2ljbDogY29tYm8gcG9ydCB2c3dpbmcgcHJvZ3JhbW1pbmcgY2hhbmdlcyBwZXIgQlNQRUMiKQoK
LToxMDogRVJST1I6R0lUX0NPTU1JVF9JRDogUGxlYXNlIHVzZSBnaXQgY29tbWl0IGRlc2NyaXB0
aW9uIHN0eWxlICdjb21taXQgPDEyKyBjaGFycyBvZiBzaGExPiAoIjx0aXRsZSBsaW5lPiIpJyAt
IGllOiAnY29tbWl0IDk2NTljMWFmNDUxYSAoImRybS9pOTE1L2ljbDogY29tYm8gcG9ydCB2c3dp
bmcgcHJvZ3JhbW1pbmcgY2hhbmdlcyBwZXIgQlNQRUMiKScKIzEwOiAKUmVmZXJlbmNlczogOTY1
OWMxYWY0NTFhICgiZHJtL2k5MTUvaWNsOiBjb21ibyBwb3J0IHZzd2luZyBwcm9ncmFtbWluZyBj
aGFuZ2VzIHBlciBCU1BFQyIpCgp0b3RhbDogMSBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tz
LCAzNiBsaW5lcyBjaGVja2VkCjUxOGM4NDU3YTI2YiBkcm0vaTkxNS9laGw6IEFkZCB0aGlyZCBj
b21ibyBQSFkgb2Zmc2V0CjFiOTg5ZGRmZTExOSBkcm0vaTkxNS9laGw6IERvbid0IHByb2dyYW0g
UEhZX01JU0Mgb24gRUhMIFBIWSBDCjEwODY1ZDY2MjE3ZCBkcm0vaTkxNS9nZW4xMTogU3RhcnQg
ZGlzdGluZ3Vpc2hpbmcgJ3BoeScgZnJvbSAncG9ydCcKLToxNDg6IENIRUNLOk1BQ1JPX0FSR19S
RVVTRTogTWFjcm8gYXJndW1lbnQgcmV1c2UgJ19fcGh5JyAtIHBvc3NpYmxlIHNpZGUtZWZmZWN0
cz8KIzE0ODogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb21ib19w
aHkuYzo5OgorI2RlZmluZSBmb3JfZWFjaF9jb21ib19waHkoX19kZXZfcHJpdiwgX19waHkpIFwK
Kwlmb3IgKChfX3BoeSkgPSBQSFlfQTsgKF9fcGh5KSA8IEk5MTVfTUFYX1BIWVM7IChfX3BoeSkr
KykJXAorCQlmb3JfZWFjaF9pZihpbnRlbF9waHlfaXNfY29tYm8oX19kZXZfcHJpdiwgX19waHkp
KQoKLToxNTU6IENIRUNLOk1BQ1JPX0FSR19SRVVTRTogTWFjcm8gYXJndW1lbnQgcmV1c2UgJ19f
cGh5JyAtIHBvc3NpYmxlIHNpZGUtZWZmZWN0cz8KIzE1NTogRklMRTogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jb21ib19waHkuYzoxMzoKKyNkZWZpbmUgZm9yX2VhY2hfY29t
Ym9fcGh5X3JldmVyc2UoX19kZXZfcHJpdiwgX19waHkpIFwKKwlmb3IgKChfX3BoeSkgPSBJOTE1
X01BWF9QSFlTOyAoX19waHkpLS0gPiBQSFlfQTspIFwKKwkJZm9yX2VhY2hfaWYoaW50ZWxfcGh5
X2lzX2NvbWJvKF9fZGV2X3ByaXYsIF9fcGh5KSkKCi06ODgxOiBDSEVDSzpNQUNST19BUkdfUkVV
U0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdwaHknIC0gcG9zc2libGUgc2lkZS1lZmZlY3RzPwoj
ODgxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oOjk2ODQ6CisjZGVmaW5l
ICBEUENMS0FfQ0ZHQ1IwX0RESV9DTEtfT0ZGKHBoeSkJCSgxIDw8ICgocGh5KSA9PSBQSFlfRiA/
IDIzIDogXAorCQkJCQkJICAgICAgKHBoeSkgKyAxMCkpCgotOjg5MDogQ0hFQ0s6TUFDUk9fQVJH
X1JFVVNFOiBNYWNybyBhcmd1bWVudCByZXVzZSAncGh5JyAtIHBvc3NpYmxlIHNpZGUtZWZmZWN0
cz8KIzg5MDogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaDo5Njg5OgorI2Rl
ZmluZSAgRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTF9TSElGVChwaHkpCSgocGh5KSA9PSBQSFlf
RiA/IDIxIDogXAorCQkJCQkJKHBoeSkgKiAyKQoKdG90YWw6IDAgZXJyb3JzLCAwIHdhcm5pbmdz
LCA0IGNoZWNrcywgNzY5IGxpbmVzIGNoZWNrZWQKOGQ5ZThlNmE4Y2ViIGRybS9pOTE1L2VobDog
RW5hYmxlIERESS1ECgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
