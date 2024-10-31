Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFF69B791F
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 11:55:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 728FE10E858;
	Thu, 31 Oct 2024 10:54:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B79C810E858
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 10:54:58 +0000 (UTC)
Received: from 91-155-254-140.elisa-laajakaista.fi ([91.155.254.140]
 helo=[192.168.100.133])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1t6SpM-00000001BHu-3kty; Thu, 31 Oct 2024 12:54:57 +0200
Message-ID: <475ac60bb49013c185c5f23a14871d4cfbd4f0ca.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Date: Thu, 31 Oct 2024 12:54:55 +0200
In-Reply-To: <20241030192313.4030617-5-imre.deak@intel.com>
References: <20241030192313.4030617-1-imre.deak@intel.com>
 <20241030192313.4030617-5-imre.deak@intel.com>
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
Subject: Re: [PATCH v2 4/5] drm/i915/adlp+/dp_mst: Align slave transcoder
 sequences with spec wrt. DP2 config
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

On Wed, 2024-10-30 at 21:23 +0200, Imre Deak wrote:
> On ADLP+ during modeset enabling and disabling, enable and disable the DP=
2
> configuration for MST slave transcoders as required by the specification.
>=20
> Update the documentation of intel_ddi_config_transcoder_func() /
> intel_ddi_disable_transcoder_func() based on the above. While at it also
> clarify the programming steps of these functions specific to transcoder
> types.
>=20
> v2:
> - Enable/disable the DP2 config from
>   intel_ddi_config_transcoder_func()/intel_ddi_disable_transcoder_func().
>   (Jani)
> - Handle all ADLP+ platforms in one patch, instead of doing that
>   separately wrt. PTL.
>=20
> Bspec: 55424, 54128, 65448, 68849
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---


Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
