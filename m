Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0DBE976C
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 08:53:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D10116E8B3;
	Wed, 30 Oct 2019 07:53:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7DA7D6E8AE;
 Wed, 30 Oct 2019 07:53:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 760EDA0003;
 Wed, 30 Oct 2019 07:53:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tomas Janousek" <tomi@nomi.cz>
Date: Wed, 30 Oct 2019 07:53:13 -0000
Message-ID: <20191030075313.8996.28597@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191028212527.24401-1-don.hiatt@intel.com>
In-Reply-To: <20191028212527.24401-1-don.hiatt@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_dr?=
 =?utf-8?q?m/i915/guc=3A_Skip_suspend/resume_GuC_action_on_platforms_w/o_G?=
 =?utf-8?q?uC_submission_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3VjOiBTa2lwIHN1c3BlbmQv
cmVzdW1lIEd1QyBhY3Rpb24gb24gcGxhdGZvcm1zIHcvbyBHdUMgc3VibWlzc2lvbiAocmV2MikK
VVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY4Njg1LwpT
dGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkFwcGx5aW5nOiBkcm0vaTkxNS9ndWM6IFNr
aXAgc3VzcGVuZC9yZXN1bWUgR3VDIGFjdGlvbiBvbiBwbGF0Zm9ybXMgdy9vIEd1QyBzdWJtaXNz
aW9uClVzaW5nIGluZGV4IGluZm8gdG8gcmVjb25zdHJ1Y3QgYSBiYXNlIHRyZWUuLi4KQQlkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jCkZhbGxpbmcgYmFjayB0byBwYXRjaGluZyBiYXNl
IGFuZCAzLXdheSBtZXJnZS4uLgpDT05GTElDVCAobW9kaWZ5L2RlbGV0ZSk6IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3VjLmMgZGVsZXRlZCBpbiBIRUFEIGFuZCBtb2RpZmllZCBpbiBkcm0v
aTkxNS9ndWM6IFNraXAgc3VzcGVuZC9yZXN1bWUgR3VDIGFjdGlvbiBvbiBwbGF0Zm9ybXMgdy9v
IEd1QyBzdWJtaXNzaW9uLiBWZXJzaW9uIGRybS9pOTE1L2d1YzogU2tpcCBzdXNwZW5kL3Jlc3Vt
ZSBHdUMgYWN0aW9uIG9uIHBsYXRmb3JtcyB3L28gR3VDIHN1Ym1pc3Npb24gb2YgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfdWMuYyBsZWZ0IGluIHRyZWUuCmVycm9yOiBGYWlsZWQgdG8gbWVy
Z2UgaW4gdGhlIGNoYW5nZXMuCmhpbnQ6IFVzZSAnZ2l0IGFtIC0tc2hvdy1jdXJyZW50LXBhdGNo
JyB0byBzZWUgdGhlIGZhaWxlZCBwYXRjaApQYXRjaCBmYWlsZWQgYXQgMDAwMSBkcm0vaTkxNS9n
dWM6IFNraXAgc3VzcGVuZC9yZXN1bWUgR3VDIGFjdGlvbiBvbiBwbGF0Zm9ybXMgdy9vIEd1QyBz
dWJtaXNzaW9uCldoZW4geW91IGhhdmUgcmVzb2x2ZWQgdGhpcyBwcm9ibGVtLCBydW4gImdpdCBh
bSAtLWNvbnRpbnVlIi4KSWYgeW91IHByZWZlciB0byBza2lwIHRoaXMgcGF0Y2gsIHJ1biAiZ2l0
IGFtIC0tc2tpcCIgaW5zdGVhZC4KVG8gcmVzdG9yZSB0aGUgb3JpZ2luYWwgYnJhbmNoIGFuZCBz
dG9wIHBhdGNoaW5nLCBydW4gImdpdCBhbSAtLWFib3J0Ii4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
