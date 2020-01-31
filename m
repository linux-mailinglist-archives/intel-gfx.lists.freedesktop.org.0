Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 053AF14F3CD
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 22:33:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9F876FBF0;
	Fri, 31 Jan 2020 21:33:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com
 [IPv6:2a00:1450:4864:20::141])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0478A6FBF0
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 21:33:03 +0000 (UTC)
Received: by mail-lf1-x141.google.com with SMTP id y19so5859986lfl.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 13:33:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:references:subject:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=yIr4cruvFkhb2VFg2bR2rJz5UW3p05W+VQ4jTbNRGuQ=;
 b=UgYiLSSBvEAUJ8IZTVJ8pEkDME65Rls7gc1iOywxcmjWv/HnOwDekRdyWQXRItvOpN
 t0acOQxuylfR3WJ/1uiCtbH3raUBpHgdFL2CKTXkm2JasELmLpmkBmnHsPNBgDEJGyJ5
 kdvJnSYxQ7KoVk0d+tdXLtJ3dAz6pTQamGn9tCKqdv9f4xXQHiGz0ncdgi/vme/0uBxl
 2XnUqBmyGIIPo00yLzkMY6p9uMe9QwY40LyZ1y4c4tZKVniNvc/FyCw6nvXziHmrGvx1
 LvWCZgjfgNRTmldakGeqokKNJyu30Pp0zOlv5OqBaG0he3oerZ/+eQ0RRSqgoNNt/vTG
 gHHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yIr4cruvFkhb2VFg2bR2rJz5UW3p05W+VQ4jTbNRGuQ=;
 b=qhK1AtWjZUt8JM8wE6zSsmmFAzm03ZEkO64X+pZkdc7ZBOzIMFWUghRaKX02TZZSNO
 WLDteerO0UWBO1jnElcsmMo3aNCo9AY6gTslRO1WjHGnCj3Dx2PDXw9Hf6bXYSgxmnfH
 qE1T1rN0j8vMHaLkQqLft9JzvjCE1PoPQoL0373Q25S0pjLY0sozbeJeL2F6wTgrQIS5
 E6kBNY+gN8tjqcLW3l6vsCm39cAcpCAuIXN7mMTzUdBRAfDU3x2ybES+vTmyyl9YSyR1
 5AH11fnC8aOGbYCHJhyV+WAHBnrK0TVzcnU37yWKKrVJUoC+PEiennilSQCKpCRdo5en
 U1CQ==
X-Gm-Message-State: APjAAAX2B5VQzMOnkKdsEkNX1aBH21CidYfuh8qZoFjg1plG4yz1/Rvt
 UhK0RJgWLdX4VWeP+gDTs3lJ379L
X-Google-Smtp-Source: APXvYqxttyjnkwnoRvmeAq/Zrm7q/zVLjy6icTaBbvT7obfPJiniGCQhiq+YxqP7M5MIHYzY+d2mNA==
X-Received: by 2002:a19:ca59:: with SMTP id h25mr6485204lfj.27.1580506381160; 
 Fri, 31 Jan 2020 13:33:01 -0800 (PST)
Received: from [192.168.0.5] (82-208-113-148.dynamic.mts-nn.ru.
 [82.208.113.148])
 by smtp.gmail.com with ESMTPSA id h9sm281891ljg.3.2020.01.31.13.33.00
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 31 Jan 2020 13:33:00 -0800 (PST)
To: intel-gfx@lists.freedesktop.org
References: <8d961f4e-ed23-1578-8120-dafd73da2b34@linux.intel.com>
From: Egor Suldin <rd3tap@gmail.com>
Message-ID: <8e77f0bb-255d-20c1-2a4e-24a5642c286d@gmail.com>
Date: Sat, 1 Feb 2020 00:32:59 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <8d961f4e-ed23-1578-8120-dafd73da2b34@linux.intel.com>
Content-Language: ru
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
