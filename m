Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BD17DC787
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Oct 2023 08:44:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73F8510E412;
	Tue, 31 Oct 2023 07:44:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C6C910E412
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Oct 2023 07:44:23 +0000 (UTC)
Received: from 91-155-254-243.elisa-laajakaista.fi ([91.155.254.243]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97-RC1) (envelope-from <luca@coelho.fi>)
 id 1qxjQB-00000000Gs3-2WsV; Tue, 31 Oct 2023 09:44:20 +0200
Message-ID: <c47bd13869e6664367d1684ebcf4305517909df1.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 31 Oct 2023 09:44:18 +0200
In-Reply-To: <20231027115711.2713226-1-animesh.manna@intel.com>
References: <20231027115711.2713226-1-animesh.manna@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.0
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/dsb: DSB code refactoring
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 2023-10-27 at 17:27 +0530, Animesh Manna wrote:
> Refactor DSB implementation to be compatible with Xe driver.
>=20
> v1: RFC version.
> v2: Make intel_dsb structure opaque from external usage. [Jani]
> v3: Rebased on latest.
> v4:
> - Add boundary check in dsb_buffer_memset(). [Luca]
> - Use size_t instead of u32. [Luca]
>=20
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---

[...]
> +void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32 idx, =
u32 val, size_t size)
> +{
> +	if ((idx > dsb_buf->buf_size / 4) || (size > dsb_buf->buf_size - idx * =
4))

You actually don't need the first expression.  This expression should
enough:

	dsb_buf->buf_size <=3D (idx + size) * sizeof(*dsb_buf->cmd_buf)

> +		return;

Blindly returning here doesn't solve the problem, it just hides it.  I
think the best would be to use WARN_ON() instead of if.

So:
	WARN_ON(dsb_buf->buf_size <=3D (idx + size) * sizeof(*dsb_buf->cmd_buf));

> +
> +	memset(&dsb_buf->cmd_buf[idx], val, size);
> +}
[...]

--
Cheers,
Luca.
