Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F905643D5
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 10:55:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EE6D6E0CE;
	Wed, 10 Jul 2019 08:55:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 484 seconds by postgrey-1.36 at gabe;
 Wed, 10 Jul 2019 08:55:02 UTC
Received: from vmicros1.altlinux.org (vmicros1.altlinux.org [194.107.17.57])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7FBB36E0CE;
 Wed, 10 Jul 2019 08:55:02 +0000 (UTC)
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
 by vmicros1.altlinux.org (Postfix) with ESMTP id 0A32472CCDD;
 Wed, 10 Jul 2019 11:46:57 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
 id 00D8C7CCE3A; Wed, 10 Jul 2019 11:46:56 +0300 (MSK)
Date: Wed, 10 Jul 2019 11:46:56 +0300
From: "Dmitry V. Levin" <ldv@altlinux.org>
To: Xi Ruoyao <xry111@mengyan1223.wang>
Message-ID: <20190710084656.GB5447@altlinux.org>
References: <e5baec48e5c362256a631a2d55fbc30251ab5e83.camel@mengyan1223.wang>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e5baec48e5c362256a631a2d55fbc30251ab5e83.camel@mengyan1223.wang>
Subject: Re: [Intel-gfx] kernel oops loading i915 after "x86/asm: Pin
 sensitive CR4 bits" (873d50d58)
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
Cc: Kees Cook <keescook@chromium.org>, kernel-hardening@lists.openwall.com,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Jessica Yu <jeyu@kernel.org>, linux-modules@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiBXZWQsIEp1bCAxMCwgMjAxOSBhdCAwMTo0NDoxN1BNICswODAwLCBYaSBSdW95YW8g
d3JvdGU6Cj4gSGVsbG8sCj4gCj4gV2hlbiBJIHRyeSB0byBidWlsZCBhbmQgcnVuIHRoZSBsYXRl
c3QgbWFpbmxpbmUga2VybmVsLCBpdCBPb3BzIGxvYWRpbmcgaTkxNQo+IG1vZHVsZToKPiAKPiBC
VUc6IHVuYWJsZSB0byBoYW5kbGUgcGFnZSBmYXVsdCBmb3IgYWRkcmVzczogZmZmZmZmZmY5ZWRj
MTU5OAo+ICNQRjogc3VwZXJ2aXNvciB3cml0ZSBhY2Nlc3MgaW4ga2VybmVsIG1vZGUKPiAjUEY6
IGVycm9yX2NvZGUoMHgwMDAzKSAtIHBlcm1pc3Npb25zIHZpb2xhdGlvbgo+IFBHRCAxYTIwYzA2
NyBQNEQgMWEyMGMwNjcgUFVEIDFhMjBkMDYzIFBNRCA4MDAwMDAwMDE5ZTAwMGUxIAo+IE9vcHM6
IDAwMDMgWyMxXSBTTVAgUFRJCj4gCj4gVGhlIGNvbXBsZXRlIGxvZyBpcyBhdHRhY2hlZC4KPiAK
PiBCaXNlY3Rpb24gdGVsbHMgIng4Ni9hc206IFBpbiBzZW5zaXRpdmUgQ1I0IGJpdHMiICg4NzNk
NTBkNTgpIGlzIHRoZSBmaXJzdCAiYmFkIgo+IGNvbW1pdC4gIEkgY2FuIHJldmVydCBpdCBhbmQg
YWxzbyAieDg2L2FzbTogUGluIHNlbnNpdGl2ZSBDUjAgYml0cyIgKDhkYmVjMjdhMikKPiB0byBt
YWtlIHRoZSBrZXJuZWwgInNlZW1zIHRvIiB3b3JrLgo+IAo+IEknbSBub3QgYSBrZXJuZWwgZXhw
ZXJ0IHNvIEkgY2FuJ3QgdGVsbCBpZiB0aGVyZSBpcyBhIGJ1ZyBpbiBLZWVzJyBwYXRjaCwgb3Ig
aGlzCj4gcGF0Y2ggZXhwbG9pdHMgYSBidWcgaW4gaTkxNSBvciBtb2R1bGUgbG9hZGVyLgoKVGhp
cyBzZWVtcyB0byBiZSBhIGtlcm5lbCBidWcgaW50cm9kdWNlZCBhZnRlciB2NS4yLCBzZWUKaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC9DQUhrLT13amgraF8tZmQtZ0p6PXdvcjQyWk5tcXE0
NlFuQjkwanlmenFtS0xzTEZXT2dAbWFpbC5nbWFpbC5jb20vCgoKLS0gCmxkdgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
