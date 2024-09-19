Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A7397C599
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 10:12:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D06E610E69B;
	Thu, 19 Sep 2024 08:12:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1301 seconds by postgrey-1.36 at gabe;
 Thu, 19 Sep 2024 08:12:00 UTC
Received: from coelho.fi (static.29.146.99.88.clients.your-server.de
 [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B2EC10E69B
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2024 08:12:00 +0000 (UTC)
Received: from 91-155-255-213.elisa-laajakaista.fi ([91.155.255.213]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1srBvb-000000005mK-1V2N; Thu, 19 Sep 2024 10:50:17 +0300
Message-ID: <f546b5a2e6c437974721886461ad1ab46de2a9a5.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2024 10:50:15 +0300
In-Reply-To: <20240916152958.17332-2-ville.syrjala@linux.intel.com>
References: <20240916152958.17332-1-ville.syrjala@linux.intel.com>
 <20240916152958.17332-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.53.2-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH 1/2] drm/i915/color: Extract intel_color_modeset()
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

On Mon, 2024-09-16 at 18:29 +0300, Ville Syrjala wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>=20
> We always perform the same steps to program color management
> stuff during a full modeset. Extract that code to a helper
> to avoid duplication.
>=20
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---

Looks good!

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
