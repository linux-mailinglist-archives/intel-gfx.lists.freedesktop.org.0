Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CA0A10227
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2025 09:35:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA0EB10E883;
	Tue, 14 Jan 2025 08:35:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D80C10E880;
 Tue, 14 Jan 2025 08:35:23 +0000 (UTC)
Received: from 91-155-255-183.elisa-laajakaista.fi ([91.155.255.183]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1tXcON-00000003oL0-3lhl; Tue, 14 Jan 2025 10:35:21 +0200
Message-ID: <21eeb0c1131a13d1bde4132def108d9dcf964146.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, 	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>, Jouni =?ISO-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>
Date: Tue, 14 Jan 2025 10:35:18 +0200
In-Reply-To: <20250113204306.112266-3-gustavo.sousa@intel.com>
References: <20250113204306.112266-1-gustavo.sousa@intel.com>
 <20250113204306.112266-3-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH v2 2/3] drm/i915/display: Wrap IRQ-specific uncore
 functions
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

On Mon, 2025-01-13 at 17:38 -0300, Gustavo Sousa wrote:
> The current display IRQ code calls some IRQ-specific helpers that use
> intel_uncore_*() MMIO functions instead of the display-specific ones.
> Wrap those helpers to ensure that the proper display-specific hooks
> (currently only DMC wakelock handling) are called.
>=20
> v2:
>  - Move functions to intel_display_irq.c instead of having them in
>    intel_de.h. (Jani)
>=20
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---

LGTM.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
