Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E488021B27
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 18:07:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB65B898CE;
	Fri, 17 May 2019 16:07:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 295B0898C4;
 Fri, 17 May 2019 16:07:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 21AD8A0134;
 Fri, 17 May 2019 16:07:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Date: Fri, 17 May 2019 16:07:27 -0000
Message-ID: <20190517160727.9055.74300@emeril.freedesktop.org>
References: <1558015817-12025-1-git-send-email-uma.shankar@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1558015817-12025-1-git-send-email-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Add_HDR_Metadata_Parsing_and_handling_in_DRM_layer_=28rev14?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogQWRkIEhEUiBNZXRhZGF0YSBQYXJzaW5nIGFu
ZCBoYW5kbGluZyBpbiBEUk0gbGF5ZXIgKHJldjE0KQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3Jr
LmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMjUwOTEvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFy
eSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAo3YzA0NjNlNTgyN2YgZHJtOiBB
ZGQgSERSIHNvdXJjZSBtZXRhZGF0YSBwcm9wZXJ0eQotOjYyOiBDSEVDSzpQQVJFTlRIRVNJU19B
TElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojNjI6IEZJ
TEU6IGRyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYzo3MzM6CisJCXJldCA9IGRybV9h
dG9taWNfcmVwbGFjZV9wcm9wZXJ0eV9ibG9iX2Zyb21faWQoZGV2LAorCQkJCSZzdGF0ZS0+aGRy
X291dHB1dF9tZXRhZGF0YSwKCnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywgMSBjaGVja3Ms
IDE0NCBsaW5lcyBjaGVja2VkCjNkMWYzY2IxNzNmNiBkcm06IEFkZCByZWZlcmVuY2UgY291bnRp
bmcgb24gSERSIG1ldGFkYXRhIGJsb2IKNGYwN2M3ZTVkYWZkIGRybTogUGFyc2UgSERSIG1ldGFk
YXRhIGluZm8gZnJvbSBFRElECjE3YWI4N2JhZDQ5MSBkcm06IEVuYWJsZSBIRFIgaW5mb2ZyYW1l
IHN1cHBvcnQKLTo5MjogQ0hFQ0s6UEFSRU5USEVTSVNfQUxJR05NRU5UOiBBbGlnbm1lbnQgc2hv
dWxkIG1hdGNoIG9wZW4gcGFyZW50aGVzaXMKIzkyOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vZHJt
X2VkaWQuYzo0OTQzOgorCWlmICghaXNfZW90Zl9zdXBwb3J0ZWQoaGRyX21ldGFkYXRhLT5oZG1p
X21ldGFkYXRhX3R5cGUxLmVvdGYsCisJICAgIGNvbm5lY3Rvci0+aGRyX3NpbmtfbWV0YWRhdGEu
aGRtaV90eXBlMS5lb3RmKSkgewoKdG90YWw6IDAgZXJyb3JzLCAwIHdhcm5pbmdzLCAxIGNoZWNr
cywgMzc5IGxpbmVzIGNoZWNrZWQKNmI0MGM4MzdhMjEwIGRybS9pOTE1OiBBdHRhY2ggSERSIG1l
dGFkYXRhIHByb3BlcnR5IHRvIGNvbm5lY3RvcgotOjI4OiBDSEVDSzpQQVJFTlRIRVNJU19BTElH
Tk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojMjg6IEZJTEU6
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2hkbWkuYzoyNzMwOgorCQlkcm1fb2JqZWN0X2F0
dGFjaF9wcm9wZXJ0eSgmY29ubmVjdG9yLT5iYXNlLAorCQkJY29ubmVjdG9yLT5kZXYtPm1vZGVf
Y29uZmlnLmhkcl9vdXRwdXRfbWV0YWRhdGFfcHJvcGVydHksIDApOwoKdG90YWw6IDAgZXJyb3Jz
LCAwIHdhcm5pbmdzLCAxIGNoZWNrcywgMTAgbGluZXMgY2hlY2tlZAplM2MzYTY2YjUxYTAgZHJt
L2k5MTU6IFdyaXRlIEhEUiBpbmZvZnJhbWUgYW5kIHNlbmQgdG8gcGFuZWwKYzNjMDA2ZmQ5ZDM1
IGRybTogQWRkIEhMRyBFT1RGCjNkNDc0MTFhMzgwYiBkcm0vaTkxNTogRW5hYmxlIGluZm9mcmFt
ZXMgb24gR0xLKyBmb3IgSERSCi06MjE6IFdBUk5JTkc6VFlQT19TUEVMTElORzogJ2RlZmludGlv
bicgbWF5IGJlIG1pc3NwZWxsZWQgLSBwZXJoYXBzICdkZWZpbml0aW9uJz8KIzIxOiAKdjY6IFJl
bW92ZWQgYW4gdW51c2VkIGFuZCBkdXBsaWNhdGUgYml0IGRlZmludGlvbiwgYXMgcGVyIFZpbGxl
J3MKCi06NjE6IFdBUk5JTkc6TE9OR19MSU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzYx
OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oOjgxODk6CisjZGVmaW5lIEdM
S19UVklERU9fRElQX0RSTV9EQVRBKHRyYW5zLCBpKQlfTU1JT19UUkFOUzIodHJhbnMsIF9HTEtf
VklERU9fRElQX0RSTV9EQVRBX0EgKyAoaSkgKiA0KQoKdG90YWw6IDAgZXJyb3JzLCAyIHdhcm5p
bmdzLCAwIGNoZWNrcywgNzMgbGluZXMgY2hlY2tlZAo3YTFlMmM1Njc1NWQgZHJtL2k5MTU6RW5h
YmxlZCBNb2Rlc2V0IHdoZW4gSERSIEluZm9mcmFtZSBjaGFuZ2VzCjhhNDVmYTVhNzk0ZiBkcm0v
aTkxNTogQWRkZWQgRFJNIEluZm9mcmFtZSBoYW5kbGluZyBmb3IgQllUL0NIVAphNmMyNDg4YmUz
NzIgdmlkZW8vaGRtaTogQWRkIFVucGFjayBmdW5jdGlvbiBmb3IgRFJNIGluZm9mcmFtZQowNTUy
ZGEyZmNhYTYgZHJtL2k5MTU6IEFkZCBzdGF0ZSByZWFkb3V0IGZvciBEUk0gaW5mb2ZyYW1lCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
