Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFDF3122CC1
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 14:19:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD4A2899DC;
	Tue, 17 Dec 2019 13:19:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A63CC899DC
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 13:19:41 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id b72so3127671wme.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 05:19:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=H37dVUR9kItBvLUhcmZ+2qSu16q4UES9ihUAcWiQsd4=;
 b=lWK6Tmlb4CiC9XzLfvUIj8N5I8DLeA+H1Y7mjuOk755VqB9iDzMMLxdGwdLFY85lVw
 4sqlcrnt3Az8PoDhFaiD36oyNuhg5c54qQM3qcCNlFI3OkXedhTO/ufNX/oRgkPlyvFo
 PqZBPbGE42+XNecHMEWm3VvJY/RrrIL0uLgko=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=H37dVUR9kItBvLUhcmZ+2qSu16q4UES9ihUAcWiQsd4=;
 b=ihwWjodmGL7Um6NuMfeM1q6s1SzbGqkS0VMoAuTcvHqhem/A/ZP9wBo4U85sWndxEL
 IlGVxMSUng7dHb9JJ2w8IT+FIy0F5jL0rErQiBR2XCGTH4xVAhEwNFPBtPuGdvTPXRsF
 UyE8JduW7F8+v7Sa4vXS7XAXs25kaW8EgUigBH2oxZ2mDsB0MGxPMKrNM8FeWzEIn9EI
 FcAWuJ6M2Peqi1IIMmHLr2/X8wZdYYGTdNa4zmeiNFmsBhLwZVMzcGVdTCcnWICwvRtf
 fb8Q6YmnPgMWNJYqRAM08PCwESOl5k8xIzTV09DW3hFzhd1plnTfCIfNi3LSPZAe6iiY
 q1FA==
X-Gm-Message-State: APjAAAV/lmTwdyVtxR9iMOd9AeFFVtr8pY7t+5+MjyrPBtEyghY0xLLg
 bH+HpMqUCjIvB6ki5cL+frPoOg==
X-Google-Smtp-Source: APXvYqzliw8g7eRzBJ1o76RhQOcEfDchV4RUR+NMlKni9Ot6SqnYzUe0jGJN/na2F7kQol/nHxfaqw==
X-Received: by 2002:a7b:c934:: with SMTP id h20mr5421444wml.103.1576588780369; 
 Tue, 17 Dec 2019 05:19:40 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:564b:0:7567:bb67:3d7f:f863])
 by smtp.gmail.com with ESMTPSA id f1sm25264661wru.6.2019.12.17.05.19.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 05:19:39 -0800 (PST)
Date: Tue, 17 Dec 2019 14:19:37 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Message-ID: <20191217131937.GZ624164@phenom.ffwll.local>
Mail-Followup-To: Stephen Rothwell <sfr@canb.auug.org.au>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Icenowy Zheng <icenowy@aosc.io>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Wolfram Sang <wsa@the-dreams.de>
References: <20191216122331.43c766f1@canb.auug.org.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216122331.43c766f1@canb.auug.org.au>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
Subject: Re: [Intel-gfx] linux-next: build failure after merge of the
 drm-misc tree
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
Cc: Wolfram Sang <wsa@the-dreams.de>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 16, 2019 at 12:23:31PM +1100, Stephen Rothwell wrote:
> Hi all,
> 
> After merging the drm-misc tree, today's linux-next build (x86_64
> allmodconfig) failed like this:
> 
> drivers/gpu/drm/bridge/analogix/analogix-anx6345.c: In function 'anx6345_i2c_probe':
> drivers/gpu/drm/bridge/analogix/analogix-anx6345.c:738:30: error: implicit declaration of function 'i2c_new_dummy' [-Werror=implicit-function-declaration]
>   738 |    anx6345->i2c_clients[i] = i2c_new_dummy(client->adapter,
>       |                              ^~~~~~~~~~~~~
> drivers/gpu/drm/bridge/analogix/analogix-anx6345.c:738:28: warning: assignment to 'struct i2c_client *' from 'int' makes pointer from integer without a cast [-Wint-conversion]
>   738 |    anx6345->i2c_clients[i] = i2c_new_dummy(client->adapter,
>       |                            ^
> 
> Caused by commit
> 
>   6aa192698089 ("drm/bridge: Add Analogix anx6345 support")
> 
> interacting with commit
> 
>   2c2f00ab1641 ("i2c: remove i2c_new_dummy() API")
> 
> From Linus' tree.
> 
> I have applied the following fix up patch for today:
> 
> From: Stephen Rothwell <sfr@canb.auug.org.au>
> Date: Mon, 16 Dec 2019 12:11:19 +1100
> Subject: [PATCH] drm/bridge: fix up for removal of i2c_new_dummy()
> 
> Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>

Thanks pulled into drm-next since I just processed the first drm-misc-next
pull.
-Daniel

> ---
>  drivers/gpu/drm/bridge/analogix/analogix-anx6345.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> index 9917ce0d86a0..56f55c53abfd 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> @@ -735,13 +735,13 @@ static int anx6345_i2c_probe(struct i2c_client *client,
>  	/* Map slave addresses of ANX6345 */
>  	for (i = 0; i < I2C_NUM_ADDRESSES; i++) {
>  		if (anx6345_i2c_addresses[i] >> 1 != client->addr)
> -			anx6345->i2c_clients[i] = i2c_new_dummy(client->adapter,
> +			anx6345->i2c_clients[i] = i2c_new_dummy_device(client->adapter,
>  						anx6345_i2c_addresses[i] >> 1);
>  		else
>  			anx6345->i2c_clients[i] = client;
>  
> -		if (!anx6345->i2c_clients[i]) {
> -			err = -ENOMEM;
> +		if (IS_ERR(anx6345->i2c_clients[i])) {
> +			err = PTR_ERR(anx6345->i2c_clients[i]);
>  			DRM_ERROR("Failed to reserve I2C bus %02x\n",
>  				  anx6345_i2c_addresses[i]);
>  			goto err_unregister_i2c;
> -- 
> 2.24.0
> 
> -- 
> Cheers,
> Stephen Rothwell



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
