Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3683BFC298
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 10:30:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E55D6E523;
	Thu, 14 Nov 2019 09:30:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4BAA26E51B;
 Thu, 14 Nov 2019 09:30:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 44B8AA0096;
 Thu, 14 Nov 2019 09:30:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 14 Nov 2019 09:30:19 -0000
Message-ID: <157372381927.31208.5000298297317911550@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191114091357.10844-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191114091357.10844-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/selftests=3A_Be_explicit_in_ERR=5FPTR_handling?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzOiBCZSBleHBs
aWNpdCBpbiBFUlJfUFRSIGhhbmRsaW5nClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRl
c2t0b3Aub3JnL3Nlcmllcy82OTQ1Ny8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09Cgok
IGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjQ2ZDQyMGZkNjA3YyBkcm0vaTkxNS9zZWxm
dGVzdHM6IEJlIGV4cGxpY2l0IGluIEVSUl9QVFIgaGFuZGxpbmcKLToxMTogV0FSTklORzpDT01N
SVRfTE9HX0xPTkdfTElORTogUG9zc2libGUgdW53cmFwcGVkIGNvbW1pdCBkZXNjcmlwdGlvbiAo
cHJlZmVyIGEgbWF4aW11bSA3NSBjaGFycyBwZXIgbGluZSkKIzExOiAKUmVmZXJlbmNlczogZjQw
YTdiNzU1OGVmICgiZHJtL2k5MTU6IEluaXRpYWwgc2VsZnRlc3RzIGZvciBleGVyY2lzaW5nIGV2
aWN0aW9uIikKCi06MTE6IEVSUk9SOkdJVF9DT01NSVRfSUQ6IFBsZWFzZSB1c2UgZ2l0IGNvbW1p
dCBkZXNjcmlwdGlvbiBzdHlsZSAnY29tbWl0IDwxMisgY2hhcnMgb2Ygc2hhMT4gKCI8dGl0bGUg
bGluZT4iKScgLSBpZTogJ2NvbW1pdCBmNDBhN2I3NTU4ZWYgKCJkcm0vaTkxNTogSW5pdGlhbCBz
ZWxmdGVzdHMgZm9yIGV4ZXJjaXNpbmcgZXZpY3Rpb24iKScKIzExOiAKUmVmZXJlbmNlczogZjQw
YTdiNzU1OGVmICgiZHJtL2k5MTU6IEluaXRpYWwgc2VsZnRlc3RzIGZvciBleGVyY2lzaW5nIGV2
aWN0aW9uIikKCi06MjU6IFdBUk5JTkc6TE9OR19MSU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3Rl
cnMKIzI1OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZXZp
Y3QuYzoyMDI6CisJCXByX2VycigiRmFpbGVkIHRvIGV2aWN0K2luc2VydCwgaTkxNV9nZW1fb2Jq
ZWN0X2dndHRfcGluIHJldHVybmVkIGVycj0lZFxuIiwgKGludClQVFJfRVJSX09SX1pFUk8odm1h
KSk7Cgp0b3RhbDogMSBlcnJvcnMsIDIgd2FybmluZ3MsIDAgY2hlY2tzLCAxMCBsaW5lcyBjaGVj
a2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
