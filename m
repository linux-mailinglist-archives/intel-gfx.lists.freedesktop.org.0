Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6C7C89C3
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 15:34:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C60E16E148;
	Wed,  2 Oct 2019 13:34:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8C07F6E105;
 Wed,  2 Oct 2019 13:34:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 850A0A0094;
 Wed,  2 Oct 2019 13:34:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 02 Oct 2019 13:34:17 -0000
Message-ID: <20191002133417.9785.24339@emeril.freedesktop.org>
References: <20191002112000.12280-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191002112000.12280-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B01/30=5D_drm/i915/selftests=3A_Exercise_?=
 =?utf-8?q?potential_false_lite-restore?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzMw
XSBkcm0vaTkxNS9zZWxmdGVzdHM6IEV4ZXJjaXNlIHBvdGVudGlhbCBmYWxzZSBsaXRlLXJlc3Rv
cmUKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY3NDgz
LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIHNwYXJzZSBvcmlnaW4vZHJt
LXRpcApTcGFyc2UgdmVyc2lvbjogdjAuNi4wCkNvbW1pdDogZHJtL2k5MTUvc2VsZnRlc3RzOiBF
eGVyY2lzZSBwb3RlbnRpYWwgZmFsc2UgbGl0ZS1yZXN0b3JlCk9rYXkhCgpDb21taXQ6IGRtYS1m
ZW5jZTogU2VyaWFsaXNlIHNpZ25hbCBlbmFibGluZyAoZG1hX2ZlbmNlX2VuYWJsZV9zd19zaWdu
YWxpbmcpCk9rYXkhCgpDb21taXQ6IGRybS9tbTogUGFjayBhbGxvY2F0ZWQvc2Nhbm5lZCBib29s
ZWFuIGludG8gYSBiaXRmaWVsZApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogT25seSB0cmFjayBi
b3VuZCBlbGVtZW50cyBvZiB0aGUgR1RUCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBNYXJrIHVw
IGFkZHJlc3Mgc3BhY2VzIHRoYXQgbWF5IG5lZWQgdG8gYWxsb2NhdGUKT2theSEKCkNvbW1pdDog
ZHJtL2k5MTU6IFB1bGwgaTkxNV92bWFfcGluIHVuZGVyIHRoZSB2bS0+bXV0ZXgKT2theSEKCkNv
bW1pdDogZHJtL2k5MTU6IFB1c2ggdGhlIGk5MTVfYWN0aXZlLnJldGlyZSBpbnRvIGEgd29ya2Vy
Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBDb29yZGluYXRlIGk5MTVfYWN0aXZlIHdpdGggaXRz
IG93biBtdXRleApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogTW92ZSBpZGxlIGJhcnJpZXIgY2xl
YW51cCBpbnRvIGVuZ2luZS1wbQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogRHJvcCBzdHJ1Y3Rf
bXV0ZXggZnJvbSBhcm91bmQgaTkxNV9yZXRpcmVfcmVxdWVzdHMoKQpPa2F5IQoKQ29tbWl0OiBk
cm0vaTkxNTogUmVtb3ZlIHRoZSBHRU0gaWRsZSB3b3JrZXIKT2theSEKCkNvbW1pdDogZHJtL2k5
MTU6IE1lcmdlIHdhaXRfZm9yX3RpbWVsaW5lcyB3aXRoIHJldGlyZV9yZXF1ZXN0Ck9rYXkhCgpD
b21taXQ6IGRybS9pOTE1L2dlbTogUmV0aXJlIGRpcmVjdGx5IGZvciBtbWFwLW9mZnNldCBzaHJp
bmtpbmcKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IE1vdmUgcmVxdWVzdCBydW50aW1lIG1hbmFn
ZW1lbnQgb250byBndApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogTW92ZSBnbG9iYWwgYWN0aXZp
dHkgdHJhY2tpbmcgZnJvbSBHRU0gdG8gR1QKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IEV4cG9z
ZSBlbmdpbmUgcHJvcGVydGllcyB2aWEgc3lzZnMKT2theSEKCkNvbW1pdDogZHJtL2k5MTUvZXhl
Y2xpc3RzOiBGb3JjZSBwcmVlbXB0aW9uCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBNYXJrIHVw
ICJzZW50aW5lbCIgcmVxdWVzdHMKT2theSEKCkNvbW1pdDogZHJtL2k5MTUvZXhlY2xpc3RzOiBD
YW5jZWwgYmFubmVkIGNvbnRleHRzIG9uIHNjaGVkdWxlLW91dApPa2F5IQoKQ29tbWl0OiBkcm0v
aTkxNTogQ2FuY2VsIG5vbi1wZXJzaXN0ZW50IGNvbnRleHRzIG9uIGNsb3NlCk9rYXkhCgpDb21t
aXQ6IGRybS9pOTE1OiBSZXBsYWNlIGhhbmdjaGVjayBieSBoZWFydGJlYXRzCk9rYXkhCgpDb21t
aXQ6IGRybS9pOTE1OiBSZW1vdmUgbG9naWNhbCBIVyBJRApPa2F5IQoKQ29tbWl0OiBkcm0vaTkx
NTogTW92ZSBjb250ZXh0IG1hbmFnZW1lbnQgdW5kZXIgR0VNCk9rYXkhCgpDb21taXQ6IGRybS9p
OTE1L292ZXJsYXk6IERyb3Agc3RydWN0X211dGV4IGd1YXJkCk9rYXkhCgpDb21taXQ6IGRybS9p
OTE1OiBEcm9wIHN0cnVjdF9tdXRleCBndWFyZCBmcm9tIGRlYnVnZnMvZnJhbWVidWZmZXJfaW5m
bwpPa2F5IQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
