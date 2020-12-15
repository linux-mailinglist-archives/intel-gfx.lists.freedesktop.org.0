Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6452DB423
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 20:00:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF6AA89207;
	Tue, 15 Dec 2020 19:00:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1ED489207
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Dec 2020 19:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1608058812;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5HE8p4803nr8EEV2Foh/7Cpa0TkBbGGqMwRHap2gZvI=;
 b=PAVcZGk1IvgxPRwFC6cHi7zqI+Apamb+E7kOHYhTF1fPIdXavGb6gjxgDQrXfu8hcRei3K
 0kDC9v8xkCgyB4aOwtkljdqsCQZ8Rdx4dPrhE3SRWBGL1gHT81yUI6nvEZ2VA3n5OdnI4b
 lzUCGYNFq4EUBg3QnufIIzxeZde4Jos=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-255-C0O4hjVnPmSN_I_9VJlsXw-1; Tue, 15 Dec 2020 14:00:11 -0500
X-MC-Unique: C0O4hjVnPmSN_I_9VJlsXw-1
Received: by mail-qt1-f200.google.com with SMTP id f33so14999752qtb.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Dec 2020 11:00:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=5HE8p4803nr8EEV2Foh/7Cpa0TkBbGGqMwRHap2gZvI=;
 b=hR3bzeLxaM/V5oOOxPXGt3CFZfYHQJzNz/SVAjsRIC49xlsKB1xZ7Jr+RU/MaIe8BJ
 H0RDRg1WxuSch4JgltZ7Mp0fZtxeMx4FjgtX8qumXI9bpurFkm/B7uo7uhXM3071MNbX
 7Cmf6F3TaD3fueopUVlg38ocKAnraWIUAJAjel1N2Y3tYfQ7Bl/RPv+yQbJ1JmlKbyet
 NTioHqV06Q84uiiGf+TERJmNAbkq/xtIAFEAxNXI63Df4AIseJncADG9X/DD7Cr+Fsif
 pjaM9pcAcdhCrmt46lXuu2FJMrk/+fyrvHf7ND+fNxt7KvSUm6E1AJnkUu7PHtJshb4u
 cnAQ==
X-Gm-Message-State: AOAM5306e1IRYlZqvnvRacVCv+2DuMF8Lm22t7mGRafkwS8I/ie8DShm
 3wIwboLjxH/1s5083SlE1SIQ5bgpak01QoBdfyHc6jfespDrzRPPqKPOwGLWQbf25lnfoLwK2CX
 1SiQuS7Q2bR9yAck/Pwd4n4Zmu9RD
X-Received: by 2002:a37:8d01:: with SMTP id p1mr20046587qkd.31.1608058809600; 
 Tue, 15 Dec 2020 11:00:09 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzsEMbKSsCB6tRrwkxY7WiocSFllMT54n4GdhwdkEoxTJJmDGKfXjf4l0GrD1Ds/zJlQ5106w==
X-Received: by 2002:a37:8d01:: with SMTP id p1mr20046566qkd.31.1608058809388; 
 Tue, 15 Dec 2020 11:00:09 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com.
 [75.142.250.213])
 by smtp.gmail.com with ESMTPSA id r6sm18260743qkk.127.2020.12.15.11.00.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Dec 2020 11:00:08 -0800 (PST)
To: Chris Wilson <chris@chris-wilson.co.uk>, airlied@linux.ie,
 daniel@ffwll.ch, daniele.ceraolospurio@intel.com,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 lionel.g.landwerlin@intel.com, rodrigo.vivi@intel.com,
 tejaskumarx.surendrakumar.upadhyay@intel.com, tvrtko.ursulin@intel.com,
 venkata.s.dhanalakota@intel.com
References: <20201215144101.1878719-1-trix@redhat.com>
 <160805599050.14591.5854311082825914383@build.alporthouse.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <12579dc7-603e-2fbe-85c0-0a4110b8992a@redhat.com>
Date: Tue, 15 Dec 2020 11:00:06 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <160805599050.14591.5854311082825914383@build.alporthouse.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: remove h from printk format
 specifier
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 12/15/20 10:13 AM, Chris Wilson wrote:
> Quoting trix@redhat.com (2020-12-15 14:41:01)
>> From: Tom Rix <trix@redhat.com>
>>
>> See Documentation/core-api/printk-formats.rst.
>> h should no longer be used in the format specifier for printk.
> It's understood by format_decode().
> * 'h', 'l', or 'L' for integer fields
>
> At least reference commit cbacb5ab0aa0 ("docs: printk-formats: Stop
> encouraging use of unnecessary %h[xudi] and %hh[xudi]") as to why the
> printk-formats.rst was altered so we know the code is merely in bad
> taste and not using undefined behaviour of printk.

Ok, i will fix this after the first run of patches.

Tom

> -Chris
>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
