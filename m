Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5767E103DA1
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 15:47:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4BE86E5F9;
	Wed, 20 Nov 2019 14:47:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 20B3E6E5F9;
 Wed, 20 Nov 2019 14:47:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 18422A01BB;
 Wed, 20 Nov 2019 14:47:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Wed, 20 Nov 2019 14:47:56 -0000
Message-ID: <157426127607.19986.4567895031283382101@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191120103743.28148-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20191120103743.28148-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Enable_second_dbuf_slice_for_ICL_and_TGL_=28rev5?=
 =?utf-8?q?=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEVuYWJsZSBzZWNvbmQgZGJ1
ZiBzbGljZSBmb3IgSUNMIGFuZCBUR0wgKHJldjUpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82OTEyNC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5
ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmY2Mjg5N2NlYTE5OSBkcm0vaTkx
NTogRW5hYmxlIHNlY29uZCBkYnVmIHNsaWNlIGZvciBJQ0wgYW5kIFRHTAotOjI4MTogV0FSTklO
RzpTVVNQRUNUX0NPREVfSU5ERU5UOiBzdXNwZWN0IGNvZGUgaW5kZW50IGZvciBjb25kaXRpb25h
bCBzdGF0ZW1lbnRzICg4LCAwKQojMjgxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaDozMTE6CiAJZm9yICgod2YpID0gaW50ZWxfZGlzcGxh
eV9wb3dlcl9nZXQoKGk5MTUpLCAoZG9tYWluKSk7ICh3Zik7IFwKWy4uLl0KK2ludCBpbnRlbF9k
YnVmX21heF9zbGljZXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKCi06NDg3
OiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3Bl
biBwYXJlbnRoZXNpcwojNDg3OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5j
OjM4NDg6CitzdGF0aWMgdTMyIGk5MTVfYWxsb3dlZF9kYnVmX21hc2soc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LAorCQkJCSAgICAgIGludCBwaXBlLCB1MzIgYWN0aXZlX3BpcGVz
LAoKLTo2OTE6IENIRUNLOkxJTkVfU1BBQ0lORzogUGxlYXNlIGRvbid0IHVzZSBtdWx0aXBsZSBi
bGFuayBsaW5lcwojNjkxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jOjQz
MDE6CisKKwoKLTo2OTU6IENIRUNLOlBBUkVOVEhFU0lTX0FMSUdOTUVOVDogQWxpZ25tZW50IHNo
b3VsZCBtYXRjaCBvcGVuIHBhcmVudGhlc2lzCiM2OTU6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmM6NDMwNToKKwlEUk1fREVCVUdfS01TKCJQaXBlICVkIGRvd25zY2FsZSBh
bW91bnQgJWQuJWRcbiIsCisJCSAgICAgICBjcnRjLT5waXBlLCBwaXBlX2Rvd25zY2FsZS52YWwg
Pj4gMTYsCgotOjcxNzogQ0hFQ0s6TElORV9TUEFDSU5HOiBQbGVhc2UgZG9uJ3QgdXNlIG11bHRp
cGxlIGJsYW5rIGxpbmVzCiM3MTc6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmM6NDMyNzoKKworCgotOjcxODogQ0hFQ0s6Q0FNRUxDQVNFOiBBdm9pZCBDYW1lbENhc2U6IDxE
YnVmMT4KIzcxODogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYzo0MzI4Ogor
I2RlZmluZSBJQ0xfUElQRV9BX0RCVUZfU0xJQ0VTKERidWYxKSAgXAoKLTo3MjY6IENIRUNLOkNB
TUVMQ0FTRTogQXZvaWQgQ2FtZWxDYXNlOiA8RGJ1ZjI+CiM3MjY6IEZJTEU6IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BtLmM6NDMzNjoKKyNkZWZpbmUgSUNMX1BJUEVfQUJfREJVRl9TTElD
RVMoRGJ1ZjEsIERidWYyKSAgIFwKCi06NzM4OiBDSEVDSzpDQU1FTENBU0U6IEF2b2lkIENhbWVs
Q2FzZTogPERidWYzPgojNzM4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5j
OjQzNDg6CisjZGVmaW5lIElDTF9QSVBFX0FCQ19EQlVGX1NMSUNFUyhEYnVmMSwgRGJ1ZjIsIERi
dWYzKSAgXAoKLTo3NDg6IENIRUNLOkNBTUVMQ0FTRTogQXZvaWQgQ2FtZWxDYXNlOiA8RGJ1ZjQ+
CiM3NDg6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmM6NDM1ODoKKyNkZWZp
bmUgSUNMX1BJUEVfQUJDRF9EQlVGX1NMSUNFUyhEYnVmMSwgRGJ1ZjIsIERidWYzLCBEYnVmNCkg
IFwKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgOCBjaGVja3MsIDc0NCBsaW5lcyBjaGVj
a2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
