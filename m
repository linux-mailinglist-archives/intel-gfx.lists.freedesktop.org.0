Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0EC1105B6
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 21:11:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D849E6ED88;
	Tue,  3 Dec 2019 20:11:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3157F6ED88;
 Tue,  3 Dec 2019 20:11:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 29038A0073;
 Tue,  3 Dec 2019 20:11:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Date: Tue, 03 Dec 2019 20:11:23 -0000
Message-ID: <157540388314.4659.4526882624243657711@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191203173638.94919-1-sean@poorly.run>
In-Reply-To: <20191203173638.94919-1-sean@poorly.run>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_dr?=
 =?utf-8?q?m/i915=3A_Add_support_for_HDCP_1=2E4_over_MST_connectors?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEFkZCBzdXBwb3J0IGZvciBI
RENQIDEuNCBvdmVyIE1TVCBjb25uZWN0b3JzClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJl
ZWRlc2t0b3Aub3JnL3Nlcmllcy83MDM5My8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09
CgpBcHBseWluZzogZHJtL2k5MTU6IEZpeCBzaGFfdGV4dCBwb3B1bGF0aW9uIGNvZGUKQXBwbHlp
bmc6IGRybS9pOTE1OiBJbnRlcmNlcHQgQWtzdiB3cml0ZXMgaW4gdGhlIGF1eCBob29rcwpBcHBs
eWluZzogZHJtL2k5MTU6IERpc2FibGUgSERDUCBzaWduYWxsaW5nIG9uIHRyYW5zY29kZXIgZGlz
YWJsZQpBcHBseWluZzogZHJtL2k5MTU6IERvbid0IFdBUk4gb24gSERDUCB0b2dnbGUgaWYgZ2V0
X2h3X3N0YXRlIHJldHVybnMgZmFsc2UKQXBwbHlpbmc6IGRybS9pOTE1OiBDaGFuZ2UgdG9nZ2xl
X3NpZ25hbGxpbmcoKSBhcmd1bWVudCB0byBjb25uZWN0b3IKQXBwbHlpbmc6IGRybS9pOTE1OiBG
YWN0b3Igb3V0IGhkY3AtPnZhbHVlIGFzc2lnbm1lbnRzCkFwcGx5aW5nOiBkcm0vaTkxNTogRG9u
J3QgZnVsbHkgZGlzYWJsZSBIRENQIG9uIGEgcG9ydCBpZiBtdWx0aXBsZSBwaXBlcyBhcmUgdXNp
bmcgaXQKZXJyb3I6IHNoYTEgaW5mb3JtYXRpb24gaXMgbGFja2luZyBvciB1c2VsZXNzIChkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jKS4KZXJyb3I6IGNvdWxkIG5vdCBi
dWlsZCBmYWtlIGFuY2VzdG9yCmhpbnQ6IFVzZSAnZ2l0IGFtIC0tc2hvdy1jdXJyZW50LXBhdGNo
JyB0byBzZWUgdGhlIGZhaWxlZCBwYXRjaApQYXRjaCBmYWlsZWQgYXQgMDAwNyBkcm0vaTkxNTog
RG9uJ3QgZnVsbHkgZGlzYWJsZSBIRENQIG9uIGEgcG9ydCBpZiBtdWx0aXBsZSBwaXBlcyBhcmUg
dXNpbmcgaXQKV2hlbiB5b3UgaGF2ZSByZXNvbHZlZCB0aGlzIHByb2JsZW0sIHJ1biAiZ2l0IGFt
IC0tY29udGludWUiLgpJZiB5b3UgcHJlZmVyIHRvIHNraXAgdGhpcyBwYXRjaCwgcnVuICJnaXQg
YW0gLS1za2lwIiBpbnN0ZWFkLgpUbyByZXN0b3JlIHRoZSBvcmlnaW5hbCBicmFuY2ggYW5kIHN0
b3AgcGF0Y2hpbmcsIHJ1biAiZ2l0IGFtIC0tYWJvcnQiLgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
