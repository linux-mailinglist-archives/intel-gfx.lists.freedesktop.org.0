Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99925A6E7F
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 18:27:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 025328982F;
	Tue,  3 Sep 2019 16:27:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2AA98982A;
 Tue,  3 Sep 2019 16:27:05 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D3239238F7;
 Tue,  3 Sep 2019 16:27:04 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue,  3 Sep 2019 12:23:32 -0400
Message-Id: <20190903162519.7136-60-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190903162519.7136-1-sashal@kernel.org>
References: <20190903162519.7136-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1567528025;
 bh=OTeV1PH1q33oTfMjdIdSquIrpsJVMLDSZS9mmKvS6Ho=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=q7A73irdSDHav87areC1wR7ntG/mQrLttj3YIK7NmWp3h0HFRMhmA00olk5XUre+f
 v8JWFt6wFdcZzagHvVaIWUhAhkhafeyiRMkDvnumqDQGWOzxsVgWenVx4apedC9ANm
 e/cZFeJtugiPfaNHvnAjiZ9ozWVz1MzF1syxgDVU=
Subject: [Intel-gfx] [PATCH AUTOSEL 4.19 060/167] drm/i915/ilk: Fix warning
 when reading emon_status with no output
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
Cc: Sasha Levin <sashal@kernel.org>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpbIFVw
c3RyZWFtIGNvbW1pdCBjYWI4NzBiN2ZkZjNjNGJlNzQ3ZDg4ZGU1MjQ4YjI4ZGI3ZDQwNTVlIF0K
CldoZW4gdGhlcmUgaXMgbm8gb3V0cHV0IG5vIG9uZSB3aWxsIGhvbGQgYSBydW50aW1lX3BtIHJl
ZmVyZW5jZQpjYXVzaW5nIGEgd2FybmluZyB3aGVuIHRyeWluZyB0byByZWFkIGVtb21fc3RhdHVz
IGluIGRlYnVnZnMuCgpbMjIuNzU2NDgwXSAtLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0t
LS0tLS0KWzIyLjc1NjQ4OV0gUlBNIHdha2Vsb2NrIHJlZiBub3QgaGVsZCBkdXJpbmcgSFcgYWNj
ZXNzClsyMi43NTY1NzhdIFdBUk5JTkc6IENQVTogMCBQSUQ6IDEwNTggYXQgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZHJ2Lmg6MjEwNCBnZW41X3JlYWQzMisweDE2Yi8weDFhMCBbaTkxNV0K
WzIyLjc1NjU4MF0gTW9kdWxlcyBsaW5rZWQgaW46IHNuZF9oZGFfY29kZWNfaGRtaSBzbmRfaGRh
X2NvZGVjX3JlYWx0ZWsgc25kX2hkYV9jb2RlY19nZW5lcmljIGk5MTUgY29yZXRlbXAgY3JjdDEw
ZGlmX3BjbG11bCBjcmMzMl9wY2xtdWwgZ2hhc2hfY2xtdWxuaV9pbnRlbCBzbmRfaGRhX2ludGVs
IHNuZF9oZGFfY29kZWMgc25kX2h3ZGVwIHNuZF9oZGFfY29yZSBlMTAwMGUgc25kX3BjbSBtZWlf
bWUgcHJpbWVfbnVtYmVycyBtZWkgbHBjX2ljaApbMjIuNzU2NTk1XSBDUFU6IDAgUElEOiAxMDU4
IENvbW06IGRlYnVnZnNfdGVzdCBOb3QgdGFpbnRlZCA0LjIwLjAtcmMxLUNJLVRyeWJvdF8zMjE5
KyAjMQpbMjIuNzU2NTk3XSBIYXJkd2FyZSBuYW1lOiBIZXdsZXR0LVBhY2thcmQgSFAgQ29tcGFx
IDgxMDAgRWxpdGUgU0ZGIFBDLzMwNEFoLCBCSU9TIDc4NkgxIHYwMS4xMyAwNy8xNC8yMDExClsy
Mi43NTY2MzRdIFJJUDogMDAxMDpnZW41X3JlYWQzMisweDE2Yi8weDFhMCBbaTkxNV0KWzIyLjc1
NjYzN10gQ29kZTogYTQgZWEgZTAgMGYgMGIgZTkgZDIgZmUgZmYgZmYgODAgM2QgYTUgNzEgMTkg
MDAgMDAgMGYgODUgZDMgZmUgZmYgZmYgNDggYzcgYzcgNDggZDAgMmQgYTAgYzYgMDUgOTEgNzEg
MTkgMDAgMDEgZTggMzUgYTQgZWEgZTAgPDBmPiAwYiBlOSBiOSBmZSBmZiBmZiBlOCA2OSBjNiBm
MiBlMCA4NSBjMCA3NSA5MiA0OCBjNyBjMiA3OCBkMCAyZApbMjIuNzU2NjM5XSBSU1A6IDAwMTg6
ZmZmZmM5MDAwMGYxZmQzOCBFRkxBR1M6IDAwMDEwMjgyClsyMi43NTY2NDJdIFJBWDogMDAwMDAw
MDAwMDAwMDAwMCBSQlg6IGZmZmY4ODAxZjdhYjAwMDAgUkNYOiAwMDAwMDAwMDAwMDAwMDA2Clsy
Mi43NTY2NDNdIFJEWDogMDAwMDAwMDAwMDAwMDAwNiBSU0k6IGZmZmZmZmZmODIxMjg4NmEgUkRJ
OiBmZmZmZmZmZjgyMGQ2ZDU3ClsyMi43NTY2NDVdIFJCUDogMDAwMDAwMDAwMDAxMTAyMCBSMDg6
IDAwMDAwMDAwNDNlM2QxYTggUjA5OiAwMDAwMDAwMDAwMDAwMDAwClsyMi43NTY2NDddIFIxMDog
ZmZmZmM5MDAwMGYxZmQ4MCBSMTE6IDAwMDAwMDAwMDAwMDAwMDAgUjEyOiAwMDAwMDAwMDAwMDAw
MDAxClsyMi43NTY2NDldIFIxMzogZmZmZjg4MDFmN2FiMDA2OCBSMTQ6IDAwMDAwMDAwMDAwMDAw
MDEgUjE1OiBmZmZmODgwMjBkNTNkMTg4ClsyMi43NTY2NTFdIEZTOiAgMDAwMDdmMjg3ODg0OTk4
MCgwMDAwKSBHUzpmZmZmODgwMjEzYTAwMDAwKDAwMDApIGtubEdTOjAwMDAwMDAwMDAwMDAwMDAK
WzIyLjc1NjY1M10gQ1M6ICAwMDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAwMDA4MDA1
MDAzMwpbMjIuNzU2NjU1XSBDUjI6IDAwMDA1NjM4ZGVlZGYwMjggQ1IzOiAwMDAwMDAwMjAzMjky
MDAxIENSNDogMDAwMDAwMDAwMDAyMDZmMApbMjIuNzU2NjU3XSBDYWxsIFRyYWNlOgpbMjIuNzU2
Njg5XSAgaTkxNV9tY2hfdmFsKzB4MWIvMHg2MCBbaTkxNV0KWzIyLjc1NjcyMV0gIGk5MTVfZW1v
bl9zdGF0dXMrMHg0NS8weGQwIFtpOTE1XQpbMjIuNzU2NzMwXSAgc2VxX3JlYWQrMHhkYi8weDNj
MApbMjIuNzU2NzM2XSAgPyBsb2NrZGVwX2hhcmRpcnFzX29mZisweDk0LzB4ZDAKWzIyLjc1Njc0
MF0gID8gX19zbGFiX2ZyZWUrMHgyNGUvMHg1MTAKWzIyLjc1Njc0Nl0gIGZ1bGxfcHJveHlfcmVh
ZCsweDUyLzB4OTAKWzIyLjc1Njc1Ml0gIF9fdmZzX3JlYWQrMHgzMS8weDE3MApbMjIuNzU2NzU5
XSAgPyBkb19zeXNfb3BlbisweDEzYi8weDI0MApbMjIuNzU2NzYzXSAgPyByY3VfcmVhZF9sb2Nr
X3NjaGVkX2hlbGQrMHg2Zi8weDgwClsyMi43NTY3NjZdICB2ZnNfcmVhZCsweDllLzB4MTQwClsy
Mi43NTY3NzBdICBrc3lzX3JlYWQrMHg1MC8weGMwClsyMi43NTY3NzVdICBkb19zeXNjYWxsXzY0
KzB4NTUvMHgxOTAKWzIyLjc1Njc4MV0gIGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSsw
eDQ5LzB4YmUKWzIyLjc1Njc4M10gUklQOiAwMDMzOjB4N2YyODc4MWRjMzRlClsyMi43NTY3ODZd
IENvZGU6IDAwIDAwIDAwIDAwIDQ4IDhiIDE1IDcxIDhjIDIwIDAwIGY3IGQ4IDY0IDg5IDAyIDQ4
IGM3IGMwIGZmIGZmIGZmIGZmIGMzIDBmIDFmIDQwIDAwIDhiIDA1IGJhIGQwIDIwIDAwIDg1IGMw
IDc1IDE2IDMxIGMwIDBmIDA1IDw0OD4gM2QgMDAgZjAgZmYgZmYgNzcgNWEgZjMgYzMgMGYgMWYg
ODQgMDAgMDAgMDAgMDAgMDAgNDEgNTQgNTUgNDkKWzIyLjc1Njc4N10gUlNQOiAwMDJiOjAwMDA3
ZmZkMzNmYTBkMDggRUZMQUdTOiAwMDAwMDI0NiBPUklHX1JBWDogMDAwMDAwMDAwMDAwMDAwMApb
MjIuNzU2NzkwXSBSQVg6IGZmZmZmZmZmZmZmZmZmZGEgUkJYOiAwMDAwMDAwMDAwMDAwMDAwIFJD
WDogMDAwMDdmMjg3ODFkYzM0ZQpbMjIuNzU2NzkyXSBSRFg6IDAwMDAwMDAwMDAwMDAyMDAgUlNJ
OiAwMDAwN2ZmZDMzZmEwZDUwIFJESTogMDAwMDAwMDAwMDAwMDAwOApbMjIuNzU2Nzk0XSBSQlA6
IDAwMDA3ZmZkMzNmYTBmNjAgUjA4OiAwMDAwMDAwMDAwMDAwMDAwIFIwOTogMDAwMDAwMDAwMDAw
MDAyMApbMjIuNzU2Nzk2XSBSMTA6IDAwMDAwMDAwMDAwMDAwMDAgUjExOiAwMDAwMDAwMDAwMDAw
MjQ2IFIxMjogMDAwMDU2MzhkZTQ1YzJjMApbMjIuNzU2Nzk3XSBSMTM6IDAwMDA3ZmZkMzNmYTE0
YjAgUjE0OiAwMDAwMDAwMDAwMDAwMDAwIFIxNTogMDAwMDAwMDAwMDAwMDAwMApbMjIuNzU2ODA2
XSBpcnEgZXZlbnQgc3RhbXA6IDQ3OTUwClsyMi43NTY4MTFdIGhhcmRpcnFzIGxhc3QgIGVuYWJs
ZWQgYXQgKDQ3OTQ5KTogWzxmZmZmZmZmZjgxMGZiYTc0Pl0gdnByaW50a19lbWl0KzB4MTI0LzB4
MzIwClsyMi43NTY4MTNdIGhhcmRpcnFzIGxhc3QgZGlzYWJsZWQgYXQgKDQ3OTUwKTogWzxmZmZm
ZmZmZjgxMDAxOWIwPl0gdHJhY2VfaGFyZGlycXNfb2ZmX3RodW5rKzB4MWEvMHgxYwpbMjIuNzU2
ODE2XSBzb2Z0aXJxcyBsYXN0ICBlbmFibGVkIGF0ICg0NzUxOCk6IFs8ZmZmZmZmZmY4MWMwMDMz
YT5dIF9fZG9fc29mdGlycSsweDMzYS8weDRiOQpbMjIuNzU2ODIwXSBzb2Z0aXJxcyBsYXN0IGRp
c2FibGVkIGF0ICg0NzQ3OSk6IFs8ZmZmZmZmZmY4MTA4ZGYyOT5dIGlycV9leGl0KzB4YTkvMHhj
MApbMjIuNzU2ODU4XSBXQVJOSU5HOiBDUFU6IDAgUElEOiAxMDU4IGF0IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2Rydi5oOjIxMDQgZ2VuNV9yZWFkMzIrMHgxNmIvMHgxYTAgW2k5MTVdClsy
Mi43NTY4NjBdIC0tLVsgZW5kIHRyYWNlIGJmNTZmYTdkNmEzY2JmN2EgXQoKU2lnbmVkLW9mZi1i
eTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClJldmlld2Vk
LWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Ckxpbms6IGh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDE4MTExOTIzMDEwMS4zMjQ2
MC0xLWpvc2Uuc291emFAaW50ZWwuY29tClNpZ25lZC1vZmYtYnk6IFNhc2hhIExldmluIDxzYXNo
YWxAa2VybmVsLm9yZz4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyB8
IDQgKysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kZWJ1Z2ZzLmMKaW5kZXggZjljZTM1ZGE0MTIzZS4uZTA2M2U5OGQxZTgyZSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKQEAgLTE3ODgsNiArMTc4OCw4IEBAIHN0YXRpYyBp
bnQgaTkxNV9lbW9uX3N0YXR1cyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKnVudXNlZCkKIAlp
ZiAoIUlTX0dFTjUoZGV2X3ByaXYpKQogCQlyZXR1cm4gLUVOT0RFVjsKIAorCWludGVsX3J1bnRp
bWVfcG1fZ2V0KGRldl9wcml2KTsKKwogCXJldCA9IG11dGV4X2xvY2tfaW50ZXJydXB0aWJsZSgm
ZGV2LT5zdHJ1Y3RfbXV0ZXgpOwogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CkBAIC0xODAyLDYg
KzE4MDQsOCBAQCBzdGF0aWMgaW50IGk5MTVfZW1vbl9zdGF0dXMoc3RydWN0IHNlcV9maWxlICpt
LCB2b2lkICp1bnVzZWQpCiAJc2VxX3ByaW50ZihtLCAiR0ZYIHBvd2VyOiAlbGRcbiIsIGdmeCk7
CiAJc2VxX3ByaW50ZihtLCAiVG90YWwgcG93ZXI6ICVsZFxuIiwgY2hpcHNldCArIGdmeCk7CiAK
KwlpbnRlbF9ydW50aW1lX3BtX3B1dChkZXZfcHJpdik7CisKIAlyZXR1cm4gMDsKIH0KIAotLSAK
Mi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
