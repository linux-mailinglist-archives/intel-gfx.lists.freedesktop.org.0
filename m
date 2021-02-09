Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4320331541D
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 17:44:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A5756EB7D;
	Tue,  9 Feb 2021 16:44:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34F866EB7D
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 16:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612889042;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jXgigGlEWwXeuHFBknU4UpbbHCCiPYOX7SCmGJAz80k=;
 b=NzkksmDrSwYKrv2kH/OCHqNOfH5Knikx2lXeqZ2GiLBir/KG92KNc11iHtSuTJAbSoiaHi
 Py77oWSkzjRgLY5qx/RyKChncgA49PD6xniIaWkDBpOsffH7Oq6ENGqnGE5nsRkIuTYbcS
 tDWxhxDacq4fqS0QqJj99lhKefUcpWM=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-139-JC5FbY2jOR6n4Skj6Kz-aQ-1; Tue, 09 Feb 2021 11:44:00 -0500
X-MC-Unique: JC5FbY2jOR6n4Skj6Kz-aQ-1
Received: by mail-ed1-f70.google.com with SMTP id w23so18550683edr.15
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Feb 2021 08:44:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jXgigGlEWwXeuHFBknU4UpbbHCCiPYOX7SCmGJAz80k=;
 b=WvQrmEqwAptmcT1dBYfu4wQJeDZ/gRLoG7ShkekjfH+qnD3X7PdbkQEcAYdLbM8qMs
 wFJWQqgwFbLP/unSUjpSdXz9JFJFc0kpqkrB8vkIDN2mNLdLc64Kzy1poQ1eVRD5f3YO
 nMV0yKugs3SJ8XlJmTK7Lm1+9IeEKR2AkLBk8kyTNX8Y477i33vyBukgiE2oRejvvsBa
 O8LNQzKOCWDyea1JT4GlVmH+PfLllX9EhKvF2cEANKwrvrXVQK0CX5+o3UT+cqavUURy
 9yV2rOMu9IHdZZHZQe/hBQvnNR1fQWkzu2YEbpFE3h0DwOUZTNmR9bFMgztsDZ8y80S0
 vKuA==
X-Gm-Message-State: AOAM532MPKBlclEYXjIL5sgis44a9Kgw7hC4kYIZm2Yp5I0HjK1dWSRc
 NXE/pyqgHQyUDHJmrKE+UWEBzTH2QK2FRYrIbvhJh0XCwQLQ0pv3EZZyHtskWlBIVUWsOcVzT+3
 ns/qA2tsDoPDV0j4OtZrlFHDEpXf3
X-Received: by 2002:a17:906:1be9:: with SMTP id
 t9mr22841981ejg.527.1612889039628; 
 Tue, 09 Feb 2021 08:43:59 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz80em6MoRBiFwcDp4DrFzeg9eZXV4029nWQZ0qYr/6kTtG6eLyGrOybSwxBTQaYCk0Vcn1EQ==
X-Received: by 2002:a17:906:1be9:: with SMTP id
 t9mr22841954ejg.527.1612889039340; 
 Tue, 09 Feb 2021 08:43:59 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id z19sm5135435edr.69.2021.02.09.08.43.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Feb 2021 08:43:58 -0800 (PST)
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, stable@vger.kernel.org
References: <fe6040b5-72a0-9882-439e-ea7fc0b3935d@redhat.com>
 <161282685855.9448.10484374241892252440@build.alporthouse.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <20c3d11d-75f6-ad82-1100-3015ff463406@redhat.com>
Date: Tue, 9 Feb 2021 17:43:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <161282685855.9448.10484374241892252440@build.alporthouse.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [5.10.y regression] i915 clear-residuals mitigation
 is causing gfx issues
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 2/9/21 12:27 AM, Chris Wilson wrote:
> Quoting Hans de Goede (2021-02-08 20:38:58)
>> Hi All,
>>
>> We (Fedora) have been receiving reports from multiple users about gfx issues / glitches
>> stating with 5.10.9. All reporters are users of Ivy Bridge / Haswell iGPUs and all
>> reporters report that adding i915.mitigations=off to the cmdline fixes things, see:
> 
> I tried to reproduce this on the w/e on hsw-gt1, to no avail; and piglit
> did not report any differences with and without mitigations. I have yet
> to test other platforms. So I don't yet have an alternative. Though note
> that v5.11 and v5.12 will behave similarly, so we need to urgently find
> a fix for Linus's tree anyway.

Note I've gone ahead and prepared a test kernel for the Fedora bug reports
with the following 3 commits reverted from 5.10.y :

520d05a77b2866eb ("drm/i915/gt: Clear CACHE_MODE prior to clearing residuals")
ecca0c675bdecebd ("drm/i915/gt: Restore clear-residual mitigations for Ivybridge, Baytrail")
48b8c6689efa7cd6 ("drm/i915/gt: Limit VFE threads based on GT")
(Note this are the 5.10.y hashes)

I know going this route is not ideal but it might be best for 5.10.y for now.

I will let you know if reverting these 3 actually helps once I hear back
from the reporters of the issue.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
