Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAE45EA0A5
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 12:40:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5927410E2CE;
	Mon, 26 Sep 2022 10:40:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp.domeneshop.no (smtp.domeneshop.no
 [IPv6:2a01:5b40:0:3005::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12C6B10E0B6;
 Sat, 24 Sep 2022 15:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
 ; s=ds202112;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DP3zUOJkBK29CjZ1hWIKGa38wlT1g1yzlrFvDjg2ysg=; b=nxiTXcG+1m14DovcWFz7qiYOQ+
 1YsfTMoxhEjyePsnyUaogiNTaZiOu5ODbzq1GCKFP9tA314nUbYJ9GBPUpzaZ3gBJqsVkKnp3ELI3
 qeHb327ypE1IoTHHSw+f7xMLdYWvvjwYjYeHnjvWMwHmh631zxx1AAN3n30dsK08rRzIXCVtPgqYu
 EhvEcmiD+7SxTJVnEo6soadcZlrkzvemM3Quws+gN28ItnYSWc2qNTC2EbGSH8utihaIWnDyhbi9/
 xRi2Nd1S9IKuPsTav7KemdhK8UxvmeHGxfYTPBq2+9RBfgFueCq7xggL3fnYfZ0c/BTAovVV8FrYl
 rTvyK86w==;
Received: from [2a01:799:961:d200:8cf6:761:40ec:1ff7] (port=51599)
 by smtp.domeneshop.no with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <noralf@tronnes.org>)
 id 1oc79W-0006Fk-UY; Sat, 24 Sep 2022 17:33:14 +0200
Message-ID: <1220a3ef-86cf-78ae-07b6-16eb091c7dcc@tronnes.org>
Date: Sat, 24 Sep 2022 17:33:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
To: Maxime Ripard <maxime@cerno.tech>
References: <20220728-rpi-analog-tv-properties-v2-0-459522d653a7@cerno.tech>
 <24e09a29-6d04-3b1e-63ce-cd3c31d350e2@tronnes.org>
 <020d44e6-884b-a817-8265-3461638cac71@tronnes.org>
 <20220905145729.ln675jko3aw6sgzs@houat>
 <965de5c0-bc6a-7210-c946-b916ae2219fc@i2se.com>
 <eb06337b-d501-3ca7-0e50-eda3aec75683@tronnes.org>
 <20220921140324.sbeadfr7kz4avqcr@houat>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
In-Reply-To: <20220921140324.sbeadfr7kz4avqcr@houat>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 26 Sep 2022 10:40:33 +0000
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
Cc: Karol Herbst <kherbst@redhat.com>, David Airlie <airlied@linux.ie>,
 nouveau@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Phil Elwell <phil@raspberrypi.com>, Stefan Wahren <stefan.wahren@i2se.com>,
 Emma Anholt <emma@anholt.net>, Samuel Holland <samuel@sholland.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Ben Skeggs <bskeggs@redhat.com>,
 linux-sunxi@lists.linux.dev, Thomas Zimmermann <tzimmermann@suse.de>,
 intel-gfx@lists.freedesktop.org, Hans de Goede <hdegoede@redhat.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org, Dom Cobley <dom@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 Mateusz Kwiatkowski <kfyatek+publicgit@gmail.com>,
 =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



Den 21.09.2022 16.03, skrev Maxime Ripard:
> On Wed, Sep 07, 2022 at 06:44:53PM +0200, Noralf Trønnes wrote:
>>
>>
>> Den 07.09.2022 12.36, skrev Stefan Wahren:
>>> Hi Maxime,
>>>
>>> Am 05.09.22 um 16:57 schrieb Maxime Ripard:
>>>> On Fri, Sep 02, 2022 at 01:28:16PM +0200, Noralf Trønnes wrote:
>>>>>
>>>>> Den 01.09.2022 21.35, skrev Noralf Trønnes:
>>>>>>
>>>>>> I have finally found a workaround for my kernel hangs.
>>>>>>
>>>>>> Dom had a look at my kernel and found that the VideoCore was fine, and
>>>>>> he said this:
>>>>>>
>>>>>>> That suggests cause of lockup was on arm side rather than VC side.
>>>>>>>
>>>>>>> But it's hard to diagnose further. Once you've had a peripheral not
>>>>>>> respond, the AXI bus locks up and no further operations are possible.
>>>>>>> Usual causes of this are required clocks being stopped or domains
>>>>>>> disabled and then trying to access the hardware.
>>>>>>>
>>>>>> So when I got this on my 64-bit build:
>>>>>>
>>>>>> [  166.702171] SError Interrupt on CPU1, code 0x00000000bf000002 --
>>>>>> SError
>>>>>> [  166.702187] CPU: 1 PID: 8 Comm: kworker/u8:0 Tainted: G        W
>>>>>>      5.19.0-rc6-00096-gba7973977976-dirty #1
>>>>>> [  166.702200] Hardware name: Raspberry Pi 4 Model B Rev 1.1 (DT)
>>>>>> [  166.702206] Workqueue: events_freezable_power_
>>>>>> thermal_zone_device_check
>>>>>> [  166.702231] pstate: 200000c5 (nzCv daIF -PAN -UAO -TCO -DIT -SSBS
>>>>>> BTYPE=--)
>>>>>> [  166.702242] pc : regmap_mmio_read32le+0x10/0x28
>>>>>> [  166.702261] lr : regmap_mmio_read+0x44/0x70
>>>>>> ...
>>>>>> [  166.702606]  bcm2711_get_temp+0x58/0xb0 [bcm2711_thermal]
>>>>>>
>>>>>> I wondered if that reg read was stalled due to a clock being stopped.
>>>>>>
>>>>>> Lo and behold, disabling runtime pm and keeping the vec clock running
>>>>>> all the time fixed it[1].
>>>>>>
>>>>>> I don't know what the problem is, but at least I can now test this
>>>>>> patchset.
>>>>>>
>>>>>> [1] https://gist.github.com/notro/23b984e7fa05cfbda2db50a421cac065
>>>>>>
>>>>> It turns out I didn't have to disable runtime pm:
>>>>> https://gist.github.com/notro/0adcfcb12460b54e54458afe11dc8ea2
>>>> If the bcm2711_thermal IP needs that clock to be enabled, it should grab
>>>> a reference itself, but it looks like even the device tree binding
>>>> doesn't ask for one.
>>> The missing clock in the device tree binding is expected, because
>>> despite of the code there is not much information about the BCM2711
>>> clock tree. But i'm skeptical that the AVS IP actually needs the VEC
>>> clock, i think it's more likely that the VEC clock parent is changed and
>>> that cause this issue. I could take care of the bcm2711 binding & driver
>>> if i know which clock is really necessary.
>>
>> Seems you're right, keeping the parent always enabled is enough:
>>
>> 	clk_prepare_enable(clk_get_parent(vec->clock)); // pllc_per
>>
>> I tried enabling just the grandparent clock as well, but that didn't help.
> 
> Yeah, adding tracing to the clock framework shows that it indeed
> disables PLLC_PER. So there's probably some other device that depends on
> it but doesn't take a reference to it.
> 
> I had a look, but it's not really obvious what that might be.
> 
> This patch makes sure that the PLL*_PER are never disabled, could you
> test it? It seems to work for me.
> 
> 
> diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
> index 48a1eb9f2d55..3839261ee419 100644
> --- a/drivers/clk/bcm/clk-bcm2835.c
> +++ b/drivers/clk/bcm/clk-bcm2835.c
> @@ -1675,7 +1675,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.load_mask = CM_PLLA_LOADPER,
>  		.hold_mask = CM_PLLA_HOLDPER,
>  		.fixed_divider = 1,
> -		.flags = CLK_SET_RATE_PARENT),
> +		.flags = CLK_IS_CRITICAL | CLK_SET_RATE_PARENT),
>  	[BCM2835_PLLA_DSI0]	= REGISTER_PLL_DIV(
>  		SOC_ALL,
>  		.name = "plla_dsi0",
> @@ -1784,7 +1784,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.load_mask = CM_PLLC_LOADPER,
>  		.hold_mask = CM_PLLC_HOLDPER,
>  		.fixed_divider = 1,
> -		.flags = CLK_SET_RATE_PARENT),
> +		.flags = CLK_IS_CRITICAL | CLK_SET_RATE_PARENT),
> 

Yes, this worked, but it's enough to mark pllc_per as critical.

Noralf.

>  	/*
>  	 * PLLD is the display PLL, used to drive DSI display panels.
> @@ -1891,7 +1891,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>  		.load_mask = CM_PLLH_LOADAUX,
>  		.hold_mask = 0,
>  		.fixed_divider = 1,
> -		.flags = CLK_SET_RATE_PARENT),
> +		.flags = CLK_IS_CRITICAL | CLK_SET_RATE_PARENT),
>  	[BCM2835_PLLH_PIX]	= REGISTER_PLL_DIV(
>  		SOC_BCM2835,
>  		.name = "pllh_pix",
> 
> 
> Maxime
