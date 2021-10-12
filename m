Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DDA429E35
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Oct 2021 08:56:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00DE06E5C5;
	Tue, 12 Oct 2021 06:56:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 431 seconds by postgrey-1.36 at gabe;
 Tue, 12 Oct 2021 06:55:59 UTC
Received: from bmailout3.hostsharing.net (bmailout3.hostsharing.net
 [IPv6:2a01:4f8:150:2161:1:b009:f23e:0])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D01D56E5C1;
 Tue, 12 Oct 2021 06:55:59 +0000 (UTC)
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "*.hostsharing.net",
 Issuer "RapidSSL TLS DV RSA Mixed SHA256 2020 CA-1" (verified OK))
 by bmailout3.hostsharing.net (Postfix) with ESMTPS id 834B1100D9411;
 Tue, 12 Oct 2021 08:48:45 +0200 (CEST)
Received: by h08.hostsharing.net (Postfix, from userid 100393)
 id 608AC5B88; Tue, 12 Oct 2021 08:48:45 +0200 (CEST)
Date: Tue, 12 Oct 2021 08:48:45 +0200
From: Lukas Wunner <lukas@wunner.de>
To: Nirmoy Das <nirmoy.das@amd.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20211012064845.GA10480@wunner.de>
References: <20211011190607.104618-1-nirmoy.das@amd.com>
 <20211011190607.104618-4-nirmoy.das@amd.com>
 <20211011202429.GC14357@wunner.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211011202429.GC14357@wunner.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/4] vgaswitcheroo: do not check for NULL
 debugfs dentry
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

On Mon, Oct 11, 2021 at 10:24:29PM +0200, Lukas Wunner wrote:
> On Mon, Oct 11, 2021 at 09:06:07PM +0200, Nirmoy Das wrote:
> > Debugfs APIs returns encoded error on failure so use
> > debugfs_lookup() instead of checking for NULL.
> [...]
> > --- a/drivers/gpu/vga/vga_switcheroo.c
> > +++ b/drivers/gpu/vga/vga_switcheroo.c
> > @@ -914,7 +914,7 @@ static void vga_switcheroo_debugfs_fini(struct vgasr_priv *priv)
> >  static void vga_switcheroo_debugfs_init(struct vgasr_priv *priv)
> >  {
> >  	/* already initialised */
> > -	if (priv->debugfs_root)
> > +	if (debugfs_lookup("vgaswitcheroo", NULL))
> >  		return;
> > 
> >  	priv->debugfs_root = debugfs_create_dir("vgaswitcheroo", NULL);
> 
> If debugfs_create_dir() returns an error code, it does make sense to
> retry the call when another vga_switcheroo client registers later.
> I like that.
> 
> However I'd prefer simply changing this to explicitly check for NULL, i.e.:
> 
> -	if (priv->debugfs_root)
> +	if (priv->debugfs_root == NULL)

Apologies, I meant:

-	if (priv->debugfs_root)
+	if (priv->debugfs_root && !IS_ERR(priv->debugfs_root))

Thanks,

Lukas

> It's just as clear as calling debugfs_lookup() and it has way less
> overhead.  Granted, this isn't a hot path, but it's called on boot,
> and the less code we execute, the faster the machine boots.
