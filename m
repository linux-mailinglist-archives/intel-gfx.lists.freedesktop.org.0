Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 707B73140A3
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 21:39:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F335D891C3;
	Mon,  8 Feb 2021 20:39:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B644F891C3
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 20:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612816743;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=btg00I64wsKOUWqtLHwx48Qsg1d88XywVIHITa//+D8=;
 b=gXBAriF4D3p/m9BCupevT+80C337LEGkE6PSOQLWRd8HzxmaARWV/jpI94yshBDunPNFjs
 mNQtNF2NhjmrYi5+gFUrec+1GYOJ1P2g+QZBNvOlZMiD2Bv9jNszz0krw2TdigcqDWG+uG
 TAWNzhlTQkIRJ10gT6mLqOnhNUYU7lU=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-238-4VrbkmHOMFqbfM368aOsew-1; Mon, 08 Feb 2021 15:39:01 -0500
X-MC-Unique: 4VrbkmHOMFqbfM368aOsew-1
Received: by mail-ej1-f69.google.com with SMTP id gv53so6218042ejc.19
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 Feb 2021 12:39:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=btg00I64wsKOUWqtLHwx48Qsg1d88XywVIHITa//+D8=;
 b=GxdQaV2wftgMYNvTGG1NDA4q0CV0DqhzXOnc+TPG4YB+GrH6aJmotWe1tsjDkDQmHd
 yAGrjEETtQamoOPbmTgQnHbvg4mzZrmsUVdBGME6ibtR1XlGjrsoO3Ya0rB9TMxMpYkq
 owxSdavrkfezF7yoxyriiztaCu3XN4blz80Bbm0Wj/S1bYBDACmt+HlsioTNNeriPnpM
 caQbW1I2SdZ8GiifrHOdgRqrN3H1k+KNldINKKfBSeWxm1gWPFbQrrOAsX+BEU0llS/0
 83fQRMGJMsokIWQfvM+UQquw+EPZnLv3UrQ1wWJZpX5f3485FBMqXbL619jsqayGAB/a
 4Nvw==
X-Gm-Message-State: AOAM530CPElBI91cBzU6sVaSLcAAah3NbRgXDTPjnODiH58JiAg3MfXE
 k6wfh9n49qstwEq7I0hSUWAerWI7edzAV2ByBeHLfRrL0EoanuIKu5knnIRph7rAjTHuVv/hR+N
 g6ZnoY232SmVQK936lIrbSeMpDIcREOtuphOCYH4ZCZ7y82prIno6uwY+iF6nJs0FPWhiZUCQ/a
 L6sMzb
X-Received: by 2002:aa7:da92:: with SMTP id q18mr19031914eds.91.1612816740284; 
 Mon, 08 Feb 2021 12:39:00 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyVlnb6rdi8weAO9rC4aWWfStAKzviyajrirVN/SteOO2IQxvjj1S6/SYDoQ9HL2IWg5NUEgA==
X-Received: by 2002:aa7:da92:: with SMTP id q18mr19031881eds.91.1612816740058; 
 Mon, 08 Feb 2021 12:39:00 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id v9sm9266436ejd.92.2021.02.08.12.38.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Feb 2021 12:38:59 -0800 (PST)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <fe6040b5-72a0-9882-439e-ea7fc0b3935d@redhat.com>
Date: Mon, 8 Feb 2021 21:38:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: [Intel-gfx] [5.10.y regression] i915 clear-residuals mitigation is
 causing gfx issues
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

Hi All,

We (Fedora) have been receiving reports from multiple users about gfx issues / glitches
stating with 5.10.9. All reporters are users of Ivy Bridge / Haswell iGPUs and all
reporters report that adding i915.mitigations=off to the cmdline fixes things, see:

https://bugzilla.redhat.com/show_bug.cgi?id=1925346

Which should be fully visible without a bugzilla account.

I noticed that 5.10.13 had one more related i915 patch, so I've asked the reporters
to retest with 5.10.13, 5.10.13 is better, but things are not fixed there, it just
takes longer for the problems to show up.

Greg, I can prepare a Fedora test-kernel build for the reporters to test with
the following 3 commits reverted:

520d05a77b2866eb ("drm/i915/gt: Clear CACHE_MODE prior to clearing residuals")
ecca0c675bdecebd ("drm/i915/gt: Restore clear-residual mitigations for Ivybridge, Baytrail")
48b8c6689efa7cd6 ("drm/i915/gt: Limit VFE threads based on GT")
(Note this are the 5.10.y hashes)

Reverting these 3 is not ideal, but it is probably the fastest way to get
this resolved for the 5.10.y series.

Greg, do you want me to have the reporters test a 5.10.y series kernel
with these 3 reverts ?

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
