Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE0319F8D9
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 17:29:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D3B26E425;
	Mon,  6 Apr 2020 15:29:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EC6A6E0E9
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 Apr 2020 10:05:59 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id i20so9504893ljn.6
 for <intel-gfx@lists.freedesktop.org>; Sat, 04 Apr 2020 03:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=f5WeYVcExZ58viobGo5xENBYY/7iA5WtiHNaBP74Ohk=;
 b=aTi0ATN9MaY24407laRnBef6LfGPpOgdRBwSwCQz2c3RW4Gj/WkUSmsjFupt1+Si1I
 /jw0cOt3bzoZ1L8XI8Cd7xl4uND//yB9GJHWzUv8WZWdrs2vMEb5P/6AngfEuXPZiSGf
 XPfLEX+uHTRcYFmBj3aEbcKNRHtdDgUwBBnViuTIu3RWq8uVF0MXaSq7dRYUFOEfUxag
 Me75vpJfK3iUGksokG2xHslbFjKJVBBYOFEjoY7PYPAXlsjqaldQ3YKyfSNa7FMzpHkn
 t+K46duTvK6NW20LFcqGjElqmIe9KQb5vJm4zg6VH9x14j7uPUY0uawotq+psxvUvGUB
 UXxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=f5WeYVcExZ58viobGo5xENBYY/7iA5WtiHNaBP74Ohk=;
 b=Xrcy+hZKplgWiAJNAR0cvPZYHImOJD+Zl2rKfJq4BZgvH9rYhB8StGIrGb7kSK1QKk
 kYSaflTGDc7jQeDKXklt5SLpmpDty3IG0ftffzeeGYZMAqHHZ+26BBzfgGqJcgyu+NfZ
 WhwElOsxyBOlBtVA/vvYI9JzY+ECnV0bWuXpb4smkBNaW9zYZlINY0J4yzlfRfzj9j2z
 AqMUAIcISfikVnhh3Jy0zoxiaSOMyOQQbEH8GhGje1kQJAEOs62BIVexrLEvoQ7odWgb
 HV4MlqO3cUyEtsMt2ne7UrPwk7CvfBnsw2WoPatI3wNyj03txmdrxMXjAhQnGEmt5FL1
 ujWw==
X-Gm-Message-State: AGi0Pub6VGqkI21D8WHpM8j5Uy9Z5nE7Kh7dROsqMRXc27emL+VH3Sck
 kwA9M4gzSMEkbUxjwOEtS4N/Wg==
X-Google-Smtp-Source: APiQypJgK3TXAPv85OfJ7vCTcz4u4tUzYYbvpr+INBxhiypWT+murLDDhRYYaeJT38bk35encw/Ldg==
X-Received: by 2002:a2e:818e:: with SMTP id e14mr7232769ljg.225.1585994757852; 
 Sat, 04 Apr 2020 03:05:57 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:6f0:5f98:6c2c:3527:3946:ae?
 ([2a00:1fa0:6f0:5f98:6c2c:3527:3946:ae])
 by smtp.gmail.com with ESMTPSA id p21sm6378055ljg.5.2020.04.04.03.05.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 04 Apr 2020 03:05:57 -0700 (PDT)
To: Christoph Hellwig <hch@lst.de>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
References: <20200404094101.672954-1-hch@lst.de>
 <20200404094101.672954-3-hch@lst.de>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <0fb3cce8-fa3d-5c97-1eba-0f359797eea2@cogentembedded.com>
Date: Sat, 4 Apr 2020 13:05:52 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200404094101.672954-3-hch@lst.de>
Content-Language: en-US
X-Mailman-Approved-At: Mon, 06 Apr 2020 15:29:14 +0000
Subject: Re: [Intel-gfx] [PATCH 2/6] i915/gvt/kvm: a NULL ->mm does not mean
 a thread is a kthread
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
Cc: Jens Axboe <axboe@kernel.dk>, Felipe Balbi <balbi@kernel.org>,
 amd-gfx@lists.freedesktop.org, "Michael S. Tsirkin" <mst@redhat.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>, linux-usb@vger.kernel.org,
 io-uring@vger.kernel.org, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org, linux-mm@kvack.org,
 linux-fsdevel@vger.kernel.org, Al Viro <viro@zeniv.linux.org.uk>,
 intel-gfx@lists.freedesktop.org, Alex Deucher <alexander.deucher@amd.com>,
 intel-gvt-dev@lists.freedesktop.org, Jason Wang <jasowang@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello!

On 04.04.2020 12:40, Christoph Hellwig wrote:

> Use the proper API instead.
> 
> Fixes: f440c8a572d7 ("drm/i915/gvt/kvmgt: read/write GPA via KVM API")
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/gpu/drm/i915/gvt/kvmgt.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
> index 074c4efb58eb..5848400620b4 100644
> --- a/drivers/gpu/drm/i915/gvt/kvmgt.c
> +++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
> @@ -2037,7 +2037,7 @@ static int kvmgt_rw_gpa(unsigned long handle, unsigned long gpa,
>   	struct kvmgt_guest_info *info;
>   	struct kvm *kvm;
>   	int idx, ret;
> -	bool kthread = current->mm == NULL;
> +	bool kthread = (current->flags & PF_KTHREAD);

    Don't need the parens.

[...]

MBR, Sergei
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
