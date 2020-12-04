Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E58D2CE490
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 01:45:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CA9F6E0DE;
	Fri,  4 Dec 2020 00:45:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CC86E6E0DE;
 Fri,  4 Dec 2020 00:45:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C3161A8835;
 Fri,  4 Dec 2020 00:45:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Fri, 04 Dec 2020 00:45:44 -0000
Message-ID: <160704274477.27541.7349299119659359071@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201203235358.18041-1-manasi.d.navare@intel.com>
In-Reply-To: <20201203235358.18041-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv3=2C1/9=5D_drm/i915/display/vrr=3A?=
 =?utf-8?q?_Create_VRR_file_and_add_VRR_capability_check?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
OV0gZHJtL2k5MTUvZGlzcGxheS92cnI6IENyZWF0ZSBWUlIgZmlsZSBhbmQgYWRkIFZSUiBjYXBh
YmlsaXR5IGNoZWNrClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy84NDU1NS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3Bh
dGNoIG9yaWdpbi9kcm0tdGlwCjBmNTI1ZmViYzdmNCBkcm0vaTkxNS9kaXNwbGF5L3ZycjogQ3Jl
YXRlIFZSUiBmaWxlIGFuZCBhZGQgVlJSIGNhcGFiaWxpdHkgY2hlY2sKLTozNjogV0FSTklORzpG
SUxFX1BBVEhfQ0hBTkdFUzogYWRkZWQsIG1vdmVkIG9yIGRlbGV0ZWQgZmlsZShzKSwgZG9lcyBN
QUlOVEFJTkVSUyBuZWVkIHVwZGF0aW5nPwojMzY6IApuZXcgZmlsZSBtb2RlIDEwMDY0NAoKLTo0
MTogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBJbXByb3BlciBTUERYIGNvbW1lbnQgc3R5bGUg
Zm9yICdkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jJywgcGxlYXNlIHVz
ZSAnLy8nIGluc3RlYWQKIzQxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Zyci5jOjE6CisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUICovCgotOjQxOiBX
QVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyIHRhZyBpbiBsaW5lIDEKIzQxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Zyci5jOjE6CisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlU
ICovCgotOjgyOiBXQVJOSU5HOkJMT0NLX0NPTU1FTlRfU1RZTEU6IEJsb2NrIGNvbW1lbnRzIHNo
b3VsZCBhbGlnbiB0aGUgKiBvbiBlYWNoIGxpbmUKIzgyOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Zyci5oOjQ6CisgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBD
b3Jwb3JhdGlvbgorKi8KCnRvdGFsOiAwIGVycm9ycywgNCB3YXJuaW5ncywgMCBjaGVja3MsIDYy
IGxpbmVzIGNoZWNrZWQKN2ZhMjk2NzQyYzM3IGRybS9pOTE1L2Rpc3BsYXkvZHA6IEF0dGFjaCBh
bmQgc2V0IGRybSBjb25uZWN0b3IgVlJSIHByb3BlcnR5CmY1YmE0Mjc0YTczMSBkcm0vaTkxNS9k
aXNwbGF5L2RwOiBDb21wdXRlIFZSUiBzdGF0ZSBpbiBhdG9taWNfY2hlY2sKODY0NmI4NjExZmVm
IGRybS9pOTE1L2Rpc3BsYXkvZHA6IERvIG5vdCBlbmFibGUgUFNSIGlmIFZSUiBpcyBlbmFibGVk
CmNiNGY3MmJlMGNmYiBkcm0vaTkxNS9kaXNwbGF5L3ZycjogQ29uZmlndXJlIGFuZCBlbmFibGUg
VlJSIGluIG1vZGVzZXQgZW5hYmxlCmFmZTVmNDliYzkyMyBkcm0vaTkxNS9kaXNwbGF5L3Zycjog
U2VuZCBWUlIgcHVzaCB0byBmbGlwIHRoZSBmcmFtZQotOjUxOiBXQVJOSU5HOkxPTkdfTElORTog
bGluZSBsZW5ndGggb2YgMTAzIGV4Y2VlZHMgMTAwIGNvbHVtbnMKIzUxOiBGSUxFOiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jOjEwNToKKwkJCQkJCQkJCSAgICAg
ICBWQkxBTktfRVZBU0lPTl9USU1FX1VTKTsKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywg
MCBjaGVja3MsIDU3IGxpbmVzIGNoZWNrZWQKMDNhMzY0YTcyMjRlIGRybS9pOTE1L2Rpc3BsYXkv
dnJyOiBEaXNhYmxlIFZSUiBpbiBtb2Rlc2V0IGRpc2FibGUgcGF0aAowMzViM2Y5MmJiNTIgZHJt
L2k5MTUvZGlzcGxheS92cnI6IFNldCBJR05PUkVfTVNBX1BBUiBzdGF0ZSBpbiBEUCBTaW5rCjA2
OTc4NDZmMjg4YyBkcm0vaTkxNS9kaXNwbGF5OiBBZGQgSFcgc3RhdGUgcmVhZG91dCBmb3IgVlJS
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
