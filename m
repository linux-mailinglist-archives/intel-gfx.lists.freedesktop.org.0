Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCBAC2A0795
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 15:14:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70F1B6E9B5;
	Fri, 30 Oct 2020 14:14:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa3.bahnhof.se (pio-pvt-msa3.bahnhof.se [79.136.2.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25E2F6E9B5
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 14:14:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTP id 81CEC3F615;
 Fri, 30 Oct 2020 15:14:29 +0100 (CET)
Authentication-Results: pio-pvt-msa3.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=nxW6/fQp; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.36
X-Spam-Level: 
X-Spam-Status: No, score=-2.36 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.261,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from pio-pvt-msa3.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa3.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E2cpBLRiLYOk; Fri, 30 Oct 2020 15:14:28 +0100 (CET)
Received: by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTPA id 2FEED3F67D;
 Fri, 30 Oct 2020 15:14:26 +0100 (CET)
Received: from localhost.localdomain (jfdmzpr03-ext.jf.intel.com
 [134.134.139.72])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 3A1ED361802;
 Fri, 30 Oct 2020 15:14:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1604067266; bh=vCF3rQq/Wr9Pni7Jw7OcBPnEGQxt/f8IYQrrta9y/no=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=nxW6/fQptSClurroBlQH4nCMllkc3b+xdtWk9Urt4K6UoignAa7VdxN36ZQJ/mGQO
 fbirrrK8J4DaXtADjEeYWhKYIR/zwhU2v3iBBvZQjm4SXzYgHEM18yks3ELeONPjtr
 J/b/LUsg3WBh99bi8vKLexM/L1G0857NsdIMAwZ4=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-14-maarten.lankhorst@linux.intel.com>
 <b8793d0e-6fee-2055-7447-3073b374666d@shipmail.org>
 <8d924da9-d88d-2f8e-65a5-247c561f2311@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <b8775053-7aa5-4740-ca8d-3f931a6a0372@shipmail.org>
Date: Fri, 30 Oct 2020 15:14:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <8d924da9-d88d-2f8e-65a5-247c561f2311@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 13/61] drm/i915: Reject more ioctls for
 userptr
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

SGksIE1hYXJ0ZW4sCgpPbiAxMC8zMC8yMCAxMDo1NiBBTSwgTWFhcnRlbiBMYW5raG9yc3Qgd3Jv
dGU6Cj4gT3AgMzAtMTAtMjAyMCBvbSAxMDoyMiBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtIChJ
bnRlbCk6Cj4+IE9uIDEwLzE2LzIwIDEyOjQzIFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToK
Pj4+IEFsbG93IHNldF9kb21haW4gdG8gZmFpbCBzaWxlbnRseSwgd2FpdGluZyBmb3IgaWRsZSBz
aG91bGQgYmUgZ29vZCBlbm91Z2guCj4+PiBzZXRfdGlsaW5nIGFuZCBzZXRfY2FjaGluZyBhcmUg
cmVqZWN0ZWQgd2l0aCAtRU5YSU8sIHRoZXJlJ3Mgbm8gdmFsaWQgcmVhc29uCj4+PiB0byBhbGxv
dyBpdC4KPj4gUGxlYXNlIGxpc3QgYWxsIGFmZmVjdGVkIGlvY3RscyBhZmZlY3RlZCBieSB0aGUg
SVNfUFJPWFkgZmxhZy4gV2UgYWxzbyBuZWVkIHVzZXJzcGFjZSBtYWludGFpbmVyIGFja3MgZm9y
IHRoaXMuCj4gc2V0X2NhY2hpbmcsIHNldF9kb21haW4gYW5kIHNldF90aWxpbmcuIHNldF9kb21h
aW4gdHVybnMgaW50byBhIGdlbV93YWl0IGZvciBjb2hlcmVudCB1c2VycHRyLCBzaW5jZSB0aGUg
b3RoZXIgaW9jdGwncyB0aGF0IGFmZmVjdCBwbGFjZW1lbnQgYW5kIGNhY2hpbmcgYXJlIG5vIGxv
bmdlciBhbGxvd2VkLiA6KQoKU291bmRzIGZpbmUuIFRoZSBjb21tZW50IHdhcyBhYm91dCBhZGRp
bmcgdG8gdGhlIGNvbW1pdCBtZXNzYWdlLgoKCj4gfk1hYXJ0ZW4KPgo+Pj4gU2lnbmVkLW9mZi1i
eTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
