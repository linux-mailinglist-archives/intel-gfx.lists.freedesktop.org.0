Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDF612CACD
	for <lists+intel-gfx@lfdr.de>; Sun, 29 Dec 2019 21:44:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A86F89BF5;
	Sun, 29 Dec 2019 20:43:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 235ED8857E
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Dec 2019 12:25:03 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id c9so28464589wrw.8
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Dec 2019 04:25:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=M4vgzz0oAXRvJoZ0R6qlgcc6Xg1V//JM8vAN7dpOL4g=;
 b=aPcbQb1gnfYWZrTVFyMfwJNKtcw6Nsw0eBaBsnaITppPk9bA026aqwVG70FwZO+Vu3
 tMH3IHWoVNNyqgnWUeND+KTB4L+1o6WrM1l+zyjQRzKbW/OR8U/LhJsdNbFSBX7XbzcG
 ozO6m26v7wBsT0o3LR3OclWLm7zEiexugAp0fvK6qhDnYBso7QboeU908+bRUVqyMBJk
 uwGvdSJALiGIMDEqX+238Yvanwk+9v55DBuVdPL5nyX+NCdhJslrinCu+e+h9elDL7k9
 3DRduSErwvSqWzNiUnMSCpS16XFXylmSwuYxE0vrMCfNFj0r++h/kyrqLjiWQvet7dq5
 9pAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=M4vgzz0oAXRvJoZ0R6qlgcc6Xg1V//JM8vAN7dpOL4g=;
 b=q75vc+ypyIHTSgBvXJ8VJfq9/cTj8DJqO8pfxSaRReATAFJSuOxANV2ubZciQeDs9h
 2ctDC/ig1e0TtPp4+tciUTIq0IM66BYvAFTc/OUvN1R7iy1XKyVqM/gQnFsU46DsmM9E
 pECc2T/jYOxOemHfIbeigWOHtxhLSAYlLLcCS7oq4OzWPYI+WHnHia1FRAh08tA/Tyus
 5PAZhv68eAQI+lF4fdIxO4CyZRmVdCc1+RdpjittJL6ScOfNjEndcmiCJSdVZKclAHTe
 kl+mgLnGHbi7C8l6d2Qt7hsanLDefn0OhPrA7xh3nyciQ/GjQiJGtIHKFOtQnbaFz4+z
 GTjA==
X-Gm-Message-State: APjAAAXnUUzMSFkwitnduvD+fiHnBGA9RjP146JzOcaS7fgjZsakoGNQ
 Uyq3BMUeBczWHcdlvQJElLM=
X-Google-Smtp-Source: APXvYqy6Cnwg5IGbduO86vMFkLHe38BBnJct/alm/5MpmpmWxKb77YQumOey1t1hK0D4sLqeE/jw2Q==
X-Received: by 2002:a5d:55d1:: with SMTP id i17mr54545663wrw.165.1577535901630; 
 Sat, 28 Dec 2019 04:25:01 -0800 (PST)
Received: from [192.168.2.202] (p5487BD0F.dip0.t-ipconnect.de. [84.135.189.15])
 by smtp.gmail.com with ESMTPSA id f1sm37857411wru.6.2019.12.28.04.25.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 28 Dec 2019 04:25:00 -0800 (PST)
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
References: <3d1744d1-5161-d377-7c3b-2e907060e3f8@gmail.com>
 <1b2ff00a-3387-c39f-49cc-64afbfd78d4c@intel.com>
 <bc4e8a25-05b5-72fb-8ddd-2275b739f0a5@gmail.com>
 <bc31eaa3-c5ed-819f-a94a-1f7ca335ea86@intel.com>
From: Maximilian Luz <luzmaximilian@gmail.com>
Message-ID: <f9df12be-b34b-19ed-d052-42731d2dbd7c@gmail.com>
Date: Sat, 28 Dec 2019 13:24:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <bc31eaa3-c5ed-819f-a94a-1f7ca335ea86@intel.com>
Content-Language: en-US
X-Mailman-Approved-At: Sun, 29 Dec 2019 20:43:52 +0000
Subject: Re: [Intel-gfx] Plans for i915 GuC Submission with regards to
 IPTS/ME
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
Cc: Dorian Stoll <dorian.stoll@tmsp.io>, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 12/23/19 7:55 PM, Daniele Ceraolo Spurio wrote:
> If you only care about gen9, a possible solution would be to
> forward-port just the old GuC submission (instead of the whole i915)
> from a know working kernel. It shouldn't be too bad since the GuC code
> is relatively self-contained, but given the speed at which our
> submission code evolves there might be issue in the interactions
> between the old GuC code and the other parts of the submission flow.

Right, we may have to look at that. We're currently looking into a
non-GuC workaround as there doesn't seem to be any OpenCL kernels for
the Surface Pro 7/Surface Laptop 3 devices (that's another issue...),
but we will keep that in mind for the older devices.

> No idea about the details of what goes on on Windows. The firmware is
> OS-agnostic, but they might be using a different version compared to
> us, especially on older platforms.

Yeah, I suspect they're using older firmware on the older devices. Just
wanted to know if there's any special stuff on Windows. Given that the
newer devices (Pro 7/Laptop 3) don't seem to have any IPTS firmware at
all (OpenCL kernels etc.) could suggest that they might use a different
implementation (maybe non-GuC/no GPU processing), altough the IPTS
driver still seems to be in use.

Thank you for sharing your insights, this has really helped us.

Regards,
Maximilian
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
