Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D24689E1C31
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 13:31:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C58910E43F;
	Tue,  3 Dec 2024 12:31:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="jZlZroRW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
 [209.85.214.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB1FA10E43F
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2024 12:31:31 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id
 d9443c01a7336-215bb7bb9f9so6035145ad.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Dec 2024 04:31:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1733229091; x=1733833891;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=rmCmdPZyqHTJueyoNUxdAbvih3/opUK1QlKGl2LuDMo=;
 b=jZlZroRWmj9xAFX5Pe1gaB07XhbwXZphJ1mb0gi6Fwlbmg4m+EW4tKgSOCWYOhsGgF
 mwn6cOE7e00VQOTfwx+2ahI6MTkwS4RD74smUf4cA+YOytA8Dt5Eu8XKkui2kS7DLEtY
 Q6V+KpNztoAu4Jh224M8zKSv/F6izMOMuEqjg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733229091; x=1733833891;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rmCmdPZyqHTJueyoNUxdAbvih3/opUK1QlKGl2LuDMo=;
 b=nEk59Xx4+5ObtlL83yJ8kImlPZhUuRrMhI+oOZuhInV+aM3uFQGZxoC+i7v/w1xXF/
 8c22FSvEyG9KhdgBGE+Q5CaT+1cTzBTZG59UKDNYZsfeLmftQGW5JPOoJLKDmQwxBg+0
 ZW528ysKwrShvH3jErHgDeE2rWYmEnryHoBh3dPYqbvlZoifN4/AiiX7WSvDESD1Sxt+
 ShN13cyscCYXyTjcKJwCXVEUrG9mswjanJALJAMg7Guwu/DFxugOz9Cweha0KtMpmYIt
 f+z2gGuT19pZJMqdR/nISZU8i9KHmG1f+PeN7nLQlh3CE86iLBoRH/RLUsxlBRg6ZRQf
 TftQ==
X-Gm-Message-State: AOJu0Yw8QOtEvx7q8RMTRf8qKCttPd48LZOR12++Cxofrk5W9brkC11x
 meEptiG7JZCX1aKLFG05BnYF9TJr4Qq/yGMSFT/rFEICIqTR/ECGI2R4bKHzTg==
X-Gm-Gg: ASbGncvtTJHcew5oM9sItoOJ6vmAOniIYkaG9pO4ywxczNsesZ5ogJuxR+OgYIySEGL
 4YfMUdJf+HO9TOuC1UjLestIUeLj8GIH5eaoezP3nr9lpN+PBSI/yDmAs88fVt796zNrUDODLcE
 NaCq+1rBjvYkAQYV4X5BROR0ikEJrt2DCR8xkY1O1a0FpT12m6BkUljGsyLX3zx6BNEyymWVJha
 GWbTu3ngONCOBi9y9fP+ALrdgz83Nb6desQ8+S7NBVpj+sGWg==
X-Google-Smtp-Source: AGHT+IEeV3az9GRG8rHDkVnd0yV9DLHvIcl9SNi2dwy+VteYziFOzLepiDVQvG1ilEE6bLVtEotHyQ==
X-Received: by 2002:a17:902:cf0c:b0:215:b6f1:78df with SMTP id
 d9443c01a7336-215bceb3813mr43179615ad.19.1733229091247; 
 Tue, 03 Dec 2024 04:31:31 -0800 (PST)
Received: from google.com ([2401:fa00:8f:203:f520:3e:d9a1:1de])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-215218f452csm93787225ad.48.2024.12.03.04.31.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2024 04:31:30 -0800 (PST)
Date: Tue, 3 Dec 2024 21:31:26 +0900
From: Sergey Senozhatsky <senozhatsky@chromium.org>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Ville Syrjala <ville.syrjala@linux.intel.com>,
 Sergey Senozhatsky <senozhatsky@chromium.org>
Subject: Re: [PATCH 0/3] drm/i915/display: handle hdmi connector init failures
Message-ID: <20241203123126.GE886051@google.com>
References: <cover.1731599468.git.jani.nikula@intel.com>
 <20241115050045.GM1458936@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241115050045.GM1458936@google.com>
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

On (24/11/15 14:00), Sergey Senozhatsky wrote:
> On (24/11/14 17:52), Jani Nikula wrote:
> > This is an attempt to resolve [1].
> > 
> > [1] https://lore.kernel.org/r/20241031105145.2140590-1-senozhatsky@chromium.org
> > 
> > Jani Nikula (3):
> >   drm/i915/hdmi: propagate errors from intel_hdmi_init_connector()
> >   drm/i915/hdmi: add error handling in g4x_hdmi_init()
> >   drm/i915/ddi: propagate errors from intel_ddi_init_hdmi_connector()
> 
> So these look reasonable and good to me, and I think landing them
> makes a lot of sense.  For that part feel free to add:
> 
> Reported-and-tested-by: Sergey Senozhatsky <senozhatsky@chromium.org>
> and FWIW
> Reviewed-by: Sergey Senozhatsky <senozhatsky@chromium.org>
> 
> 
> 
> Now, regarding the issue in question - we are getting there, but not
> quite there yet.
> 
> I'm still seeing multiple NULL-ptr derefs, namely on
> 
>  DDI A/PHY A
>  DDI TC1/PHY TC1
>  DDI TC2/PHY TC2
>  DDI TC3/PHY TC3
>  DDI TC4/PHY TC4
> 
> The thing is, all of them are DP connectors, we only ever call
> intel_ddi_init_dp_connector() on them, so dig_port->hdmi
> is not init-ed, wheres intel_hdmi_encoder_shutdown() doesn't
> distinguish and treats everyone as HDMI connector, dereferencing
> ->hdmi.
> 
> With the small addition I don't see null-ptr derefs anymore:

Gentle ping on this.
