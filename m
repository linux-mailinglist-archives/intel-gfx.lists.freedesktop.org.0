Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4B763B64
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 20:49:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E576B89815;
	Tue,  9 Jul 2019 18:49:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1581E894E0;
 Tue,  9 Jul 2019 18:49:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0CE19A008C;
 Tue,  9 Jul 2019 18:49:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 09 Jul 2019 18:49:38 -0000
Message-ID: <20190709184938.4425.2927@emeril.freedesktop.org>
References: <20190709183934.445-1-matthew.d.roper@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190709183934.445-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_EHL_port_programming_=28rev7=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogRUhMIHBvcnQgcHJvZ3JhbW1pbmcgKHJldjcp
ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MjQ5Mi8K
U3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9k
cm0tdGlwCjBjZDc3NmQzZjE2OSBkcm0vaTkxNS9nZW4xMTogU3RhcnQgZGlzdGluZ3Vpc2hpbmcg
J3BoeScgZnJvbSAncG9ydCcKOTdjZWVkNjViZjJiIGRybS9pOTE1L2dlbjExOiBQcm9ncmFtIElD
TF9EUENMS0FfQ0ZHQ1IwIGFjY29yZGluZyB0byBQSFkKLToyNjU6IENIRUNLOk1BQ1JPX0FSR19S
RVVTRTogTWFjcm8gYXJndW1lbnQgcmV1c2UgJ3RjX3BvcnQnIC0gcG9zc2libGUgc2lkZS1lZmZl
Y3RzPwojMjY1OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oOjk3MDk6Cisj
ZGVmaW5lICBJQ0xfRFBDTEtBX0NGR0NSMF9UQ19DTEtfT0ZGKHRjX3BvcnQpICgxIDw8ICgodGNf
cG9ydCkgPT0gUE9SVF9UQzQgPyBcCisJCQkJCQkgICAgICAyMSA6ICh0Y19wb3J0KSArIDEyKSkK
Ci06MjY4OiBXQVJOSU5HOkxPTkdfTElORTogbGluZSBvdmVyIDEwMCBjaGFyYWN0ZXJzCiMyNjg6
IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmg6OTcxMjoKKyNkZWZpbmUgIElD
TF9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMX01BU0socGh5KQkoMyA8PCBJQ0xfRFBDTEtBX0NG
R0NSMF9ERElfQ0xLX1NFTF9TSElGVChwaHkpKQoKLToyNjk6IFdBUk5JTkc6TE9OR19MSU5FOiBs
aW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzI2OTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaDo5NzEzOgorI2RlZmluZSAgSUNMX0RQQ0xLQV9DRkdDUjBfRERJX0NMS19TRUwo
cGxsLCBwaHkpCSgocGxsKSA8PCBJQ0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTF9TSElGVChw
aHkpKQoKdG90YWw6IDAgZXJyb3JzLCAyIHdhcm5pbmdzLCAxIGNoZWNrcywgMjEyIGxpbmVzIGNo
ZWNrZWQKMjU1MDkwNWU1NmNjIGRybS9pOTE1L2dlbjExOiBDb252ZXJ0IGNvbWJvIFBIWSBsb2dp
YyB0byB1c2UgbmV3ICdlbnVtIHBoeScgbmFtZXNwYWNlCi06MzUyOiBDSEVDSzpNQUNST19BUkdf
UkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdfX3BoeScgLSBwb3NzaWJsZSBzaWRlLWVmZmVj
dHM/CiMzNTI6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9f
cGh5LmM6OToKKyNkZWZpbmUgZm9yX2VhY2hfY29tYm9fcGh5KF9fZGV2X3ByaXYsIF9fcGh5KSBc
CisJZm9yICgoX19waHkpID0gUEhZX0E7IChfX3BoeSkgPCBJOTE1X01BWF9QSFlTOyAoX19waHkp
KyspCVwKKwkJZm9yX2VhY2hfaWYoaW50ZWxfcGh5X2lzX2NvbWJvKF9fZGV2X3ByaXYsIF9fcGh5
KSkKCi06MzU5OiBDSEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdf
X3BoeScgLSBwb3NzaWJsZSBzaWRlLWVmZmVjdHM/CiMzNTk6IEZJTEU6IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5LmM6MTM6CisjZGVmaW5lIGZvcl9lYWNoX2Nv
bWJvX3BoeV9yZXZlcnNlKF9fZGV2X3ByaXYsIF9fcGh5KSBcCisJZm9yICgoX19waHkpID0gSTkx
NV9NQVhfUEhZUzsgKF9fcGh5KS0tID4gUEhZX0E7KSBcCisJCWZvcl9lYWNoX2lmKGludGVsX3Bo
eV9pc19jb21ibyhfX2Rldl9wcml2LCBfX3BoeSkpCgotOjgzNTogQ0hFQ0s6TUFDUk9fQVJHX1JF
VVNFOiBNYWNybyBhcmd1bWVudCByZXVzZSAnX19waHknIC0gcG9zc2libGUgc2lkZS1lZmZlY3Rz
PwojODM1OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
aDoyNzE6CisjZGVmaW5lIGZvcl9lYWNoX3BoeV9tYXNrZWQoX19waHksIF9fcGh5c19tYXNrKSBc
CisJZm9yICgoX19waHkpID0gUEhZX0E7IChfX3BoeSkgPCBJOTE1X01BWF9QSFlTOyAoX19waHkp
KyspCVwKKwkJZm9yX2VhY2hfaWYoKF9fcGh5c19tYXNrKSAmIEJJVChfX3BoeSkpCgotOjEwMTU6
IEVSUk9SOkNPTVBMRVhfTUFDUk86IE1hY3JvcyB3aXRoIGNvbXBsZXggdmFsdWVzIHNob3VsZCBi
ZSBlbmNsb3NlZCBpbiBwYXJlbnRoZXNlcwojMTAxNTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaDoxODgwOgorI2RlZmluZSBDTkxfUE9SVF9QQ1NfRFcxX0xOMChwaHkpCV9N
TUlPKF9QSUNLKHBoeSwgXAogCQkJCQkJICAgIF9DTkxfUE9SVF9QQ1NfRFcxX0xOMF9BRSwgXAog
CQkJCQkJICAgIF9DTkxfUE9SVF9QQ1NfRFcxX0xOMF9CLCBcCiAJCQkJCQkgICAgX0NOTF9QT1JU
X1BDU19EVzFfTE4wX0MsIFwKCnRvdGFsOiAxIGVycm9ycywgMCB3YXJuaW5ncywgMyBjaGVja3Ms
IDEwMDEgbGluZXMgY2hlY2tlZAoyZDE5M2ZkOTdkODMgZHJtL2k5MTU6IFRyYW5zaXRpb24gcG9y
dCB0eXBlIGNoZWNrcyB0byBwaHkgY2hlY2tzCmExODhmOGY2NjhlMCBkcm0vaTkxNS9laGw6IEVu
YWJsZSBEREktRAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
