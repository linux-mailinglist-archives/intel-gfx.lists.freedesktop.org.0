Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0054521961
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 15:51:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31238897E4;
	Fri, 17 May 2019 13:51:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F016897E4
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 13:51:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 06:51:04 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 17 May 2019 06:51:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 May 2019 16:51:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2019 16:51:01 +0300
Message-Id: <20190517135101.6961-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190218195052.1729-2-ville.syrjala@linux.intel.com>
References: <20190218195052.1729-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel v3 2/2] sna: Support 10bpc
 gamma via the GAMMA_LUT crtc property
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClBy
b2JlIHRoZSBHQU1NQV9MVVQvR0FNTUFfTFVUX1NJWkUgcHJvcHMgYW5kIHV0aWxpemUgdGhlbSB3
aGVuCnRoZSBydW5uaW5nIHdpdGggPiA4YnBjLgoKdjI6IHMvc25hX2NydGNfaWQvX19zbmFfY3J0
Y19pZC8gaW4gREJHIHNpbmNlIHdlIGhhdmUgYSBzbmFfY3J0Ywp2MzogRml4IHRoZSB2ZyAiYmx1
ZXJlZCIgdHlwbyAoTWFyaW8pCiAgICBUaGlzIHRpbWUgSSBldmVuIGJ1aWxkIHRlc3RlZCB3aXRo
IHZnIHN1cHBvcnQKCkNjOiBNYXJpbyBLbGVpbmVyIDxtYXJpby5rbGVpbmVyLmRlQGdtYWlsLmNv
bT4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KUmV2aWV3ZWQtYW5kLXRlc3RlZC1ieTogTWFyaW8gS2xlaW5lciA8bWFyaW8ua2xl
aW5lci5kZUBnbWFpbC5jb20+Ci0tLQogc3JjL3NuYS9zbmFfZGlzcGxheS5jIHwgMjQ3ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIw
OCBpbnNlcnRpb25zKCspLCAzOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvc25hL3Nu
YV9kaXNwbGF5LmMgYi9zcmMvc25hL3NuYV9kaXNwbGF5LmMKaW5kZXggNDFlZGZlYzEyODM5Li5k
NjIxMGNjN2JiYzggMTAwNjQ0Ci0tLSBhL3NyYy9zbmEvc25hX2Rpc3BsYXkuYworKysgYi9zcmMv
c25hL3NuYV9kaXNwbGF5LmMKQEAgLTEyNyw2ICsxMjcsNyBAQCBzdHJ1Y3QgbG9jYWxfbW9kZV9v
YmpfZ2V0X3Byb3BlcnRpZXMgewogCXVpbnQzMl90IG9ial90eXBlOwogCXVpbnQzMl90IHBhZDsK
IH07CisjZGVmaW5lIExPQ0FMX01PREVfT0JKRUNUX0NSVEMgMHhjY2NjY2NjYwogI2RlZmluZSBM
T0NBTF9NT0RFX09CSkVDVF9QTEFORSAweGVlZWVlZWVlCiAKIHN0cnVjdCBsb2NhbF9tb2RlX3Nl
dF9wbGFuZSB7CkBAIC0yMjksNiArMjMwLDExIEBAIHN0cnVjdCBzbmFfY3J0YyB7CiAJfSBwcmlt
YXJ5OwogCXN0cnVjdCBsaXN0IHNwcml0ZXM7CiAKKwlzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqZ2Ft
bWFfbHV0OworCXVpbnQ2NF90IGdhbW1hX2x1dF9wcm9wOworCXVpbnQ2NF90IGdhbW1hX2x1dF9i
bG9iOworCXVpbnQzMl90IGdhbW1hX2x1dF9zaXplOworCiAJdWludDMyX3QgbW9kZV9zZXJpYWws
IGZsaXBfc2VyaWFsOwogCiAJdWludDMyX3QgbGFzdF9zZXEsIHdyYXBfc2VxOwpAQCAtMzE3LDYg
KzMyMyw5IEBAIHN0YXRpYyB2b2lkIF9fc25hX291dHB1dF9kcG1zKHhmODZPdXRwdXRQdHIgb3V0
cHV0LCBpbnQgZHBtcywgaW50IGZpeHVwKTsKIHN0YXRpYyB2b2lkIHNuYV9jcnRjX2Rpc2FibGVf
Y3Vyc29yKHN0cnVjdCBzbmEgKnNuYSwgc3RydWN0IHNuYV9jcnRjICpjcnRjKTsKIHN0YXRpYyBi
b29sIHNuYV9jcnRjX2ZsaXAoc3RydWN0IHNuYSAqc25hLCBzdHJ1Y3Qgc25hX2NydGMgKmNydGMs
CiAJCQkgIHN0cnVjdCBrZ2VtX2JvICpibywgaW50IHgsIGludCB5KTsKK3N0YXRpYyB2b2lkIHNu
YV9jcnRjX2dhbW1hX3NldCh4Zjg2Q3J0Y1B0ciBjcnRjLAorCQkJICAgICAgIENBUkQxNiAqcmVk
LCBDQVJEMTYgKmdyZWVuLAorCQkJICAgICAgIENBUkQxNiAqYmx1ZSwgaW50IHNpemUpOwogCiBz
dGF0aWMgYm9vbCBpc196YXBob2QoU2NybkluZm9QdHIgc2NybikKIHsKQEAgLTMxNTAsMTEgKzMx
NTksOSBAQCBzbmFfY3J0Y19zZXRfbW9kZV9tYWpvcih4Zjg2Q3J0Y1B0ciBjcnRjLCBEaXNwbGF5
TW9kZVB0ciBtb2RlLAogCSAgICAgICBtb2RlLT5WRGlzcGxheSA8PSBzbmEtPm1vZGUubWF4X2Ny
dGNfaGVpZ2h0KTsKIAogI2lmIEhBU19HQU1NQQotCWRybU1vZGVDcnRjU2V0R2FtbWEoc25hLT5r
Z2VtLmZkLCBfX3NuYV9jcnRjX2lkKHNuYV9jcnRjKSwKLQkJCSAgICBjcnRjLT5nYW1tYV9zaXpl
LAotCQkJICAgIGNydGMtPmdhbW1hX3JlZCwKLQkJCSAgICBjcnRjLT5nYW1tYV9ncmVlbiwKLQkJ
CSAgICBjcnRjLT5nYW1tYV9ibHVlKTsKKwlzbmFfY3J0Y19nYW1tYV9zZXQoY3J0YywKKwkJCSAg
IGNydGMtPmdhbW1hX3JlZCwgY3J0Yy0+Z2FtbWFfZ3JlZW4sCisJCQkgICBjcnRjLT5nYW1tYV9i
bHVlLCBjcnRjLT5nYW1tYV9zaXplKTsKICNlbmRpZgogCiAJc2F2ZWRfa21vZGUgPSBzbmFfY3J0
Yy0+a21vZGU7CkBAIC0zMjEyLDEyICszMjE5LDQ0IEBAIHZvaWQgc25hX21vZGVfYWRqdXN0X2Zy
YW1lKHN0cnVjdCBzbmEgKnNuYSwgaW50IHgsIGludCB5KQogCiBzdGF0aWMgdm9pZAogc25hX2Ny
dGNfZ2FtbWFfc2V0KHhmODZDcnRjUHRyIGNydGMsCi0JCSAgICAgICBDQVJEMTYgKnJlZCwgQ0FS
RDE2ICpncmVlbiwgQ0FSRDE2ICpibHVlLCBpbnQgc2l6ZSkKKwkJICAgQ0FSRDE2ICpyZWQsIENB
UkQxNiAqZ3JlZW4sIENBUkQxNiAqYmx1ZSwgaW50IHNpemUpCiB7Ci0JYXNzZXJ0KHRvX3NuYV9j
cnRjKGNydGMpKTsKLQlkcm1Nb2RlQ3J0Y1NldEdhbW1hKHRvX3NuYShjcnRjLT5zY3JuKS0+a2dl
bS5mZCwKLQkJCSAgICBzbmFfY3J0Y19pZChjcnRjKSwKLQkJCSAgICBzaXplLCByZWQsIGdyZWVu
LCBibHVlKTsKKwlzdHJ1Y3Qgc25hICpzbmEgPSB0b19zbmEoY3J0Yy0+c2Nybik7CisJc3RydWN0
IHNuYV9jcnRjICpzbmFfY3J0YyA9IHRvX3NuYV9jcnRjKGNydGMpOworCXN0cnVjdCBkcm1fY29s
b3JfbHV0ICpsdXQgPSBzbmFfY3J0Yy0+Z2FtbWFfbHV0OworCXVpbnQzMl90IGJsb2Jfc2l6ZSA9
IHNpemUgKiBzaXplb2YobHV0WzBdKTsKKwl1aW50MzJfdCBibG9iX2lkOworCWludCByZXQsIGk7
CisKKwlEQkcoKCIlczogZ2FtbWFfc2l6ZSAlZFxuIiwgX19GVU5DVElPTl9fLCBzaXplKSk7CisK
KwlpZiAoIWx1dCkgeworCQlhc3NlcnQoc2l6ZSA9PSAyNTYpOworCisJCWRybU1vZGVDcnRjU2V0
R2FtbWEodG9fc25hKGNydGMtPnNjcm4pLT5rZ2VtLmZkLAorCQkJCSAgICBzbmFfY3J0Y19pZChj
cnRjKSwKKwkJCQkgICAgc2l6ZSwgcmVkLCBncmVlbiwgYmx1ZSk7CisJCXJldHVybjsKKwl9CisK
Kwlhc3NlcnQoc2l6ZSA9PSBzbmFfY3J0Yy0+Z2FtbWFfbHV0X3NpemUpOworCisJZm9yIChpID0g
MDsgaSA8IHNpemU7IGkrKykgeworCQlsdXRbaV0ucmVkID0gcmVkW2ldOworCQlsdXRbaV0uZ3Jl
ZW4gPSBncmVlbltpXTsKKwkJbHV0W2ldLmJsdWUgPSBibHVlW2ldOworCX0KKworCXJldCA9IGRy
bU1vZGVDcmVhdGVQcm9wZXJ0eUJsb2Ioc25hLT5rZ2VtLmZkLCBsdXQsIGJsb2Jfc2l6ZSwgJmJs
b2JfaWQpOworCWlmIChyZXQpCisJCXJldHVybjsKKworCXJldCA9IGRybU1vZGVPYmplY3RTZXRQ
cm9wZXJ0eShzbmEtPmtnZW0uZmQsCisJCQkJICAgICAgIHNuYV9jcnRjLT5pZCwgRFJNX01PREVf
T0JKRUNUX0NSVEMsCisJCQkJICAgICAgIHNuYV9jcnRjLT5nYW1tYV9sdXRfcHJvcCwKKwkJCQkg
ICAgICAgYmxvYl9pZCk7CisKKwlkcm1Nb2RlRGVzdHJveVByb3BlcnR5QmxvYihzbmEtPmtnZW0u
ZmQsIGJsb2JfaWQpOwogfQogCiBzdGF0aWMgdm9pZApAQCAtMzIyOSw2ICszMjY4LDggQEAgc25h
X2NydGNfZGVzdHJveSh4Zjg2Q3J0Y1B0ciBjcnRjKQogCWlmIChzbmFfY3J0YyA9PSBOVUxMKQog
CQlyZXR1cm47CiAKKwlmcmVlKHNuYV9jcnRjLT5nYW1tYV9sdXQpOworCiAJbGlzdF9mb3JfZWFj
aF9lbnRyeV9zYWZlKHNwcml0ZSwgc24sICZzbmFfY3J0Yy0+c3ByaXRlcywgbGluaykKIAkJZnJl
ZShzcHJpdGUpOwogCkBAIC0zNjYzLDYgKzM3MDQsNTUgQEAgYm9vbCBzbmFfaGFzX3Nwcml0ZV9m
b3JtYXQoc3RydWN0IHNuYSAqc25hLCB1aW50MzJfdCBmb3JtYXQpCiAJcmV0dXJuIGZhbHNlOwog
fQogCitpbmxpbmUgc3RhdGljIGJvb2wgcHJvcF9pc19nYW1tYV9sdXQoY29uc3Qgc3RydWN0IGRy
bV9tb2RlX2dldF9wcm9wZXJ0eSAqcHJvcCkKK3sKKwlyZXR1cm4gcHJvcF9oYXNfdHlwZV9hbmRf
bmFtZShwcm9wLCA0LCAiR0FNTUFfTFVUIik7Cit9CisKK2lubGluZSBzdGF0aWMgYm9vbCBwcm9w
X2lzX2dhbW1hX2x1dF9zaXplKGNvbnN0IHN0cnVjdCBkcm1fbW9kZV9nZXRfcHJvcGVydHkgKnBy
b3ApCit7CisJcmV0dXJuIHByb3BfaGFzX3R5cGVfYW5kX25hbWUocHJvcCwgMSwgIkdBTU1BX0xV
VF9TSVpFIik7Cit9CisKK3N0YXRpYyB2b2lkIHNuYV9jcnRjX3BhcnNlX3Byb3Aoc3RydWN0IHNu
YSAqc25hLAorCQkJCXN0cnVjdCBkcm1fbW9kZV9nZXRfcHJvcGVydHkgKnByb3AsCisJCQkJdWlu
dDY0X3QgdmFsdWUsIHZvaWQgKmRhdGEpCit7CisJc3RydWN0IHNuYV9jcnRjICpjcnRjID0gZGF0
YTsKKworCWlmIChwcm9wX2lzX2dhbW1hX2x1dChwcm9wKSkgeworCQljcnRjLT5nYW1tYV9sdXRf
cHJvcCA9IHByb3AtPnByb3BfaWQ7CisJCWNydGMtPmdhbW1hX2x1dF9ibG9iID0gdmFsdWU7CisJ
fSBlbHNlIGlmIChwcm9wX2lzX2dhbW1hX2x1dF9zaXplKHByb3ApKSB7CisJCWNydGMtPmdhbW1h
X2x1dF9zaXplID0gdmFsdWU7CisJfQorfQorCitzdGF0aWMgdm9pZAorc25hX2NydGNfaW5pdF9f
cHJvcHMoc3RydWN0IHNuYSAqc25hLCBzdHJ1Y3Qgc25hX2NydGMgKmNydGMpCit7CisJU2Nybklu
Zm9QdHIgc2NybiA9IHNuYS0+c2NybjsKKworCXBhcnNlX3Byb3BzKHNuYSwgTE9DQUxfTU9ERV9P
QkpFQ1RfQ1JUQywgY3J0Yy0+aWQsCisJCSAgICBzbmFfY3J0Y19wYXJzZV9wcm9wLCBjcnRjKTsK
KworCS8qIHVzZSBoaWdoIHByZWNpc2lvbiBnYW1tYSBMVVQgZm9yID4gOGJwYyAqLworCS8qIFgt
U2VydmVyIDwgMS4yMCBtaXNoYW5kbGVzID4gMjU2IHNsb3RzIC8gPiA4IGJwYyBjb2xvciBtYXBz
LiAqLworCWlmIChzY3JuLT5yZ2JCaXRzIDw9IDggfHwKKwkgICAgWE9SR19WRVJTSU9OX0NVUlJF
TlQgPCBYT1JHX1ZFUlNJT05fTlVNRVJJQygxLDIwLDAsMCwwKSkKKwkJY3J0Yy0+Z2FtbWFfbHV0
X3NpemUgPSAwOworCisJaWYgKGNydGMtPmdhbW1hX2x1dF9zaXplKSB7CisJCWNydGMtPmdhbW1h
X2x1dCA9IGNhbGxvYyhtYXgoY3J0Yy0+Z2FtbWFfbHV0X3NpemUsIDI1NiksCisJCQkJCSBzaXpl
b2YoY3J0Yy0+Z2FtbWFfbHV0WzBdKSk7CisJCWlmICghY3J0Yy0+Z2FtbWFfbHV0KQorCQkJY3J0
Yy0+Z2FtbWFfbHV0X3NpemUgPSAwOworCX0KKworCURCRygoIiVzOiBDUlRDOiVkLCBnYW1tYV9s
dXRfc2l6ZT0lZFxuIiwgX19GVU5DVElPTl9fLAorCSAgICAgX19zbmFfY3J0Y19pZChjcnRjKSwg
Y3J0Yy0+Z2FtbWFfbHV0X3NpemUpKTsKK30KKwogc3RhdGljIHZvaWQKIHNuYV9jcnRjX2luaXRf
X3JvdGF0aW9uKHN0cnVjdCBzbmEgKnNuYSwgc3RydWN0IHNuYV9jcnRjICpjcnRjKQogewpAQCAt
MzcyMyw2ICszODEzLDkgQEAgc25hX2NydGNfYWRkKFNjcm5JbmZvUHRyIHNjcm4sIHVuc2lnbmVk
IGlkKQogCiAJbGlzdF9pbml0KCZzbmFfY3J0Yy0+c3ByaXRlcyk7CiAJc25hX2NydGNfaW5pdF9f
cm90YXRpb24oc25hLCBzbmFfY3J0Yyk7CisKKwlzbmFfY3J0Y19pbml0X19wcm9wcyhzbmEsIHNu
YV9jcnRjKTsKKwogCXNuYV9jcnRjX2ZpbmRfcGxhbmVzKHNuYSwgc25hX2NydGMpOwogCiAJREJH
KCgiJXM6IENSVEM6JWQgW3BpcGU9JWRdLCBwcmltYXJ5IGlkPSV4OiBzdXBwb3J0ZWQtcm90YXRp
b25zPSV4LCBjdXJyZW50LXJvdGF0aW9uPSV4XG4iLApAQCAtNzI3NCwzNiArNzM2NywxMTAgQEAg
c3RhdGljIHZvaWQgb3V0cHV0X3NldF9nYW1tYSh4Zjg2T3V0cHV0UHRyIG91dHB1dCwgeGY4NkNy
dGNQdHIgY3J0YykKIAkJCSAgbW9uLT5tb25fZ2FtbWFfYmx1ZSk7CiB9CiAKK3N0YXRpYyBib29s
CitjcnRjX2dldF9nYW1tYV9sdXQoeGY4NkNydGNQdHIgY3J0YywKKwkJICAgQ0FSRDE2ICpyZWQs
IENBUkQxNiAqZ3JlZW4sIENBUkQxNiAqYmx1ZSwgaW50IHNpemUpCit7CisKKwlzdHJ1Y3Qgc25h
ICpzbmEgPSB0b19zbmEoY3J0Yy0+c2Nybik7CisJc3RydWN0IHNuYV9jcnRjICpzbmFfY3J0YyA9
IHRvX3NuYV9jcnRjKGNydGMpOworCXN0cnVjdCBkcm1fY29sb3JfbHV0ICpsdXQgPSBzbmFfY3J0
Yy0+Z2FtbWFfbHV0OworCXN0cnVjdCBkcm1fbW9kZV9nZXRfYmxvYiBibG9iOworCWludCBsdXRf
c2l6ZSwgaTsKKworCURCRygoIiVzOiBnYW1tYV9zaXplICVkXG4iLCBfX0ZVTkNUSU9OX18sIHNp
emUpKTsKKworCW1lbXNldCgmYmxvYiwgMCwgc2l6ZW9mKGJsb2IpKTsKKwlibG9iLmJsb2JfaWQg
PSBzbmFfY3J0Yy0+Z2FtbWFfbHV0X2Jsb2I7CisKKwlpZiAoZHJtSW9jdGwoc25hLT5rZ2VtLmZk
LCBEUk1fSU9DVExfTU9ERV9HRVRQUk9QQkxPQiwgJmJsb2IpKQorCQlyZXR1cm4gZmFsc2U7CisK
KwlsdXRfc2l6ZSA9IGJsb2IubGVuZ3RoIC8gc2l6ZW9mKGx1dFswXSk7CisKKwlpZiAobHV0X3Np
emUgPT0gMCB8fAorCSAgICBsdXRfc2l6ZSA+IG1heChzbmFfY3J0Yy0+Z2FtbWFfbHV0X3NpemUs
IDI1NikpCisJCXJldHVybiBmYWxzZTsKKworCWJsb2IuZGF0YSA9ICh1aW50cHRyX3QpbHV0Owor
CisJaWYgKGRybUlvY3RsKHNuYS0+a2dlbS5mZCwgRFJNX0lPQ1RMX01PREVfR0VUUFJPUEJMT0Is
ICZibG9iKSkKKwkJcmV0dXJuIGZhbHNlOworCisJZm9yIChpID0gMDsgaSA8IHNpemU7IGkrKykg
eworCQlzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqZW50cnkgPQorCQkJJmx1dFtpICogKGx1dF9zaXpl
IC0gMSkgLyAoc2l6ZSAtIDEpXTsKKworCQlyZWRbaV0gPSBlbnRyeS0+cmVkOworCQlncmVlbltp
XSA9IGVudHJ5LT5ncmVlbjsKKwkJYmx1ZVtpXSA9IGVudHJ5LT5ibHVlOworCX0KKworCXJldHVy
biByZWRbc2l6ZSAtIDFdICYmCisJCWdyZWVuW3NpemUgLSAxXSAmJgorCQlibHVlW3NpemUgLSAx
XTsKK30KKworc3RhdGljIGJvb2wgY3J0Y19nZXRfZ2FtbWFfbGVnYWN5KHhmODZDcnRjUHRyIGNy
dGMsCisJCQkJICBDQVJEMTYgKnJlZCwKKwkJCQkgIENBUkQxNiAqZ3JlZW4sCisJCQkJICBDQVJE
MTYgKmJsdWUsCisJCQkJICBpbnQgc2l6ZSkKK3sKKwlzdHJ1Y3Qgc25hICpzbmEgPSB0b19zbmEo
Y3J0Yy0+c2Nybik7CisJc3RydWN0IHNuYV9jcnRjICpzbmFfY3J0YyA9IHRvX3NuYV9jcnRjKGNy
dGMpOworCXN0cnVjdCBkcm1fbW9kZV9jcnRjX2x1dCBsdXQgPSB7CisJCS5jcnRjX2lkID0gX19z
bmFfY3J0Y19pZChzbmFfY3J0YyksCisJCS5nYW1tYV9zaXplID0gc2l6ZSwKKwkJLnJlZCA9ICh1
aW50cHRyX3QpcmVkLAorCQkuZ3JlZW4gPSAodWludHB0cl90KWdyZWVuLAorCQkuYmx1ZSA9ICh1
aW50cHRyX3QpYmx1ZSwKKwl9OworCisJaWYgKGRybUlvY3RsKHNuYS0+a2dlbS5mZCwgRFJNX0lP
Q1RMX01PREVfR0VUR0FNTUEsICZsdXQpICE9IDApCisJCXJldHVybiBmYWxzZTsKKworCVZHKFZB
TEdSSU5EX01BS0VfTUVNX0RFRklORUQocmVkLCBzaXplKnNpemVvZihyZWRbMF0pKSk7CisJVkco
VkFMR1JJTkRfTUFLRV9NRU1fREVGSU5FRChncmVlbiwgc2l6ZSpzaXplb2YoZ3JlZW5bMF0pKSk7
CisJVkcoVkFMR1JJTkRfTUFLRV9NRU1fREVGSU5FRChibHVlLCBzaXplKnNpemVvZihibHVlWzBd
KSkpOworCisJcmV0dXJuIHJlZFtzaXplIC0gMV0gJiYKKwkJZ3JlZW5bc2l6ZSAtIDFdICYmCisJ
CWJsdWVbc2l6ZSAtIDFdOworfQorCiBzdGF0aWMgdm9pZCBjcnRjX2luaXRfZ2FtbWEoeGY4NkNy
dGNQdHIgY3J0YykKIHsKKwlzdHJ1Y3Qgc25hICpzbmEgPSB0b19zbmEoY3J0Yy0+c2Nybik7CisJ
c3RydWN0IHNuYV9jcnRjICpzbmFfY3J0YyA9IHRvX3NuYV9jcnRjKGNydGMpOwogCXVpbnQxNl90
ICpnYW1tYTsKKwlpbnQgc2l6ZTsKKworCWFzc2VydChzbmFfY3J0Yyk7CisKKwlzaXplID0gc25h
X2NydGMtPmdhbW1hX2x1dF9zaXplOworCWlmICghc2l6ZSkKKwkJc2l6ZSA9IDI1NjsKIAogCS8q
IEluaXRpYWxpemUgdGhlIGdhbW1hIHJhbXBzICovCiAJZ2FtbWEgPSBOVUxMOwotCWlmIChjcnRj
LT5nYW1tYV9zaXplID09IDI1NikKKwlpZiAoY3J0Yy0+Z2FtbWFfc2l6ZSA9PSBzaXplKQogCQln
YW1tYSA9IGNydGMtPmdhbW1hX3JlZDsKIAlpZiAoZ2FtbWEgPT0gTlVMTCkKLQkJZ2FtbWEgPSBt
YWxsb2MoMyAqIDI1NiAqIHNpemVvZih1aW50MTZfdCkpOworCQlnYW1tYSA9IG1hbGxvYygzICog
c2l6ZSAqIHNpemVvZih1aW50MTZfdCkpOwogCWlmIChnYW1tYSkgewotCQlzdHJ1Y3Qgc25hICpz
bmEgPSB0b19zbmEoY3J0Yy0+c2Nybik7Ci0JCXN0cnVjdCBzbmFfY3J0YyAqc25hX2NydGMgPSB0
b19zbmFfY3J0YyhjcnRjKTsKIAkJc3RydWN0IGRybV9tb2RlX2NydGNfbHV0IGx1dDsKLQkJYm9v
bCBnYW1tYV9zZXQgPSBmYWxzZTsKLQotCQlhc3NlcnQoc25hX2NydGMpOwotCi0JCWx1dC5jcnRj
X2lkID0gX19zbmFfY3J0Y19pZChzbmFfY3J0Yyk7Ci0JCWx1dC5nYW1tYV9zaXplID0gMjU2Owot
CQlsdXQucmVkID0gKHVpbnRwdHJfdCkoZ2FtbWEpOwotCQlsdXQuZ3JlZW4gPSAodWludHB0cl90
KShnYW1tYSArIDI1Nik7Ci0JCWx1dC5ibHVlID0gKHVpbnRwdHJfdCkoZ2FtbWEgKyAyICogMjU2
KTsKLQkJaWYgKGRybUlvY3RsKHNuYS0+a2dlbS5mZCwgRFJNX0lPQ1RMX01PREVfR0VUR0FNTUEs
ICZsdXQpID09IDApIHsKLQkJCVZHKFZBTEdSSU5EX01BS0VfTUVNX0RFRklORUQoZ2FtbWEsIDMq
MjU2KnNpemVvZihnYW1tYVswXSkpKTsKLQkJCWdhbW1hX3NldCA9Ci0JCQkJZ2FtbWFbMjU2IC0g
MV0gJiYKLQkJCQlnYW1tYVsyKjI1NiAtIDFdICYmCi0JCQkJZ2FtbWFbMyoyNTYgLSAxXTsKLQkJ
fQorCQlib29sIGdhbW1hX3NldDsKKwkJdWludDE2X3QgKnJlZCA9IGdhbW1hOworCQl1aW50MTZf
dCAqZ3JlZW4gPSBnYW1tYSArIHNpemU7CisJCXVpbnQxNl90ICpibHVlID0gZ2FtbWEgKyAyICog
c2l6ZTsKKworCQlpZiAoc25hX2NydGMtPmdhbW1hX2x1dF9zaXplKQorCQkJZ2FtbWFfc2V0ID0g
Y3J0Y19nZXRfZ2FtbWFfbHV0KGNydGMsIHJlZCwKKwkJCQkJCSAgICAgICBncmVlbiwgYmx1ZSwg
c2l6ZSk7CisJCWVsc2UKKwkJCWdhbW1hX3NldCA9IGNydGNfZ2V0X2dhbW1hX2xlZ2FjeShjcnRj
LCByZWQsCisJCQkJCQkJICBncmVlbiwgYmx1ZSwgc2l6ZSk7CiAKIAkJREJHKCgiJXM6IENSVEM6
JWQsIHBpcGU9JWQ6IGdhbW1hIHNldD89JWRcbiIsCiAJCSAgICAgX19GVU5DVElPTl9fLCBfX3Nu
YV9jcnRjX2lkKHNuYV9jcnRjKSwgX19zbmFfY3J0Y19waXBlKHNuYV9jcnRjKSwKQEAgLTczMTEs
MTkgKzc0NzgsMjEgQEAgc3RhdGljIHZvaWQgY3J0Y19pbml0X2dhbW1hKHhmODZDcnRjUHRyIGNy
dGMpCiAJCWlmICghZ2FtbWFfc2V0KSB7CiAJCQlpbnQgaTsKIAotCQkJZm9yIChpID0gMDsgaSA8
IDI1NjsgaSsrKSB7Ci0JCQkJZ2FtbWFbaV0gPSBpIDw8IDg7Ci0JCQkJZ2FtbWFbMjU2ICsgaV0g
PSBpIDw8IDg7Ci0JCQkJZ2FtbWFbMioyNTYgKyBpXSA9IGkgPDwgODsKKwkJCWZvciAoaSA9IDA7
IGkgPCBzaXplOyBpKyspIHsKKwkJCQl1aW50MTZfdCB2YWwgPSBpICogMHhmZmZmIC8gKHNpemUg
LSAxKTsKKworCQkJCXJlZFtpXSA9IHZhbDsKKwkJCQlncmVlbltpXSA9IHZhbDsKKwkJCQlibHVl
W2ldID0gdmFsOwogCQkJfQogCQl9CiAKLQkJaWYgKGdhbW1hICE9IGNydGMtPmdhbW1hX3JlZCkg
eworCQlpZiAocmVkICE9IGNydGMtPmdhbW1hX3JlZCkgewogCQkJZnJlZShjcnRjLT5nYW1tYV9y
ZWQpOwotCQkJY3J0Yy0+Z2FtbWFfcmVkID0gZ2FtbWE7Ci0JCQljcnRjLT5nYW1tYV9ncmVlbiA9
IGdhbW1hICsgMjU2OwotCQkJY3J0Yy0+Z2FtbWFfYmx1ZSA9IGdhbW1hICsgMioyNTY7Ci0JCQlj
cnRjLT5nYW1tYV9zaXplID0gMjU2OworCQkJY3J0Yy0+Z2FtbWFfcmVkID0gcmVkOworCQkJY3J0
Yy0+Z2FtbWFfZ3JlZW4gPSBncmVlbjsKKwkJCWNydGMtPmdhbW1hX2JsdWUgPSBibHVlOworCQkJ
Y3J0Yy0+Z2FtbWFfc2l6ZSA9IHNpemU7CiAJCX0KIAl9CiB9Ci0tIAoyLjIxLjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
