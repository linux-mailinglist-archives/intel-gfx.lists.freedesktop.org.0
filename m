Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D58AD5AE84A
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 14:34:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DD3410E660;
	Tue,  6 Sep 2022 12:33:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp.domeneshop.no (smtp.domeneshop.no
 [IPv6:2a01:5b40:0:3005::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52FBC10E7DA;
 Fri,  2 Sep 2022 11:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
 ; s=ds202112;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3P4G0s8jHHnMDuhy8+v0Q+ixmj390VbhdMQwj5y5Wjc=; b=bZtQWi7EyAVPLA42Rzf8cb5JdM
 G/3PyoSsE4+TzQ45xyyuvyIG/+TEOpTWEC9Otb+gWl6o0joUn+Fb2soBCKyda0m/awdEZrUKc7uak
 z51s4DGVhtB++KNaE9LcvK41LZ+PM5S/HiBly41wGr52SLb4ElQBdb5IssVAsOaMMzlyCEgKM7B4P
 wiVGMqooxE9e6urqnga+WXRKxxZVYoGuxulJw2ZV1V29cJpJe+yW0s0LvhhpPHIehl5vgWFClYJI4
 xk9vQt5rQTEuzB79xm1Vd+fefkG8uvdSATf2/klQmygxH9N0KRAJEPTZEgVWsKx0Q385qyG2Lyz62
 t3IxvyDQ==;
Received: from [2a01:799:961:d200:cca0:57ac:c55d:a485] (port=64065)
 by smtp.domeneshop.no with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <noralf@tronnes.org>)
 id 1oU4qX-0004pl-Pv; Fri, 02 Sep 2022 13:28:25 +0200
Message-ID: <020d44e6-884b-a817-8265-3461638cac71@tronnes.org>
Date: Fri, 2 Sep 2022 13:28:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Ben Skeggs <bskeggs@redhat.com>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Jani Nikula <jani.nikula@linux.intel.com>, Lyude Paul <lyude@redhat.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Karol Herbst <kherbst@redhat.com>,
 Emma Anholt <emma@anholt.net>, Daniel Vetter <daniel@ffwll.ch>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Dom Cobley <dom@raspberrypi.com>
References: <20220728-rpi-analog-tv-properties-v2-0-459522d653a7@cerno.tech>
 <24e09a29-6d04-3b1e-63ce-cd3c31d350e2@tronnes.org>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
In-Reply-To: <24e09a29-6d04-3b1e-63ce-cd3c31d350e2@tronnes.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 06 Sep 2022 12:33:46 +0000
Subject: Re: [Intel-gfx] [PATCH v2 00/41] drm: Analog TV Improvements
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
Cc: Dave Stevenson <dave.stevenson@raspberrypi.com>,
 nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-sunxi@lists.linux.dev,
 =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Mateusz Kwiatkowski <kfyatek+publicgit@gmail.com>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



Den 01.09.2022 21.35, skrev Noralf Trønnes:
> 
> 
> I have finally found a workaround for my kernel hangs.
> 
> Dom had a look at my kernel and found that the VideoCore was fine, and
> he said this:
> 
>> That suggests cause of lockup was on arm side rather than VC side.
>>
>> But it's hard to diagnose further. Once you've had a peripheral not
>> respond, the AXI bus locks up and no further operations are possible.
>> Usual causes of this are required clocks being stopped or domains
>> disabled and then trying to access the hardware.
>>
> 
> So when I got this on my 64-bit build:
> 
> [  166.702171] SError Interrupt on CPU1, code 0x00000000bf000002 -- SError
> [  166.702187] CPU: 1 PID: 8 Comm: kworker/u8:0 Tainted: G        W
>     5.19.0-rc6-00096-gba7973977976-dirty #1
> [  166.702200] Hardware name: Raspberry Pi 4 Model B Rev 1.1 (DT)
> [  166.702206] Workqueue: events_freezable_power_ thermal_zone_device_check
> [  166.702231] pstate: 200000c5 (nzCv daIF -PAN -UAO -TCO -DIT -SSBS
> BTYPE=--)
> [  166.702242] pc : regmap_mmio_read32le+0x10/0x28
> [  166.702261] lr : regmap_mmio_read+0x44/0x70
> ...
> [  166.702606]  bcm2711_get_temp+0x58/0xb0 [bcm2711_thermal]
> 
> I wondered if that reg read was stalled due to a clock being stopped.
> 
> Lo and behold, disabling runtime pm and keeping the vec clock running
> all the time fixed it[1].
> 
> I don't know what the problem is, but at least I can now test this patchset.
> 
> [1] https://gist.github.com/notro/23b984e7fa05cfbda2db50a421cac065
> 

It turns out I didn't have to disable runtime pm:
https://gist.github.com/notro/0adcfcb12460b54e54458afe11dc8ea2

Noralf.
