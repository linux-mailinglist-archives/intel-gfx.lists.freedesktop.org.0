Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCEB3A2FE8
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 17:55:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E27D26ED64;
	Thu, 10 Jun 2021 15:55:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FB9A6ED64
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 15:55:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623340525;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iZQG49OMdPKGkVDjxzrA9bmQ2IiyK39OfqmeMQ/HNjI=;
 b=Q5mN55avTcxInUR1ZgvjWQBqocRHkYOebEYEaElZKrCqLUvE730mA9js9gdU8nhCw5A+2j
 5y/9Hcetri1TncfF0Xk61IIE9ENCDikft5z29N0VzmMAOMf0uc3D3GQE0lflDI0/55Pe/s
 75Y6r8j7ckiB9vwll1b7JPrLP1l1e20=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-287-Ipk494-YMv66fxswqaqoBg-1; Thu, 10 Jun 2021 11:55:22 -0400
X-MC-Unique: Ipk494-YMv66fxswqaqoBg-1
Received: by mail-ed1-f71.google.com with SMTP id
 v8-20020a0564023488b0290393873961f6so7024761edc.17
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 08:55:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=iZQG49OMdPKGkVDjxzrA9bmQ2IiyK39OfqmeMQ/HNjI=;
 b=ng4IE25DS97pzFemdhoFc0gCd/ipx1OE+NotNhZdQzp741e8NLM6ojQRSXSNzS5U00
 hDaVRB+3r3LQtuO+u2AC7+h0muYE4VG7nEZszKMtFjQsLKGZ3TxlJFPG3zqMXqrixQ6r
 qBnAWeUVbS4rsu4PKqzLVJW1Wk36sSOHW/LPfnMEG079lSCQTvSFRc7ubc2SBMhex7yL
 Cva53S1tqiRN2yE1F2uF3Ab9vl362XLFdSpIm1a6nZSowyiqco7d5y0sz9HAWvEvY5yP
 IxDqL4JZdDYls5wq6GQDLP9nlSvMPJjuLkZRds4lWmTcQrg5DWHaIreNQdRy4NusFKYf
 zhMw==
X-Gm-Message-State: AOAM531rAzUARLGwifd6k9AtT08K8gAgiDw9G/OEqY6Owvu5UavMDcp9
 AXK6KMwhUOOLfm6weiNBka9gNW2Gxx2JB3jcnhjkRbn/5TWdaH75ITi4rdwkuNXfP1YzB4pHxZ9
 YxtyXhGgx8w/V2ODsAM4M4LIMWBNk
X-Received: by 2002:aa7:c6c2:: with SMTP id b2mr162824eds.8.1623340520941;
 Thu, 10 Jun 2021 08:55:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzegUSmNkouCVxXgL5EpM34N2tl0oLxPr9grZP9q3YInG4mkvVxKvf1gpjZDLfSXaCu5fvtcw==
X-Received: by 2002:aa7:c6c2:: with SMTP id b2mr162805eds.8.1623340520764;
 Thu, 10 Jun 2021 08:55:20 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id jp6sm1224885ejb.85.2021.06.10.08.55.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Jun 2021 08:55:20 -0700 (PDT)
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Colin Ian King <colin.king@canonical.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Mark Gross <mgross@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Jesse Barnes <jsbarnes@google.com>
References: <548dd463-3942-00a1-85c3-232897dea1a3@canonical.com>
 <162332615476.15946.17135355064135638083@jlahtine-mobl.ger.corp.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <7e13032d-1472-9c50-1dba-9dcebc76729f@redhat.com>
Date: Thu, 10 Jun 2021 17:55:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <162332615476.15946.17135355064135638083@jlahtine-mobl.ger.corp.intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] Computation of return value being discarded in
 get_cpu_power() in drivers/platform/x86/intel_ips.c
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
Cc: intel-gfx@lists.freedesktop.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 6/10/21 1:55 PM, Joonas Lahtinen wrote:
> (Address for Hans was corrupt in previous message, which confused my mail
> client. Sorry for duplicate message, the other is without From: field).
> 
> + Jesse
> 
> Quoting Colin Ian King (2021-06-09 14:50:07)
>> Hi,
>>
>> I was reviewing some old unassigned variable warnings from static
>> analysis by Coverity and found an issue introduced with the following
>> commit:
>>
>> commit aa7ffc01d254c91a36bf854d57a14049c6134c72
>> Author: Jesse Barnes <jbarnes@virtuousgeek.org>
>> Date:   Fri May 14 15:41:14 2010 -0700
>>
>>     x86 platform driver: intelligent power sharing driver
>>
>> The analysis is as follows:
>>
>> drivers/platform/x86/intel_ips.c
>>
>>  871 static u32 get_cpu_power(struct ips_driver *ips, u32 *last, int period)
>>  872 {
>>  873        u32 val;
>>  874        u32 ret;
>>  875
>>  876        /*
>>  877         * CEC is in joules/65535.  Take difference over time to
>>  878         * get watts.
>>  879         */
>>  880        val = thm_readl(THM_CEC);
>>  881
>>  882        /* period is in ms and we want mW */
>>  883        ret = (((val - *last) * 1000) / period);
>>
>> Unused value (UNUSED_VALUE)
>> assigned_value:  Assigning value from ret * 1000U / 65535U to ret here,
>> but that stored value is not used.
>>
>>  884        ret = (ret * 1000) / 65535;
>>  885        *last = val;
>>  886
>>  887        return 0;
>>  888 }
>>
>> I'm really not sure why ret is being calculated on lines 883,884 and not
>> being used. Should that be *last = ret on line 885? Looks suspect anyhow.

This has already been fixed (yesterday actually) in linux-next:

https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/commit/?h=for-next&id=13c3b4f76073d73dd81e418295902676153f6cb5

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
