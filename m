Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 146EDF3C4C
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 00:43:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 142CD89E06;
	Thu,  7 Nov 2019 23:43:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B64A789DC0;
 Thu,  7 Nov 2019 23:43:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AE5E5A0087;
 Thu,  7 Nov 2019 23:43:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 07 Nov 2019 23:43:53 -0000
Message-ID: <157317023368.21752.503410896681641246@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191107212234.21815-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20191107212234.21815-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Enable_second_dbuf_slice_for_ICL_and_TGL_=28rev2?=
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
ZiBzbGljZSBmb3IgSUNMIGFuZCBUR0wgKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82OTEyNC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5
ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmY5YWI5N2YzMjU3ZSBkcm0vaTkx
NTogRW5hYmxlIHNlY29uZCBkYnVmIHNsaWNlIGZvciBJQ0wgYW5kIFRHTAotOjI2MDogV0FSTklO
RzpTVVNQRUNUX0NPREVfSU5ERU5UOiBzdXNwZWN0IGNvZGUgaW5kZW50IGZvciBjb25kaXRpb25h
bCBzdGF0ZW1lbnRzICg4LCAwKQojMjYwOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaDozMTE6CiAJZm9yICgod2YpID0gaW50ZWxfZGlzcGxh
eV9wb3dlcl9nZXQoKGk5MTUpLCAoZG9tYWluKSk7ICh3Zik7IFwKWy4uLl0KK3U4IGludGVsX2Ri
dWZfbWF4X3NsaWNlcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwoKLTo1MDY6
IFdBUk5JTkc6TElORV9DT05USU5VQVRJT05TOiBBdm9pZCB1bm5lY2Vzc2FyeSBsaW5lIGNvbnRp
bnVhdGlvbnMKIzUwNjogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYzozOTUz
OgorCQl1MzIgcGlwZV9kYnVmX3NsaWNlX21hc2sgPSBcCgotOjUwODogQ0hFQ0s6UEFSRU5USEVT
SVNfQUxJR05NRU5UOiBBbGlnbm1lbnQgc2hvdWxkIG1hdGNoIG9wZW4gcGFyZW50aGVzaXMKIzUw
ODogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYzozOTU1OgorCQkJaTkxNV9n
ZXRfYWxsb3dlZF9kYnVmX21hc2soZGV2X3ByaXYsCisJCQkJCQlwaXBlLAoKLTo2MjQ6IENIRUNL
OkxJTkVfU1BBQ0lORzogUGxlYXNlIGRvbid0IHVzZSBtdWx0aXBsZSBibGFuayBsaW5lcwojNjI0
OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jOjQzMDM6CisKKwoKLTo2Mjg6
IENIRUNLOlBBUkVOVEhFU0lTX0FMSUdOTUVOVDogQWxpZ25tZW50IHNob3VsZCBtYXRjaCBvcGVu
IHBhcmVudGhlc2lzCiM2Mjg6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmM6
NDMwNzoKKwlEUk1fREVCVUdfS01TKCJQaXBlICVkIGRvd25zY2FsZSBhbW91bnQgJWQuJWRcbiIs
CisJCSAgICAgICBjcnRjLT5waXBlLCBwaXBlX2Rvd25zY2FsZS52YWwgPj4gMTYsCgotOjY0Nzog
Q0hFQ0s6TElORV9TUEFDSU5HOiBQbGVhc2UgZG9uJ3QgdXNlIG11bHRpcGxlIGJsYW5rIGxpbmVz
CiM2NDc6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmM6NDMyNjoKKworCgot
OjY0ODogQ0hFQ0s6Q0FNRUxDQVNFOiBBdm9pZCBDYW1lbENhc2U6IDxEQnVmMT4KIzY0ODogRklM
RTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYzo0MzI3OgorI2RlZmluZSBJQ0xfUElQ
RV9BX0RCVUZfU0xJQ0VTKERCdWYxKSAgXAoKLTo2NTY6IENIRUNLOkNBTUVMQ0FTRTogQXZvaWQg
Q2FtZWxDYXNlOiA8REJ1ZjI+CiM2NTY6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3BtLmM6NDMzNToKKyNkZWZpbmUgSUNMX1BJUEVfQUJfREJVRl9TTElDRVMoREJ1ZjEsIERCdWYy
KSAgIFwKCi06NjY4OiBDSEVDSzpDQU1FTENBU0U6IEF2b2lkIENhbWVsQ2FzZTogPERCdWYzPgoj
NjY4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jOjQzNDc6CisjZGVmaW5l
IElDTF9QSVBFX0FCQ19EQlVGX1NMSUNFUyhEQnVmMSwgREJ1ZjIsIERCdWYzKSAgXAoKLTo2Nzg6
IENIRUNLOkNBTUVMQ0FTRTogQXZvaWQgQ2FtZWxDYXNlOiA8REJ1ZjQ+CiM2Nzg6IEZJTEU6IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmM6NDM1NzoKKyNkZWZpbmUgSUNMX1BJUEVfQUJD
RF9EQlVGX1NMSUNFUyhEQnVmMSwgREJ1ZjIsIERCdWYzLCBEQnVmNCkgIFwKCi06Nzg3OiBDSEVD
SzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJl
bnRoZXNpcwojNzg3OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jOjQ0NjY6
Cit1MzIgaTkxNV9nZXRfYWxsb3dlZF9kYnVmX21hc2soc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LAorCQkJCSAgICAgIGludCBwaXBlLCB1MzIgYWN0aXZlX3BpcGVzLAoKdG90YWw6
IDAgZXJyb3JzLCAyIHdhcm5pbmdzLCA5IGNoZWNrcywgNzEyIGxpbmVzIGNoZWNrZWQKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
