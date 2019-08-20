Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C97956FD
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 07:56:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3CB06E5DA;
	Tue, 20 Aug 2019 05:56:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B1056E5DA;
 Tue, 20 Aug 2019 05:56:29 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id A94A668B02; Tue, 20 Aug 2019 07:56:23 +0200 (CEST)
Date: Tue, 20 Aug 2019 07:56:23 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Message-ID: <20190820055623.GC27501@lst.de>
References: <20190820031359.11717-1-sergey.senozhatsky@gmail.com>
 <20190820031359.11717-2-sergey.senozhatsky@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820031359.11717-2-sergey.senozhatsky@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCHv2 2/2] i915: do not leak module ref counter
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
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, David Howells <dhowells@redhat.com>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBBdWcgMjAsIDIwMTkgYXQgMTI6MTM6NTlQTSArMDkwMCwgU2VyZ2V5IFNlbm96aGF0
c2t5IHdyb3RlOgo+IEFsd2F5cyBwdXRfZmlsZXN5c3RlbSgpIGluIGk5MTVfZ2VtZnNfaW5pdCgp
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFNlcmdleSBTZW5vemhhdHNreSA8c2VyZ2V5LnNlbm96aGF0
c2t5QGdtYWlsLmNvbT4KPiAtLS0KPiAgLSB2MjogcmViYXNlZCAoaTkxNSBkb2VzIG5vdCByZW1v
dW50IGdlbWZzIGFueW1vcmUpCgpXaGljaCBtZWFucyBpdCByZWFsIGRvZXNuJ3QgbmVlZCBpdHMg
bW91bnQgYW55b3JlLCBhbmQgdGh1cyBjYW4gdXNlCnBsYWluIG9sZCBzaG1lbV9maWxlX3NldHVw
IGFuZCBkb2Vzbid0IG5lZWQgdG8gbWVzcyB3aXRoIGZpbGUgc3lzdGVtCnR5cGVzIGF0IGFsbC4K
CkFzc3VtaW5nIHdlIGZpbmQgYSBsZWdpdGltYXRlIHJhc29uIGZvciB3aHkgYSBkcml2ZXIgc2hv
dWxkIGJlIGFibGUKdG8gY3JlYXRlIGEga2VybmVsIG1vdW50IG9yIGEgZmlsZSBzeXN0ZW0gdHlw
ZSB3aGVyZSBpdCBkb2Vzbid0IGhhdmUKYWNjZXNzIHRvIHRoZSBzdHJ1Y3QgZmlsZV9zeXN0ZW1f
dHlwZSBhbiBBUEkgdGhhdCBtb3VudCBieSBmaWxlIHN5c3RlbQpuYW1lIGFuZCB0aHVzIGhpZGVz
IHRoZSBnZXRfZnNfdHlwZSBhbmQgcHV0X2ZpbGVzeXN0ZW0gd291bGQgYmUgYSBtdWNoCmJldHRl
ciBBUEkgdGhhbiBhZGRpbmcgdGhpcyByYW5kb20gZXhwb3J0LgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
