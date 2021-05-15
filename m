Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34515382B95
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 13:57:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E0B76E938;
	Mon, 17 May 2021 11:57:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F0F28916A
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 May 2021 10:40:17 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 z19-20020a7bc7d30000b029017521c1fb75so377285wmk.0
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 May 2021 03:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:date:in-reply-to:user-agent:mime-version
 :content-transfer-encoding;
 bh=LiqtW1rxKd2wxF0v91301x2oCEy45/UYqTUyOCprkA8=;
 b=PZHjFLuOyy+uhuSSHCXi+h5f1pelSIZNs5QdGw3Cs7gyKcEnz1Rw/eSrHXYbDz1JR6
 IsuqWAmP4mzMuwPWhNaVZbf2tNCXpcXdvHXMsRLCnTXKquE7ix+tAYORdDrPyKpJK/ww
 0BSGd/GZYHww+YobuoHKBrVXaRxDgS4czrYNbufnf8tfM67ylyk0vr9QIzM2sfsMgYp4
 zPJQJR2QBg4KUyKq1BTxKchmjkA9oOTVTdnBoiTq2q4A8o8MHciuhOVuYFPacUhlMVSr
 1GWliGUGuE+TPPOApgQvRzaGKnghqJOhlVmuzGdL/tUfBOpZvyhptTu4iqTa1E1OdcHu
 WWng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :user-agent:mime-version:content-transfer-encoding;
 bh=LiqtW1rxKd2wxF0v91301x2oCEy45/UYqTUyOCprkA8=;
 b=TMW8gNRmoDUXFbQ36us53nuElI8L3L8nV/JNZt1jo3EIlc7DAdlerYUePcUL/v5nd3
 wTZPyelnDgMdWbAFw+dD1iDTDuOjA2Uw3MSCwm9omu2hEOr2dBSZeU0qCkJhTTsVJwSh
 rfi0oFWbRjR1F9XHFXnA/fmEb6xjAOQnUSJ0uoKq/pPNIzl5kqXKgNvBRRliJEyBW7UR
 NIULnPw7aLyocOHhXp55F+Xf35bQBZ8Ioc5on74u9HnuRLNgnqtTRCkaIbmXZXeDgOFI
 20TdqMKsu5v+cmrMl+YUJJzvvEQC/r5yvsOzSs8CUhWICxwMGmEWfa/Wy2E5i/+opoNS
 WUwQ==
X-Gm-Message-State: AOAM532A2iBdnb7ngNCevKCcTiBCsZltMtiK1WGAdQyNe2UhgS4AhRAP
 DPcBWMIHLOcMnVnftS/3npY5q6Q9Fpo=
X-Google-Smtp-Source: ABdhPJwYqtRho6iU7Ga9M0vzwpY5z8sYnSTQuIU8zl8thKTJKH+95AFgWXq7OOIPoAIG48mfJJ9sww==
X-Received: by 2002:a7b:c8cb:: with SMTP id f11mr13928943wml.163.1621075216106; 
 Sat, 15 May 2021 03:40:16 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:4ed:6210:bc33:ae04:4495:a2f6?
 ([2a01:e0a:4ed:6210:bc33:ae04:4495:a2f6])
 by smtp.gmail.com with ESMTPSA id u16sm7799446wmj.27.2021.05.15.03.40.15
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 May 2021 03:40:15 -0700 (PDT)
Message-ID: <c889265cfdbeb9374ed98b8defed59ef81bc0159.camel@gmail.com>
From: Maxime Schmitt <maxime.schmitt91@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 15 May 2021 12:40:14 +0200
In-Reply-To: <6cf2f14a-6a16-5ea3-d307-004faad4cc79@linux.intel.com>
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 17 May 2021 11:57:02 +0000
Subject: Re: [Intel-gfx] [PATCH 0/7] Per client engine busyness
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

Nice to see something like this being worked on.

I wrote a top-like tool some time back (nvtop).
I targeted NVIDIA, because it was the GPU I had at the time. Also,
their driver provides a nice library to retrieve the information from
(NVML).

Seeing this thread I think it would be nice to support more vendors now
that the information is available.

I took a look at the DRM documentation, but I am only finding the in-
kernel functions and not what is being exposed to user space. Maybe I
am searching at the wrong place.
Is there some documentation, from the user space point of view, on the
way to discover the GPUs and the metrics that are exposed?

Regards,
Maxime



_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
