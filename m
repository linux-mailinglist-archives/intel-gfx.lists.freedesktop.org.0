Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4395329C581
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 19:10:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 810316EC07;
	Tue, 27 Oct 2020 18:10:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa1.bahnhof.se (pio-pvt-msa1.bahnhof.se [79.136.2.40])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 289AB6EC07
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 18:10:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 5CF053F623;
 Tue, 27 Oct 2020 19:10:38 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.206
X-Spam-Level: 
X-Spam-Status: No, score=-2.206 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.107,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from pio-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GVSTcgiuGWWU; Tue, 27 Oct 2020 19:10:26 +0100 (CET)
Received: by pio-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 5978D3F574;
 Tue, 27 Oct 2020 19:10:09 +0100 (CET)
Received: from Win10-768gb107.SSPE.ch.intel.com (jfdmzpr04-ext.jf.intel.com
 [134.134.137.73])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 836A23600BE;
 Tue, 27 Oct 2020 19:10:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1603822209; bh=0Ji/Lp/vdzhKJVG8MgUOXJU0QlJOfRJra59TXZI+3QE=;
 h=Subject:From:To:References:Date:In-Reply-To:From;
 b=lkcH0+XDscAjwrvpAENRaBWHThu9NLvWPTMSX5BpyHzxp5IR7qsIm1S2Xmq3Hv7Ge
 CA8RGLrgBqS/V3ouaLVA/EJQRf7Z/Pp5QYsnbrLQ18ffLhThVfmqboZLsoaoo42JDN
 sxuSFECfOGlgsTUvQkEa/mpU++jfIGJMEq75wbYs=
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201015112627.1142745-1-maarten.lankhorst@linux.intel.com>
 <20201015112627.1142745-5-maarten.lankhorst@linux.intel.com>
 <8677ec74-b31e-05c9-2cdf-514fd11462e4@shipmail.org>
 <89f87f2f-a941-0769-4765-0b659b357703@linux.intel.com>
 <a5e1a5a0-e72c-c7da-5830-7211faa56386@shipmail.org>
Message-ID: <b570c698-eec2-5d5a-d2b8-af582757c8e4@shipmail.org>
Date: Tue, 27 Oct 2020 19:10:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <a5e1a5a0-e72c-c7da-5830-7211faa56386@shipmail.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 04/63] drm/i915: Pin timeline map after
 first timeline pin, v3.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEwLzI3LzIwIDU6MjUgUE0sIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCkgd3JvdGU6Cj4K
Pj4+PiArCj4+Pj4gK8KgwqDCoCBpZiAoV0FSTl9PTighaTkxNV9nZW1fb2JqZWN0X3RyeWxvY2so
dGwtPmh3c3BfZ2d0dC0+b2JqKSkpCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAtRUJVU1k7
Cj4+PiBJIHRoaW5rIHdlIHNob3VsZCBlaXRoZXIgYW5ub3RhdGUgdGhpcyBwcm9wZXJseSBhcyBh
biBpc29sYXRlZCBsb2NrLCAKPj4+IG9yIGFsbG93IGEgc2lsZW50IC1FQlVTWS4KPj4gVGhpcyBp
cyBkb25lIGluIGEgY29udHJvbGxlZCBzZWxmdGVzdCB3aGVyZSB3ZSBtb2NrIHRoZSBlbnRpcmUg
aTkxNSAKPj4gZGV2aWNlLCBzbyBub3JtYWxseSB0aGlzIGNhbid0IGhhcHBlbi4gOikKPgo+IEJ1
dCBpZiBpdCBkb2VzLCB3ZSBnZXQgZXJyYXRpYyBCQVQgZmFpbHVyZXMsIGFuZCBpZiBpdCBpbmRl
ZWQgZG9lc24ndCAKPiBoYXBwZW4sIHRoZW4gYW4gYW5ub3RhdGVkIGlzb2xhdGVkIGxvY2sgd291
bGQgZ3VhcmFudGVlIHRoYXQuCgouLi5idXQgaWYgd2UgY2FuJ3QgZG8gdGhhdCBzaW5jZSB3ZSdy
ZSBhY3R1YWxseSBub3QgbG9ja2luZyBpc29sYXRlZCwgSSAKZ3Vlc3Mgd2UgaGF2ZSB0byBsZWF2
ZSBpdCBhcyBpcy4gKEkgcHJlc3VtZSBJIGNhbid0IG1ha2UgeW91IGFkZCAvKiBIZXJlIAp3ZSBz
aG91bGQgaGF2ZSBuZWVkZWQgYSBpOTE1X2RvX3d3KCkgKi8gOkQpCgovVGhvbWFzCgo+Cj4gL1Ro
b21hcwo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
