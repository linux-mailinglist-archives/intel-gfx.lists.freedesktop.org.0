Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A33D378FDD
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 16:05:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B37E96E4C4;
	Mon, 10 May 2021 14:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73C5B6E49C;
 Mon, 10 May 2021 13:59:02 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id n205so9269139wmf.1;
 Mon, 10 May 2021 06:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=oOiV5WgMi7Wi96u1A0j7aVHx72rSJUWKb9L7JASEw6U=;
 b=eI3N1Fpg9OGfxDYeN9CkM6JnUmUHl5WgQKsZJBAEe06N6eQIW+N/2eMqTIlrsyK/qM
 Xa35uzmXt4bi7Z5ExQmBDGcCmQr1UD910O1m2RozktwaOIV8OjhOXtuMqdS2t5KIlfV2
 /xSjuQtpNfwsgUMZT4YbuSWeEoVUpnkLWdYWx57GHC/JMnIbfeomB6X1EwhI6GqtNjJz
 5mS+m2iGgDDSAr7pACiBgtShvHO5CxZyag+ZmeEb/XAmakP22Iz1mAVAu5X4yPcneMls
 MNKS6aX+UYGYTiDpkPzh+zNyC5KsbwVbzbmTl9DNNLPJNUbSwFzwjXpWYoyfaT3bHk/5
 tcow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=oOiV5WgMi7Wi96u1A0j7aVHx72rSJUWKb9L7JASEw6U=;
 b=ZKYERu4xpQ7M4hm63/gVqPuZxv0zLLL+/COhnKzJmbQx8Zi+X+lntry8ojJLwVPoG3
 jrfbs/wiwaKLzbNsXX9mjImEVXgpVs/UaXrR9mwOzAPk/YfBmtB7SEOVcWLv7/Y4qXw2
 NVAXOB5fygmdVepuoiIAGyZLQCmrDsRLJVsO34BkDRpJlP8SCaMLyO3AYyVPulTJRsiA
 B3vgaLlOkmGYDVgB8Xt89RgqhmhTpSxbvc50+PLkyHOihrQy46+bFNSfaLi0g8nUaC7Z
 g8PDsm5tthTORw3CxIycQPbogjAjVgyvHHwY0akEbI/KTvfUIvQIdRLgjHckAwVnqIem
 2HiA==
X-Gm-Message-State: AOAM5310dkWXBunX9/Tf/VZthz6ypF5jHTn4RBf0KMTpUocFaca/cM3Z
 IvTdhwGzXAGacSotzA2iAdQ=
X-Google-Smtp-Source: ABdhPJxuRWxshXLY3D3BIGKPZC8k+BUcpGElfoLV7AagS8fiv45gCBBhTdzQWkysFh21R1ZatES2dQ==
X-Received: by 2002:a1c:e38a:: with SMTP id
 a132mr26226331wmh.135.1620655141215; 
 Mon, 10 May 2021 06:59:01 -0700 (PDT)
Received: from [192.168.1.122]
 (cpc159425-cmbg20-2-0-cust403.5-4.cable.virginm.net. [86.7.189.148])
 by smtp.gmail.com with ESMTPSA id d127sm25703586wmd.14.2021.05.10.06.58.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 10 May 2021 06:59:00 -0700 (PDT)
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
References: <cover.1620641727.git.mchehab+huawei@kernel.org>
 <2ae366fdff4bd5910a2270823e8da70521c859af.camel@infradead.org>
 <20210510135518.305cc03d@coco.lan>
 <df6b4567-030c-a480-c5a6-fe579830e8c0@gmail.com>
 <20210510153807.4405695e@coco.lan>
From: Edward Cree <ecree.xilinx@gmail.com>
Message-ID: <b3366f65-35e1-8f1a-d8d8-ebd444c9499d@gmail.com>
Date: Mon, 10 May 2021 14:58:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210510153807.4405695e@coco.lan>
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
 linux-integrity@vger.kernel.org, David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTAvMDUvMjAyMSAxNDozOCwgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIHdyb3RlOgo+IEVtIE1v
biwgMTAgTWF5IDIwMjEgMTQ6MTY6MTYgKzAxMDAKPiBFZHdhcmQgQ3JlZSA8ZWNyZWUueGlsaW54
QGdtYWlsLmNvbT4gZXNjcmV2ZXU6Cj4+IEJ1dCB3aGF0IGtpbmRzIG9mIHRoaW5ncyB3aXRoIMOX
IG9yIOKAlCBpbiBhcmUgZ29pbmcgdG8gYmUgZ3JlcHQgZm9yPwo+IAo+IEFjdHVhbGx5LCBvbiBh
bG1vc3QgYWxsIHBsYWNlcywgdGhvc2UgYXJlbid0IHVzZWQgaW5zaWRlIG1hdGggZm9ybXVsYWUs
IGJ1dAo+IGluc3RlYWQsIHRoZXkgZGVzY3JpYmUgdmlkZW8gc29tZSByZXNvbHV0aW9uczoKRWho
LCB0aG9zZSBhcmUgYWxzbyBwcm9wZXIgdXNlcyBvZiDDly4gIEl0J3Mgc3RpbGwgYSBtdWx0aXBs
aWNhdGlvbiwKIGFmdGVyIGFsbC4KCj4gaXQgaXMgYSB3YXkgbW9yZSBsaWtlbHkgdGhhdCwgaWYg
c29tZW9uZSB3YW50cyB0byBncmVwLCB0aGV5IHdvdWxkIGJlIAo+IGRvaW5nIHNvbWV0aGluZyBs
aWtlIHRoaXMsIGluIG9yZGVyIHRvIGdldCB2aWRlbyByZXNvbHV0aW9uczoKV2h5IHdvdWxkIHNv
bWVvbmUgYmUgZ3JlcHBpbmcgZm9yICJhbGwgdmlkZW8gcmVzb2x1dGlvbnMgbWVudGlvbmVkIGlu
CiB0aGUgZG9jdW1lbnRhdGlvbiI/ICBUaGF0IHNlZW1zIGNvbnRyaXZlZCB0byBtZS4KCi1lZApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
