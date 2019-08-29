Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB16A1547
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 11:59:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FDBC89F01;
	Thu, 29 Aug 2019 09:59:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 90F3F89F01;
 Thu, 29 Aug 2019 09:59:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8A3D6A00EF;
 Thu, 29 Aug 2019 09:59:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 29 Aug 2019 09:59:44 -0000
Message-ID: <20190829095944.10003.66744@emeril.freedesktop.org>
References: <20190829092554.32198-1-lucas.demarchi@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190829092554.32198-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Tiger_Lake_batch_3=2E5?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogVGlnZXIgTGFrZSBiYXRjaCAzLjUKVVJMICAg
OiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY1OTgyLwpTdGF0ZSA6
IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAK
M2M0MzA0Y2YzYzBhIGRybS9pOTE1L3BzcjogT25seSBoYW5kbGUgaW50ZXJydXB0aW9ucyBvZiB0
aGUgdHJhbnNjb2RlciBpbiB1c2UKLToyNDM6IENIRUNLOk1BQ1JPX0FSR19SRVVTRTogTWFjcm8g
YXJndW1lbnQgcmV1c2UgJ3RyYW5zJyAtIHBvc3NpYmxlIHNpZGUtZWZmZWN0cz8KIzI0MzogRklM
RTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaDo0MjI4OgorI2RlZmluZSAgIF9FRFBf
UFNSX1RSQU5TX1NISUZUKHRyYW5zKQkJKCh0cmFucykgPT0gVFJBTlNDT0RFUl9FRFAgPyBcCisJ
CQkJCQkgMCA6ICgodHJhbnMpIC0gVFJBTlNDT0RFUl9BICsgMSkgKiA4KQoKdG90YWw6IDAgZXJy
b3JzLCAwIHdhcm5pbmdzLCAxIGNoZWNrcywgMTk5IGxpbmVzIGNoZWNrZWQKYzEyM2UyOTdmODhk
IGRybS9pOTE1L3RnbDogQWNjZXNzIHRoZSByaWdodCByZWdpc3RlciB3aGVuIGhhbmRsaW5nIFBT
UiBpbnRlcnJ1cHRpb25zCjY4NDcwMmM2ZjZiMiBkcm0vaTkxNTogcHJvdGVjdCBhY2Nlc3MgdG8g
RFBfVFBfKiBvbiBub24tZHAKMmM1NzRjYmY1YmIwIGRybS9pOTE1L3RnbDogbW92ZSBEUF9UUF8q
IHRvIHRyYW5zY29kZXIKYmEwMGYyNGZmZjRjIGRybS9pOTE1L3RnbDogZGlzYWJsZSBTQUdWIHRl
bXBvcmFyaWx5Cjg4N2RhMjFhNmMxYiBkcm0vaTkxNS90Z2w6IGFkZCBnZW4xMiB0byBzdG9sZW4g
aW5pdGlhbGl6YXRpb24KYmExZGUwM2IzZjQ5IEZJWE1FOiBkcm0vaTkxNS90Z2w6IFJlZ2lzdGVy
IHN0YXRlIGNvbnRleHQgZGVmaW5pdGlvbiBmb3IgR2VuMTIKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
