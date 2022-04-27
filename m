Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA647511CC9
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Apr 2022 20:24:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 113DE10F791;
	Wed, 27 Apr 2022 18:24:32 +0000 (UTC)
X-Original-To: Intel-GFX@Lists.FreeDesktop.Org
Delivered-To: Intel-GFX@Lists.FreeDesktop.Org
Received: from smtp-relay-canonical-1.canonical.com
 (smtp-relay-canonical-1.canonical.com [185.125.188.121])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A60810F791
 for <Intel-GFX@Lists.FreeDesktop.Org>; Wed, 27 Apr 2022 18:24:30 +0000 (UTC)
Received: from [192.168.50.139] (mobile-user-c1d2eb-82.dhcp.inet.fi
 [193.210.235.82])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPSA id 2FE663F61E; 
 Wed, 27 Apr 2022 18:24:27 +0000 (UTC)
Message-ID: <6410f76c-af4c-2c75-1ba7-aee3480a6539@ubuntu.com>
Date: Wed, 27 Apr 2022 21:24:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: John.C.Harrison@Intel.com, Intel-GFX@Lists.FreeDesktop.Org
References: <20220427165550.3636686-1-John.C.Harrison@Intel.com>
From: Timo Aaltonen <tjaalton@ubuntu.com>
In-Reply-To: <20220427165550.3636686-1-John.C.Harrison@Intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 0/2] Initial GuC firmware release for DG2
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

John.C.Harrison@Intel.com kirjoitti 27.4.2022 klo 19.55:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> Add GuC firmware for DG2.
> 
> Note that an older version of this patch exists in the CI topic
> branch. Hence this set includes a revert of that patch before applying
> the new version. When merging, the revert would simply be dropped and
> the corresponding patch in the topic branch would also be dropped.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> 
> 
> John Harrison (2):
>    Revert "drm/i915/dg2: Define GuC firmware version for DG2"
>    drm/i915/dg2: Define GuC firmware version for DG2
> 
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 

The firmware is not public yet, though? Shouldn't it have been sent 
upstream already? Same complaint applies to DMC.


-- 
t
