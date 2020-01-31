Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5694814F3D9
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 22:35:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B18096FBF5;
	Fri, 31 Jan 2020 21:35:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F2406FBE5
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 21:17:07 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id h23so8539938ljc.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 13:17:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:references:subject:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=yIr4cruvFkhb2VFg2bR2rJz5UW3p05W+VQ4jTbNRGuQ=;
 b=akkLJX+/qbSZtlj4oGei9e4tcc2YcUv38NVuO8F1mJfBAIYNKxegA4Bxiad80ooRNi
 rsv75/tOGX4x8LNdLrWAVFDezpiBY0m/N4fdCeHvtTKwDh6Z9pQwQd4Gk1b2txD9rhsf
 XzzcAXgJFuFYLv3FjnSckbGpEokV2rZ7sqa2ks3vwpfIzYV/hqwmKVftPmpBAub+lOs5
 5FwxrPppGtlJHbnW2MAX1ygGTNE216X5hPu8y6A6PezrQmhVUwdkQZjqJyOxH5uo/f+l
 2Vrf4YO2YCygVO0mU2+rQT/xCMjTv4wJ2EY4mgk4YM551jFHrjJ9s2IBOQanNibJLiZa
 RcvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yIr4cruvFkhb2VFg2bR2rJz5UW3p05W+VQ4jTbNRGuQ=;
 b=bJstxfNEh4x+lw/7IRvZ12RKvGJHA7KS5MAbb2T9w53XDAXumrw/T/ORCbyLE8t+tR
 6OMyJ3IF8zGNfujdKiDlj/rW9AybaQm/4lqziZg01nQc6O9DC1H9zJoKODK9DdXbLS8b
 n4YpsTUB3uwaCqL22t/H6FhNzhBUQ3XmpFvkamC/A0pNWUnEiC+Aj8Gj0wYNeR4qeSy+
 +iEJyxKtkK1MvirChEGvu1RJ5lZd6q5p+gRhmGI+KHzc0njV9PBrijp/gNP2nMbUFYpI
 OO8SNuhfz34jLli97Zh8Q6oWkrpFqt0qQUr99BqnusmPuMqk96N2b0SysEm6a/ZowWRs
 Ec3Q==
X-Gm-Message-State: APjAAAXJM3ljOuZBnrLNrT/iNDt4/Rg2DHObcr/iFq7CsXlTC6TykiSo
 5MdjjqIcEGW6Sox0bUwceR/MurFX
X-Google-Smtp-Source: APXvYqzaUzNDEvZFq0+31h+4u+i0jz+RzI45c1IK6PTleZWkKUcS+N3yPOibzkw1c0GGd309Oa6SZA==
X-Received: by 2002:a2e:b5a5:: with SMTP id f5mr6844980ljn.162.1580505425424; 
 Fri, 31 Jan 2020 13:17:05 -0800 (PST)
Received: from [192.168.0.5] (82-208-113-148.dynamic.mts-nn.ru.
 [82.208.113.148])
 by smtp.gmail.com with ESMTPSA id l28sm5136417lfk.21.2020.01.31.13.17.04
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 31 Jan 2020 13:17:04 -0800 (PST)
To: intel-gfx@lists.freedesktop.org
References: <8d961f4e-ed23-1578-8120-dafd73da2b34@linux.intel.com>
From: Egor Suldin <rd3tap@gmail.com>
Message-ID: <068b5f05-0695-6032-9df9-0d1e296e90ee@gmail.com>
Date: Sat, 1 Feb 2020 00:17:03 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <8d961f4e-ed23-1578-8120-dafd73da2b34@linux.intel.com>
Content-Language: ru
X-Mailman-Approved-At: Fri, 31 Jan 2020 21:35:26 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/tracepoints: Don't compile-out
 low-level tracepoints
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi!
I use GPUVis and now Intel Vtune Profiler. These tools don't work 
out-of-the-box on all Linux based systems for Intel integrated graphics.
It is needed to rebuild at least i915 module. And each time when the 
kernel is updated it is needed to rebuild i915 module again.

 > No numbers from (micro-)bechmarks showing how small the impact of doing
 > this is? I thought John was compiling this data. It will be just a no-op
 > on the fast path, but a bit more generated code.
Have you collected the results? If not, I've done it for you:
Benchmark for Metro 2033 Last Light Redux:
w/o events:
1st run aver. fps: 36.06
2nd run aver. fps: 35.87
w events:
1st run aver. fps: 36.05
2nd run aver. fps: 35.92

There is no difference. It was run on Intel Core i9-9900K CPU @ 3.60GHz 
on integrated graphics.

 > Assuming that will be fine, the only potentially problematic aspect that
 > comes to mind is the fact meaning of these tracepoints is a bit
 > different between execlists and guc. But maybe that is thinking to low
 > level (!) - in fact they are in both cases at points where i915 is
 >passing/receiving requests to/from hardware so not an issue?
In my view, it is not an issue. The real issue now that you cannot 
collect performance results for Intel GPU
on Linux systems without rebuilding the i915 module. You cannot debug 
performance problems
on the system even if you use tools from Intel. Do you have ETA to 
accept this patch?

Thanks,
Egor
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
