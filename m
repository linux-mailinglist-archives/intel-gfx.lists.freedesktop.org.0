Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC50284BB0
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 14:33:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EFFF6E6C8;
	Wed,  7 Aug 2019 12:33:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 404E16E6C7;
 Wed,  7 Aug 2019 12:33:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3C306A0071;
 Wed,  7 Aug 2019 12:33:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 07 Aug 2019 12:33:51 -0000
Message-ID: <20190807123351.24671.99698@emeril.freedesktop.org>
References: <20190807083702.16349-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190807083702.16349-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5Bv3=5D_drm/i915=3A_Rename_engines_to_matc?=
 =?utf-8?q?h_their_user_interface_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3YzXSBk
cm0vaTkxNTogUmVuYW1lIGVuZ2luZXMgdG8gbWF0Y2ggdGhlaXIgdXNlciBpbnRlcmZhY2UgKHJl
djMpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NDgy
NC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBzcGFyc2Ugb3JpZ2luL2Ry
bS10aXAKU3BhcnNlIHZlcnNpb246IHYwLjUuMgpDb21taXQ6IGRybS9pOTE1OiBSZW5hbWUgZW5n
aW5lcyB0byBtYXRjaCB0aGVpciB1c2VyIGludGVyZmFjZQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkx
NTogVXNlIGludGVsX2VuZ2luZV9sb29rdXBfdXNlciBmb3IgcHJvYmluZyBIQVNfQlNEIGV0YwpP
a2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogRGVmZXIgZmluYWwgaW50ZWxfd2FrZXJlZl9wdXQgdG8g
cHJvY2VzcyBjb250ZXh0Citkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9lbmdpbmUu
YzoxOToyNjogZXJyb3I6IGluY29ycmVjdCB0eXBlIGluIGNvbmRpdGlvbmFsCitkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9lbmdpbmUuYzoxOToyNjogICAgZ290IHVua25vd24gdHlw
ZSAxMSA8bm9pZGVudD4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
