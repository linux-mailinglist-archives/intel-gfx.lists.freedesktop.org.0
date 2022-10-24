Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7739460CD8A
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 15:32:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C28E6897D4;
	Tue, 25 Oct 2022 13:32:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 885 seconds by postgrey-1.36 at gabe;
 Mon, 24 Oct 2022 22:43:32 UTC
Received: from server.atrad.com.au (server.atrad.com.au [150.101.241.2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D74410E05E;
 Mon, 24 Oct 2022 22:43:31 +0000 (UTC)
Received: from marvin.atrad.com.au (marvin.atrad.com.au [192.168.0.2])
 by server.atrad.com.au (8.17.1/8.17.1) with ESMTPS id 29OMOeVe015083
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Tue, 25 Oct 2022 08:54:42 +1030
Date: Tue, 25 Oct 2022 08:54:40 +1030
From: Jonathan Woithe <jwoithe@just42.net>
To: Akihiko Odaki <akihiko.odaki@daynix.com>
Message-ID: <Y1cQqG2eiISdKv0S@marvin.atrad.com.au>
References: <20221024113513.5205-1-akihiko.odaki@daynix.com>
 <20221024113513.5205-10-akihiko.odaki@daynix.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221024113513.5205-10-akihiko.odaki@daynix.com>
X-MIMEDefang-action: accept
X-Scanned-By: MIMEDefang 2.86 on 192.168.0.1
X-Mailman-Approved-At: Tue, 25 Oct 2022 13:32:37 +0000
Subject: Re: [Intel-gfx] [PATCH 09/22] platform/x86: fujitsu-laptop: Use
 acpi_video_get_backlight_types()
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
Cc: linux-fbdev@vger.kernel.org, Ike Panhc <ike.pan@canonical.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, dri-devel@lists.freedesktop.org,
 Azael Avalos <coproscefalo@gmail.com>, Mattia Dongili <malattia@linux.it>,
 Daniel Dadap <ddadap@nvidia.com>, Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 David Airlie <airlied@gmail.com>, Daniel Thompson <daniel.thompson@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>, "Lee, Chun-Yi" <jlee@suse.com>,
 Helge Deller <deller@gmx.de>, Lee Jones <lee@kernel.org>,
 Robert Moore <robert.moore@intel.com>, linux-acpi@vger.kernel.org,
 Cezary Jackiewicz <cezary.jackiewicz@gmail.com>, Len Brown <lenb@kernel.org>,
 Kenneth Chan <kenneth.t.chan@gmail.com>,
 Corentin Chary <corentin.chary@gmail.com>, intel-gfx@lists.freedesktop.org,
 acpi4asus-user@lists.sourceforge.net, Maxime Ripard <mripard@kernel.org>,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 platform-driver-x86@vger.kernel.org, devel@acpica.org,
 ibm-acpi-devel@lists.sourceforge.net, Jingoo Han <jingoohan1@gmail.com>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 24, 2022 at 08:35:00PM +0900, Akihiko Odaki wrote:
> acpi_video_get_backlight_type() is now deprecated.

The practical impact of this patch series on fujitsu-laptop is obviously
very minor assuming the new acpi_video_get_backlight_types() function
functions as advertised.  Accordingly, as maintainer of fujitsu-laptop I
will defer to the opinions of others who maintain the lower level
infrastructure which is more substantially affected by the bulk of the
changes in this series.

I note that Hans has naked the series and I'm happy to go along with that.

Regards
  jonathan

> Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
> ---
>  drivers/platform/x86/fujitsu-laptop.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/platform/x86/fujitsu-laptop.c b/drivers/platform/x86/fujitsu-laptop.c
> index b543d117b12c..e820de39cb68 100644
> --- a/drivers/platform/x86/fujitsu-laptop.c
> +++ b/drivers/platform/x86/fujitsu-laptop.c
> @@ -387,7 +387,7 @@ static int acpi_fujitsu_bl_add(struct acpi_device *device)
>  	struct fujitsu_bl *priv;
>  	int ret;
>  
> -	if (acpi_video_get_backlight_type() != acpi_backlight_vendor)
> +	if (!(acpi_video_get_backlight_types() & ACPI_BACKLIGHT_VENDOR))
>  		return -ENODEV;
>  
>  	priv = devm_kzalloc(&device->dev, sizeof(*priv), GFP_KERNEL);
> @@ -819,7 +819,7 @@ static int acpi_fujitsu_laptop_add(struct acpi_device *device)
>  
>  	/* Sync backlight power status */
>  	if (fujitsu_bl && fujitsu_bl->bl_device &&
> -	    acpi_video_get_backlight_type() == acpi_backlight_vendor) {
> +	    (acpi_video_get_backlight_types() & ACPI_BACKLIGHT_VENDOR)) {
>  		if (call_fext_func(fext, FUNC_BACKLIGHT, 0x2,
>  				   BACKLIGHT_PARAM_POWER, 0x0) == BACKLIGHT_OFF)
>  			fujitsu_bl->bl_device->props.power = FB_BLANK_POWERDOWN;
> -- 
> 2.37.3
