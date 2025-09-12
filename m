Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2790B5582D
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 23:13:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2EAB10ECD9;
	Fri, 12 Sep 2025 21:13:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="bQIJIIev";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1839310ECD9
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Sep 2025 21:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1757711594;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=puZ5qQZ4d8umwYGFpsrfF5AtoSoF7QsuDi9Z2wL5SwM=;
 b=bQIJIIev9FH0OQQ421DUh/0BJ8orzHzsXd6pcMjRXR1j7ViIh9czwS30v5cm72rRlCqpt/
 8XBZSmML71+QFP2gWayrtQck8q7YDV/vZkpfeVDZiBVyua4Oa7r/WNoTfQUvWcxOadWxPO
 YVJ2EenRJzss4EipZQ++j2ah5uSHqcY=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-528-v3ra9JGJPpKg0t14kEWT-A-1; Fri, 12 Sep 2025 17:13:12 -0400
X-MC-Unique: v3ra9JGJPpKg0t14kEWT-A-1
X-Mimecast-MFC-AGG-ID: v3ra9JGJPpKg0t14kEWT-A_1757711592
Received: by mail-qt1-f199.google.com with SMTP id
 d75a77b69052e-4b49666c8b8so50579591cf.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Sep 2025 14:13:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757711592; x=1758316392;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=puZ5qQZ4d8umwYGFpsrfF5AtoSoF7QsuDi9Z2wL5SwM=;
 b=i/eH3RTN7p95Z4CzQcTm9WcgCp2RkOgSPUhSIIAPTYvkxb7vaxIg2OkMR8nRiZgwSW
 0DFWsupCm22pfEqyUgaJ9qLnT9CgcfAP5VTHiCnSaAeAASs56ffzPhuxG//z9sQ9hinB
 xtUZwrxzgp6gQGfpgtVKi3Db23csZk7CKbP+cNLH6zJ29pR/0mttit8BLXdsiw5huH29
 tyr6rS4EsI2JLL8+PNajYcZ/SC/GGS5e69QmJx59P7jIuOMJ5igJRDvSZ3obfZtzCXLY
 JeakhjQ8rEBNf2RFpndjS2+4dCFrUgZw1zLXGbdA/2oJcmfi5bIW/N/dD3XFg9tVbNm4
 K5Ng==
X-Forwarded-Encrypted: i=1;
 AJvYcCXhLDOHAbk6GAKZqXgbkUKu2n2SF6idPE2gSKuvdM0jAb6FLYfrNrItLO6sfmGYFd0Jbq1AO4Dsl1A=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyipvQfENxSvRJI+nnJwFHf5jgMArVQaVLg2lhzq4VSkKudzCrr
 8J60Fc9HpoKfQ09d3QTKnPe0G8t00PG/T9VeNwMKdwqCIXcxNyE3l8T2wn7cm4cQMI+3hvhn4zM
 9qb7Twzg3fE2rSuBHQXlhecZzuU1DeG5LQBiM/tsd+zBGbXoeTdpYztY5N2C6U0445ItRuQ==
X-Gm-Gg: ASbGncuoAhXN6DcL/HvTz7b3qitDwHc5kE9GwS1ZrrYYsBB37kKpmOSmvIJMarpprLR
 IzHcRER/GwuhkxyTtlkQVynoApFKtspqPtU9loQtnLRIsn47ppS5XouKqL+UHif/HSi8v5aPw0W
 8v0HCa1dGgti5sShs1rdN/cjTG953PXEkXlwj9j1zHpaGkobnR4HHxROW0/uAcM1DC+q8MaKE50
 /Mx7sZtkTDGUzMML2Om9pQhAXJOiezkGCfE7LTzngg0aoa/OljHIDrhlnjkai0cNKqLQ54lYDbx
 HrMCSfptAGqknzeSiP7cXY+EHcNKtm0OP/nrv6SxIyUWn9qWAWwBTpbOMeN+JgC9tknBYFeNbIY
 0ACLLJIY2vQ==
X-Received: by 2002:a05:622a:59c7:b0:4b5:6f4e:e37 with SMTP id
 d75a77b69052e-4b77d0a6081mr68549521cf.25.1757711592215; 
 Fri, 12 Sep 2025 14:13:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFMw9fpUjKztDhFj7vngF7IcasgotLQXC7Sz/FG+fDJqIxlNqO5vbKN00AADMBFHKIX07xTcQ==
X-Received: by 2002:a05:622a:59c7:b0:4b5:6f4e:e37 with SMTP id
 d75a77b69052e-4b77d0a6081mr68549191cf.25.1757711591843; 
 Fri, 12 Sep 2025 14:13:11 -0700 (PDT)
Received: from ?IPV6:2601:188:c180:4250:ecbe:130d:668d:951d?
 ([2601:188:c180:4250:ecbe:130d:668d:951d])
 by smtp.gmail.com with ESMTPSA id
 d75a77b69052e-4b639dab102sm29277371cf.33.2025.09.12.14.13.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Sep 2025 14:13:11 -0700 (PDT)
From: Waiman Long <llong@redhat.com>
X-Google-Original-From: Waiman Long <longman@redhat.com>
Message-ID: <6831b9fe-402f-40a6-84e6-b723dd006b90@redhat.com>
Date: Fri, 12 Sep 2025 17:13:09 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] rcu: Remove redundant rcu_read_lock/unlock() in spin_lock
 critical sections
To: pengdonglin <dolinux.peng@gmail.com>, tj@kernel.org, tony.luck@intel.com, 
 jani.nikula@linux.intel.com, ap420073@gmail.com, jv@jvosburgh.net,
 freude@linux.ibm.com, bcrl@kvack.org, trondmy@kernel.org, kees@kernel.org
Cc: bigeasy@linutronix.de, linux-kernel@vger.kernel.org,
 linux-rt-devel@lists.linux.dev, linux-nfs@vger.kernel.org,
 linux-aio@kvack.org, linux-fsdevel@vger.kernel.org,
 linux-security-module@vger.kernel.org, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-acpi@vger.kernel.org,
 linux-s390@vger.kernel.org, cgroups@vger.kernel.org,
 pengdonglin <pengdonglin@xiaomi.com>, "Paul E . McKenney"
 <paulmck@kernel.org>
References: <20250912065050.460718-1-dolinux.peng@gmail.com>
In-Reply-To: <20250912065050.460718-1-dolinux.peng@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 50NQd2AowS1EqhU4kUm1uA2Xe6KDrP_dVrUqDrsYzqI_1757711592
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

On 9/12/25 2:50 AM, pengdonglin wrote:
> From: pengdonglin <pengdonglin@xiaomi.com>
>
> When CONFIG_PREEMPT_RT is disabled, spin_lock*() operations implicitly
> disable preemption, which provides RCU read-side protection. When
> CONFIG_PREEMPT_RT is enabled, spin_lock*() implementations internally
> manage RCU read-side critical sections.

I have some doubt about your claim that disabling preemption provides 
RCU read-side protection. It is true for some flavors but probably not 
all. I do know that disabling interrupt will provide RCU read-side 
protection. So for spin_lock_irq*() calls, that is valid. I am not sure 
about spin_lock_bh(), maybe it applies there too. we need some RCU 
people to confirm.

When CONFIG_PREEMPT_RT is enabled, rt_spin_lock/unlock() will call 
rcu_read_lock/_unlock() internally. So eliminating explicit 
rcu_read_lock/unlock() in critical sections should be fine.

Cheers,
Longman

