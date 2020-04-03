Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED8919DCB9
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 19:26:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46FF96EC3E;
	Fri,  3 Apr 2020 17:26:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from vern.gendns.com (vern.gendns.com [98.142.107.122])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D90F6EC3A;
 Fri,  3 Apr 2020 17:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lechnology.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QCbL4N2oT/q294fb7uwVMBQGVaxA3xQHzTxqiWzIrL8=; b=yFIeWpKSqBvosVnqqiIvPd2MRV
 BJh68UZT6qGqvkqfYpcDwt42rF/ChUgb0Df6r+/kB1ikK+Y5gsLb5CZWG8UH9b0VAL+1iJ+F7DGMX
 WXALK2lgunvu8VjgrurAi3awugNxEtRxt9v6y8WPGHu242Cg0i+Edprk3PyIFWQVlY0u0jtIO1L9B
 CZ20URrxQzkCPY8QvIKxGfQzjlCrt+6F1EAfnvNrOipR4Lk+S7rQQ/P1nrtpKSr6+VVHYP/AJp1ze
 9r0+XIAAg6+v2/x3Rjo13tylk1cYOOh9xvJTYw+7af3sf+0T40MHtZ1LWVlJ5jgN02jiI20NQ1Z8M
 hVAOlCvQ==;
Received: from 108-198-5-147.lightspeed.okcbok.sbcglobal.net
 ([108.198.5.147]:49656 helo=[192.168.0.134])
 by vern.gendns.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <david@lechnology.com>)
 id 1jKPgT-0001s3-Ri; Fri, 03 Apr 2020 13:00:45 -0400
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
 <20200403135828.2542770-18-daniel.vetter@ffwll.ch>
From: David Lechner <david@lechnology.com>
Message-ID: <12a3e1d4-19c0-fa9e-8cf9-03eb00ac38ac@lechnology.com>
Date: Fri, 3 Apr 2020 12:00:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200403135828.2542770-18-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - vern.gendns.com
X-AntiAbuse: Original Domain - lists.freedesktop.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lechnology.com
X-Get-Message-Sender-Via: vern.gendns.com: authenticated_id:
 davidmain+lechnology.com/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: vern.gendns.com: davidmain@lechnology.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: [Intel-gfx] [PATCH 17/44] drm/st7735r: Use devm_drm_dev_alloc
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 4/3/20 8:58 AM, Daniel Vetter wrote:
> Already using devm_drm_dev_init, so very simple replacment.
> 
> Aside: There was an oddity in the old code, we allocated priv but in
> the error path we've freed priv->dbidev ...
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: David Lechner <david@lechnology.com>
> ---

Acked-by: David Lechner <david@lechnology.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
