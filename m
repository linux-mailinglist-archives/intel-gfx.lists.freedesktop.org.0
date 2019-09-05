Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED58AAC7C
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 21:53:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEF6189D67;
	Thu,  5 Sep 2019 19:53:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8A71B89D67;
 Thu,  5 Sep 2019 19:53:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 80F85A363D;
 Thu,  5 Sep 2019 19:53:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Thu, 05 Sep 2019 19:53:56 -0000
Message-ID: <20190905195356.8129.40288@emeril.freedesktop.org>
References: <20190903190642.32588-1-daniel.vetter@ffwll.ch>
X-Patchwork-Hint: ignore
In-Reply-To: <20190903190642.32588-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_drm/atomic=3A_Take_the_atomic_toys_away?=
 =?utf-8?q?_from_X_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggZHJtL2F0
b21pYzogVGFrZSB0aGUgYXRvbWljIHRveXMgYXdheSBmcm9tIFggKHJldjMpClVSTCAgIDogaHR0
cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NjE4MC8KU3RhdGUgOiB3YXJu
aW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmI4MDA4
ZTFjNTJkMCBkcm0vYXRvbWljOiBUYWtlIHRoZSBhdG9taWMgdG95cyBhd2F5IGZyb20gWAotOjM5
OiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9OR19MSU5FOiBQb3NzaWJsZSB1bndyYXBwZWQgY29tbWl0
IGRlc2NyaXB0aW9uIChwcmVmZXIgYSBtYXhpbXVtIDc1IGNoYXJzIHBlciBsaW5lKQojMzk6IApS
ZWZlcmVuY2VzOiBhYmJjMDY5N2Q1ZmIgKCJkcm0vZmI6IHJldmVydCB0aGUgaTkxNSBBY3R1YWxs
eSBjb25maWd1cmUgdW50aWxlZCBkaXNwbGF5cyBmcm9tIG1hc3RlciIpCgotOjM5OiBFUlJPUjpH
SVRfQ09NTUlUX0lEOiBQbGVhc2UgdXNlIGdpdCBjb21taXQgZGVzY3JpcHRpb24gc3R5bGUgJ2Nv
bW1pdCA8MTIrIGNoYXJzIG9mIHNoYTE+ICgiPHRpdGxlIGxpbmU+IiknIC0gaWU6ICdjb21taXQg
YWJiYzA2OTdkNWZiICgiZHJtL2ZiOiByZXZlcnQgdGhlIGk5MTUgQWN0dWFsbHkgY29uZmlndXJl
IHVudGlsZWQgZGlzcGxheXMgZnJvbSBtYXN0ZXIiKScKIzM5OiAKUmVmZXJlbmNlczogYWJiYzA2
OTdkNWZiICgiZHJtL2ZiOiByZXZlcnQgdGhlIGk5MTUgQWN0dWFsbHkgY29uZmlndXJlIHVudGls
ZWQgZGlzcGxheXMgZnJvbSBtYXN0ZXIiKQoKLTo3MTogV0FSTklORzpOT19BVVRIT1JfU0lHTl9P
RkY6IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTogbGluZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAn
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4nCgp0b3RhbDogMSBlcnJvcnMs
IDIgd2FybmluZ3MsIDAgY2hlY2tzLCAxMyBsaW5lcyBjaGVja2VkCjJjMjdlMWMyZTNmYiBkcm0v
YXRvbWljOiBSZWplY3QgRkxJUF9BU1lOQyB1bmNvbmRpdGlvbmFsbHkKLTozODogV0FSTklORzpO
T19BVVRIT1JfU0lHTl9PRkY6IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTogbGluZSBieSBub21pbmFs
IHBhdGNoIGF1dGhvciAnRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4nCgp0
b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCA5IGxpbmVzIGNoZWNrZWQKY2M4
MjlhZDA1MjUwIGRybS9hdG9taWM6IFJlbmFtZSBjcnRjX3N0YXRlLT5wYWdlZmxpcF9mbGFncyB0
byBhc3luY19mbGlwCi06MTI2OiBXQVJOSU5HOk5PX0FVVEhPUl9TSUdOX09GRjogTWlzc2luZyBT
aWduZWQtb2ZmLWJ5OiBsaW5lIGJ5IG5vbWluYWwgcGF0Y2ggYXV0aG9yICdEYW5pZWwgVmV0dGVy
IDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPicKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywg
MCBjaGVja3MsIDY1IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
