Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B8ED850F
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 02:48:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63AB189EB8;
	Wed, 16 Oct 2019 00:48:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 961BB89EB8;
 Wed, 16 Oct 2019 00:48:28 +0000 (UTC)
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iKXUD-0005ri-Tc; Wed, 16 Oct 2019 00:48:21 +0000
Date: Tue, 15 Oct 2019 17:48:21 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Changbin Du <changbin.du@gmail.com>
Message-ID: <20191016004821.GI32665@bombadil.infradead.org>
References: <20191013055359.23312-1-changbin.du@gmail.com>
 <875zkrd7nq.fsf@intel.com>
 <ECADFF3FD767C149AD96A924E7EA6EAF977CAF09@USCULXMSG01.am.sony.com>
 <7e7557b5-469f-3e63-6254-53dab2d7234a@suse.de>
 <20191015115439.GE32665@bombadil.infradead.org>
 <20191016000322.7dnuwvxqtdbg7clq@mail.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016000322.7dnuwvxqtdbg7clq@mail.google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pf6bbQYx9hUE+6rFYONnUuY9TK+2idQNGK21XGkY2xo=; b=qU7sjU5uXXip0NogETsugUAi3
 jtRE/3LcBLi9RdoLLx/XlPfCCqP/SEyUzVoQs8WqvIypx8a18jDctjkK4Re6BQG2NHTAYVe2clHx9
 Fc3+P2BkHiuODGY67O+nE61aVcc/8GpDa/jzNwRrmBaE2id/NXw+dKOwpSr6xQnMsQ4fuePOFe+js
 JIH8ZaatXc+A7TE44A1jvUJ6kUvX7Z+zadosMUcWzpR9cy44tC5hgJou/w2EXK7tpk4l7WdxUdnN+
 jZ8v5qs2XXayMAz4jgQI/jbaEXemK0icN8biguipxmOtXSmNRCQ8+4zKpkdeeh7JWzTQO0Suarzpb
 TMB4py35Q==;
Subject: Re: [Intel-gfx] [PATCH] kernel-doc: rename the kernel-doc directive
 'functions' to 'specific'
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
Cc: linux-usb@vger.kernel.org, linux-kselftest@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-pci@vger.kernel.org, Tim.Bird@sony.com,
 corbet@lwn.net, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, dri-devel@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>, intel-gfx@lists.freedesktop.org,
 linux-fpga@vger.kernel.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBPY3QgMTYsIDIwMTkgYXQgMDg6MDM6MjRBTSArMDgwMCwgQ2hhbmdiaW4gRHUgd3Jv
dGU6Cj4gT24gVHVlLCBPY3QgMTUsIDIwMTkgYXQgMDQ6NTQ6MzlBTSAtMDcwMCwgTWF0dGhldyBX
aWxjb3ggd3JvdGU6Cj4gPiBPbiBUdWUsIE9jdCAxNSwgMjAxOSBhdCAxMToyNTo1M0FNICswMjAw
LCBUaG9tYXMgWmltbWVybWFubiB3cm90ZToKPiA+ID4gPiBNeSBwcmVmZXJlbmNlIHdvdWxkIGJl
IHRvIHVzZSAnc3ltYm9scycuICBJIHRyaWVkIHRvIGNvbWUgdXAgd2l0aCBzb21ldGhpbmcKPiA+
ID4gPiBidXQgJ3N5bWJvbHMnIGlzIGJldHRlciB0aGFuIGFueXRoaW5nIEkgY2FtZSB1cCB3aXRo
Lgo+ID4gPiAKPiA+ID4gTWF5YmUgJ2ludGVyZmFjZXMnIG9yICdhcnRpZmFjdHMnLiBUaGUgdGVy
bSAnc3ltYm9scycgaXMganVzdCBhcwo+ID4gPiBpbXByZWNpc2UgYXMgJ2Z1bmN0aW9ucycuCj4g
PiAKPiA+IEkgc3VnZ2VzdGVkICdpZGVudGlmaWVyJyBiZWNhdXNlIHRoYXQncyB0aGUgdGVybSB1
c2VkIGluIHRoZSBDIHNwZWMgKDYuMi4xKToKPiA+IAo+ID4gOiBBbiBpZGVudGlmaWVyIGNhbiBk
ZW5vdGUgYW4gb2JqZWN0OyBhIGZ1bmN0aW9uOyBhIHRhZyBvciBhIG1lbWJlcgo+ID4gOiBvZiBh
IHN0cnVjdHVyZSwgdW5pb24sIG9yIGVudW1lcmF0aW9uOyBhIHR5cGVkZWYgbmFtZTsgYSBsYWJl
bCBuYW1lOwo+ID4gOiBhIG1hY3JvIG5hbWU7IG9yIGEgbWFjcm8gcGFyYW1ldGVyLgo+Cj4gSSBh
bHNvIHByZWZlciB0aGlzIG9uZSBub3cuIEkgd2FzIGxvb2tpbmcgZm9yIHNvbWV0aGluZyBsaWtl
IHRoaXMuIE15IG9yaWdpbmFsCj4gaWRlYSBpcyAncHJvdG90eXBlJywgYnV0IHRoYXQgaXMgb25s
eSBmb3IgZnVuY3Rpb24uCgpXZSBjb3VsZCBhbHNvIGdvIHdpdGggJ2RlY2xhcmF0aW9uJyBvciAn
ZGVmaW5pdGlvbicuICBCdXQgSSBwcmVmZXIKJ2lkZW50aWZpZXInLgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
