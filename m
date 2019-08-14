Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4318DD21
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 20:40:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C14B06E7C6;
	Wed, 14 Aug 2019 18:40:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 727416E7C1;
 Wed, 14 Aug 2019 18:40:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6734BA00FE;
 Wed, 14 Aug 2019 18:40:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 14 Aug 2019 18:40:14 -0000
Message-ID: <20190814184014.21410.44654@emeril.freedesktop.org>
References: <20190814182254.24955-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190814182254.24955-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_ttm?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogdHRtClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NTE5NC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1t
YXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmY5OGY1M2ZmNTdiZCB0dG0K
LTo4OiBXQVJOSU5HOkNPTU1JVF9NRVNTQUdFOiBNaXNzaW5nIGNvbW1pdCBkZXNjcmlwdGlvbiAt
IEFkZCBhbiBhcHByb3ByaWF0ZSBvbmUKCi06MzM6IFdBUk5JTkc6RklMRV9QQVRIX0NIQU5HRVM6
IGFkZGVkLCBtb3ZlZCBvciBkZWxldGVkIGZpbGUocyksIGRvZXMgTUFJTlRBSU5FUlMgbmVlZCB1
cGRhdGluZz8KIzMzOiAKbmV3IGZpbGUgbW9kZSAxMDA2NDQKCi06NDk6IFdBUk5JTkc6U1BEWF9M
SUNFTlNFX1RBRzogSW1wcm9wZXIgU1BEWCBjb21tZW50IHN0eWxlIGZvciAnZHJpdmVycy9ncHUv
ZHJtL2k5MTUvdHRtL2k5MTVfdHRtX2Rydi5jJywgcGxlYXNlIHVzZSAnLy8nIGluc3RlYWQKIzQ5
OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS90dG0vaTkxNV90dG1fZHJ2LmM6MToKKy8qIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQgKi8KCi06NDk6IFdBUk5JTkc6U1BEWF9MSUNFTlNF
X1RBRzogTWlzc2luZyBvciBtYWxmb3JtZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIGlu
IGxpbmUgMQojNDk6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3R0bS9pOTE1X3R0bV9kcnYu
YzoxOgorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLwoKLTo3NzogV0FSTklORzpT
UERYX0xJQ0VOU0VfVEFHOiBJbXByb3BlciBTUERYIGNvbW1lbnQgc3R5bGUgZm9yICdkcml2ZXJz
L2dwdS9kcm0vaTkxNS90dG0vaTkxNV90dG1fcHBndHQuYycsIHBsZWFzZSB1c2UgJy8vJyBpbnN0
ZWFkCiM3NzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvdHRtL2k5MTVfdHRtX3BwZ3R0LmM6
MToKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQgKi8KCi06Nzc6IFdBUk5JTkc6U1BE
WF9MSUNFTlNFX1RBRzogTWlzc2luZyBvciBtYWxmb3JtZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXIgdGFnIGluIGxpbmUgMQojNzc6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3R0bS9pOTE1
X3R0bV9wcGd0dC5jOjE6CisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUICovCgotOjE2
OTogQ0hFQ0s6UEFSRU5USEVTSVNfQUxJR05NRU5UOiBBbGlnbm1lbnQgc2hvdWxkIG1hdGNoIG9w
ZW4gcGFyZW50aGVzaXMKIzE2OTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvdHRtL2k5MTVf
dHRtX3BwZ3R0LmM6OTM6CitzdGF0aWMgdm9pZCBwcGd0dF9pb19tZW1fZnJlZShzdHJ1Y3QgdHRt
X2JvX2RldmljZSAqYmRldiwKKwkJCSAgICAgICBzdHJ1Y3QgdHRtX21lbV9yZWcgKm1lbSkKCi06
Mjc4OiBFUlJPUjpNSVNTSU5HX1NJR05fT0ZGOiBNaXNzaW5nIFNpZ25lZC1vZmYtYnk6IGxpbmUo
cykKCnRvdGFsOiAxIGVycm9ycywgNiB3YXJuaW5ncywgMSBjaGVja3MsIDIzNiBsaW5lcyBjaGVj
a2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
