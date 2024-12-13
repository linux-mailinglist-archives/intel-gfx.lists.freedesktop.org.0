Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7AF09F093F
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 11:18:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 758B110EF93;
	Fri, 13 Dec 2024 10:18:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6402910EF93;
 Fri, 13 Dec 2024 10:18:46 +0000 (UTC)
Received: from 91-155-254-135.elisa-laajakaista.fi ([91.155.254.135]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1tM2kt-00000002t8M-2zyu; Fri, 13 Dec 2024 12:18:44 +0200
Message-ID: <1eceacb8c26285b76bb55b8ce0aea416f77e84e6.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Fri, 13 Dec 2024 12:18:42 +0200
In-Reply-To: <cbbf26fa58ef662946303c972b1a1ff1547ddcfe.1732104170.git.jani.nikula@intel.com>
References: <cover.1732104170.git.jani.nikula@intel.com>
 <cbbf26fa58ef662946303c972b1a1ff1547ddcfe.1732104170.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.1-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [RESEND 5/6] drm/i915/display: add struct drm_device to struct
 intel_display conversion function
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

On Wed, 2024-11-20 at 14:03 +0200, Jani Nikula wrote:
> Add a __drm_to_display() conversion function to hide the to_i915() usage
> and the implicit dependency on i915_drv.h from intel_display_types.h.
>=20
> The goal is for this implementation to be a transitional helper
> only. One idea I've floated around in the past would be to require a
> struct intel_display pointer member to be placed right after struct
> drm_device member in struct drm_i915_private and struct xe_device
> [1][2].
>=20
> [1] https://lore.kernel.org/r/7777ff70e2be0663de4398aa6f75f0c54146cbfc.17=
09727127.git.jani.nikula@intel.com
> [2] https://lore.kernel.org/r/0b9459da6c8cba0f74bf2781d69182fa6801cd97.17=
09727127.git.jani.nikula@intel.com
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
