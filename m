Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5140393F5
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 20:07:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40C5989DD3;
	Fri,  7 Jun 2019 18:07:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 90DC989DD3;
 Fri,  7 Jun 2019 18:07:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 89DFAA0106;
 Fri,  7 Jun 2019 18:07:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 07 Jun 2019 18:07:48 -0000
Message-ID: <20190607180748.32139.43925@emeril.freedesktop.org>
References: <20190604145826.16424-1-imre.deak@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190604145826.16424-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915=3A_Fix_TypeC_port_mode_switching_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEZpeCBUeXBlQyBwb3J0IG1v
ZGUgc3dpdGNoaW5nIChyZXYyKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9w
Lm9yZy9zZXJpZXMvNjE1OTAvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0g
c3BhcnNlIG9yaWdpbi9kcm0tdGlwClNwYXJzZSB2ZXJzaW9uOiB2MC41LjIKQ29tbWl0OiBkcm0v
aTkxNS9pY2w6IEFkZCBzdXBwb3J0IHRvIHJlYWQgb3V0IHRoZSBUQlQgUExMIEhXIHN0YXRlCk9r
YXkhCgpDb21taXQ6IGRybS9pOTE1OiBUdW5lIGRvd24gV0FSTnMgYWJvdXQgVEJUIEFVWCBwb3dl
ciB3ZWxsIGVuYWJsaW5nCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBNb3ZlIHRoZSBUeXBlQyBw
b3J0IGhhbmRsaW5nIGNvZGUgdG8gYSBzZXBhcmF0ZSBmaWxlCi1POmRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2RwLmM6MjU1OjE2OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2
b2lkKQotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jOjI1NToxNjogd2FybmluZzog
ZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLU86ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZHAuYzoyNTU6MTY6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCi1P
OmRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmM6MjU1OjE2OiB3YXJuaW5nOiBleHByZXNz
aW9uIHVzaW5nIHNpemVvZih2b2lkKQotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5j
OjI1NToxNjogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLU86ZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYzoyNTU6MTY6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNp
bmcgc2l6ZW9mKHZvaWQpCi1POmRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmM6MjU1OjE2
OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQotTzpkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kcC5jOjI1NToxNjogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXpl
b2Yodm9pZCkKLU86ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYzoyNTU6MTY6IHdhcm5p
bmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCi1POmRyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RwLmM6MjU1OjE2OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lk
KQotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jOjI1NToxNjogd2FybmluZzogZXhw
cmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLU86ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZHAuYzoyNTU6MTY6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCi1POmRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmM6MjU1OjE2OiB3YXJuaW5nOiBleHByZXNzaW9u
IHVzaW5nIHNpemVvZih2b2lkKQotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jOjI1
NToxNjogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2RwLmM6MjIzOjE2OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNp
emVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYzoyMjM6MTY6IHdhcm5p
bmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9kcC5jOjIyMzoxNjogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkK
K2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmM6MjIzOjE2OiB3YXJuaW5nOiBleHByZXNz
aW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYzoy
MjM6MTY6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kcC5jOjIyMzoxNjogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBz
aXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmM6MjIzOjE2OiB3YXJu
aW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZHAuYzoyMjM6MTY6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQp
Citkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jOjIyMzoxNjogd2FybmluZzogZXhwcmVz
c2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmM6
MjIzOjE2OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZHAuYzoyMjM6MTY6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcg
c2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jOjIyMzoxNjogd2Fy
bmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RwLmM6MjIzOjE2OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lk
KQorZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYzoyMjM6MTY6IHdhcm5pbmc6IGV4cHJl
c3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCisuL2luY2x1ZGUvdWFwaS9saW51eC9wZXJmX2V2ZW50
Lmg6MTQ3OjU2OiB3YXJuaW5nOiBjYXN0IHRydW5jYXRlcyBiaXRzIGZyb20gY29uc3RhbnQgdmFs
dWUgKDgwMDAwMDAwMDAwMDAwMDAgYmVjb21lcyAwKQoKQ29tbWl0OiBkcm0vaTkxNTogU2FuaXRp
emUgdGhlIHRlcm1pbm9sb2d5IHVzZWQgZm9yIFR5cGVDIHBvcnQgbW9kZXMKT2theSEKCkNvbW1p
dDogZHJtL2k5MTU6IERvbid0IGVuYWJsZSB0aGUgRERJLUlPIHBvd2VyIGluIHRoZSBUeXBlQyBU
QlQtYWx0IG1vZGUKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IEZpeCB0aGUgVEJUIEFVWCBwb3dl
ciB3ZWxsIGVuYWJsaW5nCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBVc2UgdGhlIGNvcnJlY3Qg
QVVYIHBvd2VyIGRvbWFpbiBpbiBUeXBlQyBUQlQtYWx0IG1vZGUKT2theSEKCkNvbW1pdDogZHJt
L2k5MTU6IFVuaWZ5IHRoZSBUeXBlQyBwb3J0IG5vdGF0aW9uIGluIGRlYnVnL2Vycm9yIG1lc3Nh
Z2VzCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBGYWN0b3Igb3V0IGNvbW1vbiBwYXJ0cyBmcm9t
IFR5cGVDIHBvcnQgaGFuZGxpbmcgZnVuY3Rpb25zCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBX
YWl0IGZvciBUeXBlQyBQSFkgY29tcGxldGUgZmxhZyB0byBjbGVhciBpbiBzYWZlIG1vZGUKT2th
eSEKCkNvbW1pdDogZHJtL2k5MTU6IEhhbmRsZSB0aGUgVENDT0xEIHBvd2VyLWRvd24gZXZlbnQK
T2theSEKCkNvbW1pdDogZHJtL2k5MTU6IFNhbml0aXplIHRoZSBUeXBlQyBjb25uZWN0L2RldGVj
dCBzZXF1ZW5jZXMKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IEZpeCB0aGUgVHlwZUMgcG9ydCBt
b2RlIHNhbml0aXphdGlvbiBkdXJpbmcgbG9hZGluZy9yZXN1bWUKKy4vaW5jbHVkZS91YXBpL2xp
bnV4L3BlcmZfZXZlbnQuaDoxNDc6NTY6IHdhcm5pbmc6IGNhc3QgdHJ1bmNhdGVzIGJpdHMgZnJv
bSBjb25zdGFudCB2YWx1ZSAoODAwMDAwMDAwMDAwMDAwMCBiZWNvbWVzIDApCgpDb21taXQ6IGRy
bS9pOTE1OiBLZWVwIHRoZSBUeXBlQyBwb3J0IG1vZGUgZml4ZWQgZm9yIGRldGVjdC9BVVggdHJh
bnNmZXJzCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBTYW5pdGl6ZSB0aGUgVHlwZUMgRklBIGxh
bmUgY29uZmlndXJhdGlvbiBkZWNvZGluZwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogU2FuaXRp
emUgdGhlIHNoYXJlZCBEUExMIHJlc2VydmUvcmVsZWFzZSBpbnRlcmZhY2UKT2theSEKCkNvbW1p
dDogZHJtL2k5MTU6IFNhbml0aXplIHRoZSBzaGFyZWQgRFBMTCBmaW5kL3JlZmVyZW5jZSBpbnRl
cmZhY2UKT2theSEKCkNvbW1pdDogZHJtL2k5MTUvaWNsOiBTcGxpdCBnZXR0aW5nIHRoZSBEUExM
cyB0byBwb3J0IHR5cGUgc3BlY2lmaWMgZnVuY3Rpb25zCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1
L2ljbDogUmVzZXJ2ZSBhbGwgcmVxdWlyZWQgUExMcyBmb3IgVHlwZUMgcG9ydHMKT2theSEKCkNv
bW1pdDogZHJtL2k5MTU6IEtlZXAgdGhlIFR5cGVDIHBvcnQgbW9kZSBmaXhlZCB3aGVuIHRoZSBw
b3J0IGlzIGFjdGl2ZQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogQWRkIHN0YXRlIHZlcmlmaWNh
dGlvbiBmb3IgdGhlIFR5cGVDIHBvcnQgbW9kZQorLi9pbmNsdWRlL3VhcGkvbGludXgvcGVyZl9l
dmVudC5oOjE0Nzo1Njogd2FybmluZzogY2FzdCB0cnVuY2F0ZXMgYml0cyBmcm9tIGNvbnN0YW50
IHZhbHVlICg4MDAwMDAwMDAwMDAwMDAwIGJlY29tZXMgMCkKCkNvbW1pdDogZHJtL2k5MTU6IFJl
bW92ZSB1bm5lZWRlZCBkaXNjb25uZWN0IGluIFR5cGVDIGxlZ2FjeSBwb3J0IG1vZGUKT2theSEK
CkNvbW1pdDogZHJtL2k5MTU6IFdBUk4gYWJvdXQgaW52YWxpZCBsYW5lIHJldmVyc2FsIGluIFRC
VC1hbHQvRFAtYWx0IG1vZGVzCk9rYXkhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
