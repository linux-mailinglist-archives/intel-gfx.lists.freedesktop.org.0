Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kE/YKYuOrmnVGAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Mar 2026 10:10:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2665C235ECE
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Mar 2026 10:10:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D46810E4AA;
	Mon,  9 Mar 2026 09:10:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39FDE10E145;
 Mon,  9 Mar 2026 09:10:32 +0000 (UTC)
Received: from 37-33-19-16.bb.dnainternet.fi ([37.33.19.16]
 helo=[192.168.101.111])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vzWdB-000000039ng-2jMr; Mon, 09 Mar 2026 11:10:30 +0200
Message-ID: <374e921caf36659b1e5ff7de8f40f13fea218bc9.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Mon, 09 Mar 2026 11:10:28 +0200
In-Reply-To: <a24789601b74cccdcb2f57b19ea6a609b8e53e16.1772635152.git.jani.nikula@intel.com>
References: <cover.1772635152.git.jani.nikula@intel.com>
 <a24789601b74cccdcb2f57b19ea6a609b8e53e16.1772635152.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-8 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH 6/8] drm/xe/step: switch to the shared step definitions
 with i915
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
X-Rspamd-Queue-Id: 2665C235ECE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,coelho.fi:mid];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca@coelho.fi,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.447];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[coelho.fi];
	RCPT_COUNT_THREE(0.00)[3]
X-Rspamd-Action: no action

On Wed, 2026-03-04 at 16:40 +0200, Jani Nikula wrote:
> Use the shared stepping enums from include/drm/intel/step.h.
>=20
> For now, define xe_step as intel_step to avoid mass renames at the same
> time. For compat, we can remove the reverse macro.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.


>  .../drm/xe/compat-i915-headers/intel_step.h   |  4 +-
>  drivers/gpu/drm/xe/xe_step_types.h            | 63 ++-----------------
>  2 files changed, 5 insertions(+), 62 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h b/driver=
s/gpu/drm/xe/compat-i915-headers/intel_step.h
> index 0eabe2866f5f..cb55a659856b 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
> @@ -6,8 +6,6 @@
>  #ifndef __INTEL_STEP_H__
>  #define __INTEL_STEP_H__
> =20
> -#include "xe_step_types.h"
> -
> -#define intel_step xe_step
> +#include <drm/intel/step.h>
> =20
>  #endif /* __INTEL_STEP_H__ */
> diff --git a/drivers/gpu/drm/xe/xe_step_types.h b/drivers/gpu/drm/xe/xe_s=
tep_types.h
> index d978cc2512f2..bc3ed5a8282a 100644
> --- a/drivers/gpu/drm/xe/xe_step_types.h
> +++ b/drivers/gpu/drm/xe/xe_step_types.h
> @@ -8,69 +8,14 @@
> =20
>  #include <linux/types.h>
> =20
> +#include <drm/intel/step.h>
> +
> +#define xe_step intel_step
> +
>  struct xe_step_info {
>  	u8 graphics;
>  	u8 media;
>  	u8 basedie;
>  };
> =20
> -#define STEP_ENUM_VAL(name)  STEP_##name,
> -
> -/*
> - * Always define four minor steppings 0-3 for each stepping to match GMD=
 ID
> - * spacing of values. See xe_step_gmdid_get().
> - */
> -#define STEP_NAME_LIST(func)		\
> -	func(A0)			\
> -	func(A1)			\
> -	func(A2)			\
> -	func(A3)			\
> -	func(B0)			\
> -	func(B1)			\
> -	func(B2)			\
> -	func(B3)			\
> -	func(C0)			\
> -	func(C1)			\
> -	func(C2)			\
> -	func(C3)			\
> -	func(D0)			\
> -	func(D1)			\
> -	func(D2)			\
> -	func(D3)			\
> -	func(E0)			\
> -	func(E1)			\
> -	func(E2)			\
> -	func(E3)			\
> -	func(F0)			\
> -	func(F1)			\
> -	func(F2)			\
> -	func(F3)			\
> -	func(G0)			\
> -	func(G1)			\
> -	func(G2)			\
> -	func(G3)			\
> -	func(H0)			\
> -	func(H1)			\
> -	func(H2)			\
> -	func(H3)			\
> -	func(I0)			\
> -	func(I1)			\
> -	func(I2)			\
> -	func(I3)			\
> -	func(J0)			\
> -	func(J1)			\
> -	func(J2)			\
> -	func(J3)
> -
> -/*
> - * Symbolic steppings that do not match the hardware. These are valid bo=
th as gt
> - * and display steppings as symbolic names.
> - */
> -enum xe_step {
> -	STEP_NONE =3D 0,
> -	STEP_NAME_LIST(STEP_ENUM_VAL)
> -	STEP_FUTURE,
> -	STEP_FOREVER,
> -};
> -
>  #endif
