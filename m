Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7CD378FDA
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 16:05:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D0076E49D;
	Mon, 10 May 2021 14:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0879389F77;
 Mon, 10 May 2021 13:16:19 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 p14-20020a05600c358eb029015c01f207d7so3140438wmq.5; 
 Mon, 10 May 2021 06:16:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Sh4i9feljTPFrIfpR/IU/E8n0D3Fda88xyQfypmum7w=;
 b=GfQpYA/u/ESXNzCwhJN35I1L0Sb2vRVeukRNG83W8xG2OMlDA6+i5W0OODo/+LWE9E
 ivWW5//Dci3M+PXPgJnH/odM7KtTO7yjQKrEe7KAvh4E7fvrd/ZuLkJAZP62sWtsDMuB
 AIqgCRqoTLZzj0iGC6/REa3QuGlmZjiRxifV0mZYrMLJSap8JjiujnvbMmFTzTlx+O95
 x9XnwiLNDr5qqWcsdoyW+ETG1hWAlzA+FW12aKJEwh2j5DlnppfpjkE6ahf9DAyZ8V+v
 c4HLN0tsaWZM2+zfMzrOFU3u/mXI98pyg6LlDYSgFBtDuHlk1DmX0lhge4HX1KOLhtwA
 z+4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Sh4i9feljTPFrIfpR/IU/E8n0D3Fda88xyQfypmum7w=;
 b=h49r44lSoVnzp45SijAtiLePwWfrHU9vFIA1EJdBquoIPFE92l5mDJPTPTqqPYJhwn
 rd82Y11wEcw0qrUwNF3PEpY5AKJ9Fb+2HJscJQDaS41NCBW5Bej+QsSSRySnVkDS8tCG
 1rEHVyS68U5qq1VxzZLEbPldEJ+eB8l8r4+9kEQ6GS2y3YgSMAHnoDMVtT4rBh/Zoqr/
 bKdlg0iQAO4ueUYN+1NSZ04qwITNXyA0ElTUDkTjhJzVqrLlA8RHAuiUuOml4ZUWbX/+
 QyaBmI8HD41IuthTf07c32A83TE53HEZwMv8Jbhz40d3PdgQ8jmbk5wyXaI78xPQEYX8
 9pnA==
X-Gm-Message-State: AOAM531xmTIChW9TZDbq+Qm1U0eNr5LFPhC1QBls5IKL1gdxccGyyqVs
 bdDTBOk3xQ0vql7vBnmlYGs=
X-Google-Smtp-Source: ABdhPJysoQ4YBpE1J87NsTC/Z24p8NQqGLKPSudpVCmtLwZFhM2Wy0R7/k0aKiXMKdpTI23nPdYVEw==
X-Received: by 2002:a05:600c:47d7:: with SMTP id
 l23mr36980376wmo.95.1620652578722; 
 Mon, 10 May 2021 06:16:18 -0700 (PDT)
Received: from [192.168.1.122]
 (cpc159425-cmbg20-2-0-cust403.5-4.cable.virginm.net. [86.7.189.148])
 by smtp.gmail.com with ESMTPSA id s1sm27945073wmj.8.2021.05.10.06.16.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 10 May 2021 06:16:17 -0700 (PDT)
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 David Woodhouse <dwmw2@infradead.org>
References: <cover.1620641727.git.mchehab+huawei@kernel.org>
 <2ae366fdff4bd5910a2270823e8da70521c859af.camel@infradead.org>
 <20210510135518.305cc03d@coco.lan>
From: Edward Cree <ecree.xilinx@gmail.com>
Message-ID: <df6b4567-030c-a480-c5a6-fe579830e8c0@gmail.com>
Date: Mon, 10 May 2021 14:16:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210510135518.305cc03d@coco.lan>
Content-Language: en-GB
X-Mailman-Approved-At: Mon, 10 May 2021 14:05:26 +0000
Subject: Re: [Intel-gfx] [PATCH 00/53] Get rid of UTF-8 chars that can be
 mapped as ASCII
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
Cc: alsa-devel@alsa-project.org, kvm@vger.kernel.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-iio@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-fpga@vger.kernel.org,
 dri-devel@lists.freedesktop.org, keyrings@vger.kernel.org,
 linux-riscv@lists.infradead.org, Jonathan Corbet <corbet@lwn.net>,
 linux-rdma@vger.kernel.org, x86@kernel.org, linux-acpi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 linux-ext4@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-media@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-sgx@vger.kernel.org, coresight@lists.linaro.org, rcu@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, linux-hwmon@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-integrity@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTAvMDUvMjAyMSAxMjo1NSwgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIHdyb3RlOgo+IFRoZSBt
YWluIHBvaW50IG9uIHRoaXMgc2VyaWVzIGlzIHRvIHJlcGxhY2UganVzdCB0aGUgb2NjdXJyZW5j
ZXMKPiB3aGVyZSBBU0NJSSByZXByZXNlbnRzIHRoZSBzeW1ib2wgZXF1YWxseSB3ZWxsCgo+IAkt
IFUrMjAxNCAoJ+KAlCcpOiBFTSBEQVNICkVtIGRhc2ggaXMgbm90IHRoZSBzYW1lIHRoaW5nIGFz
IGh5cGhlbi1taW51cywgYW5kIHRoZSBsYXR0ZXIgZG9lcyBub3QKIHNlcnZlICdlcXVhbGx5IHdl
bGwnLiAgUGVvcGxlIHVzZSBlbSBkYXNoZXMgYmVjYXVzZSDigJQgZXZlbiBpbgogbW9ub3NwYWNl
IGZvbnRzIOKAlCB0aGV5IG1ha2UgdGV4dCBlYXNpZXIgdG8gcmVhZCBhbmQgY29tcHJlaGVuZCwg
d2hlbgogdXNlZCBjb3JyZWN0bHkuCkkgYWNjZXB0IHRoYXQgc29tZSBvZiB0aGUgb3RoZXIgZGlz
dGluY3Rpb25zIOKAlCBsaWtlIGVuIGRhc2hlcyDigJQgYXJlCiBuZWVkbGVzc2x5IHBlZGFudGlj
ICh0aG91Z2ggSSBkb24ndCBkb3VidCB0aGVyZSBpcyBzb21lb25lIG91dCB0aGVyZQogd2hvIHdp
bGwgZ2xhZGx5IGRlZmVuZCB0aGVtIHdpdGggdGhlIHNhbWUgZmVydm91ciB3aXRoIHdoaWNoIEkg
YXJndWUKIGZvciB0aGUgZW0gZGFzaCkgYW5kIEkgd291bGRuJ3QgdGFrZSB0aGUgdHJvdWJsZSB0
byB1c2UgdGhlbSBteXNlbGY7CiBidXQgSSB0aGluayB0aGVyZSBpcyBhIHJlYXNvbmFibGUgYXNz
dW1wdGlvbiB0aGF0IHdoZW4gc29tZW9uZSBnb2VzCiB0byB0aGUgZWZmb3J0IG9mIHVzaW5nIGEg
VW5pY29kZSBwdW5jdHVhdGlvbiBtYXJrIHRoYXQgaXMgc2VtYW50aWMKIChyYXRoZXIgdGhhbiBt
ZXJlbHkgdHlwb2dyYXBoaWNhbCksIHRoZXkgcHJvYmFibHkgaGFkIGEgcmVhc29uIGZvcgogZG9p
bmcgc28uCgo+IAktIFUrMjAxOCAoJ+KAmCcpOiBMRUZUIFNJTkdMRSBRVU9UQVRJT04gTUFSSwo+
IAktIFUrMjAxOSAoJ+KAmScpOiBSSUdIVCBTSU5HTEUgUVVPVEFUSU9OIE1BUksKPiAJLSBVKzIw
MWMgKCfigJwnKTogTEVGVCBET1VCTEUgUVVPVEFUSU9OIE1BUksKPiAJLSBVKzIwMWQgKCfigJ0n
KTogUklHSFQgRE9VQkxFIFFVT1RBVElPTiBNQVJLCihUaGVzZSBhcmUgcHVyZWx5IHR5cG9ncmFw
aGljLCBJIGhhdmUgbm8gcHJvYmxlbSB3aXRoIGR1bXBpbmcgdGhlbS4pCgo+IAktIFUrMDBkNyAo
J8OXJyk6IE1VTFRJUExJQ0FUSU9OIFNJR04KUHJlc3VtYWJseSB0aGlzIGlzIGFwcGVhcmluZyBp
biBtYXRoZW1hdGljYWwgZm9ybXVsYWUsIGluIHdoaWNoIGNhc2UKIGNoYW5naW5nIGl0IHRvICd4
JyBsb3NlcyBzZW1hbnRpYyBpbmZvcm1hdGlvbi4KCj4gVXNpbmcgdGhlIGFib3ZlIHN5bWJvbHMg
d2lsbCBqdXN0IHRyaWNrIHRvb2xzIGxpa2UgZ3JlcCBmb3Igbm8gZ29vZAo+IHJlYXNvbi4KTkJT
UCwgc3VyZS4gIFRoYXQgb25lJ3MgcHJvYmFibHkgYW4gYXJ0ZWZhY3Qgb2Ygc29tZSBkb2N1bWVu
dCBmb3JtYXQKIGNvbnZlcnNpb24gc29tZXdoZXJlIGFsb25nIHRoZSBsaW5lLCBhbnl3YXkuCkJ1
dCB3aGF0IGtpbmRzIG9mIHRoaW5ncyB3aXRoIMOXIG9yIOKAlCBpbiBhcmUgZ29pbmcgdG8gYmUg
Z3JlcHQgZm9yPwoKSWYgdGhlcmUgYXJlIGVtIGRhc2hlcyBseWluZyBhcm91bmQgdGhhdCBzZW1h
bnRpY2FsbHkgX3Nob3VsZF8gYmUKIGh5cGhlbi1taW51cyAob25lIG9mIHlvdXIgcGF0Y2hlcyBJ
J3ZlIHNlZW4sIGZvciBpbnN0YW5jZSwgZml4ZXMgYW4KICplbiogZGFzaCBtb29ubGlnaHRpbmcg
YXMgdGhlIG9wdGlvbiBjaGFyYWN0ZXIgaW4gYW4gYGV0aHRvb2xgCiBjb21tYW5kIGxpbmUpLCB0
aGVuIHN1cmUsIGNvbnZlcnQgdGhlbS4KQnV0IGFueSB0aW1lIHNvbWVvbmUgaXMgdXNpbmcgYSBV
bmljb2RlIGNoYXJhY3RlciB0byAqZXhwcmVzcwogc2VtYW50aWNzKiwgZXZlbiBpZiB5b3UgaGFw
cGVuIHRvIHRoaW5rIHRoZSBzZW1hbnRpYyBkaXN0aW5jdGlvbgogaW52b2x2ZWQgaXMgYSBwZWRh
bnRpYyBvciB1bmltcG9ydGFudCBvbmUsIEkgdGhpbmsgeW91IG5lZWQgYW4KIGV4cGxpY2l0IGdy
ZXAgY2FzZSB0byBqdXN0aWZ5IEFTQ0lJZnlpbmcgaXQuCgotZWQKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
