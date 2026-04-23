Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2IxMJgRk62mtMAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 14:37:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B4445E897
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 14:37:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C895E10F548;
	Fri, 24 Apr 2026 12:37:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PTXKEKd+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
 [209.85.167.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3991110F28B
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2026 20:54:04 +0000 (UTC)
Received: by mail-oi1-f172.google.com with SMTP id
 5614622812f47-479932ccb9bso2164741b6e.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2026 13:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1776977643; x=1777582443; darn=lists.freedesktop.org;
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:from:to:cc:subject:date:message-id:reply-to;
 bh=/iIzHr8OgSixjrC6X8omEPuSZti0HDks3sOTg/JIH9Y=;
 b=PTXKEKd+GxxYWHZuS2PWg6PxdoWcFAH26IyI+94xQaxYcNEHRo9Lw1JG68P7gPE18d
 jhD1lQte0mZYspaaw5Zsy0PAQ4MC8pGNJtdgQGncBVasmaeuqkIvQEGAeQ23cYPnheEC
 PB4JLyPHdhVYzhf8tF4D/7y5FZ6up2AH88baLfe5sZRnPFsLfP1k2L26DQGD7WViBCIn
 CtsWIJOveg4DZx7/w1r7tfeS4Zc1GiY3wF7nxgVfDiHUcBTbgh+Ihwdw3e6h+KEkdRC3
 wVY8Mx5EqZIuHeuA3RJUER8vHqDbD6hfJo1q9kusmR6vhOe15o0nud+fEk/14fqjOSiq
 0w8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776977643; x=1777582443;
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/iIzHr8OgSixjrC6X8omEPuSZti0HDks3sOTg/JIH9Y=;
 b=HF+k5Yfu9pTAg/pUuq9DjdbizkqqWVfbJ3bmq/eSWx4Tsv/Z2PnqJy2JJDdB+Lrfl4
 /FwJRqUyy6xCLehkYeRmG0YB3Q75K51tiOF3WNEB/g2e9iLpypu7XX3Ww2iyE8jl008c
 J9KvI5VNleT/g/GthFRjNnXZLKZAG8eKPexNZ771Ole0wyv88Xz870W5PbVhvOPRI+7C
 PeM7IdteLopV5cZKrkg4f59ror079nJwCoP2mv6+eiyQmC3RTAa36ac81Qw8V+QgqypJ
 qqdxKa/IYCj31yvIr98WR1fimgbeaGO8n6OtWmNSsoPHOGV7v+B0gvr0Hzh2EtZQ75HF
 TtgQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ8ojswnK3tGAQ+thpuUpPcf2Smr2HrtRxlWYq2hldi4PGR5Wk691moU1An2RXMnbhm2/pNNaAtMH+E=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzX5E/pdLL1rSIBc6S7Mt6mLf+faM4omN7J9oK63KI26XrWG1dW
 4cTd+S+FXfImqy1xXq3yPKyvW0oOsJHhF5kKnwIwkLkn0GKJdFYBFBBA
X-Gm-Gg: AeBDiesnMCOPH+Yf4JPDLc8OTloc/O+lawT6N3y9fE9R8/Zt8x4TVakmwGhTT8jQkGH
 0ZwB29PsDK1qwdmD0yr6AZBn4aCgKMj3HBH9cl8PPOns4E1tamL2dxwRvcYIPLWpgFvoXiMDu/V
 elky5+dPwnC0rMuXzEh2t/Du9va95lOEJYw2maTYSqaFLce0dKI3/tDaGL6dDPF+vPYjcTtIeXy
 IotD7Sw9bLdvEcCByFYJTQcPB8H9e1GLMebxq6Mb9uCilkDH6oqLo8SUPwsDUovj7zfC7DSXcH4
 j9rH/W9hieDj3Fxsv4yuxsOIksoLVwenNZO9ivEhEyUCzX93aSDcN+UKElsj+/2MhmvkXG5a+ub
 5ym1bFEIiM0TlGb9gb5gNak8FuaFsHNZpbRj5D5xhDgt7TBmjVnoovWvJ0ho0sIBcirw17psQX1
 F78MoeSViYId7Irk7xtaDNYcjzgeILh23IsPL/BAcw9Ezem5lS4oibK58LCSaagkxf4spsm1Sb
X-Received: by 2002:a05:6808:1508:b0:479:ded7:485 with SMTP id
 5614622812f47-479ded70961mr9559100b6e.1.1776977642773; 
 Thu, 23 Apr 2026 13:54:02 -0700 (PDT)
Received: from [192.168.0.245] (c-98-38-17-99.hsd1.co.comcast.net.
 [98.38.17.99]) by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4799fead505sm14329744b6e.2.2026.04.23.13.53.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2026 13:54:02 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
Subject: [PATCH v14 00/92] dyndbg: enable 0-off-cost for all of __drm_debug
Date: Thu, 23 Apr 2026 14:53:41 -0600
Message-Id: <20260423-submit-dyndbg-classmap-foundation-v14-0-2b809a8019d0@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x2NQQqDMBBFryKz7kBMo6JXKS7GZNQBjZLR0iLev
 aHL/+C9f4FyElboigsSv0Vli3mU7lGAnylOjBIyAGtsbVzZop7DKgeGbwzDhH4h1ZV2HLczBjq
 yjvT0TVNX1pvKQe7siUf5/E9e/X3/AJLFcnh0AAAA
X-Change-ID: 20260419-submit-dyndbg-classmap-foundation-a3c77652c054
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
 etnaviv@lists.freedesktop.org, Jim Cromie <jim.cromie@gmail.com>, 
 kernel test robot <oliver.sang@intel.com>, 
 =?utf-8?q?=C5=81ukasz_Bartosik?= <ukaszb@chromium.org>, 
 Philipp Hahn <phahn-oss@avm.de>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776977636; l=14130;
 i=jim.cromie@gmail.com; s=20260203; h=from:subject:message-id;
 bh=BH8wXuQqXu29++/ajdsAj++rfYFfjEnbi/imDFni8vQ=;
 b=F3TJzCpsLXGArXdimSSTkn3lXLE1c78Zxw+4CZae/xRQMNtVde5YECs4TJSxvXxcDCCikwh8x
 H8EC6hFeEMLB4EwqQ0w4YliBYUeUv1Yv5FFT8ivc7Kvy+iFCdJTTnwx
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
X-Rspamd-Queue-Id: 30B4445E897
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
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_GT_50(0.00)[132];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.infradead.org,st-md-mailman.stormreply.com,gmail.com,intel.com,chromium.org,avm.de];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx,renesas,etnaviv];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]

Since Feb 2023, DRM_USE_DYNAMIC_DEBUG has been marked BROKEN [1].
Although classmaps worked in normal operation (via sysfs), the "v1"
POC implementation failed to propagate drm.debug boot-args to built-in
drivers and helpers.

The API Fix:

The root cause was a "Define vs Refer" design error. By using
DECLARE_DYNDBG_CLASSMAP in both core and drivers, the implementation
lacked the formal linkage required for dyndbg to associate driver
callsites with the core's controlling parameter during early boot
init.

This series introduces a proper module-scoped API:
- DYNDBG_CLASSMAP_DEFINE: Invoked once in drm_print.c (exported by drm.ko).
- DYNDBG_CLASSMAP_USE: Invoked by 20+ DRM/Accel modules to reference the core.

This linkage allows dyndbg to trace a driver's USE back to the core's
DEFINE. At boot-time, dyndbg can now correctly apply drm.debug
settings to all referencing modules as they are initialized, restoring
full functionality for built-in drivers.

The Benefit and Evidence (+c flag):

While the instructions saved by replacing bit-tests with NOOPs are
individually small, the scale of DRM's debug activity makes the
aggregate impact substantial.  In particular, dyndbg elides the fetch
of __drm_debug for every drm_debug_enabled() bit test, eliminating the
fetch from main memory and cache-line thrashing.

To measure the call-counts, the final patch in this series adds +c
flag to dyndbg, whereby enabled pr_debug* callsites increment a
per-cpu counter.

The benchmark (in last patch) sets +c flag on all drm_dbg_*s,
and runs 12 vkcubes for 30 sec:

  root@frodo:/home/jimc/projects/lx# count_hits 30 hammer_vk --
  Banging on: hammer_vk (&)
  [1] 100847
  [1]+  Done                       hammer_vk
  #: total hits: 2295401

This ran 1 vkcube for 10sec each, counting 1 DRM_UT_* class at a time:

root@frodo:/home/jimc/projects/lx# isolate_drm_hits 2> /dev/null
Starting isolation study: 10s per class using vkcube
----------------------------------------------------------
DRM CLASS            | TOTAL HITS
----------------------------------------------------------
DRM_UT_CORE          | 85305
DRM_UT_DRIVER        | 0
DRM_UT_KMS           | 1435
DRM_UT_PRIME         | 0
DRM_UT_ATOMIC        | 13645
DRM_UT_VBL           | 4071
DRM_UT_STATE         | 1780
DRM_UT_LEASE         | 0
DRM_UT_DP            | 0
DRM_UT_DRMRES        | 0
FOO                  | 0

Replacing this frequent memory fetch & bit-test with static-key NOOPs
could save approximately 200 peta-instructions per year across the
Steam Deck install base alone.

Series Organization:

1. vmlinux.lds.h fix and cleanup (patches 1-4)
   fix section alignment of 32 bit arches

2. dyndbg internal refactorings (5-24)
   internal callchaing grooming,
   struct refactoring, __section renames
   drop linked-list, use existing vector/array

3. core API fix (25-30)
   replace flawed DECLARE_DYNDBG_CLASSMAP with the DEFINE/USE model.
   fix boot-time propagation of drm.debug to built-in drivers/helpers.
   add compile-time validation of classmaps

4. interface improvements, documentation (31-38)
   query improvments: commas as token separators, % as query separators
   control-file epilogue

5. apply API to DRM
   call DYNAMIC_DEBUG_CLASSMAP_DEFINE(drm_debug_classes ...) in drm_drv.c
   call DYNAMIC_DEBUG_CLASSMAP_USE(drm_debug_classes) in drivers, helpers

6. New additions in v14
   add +c flag for benchmarking
   add DYNAMIC_DEBUG_CLASSMAP_USEs to more drivers, helpers
   drm/nouveau: Fix NULL pointer dereferences in GETPARAM ioctl (RFC)

In v13, to focus the review, I sent only the dyndbg core, and skipped
the DRM uses.  But the value of the optimization is best seen in
context; it presented GregKH a "maze with no cheese".

For v14, I've recombined them to show the full scale of the benefit.
While the performance gains accrue to DRM, the infrastructure resides
in dyndbg.

So Id like to add some "cheese" (later); ie patchsets to:

1. reduce __dyndbg_* .data by 40%.

This uses 3 maple trees to store module, filename, function, which
collapses 1st 2 columns by 90%.  Looped `cat control` tests indicate
a minor cost increase.

2. cache dynamic-prefixes, to avoid repeated work.

This assembles the prefix from maple trees, and stores the prefix into
another maple tree.  The cache is minimal; for +m callsites, it keeps
just 1 prefix per enabled module, for +mf prefixes just 1 per function.

Preliminary benchmarking suggests positive ROI on these.

Fixes: bb2ff6c27bc9 ("drm: Disable dynamic debug as broken")

Assisted-by: google gemini
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
Jim Cromie (91):
      dyndbg: fix NULL ptr on i386 due to section mis-alignment
      vmlinux.lds.h: move BOUNDED_SECTION_* macros to reuse later
      dyndbg.lds.S: fix lost dyndbg sections in modules
      vmlinux.lds.h: drop unused HEADERED_SECTION* macros
      dyndbg: factor ddebug_match_desc out from ddebug_change
      dyndbg: add stub macro for DECLARE_DYNDBG_CLASSMAP
      docs/dyndbg: update examples \012 to \n
      docs/dyndbg: explain flags parse 1st
      test-dyndbg: fixup CLASSMAP usage error
      dyndbg: reword "class unknown," to "class:_UNKNOWN_"
      dyndbg: make ddebug_class_param union members same size
      dyndbg: drop NUM_TYPE_ARRAY
      dyndbg: tweak pr_fmt to avoid expansion conflicts
      dyndbg: reduce verbose/debug clutter
      dyndbg: refactor param_set_dyndbg_classes and below
      dyndbg: tighten fn-sig of ddebug_apply_class_bitmap
      dyndbg: replace classmap list with a vector
      dyndbg: macrofy a 2-index for-loop pattern
      dyndbg,module: make proper substructs in _ddebug_info
      dyndbg: move mod_name down from struct ddebug_table to _ddebug_info
      dyndbg: hoist classmap-filter-by-modname up to ddebug_add_module
      dyndbg-API: remove DD_CLASS_TYPE_(DISJOINT|LEVEL)_NAMES and code
      selftests-dyndbg: add a dynamic_debug run_tests target
      dyndbg: change __dynamic_func_call_cls* macros into expressions
      dyndbg-API: replace DECLARE_DYNDBG_CLASSMAP
      dyndbg: detect class_id reservation conflicts
      dyndbg: check DYNAMIC_DEBUG_CLASSMAP_{DEFINE,USE_} args at compile-time
      dyndbg-test: change do_prints testpoint to accept a loopct
      dyndbg-API: promote DYNAMIC_DEBUG_CLASSMAP_PARAM to API
      dyndbg: treat comma as a token separator
      dyndbg: split multi-query strings with %
      selftests-dyndbg: add test_mod_submod
      dyndbg: resolve "protection" of class'd pr_debug
      dyndbg: harden classmap and descriptor validation
      docs/dyndbg: add classmap info to howto
      dyndbg: add epilogue to dynamic_debug/control file
      drm: use correct ccflags-y spelling
      drm-dyndbg: adapt drm core to use dyndbg classmaps-v2
      drm-dyndbg: adapt DRM to invoke DYNAMIC_DEBUG_CLASSMAP_PARAM
      drm/i915: Register DRM_CLASSMAP_USE(drm_debug_classes)
      drm-dyndbg: DRM_CLASSMAP_USE in amdgpu driver
      drm-dyndbg: add DRM_CLASSMAP_USE to virtio_gpu
      drm-dyndbg: add DRM_CLASSMAP_USE to Xe
      drm/drm_crtc_helper: Register DRM_CLASSMAP_USE(drm_debug_classes)
      drm/drm_dp_helper: Register DRM_CLASSMAP_USE(drm_debug_classes)
      drm/nouveau: Register DRM_CLASSMAP_USE(drm_debug_classes)
      drm/gma500: Register DRM classmap
      drm/radeon: Register DRM classmap
      drm/vmwgfx: Register DRM classmap
      drm/vkms: Register DRM classmap
      drm/udl: Register DRM classmap
      drm/mgag200: Register DRM classmap
      drm/gud: Register DRM classmap
      drm/qxl: Register DRM classmap
      drm/shmem-helper: Register DRM classmap
      drm/ttm-helper: DRM_CLASSMAP_USE(drm_debug_classes);
      drm/nouveau: Fix NULL pointer dereferences in GETPARAM ioctl
      drm/vc4: Register DRM classmap
      drm/msm: Register DRM classmap
      drm/hibmc: Register DRM classmap
      drm/imx: Register DRM classmap
      drm/mediatek: Register DRM classmap
      drm/rockchip: Register DRM classmap
      drm/sti: Register DRM classmap
      drm/stm: Register DRM classmap
      accel: add -DDYNAMIC_DEBUG_MODULE to subdir-ccflags
      accel/ivpu: implement IVPU_DBG_* as a dyndbg classmap
      accel/ethosu: enable drm.debug control
      accel/rocket: enable drm.debug control
      drm/komeda: Register DRM classmap
      drm/bridge/analogix: Register DRM classmap
      drm/bridge/dw-hdmi: Register DRM classmap
      drm/hisilicon/kirin: Register DRM classmap
      drm/imx/dc: Register DRM classmap
      drm/imx/dcss: Register DRM classmap
      drm/logicvc: Register DRM classmap
      drm/loongson: Register DRM classmap
      drm/renesas/rcar-du: Register DRM classmap
      drm/sysfb/simpledrm: Register DRM classmap
      drm/tests: Register DRM classmap in drm_mm_test
      drm/ttm: Register DRM classmap
      drm: restore CONFIG_DRM_USE_DYNAMIC_DEBUG un-BROKEN
      drm-print: fix config-dependent unused variable
      drm_print: fix drm_printer dynamic debug bypass
      drm: enable DRM_USE_DYNAMIC_DEBUG by default (for testing)
      drm-dyndbg: add DRM_CLASSMAP_USE to etnaviv
      drm/tiny: panel-mipi-dbi: Add DRM_CLASSMAP_USE
      drm/bridge: ite-it6505: Add DRM_CLASSMAP_USE
      drm/mipi-dbi: Add DRM_CLASSMAP_USE
      drm/clients: Add DRM_CLASSMAP_USE to drm_client_setup
      dyndbg: add +c flag to demonstrate advantage of classmaps for DRM

Philipp Hahn (1):
      dyndbg: Ignore additional arguments from pr_fmt

 Documentation/admin-guide/dynamic-debug-howto.rst  | 184 ++++-
 MAINTAINERS                                        |   4 +-
 drivers/accel/Makefile                             |   7 +-
 drivers/accel/ethosu/ethosu_drv.c                  |   3 +
 drivers/accel/ivpu/ivpu_drv.c                      |  27 +-
 drivers/accel/ivpu/ivpu_drv.h                      |  45 +-
 drivers/accel/rocket/rocket_gem.c                  |   2 +
 drivers/gpu/drm/Kconfig.debug                      |   3 +-
 drivers/gpu/drm/Makefile                           |   3 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c            |  12 +-
 drivers/gpu/drm/arm/display/komeda/komeda_drv.c    |   4 +
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c |   2 +
 drivers/gpu/drm/bridge/ite-it6505.c                |   2 +
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c          |   2 +
 drivers/gpu/drm/clients/drm_client_setup.c         |   2 +
 drivers/gpu/drm/display/drm_dp_helper.c            |  12 +-
 drivers/gpu/drm/drm_crtc_helper.c                  |  12 +-
 drivers/gpu/drm/drm_gem_shmem_helper.c             |   1 +
 drivers/gpu/drm/drm_gem_ttm_helper.c               |   2 +
 drivers/gpu/drm/drm_mipi_dbi.c                     |   2 +
 drivers/gpu/drm/drm_print.c                        |  40 +-
 drivers/gpu/drm/etnaviv/etnaviv_drv.c              |   2 +
 drivers/gpu/drm/gma500/psb_drv.c                   |   2 +
 drivers/gpu/drm/gud/gud_drv.c                      |   2 +
 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c    |   2 +
 drivers/gpu/drm/hisilicon/kirin/kirin_drm_drv.c    |   2 +
 drivers/gpu/drm/i915/i915_params.c                 |  12 +-
 drivers/gpu/drm/imx/dc/dc-drv.c                    |   3 +
 drivers/gpu/drm/imx/dcss/dcss-drv.c                |   3 +
 drivers/gpu/drm/imx/ipuv3/imx-drm-core.c           |   2 +
 drivers/gpu/drm/logicvc/logicvc_drm.c              |   2 +
 drivers/gpu/drm/loongson/lsdc_drv.c                |   2 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.c             |   3 +
 drivers/gpu/drm/mgag200/mgag200_drv.c              |   2 +
 drivers/gpu/drm/msm/msm_drv.c                      |   3 +
 drivers/gpu/drm/nouveau/nouveau_abi16.c            |  25 +-
 drivers/gpu/drm/nouveau/nouveau_drm.c              |  12 +-
 drivers/gpu/drm/qxl/qxl_drv.c                      |   2 +
 drivers/gpu/drm/radeon/radeon_drv.c                |   2 +
 drivers/gpu/drm/renesas/rcar-du/rcar_du_drv.c      |   2 +
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c        |   2 +
 drivers/gpu/drm/sti/sti_drv.c                      |   2 +
 drivers/gpu/drm/stm/drv.c                          |   2 +
 drivers/gpu/drm/sysfb/simpledrm.c                  |   2 +
 drivers/gpu/drm/tests/drm_mm_test.c                |   2 +
 drivers/gpu/drm/tiny/panel-mipi-dbi.c              |   2 +
 drivers/gpu/drm/ttm/ttm_device.c                   |   3 +
 drivers/gpu/drm/udl/udl_main.c                     |   2 +
 drivers/gpu/drm/vc4/vc4_drv.c                      |   2 +
 drivers/gpu/drm/virtio/virtgpu_drv.c               |   2 +
 drivers/gpu/drm/vkms/vkms_drv.c                    |   2 +
 drivers/gpu/drm/vmwgfx/vmwgfx_drv.c                |   2 +
 drivers/gpu/drm/xe/xe_module.c                     |   3 +
 include/asm-generic/bounded_sections.lds.h         |  23 +
 include/asm-generic/dyndbg.lds.h                   |  26 +
 include/asm-generic/vmlinux.lds.h                  |  48 +-
 include/drm/drm_print.h                            |  17 +-
 include/linux/dynamic_debug.h                      | 334 ++++++--
 kernel/module/main.c                               |  15 +-
 lib/Kconfig.debug                                  |  24 +-
 lib/Makefile                                       |   5 +
 lib/dynamic_debug.c                                | 889 ++++++++++++++-------
 lib/test_dynamic_debug.c                           | 211 +++--
 lib/test_dynamic_debug_submod.c                    |  21 +
 scripts/module.lds.S                               |   2 +
 tools/testing/selftests/Makefile                   |   1 +
 tools/testing/selftests/dynamic_debug/Makefile     |   9 +
 tools/testing/selftests/dynamic_debug/config       |   7 +
 .../selftests/dynamic_debug/dyndbg_selftest.sh     | 373 +++++++++
 69 files changed, 1891 insertions(+), 598 deletions(-)
---
base-commit: d662a710c668a86a39ebaad334d9960a0cc776c2
change-id: 20260419-submit-dyndbg-classmap-foundation-a3c77652c054

Best regards,
-- 
Jim Cromie <jim.cromie@gmail.com>

