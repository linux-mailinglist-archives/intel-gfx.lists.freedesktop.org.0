Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2589E97FF
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 14:58:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C919710E4B8;
	Mon,  9 Dec 2024 13:58:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FDDF10E4B7;
 Mon,  9 Dec 2024 13:58:49 +0000 (UTC)
Received: from 91-155-254-100.elisa-laajakaista.fi ([91.155.254.100]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1tKeHW-00000002m7R-3tc0; Mon, 09 Dec 2024 15:58:47 +0200
Message-ID: <2549a353edff035cae39e5857dd59a2e0ae95c43.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: jani.saarinen@intel.com
Date: Mon, 09 Dec 2024 15:58:37 +0200
In-Reply-To: <20241209135602.2716023-1-luciano.coelho@intel.com>
References: <20241209135602.2716023-1-luciano.coelho@intel.com>
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
Subject: Re: [RFT] Revert "lockdep: Enable PROVE_RAW_LOCK_NESTING with
 PROVE_LOCKING."
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

Oops, I intended to send this to trybot and intel-xe (not intel-gfx),
sorry.  But now it's too late and if I send it there, we will just use
more resources.

--
Cheers,
Luca.


On Mon, 2024-12-09 at 15:53 +0200, Luca Coelho wrote:
> This reverts commit 560af5dc839eef08a273908f390cfefefb82aa04.
>=20
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>=20
> It seems that we have a few issues with this configuration in xe and
> in i915.  Let's try to revert it to see if the problems we're seeing
> go away.
>=20
> Note, these are _real_ issues, but only if CONFIG_RT is enabled, so the a=
ctual issues need to be solved properly, but we can revert this change unti=
l then, to avoid regressions.
>=20
>=20
>  lib/Kconfig.debug | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
>=20
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index f3d723705879..de4ffe09323b 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -1397,14 +1397,22 @@ config PROVE_LOCKING
>  	 For more details, see Documentation/locking/lockdep-design.rst.
> =20
>  config PROVE_RAW_LOCK_NESTING
> -	bool
> +	bool "Enable raw_spinlock - spinlock nesting checks"
>  	depends on PROVE_LOCKING
> -	default y
> +	default n
>  	help
>  	 Enable the raw_spinlock vs. spinlock nesting checks which ensure
>  	 that the lock nesting rules for PREEMPT_RT enabled kernels are
>  	 not violated.
> =20
> +	 NOTE: There are known nesting problems. So if you enable this
> +	 option expect lockdep splats until these problems have been fully
> +	 addressed which is work in progress. This config switch allows to
> +	 identify and analyze these problems. It will be removed and the
> +	 check permanently enabled once the main issues have been fixed.
> +
> +	 If unsure, select N.
> +
>  config LOCK_STAT
>  	bool "Lock usage statistics"
>  	depends on DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT

