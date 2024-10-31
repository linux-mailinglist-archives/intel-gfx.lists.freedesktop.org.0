Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B979B790D
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 11:52:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EFA210E85C;
	Thu, 31 Oct 2024 10:52:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1286210E858
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 10:52:41 +0000 (UTC)
Received: from 91-155-254-140.elisa-laajakaista.fi ([91.155.254.140]
 helo=[192.168.100.133])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1t6Sn7-00000001BHe-2cxZ; Thu, 31 Oct 2024 12:52:39 +0200
Message-ID: <bba35cd27620ff52789e553c881e5d063c0f78bc.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Date: Thu, 31 Oct 2024 12:52:36 +0200
In-Reply-To: <20241030192313.4030617-4-imre.deak@intel.com>
References: <20241030192313.4030617-1-imre.deak@intel.com>
 <20241030192313.4030617-4-imre.deak@intel.com>
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
Subject: Re: [PATCH v2 3/5] drm/i915/dp_mst: Add a way to disable the DP2
 config
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
> Add a way to disable the DP2 configuration, required by the next patch
> during transcoder disabling.
>=20
> While at it drop the redundant encoder parameter.
>=20
> v2:
> - Keep intel_ddi_config_transcoder_dp2() static. (Jani)
> - Remove the encoder parameter.
>=20
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---

LGTM.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
