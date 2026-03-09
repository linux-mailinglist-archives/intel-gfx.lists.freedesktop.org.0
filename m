Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBMiCPCNrmnlFwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Mar 2026 10:08:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A011E235E48
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Mar 2026 10:07:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC71E10E149;
	Mon,  9 Mar 2026 09:07:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 743DE10E145;
 Mon,  9 Mar 2026 09:07:56 +0000 (UTC)
Received: from 37-33-19-16.bb.dnainternet.fi ([37.33.19.16]
 helo=[192.168.101.111])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vzWab-000000039mw-2MUX; Mon, 09 Mar 2026 11:07:54 +0200
Message-ID: <ac1053de673d5201bf82a4c9ea01c0f7f0b5bb19.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Mon, 09 Mar 2026 11:07:47 +0200
In-Reply-To: <5b2211f9bf2f35085e5defd286569a0873a8eee7.1772635152.git.jani.nikula@intel.com>
References: <cover.1772635152.git.jani.nikula@intel.com>
 <5b2211f9bf2f35085e5defd286569a0873a8eee7.1772635152.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-8 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH 4/8] drm/xe/compat: remove intel_step_name macro
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
X-Rspamd-Queue-Id: A011E235E48
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
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
	NEURAL_SPAM(0.00)[0.471];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[coelho.fi];
	RCPT_COUNT_THREE(0.00)[3]
X-Rspamd-Action: no action

On Wed, 2026-03-04 at 16:40 +0200, Jani Nikula wrote:
> As there are no more compat users left for intel_step_name(), remove the
> macro and use the more direct include for the enumerations.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.


>  drivers/gpu/drm/xe/compat-i915-headers/intel_step.h | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h b/driver=
s/gpu/drm/xe/compat-i915-headers/intel_step.h
> index 2cf13a572ab0..0eabe2866f5f 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
> @@ -6,9 +6,8 @@
>  #ifndef __INTEL_STEP_H__
>  #define __INTEL_STEP_H__
> =20
> -#include "xe_step.h"
> +#include "xe_step_types.h"
> =20
>  #define intel_step xe_step
> -#define intel_step_name xe_step_name
> =20
>  #endif /* __INTEL_STEP_H__ */
