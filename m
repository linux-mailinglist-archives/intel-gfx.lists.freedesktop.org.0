Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD72BA15E66
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2025 18:49:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B20010E2DA;
	Sat, 18 Jan 2025 17:49:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hSF5E1/x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0DEC10E2D1;
 Sat, 18 Jan 2025 17:49:23 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id
 98e67ed59e1d1-2f441791e40so4300502a91.3; 
 Sat, 18 Jan 2025 09:49:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1737222563; x=1737827363; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
 :reply-to; bh=GU7FE91Y7VKzW3O3qn7y+qTA2pSkAbO4RD6j4nKnL+c=;
 b=hSF5E1/x4kln7rEmWWXVOw12KwyILJryhugnb5FwLECOXwaItrfIfix6Py3yrtUyg5
 NAIod8C5MUgf9PqlLHKow2LxkotrJOq/b8hGaAWx+agdTJqIjwe+k8mSIQfUnsViHWic
 9K5I7Y2t5qcQ+oC8eDtng/i5gesjLz61S55AepIYMMEU8SwcdSX6FiEBnjb31AxQZU+7
 vmTpihdJBlaDn1l9qNaWc8U6mEb3S25gRsrBF3bJXlumqFT2JyM/IJgPeny37ivRBNJE
 4eEpKssW97lN2U/JJXUB1t4b/chjks9I5HNtCB19kZzcgd/weV3ZOSxTUe/NjwRXl7J1
 fWcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737222563; x=1737827363;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=GU7FE91Y7VKzW3O3qn7y+qTA2pSkAbO4RD6j4nKnL+c=;
 b=kkxkB1ucPjkzwXevGQMx573W8OVcVQ6R/84upNc4oQGdvLetFIYamhWLXcIuTWqze5
 wi9xYAiF+5z53jfbSb/8anhMhy8G8R/rVl9onzUHKIbwvbFa/aWeUBCgSR0Cndiwg2rN
 2RQh008AopzGc7EKc6/mLSx4qCfUiFslgvowQ8FSGNz26VwxTIs4Bs3wp9K1/CadIPi5
 34AeIfyUmZrpxaZpO+MLtHFBqv0l7oejIfTvNIy0uMXCeAlTswCUXqtXvfaggO/B5w6S
 2lWvqSIWUi9FbveO1/evf6dXAHk/d8hiPAjBDbV271bvWM1cB2eqrlL2tMH9qlWac44P
 hyGQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWNQVovfcExjY1zMAYc5HbbGycBtkvofglF8wRnD5NVJA17L2DWj6G7NiaE3RkyK0I5wWans60i9wo=@lists.freedesktop.org,
 AJvYcCXTyue3CjHxFAJHVgnQzfPK91+MQV4xbS/QsW9o820zFbNmHw3n5l2nzRHF7A0tT5IQg9HxC+bch18=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwSITgv1cmc5pAXDBkDcQXvpPATNlvnIdFFC0z3qKfaNKTyTVZH
 RsXM+0FEpGwa+MV0rGkmdRRYPnoreSC+F1pAfiIs0f40JsG3pG4k
X-Gm-Gg: ASbGncv4WZM4zf0jnQusw6547FhIMC0KJQgCt0qqPH3f7ltuImvQRh55pEm8gmmqbVx
 1u8m7mB1RNdnevPU1nRtZb2Wwcbh2LafUp9UbO4O1TyEmB4C2cukG7oyRe9sTcVcqtaOFjuno+S
 yfP4JOEnZRZoIfq1IndrqTOuRzCbQfIzWZIfIk4X4G+H+P3TXGnhNiiteDewSgzbJjvSWwd0GuY
 NQJKP67wNGg+qg/eYTPkHcBbthhpuUE+T+iDr0zREqDyhytyAshG0kUE2lv9j3gTsGSyOuaSlkv
 nlI0J70=
X-Google-Smtp-Source: AGHT+IHLAeXlO3hV4T4enIEVaprWMG6iSEGmCJjenAgTvawMCOMVSwu8lq2Sie7M0ZZb8hK7wtsTZA==
X-Received: by 2002:a17:90a:c2ce:b0:2ee:a76a:820 with SMTP id
 98e67ed59e1d1-2f782cbfa62mr11473228a91.18.1737222563329; 
 Sat, 18 Jan 2025 09:49:23 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2f7762b37b1sm4358427a91.42.2025.01.18.09.49.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Jan 2025 09:49:22 -0800 (PST)
Date: Sat, 18 Jan 2025 09:49:21 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: David Laight <david.laight.linux@gmail.com>
Cc: David Laight <David.Laight@aculab.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 'Arnd Bergmann' <arnd@kernel.org>,
 "'linux-kernel@vger.kernel.org'" <linux-kernel@vger.kernel.org>,
 'Jens Axboe' <axboe@kernel.dk>, 'Matthew Wilcox' <willy@infradead.org>,
 'Christoph Hellwig' <hch@infradead.org>,
 'Andrew Morton' <akpm@linux-foundation.org>,
 'Andy Shevchenko' <andriy.shevchenko@linux.intel.com>,
 'Dan Carpenter' <dan.carpenter@linaro.org>,
 "'Jason A . Donenfeld'" <Jason@zx2c4.com>,
 "'pedro.falcato@gmail.com'" <pedro.falcato@gmail.com>,
 'Mateusz Guzik' <mjguzik@gmail.com>,
 "'linux-mm@kvack.org'" <linux-mm@kvack.org>,
 'Lorenzo Stoakes' <lorenzo.stoakes@oracle.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: Buiild error in i915/xe (was: [PATCH next 4/7] minmax.h: Use
 BUILD_BUG_ON_MSG() for the lo < hi test in clamp())
Message-ID: <29ef57a1-e4dd-4d5d-8726-f1f79c698b66@roeck-us.net>
References: <c50365d214e04f9ba256d417c8bebbc0@AcuMS.aculab.com>
 <34d53778977747f19cce2abb287bb3e6@AcuMS.aculab.com>
 <ce600782-1012-47e3-ba3d-41c5a4b7a7b7@roeck-us.net>
 <20250118170959.3aa56f4d@pumpkin>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250118170959.3aa56f4d@pumpkin>
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

On Sat, Jan 18, 2025 at 05:09:59PM +0000, David Laight wrote:
> On Sat, 18 Jan 2025 08:13:06 -0800
> Guenter Roeck <linux@roeck-us.net> wrote:
> 
> > Hi,
> > 
> > On Mon, Nov 18, 2024 at 07:13:31PM +0000, David Laight wrote:
> > > Use BUILD_BUG_ON_MSG(statically_true(ulo > uhi), ...) for the sanity
> > > check of the bounds in clamp().
> > > Gives better error coverage and one less expansion of the arguments.
> > > 
> > > Signed-off-by: David Laight <david.laight@aculab.com>  
> > 
> > This patch triggers a build error when trying to build parisc:allmodconfig.
> > See error message and bisect log below.
> > 
> > I don't think there is anything wrong with the patch. The underlying
> > problem seems to be that parisc:allmodconfig enables CONFIG_DRM_XE which
> > tries to build the affected file even though CONFIG_DRM_I915 is not
> > enabled/supported on parisc.
> 
> This has appeared before.
> Any idea which inlined copy of scale() is causing the problem.
> On the face of it they all look ok.
> 
> If you can reproduce it maybe try commenting out some of the calls.
> 

See diff below. All three changes are needed.
No idea why the compiler would know that the values are invalid.

Guenter

---
diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index fc1e517e074a..3b2c8bdfcf8d 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -76,10 +76,14 @@ static u32 clamp_user_to_hw(struct intel_connector *connector,
 static u32 scale_hw_to_user(struct intel_connector *connector,
 			    u32 hw_level, u32 user_max)
 {
+#if 0
 	struct intel_panel *panel = &connector->panel;
 
 	return scale(hw_level, panel->backlight.min, panel->backlight.max,
 		     0, user_max);
+#else
+	return 0;
+#endif
 }
 
 u32 intel_backlight_invert_pwm_level(struct intel_connector *connector, u32 val)
@@ -119,8 +123,10 @@ u32 intel_backlight_level_to_pwm(struct intel_connector *connector, u32 val)
 	drm_WARN_ON_ONCE(&i915->drm,
 			 panel->backlight.max == 0 || panel->backlight.pwm_level_max == 0);
 
+#if 0
 	val = scale(val, panel->backlight.min, panel->backlight.max,
 		    panel->backlight.pwm_level_min, panel->backlight.pwm_level_max);
+#endif
 
 	return intel_backlight_invert_pwm_level(connector, val);
 }
@@ -138,8 +144,12 @@ u32 intel_backlight_level_from_pwm(struct intel_connector *connector, u32 val)
 	     intel_has_quirk(display, QUIRK_INVERT_BRIGHTNESS)))
 		val = panel->backlight.pwm_level_max - (val - panel->backlight.pwm_level_min);
 
+#if 0
 	return scale(val, panel->backlight.pwm_level_min, panel->backlight.pwm_level_max,
 		     panel->backlight.min, panel->backlight.max);
+#else
+	return 0;
+#endif
 }
 
 static u32 lpt_get_backlight(struct intel_connector *connector, enum pipe unused)
