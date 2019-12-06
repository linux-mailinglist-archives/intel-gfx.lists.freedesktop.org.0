Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36568114B08
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 03:46:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E33B46F953;
	Fri,  6 Dec 2019 02:46:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B5D3E6F94F;
 Fri,  6 Dec 2019 02:46:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AB2BBA0091;
 Fri,  6 Dec 2019 02:46:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rajat Jain" <rajatja@google.com>
Date: Fri, 06 Dec 2019 02:46:28 -0000
Message-ID: <157560038866.31674.17114392841945577844@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191205093346.57930-1-rajatja@google.com>
In-Reply-To: <20191205093346.57930-1-rajatja@google.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5Bv3=2C1/3=5D_drm/i915=3A_Move_the_cod?=
 =?utf-8?q?e_to_populate_ACPI_device_ID_into_intel=5Facpi?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3YzLDEv
M10gZHJtL2k5MTU6IE1vdmUgdGhlIGNvZGUgdG8gcG9wdWxhdGUgQUNQSSBkZXZpY2UgSUQgaW50
byBpbnRlbF9hY3BpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy83MDUyOS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3Bh
dGNoIG9yaWdpbi9kcm0tdGlwCjNmZmZhNjQwMWY0ZCBkcm0vaTkxNTogTW92ZSB0aGUgY29kZSB0
byBwb3B1bGF0ZSBBQ1BJIGRldmljZSBJRCBpbnRvIGludGVsX2FjcGkKOTc2YzMxM2E0YTYxIGRy
bS9pOTE1OiBMb29rdXAgYW5kIGF0dGFjaCBBQ1BJIGRldmljZSBub2RlIGZvciBjb25uZWN0b3Jz
CmUwNzRjMWM0YjY1NiBkcm0vaTkxNTogQWRkIHN1cHBvcnQgZm9yIGludGVncmF0ZWQgcHJpdmFj
eSBzY3JlZW5zCi06MjA1OiBXQVJOSU5HOkZJTEVfUEFUSF9DSEFOR0VTOiBhZGRlZCwgbW92ZWQg
b3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJTIG5lZWQgdXBkYXRpbmc/CiMyMDU6
IApuZXcgZmlsZSBtb2RlIDEwMDY0NAoKLTozMDc6IENIRUNLOkxJTkVfU1BBQ0lORzogUGxlYXNl
IHVzZSBhIGJsYW5rIGxpbmUgYWZ0ZXIgZnVuY3Rpb24vc3RydWN0L3VuaW9uL2VudW0gZGVjbGFy
YXRpb25zCiMzMDc6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHJp
dmFjeV9zY3JlZW4uaDoyMDoKK30KK3ZvaWQgaW50ZWxfcHJpdmFjeV9zY3JlZW5fc2V0X3ZhbChz
dHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsCgp0b3RhbDogMCBlcnJvcnMsIDEgd2Fy
bmluZ3MsIDEgY2hlY2tzLCAyNDYgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
