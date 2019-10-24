Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36705E36AC
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 17:29:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01A3B6E44D;
	Thu, 24 Oct 2019 15:29:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BD2376E44D;
 Thu, 24 Oct 2019 15:29:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B6E0DA01BB;
 Thu, 24 Oct 2019 15:29:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Thu, 24 Oct 2019 15:29:26 -0000
Message-ID: <20191024152926.27075.47712@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191024103858.28113-1-mika.kuoppala@linux.intel.com>
In-Reply-To: <20191024103858.28113-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/2=5D_drm/i915=3A_Remove_nonpriv_fl?=
 =?utf-8?q?ags_when_srm/lrm_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvMl0g
ZHJtL2k5MTU6IFJlbW92ZSBub25wcml2IGZsYWdzIHdoZW4gc3JtL2xybSAocmV2MikKVVJMICAg
OiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY4NTA2LwpTdGF0ZSA6
IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAK
NTZlYTExODc3OWUzIGRybS9pOTE1OiBSZW1vdmUgbm9ucHJpdiBmbGFncyB3aGVuIHNybS9scm0K
YjM0MDkwZDhhMjY4IGRybS9pOTE1L3RnbDogd2hpdGVsaXN0IFBTXyhERVBUSHxJTlZPQ0FUSU9O
KV9DT1VOVAotOjk6IEVSUk9SOkdJVF9DT01NSVRfSUQ6IFBsZWFzZSB1c2UgZ2l0IGNvbW1pdCBk
ZXNjcmlwdGlvbiBzdHlsZSAnY29tbWl0IDwxMisgY2hhcnMgb2Ygc2hhMT4gKCI8dGl0bGUgbGlu
ZT4iKScgLSBpZTogJ2NvbW1pdCAzZmUwMTA3ZTQ1YWIgKCJkcm0vaTkxNS9pY2w6IHdoaXRlbGlz
dCBQU18oREVQVEh8SU5WT0NBVElPTilfQ09VTlQiKScKIzk6IApBcyB3aXRoIGNvbW1pdCAzZmUw
MTA3ZTQ1YWIsIHRoaXMgY2hhbmdlIGZpeGVzIG11bHRpcGxlIHRlc3RzIHRoYXQgYXJlCgp0b3Rh
bDogMSBlcnJvcnMsIDAgd2FybmluZ3MsIDAgY2hlY2tzLCAyNiBsaW5lcyBjaGVja2VkCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
