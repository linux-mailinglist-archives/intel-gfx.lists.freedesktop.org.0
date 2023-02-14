Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E80C96995AA
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 14:25:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3264210E300;
	Thu, 16 Feb 2023 13:24:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com
 [IPv6:2607:f8b0:4864:20::d2a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FC2910E7DF
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 06:15:28 +0000 (UTC)
Received: by mail-io1-xd2a.google.com with SMTP id l128so5431879iof.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 22:15:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=adrinael-net.20210112.gappssmtp.com; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=i2RhLzVc92234r4F6uGN/lsCNre8nU12oIQiuGvrNzE=;
 b=T7nZGQFbluxCB5RnMysm/bvH/O4iA5kjQhjRf/VfZSM9s/JdDH/VX4XsPuc8SKWS+p
 b7d7GC/tpHg4aUPrW9gE6xPmdGfCKnB10EWds4m/Lp+WQnuaYwu8ecr00ChcyBmQ0aJT
 MuPYuxaVbZGnRcSqQsmKMYWg9d6I5ChWasVw/4IyP9kLGsQ38VB336vkiC5vszATfFWP
 hSLDTCTl1cF6BYvO4uu+nFkdDP+CvvoapYmy00jeSbxgBhfrPQXSMHB1xvQgw4FTeuxd
 XcIJeP6pTHoTYLOf1ajvV023WVMkKaodMjqBztslM/LFPGuuUVGn/BVmHU6IEnzGwTxg
 OMRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=i2RhLzVc92234r4F6uGN/lsCNre8nU12oIQiuGvrNzE=;
 b=Ak70GnWi0cgFlGCW6gNafyv9nvcwzrGFvH1bPyitq1+nNgMBYYSXf4EQyNwuP2AEPb
 c34lIB6MCzC9eqM4GzhwUgkevBPgF8iRy/R/SHI51CDUFBPSWdL2NwhdNm05CSVnp2wd
 uEVTCUJOFTrLoE3ib6sd3hDNAd7DzkBDzRHGMLkdseiEBbWzCtrBl/LIDg7GJSqdSm8f
 R8mDZqhr0uI/6adFPXL2m6tNbf/W7+vu1P9k+0PKVMR4EtKINWth3M09J1Pch/mVQjDw
 CXuHoZWDl89uCuedfQjH8bsXUYun+utqoSVUkodycPi8gm9abIu66AlFb2OAJYkcGXKk
 CU4g==
X-Gm-Message-State: AO0yUKUNXeXY/DvYZWCbuGs8hciqAWAsiS6+gii7GqwYuut+1bJBwfSn
 yPyvTaDakfcAtdz38U5DvasDDg==
X-Google-Smtp-Source: AK7set/q0aAbGp7Zx/OSCFS+uMmuI8Axrf1u5mAqIDEBOz8eItwQimyWWUTFFGCYDohc8cDui7Zsmg==
X-Received: by 2002:a5d:9d13:0:b0:710:25f2:7c7e with SMTP id
 j19-20020a5d9d13000000b0071025f27c7emr1029687ioj.17.1676355327644; 
 Mon, 13 Feb 2023 22:15:27 -0800 (PST)
Received: from hufflepuff.adrinael.net (dsl-hkibng21-54f8c5-237.dhcp.inet.fi.
 [84.248.197.237]) by smtp.gmail.com with ESMTPSA id
 s21-20020a056602011500b0070766817820sm4800190iot.20.2023.02.13.22.15.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Feb 2023 22:15:27 -0800 (PST)
Received: from adrinael by hufflepuff.adrinael.net with local (Exim 4.94.2)
 (envelope-from <adrinael@adrinael.net>)
 id 1pRob7-00BgHZ-Aw; Tue, 14 Feb 2023 08:15:25 +0200
Date: Tue, 14 Feb 2023 08:15:25 +0200
From: Petri Latvala <adrinael@adrinael.net>
To: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
Message-ID: <Y+sm/Zr9LM8CK0IT@adrinael.net>
References: <20230209193231.57538-1-janusz.krzysztofik@linux.intel.com>
 <13320072.uLZWGnKmhe@jkrzyszt-mobl1.ger.corp.intel.com>
 <20230213095139.c5gcznwdf4a5kpgo@zkempczy-mobl2>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230213095139.c5gcznwdf4a5kpgo@zkempczy-mobl2>
X-Mailman-Approved-At: Thu, 16 Feb 2023 13:24:56 +0000
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tests/i915_suspend: Free
 device list after *-without-i915 subtests
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 13, 2023 at 10:51:39AM +0100, Zbigniew Kempczyński wrote:
> On Fri, Feb 10, 2023 at 10:33:21PM +0100, Janusz Krzysztofik wrote:
> > On Thursday, 9 February 2023 20:32:31 CET Janusz Krzysztofik wrote:
> > > If any of *-without-i915 subtests fails or skips for any reason, it may
> > > leave the i915 module unloaded while keeping our device list populated
> > > with initially collected data.  In a follow up igt_fixture section we then
> > > try to reopen the device.  If the test has been executed with a device
> > > filter specified, an attempt to open the device finds a matching entry
> > > that belongs to the no longer existing device in that initially collected
> > > device list, fails to stat() it, concludes that's because of the device
> > > having been already open, and returns an error.
> > > 
> > > Fix this potentially confusing test result by freeing the potentially
> > > outdated device list before continuing with drm_open_driver().
> > 
> > Freeing device list occurred not safe if device scan was not performed before.  
> > I can see 3 potential solutions:
> > 1) force device rescan instead of free before calling drm_open_driver(),
> > 2) teach igt_device_free() to return immediately if the device list has not 
> >    been allocated,
> > 3) provide a has_device_list() helper for to be used if not sure before 
> >    calling igt_device_free().
> > 
> > Any preferences?
> 
> I would enforce rescan.
> 
> BTW I wonder how it can happen if runner is executing each subtest
> in new process so you're starting from scratch and rescan should be
> executed automatically.
> 
> Is is the case you're running few tests from the console?

For the record, igt_runner has --multiple-mode where multiple subtests
are executed in the same exec.


-- 
Petri Latvala
