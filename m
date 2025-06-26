Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA3FAE9C73
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 13:21:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8297110E89A;
	Thu, 26 Jun 2025 11:21:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58FAC10E2A4;
 Thu, 26 Jun 2025 11:21:17 +0000 (UTC)
Received: from 91-155-254-100.elisa-laajakaista.fi ([91.155.254.100]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uUkfF-00000008PuG-2cRq; Thu, 26 Jun 2025 14:21:12 +0300
Message-ID: <cef9664f5ac47aca6b257b25f33a34703fba7e64.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>
Date: Thu, 26 Jun 2025 14:21:07 +0300
In-Reply-To: <20250626101636.1896365-1-jani.nikula@intel.com>
References: <20250626101636.1896365-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH] drm/i915/display: drop a number of dependencies on
 i915_drv.h
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

On Thu, 2025-06-26 at 13:16 +0300, Jani Nikula wrote:
> With the switch to an unordered workqueue dedicated to display, we've
> stopped using struct drm_i915_private in a number of places, and can
> drop the dependencies on i915_drv.h.
>=20
> Cc: Luca Coelho <luciano.coelho@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---

Nice! I had removed some of these, but apparently I forgot and lost
those changes.

[...]

> @@ -32,7 +31,7 @@ void intel_encoder_link_check_flush_work(struct intel_e=
ncoder *encoder)
> =20
>  void intel_encoder_link_check_queue_work(struct intel_encoder *encoder, =
int delay_ms)
>  {
> -	struct intel_display *display =3D to_i915(encoder->base.dev)->display;
> +	struct intel_display *display =3D to_intel_display(encoder);
> =20
>  	mod_delayed_work(display->wq.unordered,
>  			 &encoder->link_check_work, msecs_to_jiffies(delay_ms));

This looks much nicer.  I should have looked more for a better macro.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
