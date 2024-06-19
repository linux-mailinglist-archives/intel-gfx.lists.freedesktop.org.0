Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3E190E84E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 12:26:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B729610E068;
	Wed, 19 Jun 2024 10:26:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="nCier1c1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
 [209.85.208.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEB9310EC10
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 10:26:43 +0000 (UTC)
Received: by mail-lj1-f180.google.com with SMTP id
 38308e7fff4ca-2eabd22d3f4so76872721fa.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 03:26:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1718792801; x=1719397601;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=aujn0STKyH/Gfbmg4Qen6h4D0viqZNP8GdxwAghkmtQ=;
 b=nCier1c1RvnlRL8SceCROjVVTAPUrow8nkU4GTCjNHVvBiq9UHEktHbK8F66QiT0+m
 pAlq2O+3NaLj/OqOAEzTOBlG8giqu4Hdu0mnYXhcD2O/NllyT6bse3utacAIvaFplTqc
 nIBSMW8AQ3u3s/tMaRx6kViysHArMeYKV17TvWhi9llziJAYWYCpv4gc4PF0nt46/KaJ
 6FA5PIfPuEDijvn4Qocvx+QOrTrIhGnxbzmlEygVzzQacPpy7fCVTMd/53QMT6tokkYJ
 H5mW0i/23wrwWohpBevWkoAJGPMs7ixioh5N2onycPM9YY58j+YEpTMeEVZKrnvwQLMD
 XiXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718792801; x=1719397601;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=aujn0STKyH/Gfbmg4Qen6h4D0viqZNP8GdxwAghkmtQ=;
 b=r1Ok9DG6FVyIemZdD5r9p//Zf4VhsCL7YuBTavemTHCEQhv2VxoVMMFdaphNSL8tAo
 sn+Qd/OJoVxxfn0eW9kz2F9auZCdf0lupo/9tyC4VCJLbZHCyRZrQ/IFKivawJUwXDwe
 dAVL3SdMGsqbL7d/ikYN3kUQ9qyJjS1aNyyfpi8GXWuqvZZUglTlk61qsah3sut+gNtE
 cSwEjs4hAIwJlXkV7ccZii7of0eflfzoFTdmXwt3LOzElrOchW6cXbufCIhFXR4mqkW1
 UyTHk85NydDCz6LU33uIrupS3cGxSgJAJC/abnvB64SApe7Ymj5HECs4mFYQhgHKnQ9n
 pGcA==
X-Gm-Message-State: AOJu0YzwqlkavlZTJ9D4W0uxi91B7Lmx+Odku6azMNn7cJYqUcL7Ql5P
 9Ht1gybfry7eOw7aj5oU9X3lqH2W5ukyHSXDDAPIKH3/nntf2DFvOdBuM7rDAvM=
X-Google-Smtp-Source: AGHT+IFJvIUTCWkOTgVEeh78ujRc/6KgWIWXZtdrfHkfnFgDGyH7SCoPEEseoQ81ktepTPjKxuGAgA==
X-Received: by 2002:a2e:7204:0:b0:2eb:e840:4a1b with SMTP id
 38308e7fff4ca-2ec3ceb6b72mr12225011fa.7.1718792801425; 
 Wed, 19 Jun 2024 03:26:41 -0700 (PDT)
Received: from [192.168.0.101] ([84.69.19.168])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-422f6320b11sm224973195e9.29.2024.06.19.03.26.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Jun 2024 03:26:41 -0700 (PDT)
Message-ID: <83958f28-0e27-428a-b0d0-6860b31ae498@ursulin.net>
Date: Wed, 19 Jun 2024 11:26:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/8] drm/i915: Don't check for atomic context on
 PREEMPT_RT
Content-Language: en-GB
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Gleixner <tglx@linutronix.de>
References: <20240613102818.4056866-1-bigeasy@linutronix.de>
 <20240613102818.4056866-4-bigeasy@linutronix.de>
 <94423591-adba-46d4-a9ba-f377dfab369f@ursulin.net>
 <20240614110548.m3lloBjv@linutronix.de>
 <fa38f377-a00a-4e0c-b416-54a1c3f15d4d@ursulin.net>
 <20240617100752.9XDTS0R5@linutronix.de>
 <b740d56d-a744-4d35-b3f2-1166b8df2aef@ursulin.net>
 <20240618125430.9gWIUg9A@linutronix.de>
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20240618125430.9gWIUg9A@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 18/06/2024 13:54, Sebastian Andrzej Siewior wrote:
> On 2024-06-18 10:00:09 [+0100], Tvrtko Ursulin wrote:
>> I did a re-test but am not 100% certain yet. CI looks frustratingly noisy at
>> the moment.
>>
>> igt@debugfs_test@read_all_entries appears to be a fluke which is not new.
>>
>> But igt@gem_exec_parallel@engines@basic from the latest run seem new.
>>
>> So I queued another re-test.
> 
> Okay. If you want me to repost the whole series or just parts of it,
> just say so.

Looks like a green set of results, both BAT and full run.

Patches 1&2 will need someone from the display side to bless though.

Regards,

Tvrtko
