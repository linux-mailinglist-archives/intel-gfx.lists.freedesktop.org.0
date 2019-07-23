Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1276719A1
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 15:43:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3BB56E290;
	Tue, 23 Jul 2019 13:43:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6F2C76E290;
 Tue, 23 Jul 2019 13:43:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6711FA00EF;
 Tue, 23 Jul 2019 13:43:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 23 Jul 2019 13:43:49 -0000
Message-ID: <20190723134349.27089.84829@emeril.freedesktop.org>
References: <20190719152314.7706-1-daniel.vetter@ffwll.ch>
X-Patchwork-Hint: ignore
In-Reply-To: <20190719152314.7706-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_drm/vblank=3A_Document_and_fix_vblank_c?=
 =?utf-8?q?ount_barrier_semantics_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggZHJtL3Zi
bGFuazogRG9jdW1lbnQgYW5kIGZpeCB2YmxhbmsgY291bnQgYmFycmllciBzZW1hbnRpY3MgKHJl
djIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82Mzk0
OS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdp
bi9kcm0tdGlwCjM3MTIyNGU3NjJlMiBkcm0vdmJsYW5rOiBEb2N1bWVudCBhbmQgZml4IHZibGFu
ayBjb3VudCBiYXJyaWVyIHNlbWFudGljcwotOjI4OiBFUlJPUjpHSVRfQ09NTUlUX0lEOiBQbGVh
c2UgdXNlIGdpdCBjb21taXQgZGVzY3JpcHRpb24gc3R5bGUgJ2NvbW1pdCA8MTIrIGNoYXJzIG9m
IHNoYTE+ICgiPHRpdGxlIGxpbmU+IiknIC0gaWU6ICdjb21taXQgNTcwZTg2OTYzYTUxICgiZHJt
OiBXaWRlbiB2YmxhbmsgY291bnQgdG8gNjQtYml0cyBbdjNdIiknCiMyODogClJlZmVyZW5jZXM6
IDU3MGU4Njk2M2E1MSAoImRybTogV2lkZW4gdmJsYW5rIGNvdW50IHRvIDY0LWJpdHMgW3YzXSIp
CgotOjE2MTogV0FSTklORzpOT19BVVRIT1JfU0lHTl9PRkY6IE1pc3NpbmcgU2lnbmVkLW9mZi1i
eTogbGluZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAnRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBmZndsbC5jaD4nCgp0b3RhbDogMSBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAx
MTMgbGluZXMgY2hlY2tlZAozODE5MGQ2N2ExZTcgZHJtL3ZrbXM6IFVzZSB3YWl0X2Zvcl9mbGlw
X2RvbmUKLToyNzogV0FSTklORzpOT19BVVRIT1JfU0lHTl9PRkY6IE1pc3NpbmcgU2lnbmVkLW9m
Zi1ieTogbGluZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAnRGFuaWVsIFZldHRlciA8ZGFuaWVs
LnZldHRlckBmZndsbC5jaD4nCgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tz
LCA4IGxpbmVzIGNoZWNrZWQKZTcwMDFjMWUxOGVhIGRybS92a21zOiBSZWR1Y2UgY3JpdGljYWwg
c2VjdGlvbiBpbiB2Ymxhbmtfc2ltdWxhdGUKLTo5MjogV0FSTklORzpOT19BVVRIT1JfU0lHTl9P
RkY6IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTogbGluZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAn
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4nCgp0b3RhbDogMCBlcnJvcnMs
IDEgd2FybmluZ3MsIDAgY2hlY2tzLCAzNiBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
