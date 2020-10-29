Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7AC29EBE1
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Oct 2020 13:32:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA2816E438;
	Thu, 29 Oct 2020 12:32:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5C386E438
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Oct 2020 12:32:23 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id t9so2534220wrq.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Oct 2020 05:32:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=BBrJIgLKBYDy16rTbmTWg506d4O7ct14lngo09fe7CU=;
 b=g46V7d3ArsIZT19lNtM5SSUmHufCHStkQWjhWZ1ALoiYkfR39IlwKWIOQcfxI9m7gd
 MbxIr9LHoE82/5012n9V8Iiopwl7PMU2j0F+ki793Y34Gpvuxwu1ATEPfvvXXtrRPUHP
 AIwX97L40pg++TUABCU3VmMSe2ewLYbka3jVjlnvKD87X09AXCxpFiSg3AV+1j+kPEGO
 4HaHwDVqBxkBr+npv2EnctM0fTD3e5mCB7hqQRbvCtRPE0lfIU5kBYInhFMoe9GjHaC5
 xxpDX5onHkt/jxIj2XS9Jkt2Mb4AAm4+rVS1Nk7PMFgEWbjYXu+ujkDVxdASZ36pktFU
 0p6A==
X-Gm-Message-State: AOAM530GPYSOL4Q3HwevXpSRwRcOckqxyzF4qH9DEBWX9/hP6PVRoTUG
 gwvoyt3mKRrqdpuSAUsZsapHQY4040ZJKw==
X-Google-Smtp-Source: ABdhPJwn4lfXByUXYckOv/myd00ae1viVJt8G6dUy3uhGesUiXOJJ59sHIjSiDVLGByCDA6wkn711Q==
X-Received: by 2002:adf:f043:: with SMTP id t3mr5139085wro.234.1603974741957; 
 Thu, 29 Oct 2020 05:32:21 -0700 (PDT)
Received: from [10.0.0.21] (smtp.glidos.net. [82.69.85.168])
 by smtp.gmail.com with ESMTPSA id p13sm4785102wrt.73.2020.10.29.05.32.21
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 29 Oct 2020 05:32:21 -0700 (PDT)
To: intel-gfx@lists.freedesktop.org
From: Paul Gardiner <lists@glidos.net>
Message-ID: <ac472118-be43-dc8d-87a3-c4d17c9d9f26@glidos.net>
Date: Thu, 29 Oct 2020 12:32:20 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
Content-Language: en-GB
Subject: [Intel-gfx] Does the intel driver support faking a connected
 monitor?
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

I use an open source DVR called MythTV. I've just swapped from using 
nvidia graphics to intel graphics. Generally it's working great, but 
I've run into one thing I used to do with the old system that I cannot 
find out how to achieve with the new.

MythTV doesn't currently entirely handle starting without a TV 
connected. With nvidia graphics I could specify, within the X config, 
the "ConnectMonitor" and "CustomEDID" options to fool MythTV into 
thinking there was a TV. With intel graphics I can load EDID, but so far 
I haven't discovered an equivalent of the "ConnectedMonitor" option.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
