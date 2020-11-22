Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DA22BC61A
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Nov 2020 15:47:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF39489D2F;
	Sun, 22 Nov 2020 14:47:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B616089D2F
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Nov 2020 14:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1606056418;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=apju6gP6XSpkYwp4WdL57a/nFAvNI/QCKhQkuBxc3S8=;
 b=ak5/hZ4JasuCdubW59huNEFfJdjI0J7gy5Yn8kCv5PTs7PV7aEfZiOa/NpACRi36M0ke9J
 A4eSPV/Gcjxx8Oi8Rk+FI3bElki0kwQeBytZUV22THTQKGw3YQu7X3VUwAxkZh9tgkn2hL
 9kk06BsaFcTeFpX1B2wAM5f2J7s7WQE=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-46-9xoKi_nkOA6044F5nu9zeg-1; Sun, 22 Nov 2020 09:46:52 -0500
X-MC-Unique: 9xoKi_nkOA6044F5nu9zeg-1
Received: by mail-qt1-f200.google.com with SMTP id z8so11584157qti.17
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Nov 2020 06:46:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=apju6gP6XSpkYwp4WdL57a/nFAvNI/QCKhQkuBxc3S8=;
 b=pHiiouLNBlzqk1SDGldYpyxHVmOed3RkbXYZPvUNDxzHuFtrLz/2zqLKeswJ6vn8PO
 FztpM2tWl/wg/SycX9qpfVwvuGC7zWs4wwtKnKEKJk3BI8V+T8uxR6NtNnA4fgUly51i
 slC7Zqk2WStv3W33J3qE7cgxXsAmtXVm5LPTvbbr6gsF3DrKg7k7H7eCiinwEJI+ucQZ
 7ftxR5z325ubOnbH8VmJRASvWamgEMmd9nH0GDjT5BLVPcshEkXCJWrMN/M2QTQWhK/j
 jWXFzpSSL0O83/UFIr+5qXUYZywzvGBkF255YnLvCnE2p6SqMwvAUfLF/nzCVgC+/Lp2
 qhVw==
X-Gm-Message-State: AOAM532gWihowkU9fUPautY0Us0IHPIXrh2Et6CBQwlQywhbW36oAcuP
 EDTFBPG1CK/M/D8DZbPJNyzoM992ldtwSKP8Nnd8ZjRtGDLCooeGHL8/t44FupYI59vsXRT6X9q
 a6kOlusGU/ectmLMnJd4AdEw5GG8N
X-Received: by 2002:ad4:476b:: with SMTP id d11mr26026193qvx.57.1606056412440; 
 Sun, 22 Nov 2020 06:46:52 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyPQ8vJIBgyJxmgPlUVzOaStXFRaD0Z+d8VDmnR7kdLyNkvwByAGPov006wc7+pJBCcgj+/zw==
X-Received: by 2002:ad4:476b:: with SMTP id d11mr26026152qvx.57.1606056412222; 
 Sun, 22 Nov 2020 06:46:52 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com.
 [75.142.250.213])
 by smtp.gmail.com with ESMTPSA id x72sm6888242qkb.90.2020.11.22.06.46.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 22 Nov 2020 06:46:51 -0800 (PST)
To: Matthew Wilcox <willy@infradead.org>
References: <20201121165058.1644182-1-trix@redhat.com>
 <20201122032304.GE4327@casper.infradead.org>
From: Tom Rix <trix@redhat.com>
Message-ID: <ddb08a27-3ca1-fb2e-d51f-4b471f1a56a3@redhat.com>
Date: Sun, 22 Nov 2020 06:46:46 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201122032304.GE4327@casper.infradead.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC] MAINTAINERS tag for cleanup robot
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
Cc: linux-hyperv@vger.kernel.org, kvm@vger.kernel.org,
 linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-scsi@vger.kernel.org, clang-built-linux@googlegroups.com,
 amd-gfx@lists.freedesktop.org, cluster-devel@redhat.com,
 linux-acpi@vger.kernel.org, tboot-devel@lists.sourceforge.net,
 coreteam@netfilter.org, xen-devel@lists.xenproject.org,
 MPT-FusionLinux.pdl@broadcom.com, linux-media@vger.kernel.org,
 alsa-devel@alsa-project.org, intel-gfx@lists.freedesktop.org,
 ecryptfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-omap@vger.kernel.org, devel@acpica.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 linux-crypto@vger.kernel.org, patches@opensource.cirrus.com, joe@perches.com,
 bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 11/21/20 7:23 PM, Matthew Wilcox wrote:
> On Sat, Nov 21, 2020 at 08:50:58AM -0800, trix@redhat.com wrote:
>> The fixer review is
>> https://reviews.llvm.org/D91789
>>
>> A run over allyesconfig for x86_64 finds 62 issues, 5 are false positives.
>> The false positives are caused by macros passed to other macros and by
>> some macro expansions that did not have an extra semicolon.
>>
>> This cleans up about 1,000 of the current 10,000 -Wextra-semi-stmt
>> warnings in linux-next.
> Are any of them not false-positives?  It's all very well to enable
> stricter warnings, but if they don't fix any bugs, they're just churn.
>
While enabling additional warnings may be a side effect of this effort

the primary goal is to set up a cleaning robot. After that a refactoring robot.

Tom

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
