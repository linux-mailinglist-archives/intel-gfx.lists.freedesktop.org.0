Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA86AC1B55
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 08:16:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABFB26E356;
	Mon, 30 Sep 2019 06:16:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com
 [IPv6:2a00:1450:4864:20::142])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11C196E356
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 06:16:53 +0000 (UTC)
Received: by mail-lf1-x142.google.com with SMTP id w67so6076152lff.4
 for <intel-gfx@lists.freedesktop.org>; Sun, 29 Sep 2019 23:16:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9OcRc//3J5qf9vDujCaVU16jyNO92dJpMooBFg7biKw=;
 b=DsJmtHsA86GWTZazkO2YdfGzyviYR1FqLPIPmNyGx76XYCYFmzLt8WLYTQNaKvzaiD
 xRBvk15+Aot/cr+8RroEx/Ldq3HYyvKRjbhnQAOBR0ohX6qpaJqP3OhaWHuCMbMw9RRj
 HgcpICQ3R/z3gPpuN4Y0PcfAIl0RGnMbFalYh9sm4cHsMKmtmTqPVF6obmlfrh7FtO5W
 BpCOHiO+LtxTndRT1hXmQIHh0BYC3UGsDM1a/Y1yCDmSJnC91K/7oq6IGt0drqhAWhOE
 /PqleOQCNe9w89vkn97ewdIsb/MccdLD0DQK7KQ8gOwoj1tBPd5dVZt5lxvNZd1Xx5du
 NgRA==
X-Gm-Message-State: APjAAAX5ZDrbR0p/skMCfnCX22VLLBsnuHtiZiTjFEXeU/Mxcpy2wFpB
 VyNP1J7Wr0Dh8PyPKcXY4tfTrgPG8q2E375b
X-Google-Smtp-Source: APXvYqyxQaRLCYgkpTQufRin+7rYfQJukdWqENA2nJNMEsmGLeCJoEyQfsYOUne0fnqy0d9a1XXPTw==
X-Received: by 2002:ac2:5196:: with SMTP id u22mr10413960lfi.130.1569824211443; 
 Sun, 29 Sep 2019 23:16:51 -0700 (PDT)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id i128sm3033381lji.49.2019.09.29.23.16.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 29 Sep 2019 23:16:50 -0700 (PDT)
To: Alexey Dobriyan <adobriyan@gmail.com>
References: <20190929200619.GA12851@avx2>
 <f99ca43d-1ba2-95fb-b90f-6706a06f8ce6@rasmusvillemoes.dk>
 <20190929210908.GA14456@avx2>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <91c5c649-9c9d-6c36-76c1-19208f9ad9a9@rasmusvillemoes.dk>
Date: Mon, 30 Sep 2019 08:16:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190929210908.GA14456@avx2>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=9OcRc//3J5qf9vDujCaVU16jyNO92dJpMooBFg7biKw=;
 b=KFFQIST8D3PBBuoT23rME4FvvUo4KNAZtNe+SxEW4heEpyDVXtS088c8HpfTuRRPfU
 U7T0Gqm2ubZ0RnxfRuHR16NxUl5+B3Ph6uNrvd3n+Rdi9x96ao0T5uzf9aKTDXW/Cgxt
 8Ldl2k1WLDYJgYA/EJE52H6D/6OjnnqIWGcEA=
Subject: Re: [Intel-gfx] [PATCH] Make is_signed_type() simpler
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 mingo@redhat.com, rostedt@goodmis.org, akpm@linux-foundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjkvMDkvMjAxOSAyMy4wOSwgQWxleGV5IERvYnJpeWFuIHdyb3RlOgo+IE9uIFN1biwgU2Vw
IDI5LCAyMDE5IGF0IDEwOjIxOjQ4UE0gKzAyMDAsIFJhc211cyBWaWxsZW1vZXMgd3JvdGU6Cj4+
IE9uIDI5LzA5LzIwMTkgMjIuMDYsIEFsZXhleSBEb2JyaXlhbiB3cm90ZToKPj4+ICogU2ltcGx5
IGNvbXBhcmUgLTEgd2l0aCAwLAo+Pj4gKiBEcm9wIHVubmVjZXNzYXJ5IHBhcmVudGhlc2lzIHNl
dHMKPj4+Cj4+PiAtI2RlZmluZSBpc19zaWduZWRfdHlwZSh0eXBlKSAgICAgICAoKCh0eXBlKSgt
MSkpIDwgKHR5cGUpMSkKPj4+ICsjZGVmaW5lIGlzX3NpZ25lZF90eXBlKHR5cGUpICAgICAgICgo
dHlwZSktMSA8IDApCj4+Cj4+IE5BSy4gSSB3cm90ZSBpdCB0aGF0IHdheSB0byBhdm9pZCAtV3Rh
dXRvbG9naWNhbC1jb21wYXJlIHdoZW4gdHlwZSBpcwo+PiB1bnNpZ25lZC4KPiAKPiBXYXMgaXMg
Vz0xPwo+IAo+IGdvZGJvbHQgZG9lc24ndCBzaG93IGl0IHdpdGgganVzdCAtV2FsbAo+IAo+IAlo
dHRwczovL2dvZGJvbHQub3JnL3ova0NBN21tCj4gCj4gQW5kIHRoZSB3YXJuaW5nIHdoaWNoIGZv
dW5kIGk5MTUgY2FzZSBpcyAtV2V4dHJhIG5vdCAtV3RhdXRvbG9naWNhbC1jb21wYXJlLgo+IAoK
WWVhaCwgaXQncyB1c3VhbGx5IGRpc2FibGVkL25vdCBlbmFibGVkIGluIHRoZSBrZXJuZWwuIEkg
ZGlkIG1vc3Qgb2YgdGhlCnByb3RvdHlwaW5nL3Rlc3RpbmcgaW4gdXNlcnNwYWNlIHdpdGggbXkg
ZGVmYXVsdCBDZmxhZ3MsIGFuZCBkZWNpZGVkIHRvCmtlZXAgaXQgdGhpcyB3YXkgaW4gY2FzZSBz
b21lYm9keSBjb3B5LXBhc3RlcyBpdCB0byBhIGNvZGUgYmFzZSB0aGF0CmRvZXMgZW5hYmxlIC1X
dGF1dG9sb2dpY2FsLWNvbXBhcmUuIEkgc2VlIGl0J3MgYmVlbiBjb3B5LXBhc3RlZCB0bwp0b29s
cy8sIHdobyBrbm93cyB3aGF0IHRoZXkgZG8uIElNTywgIml0IG1heSBiZSBjb3B5LXBhc3RlZCIg
d291bGQgbm90CmJlIHZhbGlkIHJlYXNvbiBmb3IgYSB0cmFuc2Zvcm0gdGhlIG90aGVyIHdheSwg
YnV0IEkgcmVhbGx5IGRvbid0IHNlZSBhCnJlYXNvbiBmb3IgY2hhbmdpbmcgaXQgbm93LiBFc3Bl
Y2lhbGx5IHNpbmNlIGl0IHNlZW1zIHRvIHJlcXVpcmUgc29tZQp0cmVlLXdpZGUgYWRhcHRhdGlv
bi4KClJhc211cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
