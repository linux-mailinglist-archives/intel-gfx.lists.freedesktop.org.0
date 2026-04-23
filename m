Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SEjGMAFk62mtMAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 14:37:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 531A245E85D
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 14:37:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAABD10F577;
	Fri, 24 Apr 2026 12:37:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="i+9NR+0x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
 [209.85.167.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BD5F10F28B
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2026 20:55:40 +0000 (UTC)
Received: by mail-oi1-f172.google.com with SMTP id
 5614622812f47-479932ccb9bso2165179b6e.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2026 13:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1776977739; x=1777582539; darn=lists.freedesktop.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=hxknrGXGCFLK3ylDNIJLnb9vXMPiR28QWg05vohw1S0=;
 b=i+9NR+0xn3aS8zHo8YUkzC4VUB20UatYI1KN+jwyCHcuU60gGj1GAy1a4b+tfORXNp
 BsBeK/4JozJXa/L4SX+/1x8wuzvO54mHMfIgLRSzGPm7YUjD2owLjHbBP+Tlgpvp82/o
 EPe9ArgO7BoAPqFmSUQSnXzgyEUUAa4XW2IZG4pA1vXuEr+hvX7xEvR0rj1G+SoGBFtz
 JMGHhqudrNXdO3esbWibfJq85y43rhOHJWcQt0oAXlhVA/7A3DVRZ5sW1w0wec3BVlPc
 Iqg+QFVcN+3kLYe3yhUcC8ARLV/4pFFepfhqEkc8YP/kFZJ9YvO5AxGvzjwezU/x0BgT
 JxRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776977739; x=1777582539;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=hxknrGXGCFLK3ylDNIJLnb9vXMPiR28QWg05vohw1S0=;
 b=kDyN+WIHGiaKJo35CzlBKh8QeGuzK2L23oc5eWOXodKS1/cUC43bbqTDpoK7yaEUBi
 Uj9cKL/t6Lw5ewbKasDyNZZQ6k0oZg9NYM/zShEmgW98rvhkQDx9BSoJSyyMIb0FZGrN
 U8k6F5zAD5FwJH2jmSjCETF6vtRzLpPYhYl+UG4FfM8kCCDt4miJ6mfU6/NdVayeLdVR
 7g18z8FLPOhLyctlZ/N18g1YS66Y6g3oha6Rj+DNpiEXbADWZa/txxxq6MlzgG1Um1ak
 XrBNXWZtJJ6tCGkZvAP8UZ9eASC8md5Go7ptZmOe7LAQCaN65WjfkQYEYZza9n3Aooxz
 vd+w==
X-Forwarded-Encrypted: i=1;
 AFNElJ/Nz/M+4nGUF8WTLg6cZcLcDjsHG+LlU+BcUXsvP/SM27oAo25cArKSl706E9pwNviYBY6GTQeTzzA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyjiRNRMQsJXwPCQgbGEr8kaIzO1QnN90Od4vLJGT6/A9ncjGfz
 6VrZPIvCu0pk21eK8fWimfkkLENsdQOSS8pAJuAhR/qJDvsfm9FZcFK/
X-Gm-Gg: AeBDievYE/xNxhmXvedw9nHYureWBzjp83ePTsqBVEt0e+ZxLw6VVWZ2lDgGuSgfsUb
 +mKrL92a63XhAb+JTStLTAbZC5hWncixXuo8UeV3HxTMHGrgtPUmHZgmTcDaxOr9K1A4j3j4UIR
 3JjZNDAikGLUVZ5MVAMRElBzOyAPfuFAsjKAXpbxtJ9W/eE5WB7fxGPL3FBJzIIefoXWnF4LFwU
 MJdOwMS8ml/5WLz5WsnUMHrAYfKYz9nz+4QBqWVa7PO7wK27wzF7Tq0gEAJSzFFm7watpKQq6sk
 S+a/D+Jj5TU2mnnBEAWasTjfT/6l718csIttjSB1jEI6uO3RnJqT7SzR80e49t7zdsOlUogMQTd
 nWlK+O8rR8sM2rQcg3id0PwVdVUDjJ+tU47B58H5ly/IF0dgcugoDsAj+JJlp+rEbfdbNko7tWA
 UZHnK90RRisHIyM5etaAIY3KF/LbjMT+5iaO73K4MESQ9PBkhjhnW8R4tAHZxbl+L90Pkvh/Ha
X-Received: by 2002:a05:6808:3442:b0:46e:bd63:716d with SMTP id
 5614622812f47-4799ca722bcmr16016063b6e.40.1776977739189; 
 Thu, 23 Apr 2026 13:55:39 -0700 (PDT)
Received: from [192.168.0.245] (c-98-38-17-99.hsd1.co.comcast.net.
 [98.38.17.99]) by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4799fead505sm14329744b6e.2.2026.04.23.13.55.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2026 13:55:38 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
Date: Thu, 23 Apr 2026 14:54:00 -0600
Subject: [PATCH v14 19/92] dyndbg,module: make proper substructs in
 _ddebug_info
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260423-submit-dyndbg-classmap-foundation-v14-19-2b809a8019d0@gmail.com>
References: <20260423-submit-dyndbg-classmap-foundation-v14-0-2b809a8019d0@gmail.com>
In-Reply-To: <20260423-submit-dyndbg-classmap-foundation-v14-0-2b809a8019d0@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>, Jason Baron <jbaron@akamai.com>, 
 Luis Chamberlain <mcgrof@kernel.org>, Petr Pavlu <petr.pavlu@suse.com>, 
 Daniel Gomez <da.gomez@kernel.org>, Sami Tolvanen <samitolvanen@google.com>, 
 Aaron Tomlin <atomlin@atomlin.com>, 
 Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, 
 Shuah Khan <skhan@linuxfoundation.org>, Shuah Khan <shuah@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Alex Deucher <alexander.deucher@amd.com>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 David Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>, 
 Dmitry Osipenko <dmitry.osipenko@collabora.com>, 
 Gurchetan Singh <gurchetansingh@chromium.org>, 
 Chia-I Wu <olvaffe@gmail.com>, Matthew Brost <matthew.brost@intel.com>, 
 =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, 
 Lyude Paul <lyude@redhat.com>, Danilo Krummrich <dakr@kernel.org>, 
 Patrik Jakobsson <patrik.r.jakobsson@gmail.com>, 
 Zack Rusin <zack.rusin@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Louis Chauvet <louis.chauvet@bootlin.com>, 
 Haneen Mohammed <hamohammed.sa@gmail.com>, 
 Melissa Wen <melissa.srw@gmail.com>, Sean Paul <sean@poorly.run>, 
 Jocelyn Falempe <jfalempe@redhat.com>, Ruben Wauters <rubenru09@aol.com>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Rob Clark <robin.clark@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Abhinav Kumar <abhinav.kumar@linux.dev>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Xinliang Liu <xinliang.liu@linaro.org>, Tian Tao <tiantao6@hisilicon.com>, 
 Xinwei Kong <kong.kongxinwei@hisilicon.com>, 
 Sumit Semwal <sumit.semwal@linaro.org>, 
 Yongqin Liu <yongqin.liu@linaro.org>, John Stultz <jstultz@google.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Alain Volmat <alain.volmat@foss.st.com>, 
 Raphael Gallais-Pou <rgallaispou@gmail.com>, 
 Yannick Fertre <yannick.fertre@foss.st.com>, 
 Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>, 
 Philippe Cornu <philippe.cornu@foss.st.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Oded Gabbay <ogabbay@kernel.org>, 
 Maciej Falkowski <maciej.falkowski@linux.intel.com>, 
 Karol Wachowski <karol.wachowski@linux.intel.com>, 
 "Rob Herring (Arm)" <robh@kernel.org>, Tomeu Vizoso <tomeu@tomeuvizoso.net>, 
 Liviu Dudau <liviu.dudau@arm.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Liu Ying <victor.liu@nxp.com>, 
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, 
 Lucas Stach <l.stach@pengutronix.de>, Paul Kocialkowski <paulk@sys-base.io>, 
 Jianmin Lv <lvjianmin@loongson.cn>, Qianhai Wu <wuqianhai@loongson.cn>, 
 Huacai Chen <chenhuacai@kernel.org>, Mingcong Bai <jeffbai@aosc.io>, 
 Xi Ruoyao <xry111@xry111.site>, Icenowy Zheng <zhengxingda@iscas.ac.cn>, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
 Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>, 
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Javier Martinez Canillas <javierm@redhat.com>, 
 Huang Rui <ray.huang@amd.com>, Matthew Auld <matthew.auld@intel.com>, 
 Jani Nikula <jani.nikula@intel.com>, Luca Coelho <luciano.coelho@intel.com>, 
 Russell King <linux+etnaviv@armlinux.org.uk>, 
 Christian Gmeiner <christian.gmeiner@gmail.com>
Cc: linux-arch@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-modules@vger.kernel.org, linux-doc@vger.kernel.org, 
 linux-kselftest@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org, 
 virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, 
 nouveau@lists.freedesktop.org, spice-devel@lists.freedesktop.org, 
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-renesas-soc@vger.kernel.org, 
 etnaviv@lists.freedesktop.org, Jim Cromie <jim.cromie@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776977637; l=19370;
 i=jim.cromie@gmail.com; s=20260203; h=from:subject:message-id;
 bh=rLjjXJdFxcivRUr12Q8Jxc77Ld1pcffoH538HypaRnk=;
 b=/xwZEWcYtnRYcV6ELmu1g9CuQTaASNJTiO7ZgeGnRjYvESn/jRGAX+bMFVwCTJ7D9WK2u0Rdi
 YXnmRouWkeGB6hpDlBDpISamC72hNmfEecIxH1R1aXRlL80k+90AAjr
X-Developer-Key: i=jim.cromie@gmail.com; a=ed25519;
 pk=C6E5ODlPQo7ZBynATXH9wg7K6HxP0pIXyf4s38Qw0XE=
X-Mailman-Approved-At: Fri, 24 Apr 2026 12:37:08 +0000
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
X-Rspamd-Queue-Id: 531A245E85D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:arnd@arndb.de,m:jbaron@akamai.com,m:mcgrof@kernel.org,m:petr.pavlu@suse.com,m:da.gomez@kernel.org,m:samitolvanen@google.com,m:atomlin@atomlin.com,m:akpm@linux-foundation.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:shuah@kernel.org,m:gregkh@linuxfoundation.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:airlied@redhat.com,m:kraxel@redhat.com,m:dmitry.osipenko@collabora.com,m:gurchetansingh@chromium.org,m:olvaffe@gmail.com,m:matthew.brost@intel.com,m:thomas.hellstrom@linux.intel.com,m:lyude@redhat.com,m:dakr@kernel.org,m:patrik.r.jakobsson@gmail.com,m:zack.rusin@broadcom.com,m:bcm-kernel-feedback-list@broadcom.com,m:louis.chauvet@bootlin.com,m:hamohammed.sa@gmail.com,m:melissa.srw@gmail.com,m:sean@poorly.run,m:jfal
 empe@redhat.com,m:rubenru09@aol.com,m:dave.stevenson@raspberrypi.com,m:mcanal@igalia.com,m:kernel-list@raspberrypi.com,m:robin.clark@oss.qualcomm.com,m:lumag@kernel.org,m:abhinav.kumar@linux.dev,m:jesszhan0024@gmail.com,m:marijn.suijten@somainline.org,m:xinliang.liu@linaro.org,m:tiantao6@hisilicon.com,m:kong.kongxinwei@hisilicon.com,m:sumit.semwal@linaro.org,m:yongqin.liu@linaro.org,m:jstultz@google.com,m:p.zabel@pengutronix.de,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:chunkuang.hu@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:alain.volmat@foss.st.com,m:rgallaispou@gmail.com,m:yannick.fertre@foss.st.com,m:raphael.gallais-pou@foss.st.com,m:philippe.cornu@foss.st.com,m:mcoquelin.stm32@gmail.com,m:alexandre.torgue@foss.st.com,m:ogabbay@kernel.org,m:maciej.falkowski@linux.intel.com,m:karol.wachowski@linux.intel.com,m:robh@kernel.org,m:tomeu@
 tomeuvizoso.net,m:liviu.dudau@arm.com,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:victor.liu@nxp.com,m:laurentiu.palcu@oss.nxp.com,m:l.stach@pengutronix.de,m:paulk@sys-base.io,m:lvjianmin@loongson.cn,m:wuqianhai@loongson.cn,m:chenhuacai@kernel.org,m:jeffbai@aosc.io,m:xry111@xry111.site,m:zhengxingda@iscas.ac.cn,m:laurent.pinchart+renesas@ideasonboard.com,m:tomi.valkeinen+renesas@ideasonboard.com,m:kieran.bingham+renesas@ideasonboard.com,m:geert+renesas@glider.be,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[arndb.de,akamai.com,kernel.org,suse.com,google.com,atomlin.com,linux-foundation.org,lwn.net,linuxfoundation.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,amd.com,redhat.com,collabora.com,chromium.org,broadcom.com,bootlin.com,poorly.run,aol.com,raspberrypi.com,igalia.com,oss.qualcomm.com,linux.dev,somainline.org,linaro.org,hisilicon.com,pengutronix.de,nxp.com,rock-chips.com,sntech.de,foss.st.com,tomeuvizoso.net,arm.com,ideasonboard.com,kwiboo.se,oss.nxp.com,sys-base.io,loongson.cn,aosc.io,xry111.site,iscas.ac.cn,glider.be,armlinux.org.uk];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_GT_50(0.00)[129];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.infradead.org,st-md-mailman.stormreply.com,gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx,renesas,etnaviv];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]

recompose struct _ddebug_info, inserting proper sub-structs.

The struct _ddebug_info has 2 pairs of _vec, num_##_vec fields, for
descs and classes respectively.  for_subvec() makes walking these
vectors less cumbersome, now lets move those field pairs into their
own "vec" structs: _ddebug_descs & _ddebug_class_maps, and re-compose
struct _ddebug_info to contain them cleanly.  This also lets us get
rid of for_subvec()'s num_##_vec paste-up.

Also recompose struct ddebug_table to contain a _ddebug_info.  This
reinforces its use as a cursor into relevant data for a builtin
module, and access to the full _ddebug state for modules.

NOTES:

Fixup names:

Normalize all struct names to "struct _ddebug_*" eliminating the
minor/stupid variations created in classmaps-v1.

Modify __section names: __dyndbg to __dyndbg_descriptors, and
__dyndbg_classes to __dyndbg_class_maps.  This better matches the new
struct names, and makes room for forthcoming _ddebug_class_user(s)
structs and section.

Invariant: These vectors ref a contiguous subrange of __section memory
in builtin/DATA or in loadable modules via mod->dyndbg_info; with
guaranteed life-time for us.

struct module contains a _ddebug_info field and module/main.c sets it
up, so that gets adjusted rather obviously.

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 include/asm-generic/dyndbg.lds.h |  18 +++---
 include/linux/dynamic_debug.h    |  40 ++++++++-----
 kernel/module/main.c             |  12 ++--
 lib/dynamic_debug.c              | 120 +++++++++++++++++++--------------------
 lib/test_dynamic_debug.c         |   2 +-
 5 files changed, 103 insertions(+), 89 deletions(-)

diff --git a/include/asm-generic/dyndbg.lds.h b/include/asm-generic/dyndbg.lds.h
index f95683aa16b6..8345ac6c52b7 100644
--- a/include/asm-generic/dyndbg.lds.h
+++ b/include/asm-generic/dyndbg.lds.h
@@ -3,17 +3,19 @@
 #define __ASM_GENERIC_DYNDBG_LDS_H
 
 #include <asm-generic/bounded_sections.lds.h>
-#define DYNDBG_SECTIONS()					\
-	. = ALIGN(8);						\
-	BOUNDED_SECTION_BY(__dyndbg, ___dyndbg)			\
-	BOUNDED_SECTION_BY(__dyndbg_classes, ___dyndbg_classes)
+#define DYNDBG_SECTIONS()						\
+	. = ALIGN(8);							\
+	BOUNDED_SECTION_BY(__dyndbg_descriptors, ___dyndbg_descs)	\
+	BOUNDED_SECTION_BY(__dyndbg_class_maps, ___dyndbg_class_maps)
 
 #define MOD_DYNDBG_SECTIONS()                                           \
-	__dyndbg : {							\
-		BOUNDED_SECTION_BY(__dyndbg, ___dyndbg)			\
+	__dyndbg_descriptors : {					\
+		BOUNDED_SECTION_BY(__dyndbg_descriptors,		\
+				   ___dyndbg_descs)			\
 	}								\
-	__dyndbg_classes : {						\
-		BOUNDED_SECTION_BY(__dyndbg_classes, ___dyndbg_classes)	\
+	__dyndbg_class_maps : {						\
+		BOUNDED_SECTION_BY(__dyndbg_class_maps,			\
+				   ___dyndbg_class_maps)		\
 	}
 
 #endif /* __ASM_GENERIC_DYNDBG_LDS_H */
diff --git a/include/linux/dynamic_debug.h b/include/linux/dynamic_debug.h
index 9fd36339db52..5429315ada8e 100644
--- a/include/linux/dynamic_debug.h
+++ b/include/linux/dynamic_debug.h
@@ -83,8 +83,8 @@ enum class_map_type {
 	 */
 };
 
-struct ddebug_class_map {
-	struct module *mod;
+struct _ddebug_class_map {
+	struct module *mod;	/* NULL for builtins */
 	const char *mod_name;	/* needed for builtins */
 	const char **class_names;
 	const int length;
@@ -92,21 +92,33 @@ struct ddebug_class_map {
 	enum class_map_type map_type;
 };
 
-/* encapsulate linker provided built-in (or module) dyndbg data */
+/*
+ * @_ddebug_info: gathers module/builtin dyndbg_* __sections together.
+ * For builtins, it is used as a cursor, with the inner structs
+ * marking sub-vectors of the builtin __sections in DATA.
+ */
+struct _ddebug_descs {
+	struct _ddebug *start;
+	int len;
+};
+
+struct _ddebug_class_maps {
+	struct _ddebug_class_map *start;
+	int len;
+};
+
 struct _ddebug_info {
-	struct _ddebug *descs;
-	struct ddebug_class_map *classes;
-	unsigned int num_descs;
-	unsigned int num_classes;
+	struct _ddebug_descs descs;
+	struct _ddebug_class_maps maps;
 };
 
-struct ddebug_class_param {
+struct _ddebug_class_param {
 	union {
 		unsigned long *bits;
 		unsigned long *lvl;
 	};
 	char flags[8];
-	const struct ddebug_class_map *map;
+	const struct _ddebug_class_map *map;
 };
 
 /*
@@ -125,8 +137,8 @@ struct ddebug_class_param {
  */
 #define DECLARE_DYNDBG_CLASSMAP(_var, _maptype, _base, ...)		\
 	static const char *_var##_classnames[] = { __VA_ARGS__ };	\
-	static struct ddebug_class_map __aligned(8) __used		\
-		__section("__dyndbg_classes") _var = {			\
+	static struct _ddebug_class_map __aligned(8) __used		\
+		__section("__dyndbg_class_maps") _var = {		\
 		.mod = THIS_MODULE,					\
 		.mod_name = KBUILD_MODNAME,				\
 		.base = _base,						\
@@ -166,7 +178,7 @@ void __dynamic_ibdev_dbg(struct _ddebug *descriptor,
 
 #define DEFINE_DYNAMIC_DEBUG_METADATA_CLS(name, cls, fmt)	\
 	static struct _ddebug  __aligned(8)			\
-	__section("__dyndbg") name = {				\
+	__section("__dyndbg_descriptors") name = {		\
 		.modname = KBUILD_MODNAME,			\
 		.function = __func__,				\
 		.filename = __FILE__,				\
@@ -253,7 +265,7 @@ void __dynamic_ibdev_dbg(struct _ddebug *descriptor,
  * macro.
  */
 #define _dynamic_func_call_cls(cls, fmt, func, ...)			\
-	__dynamic_func_call_cls(__UNIQUE_ID(ddebug), cls, fmt, func, ##__VA_ARGS__)
+	__dynamic_func_call_cls(__UNIQUE_ID(_ddebug), cls, fmt, func, ##__VA_ARGS__)
 #define _dynamic_func_call(fmt, func, ...)				\
 	_dynamic_func_call_cls(_DPRINTK_CLASS_DFLT, fmt, func, ##__VA_ARGS__)
 
@@ -263,7 +275,7 @@ void __dynamic_ibdev_dbg(struct _ddebug *descriptor,
  * with precisely the macro's varargs.
  */
 #define _dynamic_func_call_cls_no_desc(cls, fmt, func, ...)		\
-	__dynamic_func_call_cls_no_desc(__UNIQUE_ID(ddebug), cls, fmt,	\
+	__dynamic_func_call_cls_no_desc(__UNIQUE_ID(_ddebug), cls, fmt,	\
 					func, ##__VA_ARGS__)
 #define _dynamic_func_call_no_desc(fmt, func, ...)			\
 	_dynamic_func_call_cls_no_desc(_DPRINTK_CLASS_DFLT, fmt,	\
diff --git a/kernel/module/main.c b/kernel/module/main.c
index 46dd8d25a605..c2b6e70f2e77 100644
--- a/kernel/module/main.c
+++ b/kernel/module/main.c
@@ -2774,12 +2774,12 @@ static int find_module_sections(struct module *mod, struct load_info *info)
 		pr_warn("%s: Ignoring obsolete parameters\n", mod->name);
 
 #ifdef CONFIG_DYNAMIC_DEBUG_CORE
-	mod->dyndbg_info.descs = section_objs(info, "__dyndbg",
-					      sizeof(*mod->dyndbg_info.descs),
-					      &mod->dyndbg_info.num_descs);
-	mod->dyndbg_info.classes = section_objs(info, "__dyndbg_classes",
-						sizeof(*mod->dyndbg_info.classes),
-						&mod->dyndbg_info.num_classes);
+	mod->dyndbg_info.descs.start = section_objs(info, "__dyndbg_descriptors",
+						    sizeof(*mod->dyndbg_info.descs.start),
+						    &mod->dyndbg_info.descs.len);
+	mod->dyndbg_info.maps.start = section_objs(info, "__dyndbg_class_maps",
+						   sizeof(*mod->dyndbg_info.maps.start),
+						   &mod->dyndbg_info.maps.len);
 #endif
 
 	return 0;
diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index 8f614eba8ace..f47fdb769d7a 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -39,17 +39,15 @@
 
 #include <rdma/ib_verbs.h>
 
-extern struct _ddebug __start___dyndbg[];
-extern struct _ddebug __stop___dyndbg[];
-extern struct ddebug_class_map __start___dyndbg_classes[];
-extern struct ddebug_class_map __stop___dyndbg_classes[];
+extern struct _ddebug __start___dyndbg_descs[];
+extern struct _ddebug __stop___dyndbg_descs[];
+extern struct _ddebug_class_map __start___dyndbg_class_maps[];
+extern struct _ddebug_class_map __stop___dyndbg_class_maps[];
 
 struct ddebug_table {
 	struct list_head link;
 	const char *mod_name;
-	struct _ddebug *ddebugs;
-	struct ddebug_class_map *classes;
-	unsigned int num_ddebugs, num_classes;
+	struct _ddebug_info info;
 };
 
 struct ddebug_query {
@@ -136,19 +134,19 @@ do {								\
  * @_i:  caller provided counter.
  * @_sp: cursor into _vec, to examine each item.
  * @_box: ptr to a struct containing @_vec member
- * @_vec: name of a member in @_box
+ * @_vec: name of a vector member in @_box
  */
 #define __ASSERT_IS_LVALUE(x) ((void)sizeof((void)0, &(x)))
 #define __ASSERT_HAS_VEC_MEMBER(_box, _vec) \
-	(void)sizeof((_box)->_vec + (_box)->num_##_vec)
+	((void)sizeof((_box)->_vec.start + (_box)->_vec.len))
 
 #define for_subvec(_i, _sp, _box, _vec)			\
 	for (__ASSERT_IS_LVALUE(_i),			\
 		__ASSERT_IS_LVALUE(_sp),		\
 		__ASSERT_HAS_VEC_MEMBER(_box, _vec),	\
 		(_i) = 0,				\
-		(_sp) = (_box)->_vec;			\
-	     (_i) < (_box)->num_##_vec;			\
+		(_sp) = (_box)->_vec.start;		\
+	     (_i) < (_box)->_vec.len;			\
 	     (_i)++, (_sp)++)		/* { block } */
 
 static void vpr_info_dq(const struct ddebug_query *query, const char *msg)
@@ -171,14 +169,14 @@ static void vpr_info_dq(const struct ddebug_query *query, const char *msg)
 		  query->first_lineno, query->last_lineno, query->class_string);
 }
 
-static struct ddebug_class_map *ddebug_find_valid_class(struct ddebug_table const *dt,
+static struct _ddebug_class_map *ddebug_find_valid_class(struct ddebug_table const *dt,
 							const char *class_string,
 							int *class_id)
 {
-	struct ddebug_class_map *map;
+	struct _ddebug_class_map *map;
 	int i, idx;
 
-	for_subvec(i, map, dt, classes) {
+	for_subvec(i, map, &dt->info, maps) {
 		idx = match_string(map->class_names, map->length, class_string);
 		if (idx >= 0) {
 			*class_id = idx + map->base;
@@ -249,7 +247,7 @@ static int ddebug_change(const struct ddebug_query *query,
 	unsigned int newflags;
 	unsigned int nfound = 0;
 	struct flagsbuf fbuf, nbuf;
-	struct ddebug_class_map *map = NULL;
+	struct _ddebug_class_map *map = NULL;
 	int valid_class;
 
 	/* search for matching ddebugs */
@@ -270,8 +268,8 @@ static int ddebug_change(const struct ddebug_query *query,
 			valid_class = _DPRINTK_CLASS_DFLT;
 		}
 
-		for (i = 0; i < dt->num_ddebugs; i++) {
-			struct _ddebug *dp = &dt->ddebugs[i];
+		for (i = 0; i < dt->info.descs.len; i++) {
+			struct _ddebug *dp = &dt->info.descs.start[i];
 
 			if (!ddebug_match_desc(query, dp, valid_class))
 				continue;
@@ -629,14 +627,14 @@ static int ddebug_exec_queries(char *query, const char *modname)
 }
 
 /* apply a new class-param setting */
-static int ddebug_apply_class_bitmap(const struct ddebug_class_param *dcp,
+static int ddebug_apply_class_bitmap(const struct _ddebug_class_param *dcp,
 				     const unsigned long *new_bits,
 				     const unsigned long old_bits,
 				     const char *query_modname)
 {
 #define QUERY_SIZE 128
 	char query[QUERY_SIZE];
-	const struct ddebug_class_map *map = dcp->map;
+	const struct _ddebug_class_map *map = dcp->map;
 	int matches = 0;
 	int bi, ct;
 
@@ -672,8 +670,8 @@ static int ddebug_apply_class_bitmap(const struct ddebug_class_param *dcp,
 /* accept comma-separated-list of [+-] classnames */
 static int param_set_dyndbg_classnames(const char *instr, const struct kernel_param *kp)
 {
-	const struct ddebug_class_param *dcp = kp->arg;
-	const struct ddebug_class_map *map = dcp->map;
+	const struct _ddebug_class_param *dcp = kp->arg;
+	const struct _ddebug_class_map *map = dcp->map;
 	unsigned long curr_bits, old_bits;
 	char *cl_str, *p, *tmp;
 	int cls_id, totct = 0;
@@ -743,8 +741,8 @@ static int param_set_dyndbg_module_classes(const char *instr,
 					   const struct kernel_param *kp,
 					   const char *mod_name)
 {
-	const struct ddebug_class_param *dcp = kp->arg;
-	const struct ddebug_class_map *map = dcp->map;
+	const struct _ddebug_class_param *dcp = kp->arg;
+	const struct _ddebug_class_map *map = dcp->map;
 	unsigned long inrep, new_bits, old_bits;
 	int rc, totct = 0;
 
@@ -831,8 +829,8 @@ EXPORT_SYMBOL(param_set_dyndbg_classes);
  */
 int param_get_dyndbg_classes(char *buffer, const struct kernel_param *kp)
 {
-	const struct ddebug_class_param *dcp = kp->arg;
-	const struct ddebug_class_map *map = dcp->map;
+	const struct _ddebug_class_param *dcp = kp->arg;
+	const struct _ddebug_class_map *map = dcp->map;
 
 	switch (map->map_type) {
 
@@ -1083,8 +1081,8 @@ static struct _ddebug *ddebug_iter_first(struct ddebug_iter *iter)
 	}
 	iter->table = list_entry(ddebug_tables.next,
 				 struct ddebug_table, link);
-	iter->idx = iter->table->num_ddebugs;
-	return &iter->table->ddebugs[--iter->idx];
+	iter->idx = iter->table->info.descs.len;
+	return &iter->table->info.descs.start[--iter->idx];
 }
 
 /*
@@ -1105,10 +1103,10 @@ static struct _ddebug *ddebug_iter_next(struct ddebug_iter *iter)
 		}
 		iter->table = list_entry(iter->table->link.next,
 					 struct ddebug_table, link);
-		iter->idx = iter->table->num_ddebugs;
+		iter->idx = iter->table->info.descs.len;
 		--iter->idx;
 	}
-	return &iter->table->ddebugs[iter->idx];
+	return &iter->table->info.descs.start[iter->idx];
 }
 
 /*
@@ -1152,16 +1150,19 @@ static void *ddebug_proc_next(struct seq_file *m, void *p, loff_t *pos)
 	return dp;
 }
 
-#define class_in_range(class_id, map)					\
-	(class_id >= map->base && class_id < map->base + map->length)
+static bool ddebug_class_in_range(const int class_id, const struct _ddebug_class_map *map)
+{
+	return (class_id >= map->base &&
+		class_id < map->base + map->length);
+}
 
-static const char *ddebug_class_name(struct ddebug_iter *iter, struct _ddebug *dp)
+static const char *ddebug_class_name(struct ddebug_table *dt, struct _ddebug *dp)
 {
-	struct ddebug_class_map *map = iter->table->classes;
-	int i, nc = iter->table->num_classes;
+	struct _ddebug_class_map *map;
+	int i;
 
-	for (i = 0; i < nc; i++, map++)
-		if (class_in_range(dp->class_id, map))
+	for_subvec(i, map, &dt->info, maps)
+		if (ddebug_class_in_range(dp->class_id, map))
 			return map->class_names[dp->class_id - map->base];
 
 	return NULL;
@@ -1194,7 +1195,7 @@ static int ddebug_proc_show(struct seq_file *m, void *p)
 	seq_putc(m, '"');
 
 	if (dp->class_id != _DPRINTK_CLASS_DFLT) {
-		class = ddebug_class_name(iter, dp);
+		class = ddebug_class_name(iter->table, dp);
 		if (class)
 			seq_printf(m, " class:%s", class);
 		else
@@ -1246,7 +1247,7 @@ static const struct proc_ops proc_fops = {
 
 static void ddebug_attach_module_classes(struct ddebug_table *dt, struct _ddebug_info *di)
 {
-	struct ddebug_class_map *cm;
+	struct _ddebug_class_map *cm;
 	int i, nc = 0;
 
 	/*
@@ -1254,18 +1255,18 @@ static void ddebug_attach_module_classes(struct ddebug_table *dt, struct _ddebug
 	 * the builtin/modular classmap vector/section.  Save the start
 	 * and length of the subrange at its edges.
 	 */
-	for_subvec(i, cm, di, classes) {
+	for_subvec(i, cm, di, maps) {
 		if (!strcmp(cm->mod_name, dt->mod_name)) {
 			if (!nc) {
 				v2pr_info("start subrange, class[%d]: module:%s base:%d len:%d ty:%d\n",
 					  i, cm->mod_name, cm->base, cm->length, cm->map_type);
-				dt->classes = cm;
+				dt->info.maps.start = cm;
 			}
 			nc++;
 		}
 	}
 	if (nc) {
-		dt->num_classes = nc;
+		dt->info.maps.len = nc;
 		vpr_info("module:%s attached %d classes\n", dt->mod_name, nc);
 	}
 }
@@ -1278,10 +1279,10 @@ static int ddebug_add_module(struct _ddebug_info *di, const char *modname)
 {
 	struct ddebug_table *dt;
 
-	if (!di->num_descs)
+	if (!di->descs.len)
 		return 0;
 
-	v3pr_info("add-module: %s %d sites\n", modname, di->num_descs);
+	v3pr_info("add-module: %s %d sites\n", modname, di->descs.len);
 
 	dt = kzalloc_obj(*dt);
 	if (dt == NULL) {
@@ -1295,19 +1296,18 @@ static int ddebug_add_module(struct _ddebug_info *di, const char *modname)
 	 * this struct ddebug_table.
 	 */
 	dt->mod_name = modname;
-	dt->ddebugs = di->descs;
-	dt->num_ddebugs = di->num_descs;
+	dt->info = *di;
 
 	INIT_LIST_HEAD(&dt->link);
 
-	if (di->classes && di->num_classes)
+	if (di->maps.len)
 		ddebug_attach_module_classes(dt, di);
 
 	mutex_lock(&ddebug_lock);
 	list_add_tail(&dt->link, &ddebug_tables);
 	mutex_unlock(&ddebug_lock);
 
-	vpr_info("%3u debug prints in module %s\n", di->num_descs, modname);
+	vpr_info("%3u debug prints in module %s\n", di->descs.len, modname);
 	return 0;
 }
 
@@ -1454,10 +1454,10 @@ static int __init dynamic_debug_init(void)
 	char *cmdline;
 
 	struct _ddebug_info di = {
-		.descs = __start___dyndbg,
-		.classes = __start___dyndbg_classes,
-		.num_descs = __stop___dyndbg - __start___dyndbg,
-		.num_classes = __stop___dyndbg_classes - __start___dyndbg_classes,
+		.descs.start = __start___dyndbg_descs,
+		.maps.start  = __start___dyndbg_class_maps,
+		.descs.len = __stop___dyndbg_descs - __start___dyndbg_descs,
+		.maps.len  = __stop___dyndbg_class_maps - __start___dyndbg_class_maps,
 	};
 
 #ifdef CONFIG_MODULES
@@ -1468,7 +1468,7 @@ static int __init dynamic_debug_init(void)
 	}
 #endif /* CONFIG_MODULES */
 
-	if (&__start___dyndbg == &__stop___dyndbg) {
+	if (&__start___dyndbg_descs == &__stop___dyndbg_descs) {
 		if (IS_ENABLED(CONFIG_DYNAMIC_DEBUG)) {
 			pr_warn("_ddebug table is empty in a CONFIG_DYNAMIC_DEBUG build\n");
 			return 1;
@@ -1478,16 +1478,16 @@ static int __init dynamic_debug_init(void)
 		return 0;
 	}
 
-	iter = iter_mod_start = __start___dyndbg;
+	iter = iter_mod_start = __start___dyndbg_descs;
 	modname = iter->modname;
 	i = mod_sites = mod_ct = 0;
 
-	for (; iter < __stop___dyndbg; iter++, i++, mod_sites++) {
+	for (; iter < __stop___dyndbg_descs; iter++, i++, mod_sites++) {
 
 		if (strcmp(modname, iter->modname)) {
 			mod_ct++;
-			di.num_descs = mod_sites;
-			di.descs = iter_mod_start;
+			di.descs.len = mod_sites;
+			di.descs.start = iter_mod_start;
 			ret = ddebug_add_module(&di, modname);
 			if (ret)
 				goto out_err;
@@ -1497,8 +1497,8 @@ static int __init dynamic_debug_init(void)
 			iter_mod_start = iter;
 		}
 	}
-	di.num_descs = mod_sites;
-	di.descs = iter_mod_start;
+	di.descs.len = mod_sites;
+	di.descs.start = iter_mod_start;
 	ret = ddebug_add_module(&di, modname);
 	if (ret)
 		goto out_err;
@@ -1508,8 +1508,8 @@ static int __init dynamic_debug_init(void)
 		 i, mod_ct, (int)((mod_ct * sizeof(struct ddebug_table)) >> 10),
 		 (int)((i * sizeof(struct _ddebug)) >> 10));
 
-	if (di.num_classes)
-		v2pr_info("  %d builtin ddebug class-maps\n", di.num_classes);
+	if (di.maps.len)
+		v2pr_info("  %d builtin ddebug class-maps\n", di.maps.len);
 
 	/* now that ddebug tables are loaded, process all boot args
 	 * again to find and activate queries given in dyndbg params.
diff --git a/lib/test_dynamic_debug.c b/lib/test_dynamic_debug.c
index 396144cf351b..8434f70b51bb 100644
--- a/lib/test_dynamic_debug.c
+++ b/lib/test_dynamic_debug.c
@@ -41,7 +41,7 @@ module_param_cb(do_prints, &param_ops_do_prints, NULL, 0600);
  */
 #define DD_SYS_WRAP(_model, _flags)					\
 	static unsigned long bits_##_model;				\
-	static struct ddebug_class_param _flags##_model = {		\
+	static struct _ddebug_class_param _flags##_model = {		\
 		.bits = &bits_##_model,					\
 		.flags = #_flags,					\
 		.map = &map_##_model,					\

-- 
2.53.0

