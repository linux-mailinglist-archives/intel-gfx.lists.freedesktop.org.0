Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2ACB827E8
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 01:34:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AB1E8915A;
	Mon,  5 Aug 2019 23:34:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33E6B8915A;
 Mon,  5 Aug 2019 23:34:08 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1humU9-0007b9-41; Mon, 05 Aug 2019 23:33:49 +0000
Date: Tue, 6 Aug 2019 00:33:49 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
Message-ID: <20190805233349.GA27746@ZenIV.linux.org.uk>
References: <20190805160307.5418-1-sergey.senozhatsky@gmail.com>
 <20190805160307.5418-3-sergey.senozhatsky@gmail.com>
 <20190805181255.GH1131@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805181255.GH1131@ZenIV.linux.org.uk>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCHv2 2/3] i915: convert to new mount API
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, David Howells <dhowells@redhat.com>,
 dri-devel@lists.freedesktop.org, linux-fsdevel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBBdWcgMDUsIDIwMTkgYXQgMDc6MTI6NTVQTSArMDEwMCwgQWwgVmlybyB3cm90ZToK
PiBPbiBUdWUsIEF1ZyAwNiwgMjAxOSBhdCAwMTowMzowNkFNICswOTAwLCBTZXJnZXkgU2Vub3po
YXRza3kgd3JvdGU6Cj4gPiB0bXBmcyBkb2VzIG5vdCBzZXQgLT5yZW1vdW50X2ZzKCkgYW55bW9y
ZSBhbmQgaXRzIHVzZXJzIG5lZWQKPiA+IHRvIGJlIGNvbnZlcnRlZCB0byBuZXcgbW91bnQgQVBJ
Lgo+IAo+IENvdWxkIHlvdSBleHBsYWluIHdoeSB0aGUgZGV2aWwgZG8geW91IGJvdGhlciB3aXRo
IHJlbW91bnQgYXQgYWxsPwo+IFdoeSBub3QgcGFzcyB0aGUgcmlnaHQgb3B0aW9ucyB3aGVuIG1v
dW50aW5nIHRoZSBkYW1uIHRoaW5nPwoKSW5jaWRlbnRhbGx5LCB0aGUgb25seSByZW1haW5pbmcg
bW9kdWxhciB1c2VyIG9mIGdldF9mc190eXBlKCkgaXMgdGhlCnNhbWUgaTkxNV9nZW1mcy5jLiAg
QW5kIEkgd29uZGVyIGlmIHdlIHNob3VsZCBhaW0gZm9yIHVuZXhwb3J0aW5nCnRoZSBkYW1uIHRo
aW5nIGluc3RlYWQgb2YgZXhwb3J0aW5nIHB1dF9maWxlc3lzdGVtKCkuLi4KCk5vdGUgdGhhdCB1
c2VycyBpbiB0b21veW8gYW5kIGFwcGFybW9yIGFyZSBib2d1cyAtIHRoZXkgYXJlIGluIHRoZQpp
bnN0YW5jZXMgb2YgaWxsLWRlZmluZWQgbWV0aG9kIHRoYXQgbmVlZHMgdG8gYmUgc3BsaXQgYW5k
IG1vdmVkLAp3aXRoIHRoZSBsb29rdXBzIChmcyB0eXBlIGluY2x1ZGVkKSByZXBsYWNlZCB3aXRo
IGNhbGxlcnMgcGFzc2luZwp0aGUgdmFsdWVzIHRoZXkgbG9vayB1cCBhbmQgd2lsbCBlbmQgdXAg
dXNpbmcuCgpJT1csIG91dHNpZGUgb2YgY29yZSBWRlMgd2UgaGF2ZSB2ZXJ5IGZldyBsZWdpdGlt
YXRlIHVzZXJzLCBhbmQgdGhlCm9uZSBpbiBrZXJuZWwvdHJhY2UgbWlnaHQgYmUgYmV0dGVyIG9m
ZiBhcyB2ZnNfc3VibW91bnRfYnlfbmFtZSgpLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
