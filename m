Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 569F75AA98E
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 10:10:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 053EF10E7AE;
	Fri,  2 Sep 2022 08:10:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 406 seconds by postgrey-1.36 at gabe;
 Fri, 02 Sep 2022 08:10:02 UTC
Received: from smtp-relay-canonical-1.canonical.com
 (smtp-relay-canonical-1.canonical.com [185.125.188.121])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75C5610E7AC
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 08:10:02 +0000 (UTC)
Received: from [192.168.1.152] (unknown [222.129.34.149])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPSA id A5CED41591; 
 Fri,  2 Sep 2022 08:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1662105795;
 bh=ZOFc641//xjZbzZJp1nLBtreufTaSDvxCbK9eKVutvg=;
 h=Message-ID:Date:MIME-Version:To:Cc:References:Subject:From:
 In-Reply-To:Content-Type;
 b=IeyJwuuuJHlo9ukKPSpZxfUT3MstiFAHjr9O5jNy25I2JlQXjg0WauDlQjconQ8dL
 caT9dB/oqwqM2jK1Yy33s2OcwjP6qSCLhZJBrjXXXkFu275tvOJKvnl5yuze7o9geA
 WG7Zvho27pbbt34BzXBZ/3S7Smp4l62y1bhaSZPAP+W58Kq8pYY3ManjUNJg4KSl6e
 JDGtBC5mX8B9GNfLDLsw7fjgfmOb1Pae8ozGpuVt/N9kok+0Azcr39JNaPyHjYgbw/
 fY5b1yF70mosmnyCYybCpfIXDAFCeYv0mRJR0NFEP+lVDhH4dB8a0GxxWxooLitBuQ
 cd5hAke55ZQlA==
Message-ID: <8d7f7692-b137-fb0c-11e9-c2b69fa465d3@canonical.com>
Date: Fri, 2 Sep 2022 16:03:07 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
To: ville.syrjala@linux.intel.com
References: <20220902070319.15395-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: Aaron Ma <aaron.ma@canonical.com>
In-Reply-To: <20220902070319.15395-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Implement
 WaEdpLinkRateDataReload
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
Cc: jani.nikula@intel.com, Jason@zx2c4.com, intel-gfx@lists.freedesktop.org,
 stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tested-by: Aaron Ma <aaron.ma@canonical.com>
