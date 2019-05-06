Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95352148EC
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2019 13:29:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2E4289890;
	Mon,  6 May 2019 11:29:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E56A89890;
 Mon,  6 May 2019 11:29:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 28D00A00EF;
 Mon,  6 May 2019 11:29:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Mon, 06 May 2019 11:29:31 -0000
Message-ID: <20190506112931.16844.8491@emeril.freedesktop.org>
References: <20190502232648.4450-1-imre.deak@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190502232648.4450-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Add_support_for_asynchronous_display_power_disab?=
 =?utf-8?q?ling_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEFkZCBzdXBwb3J0IGZvciBh
c3luY2hyb25vdXMgZGlzcGxheSBwb3dlciBkaXNhYmxpbmcgKHJldjIpClVSTCAgIDogaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MDI0Mi8KU3RhdGUgOiB3YXJuaW5n
Cgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjVkMDcxMDY3
ODY2YSBkcm0vaTkxNTogQWRkIHN1cHBvcnQgZm9yIHRyYWNraW5nIHdha2VyZWZzIHcvbyBwb3dl
ci1vbiBndWFyYW50ZWUKZDcxZTE4MWU3YTdlIGRybS9pOTE1OiBWZXJpZnkgcG93ZXIgZG9tYWlu
cyBzdGF0ZSBkdXJpbmcgc3VzcGVuZCBpbiBhbGwgY2FzZXMKZjE2OTRmOWM4MzViIGRybS9pOTE1
OiBBZGQgc3VwcG9ydCBmb3IgYXN5bmNocm9ub3VzIGRpc3BsYXkgcG93ZXIgZGlzYWJsaW5nCmRl
ZmUxY2JhN2RjNyBkcm0vaTkxNTogRGlzYWJsZSBwb3dlciBhc3luY2hyb25vdXNseSBkdXJpbmcg
RFAgQVVYIHRyYW5zZmVycwo0Y2E4MGU4NDUwNTMgZHJtL2k5MTU6IFdBUk4gZm9yIGVEUCBlbmNv
ZGVycyBpbiBpbnRlbF9kcF9kZXRlY3RfZHBjZCgpCmNlZWE0YjZlYjY1ZCBkcm0vaTkxNTogUmVt
b3ZlIHRoZSB1bm5lZWRlZCBBVVggcG93ZXIgcmVmIGZyb20gaW50ZWxfZHBfZGV0ZWN0KCkKNTk5
ZThlZjBiYTgyIGRybS9pOTE1OiBSZW1vdmUgdGhlIHVubmVlZGVkIEFVWCBwb3dlciByZWYgZnJv
bSBpbnRlbF9kcF9ocGRfcHVsc2UoKQotOjEyOiBFUlJPUjpHSVRfQ09NTUlUX0lEOiBQbGVhc2Ug
dXNlIGdpdCBjb21taXQgZGVzY3JpcHRpb24gc3R5bGUgJ2NvbW1pdCA8MTIrIGNoYXJzIG9mIHNo
YTE+ICgiPHRpdGxlIGxpbmU+IiknIC0gaWU6ICdjb21taXQgMWM3NjdiMzM5YjM5ICgiZHJtL2k5
MTU6IHRha2UgZGlzcGxheSBwb3J0IHBvd2VyIGRvbWFpbiBpbiBEUCBIUEQgaGFuZGxlciIpJwoj
MTI6IApjb21taXQgMWM3NjdiMzM5YjM5MzhiMTkwNzZmZmRjOWQ3MGFhMWU0MjM1YTQ1YgoKLToy
MTogRVJST1I6R0lUX0NPTU1JVF9JRDogUGxlYXNlIHVzZSBnaXQgY29tbWl0IGRlc2NyaXB0aW9u
IHN0eWxlICdjb21taXQgPDEyKyBjaGFycyBvZiBzaGExPiAoIjx0aXRsZSBsaW5lPiIpJyAtIGll
OiAnY29tbWl0IDdkMjNlM2MzN2JiMyAoImRybS9pOTE1OiBDbGVhbmluZyB1cCBpbnRlbF9kcF9o
cGRfcHVsc2UiKScKIzIxOiAKY29tbWl0IDdkMjNlM2MzN2JiM2ZjNjk1MmRjODQwMDdlZTYwY2I1
MzNmZDJkNWMKCnRvdGFsOiAyIGVycm9ycywgMCB3YXJuaW5ncywgMCBjaGVja3MsIDY4IGxpbmVz
IGNoZWNrZWQKMDQzMGRkM2FkYmQwIGRybS9pOTE1OiBSZXBsYWNlIHVzZSBvZiBQTExTIHBvd2Vy
IGRvbWFpbiB3aXRoIERJU1BMQVlfQ09SRSBkb21haW4KY2IyY2I4NzhjZGQ3IGRybS9pOTE1OiBB
dm9pZCB0YWtpbmcgdGhlIFBQUyBsb2NrIGZvciBub24tZURQL1ZMVi9DSFYKZTNkMTQ4Y2JlNDE0
IGRybS9pOTE1OiBBc3NlcnQgdGhhdCBUeXBlQyBwb3J0cyBhcmUgbm90IHVzZWQgZm9yIGVEUAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
