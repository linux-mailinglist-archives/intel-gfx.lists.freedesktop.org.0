Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ABE774A93E
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jul 2023 05:08:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C14AF10E505;
	Fri,  7 Jul 2023 03:08:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 579 seconds by postgrey-1.36 at gabe;
 Fri, 07 Jul 2023 03:08:50 UTC
Received: from out-12.mta1.migadu.com (out-12.mta1.migadu.com [95.215.58.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3FEC10E505
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jul 2023 03:08:50 +0000 (UTC)
Message-ID: <4c24ee12-7a62-b353-be78-5649467529b1@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
 t=1688698740;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xIQvbSOEzXj9JZZpiMNYRC2yQIGeVtjBfhCCT5nuTUY=;
 b=E+lcPuPzZTWE1Ua1a2spZslh89iDRzEWVzOlrWHcSldikFpwuZLlRHacOE/Wa/+iS3T30C
 OnLKhPOY+a7Fa8712rKhnxQJ1/HSre/TF27c1ZLTsWo0qL3m7B1mie4b7ajyGJIvyKQaH+
 40v+bCjW9+Ctt+zZen9SXRyhS+BvIDE=
Date: Fri, 7 Jul 2023 10:58:52 +0800
MIME-Version: 1.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20230702182744.755467-1-sui.jingfeng@linux.dev>
 <168867209250.18978.6145166904315600241@emeril.freedesktop.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Sui JIngfeng <sui.jingfeng@linux.dev>
In-Reply-To: <168867209250.18978.6145166904315600241@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBQ?=
 =?utf-8?q?CI/VGA=3A_Improve_the_default_VGA_device_selection?=
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

Hi,


This patch set could only be applied if a prerequisite patch[1] set applied

[1] https://patchwork.freedesktop.org/series/120053/


Sorry, its my bad, I will respin my patch.


On 2023/7/7 03:34, Patchwork wrote:
> == Series Details ==
>
> Series: PCI/VGA: Improve the default VGA device selection
> URL   : https://patchwork.freedesktop.org/series/120294/
> State : failure
>
> == Summary ==
>
> Error: patch https://patchwork.freedesktop.org/api/1.0/series/120294/revisions/1/mbox/ not applied
> Applying: video/aperture: Add a helper to detect if an aperture contains firmware FB
> Applying: PCI/VGA: Improve the default VGA device selection
> error: sha1 information is lacking or useless (drivers/pci/vgaarb.c).
> error: could not build fake ancestor
> hint: Use 'git am --show-current-patch=diff' to see the failed patch
> Patch failed at 0002 PCI/VGA: Improve the default VGA device selection
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".
> Build failed, no error log produced
>
>
