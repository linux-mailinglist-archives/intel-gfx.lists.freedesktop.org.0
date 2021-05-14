Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68112380940
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 14:13:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D7E96EE5C;
	Fri, 14 May 2021 12:13:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26FEA6EE52;
 Fri, 14 May 2021 11:18:31 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id z130so3891013wmg.2;
 Fri, 14 May 2021 04:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=DnsDrIqkWnYf7da8HpIWFBQQt2XImu+6ZyHWBvjrfcE=;
 b=sDX/4vOZ59ic93Kj1k7EQHH5H75TwRxFQdfU97NsB2/Y+xVttZgCu6VcmdiZBbTXV4
 Yd9dS94Y1asR2VIYZN7NEerfwgmtEUFK3NZSUIzeY6J/4AmyVofgnwxiuO5puvulkCHX
 zAH+iCNJUU2yLFhQkplxklOlcyZUbrmQbTIThNq4BukYbZy9X610Bla24hpoPnMCKKtF
 HaX7GWwtAjZyjiNuvWcCoIBPkXTf9xY5aCFfjMGcrbRCdRoMLY/c+VX1+t1XGHSYNqtQ
 /vEAS8jymBn+QTD3oR/5dtU3nH62pPJpzKh6iPn38AjBb8Fr8EpkCArPsjTRrMSNZ8n3
 9CtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DnsDrIqkWnYf7da8HpIWFBQQt2XImu+6ZyHWBvjrfcE=;
 b=QOauK4teLfV781jzrWtNHnDzHvkgUx2brfQu0Y8vzhWdvoxRoAeKNohsdFW/k7Ct6V
 T0jowGpfpwX79j9bMv0Tq7Lwo3KRBJ05f4uyBhWtm/cV2/uxQ2a5ame01fMg1Yh/0KZT
 TifxELB2fsDk1LziLdnN3Sf00AcYVIS2mUUg05CrYMUcnZvTwCxxDNCxfh5eras7gloV
 RTxzjQiFjgOnZA3eajap+sE5H/7nTkSMgg0eLKVHaA2TmcClBE3GvzMOUIRqGlDHpwLW
 mjVV7emgUEp460hRLnMqq/bf7hZ21lWUw9uzIgfjITWu+BSp8rR8JLGsxGogoyOvzDZV
 iCdQ==
X-Gm-Message-State: AOAM5324CnQ6c/FPqY0Y5/dS96UOF/KBBkSwTM04bN3+azKuVLvQTl4G
 3ghDfpazfwZrBiAXYABSIMA1GSN9Cs7C4g==
X-Google-Smtp-Source: ABdhPJwViz0BDPUuVH349RqXP0p4zCVFhrVjXNorTYnm55dAjMiaqH0FajvtM+sJwCYcinjBh5k1qQ==
X-Received: by 2002:a7b:c005:: with SMTP id c5mr21007074wmb.113.1620990517974; 
 Fri, 14 May 2021 04:08:37 -0700 (PDT)
Received: from [192.168.1.122]
 (cpc159425-cmbg20-2-0-cust403.5-4.cable.virginm.net. [86.7.189.148])
 by smtp.gmail.com with ESMTPSA id b10sm7116349wrr.27.2021.05.14.04.08.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 May 2021 04:08:37 -0700 (PDT)
To: David Woodhouse <dwmw2@infradead.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
References: <cover.1620823573.git.mchehab+huawei@kernel.org>
 <d2fed242fbe200706b8d23a53512f0311d900297.camel@infradead.org>
 <20210514102118.1b71bec3@coco.lan>
 <61c286b7afd6c4acf71418feee4eecca2e6c80c8.camel@infradead.org>
From: Edward Cree <ecree.xilinx@gmail.com>
Message-ID: <8b8bc929-2f07-049d-f24c-cb1f1d85bbaa@gmail.com>
Date: Fri, 14 May 2021 12:08:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <61c286b7afd6c4acf71418feee4eecca2e6c80c8.camel@infradead.org>
Content-Language: en-GB
X-Mailman-Approved-At: Fri, 14 May 2021 12:13:37 +0000
Subject: Re: [Intel-gfx] [PATCH v2 00/40] Use ASCII subset instead of UTF-8
 alternate symbols
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
 linux-pci@vger.kernel.org, dri-devel@lists.freedesktop.org,
 keyrings@vger.kernel.org, linux-sgx@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, linux-rdma@vger.kernel.org,
 linux-acpi@vger.kernel.org, Mali DP Maintainers <malidp@foss.arm.com>,
 linux-input@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-ext4@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-media@vger.kernel.org, linux-pm@vger.kernel.org,
 coresight@lists.linaro.org, rcu@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, linux-hwmon@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-integrity@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiBPbiBGcmksIDIwMjEtMDUtMTQgYXQgMTA6MjEgKzAyMDAsIE1hdXJvIENhcnZhbGhvIENoZWhh
YiB3cm90ZToKPj4gSSBkbyB1c2UgYSBsb3Qgb2YgVVRGLTggaGVyZSwgYXMgSSB0eXBlIHRleHRz
IGluIFBvcnR1Z3Vlc2UsIGJ1dCBJIHJlbHkKPj4gb24gdGhlIFVTLWludGwga2V5Ym9hcmQgc2V0
dGluZ3MsIHRoYXQgYWxsb3cgbWUgdG8gdHlwZSBhcyAiJ2EiIGZvciDDoS4KPj4gSG93ZXZlciwg
dGhlcmUncyBubyBzaG9ydGN1dCBmb3Igbm9uLUxhdGluIFVURi1jb2RlcywgYXMgZmFyIGFzIEkg
a25vdy4KPj4KPj4gU28sIGlmIHdvdWxkIG5lZWQgdG8gdHlwZSBhIGN1cmx5IGNvbW1hIG9uIHRo
ZSB0ZXh0IGVkaXRvcnMgSSBub3JtYWxseSAKPj4gdXNlIGZvciBkZXZlbG9wbWVudCAodmltLCBu
YW5vLCBrYXRlKSwgSSB3b3VsZCBuZWVkIHRvIGN1dC1hbmQtcGFzdGUKPj4gaXQgZnJvbSBzb21l
d2hlcmUKCkZvciBhbnlvbmUgd2hvIGRvZXNuJ3Qga25vdyBhYm91dCBpdDogWCBoYXMgdGhpcyB3
b25kZXJmdWwgdGhpbmcgY2FsbGVkCiB0aGUgQ29tcG9zZSBrZXlbMV0uICBGb3IgaW5zdGFuY2Us
IHR5cGUg4o6ELS0tIHRvIGdldCDigJQsIG9yIOKOhDwiIGZvciDigJwuCk11Y2ggbW9yZSBtbmVt
b25pYyB0aGFuIFVuaWNvZGUgY29kZXBvaW50czsgYW5kIHlvdSBjYW4gZXh0ZW5kIGl0IHdpdGgK
IHVzZXItZGVmaW5lZCBzZXF1ZW5jZXMgaW4geW91ciB+Ly5YQ29tcG9zZSBmaWxlLgooSSBhc3N1
bWUgV2F5bGFuZCBzdXBwb3J0cyBhbGwgdGhpcyB0b28sIGJ1dCBkb24ndCBrbm93IHRoZSBkZXRh
aWxzLikKCk9uIDE0LzA1LzIwMjEgMTA6MDYsIERhdmlkIFdvb2Rob3VzZSB3cm90ZToKPiBBZ2Fp
biwgaWYgeW91IHdhbnQgdG8gbWFrZSBzcGVjaWZpYyBmaXhlcyBsaWtlIHJlbW92aW5nIG5vbi1i
cmVha2luZwo+IHNwYWNlcyBhbmQgYnl0ZSBvcmRlciBtYXJrcywgd2l0aCBzcGVjaWZpYyByZWFz
b25zLCB0aGVuIHRob3NlIG1ha2UKPiBzZW5zZS4gQnV0IGl0J3MgZ290IHZlcnkgbGl0dGxlIHRv
IGRvIHdpdGggVVRGLTggYW5kIGhvdyBlYXN5IGl0IGlzIHRvCj4gdHlwZSB0aGVtLiBBbmQgdGhl
IGV4Y3VzZSB5b3UndmUgcHV0IGluIHRoZSBjb21taXQgY29tbWVudCBmb3IgeW91cgo+IHBhdGNo
ZXMgaXMgdXR0ZXJseSBib2d1cy4KCisxCgotZWQKClsxXSBodHRwczovL2VuLndpa2lwZWRpYS5v
cmcvd2lraS9Db21wb3NlX2tleQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
