Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9552212E8D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 14:56:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1620B89CB2;
	Fri,  3 May 2019 12:56:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3AC5F89169;
 Fri,  3 May 2019 12:56:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 36BB0A0020;
 Fri,  3 May 2019 12:56:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 03 May 2019 12:56:02 -0000
Message-ID: <20190503125602.10777.23680@emeril.freedesktop.org>
References: <20190503115225.30831-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190503115225.30831-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B01/13=5D_drm/i915=3A_Assert_breadcrumbs_?=
 =?utf-8?q?are_correctly_ordered_in_the_signal_handler?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzEz
XSBkcm0vaTkxNTogQXNzZXJ0IGJyZWFkY3J1bWJzIGFyZSBjb3JyZWN0bHkgb3JkZXJlZCBpbiB0
aGUgc2lnbmFsIGhhbmRsZXIKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvc2VyaWVzLzYwMjU3LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIHNw
YXJzZSBvcmlnaW4vZHJtLXRpcApTcGFyc2UgdmVyc2lvbjogdjAuNS4yCkNvbW1pdDogZHJtL2k5
MTU6IEFzc2VydCBicmVhZGNydW1icyBhcmUgY29ycmVjdGx5IG9yZGVyZWQgaW4gdGhlIHNpZ25h
bCBoYW5kbGVyCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBQcmVmZXIgY2hlY2tpbmcgdGhlIHdh
a2VyZWYgaXRzZWxmIHJhdGhlciB0aGFuIHRoZSBjb3VudGVyCk9rYXkhCgpDb21taXQ6IGRybS9p
OTE1OiBBc3NlcnQgdGhlIGxvY2FsIGVuZ2luZS0+d2FrZXJlZiBpcyBhY3RpdmUKT2theSEKCkNv
bW1pdDogZHJtL2k5MTUvaGFuZ2NoZWNrOiBSZXBsYWNlIGhhbmdjaGVjay5zZXFubyB3aXRoIFJJ
TkdfSEVBRApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogUmVtb3ZlIGRlbGF5IGZvciBpZGxlX3dv
cmsKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IENhbmNlbCByZXRpcmVfd29ya2VyIG9uIHBhcmtp
bmcKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IFN0b3Agc3Bpbm5pbmcgZm9yIERST1BfSURMRSAo
ZGVidWdmcy9pOTE1X2Ryb3BfY2FjaGVzKQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogT25seSBy
ZXNjaGVkdWxlIHRoZSBzdWJtaXNzaW9uIHRhc2tsZXQgaWYgcHJlZW1wdGlvbiBpcyBwb3NzaWJs
ZQotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaDoxMjQ6MjM6IHdhcm5p
bmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCi1POmRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2VuZ2luZS5oOjEyNDoyMzogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXpl
b2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyLmg6NzA6MjM6IHdh
cm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3NjaGVkdWxlci5oOjcwOjIzOiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVv
Zih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXIuaDo3MDoyMzogd2Fy
bmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKCkNvbW1pdDogZHJtL2k5MTUvZXhl
Y2xpc3RzOiBEb24ndCBhcHBseSBwcmlvcml0eSBib29zdCBmb3IgcmVzZXRzCk9rYXkhCgpDb21t
aXQ6IGRybS9pOTE1OiBSZWFycmFuZ2UgaTkxNV9zY2hlZHVsZXIuYwpPa2F5IQoKQ29tbWl0OiBk
cm0vaTkxNTogUGFzcyBpOTE1X3NjaGVkX25vZGUgYXJvdW5kIGludGVybmFsbHkKT2theSEKCkNv
bW1pdDogZHJtL2k5MTU6IEJ1bXAgc2lnbmFsZXIgcHJpb3JpdHkgb24gYWRkaW5nIGEgd2FpdGVy
Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBEaXNhYmxlIHNlbWFwaG9yZSBidXN5d2FpdHMgb24g
c2F0dXJhdGVkIHN5c3RlbXMKKy4vaW5jbHVkZS91YXBpL2xpbnV4L3BlcmZfZXZlbnQuaDoxNDc6
NTY6IHdhcm5pbmc6IGNhc3QgdHJ1bmNhdGVzIGJpdHMgZnJvbSBjb25zdGFudCB2YWx1ZSAoODAw
MDAwMDAwMDAwMDAwMCBiZWNvbWVzIDApCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
