Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9425B55AB9
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Sep 2025 02:33:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F09C110E0A7;
	Sat, 13 Sep 2025 00:33:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="EX2o/wIe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91BE710E0A7
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Sep 2025 00:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1757723616;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ncBfGy8EE17qYCVshxa8cc5ygoQQollWUOgPghVnN+8=;
 b=EX2o/wIeA6yu+Srg3Sxs2Y8vBkgsMaktHFj5GL3p7M1mFpdOiBZpNaSq1GHJqpr5Ku8IFz
 lAykwWGVWFypGy+7l551HJ7+pyYsrdoHcuyxDYZcMY0fB0/XeWe5V8A0sHe6tyX/kROj8d
 nEPzfWQqiGv/dpeyzGGCpxH9ALjz82c=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-198-UQUuVvPpP62zdLBsHDmK_A-1; Fri, 12 Sep 2025 20:33:35 -0400
X-MC-Unique: UQUuVvPpP62zdLBsHDmK_A-1
X-Mimecast-MFC-AGG-ID: UQUuVvPpP62zdLBsHDmK_A_1757723614
Received: by mail-qt1-f200.google.com with SMTP id
 d75a77b69052e-4b5ee6cd9a3so53727921cf.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Sep 2025 17:33:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757723614; x=1758328414;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ncBfGy8EE17qYCVshxa8cc5ygoQQollWUOgPghVnN+8=;
 b=wSjf37vONhQz8dohFYMsE8JyiCm4geOLTxZcADf4FqXSSBN2n1fbRNINaB48KOh/Tr
 TtlP2TvMUN3TdKpgpxCAKHY6jpmue/crx5HvejqMnWhVRGaURgYxhCcFvuSh3bqjD2f/
 XMPSuMjNPFRqQy0P3OLmvvc+TnDRK5FTMTCHIzn4SDRd3vn1TfvxUQdj+cVCpbgumcrb
 lNdfGodBpH7+ObJGT3Y+iEzBxvxAddUe7YvJUCbJYdeXBKLsgbq8P9bQwkvxEexFHeRx
 RdWp5Xok75rI3kq+UEnFrILPnzKD3OewC05/kluNkjdO9sGqKHGtaiI64cQFGpzuzG4B
 unlQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUNKYXgYHAPhlke/dpw3q2BlG+M5JqFDf4cIbV1H4KhmAcPhTUftBmeXJZdhScpil5gnZn/P5ZQjgI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyEa3r6x+h4Fuw/0Ig9z4ixtCKHe3L7R0qg49JfHCNF1Mao4QNS
 Z7004QTmwGHPegCd7UsUjnbKVzDzczqSn87oktu9Q48wcq3ltHDXrzxBrnriBDH7v77ripG/zBS
 rSeknXErowRJt29ScC6sc0pNEOC5dcgwOk4jI3b/XgsH/ibuztUUFPFfAtgI9UqudCK0EUA==
X-Gm-Gg: ASbGncs0Oo7ZWv4+LOZsDz6QheAd3YFjuzjxAnYwz2Nzo6w2kEoocwCG9DssQ72dPtV
 X2Qc8yWRJ2Y0IavCCcPI6Jpea18FrhM69Uz4b/FXzQd9j7Ha7ajXRDTP0t2GBt3G7HAlgBqjq+q
 SvSdme0HeIJ7t3xeem5KEbmMBuqsJwawh8F0aHtDUhe6hw5VV8j6XKCOXN+GIC9qnqmrt2KUAqV
 TTj1B9pOp2RamXvisVnF1fCyjR7At2cnGo4SCx9swo8MEo9Mpx2NIzQ/gmN4XBT8Q3IbL+jaVC5
 mHhnBgsDPb6S+EVRB7YFPm5gfWKGYSyBSnGpgbSoqYGBvMZVzoVO9v0CP2DHNV0Np43AF4qIiIi
 bWwbN82Jz1A==
X-Received: by 2002:a05:622a:1a05:b0:4b6:2f52:5342 with SMTP id
 d75a77b69052e-4b77d1ab3a1mr68076261cf.79.1757723614304; 
 Fri, 12 Sep 2025 17:33:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGRq8wbBNQnbSCZtG/tvewoa9dvMcBJkb7MXthP0yviRVZ6G/ctSPGgxUCMnelFEMNwo4BLAw==
X-Received: by 2002:a05:622a:1a05:b0:4b6:2f52:5342 with SMTP id
 d75a77b69052e-4b77d1ab3a1mr68076091cf.79.1757723613947; 
 Fri, 12 Sep 2025 17:33:33 -0700 (PDT)
Received: from ?IPV6:2601:188:c180:4250:ecbe:130d:668d:951d?
 ([2601:188:c180:4250:ecbe:130d:668d:951d])
 by smtp.gmail.com with ESMTPSA id
 d75a77b69052e-4b639b99de1sm31462791cf.8.2025.09.12.17.33.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Sep 2025 17:33:33 -0700 (PDT)
From: Waiman Long <llong@redhat.com>
X-Google-Original-From: Waiman Long <longman@redhat.com>
Message-ID: <9d06c0d5-e20c-4069-adca-68a2c4cf6f4f@redhat.com>
Date: Fri, 12 Sep 2025 20:33:31 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] rcu: Remove redundant rcu_read_lock/unlock() in spin_lock
 critical sections
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Waiman Long <llong@redhat.com>
Cc: pengdonglin <dolinux.peng@gmail.com>, tj@kernel.org, tony.luck@intel.com, 
 jani.nikula@linux.intel.com, ap420073@gmail.com, jv@jvosburgh.net,
 freude@linux.ibm.com, bcrl@kvack.org, trondmy@kernel.org, kees@kernel.org,
 linux-kernel@vger.kernel.org, linux-rt-devel@lists.linux.dev,
 linux-nfs@vger.kernel.org, linux-aio@kvack.org,
 linux-fsdevel@vger.kernel.org, linux-security-module@vger.kernel.org,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-acpi@vger.kernel.org, linux-s390@vger.kernel.org,
 cgroups@vger.kernel.org, pengdonglin <pengdonglin@xiaomi.com>,
 "Paul E . McKenney" <paulmck@kernel.org>
References: <20250912065050.460718-1-dolinux.peng@gmail.com>
 <6831b9fe-402f-40a6-84e6-b723dd006b90@redhat.com>
 <20250912213531.7-YeRBeD@linutronix.de>
In-Reply-To: <20250912213531.7-YeRBeD@linutronix.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 6dy2JmQ8UGZISN-nz-yJvT0edMrzzfWW3IwbyIt7wuA_1757723614
X-Mimecast-Originator: redhat.com
Content-Language: en-US
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

On 9/12/25 5:35 PM, Sebastian Andrzej Siewior wrote:
> On 2025-09-12 17:13:09 [-0400], Waiman Long wrote:
>> On 9/12/25 2:50 AM, pengdonglin wrote:
>>> From: pengdonglin <pengdonglin@xiaomi.com>
>>>
>>> When CONFIG_PREEMPT_RT is disabled, spin_lock*() operations implicitly
>>> disable preemption, which provides RCU read-side protection. When
>>> CONFIG_PREEMPT_RT is enabled, spin_lock*() implementations internally
>>> manage RCU read-side critical sections.
>> I have some doubt about your claim that disabling preemption provides RCU
>> read-side protection. It is true for some flavors but probably not all. I do
>> know that disabling interrupt will provide RCU read-side protection. So for
>> spin_lock_irq*() calls, that is valid. I am not sure about spin_lock_bh(),
>> maybe it applies there too. we need some RCU people to confirm.
> The claim is valid since Paul merged the three flavours we had. Before
> that preempt_disable() (and disabling irqs) would match
> rcu_read_lock_sched(). rcu_read_lock() and rcu_read_lock_bh() were
> different in terms of grace period and clean up.
> So _now_ we could remove it if it makes things easier.

Thanks for the clarification.

In this case, I think the patch description should mention the commit 
that unify the 3 RCU flavors to make sure that this patch won't be 
accidentally backport'ed to an older kernel without the necessary 
prerequisite commit(s).

Cheers,
Longman

